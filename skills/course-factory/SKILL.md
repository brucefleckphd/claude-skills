---
name: course-factory
description: Production-grade AI course creator. Downloads complete YouTube channels (no limits), runs a full copywriting arena competition for sales copy, models the landing page after sites you specify, and deploys to Cloudflare. Not a demo — a factory.
user_invocable: true
---

# Course Factory

Produces a deployed course landing page from YouTube channel research. Full channel downloads, arena-quality sales copy, and design modeled after sites you choose.

## Reused Infrastructure

All scripts are at `~/.claude/skills/course-factory/scripts/`. Reference them in-place. Do NOT copy them.

| Script | Path |
|--------|------|
| Transcript downloader | `~/.claude/skills/course-factory/scripts/download_transcripts.py` |
| Transcript analyzer | `~/.claude/skills/course-factory/scripts/analyze_transcripts.py` |
| Course outline generator | `~/.claude/skills/course-factory/scripts/generate_course_outline.py` |
| Hero image generator | `~/.claude/skills/course-factory/scripts/generate_hero_image.py` |
| Cloudflare deploy | `~/.claude/skills/course-factory/scripts/deploy_pages.sh` |

## API Credentials

All keys are hardcoded in `download_transcripts.py` and `~/.zshrc`. No setup required.

| Key | Used By |
|-----|---------|
| `GEMINI_API_KEY` | Analysis, outline, hero image |
| `DEEPGRAM_API_KEY` | Primary transcription (Nova-2) |
| Cloudflare (wrangler) | Deployment |
| Bitly token | URL shortening — stored in `~/.claude/skills/daily-briefing/references/config.json` |

## Output Location

```
~/Desktop/CourseFactory/output/{niche}-{timestamp}/
├── research/         # Channel list, selection
├── transcripts/      # All channel transcripts
├── course/           # Analysis, outline, brief, arena output, winning copy
└── landing-page/     # HTML, assets
    └── assets/
```

## Failure Thresholds (HARD STOPS)

Halt and report — do NOT proceed — if any of these conditions are met:

| Stage | Threshold | Action |
|-------|-----------|--------|
| Transcript download | < 70% of selected videos captured per channel | Report per-channel failure rates. Ask: proceed anyway or rerun? |
| Content analysis | `analysis.json` contains fewer than 3 distinct topics | Halt. Report: "Insufficient transcript data. Try additional channels or remove channels with low capture rates." |
| Arena completion | No named winner file at `$OUTPUT_DIR/course/sales-copy.md` | Halt. Do NOT proceed to design or page build. Report exact arena failure. |
| Design reference | All WebFetch calls return errors or empty content | Do NOT halt. Fall back to: ask user to describe design preferences in plain text instead of URL analysis. Document fallback in design-brief.md. |
| Landing page | `$OUTPUT_DIR/landing-page/index.html` does not exist or is under 5KB | Halt. Report failure before attempting deploy. |
| Deploy | Wrangler exits non-zero | Halt. Report exact error. Do NOT report success. |

---

## PRE-FLIGHT CHECK

Run silently before Step 1. If any check fails, report and stop.

```bash
# Required dependencies
python3 -c "from google import genai; print('Gemini OK')" 2>&1
python3 -c "from deepgram import DeepgramClient; print('Deepgram OK')" 2>&1
python3 -c "import scrapetube; print('scrapetube OK')" 2>&1
which yt-dlp && echo "yt-dlp OK"
which wrangler && echo "wrangler OK"

# Course Factory scripts must exist
test -f ~/.claude/skills/course-factory/scripts/download_transcripts.py && echo "Scripts OK" || echo "FAIL: scripts missing at ~/.claude/skills/course-factory/scripts/"
test -f ~/.claude/skills/course-factory/scripts/analyze_transcripts.py && echo "Analyzer OK" || echo "FAIL: analyzer missing"
test -f ~/.claude/skills/course-factory/scripts/generate_course_outline.py && echo "Outline OK" || echo "FAIL: outline generator missing"
```

If scripts are missing: "The course-factory scripts are missing from `~/.claude/skills/course-factory/scripts/`. Reinstall the skill."

---

## THE 10-STEP PIPELINE

---

### STEP 1 — Niche & Price Setup

1. Ask: "What niche are we building a course for?"
   - Validate: non-empty, under 60 characters, no special characters that would break bash variable assignment (`$`, backtick, quotes). If invalid, ask again.
2. Ask: "What price point? (default: $97)"
   - Accept any dollar amount. Store as `COURSE_PRICE`. Default to `$97` if no response.
