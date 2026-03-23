---
name: loewenstein-empathy-gap-map
description: "Maps the hot-cold empathy gaps across a customer journey — from marketing (hot state creation) through purchase (hot state peak) to consumption and implementation (cold state reality). Identifies where projection bias causes buyers to overestimate future engagement, where buyer's remorse emerges, and where the gap between purchase-state enthusiasm and consumption-state reality creates churn, refunds, or disengagement. Produces an Empathy Gap Map with state analysis at each journey stage, gap severity scores, bridge mechanisms inventory, and redesign recommendations. Use when: diagnosing high refund rates, low course completion, mastermind disengagement, or any situation where buyers love the pitch but don't follow through."
version: 1.0.0
author: Strategic Profits / Deep Marketing Thinkers Series
source_thinker: "George Loewenstein (Hot-Cold Empathy Gap, 1996/2005; Projection Bias, 2003) — Skill 2 of 6"
programs: [ZenithPro, Force Multiplier, Connect the Dots]
interface:
  invoke: "/loewenstein-empathy-gap-map {offer-or-journey-description}"
  called_by: [user, loewenstein-field-intelligence]
  outputs_to: [client-output-folder]
girard_integration:
  feeds_from: [girard-model-map, girard-desire-autopsy]
  feeds_to: [girard-desire-propagation]
  shared_data: "Desire Autopsy reveals WHAT desire drove the purchase. Empathy Gap Map reveals whether that desire was hot-state dependent — will it survive the transition to cold-state consumption? Model Map shows who triggered the desire. Empathy Gap Map shows whether the buyer's projection of 'I'll be like that model' is sustainable or a state-dependent illusion."
veblen_integration:
  feeds_from: [veblen-price-ladder, veblen-waste-audit]
  feeds_to: [veblen-display-map]
  shared_data: "Price Ladder reveals the social identity each tier creates. Empathy Gap Map reveals whether the identity the buyer projected at purchase survives to consumption. High-ticket purchases carry the largest empathy gaps because the emotional intensity at purchase is highest."
---

# Loewenstein Empathy Gap Map

---

## LAYER 1: INVARIANTS (Never override.)

1. **Map the emotional state at EVERY stage, not just purchase.** The empathy gap analysis requires tracking the buyer's likely emotional/visceral state at: first exposure, engagement deepening, consideration, purchase decision, immediate post-purchase, onboarding, mid-consumption, and long-term engagement. Each stage has a different hot/cold profile.

2. **Projection bias assessment is mandatory for any offer over $500.** High-ticket purchases create the largest empathy gaps because the emotional intensity at purchase is highest. The buyer at $2,000 is projecting their current excitement onto 12 weeks of Tuesday-afternoon sessions. This gap MUST be mapped and bridge mechanisms MUST be evaluated.

3. **Both directions of the gap must be analyzed.** Cold-to-hot: the buyer in a calm state can't predict how they'll feel when urgency/scarcity/social proof hits (this is the selling side). Hot-to-cold: the buyer in a purchase-state can't predict how they'll feel when they're actually doing the work (this is the delivery side). Most marketing analyzes only the selling side.

4. **Bridge mechanisms must be specific and evaluated.** Generic "good onboarding" is not a bridge mechanism. A bridge mechanism is a specific designed element that re-creates purchase-state intensity during consumption: a welcome video that re-sells the vision, a quick-win module that delivers visible results before enthusiasm fades, a community interaction that re-triggers social motivation. Each must be named, located in the journey, and evaluated for effectiveness.

5. **Flag ethically problematic gaps.** If the analysis reveals that the marketing deliberately creates a hot state SO intense that the buyer cannot rationally evaluate the offer, flag this. Loewenstein's framework is descriptive, not prescriptive — the skill should surface gaps that are deliberately exploitative (extreme urgency + no cooling-off period + non-refundable + high price) vs. gaps that are natural and manageable.

---

## LAYER 2: QUALITY GUIDANCE

6. **The onboarding window is the highest-risk zone.** The 48-72 hours after purchase is where projection bias is most dangerous — the buyer is transitioning from hot to cold, and if no bridge mechanism fires in this window, disengagement begins. Evaluate the first-72-hours experience with particular scrutiny.

7. **Social accountability is a bridge mechanism.** Masterminds, cohorts, and group programs partially solve the empathy gap through social pressure (if I stop showing up, peers notice). Evaluate whether social structures are being used as bridges and whether they're calibrated (too much pressure = resentment, too little = ineffective).

