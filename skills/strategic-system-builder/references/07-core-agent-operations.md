# Core Agent Operations for Strategic Building

## Execution Discipline for AI-Assisted Builds

This reference covers the operational protocols that ensure AI-assisted builds actually match the specifications. It bridges the gap between "the AI understood the PRD" and "the AI built what the PRD specified."

## The Core Problem

Agents routinely:
1. Read a PRD perfectly
2. Produce a consumption receipt proving they read it
3. Build something completely different

This happens because there's a gap between understanding requirements and verifying each one was implemented. The agent gets into "execution mode" and builds what feels logical rather than what was specified.

## The Execution Checklist Protocol

### Before Building

Transform PRD requirements into an execution checklist with an evidence column:

```markdown
## EXECUTION CHECKLIST: [PRD Name]

| # | Requirement | Status | Evidence |
|---|-------------|--------|----------|
| 1 | [Requirement text from PRD] | [ ] | |
| 2 | [Requirement text from PRD] | [ ] | |
| 3 | [Requirement text from PRD] | [ ] | |
```

### During Building

1. **Work through requirements sequentially** when dependencies exist
2. **Mark each requirement complete AS YOU IMPLEMENT IT** -- not after
3. **Fill the evidence column** with the specific location where this requirement is implemented
4. **Do not proceed** to the next requirement until current one is checked with evidence
5. **If blocked**, mark BLOCKED with reason, continue with non-blocked items

### After Building

6. **Deliver the completed checklist** with every output -- this is mandatory

### Evidence Types

| Requirement Type | Valid Evidence |
|------------------|----------------|
| Data filtering | Code line showing filter logic |
| Format/display | Code line showing formatting |
| API calls | Tool output showing call was made |
| File operations | File path + content verification |
| Calculations | Code line + sample output |
| Storage | File path where data was written |

### Anti-Pattern: The Phantom Check

Marking a requirement complete without evidence is worse than not marking it. It creates false confidence.

**Wrong:**
```
| 2 | Filter to messages FROM phone | Done | Done |
```

**Right:**
```
| 2 | Filter to messages FROM +19542423220 | Complete | line 47: messages.filter(m => m.sender === phone) |
```

## Verified Consumption Protocol

### For Documents/Files: Consumption Receipt

After reading any provided document, produce a Consumption Receipt before proceeding:

```markdown
## CONSUMPTION RECEIPT: [Filename/Document Name]

**Total length:** [pages/lines/sections]
**Sections identified:**
1. [Section name] - [1-sentence summary]
2. [Section name] - [1-sentence summary]
3. [Section name] - [1-sentence summary]

**Key requirements extracted:**
- [Requirement 1]
- [Requirement 2]
- [Requirement 3]

**Potential conflicts or ambiguities noted:**
- [Any unclear areas, or "None identified"]

**Confirmation:** Full document consumed.
```

### Consumption Rules
- Read the complete content, not excerpts
- Never skip sections because they "seem" less relevant
- Never substitute prior knowledge for current instructions
- If something seems familiar, read it anyway -- this version may differ
- Quote or reference specific sections when executing

## Requirements Traceability

When given a set of instructions or requirements, produce a Requirements Checklist before execution:

```markdown
## REQUIREMENTS CHECKLIST: [Task Name]

| # | Requirement | Source Location | Status | Notes |
|---|-------------|-----------------|--------|-------|
| 1 | [Requirement text] | [Line/section in source] | Pending | |
| 2 | [Requirement text] | [Line/section in source] | Pending | |
| 3 | [Requirement text] | [Line/section in source] | Pending | |
```

### Status Values
- **Pending** -- Not yet started
- **In Progress** -- Currently working on
- **Complete** -- Done, verified
- **Blocked** -- Cannot proceed [must include reason]
- **Deferred** -- Intentionally postponed [must include reason]

## Context Window Management

### Monitoring Protocol
- Maintain awareness of accumulated context throughout session
- Track major context additions: file reads, tool outputs, long code blocks

### Handoff Threshold
When approaching 70-80% estimated capacity, execute handoff:

1. **Create Handoff Document** containing:
   - Session objective
   - Completed work (with file paths)
   - Current state
   - Active blockers
   - Immediate next steps
   - Key decisions made
   - Files modified
   - Requirements checklist status

2. **Save to persistent location** (not just chat)

3. **Notify user:** "Approaching context limit. Handoff document saved to [location]."

4. **Do NOT** attempt one more action before handoff

## Persistent Progress Logging

All progress must survive session timeout or disconnection.

### Log Format

```markdown
## [Timestamp]
**Completed:** [What was just finished]
**Modified:** [Files changed]
**Requirements addressed:** [Which checklist items]
**Next:** [Immediate next action]
**Notes:** [Any decisions made, issues encountered]
```

## Checkpoint Discipline

Create recovery points before risky operations.

### When to Checkpoint
- Before major refactors
- Before deleting or overwriting files
- Before operations that can't easily be undone
- After completing significant milestones

### Checkpoint Format

```markdown
## CHECKPOINT: [Identifier]
**Timestamp:** [Date/time]
**Status:** [What's working]
**Just completed:** [Last action]
**Requirements status:** [X of Y complete]
**Next planned:** [Upcoming action]
**Rollback note:** [How to undo if needed]
```

## The PRD Conversation Pattern

When working with AI on a PRD, use this pattern:

1. **Present the PRD:** "Here is my PRD for [X]. Before building, confirm you understand all requirements and have no clarifying questions."

2. **AI confirms or asks questions**

3. **Refine until:** "I understand all requirements and have no clarifying questions."

4. **Only then:** "Build according to the PRD."

**Rule:** Never say "build" until the AI confirms full understanding with no questions.

## Post-Build Verification

After each build:

1. **Compare result to PRD** using acceptance criteria
2. **Document deltas** between spec and reality
3. **Decide for each delta:** fix, accept, or revise spec
4. **Feed learning back up the stack** -- update Capability Map or Architecture if needed
5. **Update CLAUDE.md** with current project state

## Anti-Patterns Summary

| Anti-Pattern | Why It Fails | Instead Do |
|-------------|-------------|------------|
| Marking checklist without evidence | Creates false confidence | Every checkmark needs proof |
| Building "what feels right" vs spec | Builds drift from spec | Check each requirement AS you implement |
| Skimming provided material | Misses critical details | Read everything, produce receipt |
| Assuming understanding without reading | Compounds errors | Consume first, prove consumption |
| Progress only in chat | Lost on timeout | Write to persistent log |
| "One more thing" at context limit | Crashes without handoff | Handoff first, always |
| Verbose step-by-step narration | Consumes context | Terse logs, explain on request |

## Quick Reference

### Every Build Session Start
1. Read PRD fully, produce consumption receipt
2. Convert requirements to execution checklist
3. Confirm understanding with no questions
4. Begin execution

### During Building
1. Mark requirements complete with evidence AS you implement
2. Log progress to persistent location
3. Checkpoint before risky operations

### Every Build Session End
1. Deliver completed execution checklist with all evidence
2. Run acceptance criteria verification
3. Document any deltas from spec
4. Update CLAUDE.md
5. Identify next steps
