---
name: project-operations
description: Project-level protocol enforcement system. Creates project CLAUDE.md, PROJECT-STATE files, session startup checklists, and quality gate enforcement for multi-session projects.
---

# Project Operations Protocol

**Session-to-session continuity and protocol enforcement**

## When to Use This Skill

- Setting up a new multi-session project that will span multiple work sessions
- Creating project infrastructure (CLAUDE.md, PROJECT-STATE, PROGRESS-LOG)
- Enforcing protocol compliance across sessions to prevent state loss
- Establishing quality gates and authorization boundaries for a project

## Core Problem This Solves

**The Gap:** Having good protocols doesn't mean they get followed. The Project Operations Protocol was discovered through failure - when a 232-unit distinction processing system ran without protocol enforcement, protocols were "available but not mandated."

**The Solution:** Three-tier configuration architecture that MANDATES protocols rather than making them optional:
- **Global CLAUDE.md** (~/.claude/CLAUDE.md) - Sets defaults for ALL sessions
- **Project CLAUDE.md** ([Project Root]/CLAUDE.md) - MANDATES project-specific protocols
- **PROJECT-STATE.md** ([Project Root]/PROJECT-STATE.md) - Tracks current state across sessions

## The 7 Critical Distinctions

These distinctions were extracted from production failure:

### 1. Project CLAUDE.md vs Global CLAUDE.md
- **Problem:** Global sets defaults; project-specific needs ignored
- **Solution:** Create project CLAUDE.md at Step 1 (not Step 12) with protocol mandates, quality gates, sub-agent rules
- **Impact:** Each session starts with correct project-specific context

### 2. PROJECT-STATE vs Handoff Document
- **Problem:** Handoff documents only capture dying session state
- **Solution:** Persistent PROJECT-STATE file lives for project lifetime; mandatory first-read; updated every session
- **Impact:** Single source of truth survives across all sessions

### 3. Protocol Mandate vs Protocol Availability
- **Problem:** Available ≠ loaded. Protocols existed but weren't followed
- **Solution:** Project CLAUDE.md must explicitly MANDATE protocols; verification before work starts
- **Impact:** Protocols actually get used, not just available

### 4. Session Startup Protocol Missing
- **Problem:** No guidance for "continuing session in existing project"
- **Solution:** NEW: Session Startup Protocol - read CLAUDE.md → read PROJECT-STATE → verify compliance → read handoffs → begin from current phase
- **Impact:** Cold-start sessions don't lose context

### 5. Ad-Hoc vs Structured Context
- **Problem:** Sub-agents receive raw prompts with inconsistent results
- **Solution:** Structured context template - Task, Persona, Objective, Inputs, Constraints, Output Format, Quality Threshold
- **Impact:** Consistent sub-agent quality

### 6. Quality Gate Definition vs Enforcement
- **Problem:** Gates defined but not actually enforced
- **Solution:** Quality gates are checkpoints - Score → Log PASS/FAIL → If FAIL spawn corrective action → Max 3 retries → Escalate
- **Impact:** Actual quality control, not just labels

### 7. Progress in Chat vs Files
- **Problem:** Progress lost on session timeout when only in chat context
- **Solution:** Mandatory file logging after every significant unit - timestamp, phase, completed, modified, sub-agents, quality gates, next
- **Impact:** Progress survives context resets

## Project Setup Workflow

When invoked for a new project:

