---
name: veblen-signal-decoder
description: "Reads a single brand's visible signals and tells you what status story they're telling — whether they intend to or not. Decodes wealth vs. taste signals, detects counter-signaling, identifies signal incoherence, and maps the workmanship-prestige spectrum. Produces a Signal Decoder Report with the brand's actual status position, unintentional signals, and specific adjustments. Use when: auditing your own brand, analyzing a competitor, preparing a repositioning, or diagnosing why a brand's market perception doesn't match its intent."
version: 1.0.0
author: Strategic Profits / Deep Marketing Thinkers Series
source_thinker: "Thorstein Veblen (Theory of the Leisure Class) — Skill 2 of 6"
programs: [ZenithPro, Force Multiplier, Connect the Dots]
interface:
  invoke: "/veblen-signal-decoder {brand-or-url}"
  called_by: [user, veblen-status-intelligence]
  outputs_to: [client-output-folder]
girard_integration:
  feeds_from: [girard-model-map, girard-desire-autopsy]
  feeds_to: [veblen-status-intelligence, veblen-waste-audit]
  shared_data: "Model Map reveals who the market imitates. Signal Decoder reads what those models are actually displaying — and catches signals the model doesn't realize they're sending. Desire Autopsy can use decoded signals to explain why a launch's status positioning succeeded or failed."
---

# Veblen Signal Decoder

---

## LAYER 1: INVARIANTS (Never override.)

1. **Decode the ACTUAL signal, not the intended signal.** Brands intend to communicate one thing; they often communicate another. The decoder reads what the market SEES, not what the brand MEANS. If the brand says "premium" but every visible signal reads "aspirational try-hard," the decoder must say so.

2. **Every signal must be classified on two axes:**
   - **Wealth ↔ Taste** — Does this signal read as "I have money" or "I have discernment"?
   - **Intentional ↔ Accidental** — Is the brand deliberately sending this signal, or is it a byproduct they haven't noticed?
   Accidental signals are often more powerful than intentional ones — the market reads them as authentic.

3. **Counter-signaling must be distinguished from under-signaling.** Counter-signaling is DELIBERATE high-status restraint — the billionaire in a plain t-shirt KNOWS they could display wealth and chooses not to. Under-signaling is ACCIDENTAL low visibility — the brand simply hasn't invested in its signals. These look similar but mean opposite things. The decoder must determine which is operative.

4. **Signal incoherence is the primary diagnostic finding.** The most actionable output is identifying where signals contradict each other — premium pricing + cheap design, intellectual depth + hype language, exclusivity claims + mass-market tactics. Incoherence erodes trust and confuses the market's status reading.

5. **Self-examination standard.** When decoding the client's OWN brand, apply the same forensic rigor as a competitor audit. Identify blind spots — signals the client sends that they're unaware of. Flag where the client's self-perception diverges from what the signals actually communicate.

---

## LAYER 2: QUALITY GUIDANCE

6. **Read everything visible.** The brand speaks through: website, social media, pricing page, email tone, design quality, testimonial selection, event production, team visibility, response time, who they associate with, who they DON'T associate with. All of these are signals. A narrow audit (website-only) produces a narrow decode.

7. **The workmanship-prestige spectrum is always relevant.** Every signal sits somewhere between "I built something excellent" (workmanship) and "I am positioned above you" (prestige). For founder markets, the ideal is signals that serve BOTH — genuine craft that also functions as status. Pure prestige without substance repels serious buyers. Pure substance without status fails to trigger social purchase motivation.

8. **Status signal ≠ marketing effectiveness.** A signal can be status-coherent but marketing-ineffective, or status-incoherent but effective at a lower tier. The decoder reports the status read; effectiveness is a separate analysis.

---

## PURPOSE

Every brand tells a status story through its visible signals — price, design, language, associations, proof, accessibility. Most brands don't know what story they're telling. They design for conversion, not for status coherence. The result is mixed signals: the website says premium, but the sales page reads like a mass-market pitch. The founder says "exclusive" but the webinar feels like a cattle call.

This skill reads all visible signals for a single brand and produces a diagnostic: what status story is this brand ACTUALLY telling, where are the contradictions, what's the gap between intent and perception, and what specific changes would make the status signal coherent.

**Girard integration:** The Model Map identifies who the market imitates. The Signal Decoder tells you what status signals those models are broadcasting. If a model's signals are decoding as "wealth-dominant" but the market values "taste," there's a positioning gap that explains why the market admires them without buying from them.

---

## INPUT REQUIREMENTS

