---
name: over-my-shoulder
description: Complete introduction to the Look Over My Shoulder (LOMS) System - automated content harvesting that transforms your Claude Code work into shareable student resources.
license: Private
triggers:
  - /over-my-shoulder
  - /loms-intro
  - /loms-explain
  - what is loms
  - how does loms work
  - loms system explained
metadata:
  version: 1.0.0
  category: education
  system: LOMS
---

# Look Over My Shoulder (LOMS) System

**Your automated bridge from daily work to student-ready resources.**

---

## What Is LOMS?

LOMS (Look Over My Shoulder) is an automated system that **transforms your Claude Code work sessions into shareable, student-ready resources** — without any extra effort on your part.

Every time you work with Claude Code, you're generating valuable content:
- **Skills** you build and refine
- **Patterns** you discover and implement
- **Solutions** to problems you solve
- **Techniques** you develop and test

LOMS captures all of this automatically and packages it in a way that lets your students literally "look over your shoulder" as you work — seeing real examples, actual workflows, and practical implementations.

---

## The Problem It Solves

### For Expert Instructors:
- ❌ **Time-consuming content prep** - Hours spent organizing and formatting work for lessons
- ❌ **Content loss** - Great insights and techniques disappear between sessions
- ❌ **Disconnected teaching** - Lessons don't reflect your current thinking or methods
- ❌ **Manual extraction** - Manually copying and organizing work from projects

### The Solution:
✅ **Zero extra work** - Content captures automatically
✅ **Everything documented** - No insights lost
✅ **Always current** - Latest techniques included
✅ **Ready-to-share** - Packages with install scripts, READMEs, all necessary files

---

## How LOMS Works: 4-Phase Pipeline

LOMS operates as an automated 4-phase pipeline that runs at the end of your workday:

```
Your Daily Work
    ↓
Phase 1: CAPTURE    → Scans all Claude Code projects
                      Extracts today's sessions
                      Output: library/daily/{date}.json
    ↓
Phase 2: ANALYZE    → Classifies content by type
                      Scores shareability
                      Output: library/processed/{date}/
    ↓
Phase 3: PACKAGE    → Creates distributable packages
                      Generates READMEs & installers
                      Output: library/packages/
    ↓
Phase 4: CURATE     → Organizes into browsable library
                      Creates weekly summaries
                      Output: library/harvest/
    ↓
Browsable Library   → Ready for lesson prep & student access
```

### Phase 1: Capture (30 seconds)

**What:** Scans `~/.claude/projects/` for today's sessions

**Captures:**
- Project names
- Session counts and durations
- First prompts (for context)
- Files created/modified
- Message counts

**Output:** `library/daily/YYYY-MM-DD.json` and `.md`

### Phase 2: Analyze (60 seconds)

**What:** Classifies each session by content type and shareability

**Determines:**
- **Type**: Is this a skill, pattern, artifact, or documentation?
- **Shareability**: Should this be shared (HIGH), reviewed (MEDIUM), or kept private (LOW)?
- **Confidence**: How certain is the classification?

**Private Data Filter:**
- ✓ API keys and passwords (filtered out)
- ✓ Dollar amounts and financials (filtered out)
- ✓ Internal business discussions (filtered out)
- ✓ Personal communications (filtered out)

**Output:** `library/processed/{date}/` with detailed analysis

### Phase 3: Package (60 seconds)

**What:** Creates distributable packages for high-shareability items

**For Each High-Shareability Item:**
1. Generate `README.md` with usage instructions
2. Create `install.sh` (Mac/Linux) and `install.ps1` (Windows) installers
3. Copy all necessary files
4. Structure everything for easy sharing

**Output:** `library/packages/{type}/{name}/`

### Phase 4: Curate (30 seconds)

**What:** Organizes packages into a browsable library by week

**Creates:**
- Daily indexes with item listings
- Weekly summaries with highlights
- Selection tracking for lesson prep
- Easy navigation structure

**Output:** `library/harvest/` with full browsable library

---

## What Gets Captured

| Content Type | Example | Shareability | Included |
|--------------|---------|--------------|----------|
| **Skills** | New Claude Code skill you built | HIGH | ✓ Yes |
| **Agents** | Custom critic or evaluator agent | HIGH | ✓ Yes |
| **Patterns** | "Run these in parallel" technique | HIGH | ✓ Yes |
| **Documentation** | How-to guides you wrote | MEDIUM | ✓ Yes |
| **Artifacts** | Templates, scripts, frameworks | MEDIUM | ✓ Yes |
| **Workflows** | Multi-step processes you created | MEDIUM | ✓ Yes |
| **Business-specific** | Internal decisions, financials | LOW | ✗ Excluded |