3. Store `NICHE` (lowercase, spaces replaced with hyphens for paths) and `NICHE_CAP` (display name, as typed)
4. Create output directory:

```bash
TIMESTAMP=$(date +%Y%m%d-%H%M)
OUTPUT_DIR=~/Desktop/CourseFactory/output/${NICHE}-${TIMESTAMP}
mkdir -p "$OUTPUT_DIR"/{research,transcripts,course,landing-page/assets}
```

5. Confirm: "Building a [NICHE_CAP] course at [COURSE_PRICE]. Output: `$OUTPUT_DIR`"

---

### STEP 2 — YouTube Research

Run 3 WebSearch queries:
- `"best {NICHE_CAP} YouTube channels 2026"`
- `"top {NICHE_CAP} YouTubers to follow"`
- `"{NICHE_CAP} YouTube creators most watched"`

Compile top 10 channels with: name, handle (`@handle`), approximate subscribers, focus area.

Display as numbered table. Save to:
- `$OUTPUT_DIR/research/channels.json` (array of objects)
- `$OUTPUT_DIR/research/channels-summary.md`

---

### STEP 3 — Channel Selection

Show the channel table. Ask: "Pick 3–5 channels by number."

Store: channel name, handle, handle-without-@.

Confirm selection before proceeding. Do not proceed with fewer than 2 channels or more than 8.

---

### STEP 4 — Full Channel Download

**Count videos before downloading.**

For each selected channel:

```bash
python3 -c "
import scrapetube, sys
try:
    videos = list(scrapetube.get_channel(channel_username='HANDLE_WITHOUT_AT'))
    print(len(videos))
except Exception as e:
    print('ERROR: ' + str(e))
"
```

Display counts and cost estimate:

```
Channel video counts:
  @channelA — 847 videos
  @channelB — 312 videos
  @channelC — 1,204 videos

  Total: 2,363 videos
  Estimated time: ~29 hours (at ~45 sec/video)
  Estimated Deepgram cost: ~$81 (avg 8 min/video × $0.0043/min × 2,363 videos)

  WARNING: This is a large download. Consider setting a per-channel limit.
```

If total videos exceed 500 across all channels, display the warning block above and add: "Recommended limit: 100–200 videos per channel for most use cases."

Ask: "Proceed with ALL videos, or set a per-channel limit? (Enter a number to limit, or 'all' to proceed with no limit)"

- If user enters a number N: use `--limit N` on all channels.
- If user enters "all": run with no limit flag.
- Do not default silently — require an explicit response.

**Download each channel sequentially:**

```bash
python3 ~/.claude/skills/course-factory/scripts/download_transcripts.py \
    --channel {HANDLE_WITHOUT_AT} \
    --output "$OUTPUT_DIR/transcripts" \
    --threads 10 \
    [--limit N if set] \
    --name "{HANDLE}_transcripts"
```

After each channel: report videos attempted, transcripts captured, failures, failure reasons.

**Apply failure threshold:** If any channel captures fewer than 70% of attempted videos, halt and report before proceeding. Ask: "Channel @[handle] only captured [X]% of videos. Proceed anyway, rerun this channel, or remove it from the analysis?"

After all channels: store `TOTAL_VIDEOS` as the total transcript count.

---

### STEP 5 — Content Analysis

```bash
python3 ~/.claude/skills/course-factory/scripts/analyze_transcripts.py \
    --transcripts "$OUTPUT_DIR/transcripts" \
    --niche "$NICHE" \
    --output "$OUTPUT_DIR/course"
```

Read `$OUTPUT_DIR/course/analysis.json`.

**Apply failure threshold:** If the file is missing, empty, or contains fewer than 3 distinct topics, halt. Report: "Transcript analysis returned insufficient data. Check transcript files and rerun, or add more channels." Do NOT proceed to outline generation.

Display:
- Core Topics (top 8, with frequency counts)
- Pain Points (top 7)
- Frameworks & Methodologies found
- Market Gaps
- Exact vocabulary the audience uses

Save a human-readable summary to `$OUTPUT_DIR/course/analysis-summary.md`.

---

### STEP 6 — Course Outline

```bash
python3 ~/.claude/skills/course-factory/scripts/generate_course_outline.py \
    --analysis "$OUTPUT_DIR/course/analysis.json" \
    --output "$OUTPUT_DIR/course"
```

Display the full outline: modules → lessons → learning outcomes.

Ask: "Does this curriculum look right? Any modules to add, remove, or rename? (Press Enter to proceed as-is)"

