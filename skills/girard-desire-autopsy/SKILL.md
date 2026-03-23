---
name: girard-desire-autopsy
description: "Reverse-engineers why a specific product launch, campaign, or competitor effort succeeded or failed by analyzing its mimetic desire structure — model type, mediation type, model-market fit, and desire triangle integrity. Produces a Desire Autopsy Report with diagnosis and specific structural fixes. Based on Girard's triangular desire theory. Use when: diagnosing a failed launch, understanding why a competitor's launch crushed it, improving an upcoming launch's desire architecture, or learning from historical performance."
version: 1.0.0
author: Strategic Profits / Deep Marketing Thinkers Series
source_thinker: "René Girard (Mimetic Desire Theory) — Idea 5"
programs: [ZenithPro, Force Multiplier, Connect the Dots]
interface:
  invoke: "/girard-desire-autopsy {launch-to-analyze}"
  called_by: [user]
  outputs_to: [client-output-folder]
---

# Girard Desire Autopsy

---

## LAYER 1: INVARIANTS (Never override.)

1. **Analyze the actual marketing, not the product.** The autopsy examines what was shown to prospects, not what was delivered. The desire structure of the marketing is what determines purchase behavior. NEVER conflate product quality with marketing desire structure — they are independent variables.

2. **Evidence from actual marketing materials required.** Every finding must be grounded in specific, citable elements of the actual marketing: the copy, the testimonials, the positioning, the model used, the proof structure. "The launch probably used X approach" is not evidence. Quote the actual materials.

3. **Diagnose all four desire structure dimensions.** Every autopsy must address: (1) Model type, (2) Mediation type, (3) Model-market fit, (4) Desire triangle integrity. Missing any of these = incomplete autopsy. A launch can succeed on 3 of 4 and still fail if the fourth is broken.

4. **Distinguish desire failure from execution failure.** A well-structured desire architecture can fail due to traffic problems, technical issues, pricing mismatches, or timing. A poorly-structured desire architecture can succeed in spite of execution because the desire is powerful enough to overcome friction. Separate the diagnosis: "The desire structure was strong/weak" vs. "The execution was strong/weak."

5. **If analyzing Rich's own launch:** Apply the same forensic rigor you would to a competitor. Do not soften findings. Rich's stated goal is accurate diagnosis, not validation. Weak findings + soft framing = useless autopsy.

---

## LAYER 2: QUALITY GUIDANCE

6. **The failure modes are specific.** Girard's framework produces very specific, non-obvious diagnoses. "The copy wasn't compelling" is not a Girardian diagnosis. "The testimonials all featured external mediators (people the prospects admired from afar) when the market was in an intense internal-mediation rivalry phase — this generated admiration but not the rivalry-triggered desire that converts at high ticket" is a Girardian diagnosis.

7. **Counter-factual specificity.** For each failure identified, produce a specific counter-factual: "If instead of [what they did], they had [the alternative], the mimetic desire structure would have produced [predicted result]." The counter-factual must be specific enough to implement.

8. **Success autopsies are equally valuable.** When analyzing a successful launch, the goal is to identify WHICH elements of the desire structure drove results so they can be intentionally replicated — not just assumed to have worked for vague reasons.

---

## PURPOSE

Most launch diagnoses examine copy quality, offer structure, funnel mechanics, traffic, and timing. All of these matter. But they don't explain why two launches with similar execution quality produce wildly different results, or why a technically well-executed launch with strong copy can still flop.

The desire architecture — the mimetic structure of who is presented as a model, what type of mediation they represent, whether they match the market's actual desire models, and whether the desire triangle is coherent — operates underneath all of these variables and often determines outcomes more than any of them.

This tool runs the autopsy at the desire-structure level, producing diagnoses and fixes that conventional analysis cannot surface.

---

## INPUT REQUIREMENTS

Provide one of the following:
1. **URL(s) of the sales page, webinar recording, or promotional campaign** to analyze
2. **Marketing materials** (copy, screenshots, email sequences, ads) to review
3. **Description of the launch** sufficient to reconstruct the desire structure (model used, testimonials featured, core promise, proof structure)

Optionally provide:
- **Results data** (conversion rate, revenue, refund rate) — helps calibrate whether this was a success or failure autopsy
- **Target market definition** — needed to assess model-market fit
- **Competitor context** — what the market was seeing simultaneously

---

## AUTOPSY STRUCTURE

### Section 1: The Desire Architecture Map

