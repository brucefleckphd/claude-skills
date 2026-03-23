---
name: veblen-price-ladder
description: "Analyzes pricing as a status device, not just a revenue mechanism. Each tier in a price ladder creates social meaning — it tells the market WHO buys at this level and WHAT that says about them. Detects where low-end offers collapse premium narrative, where gaps in the ladder create status confusion, and where pricing signals contradict brand positioning. Produces a Price Ladder Report with status read per tier, narrative coherence analysis, and restructuring recommendations. Use when: building an offer ladder, adding or removing a tier, diagnosing why a premium offer isn't selling, or auditing competitor pricing strategy."
version: 1.0.0
author: Strategic Profits / Deep Marketing Thinkers Series
source_thinker: "Thorstein Veblen (Theory of the Leisure Class) — Skill 5 of 6"
programs: [ZenithPro, Force Multiplier, Connect the Dots]
interface:
  invoke: "/veblen-price-ladder {brand-or-offer-structure}"
  called_by: [user, veblen-status-intelligence]
  outputs_to: [client-output-folder]
girard_integration:
  feeds_from: [girard-model-map, girard-rivalry-detector]
  feeds_to: [veblen-waste-audit, veblen-display-map]
  shared_data: "Rivalry Detector identifies peer competition clusters. Price Ladder reveals how pricing creates or resolves those rivalries — when peers at the same tier can buy different price levels, the price gap generates invidious comparison ('I'm in the top tier, you're not'). Model Map shows which desire models are associated with which price tier."
---

# Veblen Price Ladder

---

## LAYER 1: INVARIANTS (Never override.)

1. **Every price point is a status statement.** Price doesn't just determine revenue — it tells the market what kind of person buys at this level. $47 says "anyone can afford this." $4,997 says "this is for committed operators." $50,000 says "this is for people who don't think in thousands." Each price tier creates a SOCIAL IDENTITY for its buyers. The analysis must decode what identity each price point creates.

2. **The ladder must tell a coherent status STORY.** The sequence from lowest to highest tier should read as a clear social progression — not just "more features for more money" but "a different kind of person at each level." When the progression is incoherent (a $97 offer sits next to a $25,000 offer with nothing between them), the market can't read the social meaning, and the premium tier suffers.

3. **Low-end offers can collapse premium narrative.** This is the most common and most dangerous pricing mistake in premium markets. A $27 tripwire for the same brand that sells $25K masterminds sends the signal: "This brand serves the $27 market." The premium buyer sees this and questions whether the brand is REALLY for them. The audit must identify where low-end offers are eroding premium positioning.

4. **Veblen goods analysis required.** A Veblen good is one where demand INCREASES as price increases — the price IS the value, because it signals exclusivity. The audit must identify which offers in the ladder (if any) function as Veblen goods, where raising the price would INCREASE rather than decrease demand. Not every product is a Veblen good, but in premium markets, the top tier often is.

5. **The price gap between tiers carries meaning.** A 2x gap (e.g., $997 → $1,997) says "slightly more committed." A 10x gap (e.g., $997 → $9,997) says "completely different person." A 50x gap (e.g., $97 → $4,997) says "these offerings have nothing to do with each other." The gaps BETWEEN tiers are as important as the tiers themselves.

---

## LAYER 2: QUALITY GUIDANCE

6. **Pecuniary emulation drives tier selection.** Buyers don't choose a price tier purely on ROI calculation. They choose the tier that matches the social identity they want to claim. A $500K/year founder choosing the $997 tier when they can afford the $9,997 tier is making a STATUS choice: "I'm not going to signal that I need premium help." This means the tier descriptions and naming must create social meaning that makes the RIGHT buyer feel the RIGHT tier is their identity match.

7. **Invidious comparison within a tier drives upsells.** When multiple people at the same status level are in the same tier, some will want to differentiate. Adding an "upgrade" within a tier serves this invidious comparison — it lets the competitive buyer signal "I'm in the same room, but I went further." This is different from the next tier; it's within-tier status differentiation.

8. **The instinct of workmanship shapes price perception.** In builder markets, a high price is justified by WHAT YOU BUILD, not just WHAT YOU GET. "Invest $25,000 and you'll build a system that runs your business" satisfies workmanship. "Invest $25,000 and you'll get access to an exclusive room" satisfies prestige. Most premium offers need both, but the RATIO depends on the market. The audit should assess whether each tier's justification is workmanship-weighted or prestige-weighted, and whether that matches the buyer.

---

## PURPOSE

Most pricing analyses focus on: customer lifetime value, willingness to pay, competitive pricing, and margin optimization. These are all valid. But they miss the social dimension: price creates IDENTITY. Every price tier tells the market "the kind of person who buys here is [X]."

When the price ladder's social narrative is coherent, buyers self-select into the right tier and feel good about it — they're not just buying a product, they're claiming a social position. When the narrative is incoherent, buyers feel uncertain, premium tiers under-sell, and low-end offers cannibalize the brand's status.

