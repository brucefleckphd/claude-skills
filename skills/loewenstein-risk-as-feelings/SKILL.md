---
name: loewenstein-risk-as-feelings
description: "Audits how a marketing funnel or offer addresses BOTH risk systems — cognitive risk evaluation (proof, guarantees, statistics) and emotional risk perception (what the buyer FEELS when imagining failure). Maps where risk-as-feelings diverges from risk-as-analysis, identifies probability neglect under strong emotion, evaluates dread factors, and assesses whether risk-reduction elements address the right system. Produces a Risk Perception Report with dual-system audit, dread inventory, personal experience assessment, and risk-reduction redesign. Use when: conversion drops at checkout despite strong proof, high cart abandonment, prospects who say 'I need to think about it,' or any offer where rational case is strong but buyers aren't buying."
version: 1.0.0
author: Strategic Profits / Deep Marketing Thinkers Series
source_thinker: "George Loewenstein (Risk as Feelings, 2001, with Weber, Hsee, Welch) — Skill 3 of 6"
programs: [ZenithPro, Force Multiplier, Connect the Dots]
interface:
  invoke: "/loewenstein-risk-as-feelings {offer-or-funnel-description}"
  called_by: [user, loewenstein-field-intelligence]
  outputs_to: [client-output-folder]
girard_integration:
  feeds_from: [girard-model-map]
  feeds_to: [girard-desire-autopsy]
  shared_data: "Model Map reveals who the buyer is imitating. Risk as Feelings reveals whether seeing the model succeed REDUCES risk-as-feelings (if it could work for them, maybe it works for me) or INCREASES it (they succeeded but I probably can't). The model's similarity to the buyer determines which direction it goes."
veblen_integration:
  feeds_from: [veblen-price-ladder]
  feeds_to: [veblen-waste-audit]
  shared_data: "Price Ladder reveals the social identity each price tier creates. Risk as Feelings reveals what emotional risk each price tier carries — the fear of overpaying AND the fear of being seen as someone who buys cheap. Premium pricing triggers risk-as-feelings about wasted money; budget pricing triggers risk-as-feelings about status loss."
---

# Loewenstein Risk as Feelings

---

## LAYER 1: INVARIANTS (Never override.)

1. **Separate risk-as-analysis from risk-as-feelings in every assessment.** For every identified buyer risk, produce TWO evaluations: (a) what does the cognitive/analytical system say about this risk? (probability × consequence), and (b) what does the emotional/visceral system say about this risk? (how does the buyer FEEL when imagining this going wrong?). These two evaluations may diverge sharply.

2. **When feelings and analysis diverge, feelings predict behavior.** This is not a judgment call — it's Loewenstein's core finding. If the analytical case says "low risk" but the buyer feels dread, the buyer will not buy. If the analytical case says "high risk" but the buyer feels excited, the buyer will buy. The skill must identify divergence and treat the feelings assessment as the behavioral predictor.

3. **Dread factors must be inventoried.** Dread is not generic fear. Loewenstein identifies specific dread triggers: loss of control, catastrophic (vs. incremental) consequences, unknown or poorly understood mechanisms, involuntary exposure, unfamiliar risks, and delayed consequences. For each buyer risk, tag which dread factors are present.

4. **Personal experience trumps statistical evidence.** A buyer who was burned by a previous guru, coach, course, or mastermind carries experiential risk-as-feelings that NO amount of testimonials or guarantees can override through analytical channels. The skill must assess the audience's likely NEGATIVE personal experiences with similar offers and evaluate whether the marketing addresses those experiences at the feelings level, not just the analytical level.

5. **Vividness of the feared outcome must be assessed.** The more vividly the buyer can imagine the negative outcome, the stronger risk-as-feelings fires — regardless of probability. "You might waste money" triggers weak feelings. "You'll sit in your home office at 11pm wondering why you bought another course that's collecting dust" triggers strong feelings. The skill must assess the vividness of both the feared negative AND the desired positive.

---

## LAYER 2: QUALITY GUIDANCE

6. **Guarantees address analytical risk but rarely address emotional risk.** A "30-day money-back guarantee" reduces the probability-weighted expected loss (analytical system). It does NOT reduce the feeling of "what if this doesn't work for ME specifically" (emotional system). Evaluate guarantee effectiveness against BOTH systems.

7. **Testimonials work on the feelings system when they're vivid and relatable.** A testimonial from someone who mirrors the buyer's situation, describing specific emotional states before and after, addresses risk-as-feelings. Revenue screenshots and outcome statistics address risk-as-analysis. Most marketing over-indexes on analytical testimonials (numbers, results) and under-indexes on emotional testimonials (the feeling of being stuck, the relief of breakthrough).

8. **Risk-as-feelings has diminishing returns on proof.** Once the analytical system is satisfied (enough proof, reasonable guarantee), additional proof doesn't further reduce risk-as-feelings. Instead, excessive proof can INCREASE risk-as-feelings ("why do they need this much proof?"). Identify the inflection point where more proof is counterproductive.

9. **Price itself is a risk signal in BOTH systems.** Analytically, higher price = more at stake. Emotionally, price triggers different feelings depending on context: high price + strong desire = excitement mixed with fear; high price + weak desire = dread; low price + high expectations = suspicion. Map the emotional signature of the pricing.

---

## PURPOSE