A structural diagram (in text) of the desire architecture as-built:

**The Model:** Who (explicitly or implicitly) was positioned as the desire mediator? Options:
- The founder/presenter (modeling their own success/lifestyle/results)
- A celebrity or well-known external figure (endorsement/testimonial)
- A peer success story (customer at or near the prospect's level)
- Abstract outcome positioning (no model present — product-feature based)
- A community or movement (the "us" as model)

**Mediation Type:**
- External mediation: The model is aspirational, distant, not someone the prospect competes with
- Internal mediation: The model is a near-peer, someone the prospect sees as a rival or competitor
- Mixed: Multiple models spanning both types (can be powerful or confusing depending on execution)

**The Desire Object:** What specifically was presented as the desired object? Not the product — the *identity transformation* the product delivered. Was this:
- Specific and concrete (clear identity endpoint)
- Vague and generic (aspirational without specificity)
- Conflicting (multiple desire objects that contradict each other)

**The Desire Triangle Integrity:**
- Subject (prospect) → Model (desire mediator) → Object (identity/outcome desired)
- Is this triangle clearly present in the marketing? Or is one leg missing/weak?

---

### Section 2: The Four Diagnoses

**Diagnosis 1: Model Type Assessment**
- Was the right type of model used for this market and offer?
- For high-ticket offers, internal mediation (peer models) almost always outperforms external mediation (guru models) because it activates rivalry-driven desire, not just admiration
- Finding: [STRONG / WEAK / MISALIGNED] + specific evidence

**Diagnosis 2: Mediation Type Assessment**
- Does the mediation type match what this specific market is experiencing?
- If the market is in a rivalry phase (intense peer competition), external mediation generates admiration without purchase desire
- If the market is in an aspiration phase (seeking direction), internal mediation may feel less relevant
- Finding: [STRONG / WEAK / MISALIGNED] + specific evidence

**Diagnosis 3: Model-Market Fit**
- Does the model actually function as a desire mediator for this market?
- A person with 1M followers may generate admiration but zero mimetic desire if the market doesn't identify with them
- A person with 5K followers may generate intense desire if they're exactly who the market is trying to become
- Finding: [STRONG / WEAK / MISALIGNED] + specific evidence

**Diagnosis 4: Desire Triangle Integrity**
- Is Subject → Model → Object clearly established and coherent?
- Common breaks: (a) No model present — product-features only; (b) Model doesn't visibly desire the Object — they just endorse it; (c) Object is vague — the desired identity is unclear; (d) Model-obstacle collapse — model simultaneously represents the dream AND blocks it (Skandalon dynamic)
- Finding: [INTACT / BROKEN AT POINT X] + specific evidence

---

### Section 3: Failure Mode Classification

If diagnosing a failure or underperformance, classify the primary failure mode:

| Failure Mode | What It Means | Evidence |
|---|---|---|
| **No Model** | Marketing was product-feature based with no desire mediator | |
| **Wrong Model Type** | External mediation when internal was needed (or vice versa) | |
| **Model-Market Mismatch** | Model doesn't actually generate desire in this specific market | |
| **Conflicting Models** | Multiple testimonials/models mediating incompatible desires | |
| **Skandalon Dynamic** | Model simultaneously attracts and blocks — generates resentment | |
| **Invisible Object** | The desired identity outcome was never made concrete | |
| **Shattered Triangle** | All legs present but incoherent — no unified desire arc | |

---

### Section 4: Counter-Factual Recommendations

For each failure mode identified, produce a specific rewrite:

**"Instead of [what was done], the desire structure should have been [alternative]. Here's specifically what that looks like in the marketing:**
- Testimonial selection: [who to feature and why]
- Model framing: [how to present the model's desire, not just results]
- Proof structure: [which proof type generates internal vs. external mediation]
- Core desire articulation: [specific language that names the identity transformation]"

---

### Section 5: If Analyzing a Successful Launch

**What desire structure elements drove results?**
- Which model type was used and why did it work?
- Which specific mediation triggered purchase behavior?
- What desire triangle element was most powerful?
- What is the replicable formula?

**Scalability assessment:**
- Is this desire structure sustainable as the market evolves?
- Are competitors already imitating it (mimetic convergence risk)?
- What would need to change if the market's model hierarchy shifts?

---

## OUTPUT FILE

Save complete report to:
`[project-folder]/René Girard - Desire Autopsy/01 - Desire Autopsy - [Launch Name] - [Date].md`
