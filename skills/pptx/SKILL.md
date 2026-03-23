---
name: pptx
description: "Use this skill any time a .pptx file is involved in any way — as input, output, or both. This includes: creating slide decks, pitch decks, or presentations; reading, parsing, or extracting text from any .pptx file (even if the extracted content will be used elsewhere, like in an email or summary); editing, modifying, or updating existing presentations; combining or splitting slide files; working with templates, layouts, speaker notes, or comments. Trigger whenever the user mentions \"deck,\" \"slides,\" \"presentation,\" or references a .pptx filename, regardless of what they plan to do with the content afterward. If a .pptx file needs to be opened, created, or touched, use this skill."
license: Proprietary. LICENSE.txt has complete terms
---

# PPTX Skill

## Quick Reference

| Task | Guide |
|------|-------|
| Read/analyze content | `python -m markitdown presentation.pptx` |
| Edit or create from template | Read [editing.md](editing.md) |
| Create from scratch | Read [pptxgenjs.md](pptxgenjs.md) |
| Design philosophy | Read [garr-reynolds-design-philosophy.md](garr-reynolds-design-philosophy.md) |

---

## Reading Content

```bash
# Text extraction
python -m markitdown presentation.pptx

# Visual overview
python scripts/thumbnail.py presentation.pptx

# Raw XML
python scripts/office/unpack.py presentation.pptx unpacked/
```

---

## Editing Workflow

**Read [editing.md](editing.md) for full details.**

1. Analyze template with `thumbnail.py`
2. Unpack → manipulate slides → edit content → clean → pack

---

## Creating from Scratch

**Read [pptxgenjs.md](pptxgenjs.md) for full details.**

Use when no template or reference presentation is available.

---

## Design Philosophy

**MANDATORY: Read [garr-reynolds-design-philosophy.md](garr-reynolds-design-philosophy.md) before creating any presentation.** This is the primary design authority — Garr Reynolds' Presentation Zen methodology. Every slide must pass his 6 tests (3-Second, Billboard, Back Row, "So What?", Removal, and Standalone).

### Presentation Zen Quick Rules
- **One idea per slide** — no exceptions
- **Full-bleed images** over bullet points
- **Massive whitespace** — empty space is active, not wasted
- **2-3 colors max** — intentional, content-informed palette
- **No bullet points, no clip art, no decorative borders, no footer text**
- **The question is always "What can I remove?" not "What can I add?"**
- **Slides should be virtually meaningless without narration** — that's correct

## Design Ideas

Consider ideas from this list for each slide, filtered through the Presentation Zen philosophy above.

### Before Starting

- **Pick a bold, content-informed color palette**: The palette should feel designed for THIS topic. If swapping your colors into a completely different presentation would still "work," you haven't made specific enough choices.
- **Dominance over equality**: One color should dominate (60-70% visual weight), with 1-2 supporting tones and one sharp accent. Never give all colors equal weight.
- **Consider the viewing environment**: Dark room (keynote, theater) → dark backgrounds + light text. Well-lit room or screen viewing → light backgrounds + dark text. Dark backgrounds WASH OUT under ambient light.
- **Commit to a visual motif**: Pick ONE distinctive element and repeat it — rounded image frames, icons in colored circles, thick single-side borders. Carry it across every slide.
- **Use contrast as an active design tool**: Contrast creates visual energy and hierarchy. Use extreme size contrast (96pt headline vs 16pt body), color contrast (warm accent on cool background), and spatial contrast (dense content areas vs massive whitespace). Every slide needs ONE dominant focal point.

### Color Palettes

Choose colors that match your topic — don't default to generic blue. Use these palettes as inspiration:

