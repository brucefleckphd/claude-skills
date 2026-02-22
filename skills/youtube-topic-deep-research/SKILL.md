---
name: youtube-topic-deep-research
description: Research high-intent, search-driven YouTube video topics using Firecrawl-mcp for deep competitive analysis. Generates 50 topic suggestions with search terms and titles optimized for discoverability. Use when planning YouTube content, researching video topics, or when the user needs SEO-optimized video title suggestions. Requires Channel Foundation doc with niche, target audience, core service/product, and key anchors/keywords.
---

# YouTube Topic Deep Research

## Overview

Excavates and synthesizes intelligence on YouTube for high-intent, search-driven video topics and titles that architect optimal discoverability for a new channel targeting ideal clients or customers in both problem-aware and solution-aware stages of their buyer's journey.

## Contextual Activation Rules

### Contextual Audience Guardrail

Before applying emotional or life-stage phrasing, identify channel type from Channel Foundation doc:

- **If practical, technical, or B2B** (marketing, finance, software, construction, real estate, SaaS, etc.): Skip emotional or age-based phrasing. Use professional, situational language.
- **If personal, wellness, lifestyle, education, or psychology-related**: Allow emotional or age-anchored phrasing such as 'in your 40s' or 'feeling stuck'.

**Signals:**
- **B2B/Technical:** ads, leads, campaign, conversion, budget, keywords, landing page, crm, pipeline, software, SaaS, PPC, Google Ads, service business, local marketing
- **Personal/Wellness:** anxiety, burnout, relationship, mindset, therapy, fitness, nutrition, parenting, confidence, self-esteem, grief, midlife

**Intent Check:** Emotional or life-stage phrasing applies only if it mirrors how the audience actually searches; otherwise use neutral phrasing.

### Niche Lock Rule
- Anchor and calibrate research and phrasing to the domain indicated by the Channel Foundation doc
- Systematically reject or replace topics unrelated to that niche

### Keyword Anchor Rule
- Favor search terms containing core anchors from Channel Foundation doc (e.g., 'Google Ads', 'leads', 'campaign', 'budget')
- Deploy them in at least 60% of titles unless no clear anchors exist
- Ensure anchors appear across diverse subtopics
- Do not cluster more than 3 titles in a row using the same anchor or platform

## Research Method Using Firecrawl-mcp

### Source: YouTube-Only Research

All topic discovery and validation must occur strictly within YouTube. Never use Google, blogs, Reddit, Quora, or any non-YouTube source. Only use YouTube videos, search suggestions, and YouTube trend data.

**Intent Check:** If a non-YouTube source appears, reject it and replace with a YouTube-native example.

### Phase 1: Competitive Channel Analysis

Leverage Firecrawl-mcp to orchestrate comprehensive research:

1. **Identify Top-Performing Channels**
   - Deploy `firecrawl_scrape` to systematically excavate YouTube search results
   - Target URLs: `https://www.youtube.com/results?search_query=[niche]+[problem]`
   - Discern and pinpoint 3-5 channels ranking consistently for similar topics
   - Extract and isolate channel names, subscriber counts, and recent video titles

