---
name: com-community-health
description: Assess community health and engagement. Creates diagnostic reports with recommendations. Use for community audits and improvement planning.
---

# Assess Community Health

Diagnose your community's vitality and find improvement areas. This skill creates comprehensive health assessments with actionable recommendations.

## When to Use This Skill

- Quarterly community reviews
- Declining engagement investigation
- Pre-launch health baseline
- Strategic planning
- Investor/stakeholder reporting

## Required Inputs

- Community platform and member count
- Current engagement metrics (if available)
- Recent activity patterns
- Member feedback or complaints
- Business goals for community

## Output Format

```markdown
# Community Health Assessment

**Community:** [Name]
**Platform:** [Platform]
**Members:** [Count]
**Assessment Date:** [Date]

---

## Health Score: [X/100]

| Dimension | Score | Trend |
|-----------|-------|-------|
| Activity | [X]/20 | ↑/↓/→ |
| Engagement | [X]/20 | ↑/↓/→ |
| Retention | [X]/20 | ↑/↓/→ |
| Value Delivery | [X]/20 | ↑/↓/→ |
| Growth | [X]/20 | ↑/↓/→ |

---

## Key Findings

### Strengths
1. [Strength 1 with evidence]
2. [Strength 2 with evidence]

### Concerns
1. [Concern 1 with evidence]
2. [Concern 2 with evidence]

---

## Engagement Analysis

**Active Members:** [X] ([%] of total)
**Posts/Comments This Month:** [X]
**Top Contributors:** [Names/count]
**Lurker Rate:** [%]

---

## Content Performance

**Top Performing Content:**
1. [Content piece] - [Engagement]
2. [Content piece] - [Engagement]

**Content Gaps:**
- [What's missing]

---

## Member Sentiment

[Summary of member feedback and sentiment]

---

## Recommendations

### Quick Wins (This Week)
1. [Action with expected impact]
2. [Action with expected impact]

### Short-Term (This Month)
1. [Action with expected impact]
2. [Action with expected impact]

### Long-Term (This Quarter)
1. [Action with expected impact]

---

## Metrics to Track

| Metric | Current | Target | Timeline |
|--------|---------|--------|----------|
| [Metric] | [X] | [X] | [When] |
```

---
name: com-engagement-prompts
description: Create discussion prompts and engagement posts. Generates conversation starters that drive participation. Use for daily/weekly community content.
version: 1.0.0
category: community
---

# Create Engagement Prompts

Spark conversations that keep members coming back. This skill creates engagement posts that drive participation and connection.

## Output Format

```markdown
# Engagement Content Pack: [Theme/Week]

---

## Discussion Prompts

### Prompt 1: [Title]
**Type:** [Question/Poll/Challenge/Share]
**Best Day/Time:** [When to post]

[Prompt text]

**Expected Engagement:** [High/Medium/Low]

---

### Prompt 2: [Title]
**Type:** [Type]

[Prompt text]

---

### Prompt 3: [Title]
**Type:** [Type]

[Prompt text]

---

## Weekly Recurring Posts

**Monday:** [Theme - e.g., "Wins from last week"]
[Post template]

**Wednesday:** [Theme - e.g., "Ask Me Anything"]
[Post template]

**Friday:** [Theme - e.g., "Weekend challenge"]
[Post template]

---

## Engagement Boosters

**For Low Activity Days:**
[Emergency engagement post]

**For Celebrating Wins:**
[Recognition post template]
```

---
name: com-welcome-sequence
description: Design new member welcome experiences. Creates onboarding messages and orientation content. Use when members join your community.
version: 1.0.0
category: community
---

# Design Welcome Sequence

Make new members feel valued from day one. This skill creates warm, actionable welcome experiences.

## Output Format

```markdown
# Welcome Sequence: [Community Name]

---

## Day 1: Welcome Message

**Subject/Title:** Welcome to [Community]!

[Warm welcome message with:
- Who we are
- What they can expect
- First action to take
- How to get help]

---

## Day 1: Orientation Post

[Guide them to introduce themselves with prompts:
- Who are you?
- What brought you here?
- What's your biggest challenge with [topic]?
- Fun fact about yourself]

---

## Day 3: Check-In

[Check on their experience:
- Did they complete orientation?
- Have they connected with anyone?
- Point to valuable resource]

---

## Day 7: First Week Celebration

[Celebrate their first week:
- Highlight value they've seen
- Encourage deeper engagement
- Introduce advanced features]

---

## Automated Triggers

| Trigger | Action |
|---------|--------|
| Join | Send welcome message |
| First post | Like + welcome reply |
| 7 days inactive | Re-engagement nudge |
```