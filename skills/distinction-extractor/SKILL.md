---
name: distinction-extractor
description: Complete end-to-end pipeline for extracting distinctions from content and transforming them into teaching units. Combines Finder, Expander, and quality evaluation. Use when you need to mine distinctions and build them into teachable assets.
---

# Distinction Extractor

> **Purpose:** Complete pipeline for extracting raw distinctions from content, evaluating them for quality, expanding them into full teaching units, and delivering final critiques. One orchestrator for the entire process.

---

## What You Get

This skill provides the complete distinction extraction and development pipeline in one integrated workflow:

1. **Distinction Finder** — Scans source material for distinction candidates
2. **Finder Evaluation** — Scores extraction quality (7.0+ threshold to proceed)
3. **Distinction Expander** — Builds complete 6-component teaching units
4. **Expander Evaluation** — Scores teaching unit quality (8.0+ to ship)
5. **Batch Mode** — Process multiple sources and manage deduplication

---

## Before You Start

Read these reference documents **in order**:

1. `references/definition.md` — What distinctions are (vs information, mechanisms, frameworks)
2. `references/types.md` — The six types and how to recognize them
3. `references/landing-sequence.md` — How distinctions land with students
4. `references/delivery-by-type.md` — Type-specific delivery strategies
5. `references/hard-constraints.md` — Non-negotiable rules for teaching units (C1-C10)

**Critical step:** Customize `references/your-patterns.md` with your voice patterns before expanding your first distinction. The Expander uses this to match units to YOUR teaching voice.

---

## The Complete Pipeline

```
YOUR SOURCE CONTENT (transcripts, frameworks, methodology docs)
         |
    [FINDER PHASE]
    ├─ Source Assessment
    ├─ Signal Pattern Scan
    ├─ Extract Candidates
    └─ Qualify Against 6 Filters
         |
    [FINDER EVALUATION]
    ├─ Score: Accuracy, Completeness, Classification,
    │  A/B Sharpness, Relevance, Deduplication
    └─ Threshold: 7.0+ PASS | Below 7.0 REVISE
         |
    [EXPANDER PHASE]
    ├─ Build 6 Components
    │  (Gap, Contrast, Flash, Name, Application, Reinforcement)
    ├─ Apply Hard Constraints (C1-C10)
    └─ Match to Your Voice
         |
    [EXPANDER EVALUATION]
    ├─ Score: Gap, Contrast, Flash, Name,
    │  Application, Reinforcement + Voice Check
    └─ Threshold: 8.0+ SHIP | Below 8.0 REVISE
         |
    PRODUCTION-READY TEACHING UNITS
```

---

## Workflow: Phase 1 - Finder

### Input

Provide one of:
1. A file path (process single file)
2. A folder path (process all files)
3. A topic/domain (search and process relevant content)

### Step 1: Source Assessment

Read the source material completely. Assess:

- **Content type:** Transcript? Framework doc? Methodology? Conversation? Recording notes?
- **Distinction density:** High (teaching/framework) | Medium (conversations) | Low (operational)
- **Primary domain:** AI Architecture, Business Strategy, Team/Management, Worldview, Operational

**If density is Low:** Flag it and ask whether to proceed or skip.

### Step 2: Surface Scan

Scan for these signal patterns:

| Pattern | Signal |
|---------|--------|
| Explicit contrast | "The difference between X and Y..." / "X is not Y" |
| Binary framing | "There are two kinds of..." / "Either X or Y" |
| Before/after | "Before I learned this... after..." |
| Collapse indicator | "People confuse X with Y" |
| Expert observation | "What experts see..." / "Professionals notice..." |
| Breakdown narrative | "The reason this fails..." / "What goes wrong..." |
| Reframing | "It's not about X, it's about Y" |
| Named pairs | Any "A vs B" structure |

Mark each occurrence with line number/location.

### Step 3: Extraction

For each candidate found, produce a structured extraction:

```markdown
### [Number]. [Working Name]

**Source:** [file path, line/page, speaker if applicable]
**Type:** [Collapsed | Perceptual | Inversion | Domain-Transfer | Stance | Structural]
**Confidence:** [High | Medium | Low]

**The A side (default/current):** [What people currently see/believe/do]
**The B side (with distinction):** [What becomes visible/possible]
**The cost of not having it:** [What's lost by staying on A side]
**The gain of having it:** [What opens up on B side]

**Qualification:**
- Perceptual (changes what you SEE): [Yes/No]
- Binary (A vs B expressible): [Yes/No]
- Automatic (works without recall): [Yes/No/Unclear]
- Domain-portable (works across situations): [Yes/No]
- Action-enabling (opens possibilities): [Yes/No]
- Pre-framework (atomic): [Yes/No]
- **Score: [X/6]**

**Notes:** [Context, related distinctions, delivery considerations]
```