2. **Extract Phrasing Patterns**
   - Systematically scrape video title pages from top-performing channels
   - Extract and distill phrasing patterns ('Why', 'How To', 'Never', 'Instead', 'Before You', 'Don't Do This')
   - Scrutinize and deconstruct tone and curiosity structure
   - Document and synthesize common title structures and patterns

3. **Reverse-Engineer High-Performing Titles**
   - Systematically scrape YouTube search results pages for various niche-related queries
   - Discern high-performing video titles (high view counts, recent uploads)
   - Reverse-engineer titles into natural, SEO-friendly search terms while preserving search intent
   - Extract and isolate underlying search queries that likely led to these videos

### Phase 2: Search Suggestion Analysis

1. **YouTube Search Autocomplete Research**
   - Leverage Firecrawl to systematically scrape YouTube search autocomplete suggestions
   - Target multiple search entry points related to the niche
   - Extract and distill common search patterns and phrasing
   - Document and synthesize how users actually phrase their searches

2. **Related Video Analysis**
   - For top-performing videos, systematically scrape "Related Videos" sections
   - Scrutinize what topics cluster together
   - Discern topic gaps and opportunities

### Phase 3: Topic Discovery and Validation

1. **Category-Based Research**
   Leverage Firecrawl to systematically excavate each required category:
   - FAQs in problem-aware and solution-aware stages
   - What Works videos (one tactic solving a clear problem)
   - How To videos
   - Lists or Top X style comparisons
   - Direct Comparisons (X vs Y)
   - Guides (Beginner / Complete / Ultimate) — max 3 total
   - Opinion / Myth / Thought-Leadership (sparingly, later in list)
   - Discovery or Local Ranking ('Best X in Y' — never 'near me')

2. **Validate Against Real YouTube Data**
   - For each topic candidate, systematically verify and scrutinize it exists in YouTube search results
   - Calibrate that similar videos have actual view counts and engagement
   - Ensure topics are discoverable, not theoretical

## Keyword Criteria

### Search Term Requirements

1. **Realistic Queries:** Each search term must sound like a natural 5-8-word phrase an actual user would type. Use everyday consumer language. Avoid academic or corporate jargon.

2. **Audience Perspective Rule:** Write from the viewer's point of view, not the provider's.

3. **Problem-to-Solution Distribution:**
   - Keep about 25 problem-aware and 25 solution-aware topics across 50 results
   - Distribute evenly throughout, not in separate blocks
   - First 10 titles should include mix of both awareness stages
   - Avoid clustering all problem-aware titles before solution-aware ones

4. **Problem Awareness Context Rule:**
   - Go one level earlier than the service described in Channel Foundation doc
   - Focus on desire or frustration leading viewer to seek that service — without naming it
   - At least half of all problem-aware titles must avoid mentioning the service by name

5. **Single Intent Rule:** Each title focuses on one clear problem or result. Avoid compound intents.

6. **Emotional Curiosity Rule:** Use curiosity or light consequence ('before it ruins X', 'the mistake costing you money'). Roughly one in four titles should preserve a curiosity gap.

7. **Recency Relevance Rule:** About 20% of titles reference current or future ideas (AI, automation, 2025+ trends).

8. **Category Frequency Balance Rule:** Limit any one phrasing pattern ('How to', 'Why', 'Guide', 'Top/Best') to ≤20% of titles. Guides ≤3 total.

9. **Search Intent Verbs Rule:** Use direct, action-oriented verbs (fix, stop, get, prevent, start, choose, compare).

10. **Avoid Negative Troubleshooting Rule:** Replace negative phrasing ('why doesn't X work') with positive or instructional phrasing ('how to get X working', 'beginner's guide to X').

11. **Emotional Language Equivalents Rule:** Alternate functional vs. emotional phrasing to reflect real search habits. Applies when emotional framing is allowed.

12. **Literal Search Echo Rule:** At least 30% of topics must mirror common YouTube search phrasing verbatim.

13. **How-To Position Variation Rule:** Vary 'how to' placement; not all titles should start with it.

14. **Volume Proxy Rule:** Reject low-volume modifiers unless paired with mainstream symptoms.

15. **Brand Reference Rule:** Use brand names only when search intent clearly targets them.

16. **Pre-Problem Awareness Rule:** Include 3-5 early-awareness titles ('how to tell if…', 'when you should…').

17. **Tone Context Rule:** Match tone to niche (Wellness = empathetic; Business = confident; Creative = curious).

18. **Search Realism Guardrail Rule:** Avoid abstract phrasing lacking tangible emotion or symptom. Replace with concrete feelings or behaviors. Applies when emotional framing is allowed.

## Title Format Rules

### Search Term Format (Column A)
- Concise, literal query stub, not a title
- 3-6 words, lowercase
- No sentence casing, no punctuation (except brand names)
- No emojis, no hooks
- No numbers unless part of a model/year

**Examples OK:**
- "google ads for plumbers"
- "service business lead generation"
- "fix landing page bounce rate"

**Examples Rewrite:**
- "Get More Leads This Month" → "get more leads service business"
- "Stop Attracting Price Shoppers" → "stop price shoppers service business"

### Title Derivation Rule (Column B)
- Must expand Column A with clarity + hook
- Use Title Case
- Can add specificity (who/when/how many/benefit)
- Must not be identical to Column A
- Must add at least 3 meaningful tokens not present in Column A
- Must not copy Column A verbatim or just capitalize it

### Left-Right Differentiation Guardrail
- If Column A and Column B are substantially similar, rewrite Column B to add angle/benefit
- Aim for Column A ≈ keyword stub; Column B ≈ human-readable, curiosity-optimized title

## Output Format

### Delivery Requirements
- Return a clean 50-row table (no links)
- Balanced mix of problem- and solution-aware titles verified against real YouTube search suggestions
- Naturally mixed, showing blend of 'why' and 'how to' phrasing, problem and solution angles, varied service mentions

### Table Structure
- **Column A:** Search Term (lowercase, 3-6 words, literal query)
- **Column B:** Proposed Title (Title Case, expanded with clarity + hook)

### Presentation Rule
- Do not include any introductory text, context summary, or explanation before the table
- Output should begin directly with the table header

```
| Search Term | Proposed Title |
|-------------|----------------|
| [query]     | [Title Case]   |
```

## Usage Workflow

1. **Enable Firecrawl-mcp** - Ensure Firecrawl MCP server is connected and active
2. **Review Channel Foundation** - Comprehensively internalize niche, audience, problem, and core anchors
3. **Execute Competitive Research** - Leverage Firecrawl to systematically excavate YouTube search results, channel pages, and video titles
4. **Extract Patterns** - Scrutinize and deconstruct phrasing patterns, title structures, and search suggestions
5. **Generate Topics** - Architect and cultivate 50 topics following all keyword criteria and format rules
6. **Validate** - Systematically verify and calibrate all topics exist in real YouTube search results
7. **Output Table** - Articulate results in specified table format without preamble

## Research Workflow

1. **Initial Research Phase:**
   - Systematically scrape YouTube search results for niche-related queries
   - Discern and pinpoint 3-5 top-performing channels
   - Extract and isolate 20-30 high-performing video titles

2. **Pattern Analysis Phase:**
   - Scrutinize and deconstruct title structures and phrasing patterns
   - Extract and distill search suggestion patterns
   - Document and synthesize common approaches

3. **Topic Generation Phase:**
   - Architect and cultivate topics across all required categories
   - Systematically apply all keyword criteria rules
   - Calibrate and ensure problem/solution balance

4. **Validation Phase:**
   - Systematically verify and scrutinize each topic exists in YouTube search
   - Calibrate search term vs. title differentiation
   - Ensure natural distribution of categories

5. **Final Output:**
   - Format as 50-row table
   - No preamble, direct table output
   - Mix of problem/solution, varied phrasing
