---
name: veblen-field-intelligence
description: "Master synthesis layer for the entire Veblen Deep Marketing System. Reads all 6 Veblen skill outputs simultaneously, detects cross-layer convergence zones invisible to individual skills, resolves conflicts between signals, and produces a single Status Field Briefing with: the Convergence Map, the Single Move, unified signal timeline, 90-day projection, and ranked risk/opportunity matrix. Run on-demand before major positioning decisions, pricing changes, or launches. Requires underlying Veblen reports to exist — flags stale ones before synthesizing."
version: 1.0.0
author: Strategic Profits / Deep Marketing Thinkers Series
source_thinker: "Thorstein Veblen (Theory of the Leisure Class) — Meta-Synthesis Layer"
programs: [ZenithPro, Force Multiplier, Connect the Dots]
interface:
  invoke: "/veblen-field-intelligence [focus: launch-name|positioning|pricing|general]"
  called_by: [user]
  outputs_to: [client-output-folder]
depends_on: [veblen-status-intelligence, veblen-signal-decoder, veblen-emulation-tracker, veblen-waste-audit, veblen-price-ladder, veblen-display-map]
girard_integration:
  feeds_from: [girard-field-intelligence]
  feeds_to: [girard-field-intelligence]
  shared_data: "Girard Field Intelligence synthesizes desire dynamics (who models whom, what desires are propagating, where rivalries are hottest). Veblen Field Intelligence synthesizes status dynamics (what signals are displayed, which are decaying, how pricing creates social meaning, where the display chain is broken). Together they answer the complete question: what does this market WANT (Girard) and how does it SIGNAL what it has (Veblen)? Run both for full-spectrum market intelligence."
---

# Veblen Field Intelligence

---

## LAYER 1: INVARIANTS (Never override.)

1. **Freshness gate before synthesis.** Before producing the briefing, check the timestamps of all underlying Veblen reports. Any report older than 60 days is stale and should be flagged. Unlike the Girard system (30-day freshness), status signals move slower than desire signals — 60 days is the right window. If more than 2 reports are stale, refuse to synthesize and list which reports need refreshing.

2. **Convergence requires multiple independent signals.** A convergence zone must be confirmed by at least THREE independent Veblen skill outputs pointing at the same territory. Two signals = notable. Three or more = convergence zone. Name the zone only when the threshold is met. The power of field intelligence is seeing what no individual skill can see alone.

3. **The Single Move is singular.** The highest-leverage status move must be ONE thing — one signal change, one pricing adjustment, one display chain fix, one counter-signaling decision. Not a list. Not a strategy. One move, with explicit reasoning for why it outranks everything else in the current status field.

4. **Conflicts must be resolved, not listed.** When two skill outputs point in opposite directions (e.g., Signal Decoder says "add prestige" but Waste Audit says "strip back"), do not present both and let the user decide. Analyze both signals, name the stronger one, explain why, and make a recommendation. Presenting unresolved conflicts is a failure mode.

5. **Every finding must cite its source skill.** All claims in the briefing must be tagged with the skill that produced them: [Status Intelligence], [Signal Decoder], [Emulation Tracker], [Waste Audit], [Price Ladder], [Display Map]. This allows tracing any finding back to its evidence source.

6. **The self-examination findings get their own section.** Aggregate all self-examination findings from across the 6 reports into a single "Mirror" section. This is where the client confronts their own status blind spots, signal incoherence, and accidental signals — all in one place, not scattered across 6 reports.

---

## LAYER 2: QUALITY GUIDANCE

7. **The convergence zones are the prize.** Spend more time on cross-layer convergence than on any individual skill's findings. The individual findings are already in the skill reports. The convergence — what only becomes visible when looking at all layers simultaneously — is what this skill produces that nothing else can.

8. **Status moves have timing windows.** A signal that's currently exclusive has different strategic value than one that's 6 months from saturation. Always combine signal lifecycle data (from Emulation Tracker) with opportunity assessment (from Status Intelligence and Price Ladder) when evaluating timing.

9. **The Veblen-Girard integration section is mandatory when Girard data exists.** If any Girard Field Intelligence briefing exists, cross-reference it. The intersection of desire dynamics and status dynamics is where the most powerful strategic insights live. If no Girard data exists, note the gap and recommend running the Girard system.