### Step 4: Qualification Sort

Sort all candidates into three buckets:

1. **Confirmed (5-6/6)** — Ready for Expander
2. **Needs Refinement (3-4/6)** — Has potential but needs sharpening
3. **Rejected (0-2/6)** — Not a distinction; note what it actually is

### Step 5: Deduplication Check

Compare confirmed candidates against:
1. Other candidates from this extraction
2. Existing distinction inventory (if available)

Flag potential duplicates with notes on which formulation is stronger.

### Step 6: Finder Output

Write the extraction to:
```
[project]/Content/00 Distinctions/extractions/[source-name]-extraction.md
```

Format:
```markdown
# Distinction Extraction: [Source Name]

**Date:** [date]
**Source:** [full path]
**Processed by:** Distinction Extractor v1.0
**Content type:** [type]
**Domain:** [primary domain]

## Summary
- **Total candidates found:** [N]
- **Confirmed:** [N] (score 5-6/6)
- **Needs refinement:** [N] (score 3-4/6)
- **Rejected:** [N] (score 0-2/6)
- **Duplicates flagged:** [N]

---

## Confirmed Distinctions

[Full extraction for each]

---

## Needs Refinement

[Full extraction + notes on what's missing]

---

## Rejected (Not Distinctions)

[Brief note on each]
```

---

## Workflow: Phase 2 - Finder Evaluation

### Evaluation Framework

Score the extraction across six dimensions (1-10 scale):

| Dimension | Weight | Focus |
|-----------|--------|-------|
| **Accuracy** | 25% | Are candidates genuine distinctions? Zero false positives? |
| **Completeness** | 20% | Did you catch everything in the source? |
| **Classification** | 15% | Are types (Collapsed, Perceptual, etc.) correct? |
| **A/B Sharpness** | 15% | Is the A vs B framing clean and actionable? |
| **Relevance** | 15% | Are these useful for your program's students? |
| **Deduplication** | 10% | Are redundancies caught and noted? |

**Key accuracy checks:**
- Does each confirmed candidate pass all 6 qualification filters?
- Are mechanisms being elevated to distinctions?
- Would the "Hammer Test" pass? (Can you USE it, or do you need to BELIEVE it?)

**Key completeness checks:**
- Were all signal patterns scanned for?
- Are there passages with implicit distinctions that were missed?
- Did you go deep enough, or just surface scan?

### Finder Evaluation Output

```markdown
# Finder Evaluation

**Extraction evaluated:** [file name]
**Source material:** [what was processed]
**Date:** [date]

## Scores

| Dimension | Score | Weight | Weighted |
|-----------|-------|--------|----------|
| Accuracy | X/10 | 25% | X.XX |
| Completeness | X/10 | 20% | X.XX |
| Classification | X/10 | 15% | X.XX |
| A/B Sharpness | X/10 | 15% | X.XX |
| Relevance | X/10 | 15% | X.XX |
| Deduplication | X/10 | 10% | X.XX |
| **OVERALL** | | | **X.XX/10** |

## False Positives (Not distinctions)

[For each: which candidate, what it actually is, why it fails]

## False Negatives (Missed distinctions)

[For each: what was missed, where in source, suggested extraction]

## Sharpening Notes

[Specific improvements to A/B framing, confidence ratings, notes]

## Verdict

**PASS** (7.0+) — Extraction is production-quality, proceed to Expander
**REVISE** (5.0-6.9) — Specific items need fixing before Expander
**REDO** (below 5.0) — Fundamental issues; re-extract with adjusted approach
```

### Verdict Logic

- **7.0+** → Proceed to Expander phase
- **5.0-6.9** → Revise identified items and re-evaluate
- **Below 5.0** → Re-extract with different approach

---

## Workflow: Phase 3 - Expander

### Input

One of:
1. A confirmed extraction from the Finder
2. A raw distinction statement (e.g., "Strategy vs tactics — most people collapse these")
3. A distinction name + context

### Step 1: Understand the Raw Material

If manual input, first qualify it:
- Can it be expressed as A vs B?
- Is it perceptual (changes seeing, not just knowing)?
- What type is it? (Collapsed, Perceptual, Inversion, Domain-Transfer, Stance, Structural)

If it fails qualification, flag it and suggest what it might be instead.

