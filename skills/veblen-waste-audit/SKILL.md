---
name: veblen-waste-audit
description: "Audits whether a brand's non-functional excess — design luxury, production extravagance, curated exclusivity, over-built features — creates credible prestige or looks performative. Analyzes the workmanship-prestige spectrum: is the 'waste' read as proof of excellence or proof of try-hard? Produces a Waste Audit Report with each element scored, the brand's waste signature diagnosed, and specific adjustments. Use when: evaluating whether your production value is working for or against you, auditing competitor theatrics, or deciding where to invest in quality vs. where to strip back."
version: 1.0.0
author: Strategic Profits / Deep Marketing Thinkers Series
source_thinker: "Thorstein Veblen (Theory of the Leisure Class) — Skill 4 of 6"
programs: [ZenithPro, Force Multiplier, Connect the Dots]
interface:
  invoke: "/veblen-waste-audit {brand-or-materials}"
  called_by: [user, veblen-signal-decoder]
  outputs_to: [client-output-folder]
girard_integration:
  feeds_from: [girard-model-map]
  feeds_to: [veblen-signal-decoder, veblen-price-ladder]
  shared_data: "The Model Map reveals who the market imitates. The Waste Audit reveals whether those models' conspicuous waste is CREDIBLE or PERFORMATIVE — which determines whether imitating their production style carries prestige or looks like try-hard copying."
---

# Veblen Waste Audit

---

## LAYER 1: INVARIANTS (Never override.)

1. **Veblen's 'waste' is not pejorative — it's diagnostic.** In Veblen's framework, conspicuous waste is any expenditure that serves status display rather than functional purpose. A leather-bound journal is conspicuous waste (paper binds just as well). The question is not whether waste exists — it always does — but whether it creates CREDIBLE prestige or PERFORMATIVE excess. The audit must diagnose which.