Veblen's framework reveals what conventional pricing analysis can't: why a $5K offer outsells a $2K offer in the same market (the $5K buyer doesn't want to be a $2K person), why adding a low-end offer can destroy a premium brand's positioning, and why some price points create demand rather than suppressing it.

**Girard integration:** The Rivalry Detector shows where peer competition is most intense. The Price Ladder reveals how pricing creates or resolves those rivalries. When peers can buy into different tiers, the tier gap generates social differentiation that feeds rivalry. When they're all in the same tier, the competition shifts to within-tier status markers. Understanding this dynamic prevents pricing that accidentally defuses the competitive desire that drives premium purchasing.

---

## INPUT REQUIREMENTS

Provide:
1. **The offer ladder** — all products/services, their price points, and a brief description of each
2. **Target market** — who buys, revenue range, sophistication level
3. **Brand context** — intended positioning (premium, accessible, exclusive, etc.)

Optional:
- **Competitor pricing** — for relative status read
- **Sales data by tier** — for pattern analysis (which tiers over/under-perform expectations)
- **Tier descriptions/names** — the language used to describe each tier to buyers

---

## EXECUTION PROCESS

### Step 1: Ladder Inventory

Map the complete ladder:

| Tier Name | Price | Buyer Identity Created | Gap to Next Tier | Justification Type |
|-----------|-------|----------------------|------------------|-------------------|
| [Name] | $[X] | "[Description of who this person is]" | [Ratio] | Workmanship / Prestige / Both |

### Step 2: Social Identity Decode

For each tier, articulate the social identity it creates:
- What does it say about someone who buys at this level?
- What does it say about someone who could afford this level but DOESN'T buy?
- How would a buyer at this level describe themselves to a peer? ("I'm in Rich's [X] program" — what status does that claim?)
- Is this the identity the BRAND intends, or is there a gap?

### Step 3: Narrative Coherence Analysis

Read the full ladder as a story — lowest to highest:
- Does each step feel like a natural status progression?
- Are there gaps where the narrative jumps too far? (Missing a tier that would bridge the social identities)
- Are there contradictions where a lower tier undermines a higher tier's status claim?
- Is there a clear "apex" tier, or does the top feel like "just more of the middle"?

### Step 4: Low-End Erosion Check

If the brand has low-price offers ($27-$197):
- Do these offers appear alongside premium offers on the same site/funnel?
- Can a prospect see both the $47 offer and the $25,000 offer in the same visit?
- Does the existence of the low-end offer make the premium offer's exclusivity claim less credible?
- **Critical question:** If a $50K/year founder sees the $47 offer first, does it change their perception of the $25,000 offer?

### Step 5: Veblen Good Identification

For each tier, assess:
- Would demand increase if price increased? (Veblen good characteristic)
- Is the price itself part of the value proposition? ("It costs $25K because it's WORTH being selective about who's in the room")
- Is the current price anchored to cost/value or to social meaning?
- Where is the brand leaving Veblen good dynamics on the table by pricing too low?

### Step 6: Gap Meaning Analysis

For each gap between tiers:
- **2-3x gap:** "Slightly more committed" — same social identity, different commitment level
- **5-10x gap:** "Different kind of person" — distinct social identities
- **20x+ gap:** "Different world" — may need a bridging tier or a separate brand
- Is each gap intentional and working, or accidental and confusing?

### Step 7: Workmanship-Prestige Balance Per Tier

For each tier, assess the justification:
- **Workmanship-weighted:** "You build X, install Y, create Z" — the price is justified by what the buyer DOES
- **Prestige-weighted:** "You access the room, the network, the exclusivity" — the price is justified by what the buyer JOINS
- **Balance assessment:** Does the justification type match what THIS buyer values? (Builder markets want workmanship justification for lower tiers and prestige justification only at the apex)

### Step 8: Competitor Price Position Mapping (if data provided)

Map client's ladder against competitor ladders:
- Where is the client priced above, below, or at parity?
- What social meaning do the relative positions create? ("Cheaper than X" has status implications)
- Are there unoccupied price positions that could claim unique social territory?

### Step 9: Restructuring Recommendations

Based on the full analysis:
- **Tiers to add** — missing steps in the social progression
- **Tiers to remove** — low-end offers eroding premium, or redundant tiers with no distinct social identity
- **Prices to change** — specific tiers where price adjustment would improve the status narrative
- **Names to change** — tier naming that creates the wrong social identity
- **Gaps to adjust** — where the distance between tiers needs to grow or shrink
- **Veblen opportunities** — where raising the price would increase demand

---

## OUTPUT STRUCTURE

### Price Ladder Report

**Section 1: Current Ladder Map**
Visual representation of all tiers with prices, buyer identities, and gap ratios.

**Section 2: Social Identity Decode**
What each tier actually says about its buyers, vs. what the brand intends.

**Section 3: Narrative Coherence Score**
How well the ladder reads as a continuous status story. Identifies breaks, contradictions, and gaps.

**Section 4: Low-End Erosion Assessment**
Whether low-price offers are damaging premium positioning, and how.

**Section 5: Veblen Good Analysis**
Which tiers function (or could function) as Veblen goods, and pricing implications.

**Section 6: Workmanship-Prestige Balance**
Per-tier assessment of justification type and market fit.

**Section 7: Girard Cross-Reference**
How the price ladder interacts with mimetic desire: which tiers the market's desire models are associated with, where peer rivalry drives tier selection, where Veblen pricing dynamics and Girardian desire converge.

**Section 8: Restructuring Recommendations**
Specific changes to tiers, prices, names, gaps, and positioning — each tied to the status narrative logic.

---

## OUTPUT FILE

Save complete report to:
`[project-folder]/Veblen - Price Ladder/01 - Price Ladder Report - [Brand Name] - [Date].md`
