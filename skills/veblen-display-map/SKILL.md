---
name: veblen-display-map
description: "Maps the full vicarious display chain: how status flows from buyer → founder → community → outsiders. Every link in the chain either amplifies or degrades the brand's prestige. Tracks what each participant displays by association, identifies broken links, and designs display mechanics that make buyers WANT to signal their participation. Produces a Display Map Report with the complete chain, broken link diagnosis, and display amplification recommendations. Use when: designing community experiences, building referral mechanics, creating shareable proof, or diagnosing why a premium brand isn't generating word-of-mouth."
version: 1.0.0
author: Strategic Profits / Deep Marketing Thinkers Series
source_thinker: "Thorstein Veblen (Theory of the Leisure Class) — Skill 6 of 6"
programs: [ZenithPro, Force Multiplier, Connect the Dots]
interface:
  invoke: "/veblen-display-map {brand-or-community}"
  called_by: [user, veblen-status-intelligence]
  outputs_to: [client-output-folder]
girard_integration:
  feeds_from: [girard-model-map, girard-desire-propagation]
  feeds_to: [girard-mimetic-content-strategist, girard-field-intelligence]
  shared_data: "The Display Map shows how status signals propagate through the vicarious display chain. Desire Propagation (Girard) shows how desires spread through imitation. Together they reveal: display creates visibility → visibility creates models → models create desire → desire creates new buyers → new buyers enter the display chain. The loop is self-reinforcing when working, and invisible when broken."
---

# Veblen Display Map

---

## LAYER 1: INVARIANTS (Never override.)

1. **Map the complete chain, not just the buyer.** Vicarious display flows through multiple links:
   - **Buyer → Peers:** What does the buyer display to their peer group by being associated with this brand?
   - **Buyer → Founder:** What does the buyer's participation display about the founder?
   - **Founder → Market:** What does the founder's client roster display to the broader market?
   - **Community → Outsiders:** What do outsiders see when they observe this community from outside?
   - **Alumni → Next Cohort:** What do past participants display that generates demand from future participants?
   Every link must be mapped. A broken link anywhere in the chain kills the amplification effect.

2. **Vicarious display is Veblen's concept of STATUS BY ASSOCIATION.** The wife wearing the husband's wealth. The team using the founder's tools. The client name-dropping the mastermind. Each of these is someone displaying status THROUGH another person's prestige. This is not cynical — it's how human social systems work. The analysis must be precise about what status flows through each association link.

3. **Display must be VOLUNTARY to be credible.** Forced display (mandatory sharing, testimonial-as-requirement, public accountability that feels coerced) degrades prestige. The buyer should display association because it RAISES their status to do so — not because the brand requires it. If the display chain only works through obligation, the prestige signal is fake and the market eventually reads it as such.

4. **Counter-signaling in display is possible and powerful.** Some buyers display their participation precisely by NOT mentioning it — the "if you know, you know" dynamic. When a group is exclusive enough, NOT talking about it openly signals that you're truly inside, while talking about it signals you're still new and impressed. The map must identify where counter-signaling display is operative.

5. **Broken links must be diagnosed, not just noted.** For every weak or broken link in the chain, identify: WHY isn't status flowing through this link? Is it because (a) the association doesn't carry prestige, (b) there's no mechanism for display, (c) the display would LOWER rather than raise the displayer's status, or (d) the link is invisible — outsiders can't see it?

---

## LAYER 2: QUALITY GUIDANCE

6. **The outsider's view is the most undervalued link.** Most brands think about what their MEMBERS experience. Few think about what NON-MEMBERS see. The outsider's view of the community is what generates desire for entry. If outsiders see a thriving, high-status group, they want in. If outsiders see nothing (invisible community) or something unappealing (public drama, humble-brag culture), the display chain fails at the point of new desire generation.

7. **The instinct of workmanship shapes display preferences.** In builder/founder markets, the most prestigious display is RESULTS — "I built this using what I learned there." The least prestigious display is ACCESS — "I'm in the room with important people." The audit should assess which display mode the community rewards and whether it matches the market's workmanship instinct.

8. **Conspicuous leisure intersects with display.** How VISIBLE is the founder's time investment in the community? A founder who is visibly present signals that the community matters to them (positive). A founder who is visibly absent signals leisure-class sovereignty (also positive, but differently). The balance between presence and absence is itself a display signal.

---

## PURPOSE

Veblen's concept of vicarious display explains why some brands generate organic word-of-mouth and others don't: the brands that grow through display create conditions where BEING SEEN as a participant RAISES the buyer's status. The brands that don't grow through display either: (a) create no mechanism for visibility, (b) create a display that lowers rather than raises status, or (c) break a link in the chain so status doesn't flow.

This skill maps the entire display chain — every link, every signal, every break — and produces a diagnostic that tells you where the chain is working, where it's broken, and how to fix the broken links so that participation becomes self-amplifying.

**Girard integration:** In Girard's framework, desire spreads through visibility — we want what we see others wanting. In Veblen's framework, status spreads through display — we signal status by showing what we've acquired. The Display Map is where these two systems merge: the act of displaying creates the models that generate new desire. Display → Model creation → Desire → Purchase → New display. When this loop is working, the brand grows through its own community's status signaling. When it's broken, the brand has to rely entirely on paid acquisition.

---

## INPUT REQUIREMENTS

