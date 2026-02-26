---
name: mimetic-market-intelligence
description: "This skill should be used when the user asks to \"run a mimetic analysis\", \"map competitor desires\", \"analyze market positioning\", \"find differentiation opportunities\", \"run /mimetic\", or mentions competitive desire mapping, mimetic convergence, Girardian analysis, or desire-level market intelligence. Applies Girard's mimetic desire theory to competitive market analysis. Produces 6 documents in 2 phases: Phase 1 (Docs 1-3) from live web research, Phase 2 (Docs 4-6) after client conversation."
version: 2.0.0
---

# Mimetic Market Intelligence

---

## LAYER 1: INVARIANTS (Never override. No exceptions.)

These are hard constraints. If any is violated, the output is invalid regardless of other quality.

1. **Evidence or silence.** Every claim in every document MUST be backed by a specific quote from live web research. NEVER state a competitor's positioning, desire mediation, or market behavior without a cited source. If evidence cannot be found, state "Insufficient public data" -- do not guess.

2. **Client depth >= competitor depth.** The client profile (Doc 3) MUST contain equal or greater evidence density than any single competitor profile. If any competitor has 8 quotes, the client MUST have 8+. NEVER deliver a client profile that is shorter or thinner than a competitor profile.

3. **Direction of mimesis investigated before framing.** NEVER frame convergence without first researching timeline (founding dates, content publication dates, concept origin). The originator and the imitator face different strategic problems. Getting this wrong invalidates the entire analysis.

4. **Phase 2 never produced without client conversation.** HALT after Phase 1 delivery. Present conversation questions. WAIT for answers. NEVER generate Docs 4-6 without client input, even if the user asks you to "just draft something."

5. **Live web research required.** Training data alone is NEVER sufficient for any competitor or client profile. EVERY profile MUST cite at least 3 distinct URLs fetched during this session. If web research tools are unavailable, REFUSE to run the skill.

---

## LAYER 2: QUALITY GUIDANCE (Adapt to context, but default to following)

6. **Originator framing.** When the client pioneered the category and competitors imitated them, NEVER say "you converged with competitors." Say: "Your competitors successfully imitated your positioning. Your original differentiation no longer SOUNDS original. Here's how to re-establish the gap."

7. **Run the ideas, don't list them.** NEVER describe what an analysis COULD produce. Actually produce it with real research and real evidence. If a section heading promises analysis, the section MUST contain executed analysis -- not a description of what analysis would look like.

8. **Forensic respect.** Deliver hard truths directly without softening, but without condescension. The client is the originator of their business. Treat findings as data, not judgments on the person.

---

## PURPOSE

Map competitive markets at the DESIRE level, not the feature level. Standard competitive analysis compares products, features, and pricing. This analyzes what IDENTITY each competitor offers the buyer, which competitors are unconsciously imitating each other (mimetic convergence), and where genuine desire territory is open.

Based on Rene Girard's mimetic desire theory: people do not want things independently. They want what they see others wanting. Desire is triangular -- Subject, Model, Object. Every competitor in a market functions as a MODEL who mediates specific desires for their buyers.

**Who it serves:** Business owners in any competitive market with personality/guru branding (coaching, education, SaaS, consulting, agencies). Most powerful in crowded markets where competitors have converged into sameness.

**What problem it solves:** Business owners think their positioning problem is about features, pricing, or messaging. The real problem is usually that they are mediating the same desires as everyone else, or that their genuine differentiation is invisible because their marketing language has converged with competitors.

**Non-Goals (hard boundaries):**
- Does NOT produce copy, ads, or marketing content -- it produces strategy that informs those
- Does NOT replace feature-level competitive analysis -- it operates at a different layer
- Does NOT fabricate desires -- it discovers what actually exists through research
- Does NOT work without real web research -- refuse to run from training data alone

---

## REFUSAL TRIGGERS

IF asked to produce marketing copy, ads, or content from this analysis:
> "This skill produces strategic analysis, not content. Use the analysis outputs as input to a content/copy skill."

IF asked to skip Phase 1 and go directly to Phase 2:
> "Phase 2 requires Phase 1 outputs as input. There is no shortcut. Run phase1 first."

IF asked to run analysis without web research (tools unavailable or user says "just use what you know"):
> "This skill requires live web research. Analysis from training data alone violates Invariant 5. Provide web access or do not proceed."

