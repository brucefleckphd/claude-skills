# Extraction Methodology Reference

## Signal Patterns to Scan For

| Pattern | Signal |
|---------|--------|
| Explicit contrast | "The difference between X and Y..." / "X is not Y" |
| Binary framing | "There are two kinds of..." / "Either X or Y" |
| Before/after | "Before I learned this... after..." |
| Collapse indicator | "People confuse X with Y" |
| Expert observation | "What experts see..." / "Professionals notice..." |
| Breakdown narrative | "The reason this fails..." |
| Reframing | "It's not about X, it's about Y" |
| Named pairs | Any "A vs B" structure |

## Qualification Filters (ALL must pass for "Confirmed")

1. **Perceptual** — Changes what you SEE, not just what you KNOW
2. **Binary** — Expressible as A vs B at the core
3. **Automatic** — Works without conscious recall once acquired
4. **Domain-portable** — Shows up in new situations without re-teaching
5. **Action-enabling** — Opens new possibilities (doesn't prescribe specific actions)
6. **Pre-framework** — Atomic (not built from other distinctions)

**Scoring:** 5-6/6 = Confirmed | 3-4/6 = Needs Refinement | 0-2/6 = Rejected

## What Distinctions Are NOT

- **Information:** "AI can process 1000x more data" — fact, not perceptual shift
- **Advice:** "You should use Python for data work" — prescription, not distinction
- **Mechanism:** "Trained Incapacity" — explains HOW something works; becomes a distinction only when the person can spot it in real time
- **Framework:** "The 4 Ps of Marketing" — built FROM distinctions; sits higher in hierarchy
- **Technique:** "Use the STAR method" — procedural, not perceptual

## The "So What" Test

After extracting each candidate: "If a student of your program gets this, what can they NOW SEE that they couldn't — and what can they NOW DO?" Vague answer = not ready.

## Critic-Validated Extraction Rules (v1.1 — from 3 critic evaluations)

### Rule 1: Separate Distinctions from Frameworks in B-Sides
When a distinction comes packaged with a taxonomy (e.g., "five layers"), the B-side must describe the ATOMIC BINARY SHIFT, not the framework. The taxonomy belongs in a separate note.
- BAD B-side: "You see five discrete layers (interface, logic, data, integration, infrastructure)..."
- GOOD B-side: "You see that software is made of distinct layers with different jobs and failure modes. You can point at which layer is broken." (Then: "Common framework: 5 layers — interface, logic, data, integration, infrastructure")

### Rule 2: Mine the Program Creator's Corrections as Primary Signals
When the program creator says "You're getting it, but not fully" or explicitly affirms a passage, treat what follows as the sharpest articulation of the distinction. Correction points are higher-signal than any other content.

### Rule 3: Scan Every Section Independently
Bullet-point lists, Key Principles, and summary sections contain standalone distinctions. Scan each item individually — don't treat lists as single blocks. (Missed: "Ambiguity as Delegation" was hiding in a Key Principles list.)

### Rule 4: Check for MULTIPLE Distinctions Per Section
A single section may contain 2+ distinct perceptual shifts. Extract and evaluate each. (Missed: Dispatcher Pattern contained both "persona as constraint" AND "coordination vs. execution.")

### Rule 5: When Source Author Names Categories, Each Gets Its Own Extraction
If the source explicitly names 4 shifts, verify each maps to a separate confirmed distinction. Don't merge author-separated categories unless you can prove they're the same perceptual unit.

### Rule 6: Score Duplicates Honestly
If a Needs Refinement candidate is "essentially the same distinction in different words," score it 1-2/6, not 3-4/6. The NR bucket is for candidates that could become independent with work, not known duplicates.

### Rule 7: Capture Delivery Hooks at Extraction Time
Add a "Delivery Hook" note to each Confirmed distinction: a concrete story, demo, or moment that would make it land. Save the Expander from rediscovering what's already in the source.

### Rule 8: Note General vs. Specific Forms
When a source contains both a general principle and a specific instantiation, note both and explain the relationship. This helps cross-source deduplication later.

### Rule 9: Audience-Calibrate Scoring
If a candidate requires domain knowledge your audience doesn't have, weight that more heavily in confidence rating. A distinction that can't fire in the student's context is not a distinction for that program.

## Extraction Template

```
### [Number]. [Working Name]
**Source:** [file, line, speaker]
**Type:** [Collapsed | Perceptual | Inversion | Domain-Transfer | Stance | Structural]
**Confidence:** [High | Medium | Low]
**A side (default):** [what people currently see/believe]
**B side (with distinction):** [what becomes visible — ATOMIC BINARY ONLY, no framework content]
**Cost of not having it:** [what's lost]
**Gain of having it:** [what opens up]
**Delivery Hook:** [concrete story/demo/moment from the source that would make this land]
**Score: [X/6]**
```