### Step 2: Build the Teaching Unit

Produce ALL six components of the landing sequence:

#### Component 1: THE GAP (Setup)

Design the moment BEFORE the distinction is named. The student must FEEL the absence — not be told about it.

Choose one gap strategy:
- **The Unanswerable Question** — Ask something that requires the distinction to answer
- **The Recognized Failure** — Reference a common breakdown your audience has lived through
- **The Expert Mystery** — Point to something an expert does that they can't explain

**Gap timing rule:** Do NOT reveal the distinction in the Gap. The student should sit with felt absence for 60-90 seconds before any resolution.

```markdown
**Gap Strategy:** [Unanswerable Question | Recognized Failure | Expert Mystery]

**The Setup:**
[Actual script/framing — what you would say to create the gap]

**Expected Student State After Setup:**
[What the student is feeling/thinking — the felt absence]
```

#### Component 2: THE CONTRAST (Core Delivery)

The A vs B, delivered clean and binary. **Maximum 3 parallel pairs + summation.**

```markdown
**A Side (Default):** [What they currently see/believe — in their language]
**B Side (Distinction):** [What becomes visible — concrete, not abstract]
**The Sharpest Framing:**
[One sentence that captures the contrast. This is the "money line."]
```

**Rules:**
- Must be binary — kill qualifications
- Must use concrete language (not "paradigm shift" — what SPECIFICALLY shifts?)
- A side must be recognizable as student's current reality
- B side must be immediately desirable AND visualizable
- Maximum 3 pairs — select the sharpest, discard the rest
- Money line should be quotable

#### Component 3: THE FLASH (The "Now I See" Moment)

Design what produces the spontaneous recognition. This is ONE moment, not a chapter.

**Default architecture: Three-Act Story**
- Act 1: Setup — the situation, told with emotional specificity
- Act 2: The student's instinct plays out — and it's wrong
- Act 3: The reveal — why their instinct was the actual problem

**Alternative: Pivot Question** (when a personal artifact exists)
- Show the artifact
- Ask the question that forces self-testing
- The answer IS the flash

```markdown
**Flash Architecture:** [Three-Act Story | Pivot Question]

**The Delivery:**
[Full script/narrative — ONE story with emotional specificity]

**Backup Angle:**
[5-7 lines, different entry point for a different audience segment]

**Signs It Landed:**
[What to watch for — specific behavioral indicators]
```

#### Component 4: THE NAME (Anchor)

**Maximum 15 lines.** Label it and move on.

```markdown
**Primary Name:** [2-4 words, captures the A vs B]
**Sub-Name:** [Optional — a "handle" version for casual use]
**Diagnostic Question:** [One question that invokes the distinction]
**Usage Pattern:** "That's a [Name] situation" or "Are you doing [A] or [B]?"
```

**Naming rules:**
- Short (2-4 words)
- Contrasting (embeds the A vs B)
- Concrete (no abstract jargon)
- Self-explanatory (hearing it partially reconstructs the distinction)

#### Component 5: THE APPLICATION (Making It Stick)

**FIRST:** The 24-hour action. Before anything else.

```markdown
**Immediate Action (Do This Now):**
[Concrete, 5-10 minutes, produces a tangible artifact, applies to student's actual situation]
```

**THEN:** Two additional application moves:

```markdown
**Application 1 — Self-Diagnosis:**
[Prompt that forces identification of WHERE they've been on the wrong side — produces a written list]

**Application 2 — Teach It:**
[Script for explaining this to a partner/team member + quality check for their response]
```

#### Component 6: THE REINFORCEMENT (Preventing Fade)

No speeches. Only designed mechanics.

```markdown
**Daily Trigger:**
[Something the student encounters every day that forces the distinction to surface.
Tied to an existing behavior — opening task list, checking email, starting a meeting.]

**Peer Mechanism:**
[Specific prompt for THIS distinction's conversational entry point — not generic "share with 3 people"]

**Program Callback:**
[Specific session/module where this distinction resurfaces and gets tested under pressure]

**Language Signals:**
[3-5 before/after phrase pairs showing integrated vs. collapsed language]

**Integration Check (30 days):**
[3-4 behavioral questions that cannot be faked with intellectual understanding]
```

### Step 3: Delivery Mode Selection

Based on the distinction type and your program context:

| Mode | Best For | Context |
|------|----------|---------|
| Live Demo | Structural, Domain-Transfer | Sessions where you build live |
| Story + Reveal | Inversion, Stance | Opening sessions, paradigm shifts |
| Facilitated Discovery | Collapsed, Perceptual | Team exercise sessions |
| Direct Confrontation | Stance | VIP/coaching sessions |

