---
name: sales-follow-up-sequence
description: Build automated follow-up sequences that convert. Creates nurture campaigns with optimal timing. Use when leads go cold or need systematic touch points.
---

# Build Follow-Up Sequence

Turn stalled deals into closed deals. This skill creates strategic follow-up sequences that re-engage prospects without being annoying.

## When to Use This Skill

- Lead went cold after initial conversation
- Post-demo follow-up sequence
- Long sales cycle nurture campaigns
- Reactivation of old leads

## Required Inputs

- Last interaction summary
- Where they dropped off
- Time since last contact
- Previous objections or concerns
- Your next best offer/value add

## Instructions

1. **Assess situation** - How warm were they? What caused the stall?
2. **Determine sequence length** - Match to deal complexity (3-7 touches)
3. **Plan value curve** - Each touch adds new value, not just "checking in"
4. **Set timing** - Based on their buying cycle and urgency
5. **Create exit criteria** - When to stop and when to escalate

## Output Format

```markdown
# Follow-Up Sequence

**Lead:** [Name/Company]
**Last Contact:** [Date]
**Sequence Length:** [X touches over Y days]
**Goal:** [Specific next step]

---

## Touch 1: Re-engagement
**Timing:** Day 1
**Channel:** [Email/LinkedIn/Phone]
**Value Add:** [What you're offering]

[Message content]

---

## Touch 2: New Angle
**Timing:** Day [X]
**Channel:** [Channel]
**Value Add:** [Different value]

[Message content]

---

[Continue for all touches...]

---

## Breakup Message
**Timing:** Final touch
**Purpose:** Create response urgency

[Message content]

---

## Automation Notes
- Zapier triggers: [Specific actions]
- Exit conditions: [When sequence stops]
- Handoff rules: [When human takes over]
```

## MCP Integration

**Zapier Actions:**
- `gmail_send_email`: Automated sequence delivery
- `slack_send_direct_message`: Alert on opens/replies
- `salesforce_update_record`: Track touchpoints