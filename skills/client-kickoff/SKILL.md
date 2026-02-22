---
name: client-kickoff
description: Run effective client kickoff meetings. Creates agendas, questions, and follow-up docs. Use when starting new client engagements.
---

# Run Client Kickoff

Start client relationships right. This skill creates comprehensive kickoff frameworks that align expectations and set projects up for success.

## When to Use This Skill

- New client projects beginning
- Retainer relationships starting
- Project phase transitions
- Re-alignment meetings

## Required Inputs

- Client company and contacts
- Project scope and deliverables
- Timeline and milestones
- Key success metrics
- Known concerns or risks

## Output Format

```markdown
# Client Kickoff: [Client Name] - [Project Name]

**Date:** [Date]
**Attendees:** [Names]
**Duration:** [Length]

---

## Pre-Kickoff Checklist

- [ ] Contract signed
- [ ] Payment received/scheduled
- [ ] Project brief reviewed
- [ ] Internal team aligned
- [ ] Client materials received

---

## Kickoff Agenda

### 1. Introductions (5 min)
- Team introductions
- Roles and responsibilities

### 2. Project Overview (10 min)
- Recap objectives
- Confirm scope
- Review deliverables

### 3. Success Definition (10 min)
- What does success look like?
- Key metrics we'll track
- How we'll measure progress

### 4. Process & Communication (10 min)
- How we'll work together
- Communication channels
- Meeting cadence
- Decision-making process

### 5. Timeline Review (10 min)
- Key milestones
- Dependencies
- Critical dates

### 6. Questions & Concerns (10 min)
- Open discussion
- Risk identification

### 7. Next Steps (5 min)
- Immediate actions
- First deliverable
- Follow-up items

---

## Discovery Questions

**About Their Business:**
- Walk me through your current [process/situation]?
- What's worked well in the past?
- What hasn't worked?

**About This Project:**
- What prompted this project now?
- What happens if we succeed?
- What happens if we don't?

**About Working Together:**
- What's your preferred communication style?
- Who are the key decision-makers?
- What concerns do you have?

---

## Kickoff Meeting Notes Template

**Key Decisions Made:**
1. [Decision]

**Open Questions:**
1. [Question]

**Action Items:**
| Item | Owner | Due |
|------|-------|-----|
| | | |

**Risks/Concerns Identified:**
1. [Risk]

---

## Post-Kickoff Follow-Up Email

Subject: [Project Name] Kickoff Summary & Next Steps

[Client name],

Great kickoff today! Here's a summary of what we covered and our next steps.

**Key Alignments:**
- [Point 1]
- [Point 2]

**Next Steps:**
- [Action 1] - [Owner] by [Date]
- [Action 2] - [Owner] by [Date]

**Upcoming:**
- [Next meeting/milestone]

Let me know if I missed anything!

[Your name]
```

## MCP Integration

**Zapier Actions:**
- `gmail_send_email`: Send follow-up summary
- `notion_create_page`: Create project workspace
- Calendar: Schedule recurring check-ins

---
name: client-progress-update
description: Write client progress updates and status reports. Creates clear communication on project status. Use for regular client check-ins.
version: 1.0.0
category: client-delivery
---

# Write Progress Update

Keep clients informed and confident. This skill creates clear, professional status updates.

## Output Format

```markdown
# Project Update: [Project Name]

**Period:** [Date range]
**Prepared for:** [Client name]
**Status:** 🟢 On Track / 🟡 Attention Needed / 🔴 At Risk

---

## Executive Summary

[2-3 sentence overview of progress and any key points]

---

## Progress This Period

### Completed
- ✅ [Deliverable/Task 1]
- ✅ [Deliverable/Task 2]

### In Progress
- 🔄 [Work in progress 1] - [% complete]
- 🔄 [Work in progress 2] - [% complete]

### Coming Up Next
- 📅 [Upcoming item 1] - [Target date]
- 📅 [Upcoming item 2] - [Target date]

---

## Metrics/KPIs

| Metric | Target | Actual | Trend |
|--------|--------|--------|-------|
| [Metric 1] | [X] | [X] | ↑/↓/→ |

---

## Blockers & Risks

| Issue | Impact | Mitigation | Owner |
|-------|--------|------------|-------|
| [Issue] | [Impact] | [Plan] | [Who] |

---

## Needs from You

- [Action needed from client]
- [Decision needed]

---

## Next Check-In

**Date:** [Date]
**Focus:** [What we'll cover]
```

---
name: client-scope-change
description: Handle scope changes and change requests. Creates documentation for project adjustments. Use when scope expands or requirements change.
version: 1.0.0
category: client-delivery
---

# Handle Scope Change

Manage changes professionally. This skill creates clear change request documentation.

## Output Format

```markdown
# Change Request: [Project Name]

**Request Date:** [Date]
**Requested By:** [Name]
**CR Number:** [#]

---

## Change Description

**Current Scope:**
[What was originally agreed]

**Requested Change:**
[What they want to add/modify]

**Reason for Change:**
[Why this is being requested]

---

## Impact Analysis

### Timeline Impact
- Original completion: [Date]
- New completion: [Date]
- Impact: [+/- X weeks]

### Budget Impact
- Original budget: $[X]
- Additional cost: $[X]
- New total: $[X]

### Resource Impact
[Any additional resources needed]

---

## Options

### Option A: Full Change
[Description and implications]
- Timeline: [Impact]
- Cost: $[X]

### Option B: Partial Change
[Description and implications]
- Timeline: [Impact]
- Cost: $[X]

### Option C: Defer to Phase 2
[Description and implications]
- Timeline: No current impact
- Cost: Deferred

---

## Recommendation

[Your professional recommendation]

---

## Approval

- [ ] Client approved: __________ Date: __________
- [ ] SOW amendment signed
- [ ] Payment terms confirmed

---

## Next Steps (Upon Approval)

1. [Action 1]
2. [Action 2]
```