Most conversion optimization addresses the analytical risk system: add more testimonials, strengthen the guarantee, provide case studies, include statistics. These help — but they miss the emotional risk system, which often determines behavior when the two systems disagree.

This skill audits whether a marketing funnel, offer, or sales process addresses BOTH risk systems. It identifies where risk-as-feelings diverges from risk-as-analysis, inventories dread factors, assesses the vividness of feared outcomes, and evaluates whether risk-reduction elements are targeting the right system.

---

## INPUT REQUIREMENTS

Provide:
1. **The offer** — what's being sold, price, delivery format
2. **The sales materials** — funnel copy, sales page, webinar, or sales call script
3. **The audience** — who they are, what they've likely experienced before with similar offers

Optional:
- Conversion data (where drop-offs happen — especially checkout abandonment)
- Customer feedback or objection patterns
- Refund reasons
- Competitor comparison

---

## EXECUTION PROCESS

### Step 1: Risk Inventory

Identify every risk the buyer faces in this purchase:
- Financial risk (waste of money)
- Time risk (waste of time on implementation)
- Social risk (embarrassment if it doesn't work, or if peers judge the purchase)
- Psychological risk (feeling duped, buyer's remorse)
- Opportunity cost (what else could they do with this money/time?)
- Identity risk (does buying this conflict with how they see themselves?)

### Step 2: Dual-System Assessment

For each identified risk, produce parallel evaluations:
- **Analytical assessment:** Given the available evidence, what is the objective risk level? (low/medium/high based on probability and consequence)
- **Feelings assessment:** What does the buyer likely FEEL about this risk? How vivid is the feared outcome? How much dread does it generate? (score 1-10)
- **Divergence flag:** Where do the two assessments disagree? (analytical says low, feelings say high = conversion problem)

### Step 3: Dread Factor Tagging

For each risk where feelings exceed analytical assessment, identify which dread factors are operating:
- Loss of control ("I can't undo this")
- Catastrophic consequence ("this could waste my last chance")
- Unknown mechanism ("I don't understand how this works")
- Involuntary exposure ("once I'm in, I'm stuck")
- Unfamiliar territory ("I've never done anything like this")
- Delayed consequence ("I won't know if this worked for months")

### Step 4: Personal Experience Assessment

Evaluate the audience's likely negative experiences with similar offers:
- What have they bought before that didn't work?
- What do they feel about "gurus," "courses," "masterminds," "coaches"?
- What specific negative experiences are they carrying?
- How vivid are those memories? (recent burns are more vivid = stronger risk-as-feelings)

### Step 5: Risk-Reduction Element Audit

Walk through every element in the sales materials that attempts to reduce risk. For each:
- What risk does it address?
- Does it target the analytical system, the feelings system, or both?
- How effective is it? (scale: 1-10 for analytical, 1-10 for feelings)
- Is there an unaddressed gap? (e.g., strong guarantee reduces analytical risk, but no emotional risk reduction for the "what if I'm the one person this doesn't work for" feeling)

### Step 6: Vividness Assessment

Evaluate the vividness of two key images in the marketing:
- **The feared negative outcome** — how vividly can the buyer imagine this going wrong? If NOT vivid = risk-as-feelings is low (good for conversion). If HIGHLY vivid = risk-as-feelings may overwhelm analytical assessment.
- **The desired positive outcome** — how vividly can the buyer imagine this going RIGHT? If vivid = desire can override risk-as-feelings. If vague = analytical risk will dominate.

### Step 7: Recommendations

Produce specific recommendations:
- Where to add FEELINGS-level risk reduction (not more proof — more emotional safety)
- Where to REDUCE excessive analytical proof that may be counterproductive
- How to address personal-experience-based risk (acknowledging burns, not dismissing them)
- How to increase vividness of the positive outcome to shift the feelings balance
- Where dread factors can be defused through transparency, control, and familiarity

### Step 8: Self-Examination

Surface the client's risk-perception blind spots:
- Are they over-indexing on analytical risk reduction (more proof, stronger guarantee)?
- Are they dismissing buyer fears as "objections to overcome" rather than legitimate emotional risk?
- Are they creating dread factors inadvertently (complex checkout, unclear deliverables, mysterious process)?
- Is their pricing creating emotional risk they're not addressing?

---

## OUTPUT STRUCTURE

### Risk Perception Report — [Offer Name]

1. **Risk Inventory** — all identified buyer risks with dual-system scores
2. **Divergence Map** — where analytical and feelings assessments disagree, ranked by severity
3. **Dread Factor Inventory** — which dread factors are operating and for which risks
4. **Personal Experience Assessment** — the audience's likely burn history and its emotional residue
5. **Risk-Reduction Audit** — every existing risk-reduction element, what it targets, and its effectiveness
6. **Vividness Assessment** — how vivid are the negative and positive imagined outcomes
7. **Recommendations** — specific additions and modifications, prioritized by conversion impact
8. **Self-Examination** — the client's risk-perception blind spots
9. **Girard Cross-Reference** — (if data exists) how model similarity affects risk-as-feelings
10. **Veblen Cross-Reference** — (if data exists) how pricing and status interact with risk perception

---

## OUTPUT FILE PATH

Save to: `[project-vault]/Loewenstein - Risk as Feelings/[##] - Risk Perception Report - [Offer Name] - [YYYY-MM-DD].md`
