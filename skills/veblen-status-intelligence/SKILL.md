---
name: veblen-status-intelligence
description: "Maps the complete status hierarchy in a market: WHO holds each tier, WHAT signals put them there, WHERE the client is positioned, and which signals are ascending/decaying. Detects counter-signaling, distinguishes wealth-signals from taste-signals, and tracks signal lifecycle. Produces a Status Intelligence Report with tier map, signal inventory, decay analysis, and positioning recommendations. Use when: entering a market, repositioning, launching at a new price tier, or auditing competitive status dynamics."
version: 1.0.0
author: Strategic Profits / Deep Marketing Thinkers Series
source_thinker: "Thorstein Veblen (Theory of the Leisure Class) — Skill 1 of 6"
programs: [ZenithPro, Force Multiplier, Connect the Dots]
interface:
  invoke: "/veblen-status-intelligence {market-description}"
  called_by: [user, veblen-signal-decoder, veblen-emulation-tracker]
  outputs_to: [client-output-folder]
girard_integration:
  feeds_from: [girard-model-map]
  feeds_to: [girard-rivalry-detector, girard-desire-propagation]
  shared_data: "Model Map provides WHO is being imitated. Status Intelligence adds WHAT STATUS SIGNALS they display and where those signals sit in the decay cycle. Together they answer: who are the models, what are they displaying, and how long will those displays retain prestige value?"
---

# Veblen Status Intelligence

---

## LAYER 1: INVARIANTS (Never override.)

1. **Map the full hierarchy, not just the top.** The status system includes at least 4 tiers: apex (market leaders), established (proven players), ascending (rising operators), and mass (commodity zone). Every tier must be populated with real names and real signals. Skipping tiers produces a useless map.

2. **Distinguish wealth signals from taste signals.** For every status cue identified, classify it as:
   - **Wealth signal:** Revenue screenshots, team size, ad spend, lifestyle display, price anchoring
   - **Taste signal:** Intellectual depth, curated references, restraint in design, quality of associations, sophistication of language
   These serve different audiences. Conflating them = misreading the market.

3. **Counter-signaling detection is mandatory.** At the apex tier, look for players who are deliberately signaling DOWN — simplicity, restraint, absence of hype. This is not low effort; it's high-status counter-signaling. Misreading counter-signaling as weak branding is a catastrophic analytical error. Every apex-tier entry must include a counter-signaling assessment: present/absent, and what it communicates.

4. **Signal decay tracking is mandatory.** Every signal in the inventory must be tagged with its lifecycle stage:
   - **Exclusive** — used by 1-3 players, still carries strong prestige
   - **Aspirational** — adopted by the ascending tier, still prestigious but spreading
   - **Saturated** — copied by the mass tier, prestige value declining
   - **Exhausted** — ubiquitous, no longer signals status (may signal try-hard)

5. **The client's OWN position must be mapped honestly.** Do not flatter. Place the client where their visible signals actually position them, which may differ from where they believe they sit. Identify signal incoherence: places where the client's signals read as one tier while their substance belongs to another.

---

## LAYER 2: QUALITY GUIDANCE

6. **Non-obvious tier placements are more valuable than obvious ones.** Everyone knows who's at the apex. The insight is in mapping the mechanisms — WHY are they there, WHAT specific signals maintain their position, and WHERE are the cracks (signals starting to decay, counter-signaling opportunities being missed)?

7. **Invidious comparison mapping.** Within each tier, identify the peer rivalries — who is being compared to whom, what the comparison criteria are, and what status anxiety this generates. Invidious comparison within a tier drives more purchasing than aspiration toward the tier above. (Cross-reference with Girard Rivalry Detector for mimetic rivalry data.)

8. **Workmanship-prestige tension.** For markets where buyers value building and craft (founder markets, creative markets), assess whether each player's status comes from what they BUILT or what they DISPLAY. The workmanship-prestige ratio reveals which status strategy the market actually rewards.

---

## PURPOSE

Most competitive analyses map features, prices, and positioning claims. They miss the status layer — the social meaning that each brand carries in the buyer's peer group. Veblen's insight is that consumption is a social act with social consequences. Every purchase positions the buyer relative to their peers.

This skill maps the entire status hierarchy so you can see: where each player sits, what signals maintain their position, which signals are decaying, and where the open territory is for a new entrant or repositioning play. It's a status intelligence briefing, not a competitive feature comparison.

**Girard integration:** The Model Map (girard-model-map) tells you WHO the market is imitating. This skill tells you WHAT STATUS STORY those models are telling through their visible signals. Together they reveal: who holds desire, what they're displaying, and how long those displays will retain prestige value before signal decay erodes them.