Provide:
1. **Brand/community to analyze** — the product, program, or community being mapped
2. **Community structure** — tiers, cohorts, access levels, communication channels
3. **Target market** — who the buyers are and who they want to be seen by

Optional:
- **Existing display mechanisms** — referral programs, testimonial systems, community visibility features
- **Alumni data** — what past participants do/say about the experience
- **Outsider perception data** — how non-members perceive the community

---

## EXECUTION PROCESS

### Step 1: Chain Link Identification

Map every link in the display chain:

```
[Buyer] ——displays to——→ [Their Peers]
    ↕                         ↕
[Founder] ←——displays through——→ [Community Members]
    ↓                         ↓
[Market at Large] ←——sees——→ [Outsiders Looking In]
    ↓
[Next Cohort of Buyers]
```

For each link, answer:
- What specific status signal flows through this link?
- Is the signal visible to the receiving party?
- Is the display voluntary?
- Does displaying RAISE or LOWER the displayer's status?

### Step 2: Buyer-to-Peer Display Analysis

What does the buyer display to their peer group?

| Display Mechanism | What Is Displayed | Status Effect | Voluntary? |
|-------------------|-------------------|---------------|-----------|
| Name-dropping membership | "I'm in Rich's program" | Depends on Rich's status in that peer group | Y/N |
| Sharing results | "I built X using the system" | High — workmanship display | Y |
| Sharing content from the community | "Look what I learned" | Medium — taste display (curated knowledge) | Y |
| Visible behavior change | "I think about business differently now" | Subtle but powerful — identity display | Y |
| Social media mention | Tagging, quoting, posting about experience | Depends on community's perceived status | Y/N |

### Step 3: Community-to-Outsider Display Analysis

What do outsiders see when they look at this community?

- **Visible signals:** What aspects of the community are publicly observable? (Social media activity, member testimonials, event photos, content output)
- **Invisible signals:** What aspects are hidden? (Private channels, NDA'd conversations, behind-closed-doors dynamics)
- **The FOMO calculation:** Is the outsider's view curated to create desire for entry, or is it accidental/unmanaged?
- **Counter-signaling check:** Is the community deliberately invisible, and does this invisibility create MORE desire (exclusivity) or LESS (obscurity)?

### Step 4: Founder Display Analysis

What does the founder display through the community?

| Signal | What It Communicates | To Whom |
|--------|---------------------|---------|
| Client caliber | "Look who works with me" | Market at large |
| Client results | "My clients achieve X" | Prospective buyers |
| Community engagement | "I'm actively involved" | Current members (presence = value) |
| Selective access | "Not everyone gets my time" | Market (scarcity signal) |

### Step 5: Alumni Chain Analysis

What happens after someone leaves?

- Do alumni continue to identify with the community? (Ongoing display)
- Do alumni refer others? (Active propagation of the display chain)
- Do alumni achieve visible results that can be attributed to the experience? (Delayed display)
- Do alumni distance themselves? (Display chain break — WHY?)

### Step 6: Broken Link Diagnosis

For each weak or broken link, diagnose the cause:

| Broken Link | Symptom | Root Cause | Fix Category |
|-------------|---------|------------|-------------|
| Buyer → Peers | Members don't mention participation | Mention would LOWER status in their peer group | Prestige problem |
| Community → Outsiders | No organic inbound from community visibility | Community is invisible to non-members | Visibility problem |
| Founder → Market | Founder's client roster isn't visible | No mechanism for display | Mechanism problem |
| Alumni → Next Cohort | No referrals from past participants | Experience didn't create display-worthy transformation | Value problem |

### Step 7: Display Amplification Design

For each link in the chain, design mechanics that make display NATURAL and STATUS-ENHANCING:

**Principles:**
- Display must raise the displayer's status (self-interest alignment)
- Display must be voluntary (coerced display = prestige death)
- Display should showcase RESULTS and TRANSFORMATION, not just ACCESS (workmanship > prestige in builder markets)
- Display should be visible to the RIGHT audience (the displayer's peer group, not a general audience)
- Counter-signaling display ("if you know, you know") should be designed for apex-tier members

**For each recommendation, specify:**
- The mechanism (what exactly to create/change)
- The status incentive (why the participant WANTS to display)
- The audience (who sees it)
- The desire it generates (what the observer begins to want)

---

## OUTPUT STRUCTURE

### Display Map Report

**Section 1: The Display Chain**
Visual map of all links with status signals flowing through each, marked as STRONG / WEAK / BROKEN.

**Section 2: Buyer-to-Peer Display**
What members display, how, whether it raises their status, and what mechanisms exist.

**Section 3: Community-to-Outsider Display**
What the outside world sees, whether it generates desire for entry, and the FOMO dynamics.

**Section 4: Founder Display**
What the founder's association with the community signals to the broader market.

**Section 5: Alumni Chain**
Whether display continues after participation ends, and what alumni do with their association.

**Section 6: Broken Link Diagnosis**
Every weak or broken link with root cause analysis.

**Section 7: Girard Cross-Reference**
How the display chain feeds the mimetic desire cycle: which displays create new models, which models generate new desire, which desire generates new purchases. Where the Veblen display chain and the Girard desire cycle reinforce each other, and where they conflict.

**Section 8: Display Amplification Recommendations**
Specific mechanics to strengthen each link — with status incentive, audience, and expected desire generation.

---

## OUTPUT FILE

Save complete report to:
`[project-folder]/Veblen - Display Map/01 - Display Map Report - [Brand or Community] - [Date].md`