| Theme | Primary | Secondary | Accent |
|-------|---------|-----------|--------|
| **Midnight Executive** | `1E2761` (navy) | `CADCFC` (ice blue) | `FFFFFF` (white) |
| **Forest & Moss** | `2C5F2D` (forest) | `97BC62` (moss) | `F5F5F5` (cream) |
| **Coral Energy** | `F96167` (coral) | `F9E795` (gold) | `2F3C7E` (navy) |
| **Warm Terracotta** | `B85042` (terracotta) | `E7E8D1` (sand) | `A7BEAE` (sage) |
| **Ocean Gradient** | `065A82` (deep blue) | `1C7293` (teal) | `21295C` (midnight) |
| **Charcoal Minimal** | `36454F` (charcoal) | `F2F2F2` (off-white) | `212121` (black) |
| **Teal Trust** | `028090` (teal) | `00A896` (seafoam) | `02C39A` (mint) |
| **Berry & Cream** | `6D2E46` (berry) | `A26769` (dusty rose) | `ECE2D0` (cream) |
| **Sage Calm** | `84B59F` (sage) | `69A297` (eucalyptus) | `50808E` (slate) |
| **Cherry Bold** | `990011` (cherry) | `FCF6F5` (off-white) | `2F3C7E` (navy) |

### Rule of Thirds

Divide the slide into a 3x3 grid (tic-tac-toe). Place main elements at the four "power points" where grid lines intersect, NOT dead center. Off-center placement creates dynamic, alive compositions; centered layouts feel static.

**Power points on a 10" x 5.625" slide:**
- Top-left: (3.33, 1.875)
- Top-right: (6.67, 1.875)
- Bottom-left: (3.33, 3.75)
- Bottom-right: (6.67, 3.75)

**Application:** Place headlines at the left-third power points. Place images or visual subjects at the right-third. Use the grid to create asymmetrical balance (Fukinsei).

### Text on Full-Bleed Images

**DO NOT use a full-slide semi-transparent overlay.** This is the most common mistake — it darkens the entire image to make text readable, killing the visual impact.

**Instead:**
1. **Choose/generate images with natural dark zones** — shadows, deep sky, out-of-focus regions, dark surfaces. Place text IN those zones.
2. **Compose images with "subject right, text-space left"** — when generating or selecting images, put the visual subject in the right third and leave the left two-thirds naturally dark for text.
3. **Use localized panels only when needed** — if text must cross a bright area, add a small semi-transparent rectangle behind just the text, not the whole slide. Keep it subtle (30-40% opacity).
4. **Let the image breathe** — the whole point of full-bleed images is their visual power. An overlay that makes the image barely visible defeats the purpose.

### For Each Slide

**Every slide needs a visual element** — image, chart, icon, or shape. Text-only slides are forgettable.

**Layout options:**
- Two-column (text left, illustration on right)
- Icon + text rows (icon in colored circle, bold header, description below)
- 2x2 or 2x3 grid (image on one side, grid of content blocks on other)
- Half-bleed image (full left or right side) with content overlay
- Full-bleed image with text in natural dark zone (see above)

**Data display:**
- Large stat callouts (big numbers 60-72pt with small labels below)
- Comparison columns (before/after, pros/cons, side-by-side options)
- Timeline or process flow (numbered steps, arrows)
- **Use declarative titles on charts** — "Revenue grew 23%" NOT "Revenue (2024)". State the conclusion.

**Visual polish:**
- Icons in small colored circles next to section headers
- Italic accent text for key stats or taglines

### Typography

**Reynolds' hierarchy:** Sans serif first, slab serif second, serif only for accent text at large sizes. Don't default to serif fonts for presentations — they're optimized for print, not projection.

**Recommended pairings (best first):**

| Header Font | Body Font | Style | Notes |
|-------------|-----------|-------|-------|
| **Rockwell** | Calibri | Slab serif + sans | Reynolds-recommended. Bold authority, excellent projection |
| **Arial Black** | Arial | Heavy sans + sans | High impact, universally available |
| **Trebuchet MS** | Calibri | Humanist sans + sans | Personality without heaviness |
| **Helvetica** | Helvetica Light | Swiss sans family | Clean, sophisticated (Mac-native) |
| **Calibri** | Calibri Light | System sans family | Modern, safe, always available |
| Georgia | Calibri | Serif + sans | Use Georgia for quotes/accent only, not primary headers |

**Avoid as primary header fonts:** Palatino, Cambria, Garamond, Times New Roman — these are book fonts, not billboard fonts. They lack the weight and authority needed for projection.

| Element | Size |
|---------|------|
| Slide title | 36-48pt bold |
| Impact words | 72-120pt bold (extreme size contrast) |
| Section header | 20-24pt bold |
| Body text | 16-20pt |
| Captions | 12-14pt muted |

