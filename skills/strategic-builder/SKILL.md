---
name: strategic-builder
description: The Strategic Builder Methodology - 8-level translation stack for entrepreneurs building business systems with AI. Vision → Architecture → Capability → Phased Delivery → Prototyping → Specification → Implementation → Validation with validation gates at each level.
---

# Strategic Builder Methodology

**For entrepreneurs building business systems with AI**

## When to Use This Skill

- Starting a new AI-assisted project or business system
- Defining architecture for a system before building
- Creating capability maps and phased delivery plans
- Writing specifications (PRDs) for AI tools or systems
- Validating your approach against methodology gates before building

## Core Insight

Between your vision and a working system are multiple levels of translation. Most people see only Vision and Implementation and try to jump between them. This causes inconsistent results.

**Solution:** Make the invisible levels visible. Document each level. Move through them in sequence. Validate each level before proceeding.

## The Translation Stack (8 Levels)

Each level translates the one above it into something more concrete:

| Level | Question It Answers | Document |
|-------|---------------------|----------|
| **1. Vision** | What does the world look like when this exists? | Vision Document |
| **2. Architecture** | How do the pieces relate to each other? | System Architecture Map |
| **3. Capability** | What jobs does each piece perform? | Capability Map |
| **4. Phased Delivery** | What do we build first? | Phased Delivery Plan |
| **5. Prototyping*** | Does this approach work with real inputs? | Prototype Notes |
| **6. Specification** | What exactly must be true for this to work? | PRD |
| **7. Implementation** | How is it built? | Code + Execution Checklist |
| **8. Validation** | Does it perform reliably? | Validation Results |

***Prototyping applies when building AI tools (skills, agents, workflows). For non-AI builds, skip to Specification.**

**RULE:** Never skip a level. Each level translates the one above it.

## The Three Questions Protocol

Ask these in order:

1. **What's the system?** (Architecture level) - Asked once at start; when strategy shifts
2. **What must it do?** (Capability level) - Asked for each major component
3. **How exactly?** (Prototyping + Specification levels) - Asked before each build session

**RULE:** Don't answer Question 3 until you've answered Questions 1 and 2.

## Validation Gates

Every level has validation criteria that must ALL pass before proceeding:

### Vision Gate
- ✓ Describes a transformed state, not features
- ✓ Multiple architectures could achieve this vision
- ✓ One page maximum
- ✓ Realistic with current tools and team

### Architecture Gate
- ✓ Can explain how pieces fit together in 2 minutes
- ✓ All dependencies are explicit
- ✓ No system exists in isolation
- ✓ Minimum number of systems needed

### Capability Gate
- ✓ Each capability stated as job/outcome, not feature
- ✓ Can imagine 3+ different implementations per capability
- ✓ Inputs and outputs defined
- ✓ Can be built with tools that exist today
- ✓ Minimum number of capabilities needed

### Phased Delivery Gate
- ✓ Phase 1 solves a complete problem on its own
- ✓ Could stop after Phase 1 and have value
- ✓ Phase 1 buildable in days, not weeks
- ✓ No phase depends on a later phase
- ✓ Sequenced by value, not technical layers

### Prototyping Gate (AI Tools Only)
- ✓ At least 3 test scenarios with real/realistic inputs
- ✓ Output format validated against actual results
- ✓ Edge cases discovered and documented
- ✓ Discovered what doesn't work (not just what works)

### PRD Gate
- ✓ All 8 components present (Objective, Scope, Requirements, Acceptance Criteria, Integration Points, Edge Cases, Constraints, Out of Scope)
- ✓ Every requirement is testable and specific
- ✓ Someone could build this without asking questions
- ✓ Build time estimated in hours, not days

### Post-Build Validation Gate
- ✓ Happy path works (3 scenarios)
- ✓ Edge cases handled gracefully (3 scenarios)
- ✓ Failure modes tested (2 scenarios)
- ✓ Consistency verified (same input 3x)
- ✓ Real-world input tested (1-2 scenarios)

## Typical Workflow

### When Starting a New Project

1. **Write Vision Document** (Level 1)
   - One sentence: What does the world look like when this exists?
   - Validate against Vision Gate

2. **Create System Architecture Map** (Level 2)
   - Draw how pieces relate to each other
   - Validate against Architecture Gate

