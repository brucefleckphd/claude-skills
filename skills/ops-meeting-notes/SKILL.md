---
name: ops-meeting-notes
description: Transform meeting recordings and notes into action items. Creates summaries, decisions, and follow-ups. Use after any meeting to capture outcomes.
---

# Process Meeting Notes

Turn meetings into momentum. This skill extracts key decisions, action items, and follow-ups from any meeting.

## When to Use This Skill

- After team meetings
- Post-client calls
- Following workshops or brainstorms
- Executive summary needs
- Accountability tracking

## Required Inputs

- Meeting transcript, notes, or recording summary
- Meeting type and purpose
- Attendees list
- Context about ongoing projects

## Output Format

```markdown
# Meeting Summary: [Meeting Name]

**Date:** [Date]
**Duration:** [Length]
**Attendees:** [Names]
**Meeting Type:** [Team/Client/Strategy/etc.]

---

## Executive Summary

[2-3 sentence overview of what was discussed and decided]

---

## Key Decisions Made

1. **Decision:** [What was decided]
   **Rationale:** [Why this was chosen]
   **Owner:** [Who's responsible]

2. **Decision:** [What was decided]
   **Rationale:** [Why]
   **Owner:** [Who]

---

## Action Items

| Action | Owner | Due Date | Status |
|--------|-------|----------|--------|
| [Task 1] | [Name] | [Date] | 🔴 Not Started |
| [Task 2] | [Name] | [Date] | 🔴 Not Started |
| [Task 3] | [Name] | [Date] | 🔴 Not Started |

---

## Discussion Highlights

### Topic 1: [Subject]
[Summary of discussion]

### Topic 2: [Subject]
[Summary of discussion]

---

## Open Questions / Parking Lot

- [ ] [Question that needs further discussion]
- [ ] [Item to revisit next meeting]

---

## Next Steps

**Next Meeting:** [Date/Time]
**Agenda for Next Time:**
- [Topic 1]
- [Topic 2]

---

## Raw Notes
[Optional: include original notes for reference]
```

## MCP Integration

**Zapier Actions:**
- `notion_create_database_item`: Log meeting in project tracker
- `slack_send_channel_message`: Share summary with team
- `gmail_send_email`: Send summary to attendees
- Action item creation in Asana/Linear/etc.