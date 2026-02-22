---
name: execution-system
description: |
  Daily, Weekly, Monthly & Quarterly Planning and Review system for Bruce Fleck.
  A unified system for planning and reviewing work across all time horizons. Provides
  structure for daily execution, habit tracking, Cook Medical project documentation,
  and progress assessment against 2026 priority domains.

  Triggers on: "/execution-system", "run execution system", "morning planning",
  "plan my day", "evening review", "process daily summary", "weekly planning",
  "plan my week", "monthly review", "quarterly review".

  Component functions:
  - Morning Planning: Interview-based daily planning with priority categorization
  - Evening Review: Reflection processing, daily summary, habit tracking, Knowledge Links processing
  - Weekly Planning: Sunday/Monday weekly planning session with previous week review
  - Monthly Review: Monthly progress assessment against priority domains
  - Quarterly Review: Comprehensive quarterly assessment with Cook Medical summary
---

# Execution System

Daily, Weekly, Monthly & Quarterly Planning and Review.

## Workflow

1. **Detect function** - Determine which component the user needs
2. **Load reference** - Read the appropriate component skill from `references/`
3. **Execute** - Follow the component skill's process
4. **Output** - Generate structured output per the component's template
5. **Save** - Offer to save output to the appropriate location in the Obsidian vault

## Function Router

| Function | Trigger Phrases | Reference File |
|----------|----------------|----------------|
| **Morning Planning** | "morning planning", "plan my day" | `references/morning-planning.md` |
| **Evening Review** | "evening review", "process daily summary" | `references/daily-summary-weekly-review.md` |
| **Weekly Planning** | "weekly planning", "plan my week" | `references/weekly-planning.md` |
| **Monthly Review** | "monthly review for [Month]" | `references/monthly-quarterly-review.md` |
| **Quarterly Review** | "quarterly review for [Q#]" | `references/monthly-quarterly-review.md` |

When invoked without specifying a function, ask:

"Which function do you need?
1. Morning Planning (start of day)
2. Evening Review (end of day)
3. Weekly Planning (Sunday PM or Monday AM)
4. Monthly Review (end of month)
5. Quarterly Review (end of quarter)"

## Priority Ranking

When conflicts arise, use this order:

| Priority | Domain | Rationale |
|----------|--------|-----------|
| **1** | Cook Medical (urgent/deadline) | Protects primary income |
| **2** | Cook Medical (flexible timing) | Must get done |
| **3** | AI Biz Connection - Client Service | Maintain current revenue |
| **4** | AI Biz Connection - Prospecting | Build revenue |
| **5** | BruceFleck.com | Build personal brand |
| **6** | AI Systems Building | Infrastructure |

## Daily Rhythm

| When | Function | Duration |
|------|----------|----------|
| **Morning** | Morning Planning | 5-10 min |
| **Throughout Day** | Execute on plan | -- |
| **Evening** | Evening Review | 5-10 min |

## Weekly Rhythm

| When | Function | Duration |
|------|----------|----------|
| **Sunday PM / Monday AM** | Weekly Planning | 30-60 min |
| **Friday PM** | Weekly Review + Financial Review | 30-60 min |

## Periodic Rhythm

| When | Function | Duration |
|------|----------|----------|
| **End of Month** | Monthly Review | 30-45 min |
| **End of Quarter** | Quarterly Review | 60-90 min |

## Key People

| Name | Context | Spelling |
|------|---------|----------|
| **Jodi** | Wife | Not "Jody" |
| **Chantal Cox** | AI Biz Connection business partner | |
| **Jen Gaudet** | Client - Every Day Wellness Wichita | G-A-U-D-E-T |
| **Zac** | Son-in-law | |

## Habits to Track

| Habit | Target | Minimum |
|-------|--------|---------|
| Exercise | Daily, 7-8am | 20 min home workout |
| Meditation | Daily, morning | 10 min |
| Lead Gen | Daily, 3pm | 30 min, 5 contacts |
| Reading | Daily, evening | 10 min |
| Duolingo | Daily, evening | 5 min |

## Reference Files

**Systems Planning Document:**
`C:\Users\bruce\Documents\Notes\20.00 Journal\2026\2026 Systems Planning - Progress Summary.md`

**Daily Notes Location:**
`C:\Users\bruce\Documents\Notes\20.00 Journal\2026\2026-MM-DD [Dayname].md`

**To Do List:**
`C:\Users\bruce\Documents\Notes\20.00 Journal\2026\2026-MM To Do List.md`

## YAML Frontmatter Standard

When creating any new markdown files in Obsidian, include YAML frontmatter:

```yaml
---
tags:
  - general-topic/subtopic
type: [daily.note | weekly.note | monthly.note | quarterly.note | meeting.note]
source: execution-system
people: bruce-fleck
date-created: YYYY-MM-DD
---
```

## Constraints

### NEVER DO:
- Assume priorities without asking
- Invent or assume information not provided
- Schedule over protected time blocks without explicit permission
- Ignore the priority ranking when conflicts arise
- Skip clarifying questions when tasks are ambiguous
- Fabricate data or metrics not found in daily notes

### ALWAYS DO:
- Ask about Cook Medical work specifically (for quarterly tracking)
- Protect exercise time in the morning when possible
- Include lead gen in the afternoon plan
- Map tasks to energy levels
- Preserve exact spelling of names (Jodi, Gaudet, etc.)
- Pull actual data from daily notes for reviews
- Provide actionable focus areas for next period