---

## The 5 Skills Included in LOMS

### 1. **loms-run** (Orchestrator)
The main entry point. Runs all 4 phases in sequence.

**Use:**
```
/loms
```

### 2. **loms-capture**
Scans `~/.claude/projects/` for today's sessions.

**Use:**
```
/loms-capture
```

### 3. **loms-analyze**
Classifies each session by type and shareability.

**Use:**
```
/loms-analyze
```

### 4. **loms-package**
Creates distributable packages for high-shareability items.

**Use:**
```
/loms-package
```

### 5. **loms-curate**
Organizes packages into a browsable library.

**Use:**
```
/loms-curate
```

---

## Installation

### Mac/Linux (Bash)

```bash
cd ~/Downloads/LOMS-System
chmod +x install.sh
./install.sh
```

### Windows (PowerShell)

```powershell
cd ~/Downloads/LOMS-System
.\install.ps1
```

**The installer will:**
1. ✓ Install all 5 LOMS skills to `~/.claude/skills/`
2. ✓ Create a config file at `~/.claude/skills/loms-config.json`
3. ✓ Create the library directory at `~/Documents/LOMS-Library/`

---

## Configuration

### Default Setup

After installation, LOMS uses:
- **Library location:** `~/Documents/LOMS-Library/`
- **Config file:** `~/.claude/skills/loms-config.json`

### Customizing Your Library Location

Edit `~/.claude/skills/loms-config.json`:

```json
{
  "library_base": "~/Documents/LOMS-Library",
  "description": "Edit this file to change where LOMS saves content."
}
```

**Examples:**

```json
// Store in Obsidian vault
{"library_base": "~/Documents/Obsidian/MyVault/LOMS"}

// Store in Dropbox
{"library_base": "~/Dropbox/LOMS-Content"}

// Store with teaching materials
{"library_base": "/Users/yourname/Teaching/LOMS"}
```

---

## Daily Workflow

### End of Day: 3 Steps to Harvest Your Work

**1. Run the Pipeline**

```
/loms
```

This executes all 4 phases automatically (~3 minutes total).

**2. Review the Summary**

You'll see output showing:
- ✓ Projects scanned
- ✓ Sessions captured
- ✓ Items analyzed
- ✓ Packages created
- ✓ Library location

**3. Browse the Harvest Library**

Open: `~/Documents/LOMS-Library/library/harvest/`

Explore:
- Latest daily indexes
- Weekly summaries
- High-shareability items
- Ready-to-share packages

---

## Library Structure

After running LOMS, your library is organized like this:

```
~/Documents/LOMS-Library/
└── library/
    ├── daily/                      # Raw daily captures
    │   ├── 2026-02-12.json
    │   └── 2026-02-12.md
    │
    ├── processed/                  # Analyzed sessions
    │   └── 2026-02-12/
    │       ├── summary.json
    │       └── {session-id}-analyzed.json
    │
    ├── packages/                   # Distributable packages
    │   ├── index.md
    │   ├── skills/
    │   │   ├── my-skill-1/
    │   │   │   ├── README.md
    │   │   │   ├── install.sh
    │   │   │   └── install.ps1
    │   │   └── my-skill-2/
    │   ├── documentation/
    │   └── patterns/
    │
    └── harvest/                    # Browsable library by week
        ├── index.md
        ├── 2026/
        │   ├── week-06/
        │   │   ├── weekly-summary.md
        │   │   └── days/
        │   │       └── 2026-02-12/
        │   │           └── index.md
        │   └── week-07/
        └── usage-log.json
```

---

## Performance

LOMS runs fast — even with many projects:

| Phase | Time |
|-------|------|
| Capture | ~30 seconds |
| Analyze | ~60 seconds |
| Package | ~60 seconds |
| Curate | ~30 seconds |
| **Total** | **< 3 minutes** |

---

## Benefits

### For You (The Expert)

✓ **Zero extra work** - Content harvests automatically as you work
✓ **Never lose insights** - Every skill, pattern, and technique is captured
✓ **10-minute lesson prep** - Browse the harvest library, pick highlights
✓ **Content library grows** - Accumulates over time, building a reference library
✓ **Always current** - Latest thinking reflected in captured materials
✓ **Easy sharing** - Every package is ready to install for students

### For Your Students

