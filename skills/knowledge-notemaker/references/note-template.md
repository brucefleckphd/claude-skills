# Note Template

Use this exact markdown structure for all knowledge notes (YouTube and web articles).

## Template

```markdown
---
type: ref.note
tags:
  - primary-topic/subtopic
  - secondary-topic/subtopic
source: YouTube
people: firstname-lastname
date-created: YYYY-MM-DD
---
# {Author} - {Title}

**URL:** {url}

## Situation
[A description of the history and present conditions that lead to the current problem. Provide context the author establishes for why this topic matters now.]

## Problem
[The current problem or challenge being addressed. What pain point or gap is the author identifying?]

## Solution
[The premise proposed by the author that offers the best chance of solving the problem. The core framework or approach being taught.]

## Teaching Points

1. **{Teaching Point 1 Title}:** [Explain the topic/concept]
   - **Key Quote:** > "{Exact quote from the author that captures the essence of this point}"
   - **How to Use:** [Describe how to apply this concept]
   - **Example:** [ONLY if the author provides one — otherwise omit this line entirely]

2. **{Teaching Point 2 Title}:** [Explain the topic/concept]
   - **Key Quote:** > "{Exact quote from the author that captures the essence of this point}"
   - **How to Use:** [Describe how to apply this concept]
   - **Example:** [ONLY if the author provides one — otherwise omit this line entirely]

3. **{Teaching Point 3 Title}:** [Explain the topic/concept]
   - **Key Quote:** > "{Exact quote from the author that captures the essence of this point}"
   - **How to Use:** [Describe how to apply this concept]
   - **Example:** [ONLY if the author provides one — otherwise omit this line entirely]

[Continue adding teaching points as needed]

## Action Steps

1. {First action step the viewer/reader should take}
2. {Second action step}
3. {Third action step}
[Add as many action steps as the content warrants]
```

## Guidelines

**Minimum Requirements:**
- At least 5 teaching points for content over 10 minutes or 1500+ words
- At least 3 teaching points for shorter content
- At least 3 action steps
- All sections must be completed

**Key Quote Rules:**
- MANDATORY for every teaching point — no exceptions
- Must be the author's exact words from the transcript or article
- Choose the quote that best captures the essence, epiphany, or core insight of that teaching point
- Format as a blockquote: > "quoted text"
- Keep quotes concise — 1-3 sentences that pack the most punch

**Example Rules:**
- ONLY include if the author explicitly provides a concrete example
- If the author does not give an example for a teaching point, OMIT the Example line entirely
- Do NOT fabricate, infer, or invent examples
- When included, describe the author's example faithfully

**Formatting Rules:**
- Bold the first few words of each teaching point title
- Use H2 (`##`) for main sections
- Include the URL in the header section
- YAML frontmatter is required on every note

**YAML Frontmatter Rules:**
- `type`: Always `ref.note`
- `tags`: At least two tags in `primary-topic/subtopic` format (lowercase, hyphenated)
- `source`: Either `YouTube` or `Web Article`
- `people`: Author name in `firstname-lastname` format (lowercase, hyphenated)
- `date-created`: Date the note was created in `YYYY-MM-DD` format

**Content Quality:**
- Extract specific, actionable insights — not vague summaries
- Key quotes should represent the author's strongest phrasing of each concept
- Action steps should be immediately implementable
- Situation/Problem/Solution should form a cohesive narrative

**Filename Convention:**
`{Author}-{Title}.md`

Example: `Alex Hormozi-How to Build a $100M Business.md`
Example: `Seth Godin-The Practice of Shipping Creative Work.md`

**Save Location:**
`C:\Users\bruce\Documents\Notes\50.00 Knowledge\[Appropriate Subfolder]\`

Match the content's primary topic to the correct subfolder. See SKILL.md for the full subfolder mapping table.
