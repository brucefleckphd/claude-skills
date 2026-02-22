---
name: distinction-finder
description: Extracts raw distinctions from content (transcripts, frameworks, methodology docs, recordings). Processes source material and produces classified distinction candidates with confidence ratings. Use when you need to mine content for teachable distinctions.
---

# Distinction Finder

> **Purpose:** Prospect raw content for distinction candidates. Classify, qualify, and output structured extractions ready for the Distinction Expander.

## Reference Documents

Before first use, read the methodology references:
- `references/methodology.md` — Full extraction methodology, qualification filters, output format
- `references/types.md` — Six-type taxonomy for classification
- `references/definition.md` — What qualifies as a distinction (vs information, mechanism, framework)

These files contain the complete extraction science. The instructions below are the operational workflow.

## Workflow

### Input

The user provides one of:
1. **A file path** — process that single file
2. **A folder path** — process all files in the folder
3. **A topic/domain** — search your program content for relevant material, then process

### Step 1: Source Assessment

Read the source material completely. Assess:
- **Content type:** Transcript, framework doc, methodology, conversation, recording notes
- **Distinction density estimate:** High (teaching/framework content), Medium (conversations/meetings), Low (operational/logistical)
- **Primary domain:** AI Architecture, Business Strategy, Team/Management, Worldview/Paradigm, Operational

If density estimate is Low, flag this and ask whether to proceed or skip.

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

Mark each occurrence with its line number/location in the source.

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
2. **Needs Refinement (3-4/6)** — Has potential but needs sharpening; note what's missing
3. **Rejected (0-2/6)** — Not a distinction; classify what it actually is (information, mechanism, framework, advice, technique)

### Step 5: Deduplication Check

Compare confirmed candidates against:
1. Other candidates from this same extraction
2. The master distinction inventory (if one exists at `Content/00 Distinctions/inventory/`)

Flag potential duplicates with notes on which formulation is stronger.

### Step 6: Output

Write the extraction file to the project output location:

```
Content/00 Distinctions/extractions/[source-name]-extraction.md
```

Format:

```markdown
# Distinction Extraction: [Source Name]

**Date:** [date]
**Source:** [full path]
**Processed by:** Distinction Finder v1.0
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

[Brief note on each: what it is and why it's not a distinction]
```

## Quality Standards

### The "So What" Test
After extracting each candidate, ask: "If a student of your program gets this distinction, what can they NOW SEE that they couldn't before — and what can they NOW DO as a result?" If the answer is vague, it's not ready.

### The Hammer Test (Djukich)
"When you first used a hammer, did you have to believe in it?" If the candidate requires belief rather than use, it's not a distinction — it's a concept.

### Extraction vs Invention
The Finder EXTRACTS — it does not invent. Every distinction must trace to specific content in the source material. Do not generate distinctions that aren't in the text. If the source material implies a distinction but doesn't state it, mark it as "Implied — Low confidence" and note what's missing.

## Batch Mode

When processing a folder or running against multiple sources, produce:
1. Individual extraction files for each source
2. A batch summary file listing all confirmed distinctions across sources
3. A cross-source deduplication analysis

## Critic Integration

After each extraction, the output should be evaluated by the `distinction-finder-critic` agent (Task tool, subagent_type not applicable — use general-purpose agent with critic prompt from `~/.claude/agents/distinction-finder-critic/AGENT.md`). The critic evaluates extraction quality and provides improvement signals.

When running in multi-agent mode:
1. Finder processes source → produces extraction
2. Critic evaluates extraction → produces evaluation
3. If critic score < 7/10, Finder re-processes with critic feedback
4. Final output includes both extraction and critic evaluation

---

*Version: 1.0*
*Created: February 7, 2026*
