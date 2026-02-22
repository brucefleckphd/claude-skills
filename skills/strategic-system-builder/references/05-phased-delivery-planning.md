# Phased Delivery Planning

## The Gap This Fills

The Translation Stack takes you from Vision > Architecture > Capability > Specification > Implementation. That's the right sequence for thinking.

But there's a trap: The Capability Map describes everything the system must eventually do. When you move from Capability Map to PRD, the instinct is to specify everything -- because everything is documented.

This leads to:
- Specifications that try to build the full vision at once
- Long build times before anything works
- No value delivered until everything is done
- Higher risk of building the wrong thing

The solution is **Phased Delivery Planning** -- a step between Capability Map and PRD that sequences capabilities into shippable increments.

## The Principle

**Working software beats comprehensive documentation of future software.**

A system that does three things well, today, is more valuable than a specification for a system that will do fourteen things eventually.

Each phase should:
1. Deliver real value on its own
2. Work completely (not a partial implementation)
3. Create a foundation for future phases
4. Be small enough to build and validate quickly

## When to Use This

**Always use Phased Delivery Planning when:**
- The Capability Map has more than 3-4 capabilities
- Building all capabilities would take more than a few days
- You need something working soon
- There's uncertainty about whether the approach is right

**You might skip it when:**
- The system is genuinely small (2-3 capabilities total)
- All capabilities are tightly coupled and can't work independently
- You're building a quick prototype explicitly meant to be thrown away

## The Process

### Step 1: Identify the Core Problem

Before sequencing, get clear on the single most important problem this system solves.

Not the full vision. Not all the benefits. The ONE problem that, if solved, makes the system worth building.

**Example - Second Brain:**
- Full vision: "Perfect recall across every conversation, decision, framework, and insight"
- Core problem: "I don't know what happened yesterday"

The core problem is simpler than the vision. That's the point. The core problem is what Phase 1 solves.

### Step 2: Find the Minimum Viable Capability Set

Look at your Capability Map. Ask: **Which capabilities are required to solve the core problem?**

Not "which would be nice." Not "which are in the vision." Which are *required* for the core problem.

**Example - Second Brain:**

| Capability | Required for Core Problem? |
|------------|---------------------------|
| Collect | Yes - need to gather data |
| Store | Yes - need to persist it |
| Detect | No - exceptions are enhancement |
| Scan | No - next actions are enhancement |
| Route | No - routing is enhancement |
| Compile | Yes - need to assemble digest |
| Deliver | Yes - need to send it |

Minimum viable set: Collect, Store, Compile, Deliver

### Step 3: Sequence Remaining Capabilities into Phases

Group remaining capabilities by:
1. **Dependencies** - What must exist before this can work?
2. **Value add** - How much does this improve the system?
3. **Effort** - How hard is this to build?

Prioritize: High value, low effort, few dependencies first.

**Example - Second Brain:**

| Phase | Capabilities | What It Adds |
|-------|--------------|--------------|
| Phase 1 | Collect, Store, Compile, Deliver | Working daily digest |
| Phase 2 | Detect (Exception Engine) | Management by exception |
| Phase 3 | Scan (Next Actions) | Project momentum tracking |
| Phase 4 | Route | Automated triage |

### Step 4: Validate the Phasing

For each phase, ask:
- Does this phase work completely on its own?
- Can I use this phase without needing future phases?
- Does this phase make future phases easier?

If a phase only makes sense with a later phase, merge them or resequence.

### Step 5: Write PRDs for Phase 1 Only

Now write your PRD. But write it for Phase 1 -- not for the full vision.

The PRD should:
- Reference the full Capability Map (so context isn't lost)
- Explicitly state which capabilities are in scope
- Explicitly state which capabilities are deferred to future phases
- Be buildable in a reasonable timeframe

## The Phased Delivery Document

Create a simple document that captures your phasing decisions:

```markdown
# [System Name] - Phased Delivery Plan

## Core Problem
[One sentence: the single most important problem this solves]

## Phases

### Phase 1: [Name]
**Capabilities:** [List]
**Delivers:** [What value this provides alone]
**Target:** [When you want this working]

### Phase 2: [Name]
**Capabilities:** [List]
**Delivers:** [What value this adds]
**Depends on:** Phase 1

### Phase 3: [Name]
...

## Deferred (No Current Phase)
- [Capability X] - Reason: [why it's not prioritized]
- [Capability Y] - Reason: [why it's not prioritized]

## Notes
[Any context about phasing decisions]
```

## Example: Second Brain Phased Delivery Plan

```markdown
# Second Brain - Phased Delivery Plan

## Core Problem
I don't know what happened yesterday -- messages, meetings, captures are scattered.

## Phases

### Phase 1: Working Daily Digest
**Capabilities:** Collect, Store, Compile, Deliver
**Delivers:** Daily digest with messages, meetings, captures via iMessage
**Target:** This week

### Phase 2: Exception Detection
**Capabilities:** Detect
**Delivers:** Management by exception -- anomalies surface automatically
**Depends on:** Phase 1 (needs data flowing to detect against)

### Phase 3: Next Actions
**Capabilities:** Scan
**Delivers:** Every project has a clear next action; stale projects flagged
**Depends on:** Phase 1 (needs system running)

### Phase 4: Automated Routing
**Capabilities:** Route
**Delivers:** Exceptions and captures auto-routed to project inboxes
**Depends on:** Phase 2, Phase 3

## Deferred
- Weekly/Monthly/Yearly digests - Reason: Daily must work first
- Additional sources beyond current 3 - Reason: Core sources first

## Notes
Plugin architecture built into Phase 1 so adding sources is easy later.
```

## Common Mistakes

### Mistake 1: Phase 1 Is Too Big
If Phase 1 takes more than a week to build, it's too big. Find a smaller core problem or reduce the capability set.

### Mistake 2: Phases Aren't Independent
If Phase 2 only makes sense after Phase 3 exists, your phasing is wrong. Each phase should deliver standalone value.

### Mistake 3: Skipping Phasing for "Simple" Projects
Projects that seem simple often aren't. The discipline of phasing reveals hidden complexity. When in doubt, phase it.

### Mistake 4: Phasing by Technical Layers Instead of Value
Bad phasing: "Phase 1: Database. Phase 2: API. Phase 3: UI."
Good phasing: "Phase 1: Users can do X. Phase 2: Users can also do Y."

Phase by user value, not technical architecture.

### Mistake 5: Gold-Plating Phase 1
Phase 1 should be minimal. The temptation is to add "just one more thing" because it's easy. Resist. Ship Phase 1, then improve.

## Integration with the Methodology

The updated workflow becomes:

1. Write the Vision Document
2. Create the System Architecture Map
3. Create a Capability Map for the first system
4. **Create a Phased Delivery Plan** (NEW)
5. Write a PRD for Phase 1 capabilities
6. Build Phase 1
7. Update CLAUDE.md
8. Repeat from step 5 for Phase 2

The Phased Delivery Plan sits between Capability Map and PRD. It translates "everything this system must do" into "what we're building now."

## The Test

You know your phasing is right when:

- Phase 1 solves a real problem completely
- You could stop after Phase 1 and still have something valuable
- Each subsequent phase makes the system notably better
- No phase depends on a later phase
- You're excited to ship Phase 1, not anxious about what's missing

## Summary

The Capability Map describes the destination. The Phased Delivery Plan describes the journey.

Don't try to build everything at once. Find the minimum that solves the core problem. Ship it. Then expand.

Working software that does three things well beats documented software that will eventually do fourteen things.
