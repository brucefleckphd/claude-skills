---
name: girard-model-map
description: "Maps the specific 15-30 people your prospects are actually modeling themselves after — not who they say they admire, but who they behaviorally imitate across platforms. Produces a ranked Model Map showing reach, mimetic intensity, desire objects, and proximity (external vs. internal mediator) for each model. Based on Girard's triangular desire theory. Use when: understanding who drives desire in your market before running any mimetic analysis, content strategy, or desire positioning."
version: 1.0.0
author: Strategic Profits / Deep Marketing Thinkers Series
source_thinker: "René Girard (Mimetic Desire Theory) — Idea 1"
programs: [ZenithPro, Force Multiplier, Connect the Dots]
interface:
  invoke: "/girard-model-map {market-description}"
  called_by: [user, girard-mimetic-content-strategist]
  outputs_to: [client-output-folder]
---

# Girard Model Map

---

## LAYER 1: INVARIANTS (Never override.)

1. **Behavioral evidence only.** The Model Map is based on what people *do* — who they repost, quote, cite, reference, engage with — NOT who they *say* they admire. Self-reported influence is useless. Behavioral engagement is the signal.

2. **Platform cross-reference required.** A model who only appears on one platform is a partial signal. Every entry in the final Model Map MUST appear on at least 2 distinct platforms or data sources (Twitter/X engagement + podcast appearances, LinkedIn + Amazon reviews, etc.). Single-platform presence = do not include without flagging.

3. **Desire objects must be specific.** For each model, the "Desire Objects" field must name specific things — tools they use, results they publicly display, decisions they announce, purchases they make visible. "General success" is not a desire object. "Publicly building a 100-person AI-only team while documenting every step" is a desire object.

4. **Proximity classification is mandatory.** Every model MUST be classified as External Mediator (distant/aspirational — market admires but does not see themselves competing with) or Internal Mediator (peer-level — market sees themselves competing with this person directly). This classification determines marketing implications.

5. **Live web research required.** Every model entry must be grounded in current, fetchable web data. Training data is not sufficient. If web research is unavailable, refuse to run.

---

## LAYER 2: QUALITY GUIDANCE

6. **Non-obvious models matter more than obvious ones.** Any marketer could name the top 5 obvious influencers in a market. The value of this tool is in finding the 10-20 less obvious models — mid-tier operators whose content gets disproportionate engagement from exactly the right cohort. Prioritize research on non-obvious signals.

7. **Distinguish admiration from imitation.** A celebrity with 500K followers may generate admiration but zero mimetic desire. A practitioner with 8K followers who is visibly ahead of the target market may generate intense mimetic desire. Reach is not mimetic intensity. Look for active engagement signals: saves, reposts, "I need to do this" responses, and testimonials that reference the model by name.

8. **Mimetic intensity > raw reach.** Rank models by mimetic intensity (engagement density, evidence of active imitation) not follower count. A million-follower celebrity who generates passive scrolling is less mimetically powerful than a 10K-follower peer whose content triggers active "I need to do this too" responses.

---

## PURPOSE

Maps who your prospects are actually trying to become — not by asking them, but by reading their behavioral patterns across platforms. Based on Girard's core insight: "Man is the creature who does not know what to desire, and he turns to others in order to make up his mind." Desire is borrowed. The Model Map identifies exactly *who* it is borrowed from in your specific market.

**Why this changes strategy:** Once you know who the active models are and what desires they're propagating, every subsequent marketing decision — positioning, content, testimonial selection, offer framing — can be aligned with the actual desire architecture of the market instead of guesses.

**Dependency:** This tool is foundational to:
- `/girard-mimetic-content-strategist` (uses Model Map to identify what to model)
- `/girard-rivalry-detector` (uses Model Map to identify rivalry clusters)
- `/mimetic-market-intelligence` (supplements Doc 3 client analysis)

---

## OUTPUT STRUCTURE

