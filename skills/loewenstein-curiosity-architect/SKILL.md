---
name: loewenstein-curiosity-architect
description: "Audits and designs information gap structures in marketing funnels, content, and campaigns. Maps where curiosity is being triggered (or killed), diagnoses whether the audience has enough knowledge to FEEL the gap, classifies gaps as diversive (attention only) or specific (drives action), and evaluates the inverted-U relationship between knowledge and curiosity at each funnel stage. Produces a Curiosity Architecture Report with gap inventory, knowledge-level assessment, sequence design recommendations, and resolution mapping. Use when: designing launches, auditing funnels, creating content sequences, or diagnosing why open rates are high but conversions are low."
version: 1.0.0
author: Strategic Profits / Deep Marketing Thinkers Series
source_thinker: "George Loewenstein (The Psychology of Curiosity, 1994) — Skill 1 of 6"
programs: [ZenithPro, Force Multiplier, Connect the Dots]
interface:
  invoke: "/loewenstein-curiosity-architect {funnel-or-content-description}"
  called_by: [user, loewenstein-information-flow]
  outputs_to: [client-output-folder]
girard_integration:
  feeds_from: [girard-model-map, girard-desire-propagation]
  feeds_to: [girard-mimetic-content-strategist]
  shared_data: "Model Map identifies WHO the audience is imitating. Curiosity Architect identifies WHAT GAPS exist between the audience's knowledge and the model's knowledge. Together they reveal: the audience wants what the model has (Girard), and here is the specific information gap that makes them feel that wanting as curiosity (Loewenstein)."
veblen_integration:
  feeds_from: [veblen-signal-decoder]
  feeds_to: [veblen-display-map]
  shared_data: "Signal Decoder reveals what status signals the brand is broadcasting. Curiosity Architect assesses whether those signals create information gaps (what's behind the signal?) or close them (signal is fully legible, no gap). Status signals that are partially legible create the strongest curiosity — you can see the result but not the mechanism."
---

# Loewenstein Curiosity Architect

---

## LAYER 1: INVARIANTS (Never override.)

1. **Assess audience knowledge level BEFORE evaluating gaps.** The inverted-U relationship means curiosity depends on what the audience already knows. Gaps designed for an informed audience will confuse beginners (not enough knowledge to feel the gap). Gaps designed for beginners will bore experts (they already know the answer). Every analysis must start with: "Where does this audience sit on the knowledge spectrum for this topic?"

2. **Classify every gap as diversive or specific.** Diversive curiosity = "ooh, interesting" → drives clicks, opens, views but NOT purchases. Specific curiosity = "I need to know THIS particular thing" → drives action (purchase, signup, attendance). If a funnel generates high attention metrics but low conversion, it's likely triggering diversive curiosity where it needs specific curiosity. This classification is mandatory for every identified gap.

3. **Information GIVEN creates more curiosity than information WITHHELD — when the audience starts at low knowledge.** This is the most counter-intuitive invariant. For cold audiences, the instinct to "tease" and "withhold" is exactly wrong. They don't have enough context to feel a gap. The skill must identify where the funnel needs to GIVE more to create more curiosity, not less. Total mystery = zero curiosity for an uninformed audience.

4. **Every gap must have a designed resolution point.** Unresolved gaps create frustration, not engagement. Map where each gap OPENS and where it CLOSES. If a gap opens in an email but never closes in the sales page, it's a broken gap — it generated curiosity that was wasted. If ALL gaps close before the purchase point, there's nothing pulling the buyer through.

5. **The five determinants must be checked.** For every curiosity trigger identified, tag which of Loewenstein's five determinants it uses: (a) question/puzzle posed, (b) sequence with unknown resolution, (c) violated expectations, (d) information possessed by someone else, (e) previously known but forgotten information. Overreliance on one determinant = vulnerability.

---

## LAYER 2: QUALITY GUIDANCE

6. **Track the curiosity arc across the full funnel.** Curiosity should build through a sequence, not spike and crash. Map the curiosity intensity at each stage: ad → landing page → email sequence → sales page → checkout. Flag where intensity drops below action threshold.

7. **Identify "curiosity killers."** Specific content patterns that close gaps prematurely: giving away the mechanism before the offer, answering the question in the subject line, revealing the punchline before establishing the setup. These are structural errors, not judgment calls.

8. **Cross-reference with Girard.** If Girard Model Map data exists, check whether the information gaps are MODEL-BASED (gap between what the model knows and what the audience knows). Model-based gaps generate stronger specific curiosity because the gap is personal — "that person knows something I don't" is more motivating than "there's a fact I don't know."

9. **Resolution quality matters as much as gap quality.** A brilliant gap followed by a disappointing resolution damages trust and future curiosity. Assess whether each resolution delivers proportional value to the intensity of the gap it closes. Under-delivering on resolution = clickbait pattern, even in long-form content.