---

## INPUT REQUIREMENTS

Provide:
1. **Market definition** — who the buyers are, rough revenue/sophistication level, what they're buying
2. **Key players to analyze** — minimum 8, ideally 15-20 names across tiers (or ask the skill to identify them via research)
3. **Client identity** — who is being mapped INTO this hierarchy

Optional:
- Existing Model Map from girard-model-map (avoids redundant research)
- Specific concern or question ("Am I positioned too low?" / "Is my pricing sending the wrong signal?")

---

## EXECUTION PROCESS

### Step 1: Market Definition & Player Identification

Confirm the market boundaries. If players are not provided, research to identify 15-20 across tiers using web search: leaders, established players, rising operators, and commodity-tier examples.

### Step 2: Signal Inventory (Per Player)

For each player, catalog their visible status signals across categories:

**Pricing signals:** Price points, payment terms, application requirements, waitlists
**Proof signals:** Revenue claims, client logos, testimonial caliber, media appearances
**Association signals:** Who they share stages with, who endorses them, mastermind membership
**Design signals:** Visual brand quality, production value, aesthetic choices
**Language signals:** Vocabulary sophistication, hype level, restraint level
**Access signals:** Availability, exclusivity mechanisms, response time
**Counter-signals:** Deliberate absence of common status markers (no revenue screenshots, no guru pose, no hype)

### Step 3: Tier Assignment

Place each player into a tier based on the AGGREGATE of their signals (not self-reported positioning):

| Tier | Characteristics | Signal Pattern |
|------|----------------|----------------|
| **Apex** | Market-defining. Others position relative to them. | Counter-signaling common. Taste > wealth signals. Exclusivity feels natural, not performative. |
| **Established** | Proven, respected, but not market-defining. | Mix of wealth and taste signals. Exclusivity is visible but intentional. |
| **Ascending** | Rising, hungry, building credibility. | Wealth signals dominant. Proof-heavy. Exclusivity is performative (application-only for a $997 course). |
| **Mass** | Commodity zone. Competing on price/features. | Copied signals from above. No counter-signaling. Status claims feel forced. |

### Step 4: Signal Decay Analysis

For each major signal type in the market, assess lifecycle stage (Exclusive → Aspirational → Saturated → Exhausted). Look specifically for:
- Signals that WERE exclusive 2-3 years ago but are now copied widely
- Signals that are CURRENTLY exclusive and still carrying prestige
- Emerging signals that haven't yet been adopted by the ascending tier

### Step 5: Counter-Signaling Analysis

For apex-tier players specifically:
- What status markers are they deliberately NOT using?
- What does this absence communicate?
- Is the market reading their restraint correctly (as confidence) or incorrectly (as weakness)?
- Where are counter-signaling opportunities being missed?

### Step 6: Client Position Assessment

Map the client into the hierarchy honestly:
- Where do their signals ACTUALLY place them? (May differ from where they intend to be)
- Signal incoherence: where signals read as one tier but substance belongs to another
- Workmanship-prestige ratio: is their status built on what they've BUILT or what they DISPLAY?
- Counter-signaling assessment: are they counter-signaling intentionally or accidentally?

### Step 7: Strategic Recommendations

Based on the full map:
- What tier should the client occupy, and what signal changes would credibly move them there?
- Which signals should be ADDED (and from what lifecycle stage)?
- Which signals should be DROPPED (exhausted signals that hurt more than help)?
- Where is the open territory — status positions that no player currently owns?
- What counter-signaling moves would differentiate at the apex tier?

---

## OUTPUT STRUCTURE

### Status Intelligence Report

**Section 1: Market Status Hierarchy**
Visual tier map with all players placed, showing signal patterns at each tier.

**Section 2: Signal Inventory**
Complete catalog of status signals in the market, classified as wealth/taste, tagged with lifecycle stage.

**Section 3: Signal Decay Analysis**
Which signals are dying, which are rising, which are stable. Predicts next signal migration.

**Section 4: Counter-Signaling Map**
Who's counter-signaling, what it communicates, and where the opportunities are.

**Section 5: Client Position Assessment**
Honest placement of the client, including signal incoherence and workmanship-prestige ratio.

**Section 6: Girard Cross-Reference**
If a Model Map exists: which status signals are the models propagating? Where does status hierarchy align with or diverge from mimetic desire hierarchy?

**Section 7: Strategic Recommendations**
Specific signal changes — add, drop, modify — with rationale tied to the hierarchy map.

---

## OUTPUT FILE

Save complete report to:
`[project-folder]/Veblen - Status Intelligence/01 - Status Intelligence Report - [Market] - [Date].md`