**At large sizes (60pt+):** Adjust character spacing (tracking) — default may be too loose. Tighten by 1-2pt for a more polished look. Also check line spacing (leading) — may need reducing at extreme sizes.

### Spacing

- 0.5" minimum margins
- 0.3-0.5" between content blocks
- Leave breathing room—don't fill every inch

### Avoid (Common Mistakes)

- **Don't repeat the same layout** — vary columns, cards, and callouts across slides
- **Don't center body text** — left-align paragraphs and lists; center only titles
- **Don't skimp on size contrast** — titles need 36pt+ to stand out from 14-16pt body
- **Don't default to blue** — pick colors that reflect the specific topic
- **Don't mix spacing randomly** — choose 0.3" or 0.5" gaps and use consistently
- **Don't style one slide and leave the rest plain** — commit fully or keep it simple throughout
- **Don't create text-only slides** — add images, icons, charts, or visual elements; avoid plain title + bullets
- **Don't forget text box padding** — when aligning lines or shapes with text edges, set `margin: 0` on the text box or offset the shape to account for padding
- **Don't use low-contrast elements** — icons AND text need strong contrast against the background; avoid light text on light backgrounds or dark text on dark backgrounds
- **NEVER use accent lines under titles** — these are a hallmark of AI-generated slides; use whitespace or background color instead

---

## Lessons Learned (Production)

Hard-won lessons from real production work. These rules prevent recurring mistakes.

### Font Consistency (Critical)

- **NEVER mix typefaces.** Use ONE font family throughout. Hierarchy comes from weight (bold vs regular) and size — not from combining different fonts.
- Mixing a heavy slab-serif (Rockwell) with a thin sans-serif (Calibri) on the same slide creates a "ransom note" effect — three different visual weights fighting each other.
- **Recommended single-family approach:** Helvetica Neue (Mac) or Calibri (cross-platform). Use Bold for impact text, Regular for body, and size differences for hierarchy.
- If you MUST use two fonts, keep them from the same visual family (e.g., Arial Black + Arial, not Rockwell + Calibri).

### Text Grouping and Proximity

- **Connected thoughts must read as one visual group.** Setup + payoff lines that form one statement should be within 0.2-0.4" of each other — NOT scattered across the slide as separate islands.
- Use a SINGLE `addText()` call with a rich text array (different fontSize/color/bold per segment) instead of multiple separate `addText()` calls at different y-coordinates. This keeps natural text flow and prevents island spacing.
- Bad: Three separate text blocks at y:1.0, y:2.5, y:4.0 (scattered islands)
- Good: One text block with inline formatting, vertically centered (cohesive group)
- Deliberate pauses between truly separate thoughts: 0.4-0.6" gap maximum.

### Minimum Text Size on Dark Backgrounds

- **20pt minimum** for any text on dark/image backgrounds. 13pt and 16pt Helvetica Neue Regular on dark backgrounds is unreadable fine print.
- **Section labels (ACT 1, THE EXERCISE, etc.): 14pt minimum**, not 12pt. At 12pt with letter-spacing on a dark background, these labels become invisible — especially in gold/tan colors. 14pt bold with charSpacing:6 is the floor.
- Captions and subtitles: 20pt minimum, not 12-16pt.
- Don't create extreme size contrasts on the same slide (e.g., 16pt next to 96pt). Keep ratios no more than 3:1 between connected text elements.

### Dark Background Overlay Rules

- **PptxGenJS does not support gradient fills on shapes.** To create a feathered edge, use stacked rectangles with increasing transparency values.
- Light overlays (35% opaque / transparency:65) preserve image visibility. Heavy overlays (60%+ opaque) turn images into muddy dark blobs.
- **Feathered fade recipe (smooth, 8-band):** Core zone transparency:60, then 7 fade bands at 0.25" width each with transparency 67, 74, 80, 85, 89, 93, 97. This avoids the visible banding that 4 wide bands create (see "Overlay Banding" below).
- Images generated with "subject right, dark negative space left" composition need LESS overlay (or none) since the dark zone is already built into the image.
- NEVER use a full-slide uniform overlay — this kills the image completely.
- Slides where the text sits in a naturally dark zone of the image need NO overlay at all.

### Text Box Width vs. Font Size (Critical)