10. **Counter-signaling coherence check.** Review all counter-signaling findings across all 6 skills and assess whether they tell a coherent story. If Signal Decoder says "counter-signaling is working" but Display Map says "community is invisible," there's a conflict. Counter-signaling only works FROM a position of visible strength — if the baseline visibility is too low, what looks like counter-signaling is actually obscurity.

---

## PURPOSE

Each individual Veblen skill is a specialized analyst looking at one dimension of the market's status field:
- **Status Intelligence** — who holds what tier and what signals put them there
- **Signal Decoder** — what story a single brand's signals actually tell
- **Emulation Tracker** — what's being copied, by whom, and how fast signals decay
- **Waste Audit** — whether non-functional excess creates credible prestige or looks performative
- **Price Ladder** — how pricing creates social meaning and identity at each tier
- **Display Map** — how status flows through the vicarious display chain

This skill is the director who sits in the briefing room with all six analysts and asks: what does this mean when we look at it all together? Where are multiple independent signals converging on the same thing? What does that tell us about the one status move we should make this month?

The Status Field Briefing is produced on-demand before major decisions, and can be run periodically to track how the status field evolves.

---

## EXECUTION PROCESS

### Step 1: Freshness Check

Locate all Veblen skill output reports in the project vault:
- `Veblen - Status Intelligence/` → latest Status Intelligence Report
- `Veblen - Signal Decoder/` → latest Signal Decoder Report
- `Veblen - Emulation Tracker/` → latest Emulation Tracker Report
- `Veblen - Waste Audit/` → latest Waste Audit Report
- `Veblen - Price Ladder/` → latest Price Ladder Report
- `Veblen - Display Map/` → latest Display Map Report

Check file modification dates. Flag any report older than 60 days as stale. If more than 2 are stale, list which need refreshing and do not proceed until the user confirms.

Also check for Girard Field Intelligence briefing:
- `René Girard - Field Intelligence/` → latest Desire Field Briefing (if exists)

### Step 2: Full Read

Read ALL reports in their entirety before beginning synthesis. Do not summarize as you read. Hold all findings simultaneously before drawing cross-layer conclusions.

### Step 3: Cross-Layer Analysis

For each significant finding in any individual report, ask: "Which other reports have signals that point toward or away from this finding?" Build the cross-reference matrix before writing anything.

Specifically look for:

**Convergence signals (3+ reports agreeing):**
- Status Intelligence + Signal Decoder + Waste Audit → all pointing to same positioning gap
- Emulation Tracker + Price Ladder + Display Map → all pointing to same timing opportunity
- Signal Decoder + Display Map + Status Intelligence → all pointing to same visibility problem

**Conflict signals (2 reports disagreeing):**
- Waste Audit says "strip back" but Price Ladder says "invest more" at a specific tier
- Signal Decoder says "counter-signaling is working" but Display Map says "chain is broken"
- Emulation Tracker says "signal is decaying" but Status Intelligence says "signal is still exclusive"

**The counter-signaling coherence test:**
- Aggregate ALL counter-signaling findings across all 6 reports
- Do they tell a coherent story? Counter-signaling only works from visible strength
- If display chain is broken AND counter-signaling is diagnosed, that's a conflict — resolve it

**The workmanship-prestige coherence test:**
- Aggregate ALL workmanship-prestige scores/findings across reports
- Is there a consistent pattern or internal contradiction?
- Does the Price Ladder's justification type match the Waste Audit's signature?

### Step 4: Draft the Briefing (7 sections)

---

## OUTPUT STRUCTURE: Status Field Briefing

**Header:**
- Date: [YYYY-MM-DD]
- Reports synthesized: [list with dates]
- Focus area: [General / Launch: X / Positioning: Y / Pricing: Z]
- Status field health summary (2-3 sentences): overall state of the brand's status positioning

---

### Section 1: Convergence Map

**What this section is:** Cross-layer patterns that no individual skill could see.

For each convergence zone (expect 2-5 per briefing):

**Zone [N]: [Name]**
- **Territory:** What positioning territory or status dynamic multiple signals are converging on
- **Confirming signals:** [Source Skill 1] found X. [Source Skill 2] found Y. [Source Skill 3] found Z. All independently point at [the same thing].
- **Convergence strength:** Number of independent signals (3 = notable, 4+ = high conviction, 5-6 = act now)
- **Strategic implication:** What this convergence means for the brand's status positioning
- **Timing window:** How long this convergence zone is actionable

---

### Section 2: The Single Move

