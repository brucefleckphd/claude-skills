---
name: veblen-emulation-tracker
description: "Tracks imitation flows in a market: what signals are being copied, by whom, from whom, and where each signal sits in the decay cycle. Predicts next status migration — what the top tier will adopt next as current signals get copied down. Separates upward emulation from lateral competition (invidious comparison) from downward distinction. Produces an Emulation Tracker Report with flow map, decay timeline, and migration predictions. Use when: timing a positioning move, deciding whether to adopt or avoid a trend, or predicting where market status signals are heading."
version: 1.0.0
author: Strategic Profits / Deep Marketing Thinkers Series
source_thinker: "Thorstein Veblen (Theory of the Leisure Class) — Skill 3 of 6"
programs: [ZenithPro, Force Multiplier, Connect the Dots]
interface:
  invoke: "/veblen-emulation-tracker {market-description}"
  called_by: [user, veblen-status-intelligence]
  outputs_to: [client-output-folder]
girard_integration:
  feeds_from: [girard-model-map, girard-desire-propagation]
  feeds_to: [girard-rivalry-detector, veblen-signal-decoder]
  shared_data: "Girard's Desire Propagation tracks WHAT desires are spreading and at what velocity. Emulation Tracker tracks WHICH STATUS SIGNALS are being copied as those desires propagate. Together: desire flows (Girard) manifest as signal copying (Veblen). A desire gaining velocity will produce a signal that moves from Exclusive to Saturated — the combined data predicts when."
---

# Veblen Emulation Tracker

---

## LAYER 1: INVARIANTS (Never override.)

1. **Map three distinct flows, not just 'copying.'** Veblen describes three types of emulation:
   - **Upward emulation (pecuniary emulation):** Lower tier copies higher tier's signals to appear higher-status
   - **Lateral competition (invidious comparison):** Same-tier peers compete by outdoing each other's signals
   - **Downward distinction:** Higher tier abandons signals once they're copied, adopts new ones to stay differentiated
   All three must be tracked. Most analyses only see upward copying and miss the other two dynamics entirely.

2. **Every signal gets a decay trajectory.** Each signal tracked must include:
   - **Origin:** Where/who it started with
   - **Current adopters:** Which tiers are currently using it
   - **Adoption velocity:** How fast it's spreading
   - **Predicted exhaustion:** When it will no longer carry status value
   A signal without a trajectory is just a snapshot. The trajectory is the strategic intelligence.

3. **Prediction is required.** The skill must produce forward-looking predictions: what the top tier will likely adopt NEXT as current signals decay. This is not guessing — it follows from the logic of distinction (when copied, the top must differentiate). The prediction should identify 2-3 candidate signals for the next migration.

4. **Evidence-based tracking only.** Every emulation flow must cite specific observable evidence: "Player X adopted [signal] in [timeframe], which was previously exclusive to [Player Y]. Evidence: [URL/quote/observation]." General claims about "the market is copying" are insufficient.

5. **The social obligation dimension.** Veblen's core insight: consumption isn't just desire — it's DUTY. People at a certain tier are socially obligated to maintain certain signals or lose standing. Track which signals have become mandatory for tier membership (not optional enhancement but required maintenance).

---

## LAYER 2: QUALITY GUIDANCE

6. **Speed of decay reveals market maturity.** In immature markets, signals take years to decay from exclusive to exhausted. In mature, internet-connected markets, signals can decay in months. The decay speed itself is diagnostic — fast decay means the market is highly connected and status-competitive.

7. **Counter-signaling as the end of a decay cycle.** When a signal reaches exhaustion, the top tier doesn't just find a NEW signal — sometimes they adopt the OPPOSITE. Flashy → minimal. Visible → invisible. Loud → quiet. Track whether the market is at a counter-signaling inflection point.

8. **Invidious comparison drives lateral signal escalation.** Within a tier, peer competition creates arms races — each player adds more of the same signal type (bigger numbers, more testimonials, fancier production). Track where lateral escalation has become absurd or unsustainable — those are breakout opportunities where someone who STOPS escalating and does something different can win.

---

## PURPOSE

Markets are rivers of imitation. The top tier adopts a signal, the middle tier copies it, the mass tier copies the copy, and the signal dies. Then the top tier adopts something new. This cycle is constant, predictable, and strategically actionable — IF you can see it.

Most marketers operate on instinct: "Everyone's doing X, so I should do X too." This is the mass-tier response. The strategic response is: "X has reached the ascending tier, which means it's about to lose prestige value. I should be preparing the NEXT signal."

This skill tracks the full emulation flow so you can time your positioning moves relative to the signal lifecycle rather than copying what's already decaying.