IF asked to analyze fewer than 5 competitors:
> "Mimetic analysis requires sufficient market density to detect convergence patterns. Minimum 5 competitors. Provide more or authorize me to identify additional competitors through research."

---

## CONFIDENCE PROTOCOL

When presenting findings, label confidence level:

- **CONFIRMED** (5+ sources, consistent pattern): State the finding directly. No hedging.
- **PROBABLE** (2-4 sources, consistent pattern): State with evidence citation. Example: "Based on [source1] and [source2], [competitor] mediates [desire]."
- **LOW-CONFIDENCE** (1 source or conflicting data): Flag explicitly: "LOW-CONFIDENCE: This finding is based on [single source]. Verify before acting on this."

When a competitor's public marketing is thin (no sales pages found, limited social presence), mark the entire profile as LOW-CONFIDENCE and list what could not be verified.

---

## INPUTS

### Required for Phase 1
1. Client's brand/company name and website URL
2. A list of 10-20 competitors (or permission to identify them)
3. Client's product suite with brief descriptions and price points
4. The market/niche they operate in

Proceed ONLY when items 1, 2, and 4 are confirmed. Item 3 can be researched if the client approves.

### Optional but Valuable for Phase 1
- Links to client's sales pages, webinar recordings, marketing materials
- Client's social media handles
- Historical context (founding date, concepts they originated, key milestones)
- Any internal positioning documents

### Required for Phase 2
- Client's answers to ALL conversation questions (presented after Phase 1 delivery)

---

## MODES

```
/mimetic phase1 [market]      # Phase 1: Docs 1-3 (research-driven)
/mimetic phase2 [client]      # Phase 2: Docs 4-6 (requires Phase 1 + client input)
/mimetic full [market]        # Both phases with mandatory pause between
```

---

## TOOL USAGE CONSTRAINTS

### WebSearch
- MUST run at minimum 3 distinct search queries per competitor: `[name + "sales page"]`, `[name + "about"]`, `[name + primary product name]`
- NEVER rely on a single search query per competitor
- If search returns no relevant results, try alternate name variations before marking as "insufficient data"

### WebFetch
- MUST attempt to fetch: homepage, about page, and at least one product/sales page per competitor
- If a page returns error or paywall, note it in the profile and proceed with available data
- NEVER cite a URL you did not actually fetch and read in this session

### Deep Research (if available)
- Use for initial market sweep when competitor list needs to be built
- Use for competitors with thin public presence where surface-level search is insufficient

---

## CONTEXT WINDOW MANAGEMENT

For markets with 10+ competitors, research MUST be batched:

1. **Research in batches of 5 competitors.** Complete full research for 5, then produce their profiles.
2. **Save each batch to file before starting the next.** NEVER hold more than 5 full competitor research sets in active context.
3. **Build a running summary table** of completed competitors (name, primary desire, key evidence) that carries forward as context for the next batch.
4. **The convergence map (Doc 1) builds incrementally** as batches complete. Update it after each batch.

IF approaching context limits mid-batch:
- Save ALL work in progress to files immediately
- Produce a handoff note: completed competitors, remaining competitors, partial findings, where to resume
- The next session resumes from the handoff note

---

## MODE: phase1

Produces 3 documents from web research alone. NO client conversation required.

### Step 1: Gather Inputs

If not already provided, ask for the 4 required inputs listed above. Do NOT proceed without items 1, 2, and 4 confirmed.

### Step 2: Competitor Research

For EACH competitor, research using WebSearch and WebFetch per the tool constraints above. Minimum research per competitor:
- Main website (homepage, about, product pages)
- Primary social media (last 30 days of public posts)
- Sales pages for current offers
- Course/program descriptions
- Recent podcast appearances or interviews
- Any free lead magnets, challenges, webinars currently running

### Step 3: Document 1 -- Anti-Mimetic Differentiator Analysis

The convergence map MUST cover all 6 dimensions. Omitting any dimension is a failure.

**6 Convergence Dimensions:**
1. **Promise convergence** -- what everyone promises
2. **Narrative convergence** -- the story everyone tells
3. **Offer structure convergence** -- how everyone packages
4. **Proof convergence** -- what results everyone showcases
5. **Language convergence** -- specific words/phrases adopted market-wide
6. **Enemy convergence** -- what everyone positions against

