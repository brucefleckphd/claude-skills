# CLAUDE.md - [Project Name]

## Protocol Mandates

This project REQUIRES:
1. **Core Agent Operations** protocols (autonomous execution, consumption receipts, requirements tracking, context management, persistent logging)
2. [OPTIONAL - if multi-agent:] **Dispatcher/Manager mode** for multi-agent orchestration
3. [OPTIONAL - if building systems:] **Strategic Builder Methodology** for new features

## Project State Pointer

**MANDATORY FIRST READ:** PROJECT-STATE.md

**Location:** `[absolute path to PROJECT-STATE.md]`

This file contains:
- Current phase and immediate next steps
- Complete task graph with dependencies
- Key decisions made (do not revisit)
- Operating mode requirements
- Blockers and current state

**RULE:** Read PROJECT-STATE.md BEFORE beginning any work in this project.

## Session Startup Checklist

Execute this checklist BEFORE any work:

```markdown
- [ ] Read global ~/.claude/CLAUDE.md (foundational protocols)
- [ ] Read this project CLAUDE.md (project-specific requirements)
- [ ] Read PROJECT-STATE.md (current phase, decisions, next steps)
- [ ] Read PROGRESS-LOG.md (last 3 entries minimum)
- [ ] Verify protocol compliance:
  - [ ] Core Agent Operations: LOADED and understood
  - [ ] [Other mandated protocols]: LOADED and understood
- [ ] Confirm current phase from PROJECT-STATE
- [ ] Identify immediate next action from PROJECT-STATE
- [ ] Produce protocol compliance confirmation to user
- [ ] Begin from current phase (don't re-plan unless instructed)
```

## Quality Gate Definitions

[Define project-specific quality thresholds and enforcement rules]

Example:
```markdown
### Gate: Client Deliverable Review
- **Threshold:** 90% quality score minimum
- **Criteria:**
  - Brand voice DNA match ≥ 85%
  - Health compliance check passed
  - No placeholder text
  - All acceptance criteria met
- **Enforcement:**
  1. Score against criteria
  2. Log PASS/FAIL to PROGRESS-LOG
  3. If FAIL: Document specific issues
  4. Retry with corrections (max 3 attempts)
  5. Escalate to user if still failing
```

## Progress Logging (MANDATORY)

**Location:** `[absolute path to PROGRESS-LOG.md]`

Append entry after EVERY significant unit of work:

```markdown
## [Timestamp - YYYY-MM-DD HH:MM]
**Phase:** [current phase from PROJECT-STATE]
**Completed:** [what was finished this session]
**Modified:** [files changed, outputs created]
**Sub-agents:** [if used: spawned, completed, quality scores]
**Quality gates:** [PASS/FAIL with scores]
**Blockers:** [any issues encountered]
**Next:** [immediate next action for next session]
```

**RULE:** This is NOT optional. Progress must be logged to files, not kept only in chat.

## Sub-Agent Spawning Rules

[If using Dispatcher/Manager mode or spawning sub-agents]

Every sub-agent receives structured context:

```markdown
## TASK: [Name]
### PERSONA: [Name + 2-sentence background]
### OBJECTIVE: [One sentence goal]
### INPUTS: [Specific to this task]
### REQUIREMENTS CHECKLIST: [From spec]
### CONSTRAINTS:
- NEVER: [prohibited actions]
- ALWAYS: [required actions]
- MAX: [limits]
### OUTPUT FORMAT: [Exact specification]
### QUALITY THRESHOLD: [STANDARD 70% / ELEVATED 85% / CRITICAL 95%]
```

Sub-agents MUST return:
- Output in specified format
- Requirements verification table
- Self-assessment (confidence %, quality vs threshold, issues encountered)

## Authorized Actions

You are authorized to proceed autonomously with:
- [File operations within project scope - e.g., read/write in project directory]
- [Design decisions within documented constraints - e.g., choose between A/B if both meet requirements]
- [Quality gate enforcement - e.g., retry failed items up to 3x]
- [Sub-agent spawning per rules above]
- [Updating PROJECT-STATE and PROGRESS-LOG]

## Interrupt Only For

Request user input ONLY for:
- **Destructive operations** not explicitly authorized (deletions, irreversible changes)
- **Critical ambiguity** that would cause rework (conflicting requirements, unclear specs)
- **External dependencies** (credentials needed, approval required, blocked by external system)
- **Context window handoff** (at 70-80% capacity - create handoff document)
- **Escalation criteria** (quality threshold not met after 3 retries, blocking issues)

## Never Interrupt For

DO NOT ask user permission for:
- "Should I proceed?" (default answer: yes, proceed autonomously)
- Choosing between reasonable implementation options (make best choice, document, proceed)
- Progress updates (log these to PROGRESS-LOG instead)
- Minor ambiguities (make reasonable assumption, document in code/notes, continue)
- Normal file operations within authorized scope

## Project-Specific Context

[Add any project-specific information]

Example for client project:
```markdown
### Client: Jen Gaudet (Every Day Wellness Wichita)
### Industry: Naturopathic practice
### Voice: Educational, warm, evidence-based
### Compliance: Health claims require substantiation
### Brand Colors: [if relevant]
### Key Constraints: [specific to this client]
```

Example for book project:
```markdown
### Book: The AI-Powered Professional (AIPP)
### Target Reader: Professional service providers, coaches
### Transformation: From AI-overwhelmed to AI-amplified
### Structure: [chapter outline]
### Writing Style: Conversational, tactical, example-rich
```

Example for skill development:
```markdown
### Skill Type: Copywriting framework orchestrator
### Framework Count: [number]
### Quality Standard: 95% consistency across frameworks
### Test Scenarios: [required test cases]
```

## End-of-Session Requirements

Before ending any work session, provide:
1. **Summary** of what was accomplished
2. **Locations** of all outputs created/modified
3. **Consumption receipts** for any materials provided
4. **Completed requirements** checklist items
5. **Updated PROJECT-STATE.md** with current phase and next steps
6. **Appended entry** to PROGRESS-LOG.md
7. **Any issues** encountered and resolutions
8. **Flagged items** for user review (if any)
9. **Clear next steps** for next session