### Step 1: Create Project CLAUDE.md
- Use template from `references/project-claude-template.md`
- Include protocol mandates (what's REQUIRED for this project)
- Define quality gates (thresholds and enforcement rules)
- Set sub-agent spawning rules (if multi-agent project)
- Establish authorized actions and interrupt criteria

### Step 2: Create PROJECT-STATE.md
- Use template from `references/project-state-template.md`
- Initialize task graph with phases and dependencies
- Set operating mode (Autonomous / Dispatcher-Manager / etc.)
- Create decisions log for recording key choices
- Document current state and next steps

### Step 3: Create PROGRESS-LOG.md
- Empty file ready for session entries
- Each entry includes: timestamp, phase, completed, modified, quality gates, next action
- Mandatory updates after every significant unit of work

### Step 4: Create authorization-manifest.md (if using sub-agents)
- Define authorized actions (what agent can do without asking)
- Set boundary conditions (what requires user approval)
- Establish escalation criteria

### Step 5: Create thought-pads/ folder
- For agent reasoning journals
- One pad per agent if using dispatcher-manager mode

## Session Startup Checklist (MANDATORY)

When entering an existing project with CLAUDE.md:

```markdown
## SESSION STARTUP CHECKLIST

- [ ] Read global ~/.claude/CLAUDE.md
- [ ] Read project CLAUDE.md (this file)
- [ ] Read PROJECT-STATE.md (current phase, decisions, next steps)
- [ ] Read PROGRESS-LOG.md (last 3 entries minimum)
- [ ] Read any handoff documents from prior session
- [ ] Verify protocol compliance:
  - [ ] Core Agent Operations: LOADED
  - [ ] [Additional mandated protocols]: LOADED
- [ ] Confirm current phase from PROJECT-STATE
- [ ] Identify immediate next action
- [ ] Produce protocol compliance confirmation to user
- [ ] Begin execution from current phase (don't re-plan)
```

## Templates

### Project CLAUDE.md Template
Location: `references/project-claude-template.md`

Contains:
- Protocol mandates section
- PROJECT-STATE pointer (mandatory first-read path)
- Quality gate definitions
- Session startup checklist
- Progress logging requirements
- Authorized actions
- Interrupt criteria

### PROJECT-STATE Template
Location: `references/project-state-template.md`

Contains:
- Project objective
- Task graph (phases with status, dependencies, next steps)
- Key decisions log
- Current state (what's working, blockers, quality scores)
- Immediate next steps
- File locations

## Usage Patterns

### For Bruce's ZenithPro Lessons
```
Invoke: /project-operations for Lesson 14 implementation

Creates:
- CLAUDE.md with Core Agent Operations + Strategic Builder mandates
- PROJECT-STATE tracking translation stack progress
- PROGRESS-LOG for each work session
- Quality gates for validation at each level
```

### For Client Projects
```
Invoke: /project-operations for Jen Gaudet deliverables

Creates:
- CLAUDE.md with client voice DNA requirements + compliance standards
- PROJECT-STATE tracking multiple deliverables
- Quality gates for brand consistency
- Authorization for file operations within project scope
```

### For Book Project (AIPP)
```
Invoke: /project-operations for AIPP book

Creates:
- CLAUDE.md with chapter structure + research requirements
- PROJECT-STATE tracking chapter completion
- Quality gates for reader transformation validation
- Progress logging for writing sessions
```

### For Copy-Arsenal Development
```
Invoke: /project-operations for new copywriting skill

Creates:
- CLAUDE.md with framework validation requirements
- PROJECT-STATE tracking prototyping → specification → build → validation
- Quality gates for framework consistency
- Structured context for testing sub-agents
```

## Integration with Other Skills

### With Strategic Builder Methodology
- Strategic Builder defines WHAT to build (translation stack)
- Project Operations defines HOW to enforce (session continuity)
- Both work together: plan with Strategic Builder, track with Project Operations

### With Dispatcher/Manager Agent
- Project CLAUDE.md mandates dispatcher-manager mode if needed
- Defines persona library and quality thresholds
- Structured context template ensures consistent sub-agent quality

### With Core Agent Operations
- Core Agent Ops provides global autonomous execution protocols
- Project Operations extends with project-specific enforcement
- Both layers work together automatically

## Success Indicators

You're using this correctly when:
- Sessions resume seamlessly from PROJECT-STATE (no lost context)
- Protocols are enforced, not just available
- Progress survives session timeouts and context resets
- Quality gates catch issues before rework needed
- Sub-agents produce consistent results
- No "where were we?" confusion when resuming work

## Common Mistakes to Avoid

❌ Creating project CLAUDE.md at end of project (too late)
❌ Relying only on chat for progress (lost on session end)
❌ Defining quality gates but not enforcing them
❌ Skipping session startup checklist (missing context)
❌ Assuming protocols will be followed without mandating them
❌ Handoff documents instead of persistent PROJECT-STATE
❌ Ad-hoc sub-agent prompts instead of structured context

## For Bruce's Workflow Integration

**Morning Planning (with /execution-system):**
- Check PROJECT-STATE files for all active projects
- Identify blockers and next actions
- Allocate time based on project phase and priorities

**Evening Review:**
- Update PROGRESS-LOG for each project worked on
- Update PROJECT-STATE with new decisions or blockers
- Note what needs review in next session

**Weekly Planning:**
- Review all PROJECT-STATE files
- Identify stalled projects (no PROGRESS-LOG entries)
- Adjust priorities based on project phases

## Key Principles

1. **Enforcement over Availability** - Mandate protocols, don't just make them available
2. **Persistent State** - PROJECT-STATE lives forever, handoffs are temporary
3. **File-Based Progress** - Progress must survive session timeouts
4. **Session Startup Protocol** - ALWAYS read state before working
5. **Quality Gate Enforcement** - Gates with retry protocols, not just definitions
6. **Structured Context** - Template-based sub-agent spawning
7. **Early Infrastructure** - Create CLAUDE.md at Step 1, not Step 12

## Full Methodology Reference

See `~/.claude/skills/strategic-builder/references/Project Operations Protocol - The Missing Layer.md` for:
- Complete explanation of each distinction
- Failure case study (232-unit distinction system)
- Revised project creation workflow
- Sub-agent context template details
- Quality gate enforcement protocol