2. **The workmanship-prestige spectrum is the core framework.** Every element of a brand's presentation sits somewhere between:
   - **Pure workmanship:** Functional excellence with no status display (engineer's mindset)
   - **Pure prestige:** Status display with no functional purpose (luxury theater)
   The sweet spot for most markets is elements that satisfy BOTH drives. The audit must score each element on this spectrum and identify where the brand is over-indexed on either end.

3. **Credibility threshold is market-specific.** What reads as credible prestige in one market reads as laughable excess in another. A $50,000 mastermind dinner at a Michelin-star restaurant may be credible for $10M+ founders and absurd for $300K founders. Every waste element must be evaluated against the SPECIFIC market's credibility threshold.

4. **Counter-signaling opportunity detection.** When the audit identifies elements where competitors are all investing in more waste (bigger events, flashier production, more elaborate bonuses), flag the counter-signaling opportunity: deliberately going SIMPLER than competitors to signal confidence and substance. Not every category rewards MORE.

5. **Self-audit honesty is non-negotiable.** When auditing the client's own brand, identify waste that the client is emotionally attached to but that isn't serving prestige. "I spent a lot on this" is not evidence that it works as a status signal. Sunk cost is not prestige value.

---

## LAYER 2: QUALITY GUIDANCE

6. **Waste reads differently at different tiers.** Apex-tier waste is invisible — it's baked into quality that the audience senses but can't pinpoint. Mid-tier waste is visible — "look at our production value!" Mass-tier waste is imitative — copying the visible waste of the tier above without the invisible quality underneath. Determine which type the brand is producing.

7. **The instinct of workmanship creates resistance to pure waste.** In markets where buyers value building and creating (founder markets, developer markets, creative markets), pure prestige with no workmanship component actively repels the best buyers. They read it as "this person spends money on appearances instead of building things." The audit must assess whether the market's workmanship instinct is being satisfied or insulted.

8. **Audit the conspicuous leisure dimension.** In addition to conspicuous consumption (spending money visibly), audit conspicuous leisure (spending time visibly). Content volume, response time, social media presence, event participation — these all signal how the founder spends their time, which is itself a status signal. Too much visible activity can signal "pecuniary employment" (working for money) rather than leisure-class sovereignty.

---

## PURPOSE

Veblen's insight about conspicuous waste explains why brands spend on things that don't functionally improve their product: premium packaging, high-end event venues, cinematic video production, elaborate onboarding experiences. These expenditures serve a social function — they signal that the brand can AFFORD to waste resources, which implies resources to spare, which implies success and reliability.

But there's a line. Below it, waste creates credible prestige. Above it, waste becomes performative and triggers skepticism. And in markets with strong workmanship values (founder markets especially), the line is LOWER than most marketers think. The audience doesn't want to see you spending money — they want to see you building things. Waste that's disguised as craft passes. Waste that's visible as display often fails.

This skill audits where each element of a brand's presentation sits relative to that line, producing a diagnostic that tells you where to invest more, where to strip back, and where counter-signaling (deliberate simplicity) would actually increase prestige.

---

## INPUT REQUIREMENTS

Provide:
1. **Brand to audit** — name, URLs, and/or marketing materials
2. **Market definition** — who the buyers are and their sophistication level
3. **Audit scope** — full brand audit or specific elements (event production, content quality, sales page design, etc.)

Optional:
- **Budget context** — helps assess whether waste is sustainable or stretching
- **Competitor examples** — enables relative waste assessment

---

## EXECUTION PROCESS

### Step 1: Waste Inventory

Catalog every non-functional element across the brand's touchpoints:

| Category | Element | Functional Purpose | Status Purpose | Cost Level |
|----------|---------|-------------------|----------------|------------|
| **Design** | Custom typography, premium photography, cinematic video | Visual communication | "We can afford excellence" | |
| **Production** | Event venue quality, AV production, print materials | Delivery | "Our standards are higher" | |
| **Content** | Over-built free resources, excessive detail, premium packaging for info products | Education | "We give more than we charge" | |
| **Access** | Application process, waitlist, delayed responses | Filtering | "Demand exceeds supply" | |
| **Proof** | Celebrity endorsements, media logos, elaborate case studies | Credibility | "Important people validate us" | |
| **Experience** | White-glove onboarding, personalized touches, luxury gifts | Service | "You're important to us" | |

### Step 2: Workmanship-Prestige Scoring

For each element, score on the spectrum:

```
1 ——— 2 ——— 3 ——— 4 ——— 5 ——— 6 ——— 7 ——— 8 ——— 9 ——— 10
Pure                    Both drives                       Pure
Workmanship            satisfied                         Prestige
```

- **1-3 (Workmanship-heavy):** Excellent quality but no status signal. The market doesn't notice the investment.
- **4-6 (Sweet spot):** Quality that ALSO signals status. Waste is invisible — baked into excellence.
- **7-8 (Prestige-leaning):** Status signal is visible. Works if market values display. Risks "try-hard" read if market values substance.
- **9-10 (Pure prestige):** All display, no substance. Works only in pure luxury markets. In founder/builder markets, this repels.

### Step 3: Credibility Assessment

For each element scoring 7+, assess:
- **Credibility with target market:** Does this audience read this waste as legitimate or performative?
- **Sustainability:** Can the brand maintain this waste level, or is it stretching?
- **Competitive necessity:** Is this waste required to stay at the brand's tier, or is it optional escalation?
- **Counter-signaling potential:** Would REMOVING this element and replacing with simplicity actually increase prestige?

### Step 4: Conspicuous Leisure Audit

Assess the brand's time-display signals:

| Signal | What It Says | Status Read |
|--------|-------------|-------------|
| High content volume | "I'm always working on this" | Pecuniary employment (low status) or Workmanship passion (context-dependent) |
| Selective presence | "I choose when to appear" | Leisure-class sovereignty (high status) |
| Slow response time | "I'm busy with important things" | Counter-signal IF established, Disorganized IF ascending |
| Visible delegation | "My team handles this" | Leisure-class signal — I don't do operational work |

### Step 5: Waste Signature Diagnosis

Synthesize all scores into a brand waste signature:

**The brand's waste signature is:** [One of the following]
- **Invisible excellence** — waste is baked into quality, not visible as display. (Ideal for sophisticated markets)
- **Visible quality** — waste is noticeable but reads as genuine investment. (Works for aspirational markets)
- **Performative prestige** — waste is overtly displayed. (Works for luxury, fails for founder markets)
- **Under-invested** — not enough waste to signal the brand's actual tier. (Common in workmanship-dominant brands)
- **Incoherent** — some elements are invisible excellence while others are performative prestige. (Confuses market)

### Step 6: Counter-Signaling Opportunities

Where competitors are escalating waste (bigger events, flashier production, more elaborate everything), identify opportunities to win through deliberate simplicity:
- What would it signal if you went simpler HERE while maintaining quality THERE?
- Which waste reductions would be read as confidence rather than cheapness?
- Where is the market's workmanship instinct being insulted by performative excess?

### Step 7: Recommendations

For each element audited:
- **Keep as-is** — waste is credible and serving prestige function
- **Invest more** — under-signaling at this brand's tier; invisible excellence needs to become visible quality
- **Strip back** — waste exceeds credibility threshold for this market; simplify
- **Counter-signal** — remove entirely and let the absence speak; the market will read restraint as confidence
- **Redirect** — waste investment is on the wrong axis (prestige when workmanship is needed, or vice versa)

---

## OUTPUT STRUCTURE

### Waste Audit Report

**Section 1: Waste Inventory**
Complete catalog of non-functional elements with functional vs. status purpose.

**Section 2: Workmanship-Prestige Scorecard**
Every element scored on the spectrum, with market-calibrated credibility assessment.

**Section 3: Waste Signature Diagnosis**
Overall brand diagnosis — which waste type dominates, and whether it matches the market.

**Section 4: Conspicuous Leisure Audit**
Time-display signals and their status read.

**Section 5: Credibility Threshold Analysis**
Where waste exceeds what the market finds credible, and where it falls short of tier expectations.

**Section 6: Counter-Signaling Opportunities**
Specific places where simplicity would increase rather than decrease prestige.

**Section 7: Girard Cross-Reference**
If Model Map data exists: what waste patterns are the market's desire models displaying? Is the client's waste signature aligned with or divergent from what the models do?

**Section 8: Recommendations**
Per-element actions: keep, invest, strip, counter-signal, redirect.

---

## OUTPUT FILE

Save complete report to:
`[project-folder]/Veblen - Waste Audit/01 - Waste Audit - [Brand Name] - [Date].md`