8. **Refund rates are empathy gap data.** If refund data is available, correlate refund timing with journey stages. Refunds clustering at specific points reveal where the empathy gap is widest. Day-1 refunds = buyer's remorse (immediate hot-to-cold crash). Day-14 refunds = implementation gap (cold reality didn't match hot projection). Day-30 refunds = value realization failure (bridge mechanisms didn't fire).

9. **Re-selling is not the same as bridging.** Some products address the empathy gap by repeatedly re-creating hot states (more urgency emails, more scarcity, more live events). This is re-selling, not bridging. Bridging means the cold-state self genuinely values the product. Re-selling means you have to keep heating the buyer up. Distinguish these in the analysis.

---

## PURPOSE

The hot-cold empathy gap explains a pattern every business owner recognizes but few understand: buyers who are enthusiastic at purchase and disengaged weeks later. Course completion rates. Mastermind attendance drop-off. Subscription churn. The buyer was sincere when they purchased — they genuinely intended to do the work, attend the calls, implement the system. But they were in a different state.

This skill maps the empathy gap across the entire customer journey, identifies where projection bias is creating unsustainable expectations, evaluates the bridge mechanisms (or lack thereof) between hot-state purchase and cold-state consumption, and produces recommendations for closing the most damaging gaps.

---

## INPUT REQUIREMENTS

Provide:
1. **The offer** — what's being sold, price point, delivery format, duration
2. **The sales process** — how the buyer encounters and purchases (funnel, webinar, sales call, event)
3. **The delivery experience** — what happens after purchase (onboarding, course structure, community, support)
4. **The desired outcome** — what completion/success looks like

Optional:
- Refund rate and timing data
- Course completion or engagement data
- Customer feedback or complaint patterns
- Churn timing for subscriptions

---

## EXECUTION PROCESS

### Step 1: Journey Stage Mapping

Define every stage of the customer journey from first exposure through long-term engagement. For each stage, identify the likely emotional/visceral state:
- **Temperature** — hot (emotionally aroused, excited, afraid, urgent) or cold (calm, rational, analytical, distracted)
- **Dominant visceral factors** — which specific emotions/drives are active
- **State stability** — how quickly the state changes at this point

### Step 2: Gap Identification

Between each adjacent pair of stages, assess:
- How large is the state change? (1-10 severity)
- Is the buyer expecting this change? (awareness level)
- What projection bias is operating? (what does the buyer at stage N believe about stage N+1?)
- What is the consequence of the gap? (confusion, frustration, regret, disengagement, refund)

### Step 3: Bridge Mechanism Inventory

Catalog every existing bridge mechanism in the customer journey:
- What is it? (email, video, call, quick-win, community element, accountability structure)
- Where is it in the sequence? (which gap is it bridging?)
- How does it work? (re-creates hot state, validates cold-state value, provides social pressure, delivers quick result)
- Is it effective? (assessment based on engagement data if available, structural analysis if not)

### Step 4: Gap Severity Scoring

Score each identified gap on three dimensions:
- **Width** — how far apart are the two states? (1-10)
- **Consequence** — what happens if the gap isn't bridged? (annoyance → disengagement → refund → negative WOM)
- **Bridging** — how well do existing mechanisms address it? (unbridged → partially bridged → well bridged)

Overall severity = Width × Consequence ÷ Bridging effectiveness

### Step 5: Projection Bias Analysis

For the purchase decision specifically, assess:
- What future state is the buyer projecting? (what do they believe their engagement/enthusiasm/results will look like?)
- How realistic is that projection? (based on typical customer behavior patterns)
- What is the gap between projected and actual experience? (measured in specific behaviors: "projects daily engagement, actual is weekly")
- Where does the projection break? (the specific moment when reality diverges from projection)

### Step 6: Recommendations

Produce specific bridge mechanisms for the highest-severity gaps:
- **Immediate bridges** — what to add in the first 72 hours
- **Sustaining bridges** — what to add throughout the consumption period
- **Recovery bridges** — what to add when disengagement is already occurring
- **Prevention bridges** — how to modify the sales process to reduce projection bias at purchase (set realistic expectations without killing desire)

### Step 7: Self-Examination

Deliver an honest assessment of the client's empathy gap blind spots:
- Are they confusing re-selling with bridging?
- Are they blaming the customer for not "doing the work" when the gap is structural?
- Are they creating unnecessarily intense hot states at purchase that guarantee a crash?
- Is their refund policy designed to exploit the gap rather than bridge it?

---

## OUTPUT STRUCTURE

### Empathy Gap Map — [Offer/Journey Name]

1. **Journey Stage Map** — every stage with temperature, dominant state, and stability assessment
2. **Gap Inventory** — each state transition with severity score, consequence, and current bridging status
3. **Projection Bias Analysis** — what the buyer projects at purchase vs. what actually happens, with specific behavioral predictions
4. **Bridge Mechanism Inventory** — every existing bridge, where it sits, and its effectiveness rating
5. **Critical Gap Report** — the 3-5 highest-severity gaps, ranked, with specific consequences of leaving them unaddressed
6. **Bridge Recommendations** — specific mechanisms to add, organized by immediacy (72-hour / sustained / recovery / prevention)
7. **Self-Examination** — the client's empathy-gap blind spots
8. **Girard Cross-Reference** — (if Girard data exists) whether mimetic desire is hot-state dependent
9. **Veblen Cross-Reference** — (if Veblen data exists) how status-driven purchases amplify the gap

---

## OUTPUT FILE PATH

Save to: `[project-vault]/Loewenstein - Empathy Gap Map/[##] - Empathy Gap Map - [Offer Name] - [YYYY-MM-DD].md`