```markdown
**Recommended Delivery Mode:** [mode]
**Recommended Program Session:** [Session X — because...]
**Estimated Delivery Time:** [minutes]
**Prerequisites:** [Other distinctions that must land first, if any]
```

### Step 4: Expander Self-Audit

Before submission, verify:

- [ ] Flash section has ONE primary example (not 2, 3, or 5)
- [ ] Flash section is ≤ Gap section length
- [ ] Contrast has 3 or fewer parallel pairs
- [ ] Application opens with a "do this now" 24-hour action
- [ ] Every exercise produces a written artifact (no pure "ask yourself" prompts)
- [ ] Reinforcement has a daily trigger, peer mechanism, and program callback
- [ ] Reinforcement contains NO rhetorical paragraphs
- [ ] Name section is 15 lines or fewer
- [ ] Total unit is 250-350 lines
- [ ] No borrowed terminology (antifragile, paradigm shift, graceful degradation, etc.)
- [ ] Voice check: reads like YOU teaching in a room, not a textbook
- [ ] Gap does NOT preview the answer

If any box is unchecked, revise before submitting to evaluation.

### Expander Output

Write the complete teaching unit to:
```
[project]/Content/00 Distinctions/expanded/[distinction-name].md
```

---

## Workflow: Phase 4 - Expander Evaluation

### Evaluation Framework

Score the teaching unit across seven dimensions:

| Dimension | Weight | Focus |
|-----------|--------|-------|
| **Gap Quality** | 20% | Does student feel the absence before resolution? |
| **Contrast Sharpness** | 20% | Is the A vs B clean, binary, and actionable? |
| **Flash Design** | 20% | Does it produce the "now I see" moment? |
| **Name Quality** | 10% | Is it memorable, concrete, self-explanatory? |
| **Application Design** | 15% | Does the 24-hour action drive immediate use? |
| **Reinforcement Design** | 15% | Are daily triggers + peer + callback engineered? |
| **Voice Check** | +1/0/-1 | Does it read like YOUR teaching voice? |

### Hard Constraints (C1-C10)

**Any violation = automatic REVISE regardless of score.**

- **C1: Flash Length Cap** — Flash ≤ Gap length, ONE primary example max
- **C2: Flash Structure** — Three-act story or pivot question, not multiple examples
- **C3: No Five-Example Cascades** — 5 parallel case studies BANNED in Flash
- **C4: Contrast Maximum** — 3 parallel pairs max + one summation
- **C5: Application Leads with 24-Hour Action** — Concrete action, 5-10 min, produces artifact
- **C6: Exercises Produce Artifacts** — No "ask yourself" without written output
- **C7: Reinforcement is Designed Mechanics** — Daily trigger + peer mechanism + program callback
- **C8: Name Section Maximum** — 15 lines, label + diagnostic question + usage pattern only
- **C9: Total Unit Length** — 250-350 lines hard cap
- **C10: Voice Guard** — No borrowed terminology; speaks YOUR language

### Expander Evaluation Output

```markdown
# Expander Evaluation

**Teaching unit evaluated:** [distinction name]
**Date:** [date]

## Scores

| Dimension | Score | Weight | Weighted |
|-----------|-------|--------|----------|
| Gap Quality | X/10 | 20% | X.XX |
| Contrast Sharpness | X/10 | 20% | X.XX |
| Flash Design | X/10 | 20% | X.XX |
| Name Quality | X/10 | 10% | X.XX |
| Application Design | X/10 | 15% | X.XX |
| Reinforcement Design | X/10 | 15% | X.XX |
| **Subtotal** | | | **X.XX/10** |
| Voice Check | +1/0/-1 | | **+X** |
| **ADJUSTED SCORE** | | | **X.XX/10** |

## Constraint Violations (C1-C10)

[For each violation: which constraint, what's wrong, how to fix]

## Detailed Feedback

### Gap Quality
[Specific notes on setup, felt absence, student state after gap]

### Contrast Sharpness
[Specific notes on A vs B clarity, binary structure, money line]

### Flash Design
[Specific notes on story structure, emotional specificity, backup angle]

### Name Quality
[Specific notes on label, diagnostic question, usage pattern]

### Application Design
[Specific notes on 24-hour action, artifacts, self-diagnosis, teaching exercise]

### Reinforcement Design
[Specific notes on daily trigger, peer mechanism, program callback, language signals]

### Voice Check
[How well this reads as YOUR voice, specific examples]

## Verdict

**SHIP** (8.0+ adjusted) — Teaching unit is production-ready
**REVISE** (below 8.0) — Specific sections need improvement, details below
```

