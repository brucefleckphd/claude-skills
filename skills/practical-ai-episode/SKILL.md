---
name: practical-ai-episode
description: Creates episode outlines, demo prompts, and talking points for
  Practical AI for Professionals YouTube episodes. Takes any business task
  and builds beginner/intermediate/advanced AI demonstrations.
metadata:
  version: 1.0.0
  author: Bruce Fleck
  category: content-creation
  updated: 2026-02-27
---

# Practical AI for Professionals — Episode Builder

Build complete episode packages for the Practical AI for Professionals YouTube channel. Given any business task, this skill produces a structured outline, copy-paste-ready demonstration prompts at three sophistication levels, and dual-host talking points.

## Channel Context

**Channel:** Practical AI for Professionals
**Hosts:** Bruce Fleck & Bower Himes
**Format:** Live demonstration — hosts walk through real AI prompts on screen, showing results in real-time
**Audience:** Business professionals who use AI but get mediocre results; they want practical, immediately applicable techniques
**Tone:** Conversational, practical, zero jargon. Two colleagues showing you how they actually work, not lecturing.

### Host Expertise Areas
- **Bruce Fleck** — Psychology of learning, mental models, why people get stuck with AI, the mindset shifts that unlock better results. Brings the "why this works" angle.
- **Bower Himes** — Project management, operational execution, real-world business scenarios. Brings the "here's exactly when I'd use this" angle.

## When to Use This Skill

- Planning a new episode from a topic idea
- Brainstorming which angle to take on a business task
- Building the full episode package before recording
- Generating demonstration prompts that are ready to perform live

## The Three-Level Framework

Every episode demonstrates the same business task at three levels of prompting sophistication. This is the backbone of every episode — it never changes.

### Level 1: Beginner
- **Pattern:** Role → Task → Format (simple, one-shot prompt)
- **Scenario:** Low-stakes version of the task
- **Result:** "Good enough" output that most people stop at
- **Teaching moment:** This is where most professionals are today

### Level 2: Intermediate
- **Pattern:** Structured prompting (RISEN or similar framework)
- **Scenario:** Medium-stakes version — more complexity, higher expectations
- **Result:** Noticeably better output with context, constraints, and format control
- **Teaching moment:** Small additions to your prompt create disproportionate improvements

### Level 3: Advanced
- **Pattern:** Expert framework-driven, multi-turn conversation with AI
- **Scenario:** High-stakes version — career-defining, client-facing, or strategic
- **Result:** Output that rivals what a specialist consultant would produce
- **Teaching moment:** When you teach AI an expert's framework, you get expert-level output

### Scenario Escalation
Each level uses the SAME type of task but with escalating stakes:
- Level 1: "Write a quick update for your team" (low stakes, internal)
- Level 2: "Write a status report for senior leadership" (medium stakes, visibility)
- Level 3: "Write the quarterly board report during a crisis" (high stakes, career-defining)

## A4 AI Integration Framework (Advisory Reference)

When the three levels naturally map to these stages, note the alignment. Do NOT force the mapping — the beginner/intermediate/advanced progression is the constant.

- **Accelerate** — AI does an existing task faster. You'd do the same thing, just slower. (Often maps to Level 1)
- **Amplify** — AI improves the quality of what you could do alone. Better structure, more thorough, fewer gaps. (Often maps to Level 2)
- **Augment** — AI enables something you couldn't do without it. Expert frameworks, multi-dimensional analysis, capabilities beyond your training. (Often maps to Level 3)

**Integration guideline:** Mention the A4 framework where it naturally fits (usually in the wrap-up or when transitioning between levels). If the topic doesn't cleanly map, skip it — forced references feel inauthentic.

## Episode Creation Workflow

When invoked, follow these steps in order:

### Step 1: Topic Analysis

Given the user's business task topic:

1. **Name the task clearly** — What specific work output are we helping with?
2. **Identify the professional persona** — Who does this work? (e.g., project manager, marketing director, team lead)
3. **Draft the scenario escalation** — Three versions of the task at low/medium/high stakes
4. **Check A4 alignment** — Do the three levels naturally map to Accelerate/Amplify/Augment? Note the fit or lack thereof.