- **Text boxes MUST be wide enough for the font size used.** A 4.5" wide box with 40pt+ text causes ugly single-word line wrapping ("AI" alone on a line, "sound so" on another).
- **Rule of thumb:** At 36-48pt, text boxes need at least 5.5" width. At 28-36pt, 4.5" minimum. At 20-28pt, 3.5" minimum.
- **At 42pt+ bold, control line breaks explicitly.** Don't rely on auto-wrapping at large font sizes — a 20-character line at 46pt bold is ~7" wide and WILL wrap in a 5.5" box, orphaning the last word. Either: (a) use explicit `\n` to break at natural phrase boundaries, (b) widen the text box, or (c) reduce font size. Calculate approximate width: chars × (fontSize/72) × 0.55.
- **If using a dark overlay for text readability, the overlay must be at least as wide as the text box.** Widening a text box without widening the overlay puts text into bright image areas where it becomes unreadable.
- **Always render and visually check wrapping** after setting font sizes. What looks right in code often wraps badly at large sizes.

### Text Positioning Relative to Image Focal Points (Critical)

- **Text must NOT overlap the image's primary visual subject.** If the image has a central focal point (a face, an object, a symbol), position text ABOVE or BELOW that focal point — never through it.
- **Map zones before placing text:** Look at the image. Identify: (1) the focal point, (2) the dark/empty zones suitable for text, (3) any busy/bright zones to avoid. Then set text x/y/w/h coordinates to land squarely in the safe zone.
- **"Below the image" is often better than "over the image."** If the image subject is centered or in the upper half, push text to the lower third (y: 3.5-4.0 on a 5.625" slide). Dark overlay in the lower third doesn't kill the image's visual impact.
- **Section title slides need dark overlay too.** Don't use `bg()` (no overlay) on slides with text — even section titles. The image will compete with the text and the text will lose. Always use `bgDark()` or equivalent unless the image has a guaranteed pitch-black zone where text sits.

### Line Spacing Within Text Blocks

- `\n\n` (double line break) creates excessive gaps within what should be tight text groups. Use `\n` for connected thoughts.
- **Default to `lineSpacingMultiple: 0.9`** for most slides. Tight spacing reads as confident and cohesive.
- Use `0.95` for slides with more text that needs breathing room.
- **Never go above 1.0** unless there's a specific reason. Loose spacing (1.05+) reads as hesitant and breaks visual unity.
- Only use `\n\n` when there's a deliberate rhetorical pause between two distinct ideas.

### Text Hierarchy: Weight and Size, Not Fading (Critical)

Rich's rule: **Hierarchy comes from bold, caps, underline, size, and color — NOT from fading text to gray.**

- **NEVER use gray/dim text (color: '999999' or 'DDDDDD') for setup lines.** Setup text should be regular-weight WHITE, not faded gray. Gray on dark backgrounds reads as timid and creates low-contrast readability problems.
- **Hierarchy tools (in order of impact):**
  1. **Bold + ALL CAPS** — maximum impact (e.g., "YOU", "WIDENS")
  2. **Bold** — punchlines and key statements
  3. **ALL CAPS with letter-spacing** — section labels, kickers
  4. **Underline** — specific term emphasis
  5. **Gold/accent color** — special words that need to pop
  6. **Size contrast** — larger text = more important (setup at 26-32pt, payoff at 38-48pt)
  7. **Regular weight (not bold)** — setup text that leads to a bold payoff
- **NEVER use italic** except for actual quotes (someone said this). Italic reads as "aside" or "attribution" — wrong for hooks and statements.
- **The floor is regular-weight white.** The ceiling is bold + caps + large. Everything lives between those two poles. Nothing goes below white regular weight.

### One Unique Image Per Slide (Critical)

- **EVERY slide MUST have its own unique background image.** Never reuse the same image on consecutive slides or anywhere in the deck.
- **30 slides = 30 unique images.** No exceptions. Reusing images kills visual engagement — the whole point of Presentation Zen is emotional impact through imagery, and repetition destroys that.
- **Each image must conceptually connect to THAT slide's specific message.** Don't pick generic stock imagery and spread it across a section. If slide 7 says "AI doesn't flatten expertise — it multiplies it" the image should evoke multiplication/amplification, not a random forest path.
- **Plan all images BEFORE generating any.** Create a slide-by-slide image brief: slide number, message, visual concept, composition notes. Review the full list for variety — no two images should feel similar.
- **Vary the visual palette across slides.** Different colors, different subjects, different moods. A deck where every image is "dark moody object on black background" becomes monotonous even if each image is unique.
- **Composition rule for text-on-image:** Every image needs a dark or empty zone where text will sit. Specify "subject right, dark negative space left" (or appropriate direction) in every image prompt.

### AI Image Generation Prompt Formula (Critical)

Every image prompt for a presentation background MUST include ALL of these elements. Missing any one causes failures that require regeneration.

**The formula:**
```
[Subject description matching the slide's specific message],
[composition direction — e.g., "subject positioned in the right third"],
[dark zone instruction — "deep dark tones on the left side for text overlay"],
fills the entire rectangular frame from the very left edge to the very right edge with no black bars no black voids no letterboxing,
widescreen 16:9,
absolutely no text no words no letters no logos no watermarks no numbers no writing of any kind anywhere in the image
```

**Why every piece matters:**
- **Subject matching the slide message**: "A prism" doesn't say "multiplier." "Hundreds of candles multiplying into the distance" does. The image must make the viewer FEEL the slide's concept before they read a word.
- **"fills the entire rectangular frame... no black voids"**: Without this, AI generators frequently create a subject floating in black void, or a centered composition with black bars on the sides. The image must be wall-to-wall content.
- **Anti-text clause — say it AGGRESSIVELY**: AI generators embed text on everything — book spines, screen displays, signs, labels, vending machines, bottles, packaging. A simple "no text" isn't enough. Use the full litany: "absolutely no text no words no letters no logos no watermarks no numbers no writing of any kind." Even then, inspect every image carefully. Expect to regenerate 10-20% of images for text contamination.

**Concept selection process:**
1. For each slide, ask: "What FEELING does this message create?" Not "what object relates to this word?"
2. Pick a concrete visual metaphor, not a literal illustration. "Multiplier" → hundreds of candles in a cathedral, NOT a math equation.
3. Verify variety: scan the full list of 30 image concepts before generating. No two should share the same subject, color palette, or mood.

### AI-Generated Image Quality Checks (Critical)

Before embedding ANY AI-generated image into a slide, verify ALL of these. **Do this for EVERY image, no exceptions — the image that looks fine at a glance is the one with "GENERIC SNACK CO." on a package in the background.**

- **No readable text ANYWHERE in the image.** Zoom in. Check screens, labels, signs, packaging, book spines, buttons, badges, displays, menus, receipts, storefronts. AI generators contaminate images with text constantly. If ANY text is readable — even partially, even small — regenerate. This has caused more rework than any other issue.
- **No watermark-like artifacts.** Faint overlaid text, repeating diagonal patterns, semi-transparent logos. These appear especially in AI images prompted with photorealistic styles.
- **Image fills the frame edge to edge.** No black voids on any side. No letterboxing. The image content must extend to all four edges. Open the image file and check: if any edge is solid black for more than a few pixels, the image doesn't fill the frame. Regenerate with stronger "fills the entire frame" language.
- **Correct 16:9 aspect ratio.** Verify dimensions: `file *.png`. Must be exactly 16:9 (e.g., 1024x576, 1536x864, 2048x1152). Non-matching ratios cause black bars or distortion.
- **Adequate dark zone for text overlay.** Visually confirm the left side (or wherever text will go) is dark enough for white text at 30-40pt without any overlay. If you need a heavy overlay to make text readable, the image composition is wrong — regenerate with better dark-zone prompting.
- **No rune-like symbols, glyphs, or decorative writing.** AI generators love adding "mystical symbols" that read as writing. If the image contains circular patterns with glyph-like marks, viewers will perceive them as text.
- **Visual variety across the deck.** Review all images together before building slides. Flag any that share the same color temperature, subject type, or mood. 30 slides = 30 visually distinct images.

### Overlay Banding (Feathered Edge Artifacts)

- The 4-step feathered overlay (4 rectangles at transparency 65/78/88/95 across 0.5" bands) creates **visible vertical banding** — you can see the hard edges between each transparency step. This is especially noticeable on images with smooth gradients or uniform mid-tones.
- **Fix: Use 6-8 narrower bands** instead of 4 wide ones. Smaller steps in transparency across narrower widths produce smoother transitions. Example: 8 bands at 0.25" width with transparency 60/67/74/80/85/89/93/97.
- Alternatively, if the image has a naturally dark left side, **skip the overlay entirely.** The best solution is always an image that doesn't need one.

### Shadow Object Mutation (Critical — Causes File Corruption)

**NEVER declare a single shadow object and reuse it across multiple `addText`, `addShape`, or `addImage` calls.** PptxGenJS mutates the shadow object in-place during the first call (converting values to EMU units). Every subsequent call that reuses the same object gets corrupted values, which causes PowerPoint to flag the file as needing repair.

**Wrong:**
```javascript
const SHADOW = { type: 'outer', color: '000000', blur: 10, offset: 2, angle: 45, opacity: 0.9 };
slide.addText('Line 1', { shadow: SHADOW }); // SHADOW is now mutated
slide.addText('Line 2', { shadow: SHADOW }); // corrupt — gets EMU values
```

**Correct — use a factory function:**
```javascript
const sh = () => ({ type: 'outer', color: '000000', blur: 10, offset: 2, angle: 45, opacity: 0.9 });
slide.addText('Line 1', { shadow: sh() }); // fresh object every call
slide.addText('Line 2', { shadow: sh() }); // fresh object every call
```

This applies to ALL option objects, not just shadows. If you share any options object across calls, the second call gets mutated values.

### PPTX Filename and Caching

- **Never regenerate a PPTX with the same filename while the old version is open in PowerPoint.** PowerPoint caches the file and will keep showing the old version even after the file on disk changes.
- **Either use a new filename** (v2 → v3) or explicitly tell the user to close the file before regenerating. After regenerating, reopen with a fresh `open` command.

### Text Overlap — The #1 Recurring Failure (Critical)

Text overlap is the most common and most embarrassing problem in generated decks. Every slide with two text elements MUST be verified mathematically before building.

**The rule:** `primary_y + primary_h + 0.3" ≤ secondary_y` — always.

**Calculate before you set:**
- Primary text occupying 2 lines at 60pt needs h ≥ 1.7". Setting h:1.2 will cause overflow INTO the secondary text zone.
- Line height approximation: `(fontSize / 72) * 1.15` inches per line. Multiply by number of lines. Add 0.2" buffer. That's your minimum h.
- Width check: if `charCount × (fontSize/72) × 0.55 > w`, the text wraps to another line. Account for it.

**Specific failure patterns seen in production:**
- "8:00 PM EASTERN" at fontSize:60, w:4.8 → wraps to 2 lines, needs h:1.8 minimum. h:1.2 causes overflow.
- "PRODUCES." at fontSize:80, w:6.0 → "PRODUCE" + "S." on separate lines. Use w:8.0 or fontSize:56.
- "TONIGHT ONLY" at fontSize:72, w:5.2 → "TONIGHT / ONLY" wraps. Use w:7.0.
- Any product name + price + tier label stacking → each element needs its own y with 0.3" gap.

**Verification after every build:** Generate thumbnails. For every slide with two text elements, verify in the thumbnail that they are visually separated. If you cannot see clear white space between them, they are too close.

### pptx Object Scope in Slide Build Functions (Critical)

When slide definitions are stored in a `SLIDES` array at module scope, the individual `build(slide)` functions do NOT have access to the `pptx` instance (which is created inside the async `build()` function).

**Wrong:**
```javascript
// SLIDES array at module scope
const SLIDES = [{ build(slide) { slide.addShape(pptx.shapes.RECTANGLE, ...) } }]; // pptx not defined here
async function build() { const pptx = new pptxgen(); }
```

**Right:** Use the shape type string directly:
```javascript
slide.addShape('rect', { x: 0, y: 0, w: 5, h: 5.625, fill: { color: '000000', transparency: 30 }, line: { color: '000000', transparency: 100 } });
```

`pptx.shapes.RECTANGLE` evaluates to `'rect'`. Pass the string directly inside slide build functions.

### Non-16:9 Images Cause White Borders

Using `slide.addImage({ path, x:0, y:0, w:10, h:5.625 })` on a non-16:9 image (e.g., 1024×707) produces white borders because the aspect ratio doesn't match.

**Fix:** Use `slide.background = { path: imgPath }` instead of `addImage()`. The background property auto-scales to fill the slide without borders.

**Always verify image dimensions** before embedding: `file image.png` or check with Python. A 1024×576 image is 16:9. A 1024×707 is not.

### QA Is Not Optional — Never Lie About It

The PPTX skill QA section says "Assume there are problems." This is not a suggestion. A 137-slide deck generated without QA will have 60-90 layout problems visible to the human eye in the first 60 seconds of review.

**The mandatory QA loop:**
1. Build → generate thumbnails
2. Read EVERY thumbnail grid — not "a few," every one
3. List every problem you see — text overlap, word wrapping, text over bright image, missing text, wrong colors
4. Fix ALL of them
5. Rebuild → regenerate thumbnails → re-verify every previously-broken slide
6. Only report done when you have visually confirmed each fix worked

**Never say "QA complete" unless you have read every thumbnail.** This is a lie and it will be caught immediately when the human opens the file.

---

## QA (Required)

**Assume there are problems. Your job is to find them.**

Your first render is almost never correct. Approach QA as a bug hunt, not a confirmation step. If you found zero issues on first inspection, you weren't looking hard enough.

### Content QA

```bash
python -m markitdown output.pptx
```

Check for missing content, typos, wrong order.

**When using templates, check for leftover placeholder text:**

```bash
python -m markitdown output.pptx | grep -iE "xxxx|lorem|ipsum|this.*(page|slide).*layout"
```

If grep returns results, fix them before declaring success.

### Visual QA

**⚠️ USE SUBAGENTS** — even for 2-3 slides. You've been staring at the code and will see what you expect, not what's there. Subagents have fresh eyes.

Convert slides to images (see [Converting to Images](#converting-to-images)), then use this prompt:

```
Visually inspect these slides. Assume there are issues — find them.

Look for:
- Overlapping elements (text through shapes, lines through words, stacked elements)
- Text overlapping the image's primary visual subject (text should be in dark/empty zones, NOT through the focal point)
- Text overflow or cut off at edges/box boundaries
- Orphan words (single short word alone on its own line at the end of a text block)
- Elements too close (< 0.3" gaps) or cards/sections nearly touching
- Uneven gaps (large empty area in one place, cramped in another)
- Insufficient margin from slide edges (< 0.5")
- Low-contrast text (light text on light areas, gold text on warm-toned backgrounds)
- Text boxes too narrow causing excessive wrapping or awkward line breaks
- Visible vertical banding in overlay gradients (distinct striped bands rather than smooth transitions)
- Images that don't fill the frame edge-to-edge (black voids, letterboxing, black bars on any side)
- Readable text, words, letters, logos, or watermarks ANYWHERE in background images (zoom in to check labels, screens, signs, packaging)
- Rune-like symbols, glyphs, or decorative writing in background images

For each slide, list issues or areas of concern, even if minor.

Read and analyze these images:
1. /path/to/slide-01.jpg (Expected: [brief description])
2. /path/to/slide-02.jpg (Expected: [brief description])

Report ALL issues found, including minor ones.
```

### Verification Loop

1. Generate slides → Convert to images → Inspect
2. **List issues found** (if none found, look again more critically)
3. Fix issues
4. **Re-verify affected slides** — one fix often creates another problem
5. Repeat until a full pass reveals no new issues

**Do not declare success until you've completed at least one fix-and-verify cycle.**

---

## Converting to Images

Convert presentations to individual slide images for visual inspection:

```bash
python scripts/office/soffice.py --headless --convert-to pdf output.pptx
pdftoppm -jpeg -r 150 output.pdf slide
```

This creates `slide-01.jpg`, `slide-02.jpg`, etc.

To re-render specific slides after fixes:

```bash
pdftoppm -jpeg -r 150 -f N -l N output.pdf slide-fixed
```

---

## Dependencies

- `pip install "markitdown[pptx]"` - text extraction
- `pip install Pillow` - thumbnail grids
- `npm install -g pptxgenjs` - creating from scratch
- LibreOffice (`soffice`) - PDF conversion (auto-configured for sandboxed environments via `scripts/office/soffice.py`)
- Poppler (`pdftoppm`) - PDF to images
