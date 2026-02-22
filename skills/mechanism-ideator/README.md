# Mechanism Ideator v1.0

**Generates fully researched, copy-ready marketing mechanisms from any program content. Produces 3-5 named mechanisms with academic backing, case studies, statistics, visual metaphors, 13-dimension scoring, and sales copy drafts.**

---

## What This Does

Feed this skill your program content (course modules, coaching call transcripts, training material, product specs) and it runs an 8-phase process to extract and develop marketing mechanisms ready for sales letters, VSLs, or webinars.

### The 8 Phases

1. **Phase 0: Market Context** - Establish who you're selling to and what they believe
2. **Phase 1: Content Ingestion** - Deep-read all program files looking for hidden root causes
3. **Phase 2: Mechanism Mining** - Extract candidates, run 5 quality tests, cut failures
4. **Phase 3: Research Sprint** - Launch research agents to find academic backing, case studies, statistics, visual metaphors
5. **Phase 4: Development** - Build full UMP/UMS/UMD structure with research integrated
6. **Phase 5: Layering** - Determine how mechanisms work together in sales copy
7. **Phase 6: Scoring** - Run 13-dimension V3 Scorecard evaluation on each mechanism
8. **Phase 7: Output** - Create folder structure with all deliverables

---

## Installation

This skill is already installed in `~/.claude/skills/mechanism-ideator/`

---

## How to Use

After installation, tell Claude Code:

```
/mechanism-ideator Review my course modules and create mechanisms
```

Or:

```
/mechanism-ideator Analyze these coaching call transcripts for mechanism opportunities
```

### What You Need to Provide

1. **Program content files** - Course modules, transcripts, coaching calls, product specs. The more content, the better.
2. **Target market** - Who you're selling to (health, business, finance, IM, etc.)
3. **What your prospect believes** - Their current explanation for why they're failing
4. **What they've tried** - Previous solutions that didn't work

---

## What You Get Back

### Per Mechanism:
- Named mechanism that passes 5 quality tests
- Full UMP/UMS/UMD structure
- Sales letter sentence draft
- Academic citations with verified sources
- 3-5 case studies with specific numbers
- 5+ statistics with sources
- Visual metaphor with copy angle
- 13-dimension score out of 130

### Overall:
- Mechanism rankings table
- Narrative layering strategy (which mechanism goes where in copy)
- Cross-mechanism analysis
- Research folder with all supporting evidence
- Individual evaluation files per mechanism

---

## The 13-Dimension V3 Scorecard

Every mechanism is scored on:

| # | Dimension | What It Measures |
|---|-----------|-----------------|
| 1 | Novelty | Fresh perspective they haven't heard |
| 2 | Specificity | Named, concrete, not generic |
| 3 | Scientific Credibility | Research/evidence backing |
| 4 | Visual Clarity | Can picture it with eyes closed |
| 5 | Emotional Resonance | Creates emotional response |
| 6 | Enemy Clarity | Clear, hateable villain |
| 7 | Inevitability | Urgency (accumulating/recurring) |
| 8 | Solution Elegance | Simple, direct, "of course" feeling |
| 9 | Unique Ownership | Only you can claim this |
| 10 | Paradigm Shift Power | Changes how they see the problem |
| 11 | False Solution Destruction | Explains why everything else fails |
| 12 | Market Sophistication Calibration | Right level for audience |
| 13 | Proof Integration | Evidence woven throughout |

**Scoring:** 0-49 Weak | 50-69 Below Average | 70-89 Average | 90-109 Strong | 110-119 Excellent | 120-130 Elite

---

## What's Installed

```
mechanism-ideator/
├── SKILL.md                              (the complete 8-phase process)
└── references/
    ├── mechanism-taxonomy.md              (UMP/UMS/UMD structure, classification)
    ├── e-level-guide.md                   (E1-E5 sophistication levels)
    ├── naming-patterns.md                 (6 naming formulas + phonetics)
    ├── visual-metaphors.md               (8 metaphor categories + scoring)
    ├── villain-frameworks.md             (10 archetypes + 7 attack patterns)
    ├── extraction-patterns.md            (content mining checklist)
    └── evaluator-rubrics.md              (13-dimension scoring rubrics)
```

---

## Troubleshooting

**Mechanisms sound too generic:**
This usually means Phase 0 (Market Context) wasn't specific enough. Be exhaustive about what the prospect has tried and what they believe.

**Low scores on Scientific Credibility / Proof Integration:**
Research Phase 3 agents need to run again with more specific queries targeting the weak mechanisms.

**"I can't find mechanisms in my content":**
Look for high-signal phrases: "The real reason...", "Most people don't realize...", "The hidden factor..." Use the `extraction-patterns.md` mining checklist.

---

## Example Output

When run on an AI training program, this package produced:

| Rank | Mechanism | Score | Best For |
|------|-----------|-------|----------|
| #1 | The Motor Swap | 102/130 | Cold traffic lead |
| #2 | The Complexity Inversion | 101/130 | Paradigm shift, competitive moat |
| #3 | Trained Incapacity | 100/130 | Personal diagnosis |
| #4 | The Advantage Window | 96/130 | Urgency/FOMO |
| #5 | The Phase 1 Ceiling | 94/130 | Why courses don't help |

Each mechanism included verified academic citations, 20+ case studies with specific numbers, statistical proof tables, and visual metaphors.

---

## Key Concepts Before Starting

### What's a Mechanism?

**NOT:** A concept name, framework label, or clever metaphor
**IS:** A specific, hidden root cause that explains WHY they failed - something they didn't know about

### The Five Tests

Every mechanism must pass ALL five:
1. Sales Letter Test - Sounds like a revelation?
2. Domain Test - Fits this market?
3. Blame Shift Test - Shifts blame off prospect?
4. Demand Test - Creates demand for your solution?
5. Discovery Test - Sounds discovered, not invented?

### UMP/UMS/UMD Structure

- **UMP** - The hidden root cause (what's blocking them)
- **UMS** - Why your solution uniquely fixes it
- **UMD** - The named, proprietary system

---

## Based On

Frameworks from:
- Stefan Georgi (RMBC)
- Todd Brown (E5)
- Evaldo Albuquerque (One Belief)
- David Deutsch (4C's+2H's)
- Eugene Schwartz (Market Sophistication)
- Clayton Makepeace
- Gary Halbert
- John Carlton

*Packaged for ZenithPro*

---

*"The mechanism is the single most important element separating million-dollar controls from failures."*
