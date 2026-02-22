# Methodology Review: Recommended Improvements

## Assessment Summary

This documents the identified gaps and potential improvements to the Strategic System Builder methodology, based on real-world usage.

## What's Strong

1. **The Translation Stack is solid.** The five levels (Vision > Architecture > Capability > Specification > Implementation) correctly identify where most people fail -- they skip from Vision straight to Implementation or Specification.

2. **The Three Questions Protocol is practical.** "What's the system? What must it do? How exactly?" forces sequential thinking.

3. **The PRD Deep Dive is comprehensive.** Eight components, the quality checklist, anti-patterns -- this is actionable.

4. **The Capability vs Feature distinction is important.** "Never lose information" (capability) vs "Vector database storage" (feature) -- this is a crucial mental shift.

## Identified Gaps

### 1. Missing: The Feedback Loop

The methodology is linear: Vision > build. But real building is iterative. What happens when:

- You discover during building that a capability was wrong?
- You realize the architecture needs adjustment?
- A PRD reveals a Vision problem?

**Recommendation:** Add explicit guidance on when and how to revise upward. The "When to Update" sections in the Document Hierarchy should be expanded with specific triggers and revision protocols.

### 2. Missing: The Verification Layer

After Implementation, there's CLAUDE.md for context preservation. But there's no explicit step for:

- Verifying the build matches the PRD
- Documenting what was actually built vs what was specified
- Learning from gaps between spec and reality

**Recommendation:** Add a post-build verification step that compares results to acceptance criteria, documents deltas, and feeds learnings back up the stack.

### 3. The Architecture Map Could Use More Structure

The Document Hierarchy gives an example format, but for complex systems, you need:

- Visual diagram standards
- Integration protocol definitions (what format does data flow in?)
- Dependency verification (does X exist before Y can be built?)

**Recommendation:** Add diagram templates and integration protocol standards to the Architecture Map section.

### 4. PRD Doesn't Address Iteration Within a Capability

The PRD is for "one build session." But complex capabilities need multiple builds. There's no guidance on:

- How to sequence PRDs for a multi-part capability
- How to version PRDs as understanding evolves
- When a single PRD becomes multiple PRDs

**Recommendation:** Add a "PRD Sequencing" section for complex capabilities that require multiple build sessions.

### 5. Missing: The Portability Principle

A key insight that should be woven throughout:

- Vision should be tool-agnostic
- Architecture should not assume any specific AI
- Capabilities should be implementable on any platform
- Skills, agents, memory -- all external to the AI

**Recommendation:** Add a Portability Principle section that ensures all documents are designed to survive platform changes. The AI is the executor, not the system.

## Suggested Additional Documents

### The Verification Protocol
- After each build: Compare result to PRD
- Document deltas
- Decide: fix, accept, or revise spec
- Feed learning back up the stack

### The Portability Principle
- All architecture, memory, and operating procedures reside outside the AI
- Zero switching cost between AI systems
- Externalized skill files, agent definitions, workflows
- The AI is the executor, not the system