3. **Create Capability Map** (Level 3)
   - For each component: What jobs does it do? What goes in? What comes out?
   - Validate against Capability Gate

4. **Create Phased Delivery Plan** (Level 4)
   - Phase 1: Minimum that solves core problem
   - Later phases: Additional capabilities
   - Validate against Phased Delivery Gate

5. **Prototype** (Level 5 - for AI tools only)
   - Have conversational prototype with Claude
   - Run 3-5 test scenarios with real inputs
   - Document what works, what doesn't, edge cases discovered
   - Validate against Prototyping Gate

6. **Write PRD** (Level 6)
   - Use template: `references/prd-template.md`
   - Include all 8 components
   - Make every requirement testable
   - Validate against PRD Gate

7. **Build with Execution Checklist** (Level 7)
   - Transform PRD requirements into checklist
   - Mark items AS implementing (not after)
   - Evidence column: file path, line number, or proof

8. **Run Post-Build Validation** (Level 8)
   - 5 test types: happy path, edge cases, failure modes, consistency, real-world
   - Validate against Post-Build Validation Gate

### If Current Level Reveals Broken Higher Level

1. STOP current work
2. Go back to broken level
3. Fix higher-level document
4. Validate fix against gate criteria
5. Resume from corrected level

## Templates Available

- **PRD Template:** `references/prd-template.md`
- **TDD Template:** `references/tdd-template.md`

## Full Methodology Reference

See `references/The Strategic Builder Methodology.md` for:
- Complete explanation of each level
- Detailed gate criteria with examples
- Time calibration guidance
- Worked examples
- Common failure patterns

## Integration with Core Agent Operations

**Strategic Builder = Planning & Specification**
- Defines WHAT to build and HOW to think about building
- Works down the translation stack from vision to PRD

**Core Agent Operations = Execution & Verification** (loaded globally)
- Defines HOW to execute autonomously
- Consumption receipts, requirements tracking, persistent logging

Both work together:
- Use Strategic Builder to plan and spec
- Use Core Agent Ops protocols during execution
- Result: Well-planned systems built autonomously with verified progress

## Key Principles

1. **Reality Constraint** - Only what can be built with current tools and skills
2. **Time Calibration** - Vision to working v1 in 1-3 sessions
3. **Portability** - All artifacts in files, never only in chat
4. **Durability-First** - Choose stable approach over quick/fragile
5. **Validation Gates** - Catch errors at highest-leverage points
6. **No Skipping** - Each level translates the one above
7. **Stop When Broken** - Fix higher levels before continuing down
8. **Minimum Viable** - Smallest system that solves the problem
9. **Value Sequencing** - Phase by value delivered, not technical layers
10. **Prototyping for Discovery** - Discover what works before committing to spec

## Constraints

- **Reality:** Only build with current tools, don't assume future capabilities
- **Time:** Full project (vision to validated v1) should take 1-3 sessions, not weeks
- **Portability:** Documents must live in files for session continuity
- **Durability:** Prefer stable over clever; maintainable over optimized

## Success Indicators

You're using this methodology correctly when:
- You never ask "now what?" - the next level is always clear
- You catch architectural problems before building (not during)
- AI tools follow your specs reliably (not randomly)
- Projects finish in days, not stall for weeks
- You can hand off mid-project and someone can continue
- Validation happens at gates, not after everything is built

## Common Mistakes to Avoid

❌ Jumping from Vision to Implementation
❌ Skipping Prototyping for AI tools (leads to spec-reality mismatch)
❌ Writing PRDs before validating Architecture and Capability
❌ Sequencing phases by technical layers instead of value
❌ Proceeding to next level when gate criteria aren't met
❌ Keeping artifacts only in chat (lost on session timeout)

## For Bruce's Specific Use Cases

**Building New Claude Code Skills:**
- Prototype conversationally first (Level 5)
- Validate approach before writing skill YAML
- Use PRD template for skill specification

**Client Deliverables (Copy, Campaigns):**
- Vision = Client outcome transformation
- Capability = Individual deliverable pieces
- Phased Delivery = Sequence for maximum client value

**Book Project (AIPP):**
- Vision = Reader transformation state
- Architecture = Book structure + supporting systems
- Capability = What each chapter/system delivers
