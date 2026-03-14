---
name: pdf-to-markdown
description: Convert PDF files to clean, well-structured Markdown. Use this skill whenever the user wants to extract text from a PDF, convert a PDF to markdown, turn a PDF into editable text, parse a PDF document, or get readable content out of a PDF file — even if they don't say "markdown" explicitly. Trigger for requests like "read this PDF", "extract the content of this PDF", "turn this PDF into text I can edit", "convert PDF to markdown", or "what does this PDF say and save it".
---

# PDF to Markdown Converter

Convert PDF files into clean, readable Markdown that preserves the document's structure — headings, lists, tables, code blocks, and body text — stripping away page artifacts like headers, footers, and page numbers.

This skill is adapted from the [pdf-to-markdown](https://github.com/jzillmann/pdf-to-markdown) transformation pipeline, reimplemented using Claude's native PDF reading capability.

## Inputs

- A PDF file path (required)
- Output path for the `.md` file (optional — default: same directory as PDF, same name with `.md` extension)
- Page range (optional — default: all pages)

If the user hasn't provided a file path, ask for one before proceeding.

## Conversion Pipeline

Work through these steps in order. The goal is to reproduce what the JS tool's transformation chain does, but using your own reading and judgment.

### Step 1: Read the PDF

Use the `Read` tool on the PDF path. For PDFs over 20 pages, read in 20-page chunks using the `pages` parameter (e.g., `pages: "1-20"`, `pages: "21-40"`). Process each chunk before reading the next, then concatenate.

### Step 2: Detect and classify text roles

As you read, mentally classify each piece of text using these rules — modeled after the tool's font-height-based detection:

**Headings** — text is larger/bolder than the dominant body text:
- The most frequent text size = body text baseline
- Text significantly larger than baseline → heading (use H1–H4 depending on relative size; the largest text on a title page = H1, next tier = H2, etc.)
- ALL CAPS text at body size in a different font → treat as a section heading (H3 or H4)
- Text that appears in a Table of Contents entry → use as heading level guidance for the rest of the document

**Lists** — items starting with bullet characters (•, -, –, ▪, ◦, *, ►) or numbered patterns (1., 2., a., b.):
- Normalize all bullet characters to `-`
- Preserve numbered lists as-is
- Detect indentation levels from x-position and map to nested list depth

**Code / preformatted blocks** — text in a monospace font (Courier, Consolas, Monaco, etc.):
- Wrap in triple backticks
- Preserve all whitespace and indentation

**Tables** — columns of aligned text across multiple lines:
- Render as GFM (pipe) tables
- Infer column headers from the first row if it's styled differently

**Body paragraphs** — everything else at the baseline font size

### Step 3: Strip repetitive page elements

Remove content that appears identically (or near-identically) on multiple pages — these are headers, footers, and page numbers. Signs:
- Same text at the top or bottom of every page
- Running page numbers (standalone integers or "Page N of M" patterns)
- Document title or chapter name repeated in the margin

### Step 4: Reconstruct flow

After classification, assemble the Markdown:
- One blank line between paragraphs
- One blank line before and after headings
- One blank line before and after code blocks and tables
- Preserve intentional line breaks within list items (use two trailing spaces if needed)
- Don't add page-break markers unless the user asks for them

### Step 5: Handle multi-column layouts

If the PDF has two or more columns, read left-to-right, top-to-bottom within each column before moving to the next. Don't interleave columns.

### Step 6: Write the output file

Write the complete Markdown to the output path using the `Write` tool. Then confirm to the user:
- Output file path
- Page count processed
- Any sections that were ambiguous or may need manual review (e.g., complex tables, footnotes, images)

## Output Format

```markdown
# Document Title

## Section Heading

Body paragraph text flows here. Multiple sentences in one paragraph
stay in one paragraph.

### Subsection

- List item one
- List item two
  - Nested item

| Column A | Column B | Column C |
|----------|----------|----------|
| value    | value    | value    |

```code block if monospace font detected```

> Blockquote for indented/pulled-out content
```

## Edge Cases

- **Scanned PDFs** (image-only, no text layer): Inform the user that the PDF appears to be image-based and cannot be extracted without OCR. Suggest tools like `tesseract` or Adobe Acrobat.
- **Password-protected PDFs**: Report the error; don't attempt workarounds.
- **Footnotes**: Append as a `---` separated section at the end, or inline with `[^1]` notation — ask the user if you're unsure.
- **Images and diagrams**: Note their presence with `[Image: description if caption exists]` placeholders.
- **Mathematical formulas**: Render in LaTeX using `$...$` inline or `$$...$$` block notation where possible; otherwise preserve as plain text.
