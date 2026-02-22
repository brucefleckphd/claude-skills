---
name: distinction-expander
description: Takes a raw distinction (from the Distinction Finder or manual input) and builds a complete teaching unit — gap setup, contrast delivery, naming, application design, and reinforcement plan. Use when you need to turn a raw distinction into something that will actually LAND with students.
---

# Distinction Expander

> **Purpose:** Transform a raw distinction into a fully designed teaching unit that produces a genuine perceptual shift — not just intellectual understanding.

## Reference Documents

Before first use, read:
- `references/landing-sequence.md` — The six-step sequence for making distinctions stick
- `references/delivery-by-type.md` — How delivery changes based on distinction type
- `references/your-patterns.md` — Your delivery patterns (customize this file for your voice)
- `references/richs-patterns-EXAMPLE.md` — Rich Schefren's delivery patterns (included as a reference example)

## Hard Constraints (v2.0 — Critic-Validated)

These constraints are non-negotiable. They come from 17 critic evaluations identifying recurring failures.

### C1: Flash Length Cap
Flash sections contain ONE primary example and at most ONE backup angle. Total Flash length must NOT exceed the Gap section length. If your Flash has more than two examples, you have violated this constraint. Delete until you have one story and one backup.

### C2: Flash Structure — Three-Act Story
The default Flash architecture is a three-act story where the student commits to the wrong answer:
- **Act 1:** Setup — the situation
- **Act 2:** The student's instinct (which is wrong) — they see themselves in this
- **Act 3:** Reveal — why their instinct created a WORSE problem

If a personal artifact exists (like a CLAUDE.md file, a system, a document), build the Flash around SHOWING the artifact and asking a pivot question that forces the student to test the distinction against their own experience. The answer to that question IS the flash.

### C3: No Five-Example Cascades
The "5 parallel case studies" pattern is BANNED in Flash sections. It produces agreement, not revelation. One story told with full emotional depth lands harder than five told as summaries. If you need multiple examples, put them in Application (as exercises) or Reinforcement (as recurring encounters), NOT in Flash.

### C4: Contrast Maximum — 3 Pairs
Contrast sections contain a maximum of three parallel A/B pairs plus one summation ("money line"). The pattern is obvious after two pairs; the third confirms. Select the three sharpest pairs and discard the rest. Extra pairs belong in Application as "where you'll see this" exercises.

### C5: Application Leads with 24-Hour Action
The first element in every Application section is a concrete action the student does RIGHT NOW, before continuing. Requirements:
- Takes 5-10 minutes
- Produces a tangible artifact (a list, a map, a template — NOT a thought)
- Applies the distinction to the student's ACTUAL situation
- Is phrased as "Do this now, before you read further"

### C6: Exercises Produce Artifacts, Not Thoughts
Every application exercise must result in something the student can see, share, or revisit. "Ask yourself..." prompts without written output are prohibited. Transform them: "Write down..." / "List..." / "Draw..." / "Fill in..."

### C7: Reinforcement is Designed Mechanics, Not Speeches
Every Reinforcement section must include:
1. **One daily environmental trigger** — fires on something the student encounters unavoidably every day (to-do list, inbox, calendar, project tool)
2. **One peer mechanism** — specific prompt for sharing with team, not generic "tell 3 people"
3. **One program callback** — reference to a specific session/module where this distinction resurfaces

Rhetorical paragraphs explaining why the distinction matters are BANNED in Reinforcement. The Flash already made the case. Reinforcement engineers repeated contact, not repeated argument.

### C8: Name Section — 15 Lines Maximum
The Name section contains: the label, the sub-name (if any), one sentence of framing, the diagnostic question, and the usage pattern. Nothing else. No re-teaching. No re-explaining. If your Name section exceeds 15 lines, you are re-teaching the distinction.