---

## PURPOSE

Most marketing uses curiosity crudely — withhold information, use "mystery" subject lines, deploy cliffhangers. Loewenstein's research shows this works only under specific conditions and backfires under others. The most common failure: creating gaps for an audience that doesn't have enough knowledge to feel those gaps.

This skill audits the complete curiosity architecture of a funnel, content sequence, or campaign. It maps every gap, assesses the audience's knowledge level, classifies gaps by type, evaluates the temporal sequence, and identifies where curiosity is being created, sustained, killed, or wasted.

---

## INPUT REQUIREMENTS

Provide:
1. **The funnel or content to audit** — email sequence, sales page, launch sequence, content series, webinar, or ad-to-checkout flow
2. **Audience description** — who they are, what they likely already know about this topic, their sophistication level
3. **The desired action** — what the curiosity should drive toward (purchase, signup, attendance, share)

Optional:
- Existing Girard Model Map (adds model-based gap analysis)
- Conversion data (where drop-offs happen — this pinpoints where gaps are failing)
- Competitor content for comparison

---

## EXECUTION PROCESS

### Step 1: Audience Knowledge Assessment

Establish where the target audience sits on the knowledge spectrum for the primary topic. Use available data: what content they've already consumed, what stage of awareness they're in (unaware → problem-aware → solution-aware → product-aware → most-aware), and what sophistication level they operate at. This determines where on the inverted-U they sit and therefore what gap strategy will work.

### Step 2: Gap Inventory

Walk through every piece of content in the funnel/sequence. For each element (headline, subject line, hook, section, slide, email), identify:
- What information gap is created (if any)?
- Which of the 5 determinants does it use?
- Is it diversive (general interest) or specific (directed need-to-know)?
- Where does the gap resolve?
- What is the intensity level (1-10)?

### Step 3: Inverted-U Diagnosis

For each gap, assess whether the audience has enough existing knowledge to feel it. If the audience is at the low end of the knowledge spectrum, flag gaps that assume knowledge they don't have. If the audience is at the high end, flag gaps that are too basic to generate curiosity.

### Step 4: Sequence Analysis

Map the curiosity arc across the full sequence. Track how intensity rises and falls. Identify:
- **Dead zones** — stretches where no active gap is open
- **Overload zones** — too many open gaps creating confusion instead of curiosity
- **Premature closures** — gaps that resolve before the reader reaches the action point
- **Orphaned gaps** — gaps that open but never resolve anywhere in the funnel

### Step 5: Resolution Quality Audit

For every gap that resolves, assess whether the resolution delivers proportional value. Rate each resolution: (a) satisfying — gap closed with genuine insight, (b) adequate — gap closed but underwhelming, (c) disappointing — gap created expectations the resolution couldn't meet, (d) missing — gap never closed.

### Step 6: Recommendations

Produce specific, actionable redesign recommendations:
- Where to ADD information to create stronger gaps (inverted-U corrections)
- Where to CONVERT diversive gaps to specific gaps
- Where to FIX the temporal sequence (move resolutions, add gaps, eliminate dead zones)
- Where to IMPROVE resolution quality
- Where to ADD new gaps using underutilized determinants

### Step 7: Self-Examination

Deliver an honest assessment of the client's curiosity blind spots. Common ones:
- Overreliance on withholding (confusing secrecy with curiosity)
- Designing for their OWN knowledge level, not the audience's
- Optimizing for opens/clicks (diversive) when they need purchases (specific)
- Creating gaps that only work for warm audiences, then wondering why cold traffic doesn't convert

---

## OUTPUT STRUCTURE

### Curiosity Architecture Report — [Funnel/Content Name]

1. **Audience Knowledge Assessment** — where the audience sits on the knowledge spectrum, what this means for gap strategy
2. **Gap Inventory Table** — every identified gap with determinant, type (diversive/specific), intensity, resolution point, and resolution quality
3. **Curiosity Arc Map** — visual/textual map of curiosity intensity across the full sequence, with dead zones, overload zones, and premature closures flagged
4. **Inverted-U Diagnosis** — where the funnel assumes wrong knowledge levels, with specific corrections
5. **Resolution Audit** — which resolutions satisfy, disappoint, or are missing entirely
6. **Redesign Recommendations** — specific changes ranked by impact
7. **Self-Examination** — the client's curiosity blind spots and habitual errors
8. **Girard Cross-Reference** — (if Girard data exists) how model-based gaps could strengthen the architecture
9. **Veblen Cross-Reference** — (if Veblen data exists) how status signals create or close information gaps

---

## OUTPUT FILE PATH

Save to: `[project-vault]/Loewenstein - Curiosity Architect/[##] - Curiosity Architecture Report - [Funnel Name] - [YYYY-MM-DD].md`

Increment `##` for successive reports on different funnels/content.
