---
name: theme-factory
description: Use when working with content theme notes (type theme-note) in 21.19 Content/Content-Themes, when applying visual design themes to presentation artifacts, or when connecting themes to supporting knowledge in 50.00 Knowledge
---

# Theme Factory

Two distinct workflows in one skill:
1. **Knowledge Integration** — connect content theme notes to relevant knowledge notes
2. **Visual Design Themes** — apply color/font themes to presentation artifacts

---

## Workflow 1: Knowledge Integration

Use when working on a `type: theme-note` file in `~/Obsidian/Notes/20.00 Projects/21.00 BruceFleck.com/21.19 Content/Content-Themes/`.

### Step 1 — Read the Theme Note

Extract from the theme note:
- **Theme slug** (filename without `.md`, e.g., `agentic-ai-readiness-gap`)
- **Theme tags** (from YAML frontmatter)
- **Description** (core topic and framing)
- **Key concepts** from Epiphanies and Distinctions sections

### Step 2 — Search 50.00 Knowledge

Search `~/Obsidian/Notes/50.00 Knowledge/` for notes aligned with the theme.

**Alignment criteria** (any of):
- Note title or content mentions the theme's core concepts
- Note tags overlap with the theme's tags
- Note topic is directly relevant to the theme's description or distinctions

**Search approach:**
- Use the `50.00 Knowledge/CLAUDE.md` directory guide to target relevant subdirectories first
- Focus on directories that match the theme domain (e.g., "AI & Automation" for AI themes, "Psychology" for behavioral themes)
- Scan note titles and frontmatter before reading full content

### Step 3 — Tag Aligned Knowledge Notes

For each aligned knowledge note found, add a `theme/[theme-slug]` tag to its YAML frontmatter.

**Tag format:** `theme/agentic-ai-readiness-gap` (kebab-case, no spaces)

**YAML tag insertion rules:**
- If `tags:` field exists as a list, append the theme tag as a new list item
- If `tags:` field exists as inline string (e.g., `tags: #SEM`), convert to list format and add theme tag
- If no `tags:` field exists, add one after the existing frontmatter fields
- Use the same casing/format as existing tags in that note

**Example — existing list:**
```yaml
tags:
  - ai/prompting
  - theme/agentic-ai-readiness-gap   # ← added
```

**Example — existing inline tag:**
```yaml
# Before
tags: #SEM

# After
tags:
  - SEM
  - theme/skills-wage-premium
```

**Example — no existing tags:**
```yaml
type: ref.note
source: book
tags:
  - theme/productivity-paradox    # ← added
```

### Step 4 — Link Theme Note to Knowledge Notes

If the theme note's content **directly references, incorporates, or draws from** a knowledge note, add an Obsidian internal link to the theme note.

**When to add a link:**
- Theme's epiphany or distinction clearly draws on a specific book, author, or concept documented in a knowledge note
- Theme's description explicitly references a research finding that is captured in a knowledge note

**When NOT to add a link:**
- General topical overlap (that's what tagging handles)
- Knowledge note only tangentially relates

**Link format:** `[[Note Title]]` — use the exact filename without `.md`

**Aliased link format:** `[[Note Title|Display Text]]` — use when the note title is a long citation

**Where to add links in the theme note:**

Add a `## Knowledge Connections` section at the bottom of the theme note (before or after `## Skills` if present):

```markdown
## Knowledge Connections

- [[Clear-2018-Atomic Habits]] — Habit formation mechanics underlying the theme
- [[Prompt Engineering]] — Foundational concepts referenced in epiphany 1
```

**Do not** add links for knowledge notes that are only tagged (Step 3) — links are reserved for direct incorporation.

### Step 5 — Report

After completing, report:
- How many knowledge notes were tagged (list them with note paths)
- How many links were added to the theme note (if any)
- Any notes that were close matches but not tagged (and why)

---

## Workflow 2: Visual Design Themes

Use when styling presentation slides, documents, HTML artifacts, or reports.

### Process
1. Show `theme-showcase.pdf` from the `example-skills:theme-factory` plugin — do not modify it
2. Ask which of the 10 preset themes to apply
3. Wait for explicit selection
4. Read the corresponding theme file from the plugin's `themes/` directory
5. Apply colors and fonts consistently throughout the artifact

### Available Themes
Ocean Depths · Sunset Boulevard · Forest Canopy · Modern Minimalist · Golden Hour · Arctic Frost · Desert Rose · Tech Innovation · Botanical Garden · Midnight Galaxy

### Custom Theme
If no preset works, generate a custom theme based on user description. Show for approval before applying.

**Theme files location:** `~/.claude/plugins/cache/anthropic-agent-skills/example-skills/*/skills/theme-factory/themes/`

---

## Quick Reference

| Situation | Action |
|-----------|--------|
| Working on a `type: theme-note` | Run Workflow 1 (Knowledge Integration) |
| Styling a slide deck or HTML artifact | Run Workflow 2 (Visual Design) |
| Theme note already has a `## Knowledge Connections` section | Update it, don't duplicate |
| Knowledge note has no frontmatter at all | Add `---\ntags:\n  - theme/[slug]\n---` at the top |
| Not sure if a knowledge note is aligned | Err toward tagging; tags are easy to remove |
