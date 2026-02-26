# Mimetic Market Intelligence

A competitive analysis skill that maps your market at the DESIRE level, not the feature level. Based on Rene Girard's mimetic desire theory.

---

## What This Does For You

Standard competitive analysis compares products, features, and pricing. This skill goes deeper -- it analyzes what IDENTITY each competitor offers the buyer, where competitors have unconsciously converged into sameness, and where genuine positioning space exists that nobody is occupying.

The result is a 6-document strategic intelligence package that tells you exactly where your market has collapsed into mimetic sameness, which desires are contested (saturated) vs. underserved (opportunity), and how your own positioning compares to every competitor at the desire level.

This is not copy. It's not content. It's the strategic foundation that makes copy and content actually work -- because you'll know which desires to mediate and which to avoid.

---

## How It Works

The skill runs in 2 phases:

**Phase 1 (Research-Driven):** Claude performs deep web research on 10-20 competitors, pulling actual quotes from websites, social media, sales pages, and public marketing. It produces 3 documents: a convergence map (where everyone sounds the same), a desire theft analysis (what desires each competitor mediates), and your client desire profile (the same depth of analysis applied to you).

**Phase 2 (Strategy):** After you review Phase 1 and answer conversation questions, Claude produces 3 strategy documents: visibility/model strategy, desire unification strategy, and internal mediator deployment strategy.

See `how-it-works.md` for visual diagrams.

---

## Installation

### Mac (Terminal)

```bash
cd ~/Downloads/mimetic-market-intelligence
chmod +x install.sh
./install.sh
```

### Windows (PowerShell)

```powershell
cd $env:USERPROFILE\Downloads\mimetic-market-intelligence
.\install.ps1
```

**Windows note:** If you get an execution policy error, run this first:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

---

## What Gets Installed

| File | Location |
|------|----------|
| `SKILL.md` | `~/.claude/skills/mimetic-market-intelligence/SKILL.md` |
| `references/` (4 files) | `~/.claude/skills/mimetic-market-intelligence/references/` |

That's it -- 5 markdown files total. No Python scripts, no API keys, no external dependencies.

---

## How to Use

### Run Phase 1 (competitive analysis)

```
/mimetic phase1 [your market]
```

Example: `/mimetic phase1 AI for business owners`

You'll need to provide:
1. Your brand name and website URL
2. 10-20 competitor names (or let Claude find them)
3. Your product suite with prices
4. Your market/niche

Claude will research every competitor and produce:
- **Doc 1:** Anti-Mimetic Differentiator Analysis (convergence map)
- **Doc 2:** Competitor Desire Theft Analysis (desire profiles for each competitor)
- **Doc 3:** Your Desire Profile (same depth as competitors)

### Run Phase 2 (strategy)

```
/mimetic phase2 [your name]
```

After reviewing Phase 1 documents and answering the conversation questions, Claude produces:
- **Doc 4:** Visibility and Model Strategy
- **Doc 5:** Desire Unification Strategy
- **Doc 6:** Internal Mediator Deployment Strategy

### Run Both Phases

```
/mimetic full [your market]
```

Runs Phase 1, halts for your answers, then runs Phase 2.

---

## What's in the References Folder

The `references/` folder contains 4 files:

| File | Purpose |
|------|---------|
| `SKILL METHODOLOGY - Mimetic Market Intelligence.md` | Full methodology: 7 lessons, quality standards, research requirements |
| `LIVE ANALYSIS - Anti-Mimetic Differentiator Results.md` | Gold standard Doc 1 example (15 competitors, 6 convergence dimensions) |
| `LIVE ANALYSIS - Competitor Desire Theft Results.md` | Gold standard Doc 2 example (15 desire profiles, contested/underserved zones) |
| `LIVE ANALYSIS - Rich Schefren Desire Profile.md` | Gold standard Doc 3 example (10 evidence quotes, gaps, strengths, comparison table) |

These examples show Claude exactly what quality output looks like.

---

## Troubleshooting

**"This skill requires live web research"**
The skill refuses to run without web access. Make sure Claude Code has WebSearch and WebFetch available.

**Analysis seems shallow or generic**
Check that Claude is actually fetching competitor websites and pulling real quotes. If it's generating from training data alone, that violates the skill's invariants. Remind it: "Use live web research for every profile."

**Phase 2 runs without my answers**
This shouldn't happen -- the skill has a hard constraint to halt after Phase 1. If it does, stop it and provide your answers to the conversation questions first.

**Context window fills up mid-research**
For markets with 10+ competitors, the skill batches research in groups of 5 and saves to files between batches. If it hits limits anyway, it will produce a handoff note for the next session.

**Mac-specific:**
No known Mac-specific issues.

**Windows-specific:**
- PowerShell execution policy may block install.ps1 (see Installation section)
- Use `python` not `python3` if you need Python for other skills

---

## Requirements

- Claude Code installed and working
- Web access (WebSearch and WebFetch tools available)
- No API keys required
- No Python or external dependencies

---

*Packaged by Rich Schefren - Strategic Profits*
