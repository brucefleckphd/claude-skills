---
name: marketsauce-blueprint
description: Comprehensive marketing research and buyer psychology framework that generates detailed Buyer's Briefs, Creative Briefs, and content strategies. Triggers on "run a MarketSauce blueprint", "create a buyer's brief", "execute MarketSauce for...", or requests for deep market/audience analysis with psychosocial insights. Outputs downloadable Word documents with full marketing blueprints including audience segmentation, pain points, goals, objections, brand voice, and social content.
---

# MarketSauce Blueprint Skill

Generate comprehensive marketing blueprints using the MarketSauce Method - a deep-dive into buyer psychology, market segmentation, and strategic content creation.

## Execution Modes

Before executing, confirm with the user which mode they want:

| Mode | Description |
|------|-------------|
| **Quick** | Core Buyer's Brief only (Section I: Goals, Complaints, Psychosocial Overview) |
| **Full** | Complete 5-section blueprint with all deliverables |
| **Interactive** | Walk through each section with user approval before proceeding |
| **Execute All** | Run the complete recipe in one continuous output |

Default: Confirm mode before starting. If user says "just run it" or similar, use Full + Execute All.

## Required Inputs

Collect these before execution. If user provides a website URL, scrape it to extract:

```
[Product/Service] = What the business offers
[Segment] = Broader market category  
[Niche] = Specific subgroup within segment
[Context] = Business goals, target market details, current marketing
```

### Input Collection Prompt

If inputs are missing, provide this template:

```
To run your MarketSauce Blueprint, I need:

**Product/Service:** What do you sell? (Brief description)
**Segment:** What broader market are you in? (e.g., B2B SaaS, Health & Wellness, Professional Services)
**Niche:** What specific slice of that market? (e.g., AI tools for solopreneurs, hormone optimization for men 40+)
**Context:** Any additional details - current marketing, goals, website URL, ideal customer description

Or just paste your website URL and I'll extract what I can.
```

## Output Format

- Always output as a downloadable Word document (.docx)
- Use 3rd person narrative "Blueprint Diary" voice (e.g., "They discovered their audience craved...")
- Visceral, emotional language - no fluff
- Keep content contextually locked to the specific business

## Recipe Structure

The full recipe contains 5 sections. Read `references/recipe.md` for complete execution instructions.

### Section I: Master Buyer's Brief
- Market segmentation analysis (Geographic, Demographic, Psychographic)
- Primary & Secondary Goals with Topic keywords
- Primary & Secondary Complaints
- Psychosocial Deep-Dive: Dreams, Objections, Negative Feelings, Ultimate Fear, Promises
- Causes: Mistaken Beliefs, The Enemy, Cause Triggers, Consequences, Bad Habits
- Solutions: False Solutions, Success Myths, Topic Challenges, Expensive Alternatives
- Offers: Benefits, Reframes, Targets

### Section II: Strategic Creative Brief
- The Promise, Problem, Solution
- 10 Customer Segments with Problems, Benefits/Features, Psychosocial Insights
- Sales Argument Essays (PAS + Hero's Journey + Micro-Brand Storytelling)
- USP Development
- Offer Tiers (Low/Medium/High Risk)
- 10 Campaign Ideas with channels/mediums

### Section III: Brand Style Guide & Voice
- Visual guidelines framework
- Character Diamond personality
- AI Brand Voice definition
- Social platform profiles (LinkedIn, YouTube, Facebook, Instagram, X, Pinterest, TikTok)

### Section IV: Social Micro-Content
- 25 quotes
- 25 image captions with image prompts
- 25 video scripts
- 25 listicle headlines
- 25 quick tips

### Section V: WH Brainstorming Questions
- 10 Topic Ideas
- 6 positive + 6 negative questions per idea (Who, What, Where, When, How, Why)

### Section VI: Implementation Guide
- Executive summary
- Section-by-section action items
- Closing statement

## Execution Protocol

1. **Confirm inputs** - Verify Product/Service, Segment, Niche, Context
2. **Confirm mode** - Quick/Full + Interactive/Execute All
3. **Fetch website** (if URL provided) - Extract additional context
4. **Execute recipe** - Follow `references/recipe.md` sequentially
5. **Generate document** - Compile all outputs into Word doc
6. **Present file** - Provide download link

## Quick Mode Scope

Quick mode executes only:
- Section I through "Offers: Offer Target"
- Skip Sections II-V
- Include abbreviated Implementation Guide

## Voice & Tone

- 3rd person narrative ("They realized...", "The founder saw...")
- Visceral emotional language
- Direct, no-fluff insights
- Actionable and specific
- Written as if reading from their "Blueprint Diary"