**The one highest-leverage status action available right now.**

This is not a list. It is one specific, implementable move.

Format:
- **The Move:** [One sentence describing the exact action]
- **What it does to the status field:** [Which signals it changes, which tier it affects, which display chain link it fixes]
- **Why it outranks everything else:** [Explicit comparison to the next 2-3 options and why this one wins]
- **How to execute it:** [Specific enough to start this week]
- **What it unlocks:** [What subsequent moves become available once this one is made]
- **What it costs to delay:** [What happens if this move is not made in the timing window]

---

### Section 3: The Mirror (Self-Examination Synthesis)

**Aggregated self-examination findings from all 6 reports.**

This is where the client confronts their status blind spots in one place:

| Finding | Source | Severity | Blind Spot Type |
|---------|--------|----------|----------------|
| [What the client doesn't see about their own signals] | [Which skill(s) found this] | HIGH/MED/LOW | Signal incoherence / Accidental signal / Under-signaling / Over-signaling / Counter-signaling misread |

**The honest tier assessment:**
- Where substance places the brand: [Tier]
- Where signals place the brand: [Tier]
- The gap: [Description]
- What it would take to close: [Specific changes]

**Counter-signaling verdict:**
- What percentage of the brand's simplicity is intentional counter-signaling vs. under-investment?
- Is the market reading the restraint correctly?
- What would make the counter-signaling LEGIBLE without destroying it?

---

### Section 4: Unified Signal Timeline

**A single action calendar synthesizing timing signals from all reports.**

| Action | Source Signal | Urgency | Window |
|--------|-------------|---------|--------|
| [Action] | [Source Skill + specific signal] | HIGH/MED/LOW | [Date or condition] |

Include:
- Signal decay deadlines from Emulation Tracker (act before exhaustion)
- Price ladder restructuring timing from Price Ladder
- Display chain fixes from Display Map (some are quick, some need events)
- Waste adjustments from Waste Audit (invest/strip timeline)

---

### Section 5: The 90-Day Projection

**If the client executes the Single Move + timeline above, here is where their status positioning will likely be in 90 days.**

- **Month 1:** What changes in the market's read of the brand after initial moves
- **Month 2:** How competitor responses and signal decay shift the field
- **Month 3:** Where the brand sits relative to the status hierarchy at quarter end
- **Key risks:** What could make this projection wrong
- **Key accelerants:** What additional actions would improve the projection

---

### Section 6: Ranked Risk/Opportunity Matrix

**Opportunities ranked by capture value. Risks ranked by proximity + urgency.**

**Opportunities:**

| Rank | Opportunity | Source Skills | Available Territory | Fit | Time Sensitivity | Score |
|------|------------|-------------|--------------------|----|-----------------|-------|

**Risks:**

| Rank | Risk | Source Skills | Proximity | Damage | Action Required |
|------|------|-------------|-----------|--------|----------------|

---

### Section 7: Veblen-Girard Integration (if Girard data exists)

**Where status dynamics and desire dynamics converge or conflict.**

| Veblen Finding | Girard Finding | Relationship | Implication |
|---------------|---------------|-------------|-------------|
| [Status signal X is decaying] | [Desire for X is at peak velocity] | TRAP: High demand for a signal that's losing prestige | [Don't chase this] |
| [Counter-signaling opportunity at Y] | [No mimetic model currently occupying Y] | OPPORTUNITY: Unclaimed territory in both systems | [Claim it] |

**The unified view:**
- What does this market WANT? (Girard)
- How does it SIGNAL what it has? (Veblen)
- Where do these two systems reinforce each other?
- Where do they conflict? (Wanting something that signals the wrong thing)

If no Girard data exists:
> **Gap flagged:** No Girard Field Intelligence briefing found. Running `/girard-field-intelligence` would provide the desire-dynamics half of the full-spectrum analysis. The Veblen analysis identifies status positioning; the Girard analysis identifies what the market actually wants. Together they're significantly more powerful than either alone.

---

### Conflict Resolution Log

Any cases where two skill outputs pointed in opposite directions, with explicit resolution:

**Conflict:** [Skill A] said X. [Skill B] said Y.
**Resolution:** Follow [Skill A/B] because [reasoning].
**Confidence:** High/Medium/Low

---

## OUTPUT FILE

Save complete briefing to:
`[project-folder]/Veblen - Field Intelligence/[YYYY-MM] - Status Field Briefing.md`
