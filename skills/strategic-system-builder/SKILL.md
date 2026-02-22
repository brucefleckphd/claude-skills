---
name: strategic-system-builder
description: |
  Complete methodology for strategic entrepreneurs building business systems with AI.
  Guides users through the Translation Stack (Vision > Architecture > Capability > Specification > Implementation),
  the Three Questions Protocol, Document Hierarchy, PRD writing, Phased Delivery Planning, and Technical Design Documents.
  Use when planning new systems, creating architecture maps, writing capability maps, drafting PRDs,
  or building any AI-assisted business system from strategic vision to working implementation.

  Triggers on: "/strategic-system-builder", "build a system", "create architecture", "write a PRD",
  "system architecture", "capability map", "translation stack", "phased delivery", "technical design document".
---

# Strategic System Builder

Complete methodology for strategic entrepreneurs who build business systems using AI coding assistants. Bridges the gap between strategic thinking and technical execution by making the invisible translation layers visible.

## When to Use This Skill

- Planning a new business system or initiative from scratch
- Creating or updating a System Architecture Map
- Defining what a system must do (Capability Mapping)
- Writing PRDs (Product Requirements Documents) for AI-assisted builds
- Sequencing capabilities into phased delivery plans
- Creating Technical Design Documents for production systems
- Diagnosing why AI-assisted building feels inconsistent or produces wrong results
- Any time you need to translate strategic vision into something AI can execute

## Invocation

```
/strategic-system-builder
```

Or provide context directly:

```
/strategic-system-builder I need to plan a new lead generation system
/strategic-system-builder help me write a PRD for my Second Brain's retrieval capability
/strategic-system-builder I want to create an architecture map for my business infrastructure
```

## Core Insight

Between your vision and working code, there are five levels of translation. Most people see only the top and bottom -- Vision and Implementation -- and try to jump between them. This is why AI-assisted building feels inconsistent. The AI is being asked to do translation work it wasn't designed for.

The solution: Make the invisible levels visible. Document each level. Move through them in sequence.

## The Translation Stack

| Level | What Lives Here | Document Type | Your Role |
|-------|-----------------|---------------|-----------|
| **Vision** | The transformed state | Vision Document | Define it |
| **Architecture** | The system of systems | System Architecture Map | Design it |
| **Capability** | What each piece does | Capability Map | Map it |
| **Specification** | How it performs the job | PRD | Write it |
| **Implementation** | The code itself | CLAUDE.md | Verify it |

**Rule:** Never skip a level. Each level translates the one above it.

## The Three Questions Protocol

| Order | Question | Level | When Asked |
|-------|----------|-------|------------|
| 1 | **What's the system?** | Architecture | Once at start; when strategy shifts |
| 2 | **What must it do?** | Capability | For each major component |
| 3 | **How exactly?** | Specification | Before each build session |

**Rule:** Don't answer Question 3 until you've answered Questions 1 and 2.

## Workflow

When this skill is invoked, follow this orchestration protocol:

### Phase 1: Detect Current State

Determine where the user is in the methodology:

1. **Do they have a Vision Document?** If not, start there.
2. **Do they have a System Architecture Map?** If not, create one.
3. **Do they have a Capability Map** for the system they're building? If not, map it.
4. **Do they have a Phased Delivery Plan?** If the Capability Map has 4+ capabilities, create one.
5. **Do they have a PRD** for the current build? If not, write one.
6. **Are they building production software?** If yes, consider a Technical Design Document.

Ask the user which of these they need help with, or detect from their request.

### Phase 2: Execute at the Right Level

Based on what the user needs, load and follow the appropriate reference document:

| User Needs | Reference to Load |
|------------|-------------------|
| Understand the full methodology | `references/00-methodology-overview.md` |
| Understand the mental model / where to focus | `references/01-translation-stack.md` |
| Decide what to work on next | `references/02-three-questions-protocol.md` |
| Know what documents to create | `references/03-document-hierarchy.md` |
| Write a PRD that AI can execute | `references/04-prd-deep-dive.md` |
| Sequence capabilities into phases | `references/05-phased-delivery-planning.md` |
| Create a technical blueprint for production | `references/06-technical-design-documents.md` |
| Apply execution discipline with verification | `references/07-core-agent-operations.md` |

### Phase 3: Guide Document Creation

For each document type, guide the user through creation using the templates and examples from the reference files.

#### Vision Document
- One page maximum, often one paragraph
- Describes the transformed state, not features
- **Test:** Can someone understand the goal without knowing the implementation?
- Read `references/01-translation-stack.md` for the Vision section and examples

#### System Architecture Map
- Shows all systems and their relationships
- Includes flows, boundaries, dependencies, sequences
- **Test:** Could someone unfamiliar with your business see how all pieces fit together?
- Read `references/03-document-hierarchy.md` for the Architecture Map template

#### Capability Map
- Lists all capabilities as jobs to be done, NOT features
- Each capability: description, inputs, outputs, dependencies, what it serves
- **Test:** For each capability, can you imagine 3+ different implementations?
- Read `references/03-document-hierarchy.md` for the Capability Map template