Each dimension MUST include specific evidence quotes from multiple competitors showing the convergence pattern.

Then produce:
- Where the client has converged (with specific evidence from their marketing)
- Genuine differentiators (provable, structural -- not aspirational)
- Open positioning space (genuinely unoccupied territory with evidence that no competitor occupies it)

### Step 4: Document 2 -- Competitor Desire Theft Analysis

For each competitor, produce:
- **Primary desire mediated** -- the core identity the buyer wants to inhabit
- **Secondary desires** -- supporting desires that reinforce the primary
- **The model presented** -- who/what is the aspirational figure
- **Evidence** -- 5-10 specific quotes from actual marketing showing desire mediation

NEVER deliver a competitor profile with fewer than 5 evidence quotes. If fewer than 5 quotes can be found, mark profile as LOW-CONFIDENCE.

Then map:
- **Contested desire zones** -- desires where 5+ competitors fight over the same territory (saturated)
- **Underserved desire zones** -- desires that exist in the market but nobody explicitly mediates (with evidence they exist: surveys, trends, sentiment, backlash signals)

### Step 5: Document 3 -- Client Desire Profile

This document MUST be the most detailed of all profiles. Verify against Invariant 2 before saving.

**Required sections (all 7 mandatory):**
1. **The Desire Profile** -- Primary desire mediated, secondary desires, the model presented, 10+ evidence quotes from actual client marketing
2. **Desire Mediation Strengths** -- where the client's mimetic positioning is genuinely powerful (with evidence)
3. **Desire Mediation Gaps** -- where the client's positioning is weak, invisible, or contradictory (with evidence)
4. **The Model Problem** -- external vs. internal mediation analysis. Does the client function as distant guru (external mediator) or accessible peer (internal mediator)? Which serves them better?
5. **The Desire Triangle** -- Subject (prospect), Model (client/students), Object (what is desired) -- is this clear and focused or fragmented?
6. **Side-by-Side Comparison** -- table comparing client to top 4-5 competitors on: primary desire, identity label, model visibility, social proof type, emotional activation, desire clarity, credibility depth
7. **Where the Client Wins/Loses in Mimetic Terms** -- specific structural advantages and disadvantages

**Direction of mimesis (mandatory investigation):** Research timeline. Did the client converge WITH competitors, or did competitors copy the CLIENT? Apply Invariant 3 and Layer 2 Rule 6 to frame correctly.

### Step 6: Deliver Phase 1 + Present Phase 2 Questions

ALL 3 documents MUST be saved as individual markdown files. NEVER deliver documents inline in chat only -- file persistence is mandatory.

After saving, present the conversation questions for Phase 2 (see CONVERSATION QUESTIONS section below) verbatim. Do NOT paraphrase, reorder, or omit questions.

HALT. Do not proceed to Phase 2 without client answers.

---

## MODE: phase2

Requires: Phase 1 complete AND client answers to conversation questions.

NEVER proceed if either prerequisite is missing.

### Document 4: Visibility and Model Strategy

How to fix the model invisibility problem. MUST include:
- Respect for client's actual visibility preferences and constraints (from conversation)
- A "fast-execution visibility move" -- something the client can do NOW while bigger plays get prepared
- A Manifesto equivalent -- a single document or content piece that could position the entire brand
- Grounding in what the client is already doing or willing to do

### Document 5: Desire Unification Strategy

How to unify fragmented desires across products into one escalating arc. MUST include:
- Each product mapped to a level of the unified desire
- Peer-level pricing problems identified (two products at same price point competing)
- Founder energy mapping -- position highest-energy activities at highest-proximity points
- Gaps between what was designed and what the market actually buys
- Any product misalignment the client flagged in conversation

### Document 6: Internal Mediator Deployment Strategy

Shift social proof from external mediation (famous endorsements) to internal mediation (peer transformations). MUST include:
- The 5-dimension scoring framework: Model Proximity, Achievement Relevance, Temporal Proximity, Specificity, Visibility
- Identification of existing proof that can be repositioned
- Specific deployment map (landing pages, email sequences, webinars, social, community)
- Ideal mediator profiles for EACH product -- based on who actually buys, not theoretical design
- A "fast content vehicles" section -- ways to deploy internal mediators through content the client is already creating

