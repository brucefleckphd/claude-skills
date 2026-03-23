---
name: girard-mimetic-content-strategist
description: "Produces a content strategy built entirely around mimetic desire — what to create, how to position yourself in each piece, and in what sequence to escalate desire. Synthesizes outputs from girard-model-map, girard-desire-propagation, and the Mediator Positioning Audit from mimetic-market-intelligence. Produces a Mimetic Content Plan with desire-aligned topics, model positioning instructions, rivalry activation content, and desire escalation sequences. Use when: planning quarterly content, launching a new positioning, or replacing SEO/algorithm-driven content strategy with desire-driven content strategy."
version: 1.0.0
author: Strategic Profits / Deep Marketing Thinkers Series
source_thinker: "René Girard (Mimetic Desire Theory) — Idea 9"
programs: [ZenithPro, Force Multiplier, Connect the Dots]
interface:
  invoke: "/girard-mimetic-content-strategist {market} [period: monthly|quarterly]"
  called_by: [user]
  outputs_to: [client-output-folder]
depends_on: [girard-model-map, girard-desire-propagation, mimetic-market-intelligence]
---

# Girard Mimetic Content Strategist

---

## LAYER 1: INVARIANTS (Never override.)

1. **Content is desire modeling, not information delivery.** Every piece of content in this plan must do one of three things: (a) Show you *wanting and pursuing* something the market wants, (b) Show a model getting results the market desires, (c) Name and validate a rivalry/desire that already exists in the market. If a content piece doesn't do one of these three things, it is not mimetic content — it is information content and belongs in a different strategy.

2. **Desires before topics.** The content calendar must be built desire-first, not topic-first. "How to use AI for marketing" is a topic. "Showing the market that serious operators are adopting AI as a competitive weapon while most people are still treating it as a curiosity" is a desire being modeled. Every piece in the plan must start from the desire being mediated, then work back to the format and topic.

3. **Mediation type must be specified per piece.** Every content piece must be classified as: External Mediation (aspirational, "look what's possible") or Internal Mediation (peer-level, "look what I just did that you could do"). Do not mix types within a single piece. The mediation type determines who the piece activates and at what funnel stage it belongs.

4. **Sequence matters.** Mimetic desire escalates through repeated exposure across multiple models. A content plan that is a flat list of unrelated pieces is not mimetic strategy. The plan must show escalation arcs — how pieces build on each other to progressively intensify desire.

5. **Evidence-grounded, not aspirationally planned.** Content topics must be grounded in what desires are actually propagating (from the Desire Propagation Tracker) and who the actual models are (from the Model Map). Never plan content based on "what would be interesting" without grounding it in current desire propagation signals.

---

## LAYER 2: QUALITY GUIDANCE

6. **Rivalry activation is the most underused lever.** Most content strategies avoid rivalry language to stay "positive." But naming real rivalries that already exist in the market — making the invisible competitive dynamic visible — is the most powerful desire-activation move available. The plan should include at least 2-3 pieces specifically designed to name and validate existing rivalries.

7. **Rich's mediation type must be matched to content type.** Based on the Mediator Positioning Audit: if Rich is primarily an external mediator (aspirational, "the AI strategist"), awareness content should lean external-mediation while conversion content should shift to internal-mediation proof. This is a systematic calibration, not a one-size-fits-all.

