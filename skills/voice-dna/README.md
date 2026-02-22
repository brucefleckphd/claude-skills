# Personal Brand DNA Extractor

**Author:** Ashley Shaw
**Created:** February 4, 2026
**Skill Name:** `voice-dna`
**Purpose:** Extract a person's unique brand DNA from existing materials and create 8 AI-optimized files that power all copywriting and content creation with THEIR voice, THEIR stories, THEIR credentials.

---

## What This Skill Does

The Personal Brand DNA Extractor analyzes a person's:
- Social media presence (Instagram, LinkedIn, YouTube, etc.)
- Website and marketing materials
- Testimonials and case studies
- Video transcripts and speaking samples
- Professional credentials and achievements

And produces **8 markdown files** that any AI tool can use to write in that person's authentic voice.

---

## Installation

This skill is already installed in `~/.claude/skills/voice-dna/`

To use it, run:
```
/voice-dna
```

---

## How to Use

### Method 1: Run the Skill

In Claude Code, type:
```
/voice-dna
```

Then provide:
1. Person's name
2. Website URL
3. LinkedIn profile URL
4. Instagram handle
5. YouTube channel URL
6. Any existing testimonials, bios, or presentations

### Method 2: Manual Extraction

Follow the process in `SKILL.md`:
1. Collect source materials
2. Access live social media feeds
3. Capture real voice samples
4. Create the 8 files using the templates

---

## Output Files (8 Total)

| File | Purpose |
|------|---------|
| `01-VOICE-AND-TONE.md` | How they actually sound (real voice samples, patterns) |
| `02-CREDENTIALS.md` | Quantified achievements, bios, authority claims |
| `03-TESTIMONIALS.md` | Social proof organized by theme |
| `04-ORIGIN-STORIES.md` | Transformation narratives with context |
| `05-MENTEES-AND-CLIENTS.md` | Client results and transformations |
| `06-PERSONAL-DETAILS.md` | Humanizing elements, background |
| `07-CORE-PHILOSOPHY.md` | Frameworks, beliefs, contrarian positions |
| `CLAUDE.md` | Index and usage guide |

---

## Critical Requirement: Live Feed Verification

**This skill MUST access live social media to work correctly.**

Polished website copy does NOT capture someone's real voice. The skill requires:
- Actual Instagram captions (verbatim)
- YouTube video transcripts
- LinkedIn posts (not just profile)
- Real examples of casual communication

Without this, the Voice DNA will be generic and polished rather than authentic.

---

## Package Contents

```
voice-dna/
├── README.md                 # This file
├── SKILL.md                  # The main skill file
└── templates/                # Blank templates for each file
    ├── 01-VOICE-AND-TONE-TEMPLATE.md
    ├── 02-CREDENTIALS-TEMPLATE.md
    ├── 03-TESTIMONIALS-TEMPLATE.md
    ├── 04-ORIGIN-STORIES-TEMPLATE.md
    ├── 05-MENTEES-AND-CLIENTS-TEMPLATE.md
    ├── 06-PERSONAL-DETAILS-TEMPLATE.md
    ├── 07-CORE-PHILOSOPHY-TEMPLATE.md
    └── CLAUDE-TEMPLATE.md
```

---

## Integration with Other Skills

Once Brand DNA is extracted, it powers:

- **Carlton/Clayton/Deutsch/Evaldo** - All copywriting experts write in the person's voice
- **Copy-Arsenal** - All 51 copywriting frameworks use their voice
- **Webinar methodologies** - Webinar scripts use their stories and credentials
- **Content Strategy** - Content matches their authentic voice
- **Any AI copywriting** - Reference the files for voice consistency

---

## Troubleshooting

### "The voice sounds generic"
You probably skipped live social media feeds. Go back and capture:
- 5+ Instagram captions verbatim
- 1+ YouTube transcript excerpt
- Note casual patterns (profanity, emojis, stretched words)

### "The credentials are missing"
Check LinkedIn profile thoroughly:
- Experience section
- Featured section
- Recommendations
- Skills & endorsements

### "No testimonials found"
Look in:
- LinkedIn recommendations
- Google Drive testimonials folder
- Website testimonials page
- Email inbox (client praise)

---

## Version History

| Version | Date | Changes |
|---------|------|---------|
| 1.0 | 2026-02-04 | Initial release with live feed verification requirement |

---

*Created for ZenithPro students and anyone building AI-powered content systems.*