Present the topic analysis to the user for confirmation before proceeding.

### Step 2: Expert Framework Research

Use WebSearch to find 3-5 proven expert frameworks relevant to the business task. These are frameworks that professionals in the field actually use (not AI-specific frameworks).

**Search strategy:**
- Search for "[task] expert framework" and "[task] methodology best practices"
- Look for named, structured frameworks with clear steps (e.g., Monroe's Motivated Sequence, RICE Prioritization, STAR Method)
- Prioritize frameworks that are: well-known in the field, have clear sequential steps, and translate well into AI prompts

**Present to the user:**
```
## Expert Frameworks for [Task]

1. **[Framework Name]** — [One-line description]. Best for: [when to use it]
2. **[Framework Name]** — [One-line description]. Best for: [when to use it]
3. **[Framework Name]** — [One-line description]. Best for: [when to use it]
[up to 5]

Which framework should we feature in the Level 3 advanced demonstration?
```

**Wait for user selection before proceeding.**

### Step 3: Generate Episode Package

Once the framework is selected, generate all three deliverables as a single episode package. Read the episode template at `references/episode-template.md` for the detailed structure, then produce:

#### Deliverable 1: Episode Outline

Full episode structure from hook to wrap-up, following the template:
- Hook (the "you just found out..." opener)
- Problem frame (why most people get generic results)
- Level 1 walkthrough
- Level 2 walkthrough
- Level 3 walkthrough (featuring selected framework)
- Wrap-up with key takeaway, CTA, and next episode tease
- A4 mapping notes (where it applies naturally, or note that it doesn't)

#### Deliverable 2: Demonstration Prompts

The actual prompts to copy-paste during live recording. Each prompt must include:
- Full scenario context (who the viewer is role-playing as, what the situation is, what the stakes are)
- The complete prompt text, ready to paste into ChatGPT/Claude
- Expected output description (so hosts know what to react to)

**Level 3 requires two prompt sequences:**
1. **Framework discovery prompt** — Ask AI to recommend expert frameworks for this task (this is what viewers see first — the AI suggesting frameworks)
2. **Framework application prompts** — Step-by-step prompts that walk through the selected framework with AI (2-4 prompts that build on each other)

#### Deliverable 3: Host Talking Points

Per-section talking points organized by host:
- **Bruce's angles** — Psychology/learning insights, why this level works (or doesn't), mindset shifts
- **Bower's angles** — Practical experience, "here's when I'd actually use this," real-world context
- **Transition language** — How to move between sections naturally
- **A4 references** — Where to mention the framework naturally (with suggested phrasing)
- **Reaction cues** — What to highlight when the AI output appears (differences between levels, quality jumps)

## Output Format

Save the complete episode package as a single markdown file:

```
/Users/bruce/Obsidian/Notes/20.00 Projects/Practical AI for Professionals/Episodes/
Episode-[topic-slug].md
```

The file should contain all three deliverables clearly sectioned with headers.

## Quality Gate Checks

Before delivering, verify every episode package has:

- [ ] **Realistic scenarios at each level** — Not contrived; professionals would actually face these situations
- [ ] **Copy-paste-ready prompts** — Include full context, no placeholders the host would need to fill in live
- [ ] **Clear stakes escalation** — Each level's scenario is meaningfully higher-stakes than the previous
- [ ] **Named expert framework** — Level 3 features a real, searchable framework (not made-up)
- [ ] **Natural A4 references** — A4 mentioned where it fits, omitted where it doesn't
- [ ] **Both hosts represented** — Talking points leverage Bruce's and Bower's distinct angles
- [ ] **Actionable not theoretical** — Every section shows the viewer something they can do today
- [ ] **Transition language included** — Hosts know how to move between sections smoothly
- [ ] **Hook follows channel pattern** — Opens with the "you just found out..." scenario framing
- [ ] **Wrap-up has CTA** — Ends with subscribe, next episode tease, or resource link