### C9: Total Unit Length — 250-350 Lines
Hard cap. This forces tighter editing and eliminates redundancy. If your unit exceeds 350 lines, cut the longest section first. The sections that typically run long (in order of typical bloat): Flash, Application, Reinforcement, Contrast.

### C10: Voice Guard — No Borrowed Terminology
Replace academic, technical, or other-people's terminology with YOUR native language. Specific commonly banned terms:
- "Antifragile" → "built to take hits" / "designed to absorb failure"
- "Graceful degradation" → "breaks without falling over"
- "Paradigm shift" → describe what specifically shifts
- Any term that requires the student to have read someone else's book

If YOU wouldn't say it while teaching in a room, it doesn't belong in the unit. Customize your voice patterns in `references/your-patterns.md`.

---

## Workflow

### Input

One of:
1. **A confirmed extraction** from the Distinction Finder (structured format)
2. **A raw distinction statement** (e.g., "Strategy vs tactics — most people collapse these")
3. **A distinction name + context** (e.g., "Owner vs Victim from Djukich, applied to AI adoption")

### Step 1: Understand the Raw Material

If coming from the Finder, read the full extraction. If manual input, first qualify it:
- Can it be expressed as A vs B?
- Is it perceptual (changes seeing, not just knowing)?
- What type is it? (Collapsed, Perceptual, Inversion, Domain-Transfer, Stance, Structural)

If it fails qualification, flag it and suggest what it might be instead (mechanism, framework, information).

### Step 2: Build the Teaching Unit

Produce ALL six components of the landing sequence:

#### Component 1: THE GAP (Setup)

Design the moment BEFORE the distinction is named. The student must FEEL the absence — not be told about it.

Choose one gap strategy:
- **The Unanswerable Question** — Ask something that requires the distinction to answer. Their inability creates the gap.
- **The Recognized Failure** — Reference a common breakdown the audience has lived through. "Have you ever...?"
- **The Expert Mystery** — Point to something an expert does effortlessly that they can't explain. "What does that person see that you don't?"

**Gap timing rule:** Do NOT reveal the distinction in the Gap. The student should sit with the felt absence for 60-90 seconds before any resolution. If the Gap previews the answer, the Contrast loses its edge.

Write the actual setup — the words, the framing, the moment. Not a description of what to do, but the SCRIPT of the gap.

```markdown
**Gap Strategy:** [Unanswerable Question | Recognized Failure | Expert Mystery]

**The Setup:**
[Actual script/framing — what you would say to create the gap]

**Expected Student State After Setup:**
[What the student is feeling/thinking — the felt absence]
```

#### Component 2: THE CONTRAST (Core Delivery)

The A vs B, delivered clean and binary. Maximum 3 parallel pairs + summation.

```markdown
**A Side (Default):** [What they currently see/believe — in their language]
**B Side (Distinction):** [What becomes visible — concrete, not abstract]
**The Sharpest Framing:**
[One sentence that captures the contrast with maximum clarity. This is the "money line."]
```

**Rules for the contrast:**
- Must be binary. Kill qualifications.
- Must use concrete language (not "paradigm shift" — what SPECIFICALLY shifts?)
- The A side must be recognizable as the student's current reality
- The B side must be immediately desirable AND visualizable
- Maximum 3 parallel pairs. Select the sharpest. Discard the rest.
- The money line should be quotable — something the student can carry out of the room

#### Component 3: THE FLASH (The "Now I See" Moment)

Design what produces the spontaneous recognition. This is ONE moment, not a chapter.

**Default architecture: Three-Act Story** (see Constraint C2)
- Act 1: Setup — the situation, told with emotional specificity
- Act 2: The student's instinct plays out — and it's wrong
- Act 3: The reveal — why their instinct was the actual problem

**Alternative: Pivot Question** (when a personal artifact exists)
- Show the artifact
- Ask the question that forces self-testing
- The answer IS the flash

