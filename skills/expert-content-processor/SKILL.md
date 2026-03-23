---
name: expert-content-processor
description: Transforms raw expert content (audio, video, PDFs, PowerPoints, docs) into organized markdown library. Use when you have a folder of raw content from an expert/teacher that needs to be converted to markdown, organized by program/topic, deduplicated, and inventoried. Handles transcription, format conversion, gap analysis, and creates research prompts to find missing content.
---

# Expert Content Processor

Transform raw expert content into an organized, searchable markdown library.

## When to Use

Use this skill when:
- You have a folder containing raw content from an expert (audio, video, PDFs, docs, etc.)
- Content needs to be converted to markdown format
- Files need organization into logical structure (by program, module, topic)
- You need to identify gaps or missing content

## Workflow

### Step 1: Initial Assessment

Ask the user:
1. "What is the path to the folder containing the raw content?"
2. "What is the expert's name?" (for folder naming: `@ Expert Name`)
3. "Do you have any context about this expert's work that would help with organization?"

### Step 2: Inventory

Scan the folder and create an inventory:

```bash
# Get file counts by type
find "[folder]" -type f | sed 's/.*\.//' | sort | uniq -c | sort -rn
```

Create `_INVENTORY.md` with:
- Total file count
- Breakdown by file type
- Folder structure overview
- Estimated processing scope

Present inventory to user before proceeding.

### Step 3: Format Conversion

Use existing skills for conversion:

| Category | Skill to Use |
|----------|--------------|
| PDFs | `pdf` skill |
| Presentations | `pptx` skill |
| Word documents | `docx` skill |
| Spreadsheets | `xlsx` skill |
| Video/Audio (any format) | `video-transcription` skill |

The video-transcription skill handles all video and audio formats regardless of extension.

**Naming Convention:** `[original-filename].md`

**Never delete originals** - keep in place, markdown files alongside.

### Step 4: Organization

Analyze content to identify:
- Distinct programs/courses
- Modules within programs
- Standalone frameworks or concepts
- Chronological progression

Create folder structure:
```
@ Expert Name/
├── Program 1/
│   ├── Module 1/
│   ├── Module 2/
│   └── ...
├── Program 2/
│   └── ...
├── Standalone Frameworks/
│   └── ...
└── _INVENTORY.md
```

Move converted markdown files to appropriate locations.

### Step 5: Deduplication

Identify true duplicates (not just filename matches):
1. Compare file sizes first (quick filter)
2. For similar sizes, compare content hashes
3. For potential duplicates, compare actual content

**Only delete if content is truly identical.** When in doubt, keep both and note in inventory.

### Step 6: Gap Analysis

Create `_GAPS.md` documenting:
- Missing modules (e.g., "Module 3 exists but Module 4 referenced in content is missing")
- Incomplete programs (e.g., "Only sessions 1-5 of 12 found")
- Referenced materials not found (e.g., "Workbook mentioned but not present")
- Audio/video without transcripts
- Quality issues (corrupted files, partial content)

### Step 7: Research Prompt

Create `_RESEARCH-PROMPT.md` with:
- Deep research prompt for finding missing content
- Specific search terms based on content
- Known sources to check (author's website, course platforms, etc.)
- What to look for and where

Example structure:
```markdown
# Research Prompt: Finding Missing [Expert Name] Content

## Known Gaps
[List from GAPS.md]

## Suggested Search Terms
- "[Expert name] [program name] download"
- "[Course platform] [expert name]"
- etc.

## Places to Check
- Expert's official website
- Course platforms (Teachable, Kajabi, etc.)
- Archive.org
- etc.

## What Success Looks Like
[Description of what files would fill the gaps]
```

### Step 8: Final Inventory

Update `_INVENTORY.md` with:
- Final folder structure
- File counts by program
- Processing notes
- Gap summary
- Next steps (run expert-summarizer)

## Output Location

All output goes to:
```
~/Documents/Markdown Library/Complete/@ [Expert Name]/
```

## Completion Checklist

- [ ] All files converted to markdown
- [ ] Logical folder structure created
- [ ] True duplicates removed
- [ ] `_INVENTORY.md` complete
- [ ] `_GAPS.md` documents missing content
- [ ] `_RESEARCH-PROMPT.md` ready for use
- [ ] User informed of next step: `expert-summarizer`