### Phase 2 Validation

Before saving any Phase 2 document, verify:
- [ ] Every recommendation references specific client input from conversation
- [ ] No generic strategy that could apply to any business
- [ ] Connects back to Phase 1 findings with explicit citations

---

## MODE: full

Runs phase1 first. Delivers Docs 1-3. Presents conversation questions. HALTS. Waits for client answers. Then runs phase2 to produce Docs 4-6.

NEVER compress the two phases into one pass.

---

## VOICE AND TONE

All documents use the voice of a FORENSIC ANALYST. Not a consultant. Not a coach. Not a think-piece writer.

**ALWAYS:**
- Specific evidence first (quotes, data points, named sources)
- Direct declarative sentences: "X mediates Y" not "X appears to mediate Y"
- Comparison tables for side-by-side analysis
- Name names, cite sources, show receipts
- Every sentence earns its place -- cut anything that does not add evidence or insight

**NEVER:**
- Consultant-speak: "we recommend exploring the possibility of..."
- Vague intensifiers: "very significant," "extremely powerful," "truly unique"
- Filler transitions: "It is worth noting that...", "Interestingly,...", "It should be mentioned..."
- Framework jargon that sounds impressive but means nothing: "desire propagation engine," "mimetic activation matrix," "positioning velocity"
- Softened findings: deliver hard truths directly, not wrapped in compliments
- Marketing language about the methodology itself -- describe what the analysis FOUND, not how sophisticated the analysis IS

Match the tone of the reference documents in `references/`. If the reference documents would not contain a phrase, neither should the output.

---

## CONVERSATION QUESTIONS

Present these verbatim after Phase 1 delivery. Grouped by target document.

### For Doc 4 (Visibility and Model Strategy)

1. What content are you already planning or producing?
2. Which channels are you open to? Which are off-limits?
3. What's your content creation capacity (team, time, tools)?
4. Personal brand visibility vs. company brand -- preference?
5. Formats you enjoy vs. formats you refuse?
6. Current audience size per platform?
7. How much personal time per week for visibility?
8. Have you tried increasing visibility before? What happened?
9. Any competitors whose visibility approach you admire?
10. **Did the Phase 1 analysis spark any ideas?** (Critical -- the client may already be acting on insights)

### For Doc 5 (Desire Unification Strategy)

1. How do you see your products connecting? What's the intended journey?
2. Which product is your flagship -- the ONE thing you want to be known for?
3. Any products you're considering retiring, merging, or repositioning?
4. What's the ONE transformation you want buyers to associate with your brand?
5. One-sentence answer to "what does [your brand] do?"
6. Same buyer at different stages, or different buyers with different needs?
7. Any product that feels misaligned with the others?
8. What emotional arc do you want from first contact to highest-tier product?
9. **What are you most energized about right now?** (Energy reveals optimal positioning proximity)

### For Doc 6 (Internal Mediator Deployment)

1. Do you have client success stories not currently in your marketing?
2. Confidentiality/NDA constraints on sharing results?
3. Current testimonial collection process?
4. Video testimonials or only written?
5. Clients whose transformation would be especially compelling?
6. Would successful clients participate in case studies?
7. **What content are you already creating that could carry peer stories?** (Existing vehicles for deployment)

---

## OUTPUT SPECIFICATION

### File Naming (locked -- do not deviate)

```
[output-folder]/
  Doc 1 - Anti-Mimetic Differentiator Analysis.md
  Doc 2 - Competitor Desire Theft Analysis.md
  Doc 3 - Client Desire Profile.md
  Doc 4 - Visibility and Model Strategy.md
  Doc 5 - Desire Unification Strategy.md
  Doc 6 - Internal Mediator Deployment.md
  Phase 2 Questions.md (if running phase1 only)
```

If no output folder is specified, ask the user. For Strategic Profits clients, default to the relevant subfolder under the client's project directory.

### Document Specifications