**Backup angle:** ONE additional entry point (5-7 lines, not a full story) for students the primary angle misses. Choose from: fear, freedom, status, financial, identity.

Write the actual flash delivery:

```markdown
**Flash Architecture:** [Three-Act Story | Pivot Question]

**The Delivery:**
[Full script/narrative — ONE story with emotional specificity, including how you FELT]

**Backup Angle:**
[5-7 lines, different entry point for a different audience segment]

**Signs It Landed:**
[What to watch for — specific behavioral indicators]
```

**Flash self-check:** If your flash section ends with "See it now?" or "Welcome to the other side" — delete that line. If you have to announce the epiphany, it didn't happen. A well-designed flash is felt, not declared.

#### Component 4: THE NAME (Anchor)

Maximum 15 lines. Label it and move on.

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
- Bar test: Would someone use this phrase 3 beers into a conversation?

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
[Something the student encounters every day that forces the distinction to surface. Tied to an existing behavior — opening task list, checking email, starting a meeting.]

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

### Step 4: Output

Write the complete teaching unit to:

```
Content/00 Distinctions/expanded/[distinction-name].md
```

### Step 5: Self-Audit Before Submission

Before finalizing, run this checklist:

- [ ] Flash section has ONE primary example (not 2, not 3, not 5)
- [ ] Flash section is shorter than or equal to Gap section
- [ ] Contrast has 3 or fewer parallel pairs
- [ ] Application opens with a "do this now" 24-hour action
- [ ] Every exercise produces a written artifact (no pure "ask yourself" prompts)
- [ ] Reinforcement has a daily trigger, peer mechanism, and program callback
- [ ] Reinforcement contains NO rhetorical paragraphs about why this matters
- [ ] Name section is 15 lines or fewer
- [ ] Total unit is 250-350 lines
- [ ] No borrowed terminology (antifragile, paradigm shift, graceful degradation, etc.)
- [ ] Voice check: reads like YOU teaching in a room, not a textbook or a consulting deck
- [ ] Gap does NOT preview the answer

If any box is unchecked, revise before submitting to the critic.

## Quality Standards

### The Landing Test
Read the complete teaching unit and ask: "If I delivered this exactly as written to a room of 50 entrepreneurs, how many would GET IT (not understand it — GET IT)?" Target: 35+ out of 50. If lower, the Flash isn't producing a perceptual shift.

### The Djukich Hammer Test
After reading the unit, ask: "Does the student need to BELIEVE this, or can they just PICK IT UP AND USE IT?" If belief is required, the unit isn't tool-shaped yet.

### The Fade Test
Ask: "Will this distinction be active in 30 days without re-teaching?" If no, the Reinforcement lacks daily triggers.

### Voice Check
The gap, contrast, and flash should sound like YOU — direct, concrete, story-driven, no academic language. Voice is strongest in stories told chronologically. Voice drops in parallel case studies, rhetorical speeches, and concept explanations. More stories, fewer explanations. See `references/your-patterns.md` for your voice reference.

## Critic Integration

After each expansion, submit to `distinction-expander-critic` for evaluation. The critic scores across six dimensions:
- Gap Quality (20%)
- Contrast Sharpness (20%)
- Flash Design (20%)
- Name Quality (10%)
- Application Design (15%)
- Reinforcement Design (15%)

Plus Voice Check (+1/0/-1 adjustment).

**Threshold: 8.0+ adjusted = SHIP. Below 8.0 = REVISE.**

## Batch Mode

When expanding multiple distinctions:
1. Process in dependency order (prerequisites first)
2. Track cross-references (distinctions that reinforce each other)
3. Map to program days to ensure balanced distribution
4. Each unit gets unique reinforcement — no recycled prompts across units
5. Produce a curriculum map showing distinction flow across your program

---

*Version: 2.0*
*Updated: February 7, 2026 — Applied 10 improvement signals from 17 critic evaluations*
*Previous: v1.0 (February 7, 2026)*
