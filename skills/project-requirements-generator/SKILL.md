---
name: project-requirements-generator
description: |
  Generate AI Execution Specifications — the non-code equivalent of PRDs designed for human-AI
  collaboration where autonomous execution is the goal. Guides users through project type selection,
  interviews them to fill all critical sections, and produces complete specs with PRD-level rigor.

  Triggers on: "/project-requirements-generator", "create execution spec", "generate project requirements",
  "AI execution spec", "create project spec", "new project spec".
---

# Project Requirements Generator

Generate AI Execution Specifications with PRD-level rigor for autonomous human-AI collaboration. These specs remove judgment calls, specify "done" precisely, and embed decision rules for ambiguous situations.

## When to Use This Skill

- Starting any non-code project that will involve AI execution
- Planning marketing campaigns, course designs, coaching engagements
- Setting up strategic analysis or research projects
- Launching content production at scale
- Creating knowledge synthesis workflows
- Developing partnership or deal documentation
- Any project where AI needs to execute autonomously to completion

## Invocation

```
/project-requirements-generator
```

Or provide context directly:

```
/project-requirements-generator for a marketing campaign to launch my new course
```

## Workflow

### Phase 1: Project Type Detection

Determine which spec template best fits the user's project. If not clear from context, present the options:

| # | Spec Type | Best For |
|---|-----------|----------|
| 1 | **Generic** | Any project not matching below; starting point for custom types |
| 2 | **Marketing Campaign** | Email sequences, ads, landing pages, launches, promotions |
| 3 | **Course Design** | Curriculum, training programs, educational content |
| 4 | **Coaching Client** | Managing ongoing coaching engagements and client relationships |
| 5 | **Strategic Analysis** | Market research, competitive intelligence, opportunity assessment |
| 6 | **Content Production** | Blog posts, social media, newsletters, content at scale |
| 7 | **Third Brain Synthesis** | Knowledge synthesis, weekly reviews, pattern recognition |
| 8 | **Partnership Development** | Deals, partnerships, joint ventures, collaborations |

**Detection Logic:**
- If the user provides context (e.g., "for a course"), select the matching template
- If ambiguous, ask which type fits best
- If truly novel, use the Generic template

### Phase 2: Load Reference Template

Read the appropriate template from the `references/` folder:

| Type | Reference File |
|------|---------------|
| Generic | `references/generic-template.md` |
| Marketing Campaign | `references/marketing-campaign.md` |
| Course Design | `references/course-design.md` |
| Coaching Client | `references/coaching-client.md` |
| Strategic Analysis | `references/strategic-analysis.md` |
| Content Production | `references/content-production.md` |
| Third Brain Synthesis | `references/third-brain-synthesis.md` |
| Partnership Development | `references/partnership-development.md` |

### Phase 3: Discovery Interview

Interview the user to populate all critical sections of the spec. Do NOT attempt to fill in every field — focus on the sections that matter most for autonomous execution.

**Interview Priority (Most Critical First):**

1. **Objective** — What exactly will exist when this is done?
2. **Success Criteria** — How do we know it's done? Measurable outcomes only.
3. **Scope** — What's in? What's explicitly out?
4. **Decision Rules** — When encountering ambiguity, what should AI do?
5. **Deliverables** — Exact outputs with format specs.
6. **Source Materials** — What to reference, hierarchy of authority.
7. **Constraints** — Tone, voice, format boundaries.
8. **Completion Standard** — What "done" looks like precisely.

**Interview Approach:**
- Ask 2-4 focused questions at a time, not all at once
- Use the user's own language and context to pre-populate where possible
- If the user provides a brief, extract answers from it before asking
- Flag when a section is critical but the user hasn't provided enough detail
- Don't ask about sections the user has already addressed

**The Core Test:** If the AI would have to stop and ask "but what about..." during execution — the spec needs more detail in that area.

### Phase 4: Spec Generation

Generate the completed AI Execution Specification by:

1. Using the domain-specific template as the structure
2. Filling in all sections from the interview
3. Marking any unfilled optional sections with `[TO BE COMPLETED]`
4. Adding today's date and version 1.0
5. Including the appropriate tags

**Critical Quality Checks Before Output:**
- [ ] Objective is ruthlessly specific (one sentence)
- [ ] Success criteria are measurable, not vibes
- [ ] Scope explicitly states what's IN and OUT
- [ ] Decision rules cover the most likely ambiguity points
- [ ] Completion standard defines "done" precisely
- [ ] Source materials include authority hierarchy

### Phase 5: Save & Deliver

Present the completed spec and offer to save it:

1. Display the full spec for user review
2. Ask if any sections need adjustment
3. Offer to save to a user-specified location (or suggest the project folder)
4. Remind the user: "Fill in any [TO BE COMPLETED] sections before handing to AI for execution"

## Key Principles

### What Makes a Spec Work
- **Completeness:** Every critical section filled — no blanks in must-have areas
- **Specificity:** Concrete, measurable, not vague
- **Decision rules:** AI knows what to do when uncertain
- **Source hierarchy:** Authority structure is clear
- **Explicit scope:** What's in/out is defined

### What Causes Spec Failure
- Incomplete critical sections (AI stops to ask questions)
- Vague success criteria (can't verify "done")
- Missing decision rules (AI can't handle ambiguity)
- Unclear source authority (doesn't know what to trust)
- No scope boundaries (scope creep breaks everything)

### The Mental Model
A good spec answers these questions BEFORE work starts:
- What exactly will exist when this is done?
- How do I know it's done vs. "good enough"?
- What do I do when I hit ambiguity?
- What sources have authority?
- What's explicitly NOT my job?

## Constraints

### NEVER DO:
- Generate a spec with empty critical sections (Objective, Success Criteria, Scope, Decision Rules, Completion Standard)
- Assume project details not provided by the user
- Skip the interview phase — always verify understanding
- Output a spec without the user reviewing it first

### ALWAYS DO:
- Pre-populate fields from context the user has already provided
- Flag when critical sections lack sufficient detail
- Include decision rules and escalation triggers
- Add measurable success criteria (not vibes)
- Include the source materials hierarchy
- Date-stamp and version the spec

## Output Format

Output the completed spec as a single markdown document following the structure of the selected template. Include YAML frontmatter:

```yaml
---
type: ai-execution-spec
spec-type: [generic|marketing|course|coaching|analysis|content|synthesis|partnership]
project: [PROJECT NAME]
version: 1.0
created: [DATE]
owner: [NAME]
status: Draft
tags:
  - ai-execution-spec
  - [domain-tag]
---
```

## Origin

Created from Rich Schefren + Claude's AI Execution Specification system (January 2026). The non-code equivalent of PRDs, designed for human-AI collaboration where autonomous execution is the goal.