Provide one of:
1. **Brand name + market** — the skill will research visible signals via web
2. **URL(s)** — website, social profiles, sales pages for the brand to decode
3. **Marketing materials** — screenshots, copy, email sequences, ads

Optional:
- **The brand's intended positioning** — what they THINK they're communicating (enables gap analysis)
- **Market context** — who they compete with (enables relative status read)

---

## EXECUTION PROCESS

### Step 1: Signal Collection

Catalog every visible signal across 8 channels:

| Channel | What to Look For |
|---------|-----------------|
| **Pricing** | Price points, payment options, anchoring, free vs. paid split, discount frequency |
| **Design** | Visual quality, typography, imagery style, production value, minimalism vs. maximalism |
| **Language** | Vocabulary level, hype density, restraint, technical depth, "guru" markers |
| **Proof** | Testimonial caliber, social proof type, revenue claims, client logos, media features |
| **Access** | Application process, waitlists, response time, availability signals |
| **Associations** | Who they share stages with, who endorses them, who they reference |
| **Presence** | Social media frequency, content volume, engagement style, personal visibility |
| **Absence** | What they deliberately DON'T do that competitors do (counter-signaling candidates) |

### Step 2: Signal Classification

For each signal collected, classify:

**Type:**
- Wealth signal (displays resources, scale, financial success)
- Taste signal (displays discernment, intellectual depth, curation)
- Workmanship signal (displays craft, build quality, substance)
- Counter-signal (deliberate absence of expected status markers)

**Lifecycle:**
- Exclusive (few players use this signal)
- Aspirational (spreading to mid-tier)
- Saturated (widely copied)
- Exhausted (ubiquitous, no status value)

**Intent:**
- Intentional (the brand clearly designed this signal)
- Accidental (byproduct the brand may not be aware of)

### Step 3: Status Story Reconstruction

Based on the aggregate of all signals, reconstruct the status story the brand is ACTUALLY telling:

"This brand reads as [tier] because [signals]. The dominant signal type is [wealth/taste/workmanship/counter]. The market likely perceives this brand as [description]."

### Step 4: Incoherence Detection

Identify all points where signals contradict:

| Signal A | Says | Signal B | Says | Contradiction |
|----------|------|----------|------|---------------|
| Premium pricing | "I'm apex-tier" | Template website | "I'm ascending-tier" | Status reads as aspirational, not established |

### Step 5: Counter-Signaling Assessment

- Is this brand counter-signaling? (Y/N)
- If yes: what specific signals are they suppressing, and what does the suppression communicate?
- If no: SHOULD they be? (Based on their actual tier and market sophistication)
- Distinguish counter-signaling from under-investment

### Step 6: Workmanship-Prestige Mapping

Place the brand on the spectrum:

```
Pure Workmanship ←————————→ Pure Prestige
(substance, no status)        (status, no substance)
```

Where does this brand sit? Where SHOULD it sit for its market?

### Step 7: Self-Examination (if decoding client's own brand)

- Blind spots: signals the client sends but is unaware of
- Gap analysis: where intent ≠ perception
- Status behaviors: what the client's own consumption/display patterns signal to the market
- Honest tier placement: where the signals actually place the brand, regardless of where the client believes they sit

---

## OUTPUT STRUCTURE

### Signal Decoder Report

**Section 1: The Status Story**
One-paragraph summary of what this brand is actually communicating through its aggregate signals.

**Section 2: Signal Inventory**
Complete catalog, classified by type (wealth/taste/workmanship/counter), lifecycle stage, and intent.

**Section 3: Incoherence Map**
All contradictions between signals, ranked by severity (how much they confuse the market's status read).

**Section 4: Counter-Signaling Analysis**
What's present, what's absent, what the absence communicates, whether it's intentional.

**Section 5: Workmanship-Prestige Position**
Where the brand sits on the spectrum, where the market rewards, and the gap.

**Section 6: Blind Spots** (self-audit only)
Signals the brand doesn't know it's sending.

**Section 7: Girard Cross-Reference**
If Model Map data exists: how does this brand's status story align with the desire models the market is actually following? Is the brand's status position coherent with the mimetic desire structure?

**Section 8: Adjustments**
Specific signal changes — add, drop, modify — to make the status story coherent with the brand's intended position. Each adjustment must state what it changes in the market's status read.

---

## OUTPUT FILE

Save complete report to:
`[project-folder]/Veblen - Signal Decoder/01 - Signal Decoder - [Brand Name] - [Date].md`