### Verdict Logic

- **8.0+ adjusted score** → SHIP (production-ready)
- **Below 8.0** → REVISE with specific instructions
- **Any C1-C10 violation** → Auto-REVISE regardless of score

---

## Batch Mode

When processing multiple sources or expanding multiple distinctions:

1. **Extraction batch:**
   - Process all sources
   - Generate individual extraction files
   - Produce batch summary with all confirmed distinctions
   - Create cross-source deduplication analysis

2. **Expansion batch:**
   - Process in dependency order (prerequisites first)
   - Track cross-references (distinctions that reinforce each other)
   - Map to program days for balanced distribution
   - Each unit gets unique reinforcement (no recycled prompts)
   - Produce curriculum map showing distinction flow

---

## Quality Standards

### The "So What" Test
After extracting each candidate, ask: "If a student gets this distinction, what can they NOW SEE that they couldn't before — and what can they NOW DO as a result?" If the answer is vague, it's not ready.

### The Hammer Test (Djukich)
"When you first used a hammer, did you have to believe in it?" If the candidate requires belief rather than use, it's not a distinction — it's a concept.

### The Landing Test
Read the complete teaching unit and ask: "If I delivered this to a room of 50 entrepreneurs, how many would GET IT (not understand it — GET IT)?" Target: 35+. If lower, the Flash isn't producing perceptual shift.

### The Fade Test
Ask: "Will this distinction be active in 30 days without re-teaching?" If no, the Reinforcement lacks daily triggers.

### The Voice Check
The gap, contrast, and flash should sound like YOU — direct, concrete, story-driven, no academic language. Voice is strongest in stories told chronologically. Voice drops in parallel case studies, rhetorical speeches, and concept explanations. More stories, fewer explanations.

---

## Example Output Files

Three real outputs are included in the source system:

| File | Shows |
|------|-------|
| `example-extraction.md` | Finder output: confirmed, needs-refinement, and rejected candidates with qualification scores |
| `example-teaching-unit.md` | Expander output: complete 6-component teaching unit (Architectural Literacy vs. Coding Literacy) |
| `example-critique.md` | Critic output: batch scoring table, detailed evaluations, constraint violations, SHIP/REVISE verdicts |

---

## Troubleshooting

**"The Finder isn't finding anything"**
- Is your source material substantive? The Finder looks for signal patterns. If the source is purely informational with no implicit A-vs-B structures, there may not be distinctions to find.
- Try a different source type: transcripts of teaching sessions tend to be richest.

**"The Expander output sounds generic"**
- Did you fill in `your-patterns.md`? Without voice patterns, the Expander defaults to neutral teaching voice.
- The voice check in evaluation will flag this — look for the Voice modifier score.

**"The Critic keeps saying REVISE"**
- Check which dimension is scoring lowest. The critic gives specific REVISE instructions.
- Most common issue: Flash section. Build it as a single three-act story, not multiple examples.
- Check for C1-C10 constraint violations — these cause automatic REVISE regardless of score.

---

## Files & References

```
distinction-extractor/
├── SKILL.md                              (this file)
└── references/
    ├── definition.md                     (What IS a distinction?)
    ├── types.md                          (Six types: Collapsed, Perceptual, etc.)
    ├── landing-sequence.md               (How distinctions land)
    ├── delivery-by-type.md               (Type-specific delivery)
    ├── hard-constraints.md               (C1-C10 rules for teaching units)
    ├── your-patterns.md                  (CUSTOMIZE THIS with your voice)
    ├── finder-evaluation-criteria.md     (Scoring framework for Finder output)
    ├── expander-evaluation-criteria.md   (Scoring framework for Expander output)
    └── signals-guide.md                  (Signal patterns to scan for)
```

---

## Getting Started

1. **Read** `references/definition.md` through `references/delivery-by-type.md` (in order)
2. **Customize** `references/your-patterns.md` with your teaching voice
3. **Provide** source content (transcript, framework doc, methodology)
4. **Run** Finder phase (extract candidates)
5. **Evaluate** Finder output (7.0+ to proceed)
6. **Run** Expander phase (build teaching units)
7. **Evaluate** Expander output (8.0+ to ship)

---

*Version: 1.0 - Consolidated*
*Created: February 12, 2026*
*Based on: Distinction System v1 (Finder, Expander, Critics)*
