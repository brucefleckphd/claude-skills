---
name: ops-design-automation
description: Design workflow automations for repetitive tasks. Creates automation specs and logic flows. Use when systematizing with Zapier, Make, or n8n.
---

# Design an Automation

Eliminate manual work with smart automations. This skill creates detailed automation blueprints ready for implementation.

## When to Use This Skill

- Identifying automation opportunities
- Designing Zapier/Make workflows
- Reducing manual data entry
- Streamlining handoffs
- Process optimization

## Required Inputs

- Manual process to automate
- Tools/systems involved
- Triggers and conditions
- Desired outcomes
- Current pain points

## Output Format

```markdown
# Automation Blueprint: [Automation Name]

**Purpose:** [What this automation does]
**Estimated Time Saved:** [Hours/week]
**Complexity:** [Simple/Medium/Complex]
**Platform:** [Zapier/Make/n8n]

---

## Current Manual Process

[Description of what's done manually today]

**Pain Points:**
- [Pain 1]
- [Pain 2]
- [Pain 3]

---

## Automation Flow

### Trigger
**Event:** [What starts the automation]
**Source App:** [Where trigger originates]
**Conditions:** [Any filters or conditions]

### Action 1: [Action Name]
**App:** [Which app]
**Action Type:** [Create/Update/Send/etc.]
**Data Mapping:**
- Field A → [Source field]
- Field B → [Source field]

### Action 2: [Action Name]
**App:** [Which app]
**Action Type:** [Action]
**Data Mapping:**
- [Mappings]

[Continue for all actions...]

### Conditional Paths (if applicable)
**If [condition]:** → [Action path A]
**Else:** → [Action path B]

---

## Error Handling

| Potential Error | Solution |
|-----------------|----------|
| [Error 1] | [How to handle] |
| [Error 2] | [How to handle] |

---

## Testing Checklist

- [ ] Test with sample data
- [ ] Verify data mapping accuracy
- [ ] Check error notifications
- [ ] Confirm end-to-end flow
- [ ] Validate with edge cases

---

## Implementation Notes

**Setup Time:** [Estimated]
**Dependencies:** [What needs to be configured first]
**Maintenance:** [Ongoing monitoring needs]
```

## MCP Integration

**Zapier Actions:**
- Implement the designed automation directly
- Test triggers and actions