#### Phased Delivery Plan
- Identify the core problem (not the full vision)
- Find minimum viable capability set for Phase 1
- Sequence remaining capabilities by: dependencies, value, effort
- **Test:** Could you stop after Phase 1 and still have something valuable?
- Read `references/05-phased-delivery-planning.md` for the full process

#### PRD (Product Requirements Document)
Eight required components:
1. **Objective** -- Links to Capability Map
2. **Scope** -- In Scope AND Out of Scope (both critical)
3. **Requirements** -- Specific, testable, independent, necessary
4. **Acceptance Criteria** -- Verifiable checkboxes
5. **Integration Points** -- Inputs, outputs, dependencies
6. **Edge Cases** -- Unusual scenarios with defined behaviors
7. **Constraints** -- Technical, business, practical limitations
8. **Out of Scope** -- Explicit exclusions with reasons
- **Test:** Could the AI build without any clarifying questions?
- Read `references/04-prd-deep-dive.md` for templates, examples, and anti-patterns

#### Technical Design Document
Use when building production software that must run reliably. Contains:
- Overview, Architecture, Dependencies, Data Flow
- Failure Modes, Observability, Testing, Security, Operations, Recovery
- Read `references/06-technical-design-documents.md` for full template

### Phase 4: Execution Discipline

When moving from specification to implementation, apply the Execution Checklist Protocol:

1. Transform PRD requirements into an execution checklist with evidence column
2. Work through requirements sequentially when dependencies exist
3. Mark each requirement complete AS you implement it, not after
4. Fill evidence column with specific code location or output proof
5. Deliver completed checklist with every output -- this is mandatory

Read `references/07-core-agent-operations.md` for full execution protocols.

### Phase 5: Post-Build

After each build session:
1. Verify build matches PRD using acceptance criteria
2. Update CLAUDE.md with project context for future sessions
3. Document any gaps between spec and reality
4. Feed learnings back up the stack (update Capability Map or Architecture if needed)

## Key Principles

### 1. Documents Are Thinking Tools
Documents aren't bureaucracy. They're externalized thinking. When you write something down, you discover what you don't know.

### 2. Leverage Lives at the Top
Changes at Vision affect everything. Changes at Implementation affect one feature. Invest attention at the highest-leverage level.

### 3. Translation Is Your Job
Your role isn't to code. Your role is to translate Vision > Architecture > Capability > Specification with enough clarity that Implementation happens without you.

### 4. Ambiguity Is the Enemy
Every ambiguity in your specification is a decision the AI makes for you. Sometimes it decides well. Often it doesn't. Make decisions explicit.

### 5. Systems Compound
Your systems aren't separate projects. They're components of one infrastructure. Build with compounding in mind.

### 6. Working Software Beats Comprehensive Documentation
A system that does three things well today is more valuable than a specification for fourteen things eventually. Phase by user value, not technical layers.

## Anti-Patterns to Watch For

| Anti-Pattern | What Happens | Fix |
|-------------|--------------|-----|
| Vision > Implementation (skip 3 levels) | AI makes all assumptions, result doesn't match | Work through all 5 levels |
| Writing PRDs for features, not capabilities | Features don't add up to coherent system | Define capabilities first as jobs to be done |
| No Out of Scope section | Scope creep, AI includes unexpected things | Explicitly list what you're NOT building |
| Vague requirements | "Should work well" -- AI interprets however it wants | Make every requirement testable and specific |
| Phase 1 too big | Takes weeks, no value delivered early | Find the smallest core problem, solve it first |
| Phasing by tech layers | "Phase 1: Database, Phase 2: API" -- no value until Phase 3 | Phase by user value: "Phase 1: Users can do X" |
| Kitchen Sink PRD | Everything at once, too many decisions | One PRD per capability, sequence them |
| Building without Architecture | Systems don't connect, everything is rework | Map the system of systems before building anything |

## Constraints

### NEVER DO:
- Skip levels in the Translation Stack
- Write a PRD before the Capability Map exists
- Build before the AI confirms full understanding with no questions
- Mark execution checklist items without evidence
- Confuse features with capabilities (features are implementations; capabilities are jobs)

### ALWAYS DO:
- Start with Vision, then Architecture, then Capability, then Specification
- Include both In Scope and Out of Scope in every PRD
- Make all requirements testable and specific
- Apply Phased Delivery when Capability Map has 4+ capabilities
- Deliver execution checklists with evidence columns on every build
- Update CLAUDE.md after every build session

## Output Format

All documents should be saved as markdown files. Suggested naming convention:

```
[Project Name]/
  Vision.md
  Architecture-Map.md
  [System Name]-Capability-Map.md
  [System Name]-Phased-Delivery-Plan.md
  PRD-[Capability Name].md
  TDD-[System Name].md    (if production system)
  CLAUDE.md
```

## Origin

Created from Rich Schefren's ZenithPro Lesson 10 - Strategic System Builder methodology. Built on first principles for strategic entrepreneurs building business systems with AI, refined through practice. Integrates the Translation Stack, Three Questions Protocol, Document Hierarchy, PRD Deep Dive, Phased Delivery Planning, Technical Design Documents, and Core Agent Operations execution discipline.