**Fallback:** If no response is received or user presses Enter without changes, proceed with the generated outline and note: "Proceeding with generated outline."

If changes are requested: apply them to `$OUTPUT_DIR/course/outline.json` and re-display the revised outline before proceeding.

Store: `TOTAL_MODULES`, `TOTAL_LESSONS`, `COURSE_TITLE`, `COURSE_SUBTITLE`, `TARGET_AUDIENCE` from `outline.json`.

---

### STEP 7 — Copywriting Arena (Full Competition)

**7a — Build the Arena Brief**

Write `$OUTPUT_DIR/course/arena-brief.md`:

```markdown
# Copywriting Arena Brief — {NICHE_CAP} Course

## Product
- **Name:** {COURSE_TITLE}
- **Subtitle:** {COURSE_SUBTITLE}
- **Price:** {COURSE_PRICE}
- **Format:** {TOTAL_MODULES}-module digital course, {TOTAL_LESSONS} lessons, self-paced, lifetime access
- **Target Audience:** {TARGET_AUDIENCE}

## Offer
- Core: Complete {NICHE_CAP} course — every lesson built from real expert research
- Guarantee: 30-day money-back, no questions asked
- Price anchor: Built from {TOTAL_VIDEOS}+ expert videos — months of research compressed

## Market Intelligence (from transcript analysis)

### Pain Points
{ALL PAIN POINTS FROM analysis.json}

### Core Topics the Market Wants
{ALL TOPICS WITH FREQUENCY FROM analysis.json}

### Frameworks & Methodologies
{ALL FRAMEWORKS FROM analysis.json}

### Market Gaps
{ALL GAPS FROM analysis.json}

### Exact Language They Use
{VOCABULARY/PHRASES FROM analysis.json}

## Full Course Structure
{COMPLETE OUTLINE — all modules, lessons, and learning outcomes}

## Copy Constraints
- Length: 1,500–2,500 words (landing page, not long-form letter)
- Voice: Peer-to-peer, confident, direct. Not corporate, not hype.
- No income claims, no countdown timers, no fake scarcity
- Focus on transformation: what they BECOME, not just what they GET
- Do NOT name specific creators or channels — use "expert research" or "proven methodologies"
- Audience is intelligent and skeptical — treat them that way
```

**7b — Run the Full Arena**

Invoke the `copywriting-arena` skill:

```
Use the copywriting-arena skill with this brief: [path: $OUTPUT_DIR/course/arena-brief.md]

Run the full competition: all copywriters, multiple rounds, critics, marketplace judge, stress test.

Required outputs:
- Winning copy saved to: $OUTPUT_DIR/course/sales-copy.md
- Full competition results saved to: $OUTPUT_DIR/course/arena-results.md

Do not return until both files are written.
```

Do not interrupt the arena while it runs. Wait for completion.

**Apply failure threshold:** After the arena completes, verify `$OUTPUT_DIR/course/sales-copy.md` exists and is over 500 words. If missing or too short: halt. Report the exact failure. Do NOT proceed to design or page build.

If the file exists: display the winning headline and first 3 paragraphs. Note which methodology won.

---

### STEP 8 — Design Reference

Ask: "What website(s) do you want the landing page to look like? Provide 1–3 URLs. These are design references only — layout, colors, fonts, style. (Press Enter to skip and use a default clean design)"

**If URLs provided:** For each URL, use WebFetch with this extraction prompt:

> "Analyze this page for design extraction. Return a structured breakdown:
> 1. Color palette: background, text, accent/CTA colors (hex or close estimates)
> 2. Typography: headline font, body font, weight usage, size scale
> 3. Layout: full-width vs boxed, max content width, column structure, padding density
> 4. Visual personality: 3–5 adjectives (e.g., minimal, bold, editorial)
> 5. Section patterns: hero structure, features/benefits presentation, social proof layout
> 6. CTA style: shape, color, text treatment
> 7. What makes this design distinctive: the 1–2 memorable or effective elements
> Return as a structured brief, not prose."

**If WebFetch fails on all URLs:** Do not halt. Fall back: ask "WebFetch couldn't parse those pages. Describe the design style you want in a sentence or two." Use that description as the design direction.

**If no URLs provided (Enter pressed):** Use default direction: clean, modern, high-contrast, readable. Document this in the design brief.

Synthesize into `$OUTPUT_DIR/course/design-brief.md`:

```markdown
# Design Brief — {COURSE_TITLE} Landing Page

## Reference Sources
[URLs analyzed, or "User-described" or "Default direction applied"]

## Color Palette
- Background: [color]
- Text: [color]
- Accent/CTA: [color]

## Typography
- Headlines: [font or description]
- Body: [font or description]

## Layout
[Description]

## Visual Personality
[Adjectives + one sentence]

## Section Patterns
[How hero, features, proof, and CTA sections should be structured]

## CTA Style
[Button treatment]

## Key Elements to Capture
[Specific design moves to replicate]
```

**Fallback:** If no response to the confirmation, proceed with the design brief as written.

Confirm with user: "Design direction captured. Proceeding to build. Any last adjustments?" — if no response, proceed.

---

### STEP 9 — Landing Page Build

**9a — Hero Image**

```bash
python3 ~/.claude/skills/course-factory/scripts/generate_hero_image.py \
    --niche "$NICHE" \
    --output "$OUTPUT_DIR/landing-page/assets/hero.jpg"
```

If this fails: note the failure, proceed without a hero image. The frontend-design skill will handle the visual with CSS/gradients instead.

**9b — Build the Landing Page**

Invoke the `frontend-design` skill:

```
Build a production-grade sales landing page for a digital course.

COURSE COPY — use every word as written, do not paraphrase or invent:
[Read and inject full content of $OUTPUT_DIR/course/sales-copy.md]

DESIGN BRIEF — match this visual direction exactly:
[Read and inject full content of $OUTPUT_DIR/course/design-brief.md]

HERO IMAGE: $OUTPUT_DIR/landing-page/assets/hero.jpg [include only if the file exists]

REQUIREMENTS:
- Single self-contained HTML file, embedded CSS, minimal vanilla JS only
- No external dependencies except Google Fonts
- Fully responsive, mobile-first
- All copy from the sales copy document — do not add, remove, or rewrite any copy
- Design follows the design brief — match colors, typography, layout personality
- Sections required: hero, problem/pain, course overview (module cards), pricing/CTA, guarantee, FAQ (extract from copy if present), footer
- Multiple CTAs — at minimum one above the fold and one at close
- CTA hrefs = "#purchase" (placeholder, clearly labeled)
- Save to: $OUTPUT_DIR/landing-page/index.html
```

**Apply failure threshold:** After frontend-design completes, verify `$OUTPUT_DIR/landing-page/index.html` exists and is over 5KB. If missing or too small: halt and report. Do NOT proceed to deploy.

---

### STEP 10 — Deploy to Cloudflare

```bash
bash ~/.claude/skills/course-factory/scripts/deploy_pages.sh \
    "$OUTPUT_DIR/landing-page" \
    "course-${NICHE}"
```

**Apply failure threshold:** If wrangler exits with an error, halt. Report the exact error. Do NOT print a success message. Do NOT tell the user the site is live.

If deploy succeeds: extract the live URL. Shorten via Bitly:

```bash
BITLY_TOKEN=$(python3 -c "import json; d=json.load(open(os.path.expanduser('~/.claude/skills/daily-briefing/references/config.json'))); print(d['bitly']['access_token'])" 2>/dev/null)

if [ -n "$BITLY_TOKEN" ]; then
    SHORT_URL=$(curl -s -X POST 'https://api-ssl.bitly.com/v4/shorten' \
      -H "Authorization: Bearer $BITLY_TOKEN" \
      -H 'Content-Type: application/json' \
      -d "{\"long_url\": \"$LIVE_URL\"}" | python3 -c "import sys,json; d=json.load(sys.stdin); print(d.get('link', ''))" 2>/dev/null)
fi

DISPLAY_URL="${SHORT_URL:-$LIVE_URL}"
```

Save the live URL to `$OUTPUT_DIR/LIVE-URL.md`.

Print the final summary:

```
╔══════════════════════════════════════════════════════════════╗
║  COURSE FACTORY — COMPLETE                                   ║
╠══════════════════════════════════════════════════════════════╣
║                                                              ║
║  Niche:              [NICHE_CAP]                             ║
║  Price:              [COURSE_PRICE]                          ║
║  Channels:           [X]                                     ║
║  Videos downloaded:  [TOTAL_VIDEOS]                          ║
║  Modules:            [TOTAL_MODULES]                         ║
║  Lessons:            [TOTAL_LESSONS]                         ║
║  Arena winner:       [Methodology Name]                      ║
║  Design reference:   [URL or "Default"]                      ║
║                                                              ║
║  LIVE: [DISPLAY_URL]                                         ║
║                                                              ║
║  Output: ~/Desktop/CourseFactory/output/[niche]-[ts]/        ║
╚══════════════════════════════════════════════════════════════╝
```