✓ **Real examples** - See actual work, not contrived demos
✓ **Full context** - Understand the why, not just the how
✓ **Immediate application** - Ready-to-install skills and patterns
✓ **Learn your thinking** - See how you approach problems
✓ **Timely relevance** - Learn from your latest techniques
✓ **Production-ready** - Every package includes documentation and installers

---

## Quick Start Guide

### 1. Install LOMS (5 minutes)

```bash
# Mac/Linux
cd ~/Downloads/LOMS-System
chmod +x install.sh
./install.sh

# Windows PowerShell
cd ~/Downloads/LOMS-System
.\install.ps1
```

### 2. Work Normally

Continue your daily Claude Code work as usual. LOMS captures automatically.

### 3. End of Day: Run the Pipeline (3 minutes)

```
/loms
```

### 4. Browse & Review (5 minutes)

Open `~/Documents/LOMS-Library/library/harvest/` to see what was captured.

### 5. Prep for Lessons (10 minutes)

Select high-shareability items from the harvest library to include in your next lesson.

**Total setup:** ~5 minutes
**Daily maintenance:** ~3 minutes
**Per-lesson prep:** ~10 minutes

---

## Troubleshooting

### "No sessions today"
- Check that you have `~/.claude/projects/` with project folders
- Sessions must have been created/modified today (local time)

### Skills not installing
- Verify the LOMS-System folder structure is intact
- Ensure SKILL.md exists in each skill folder
- Re-run the installer

### Library not creating
- Check `~/.claude/skills/loms-config.json` for correct path
- Verify the path is valid and writable
- Create folder manually if needed:

**Mac/Linux:**
```bash
mkdir -p ~/Documents/LOMS-Library/library
```

**Windows PowerShell:**
```powershell
New-Item -ItemType Directory -Force -Path "$env:USERPROFILE\Documents\LOMS-Library\library"
```

### Config file not found
- Re-run the installer
- Or manually create `~/.claude/skills/loms-config.json`:
```json
{
  "library_base": "~/Documents/LOMS-Library",
  "description": "Edit this file to change where LOMS saves content."
}
```

---

## Next Steps

### To Get Started Immediately:

1. **Install LOMS** using the installation steps above
2. **Run `/loms`** at the end of your next work session
3. **Browse the library** at `~/Documents/LOMS-Library/library/harvest/`

### To Learn More:

- **Complete documentation:** Read `README.md` in the LOMS-System folder
- **Technical details:** See `how-it-works.md` for Mermaid diagrams and architecture
- **Individual skills:** Use `/loms-capture`, `/loms-analyze`, `/loms-package`, `/loms-curate` separately

### To Customize:

- **Change library location:** Edit `~/.claude/skills/loms-config.json`
- **Adjust shareability filters:** Modify analysis rules (advanced)
- **Create custom packages:** Use the package structure as a template

---

## Key Principles

### LOMS Philosophy

1. **Automatic ≠ Magic** - Work normally, let the system harvest
2. **Context Preserved** - Full project and session context captured
3. **Students Learn Your Thinking** - See real approaches, not contrived examples
4. **Privacy Protected** - Filters sensitive data automatically
5. **Immediately Useful** - Every package is ready to share and install
6. **Accumulates Over Time** - Your content library grows continuously

### Design Principles

- **Zero friction** - No extra work required
- **Transparent** - See exactly what's being captured
- **Flexible** - Configure for your needs
- **Fast** - Complete pipeline in < 3 minutes
- **Extensible** - Build on the system for custom needs

---

## Files & Documentation

### In the LOMS-System Folder:

- **README.md** - Full documentation and setup instructions
- **how-it-works.md** - Visual pipeline with Mermaid diagrams
- **install.sh** - Mac/Linux installer
- **install.ps1** - Windows installer
- **skills/** - All 5 LOMS skills

---

## Summary

**LOMS transforms your daily Claude Code work into an automated content pipeline:**

```
Your Work (daily)
    ↓ (automatic)
Captured Sessions
    ↓ (automatic)
Analyzed & Classified
    ↓ (automatic)
Packaged for Sharing
    ↓ (automatic)
Organized Library
    ↓ (manual browsing)
Lesson-Ready Resources
```

**Result:** Never prepare lesson content the same way again. Your best thinking, automatically harvested and ready to teach.

---

## Support & Feedback

For issues, questions, or feedback:

- **Installation problems?** Check the Troubleshooting section above
- **Feature suggestions?** See how-it-works.md for architecture
- **Want to customize?** All skills are well-documented and editable

---

*Look Over My Shoulder (LOMS) System v1.0*
*Automated Content Harvesting for Educators*
*Created by Rich Schefren - Strategic Profits*