**Girard integration:** Girard's Desire Propagation Tracker measures desire velocity — how fast a specific want is spreading through the market. The Emulation Tracker shows the Veblen side: how that spreading desire manifests as visible signals being copied across tiers. Combined, they predict not just what the market will want next, but what STATUS SIGNALS will accompany that want — and when those signals will peak and decay.

---

## INPUT REQUIREMENTS

Provide:
1. **Market definition** — same as Status Intelligence
2. **Signals to track** — specific status cues to monitor (or ask the skill to identify them from a Status Intelligence report)
3. **Time horizon** — how far back to look for decay patterns (default: 24 months)

Optional:
- Existing Status Intelligence Report (provides signal inventory and tier map)
- Existing Girard Desire Propagation Report (provides velocity data for cross-reference)

---

## EXECUTION PROCESS

### Step 1: Signal Identification

If no signal list is provided, identify 15-25 status signals currently active in the market by reviewing:
- Top-tier brands' visible markers
- Recurring patterns across sales pages, social profiles, pricing structures
- Marketing tactics that are treated as "must-haves" by mid-tier players
- Signals that were exclusive 2 years ago but are now common

### Step 2: Origin Tracing

For each signal, trace its origin:
- Who introduced it to this market? (Or imported it from an adjacent market?)
- When did it first appear?
- What made it work initially? (Why did it carry prestige when first used?)

### Step 3: Adoption Timeline

Map the adoption sequence:

| Phase | Timeline | Adopters | Evidence |
|-------|----------|----------|----------|
| **Introduction** | [Date/period] | [1-2 originators] | [Specific evidence] |
| **Exclusive adoption** | [Date/period] | [Apex tier] | [Evidence] |
| **Aspirational copying** | [Date/period] | [Ascending tier begins copying] | [Evidence] |
| **Mass adoption** | [Date/period] | [Mass tier copies] | [Evidence] |
| **Exhaustion** | [Date/period or predicted] | [Everyone uses it, no prestige left] | [Evidence] |

### Step 4: Current State Classification

For each signal, determine current lifecycle position:

| Signal | Current Stage | Decay Velocity | Est. Remaining Prestige Life |
|--------|--------------|----------------|------------------------------|
| [Signal name] | Exclusive / Aspirational / Saturated / Exhausted | Slow / Moderate / Fast | [Time estimate] |

### Step 5: Emulation Flow Map

Map the three flows currently active:

**Upward Emulation Flows:**
- [Ascending-tier player] → copying [signal] from → [Apex/established player]
- Evidence: [Specific URL/observation]

**Lateral Competition (Invidious Comparison):**
- Within [tier], players are escalating [signal type] against each other
- Escalation evidence: [Specific examples of arms race]
- Sustainability: [How long can this escalation continue?]

**Downward Distinction Moves:**
- [Apex player] has abandoned [signal] because [it was copied down]
- Replaced with: [New signal or counter-signal]
- Evidence: [Specific observation]

### Step 6: Social Obligation Analysis

Identify which signals have become MANDATORY for tier membership:
- "You cannot credibly claim to be [tier] without [signal]"
- "Lacking [signal] at [tier] would cost you standing with peers"
These are not competitive advantages — they're table stakes. The strategic question is: which current advantages are about to BECOME table stakes?

### Step 7: Migration Prediction

Based on the decay analysis and distinction patterns:

**Signals likely to decay in next 6-12 months:** [list with reasoning]
**Counter-signaling inflection points:** [where the market may flip from MORE to LESS of something]
**Next-generation signals (candidates):** [2-3 signals that could emerge as the new prestige markers]
**Basis for prediction:** [Which distinction patterns and market dynamics support each candidate]

---

## OUTPUT STRUCTURE

### Emulation Tracker Report

**Section 1: Signal Lifecycle Dashboard**
Visual summary of all tracked signals with current lifecycle stage, velocity, and predicted timeline.

**Section 2: Emulation Flow Map**
Upward, lateral, and downward flows currently active, with evidence.

**Section 3: Decay Analysis**
Which signals are dying, how fast, and what's replacing them.

**Section 4: Social Obligation Register**
Signals that are now mandatory for tier membership.

**Section 5: Counter-Signaling Inflection Points**
Where the market may be ready to flip from more → less of a signal type.

**Section 6: Migration Predictions**
6-12 month forward outlook on where status signals are heading.

**Section 7: Girard Cross-Reference**
Where signal decay aligns with desire propagation velocity — signals that are simultaneously decaying in status value AND peaking in mimetic desire represent positioning traps (high demand for something that's about to lose prestige).

**Section 8: Strategic Timing Recommendations**
When to adopt, when to abandon, when to counter-signal. Specific timing tied to decay trajectories.

---

## OUTPUT FILE

Save complete report to:
`[project-folder]/Veblen - Emulation Tracker/01 - Emulation Tracker Report - [Market] - [Date].md`