8. **Content for each stage of the desire escalation curve.** Early in the propagation of a desire, external mediation content (showing what's possible from afar) introduces the desire to the market. Mid-cycle, internal mediation (peer success stories) intensifies it. Late-cycle, rivalry activation content creates urgency. The plan should map which pieces serve which stage.

---

## PURPOSE

Most content strategy is driven by three forces: SEO (what keywords have volume), social algorithms (what formats get distribution), and editorial calendars (what we feel like publishing). None of these ask the right question.

The right question is: "What does our market *want to become*, which desires are actively propagating through the market right now, and what content would position us as the model who mediates those desires?"

This tool answers that question and builds a content plan from it.

**This is not a replacement for SEO or distribution strategy.** It is a layer above them — determining what you create before deciding how to distribute it.

---

## INPUT REQUIREMENTS

**Ideal input (use what's available):**
1. **Model Map report** from `girard-model-map` — who are the active desire models in the market
2. **Desire Velocity Report** from `girard-desire-propagation` — what desires are currently spreading
3. **Mediator Position** from `mimetic-market-intelligence` Doc 3 — where Rich currently sits in the model hierarchy
4. **Client context** from CLIENT INPUT doc — what Rich is willing to create, channel preferences, visibility constraints

**If prior skill outputs aren't available:** Run the research fresh as part of this skill's execution (will take longer but produces the same output).

---

## OUTPUT STRUCTURE: Mimetic Content Plan

**Header:**
- Market: [definition]
- Plan period: [monthly/quarterly dates]
- Rich's current mediation type: [External / Internal / Mixed — from Mediator Positioning Audit]
- Active desires being planned for: [list from Desire Velocity Report]
- Key models being referenced: [from Model Map]

---

### Section 1: Content Strategy Foundation

**The Desire Architecture for This Period:**
Based on what's currently propagating in the market, what 3-5 desires should this content period focus on? For each:
- Desire statement (specific, not vague)
- Why this desire is worth addressing now (velocity, competition, Rich's fit)
- What mediation type serves this desire best
- What model Rich should occupy when addressing it

**Rich's Mediation Position Strategy:**
- Current position: [from audit]
- Desired position shift (if any): [e.g., "move from pure external to more internal mediation for decision-stage content"]
- Specific tactics to achieve the shift: [e.g., "feature peer testimonials from $500K-$2M operators, not just $10M outliers"]

---

### Section 2: The Content Calendar

For each piece in the plan (target: 12-20 pieces for quarterly, 4-6 for monthly):

**Piece [N]: [Working Title]**
- **Desire being mediated:** [specific desire from the Desire Velocity Report]
- **Mediation type:** External / Internal
- **Model position:** How Rich should position in this piece (e.g., "position as peer who just discovered X, not as expert teaching from above")
- **Format:** [video, newsletter, short-form post, long-form essay, podcast, case study, etc.]
- **Platform:** [primary distribution channel]
- **Desire escalation stage:** Early (introduction) / Mid (intensification) / Late (rivalry activation)
- **Core message:** [1-2 sentences — what desire is being modeled, not what information is being shared]
- **Model framing:** [who to show, how to show them, what specific desire/result they represent]
- **Evidence source:** [what specific data/story/result grounds this piece]

---

### Section 3: Rivalry Activation Content

3-5 pieces specifically designed to name and validate rivalries already present in the market:

For each:
- **Rivalry being named:** [the specific competitive dynamic in the market]
- **Why naming it serves the market:** [this is not manufactured conflict — it's making visible what's already there]
- **Rich's position relative to this rivalry:** [outside observer naming it? Participant? Model for one side?]
- **Working title and angle:** [how to frame the piece so it feels like revelation, not agitation]
- **Risk assessment:** [could this piece be perceived as manufactured rivalry? How to prevent that]

---

### Section 4: Desire Escalation Sequences

2-3 multi-piece arcs designed to escalate a specific desire over time:

For each arc:
- **Target desire:** [what desire is being escalated across this sequence]
- **Arc structure:** [Piece 1 introduces via external mediation → Piece 2 shows peer getting results (internal mediation) → Piece 3 names the rivalry forming around this desire → Piece 4 offers Rich's path through it]
- **Timeline:** [suggested spacing between pieces]
- **Expected effect:** [what the market should be feeling/wanting by the end of the arc]

---

### Section 5: Content NOT to Create

Based on the Desire Velocity Report's Fading Desires and the Model Map's inactive models: what content would waste resources by targeting desires that are losing momentum or models the market is no longer imitating?

- **Desires to de-prioritize:** [with rationale]
- **Content angles to retire:** [what used to work but is now fading]
- **Format/platform combinations with decreasing returns:** [based on where the active models are distributing]

---

### Section 6: Production Notes for Rich Specifically

Given Rich's stated visibility preferences (from CLIENT INPUT):
- What format delivers the most mimetic impact within his comfort zone?
- How to create maximum internal-mediation effect with minimum personal celebrity exposure?
- The "shooter" format: what natural moments/scenarios would capture mimetic modeling most powerfully without scripting?
- Which pieces could be produced with a skilled interviewer rather than solo content (based on Rich's preference for being "drawn out" by the right interlocutor)?

---

## OUTPUT FILE

Save complete report to:
`[project-folder]/René Girard - Mimetic Content Strategist/01 - Mimetic Content Plan - [Period] - [Date].md`