| Document | Required Sections | Min Evidence Quotes | Target Length |
|----------|------------------|--------------------:|--------------|
| Doc 1 | 6 convergence dimensions + 3 analysis sections | 3+ per dimension | 2,000-4,000 words |
| Doc 2 | 1 profile per competitor + 2 zone maps | 5-10 per competitor | 3,000-6,000 words |
| Doc 3 | 7 sections (all mandatory, see Step 5) | 10+ client quotes | 2,000-4,000 words |
| Doc 4 | Fast move + Manifesto + channel strategy | Grounded in client answers | 1,500-3,000 words |
| Doc 5 | Product-desire map + pricing analysis + energy map | Product-to-desire mapping | 1,500-3,000 words |
| Doc 6 | 5-dim framework + deployment map + fast vehicles | Existing proof inventory | 1,500-3,000 words |

### Quality Gate (mandatory pre-save check)

BEFORE saving any document, verify ALL of the following. If any item fails, FIX before saving. Do not save with known failures.

- [ ] Every competitor claim backed by a specific quote from current marketing
- [ ] Client profile has equal or greater depth than any competitor profile (Invariant 2)
- [ ] Direction of mimesis correctly identified with timeline evidence (Invariant 3)
- [ ] No vague/aspirational language -- every recommendation is concrete and actionable
- [ ] Contested/uncontested zones supported by market evidence, not just competitor count
- [ ] Open positioning space is genuinely unoccupied (verified, not assumed)
- [ ] Tone is forensic -- no consultant-speak, no filler, no hedge words
- [ ] Phase 2 docs incorporate ALL client input from conversation
- [ ] Confidence labels applied where evidence is thin (Confidence Protocol)
- [ ] File saved to disk, not just delivered in chat

---

## GIRARDIAN CONCEPTS REFERENCE

| Concept | Theory | Analysis Application |
|---------|--------|---------------------|
| **Mimetic Desire** | People want what they see others wanting; desire is mediated by a MODEL | Each competitor profile identifies the DESIRE being mediated, not the product being sold |
| **External vs. Internal Mediation** | Distant models create admiration; close/peer models create actionable desire | Doc 3 analyzes whether client is too distant (external) or accessible enough (internal) to drive purchase |
| **Mimetic Convergence** | Competitors unconsciously imitate each other until indistinguishable | Doc 1 maps convergence across 6 dimensions with evidence |
| **Contested vs. Uncontested Desires** | Blue ocean strategy at the DESIRE level | Doc 2 produces contested zone map and underserved zone map |
| **The Skandalon** | Model is simultaneously source of desire AND barrier to fulfillment | Doc 3 checks if client's credibility creates an unbridgeable gap rather than inspiring action |
| **Scapegoat Mechanism** | Communities unite against a common enemy for bonding/identity | Doc 1 maps enemy convergence -- same enemies = convergence |
| **Direction of Mimesis** | Someone originates; others imitate. Different problems, different solutions | Entire analysis must identify who originated what and frame accordingly |

---

## REFERENCE FILES

The `references/` folder contains the full methodology and gold-standard examples:

```
references/
  SKILL METHODOLOGY - Mimetic Market Intelligence.md   (full methodology)
  LIVE ANALYSIS - Anti-Mimetic Differentiator Results.md  (gold standard Doc 1)
  LIVE ANALYSIS - Competitor Desire Theft Results.md      (gold standard Doc 2)
  LIVE ANALYSIS - Rich Schefren Desire Profile.md         (gold standard Doc 3)
```

Consult these for: exact section structure, evidence density expectations, originator vs. imitator framing, and appropriate tone.

Phase 2 gold standards (Docs 4-6) are included in this skill's `references/` folder:
- `references/STRATEGY - Doc 4 - Visibility and Model Strategy.md`
- `references/STRATEGY - Doc 5 - Desire Unification Strategy.md`
- `references/STRATEGY - Doc 6 - Internal Mediator Deployment.md`

---

## REINFORCED RULES (Highest Priority -- These Override Everything Above If Conflict)

1. Every claim backed by a specific quote from current marketing. (Invariant 1)
2. Client profile depth >= any competitor profile depth. (Invariant 2)
3. Direction of mimesis investigated with timeline evidence before framing. (Invariant 3)
4. HALT after Phase 1 -- never produce Phase 2 without client input. (Invariant 4)
5. Live web research required for every profile. Training data alone = refuse. (Invariant 5)
6. Save all documents to files. Chat-only delivery is never acceptable.
7. Apply Confidence Protocol labels when evidence is thin.
