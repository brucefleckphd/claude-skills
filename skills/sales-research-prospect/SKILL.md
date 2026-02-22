---
name: sales-research-prospect
description: Research prospects before outreach. Gathers intel from web, social, company data. Use when preparing for cold outreach, discovery calls, or account planning.
---

# Research a Prospect

Transform any company or person into actionable sales intelligence. This skill compiles comprehensive research briefs that give you the edge in every conversation.

## When to Use This Skill

- Before cold outreach to a new prospect
- Preparing for a discovery or sales call
- Account planning for strategic opportunities
- Understanding decision-maker landscape

## Required Inputs

**Prospect Information (provide any available):**
- Company name or website URL
- Contact name and/or LinkedIn URL
- Industry vertical
- Any known context (referral source, trigger event)

## Instructions

### Step 1: Company Intelligence
Using available web research tools:
1. Visit company website - extract mission, products, team size indicators
2. Check recent news (last 90 days) for funding, launches, hires, challenges
3. Review LinkedIn company page for employee count, growth signals
4. Identify key decision makers and org structure

### Step 2: Contact Research
For the specific prospect:
1. LinkedIn profile analysis - career history, connections, content themes
2. Recent posts, articles, or podcast appearances
3. Mutual connections or shared interests
4. Communication style preferences (formal vs casual)

### Step 3: Opportunity Analysis
Cross-reference findings with Business Brief:
1. Map prospect's likely pain points to your solutions
2. Identify specific trigger events or timing factors
3. Note potential objections based on their situation
4. Find personalization hooks for outreach

### Step 4: Compile Intelligence Brief
Organize findings into actionable format.

## Output Format

```markdown
# Prospect Intelligence Brief

**Generated:** [Date]
**Prospect:** [Company Name]
**Contact:** [Name, Title]

## Company Snapshot
- **Industry:** [Vertical]
- **Size:** [Employee count, revenue estimate if available]
- **Headquarters:** [Location]
- **Founded:** [Year]
- **What They Do:** [2-3 sentence summary]

## Recent Developments (Last 90 Days)
- [Development 1 with date and source]
- [Development 2 with date and source]
- [Development 3 with date and source]

## Key Decision Makers
| Name | Title | LinkedIn | Notes |
|------|-------|----------|-------|
| [Name] | [Title] | [URL] | [Relevant insight] |

## Pain Point Analysis
Based on their situation, likely challenges include:
1. **[Pain Point 1]:** [Why this matters to them]
2. **[Pain Point 2]:** [Why this matters to them]
3. **[Pain Point 3]:** [Why this matters to them]

## Personalization Hooks
- [Hook 1 - shared connection, interest, or experience]
- [Hook 2 - relevant content they've engaged with]
- [Hook 3 - timing trigger or recent event]

## Recommended Approach
- **Opening Angle:** [Specific approach based on research]
- **Value Proposition Focus:** [Which of your offerings fits best]
- **Potential Objections:** [What they might push back on]
- **Call to Action:** [Suggested next step to propose]

## Talking Points (Discovery Call)
1. [Question that demonstrates research]
2. [Question about their specific challenge]
3. [Bridge to your solution]

## Sources
- [Source 1]
- [Source 2]
```

## MCP Integration Notes

**Firecrawl MCP Actions:**
- `scrape`: Pull company website content
- `search`: Find recent news and articles
- `extract`: Get structured data from LinkedIn (public pages)

**Zapier MCP Actions (Optional):**
- `gmail_create_draft`: Pre-populate follow-up email
- `notion_create_database_item`: Log prospect in CRM

## Example

**Input:** "Research Acme Corp (acme-corp.com) - I have a call with Sarah Chen, their VP of Marketing, next Tuesday."

**Output:** [Complete intelligence brief with company analysis, Sarah's background, recent marketing initiatives at Acme, suggested talking points about marketing automation challenges based on their current tech stack, and personalized hooks based on Sarah's recent LinkedIn posts about AI adoption.]