### The Model Map Report

**Section 1: Top Internal Mediators (Peer-Level Models)**
The 8-12 people in the market who function as internal mediators — close enough to the prospect's level that rivalry and intense desire are triggered. These are the most important models for purchase decision influence.

For each:
- **Name / Handle**
- **Primary Platform(s)**
- **Mimetic Intensity Score** (1-10, based on engagement density not reach)
- **Desire Objects** — 3-5 specific things they visibly desire/use/display that the market imitates
- **Evidence** — 3+ specific URLs or quotes showing behavioral engagement from the target market
- **Marketing implication** — what desire this model is propagating that Rich's products could serve

**Section 2: External Mediators (Aspirational Models)**
The 5-8 people who function as external mediators — distant enough that they generate admiration and aspiration without rivalry. Important for awareness-stage marketing but less powerful at purchase stage.

For each:
- **Name / Handle**
- **Desire Objects** (what they represent to the market, not what they literally do)
- **Evidence**
- **Marketing implication**

**Section 3: Emerging Models**
3-5 people who are gaining mimetic momentum but not yet dominant — early signals of where market modeling is heading. These represent positioning opportunities before competitors notice.

**Section 4: Desire Object Inventory**
Cross-tabulated summary of what specific things the market is imitating across all models. Identifies:
- Desire objects appearing across 5+ models (high saturation — market already pursuing)
- Desire objects appearing in 1-2 models (emerging — opportunity to position before saturation)
- Desire objects with no current model (market gap — if you model it, you own it)

**Section 5: Strategic Implications for Rich Schefren / Strategic Profits**
- Where does Rich currently sit in this model hierarchy? (External mediator? Internal mediator? Invisible?)
- Which models are his direct competitors for mimetic attention?
- Which desire objects could Rich visibly adopt/demonstrate to generate new mimetic desire?
- What does his audience's model hierarchy tell him about content strategy, proof structure, and offer framing?

---

## RESEARCH PROCESS

### Step 1: Market Definition Intake
Confirm the target market definition. Default for Rich Schefren: "Online entrepreneurs and business owners generating $250K-$5M/year, interested in AI-powered business growth, marketing strategy, and operational leverage. Sophisticated buyers who have already tried multiple courses/programs."

### Step 2: Platform Research (run in parallel)
Research the following sources for behavioral engagement signals from the target market:

**Twitter/X:**
- Search for accounts frequently cited/quoted by the target cohort
- Look for "ratio" evidence — whose posts generate outsized replies/reposts vs. likes
- Find threads that mention "I need to do this" or "just implemented" in response to someone's content

**LinkedIn:**
- Posts from the target cohort that reference external figures
- Comments on whose content shows up repeatedly from the same cohort
- Newsletter/article reshares with endorsement language

**Podcasts:**
- Which guests appear most frequently on shows your market listens to
- Which hosts are themselves models (practitioners not just interviewers)
- Cross-referencing: who appears on 3+ shows in the same market space

**Amazon/Goodreads:**
- Which books in the business/AI/marketing space have reviews that cite them as "life-changing" from people in the target market
- Authors who appear in multiple reviews as "sent me to X's work"

**Forums/Communities:**
- Reddit, Slack communities, Facebook groups, Skool — whose names come up in "recommendation" threads
- Who is referenced in "who should I follow" discussions

**YouTube:**
- Which channels have comment sections filled with target-market language
- "I just implemented this" comment patterns

### Step 3: Cross-Reference and Rank
Compile all signals, identify who appears across multiple platforms, score mimetic intensity, classify mediator type, document desire objects.

### Step 4: Strategic Analysis
Apply findings to Rich's specific situation — positioning gaps, desire object opportunities, model hierarchy placement.

---

## OUTPUT FILE

Save complete report to:
`[project-folder]/René Girard - Model Map/01 - Model Map Report - [Market] - [Date].md`
