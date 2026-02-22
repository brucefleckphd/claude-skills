---
name: epiphany-finder
description: Identifies and articulates epiphany moments from a theme — concise reframings of conventional wisdom that create sudden insight and motivation. Output goes directly into a theme note's Epiphanies section. No full content is generated. Use when a theme has 3+ weeks of evidence AND a clear conventional wisdom violation is visible.
---

# Epiphany Finder

> **Purpose:** Extract the motivating reframings hidden inside a theme's evidence. Produce concise, named epiphany statements ready to drop into a theme note. No full content is generated — only the raw reframing material that feeds content creation.

---

## Psychological Foundation

Epiphanies work through **representational change** — the entire mental frame shifts, not just gets refined. They activate right-hemisphere processing, produce sudden metacognitive certainty ("I always sensed this but couldn't name it"), and break the mental fixation that prevents action.

**The distinction between epiphanies and distinctions:**
- A **distinction** refines: "It's not just X — it's X-in-context-Y." Builds expertise.
- An **epiphany** reframes: "It's not X at all — you've been solving the wrong problem." Breaks inertia.
- The test: Does it produce "I learned something new" (distinction) or "I knew something was wrong but couldn't name it" (epiphany)?

---

## When to Invoke This Skill

**Required conditions (both must be true):**
1. The theme has 3+ weeks of evidence in briefings
2. A clear conventional wisdom violation is visible in the evidence — something the target audience widely believes that the research contradicts or overturns

**Target audience context:** Health practitioners, coaches, and small-team operators using AI for marketing and business operations. Their conventional wisdom about AI tends toward: "AI saves time," "AI makes you more productive," "more AI tools = better results."

---

## Input

The user provides one of:
1. **A theme name** — Skill reads the corresponding theme note from `Content-Themes/`
2. **A theme note file path** — Skill reads that file directly
3. **Raw evidence text** — Skill analyzes the provided text

Theme notes live at:
`/Users/bruce/Obsidian/Notes/20.00 Projects/21.00 BruceFleck.com/21.19 Content/Content-Themes/`

---

## Workflow

### Step 1: Identify the Conventional Assumption

What does the target audience (health practitioners, coaches, small teams) currently believe about this theme? Look for:
- The dominant, unexamined assumption they're operating from
- Beliefs that feel so obvious they're never questioned
- The thing everyone says at the start of an AI conversation

Write it out explicitly: **"They currently believe: [assumption]."**

### Step 2: Find the Reframing Moment

What does the research/theme evidence reveal that CONTRADICTS or OVERTHROWS that assumption — not just nuances it?

Look specifically for:
- Research findings that **reverse** common expectations (expected X, got the opposite)
- Data that shows the **assumed cause-effect is backward** (thought X causes Y; actually Y causes X)
- Evidence that **the problem itself is being misdiagnosed** (spending energy on solution A when the real problem is B)
- Discoveries that the **conventional success strategy is producing failure** (doing the recommended thing and getting worse results)

**If the evidence only nuances the assumption (partially true, depends on context), that's a distinction — not an epiphany. Stop and note this.**

### Step 3: Articulate the Epiphany

Write the reframing as a single, clear statement using one of these frames:

- **The Reversal:** "It's not that [conventional belief] — it's that [complete opposite that changes everything]"
- **The Misdiagnosis:** "The reason [struggle] feels so hard is not [assumed cause] — it's [actual cause]"
- **The Wrong Problem:** "You've been solving [assumed problem] — but the real problem is [actual problem]"
- **The Captured Gain:** "[Benefit everyone believes AI provides] doesn't go to [who everyone thinks gets it] — it goes to [who actually captures it]"

**Quality test:** Read the statement. Does it produce "I always sensed this but couldn't name it"? If yes — epiphany. If it produces "that's interesting, I didn't know that" — it's information, not an epiphany. Reframe.

### Step 4: Name It

Give the epiphany a short, memorable label (2-4 words) that captures the reframing. The name should make the epiphany retrievable — someone should be able to say the name and remember the insight.

Good names compress the reframing: "The Intensification Trap," "The Captured Gain," "The Expertise Paradox."

### Step 5: Check for Additional Epiphanies

A rich theme may contain 2-3 epiphanies. After finding the first, scan for:
- Other conventional assumptions about this theme
- Sub-themes or edge cases where the reframing differs
- Audience-specific beliefs (practitioners vs. coaches vs. organizational leaders)

Produce a separate epiphany statement for each one that meets the quality test.

---

## Output Format

Write each epiphany in this format, ready to paste directly into the theme note's **Epiphanies** section:

```markdown
- **[Epiphany Name]**: [The reframing in 1-2 sentences. What they currently
  believe → what the evidence/theme reveals instead.]
```

**Example:**
```markdown
- **The Intensification Trap**: Most practitioners assume adding AI tools reduces
  workload — but research shows AI intensifies work for those who haven't
  restructured HOW they work, not just what tools they use.
```

---

## Output Destination

After extracting epiphanies, append them to the **Epiphanies** section of the relevant theme note:

`/Users/bruce/Obsidian/Notes/20.00 Projects/21.00 BruceFleck.com/21.19 Content/Content-Themes/[theme-name].md`

Also update the THEME-MAP.md Epiphanies count for that theme:
`/Users/bruce/Obsidian/Notes/20.00 Projects/25.00 Zenith/25.50 Other Resources/Theme-Epiphany-Distinction-Extraction/THEME-MAP.md`

---

## Quality Standards

**The "I Always Knew" Test**
Read the epiphany to yourself. Does it produce the feeling "I always sensed something was wrong here but couldn't name it"? That's the target reaction. If it produces "that's interesting" — it's information. If it produces "of course, everyone knows that" — it's not a reframing. Keep refining.

**The Actionability Test**
A valid epiphany must be actionable in direction even if it doesn't specify the exact action. The audience should be able to say "given this, I should [something different]" even if the specific action isn't named.

**The Evidence Test**
Every epiphany must trace directly to evidence in the theme — research findings, data points, observed patterns. Do not generate epiphanies from logic alone. The research must support the reframing.

**The Non-Obviousness Test**
If the target audience would already agree with the statement before seeing the evidence, it's not an epiphany. The reframing must contradict something they actually believe.

---

## What to Do When You Can't Find an Epiphany

If the evidence in a theme only nuances rather than overthrows conventional wisdom, do not force an epiphany. Instead:
1. Note in the theme note's Evolution section: "Epiphany extraction attempted [date] — evidence supports distinctions, not yet a full epiphany reframing."
2. Flag 1-2 distinction candidates found instead.
3. Recommend `distinction-finder` instead.

---

*Version: 1.0*
*Created: 2026-02-21*
