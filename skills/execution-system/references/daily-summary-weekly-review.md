# Daily Summary & Weekly Review

Process daily reflections and generate structured summaries for Obsidian daily notes. Also supports weekly reviews to assess progress against the 2026 Systems Planning framework.

**Core Functions:**
- Process voice/text reflections into structured daily summaries
- Track habits and systems execution
- Maintain accountability for the two highest-leverage activities: Morning Exercise and Daily Lead Generation
- Generate weekly reviews aligned with the Systems Planning framework

## Reference Files

**Systems Planning Document:**
`C:\Users\bruce\Documents\Notes\20.00 Journal\2026\2026 Systems Planning - Progress Summary.md`

**Daily Notes Location:**
`C:\Users\bruce\Documents\Notes\20.00 Journal\2026\2026-MM-DD [Dayname].md`

## Invocation

### Daily Summary
```
Process daily summary for: [DATE or "today"]

REFLECTION:
[User's voice/text reflection about their day]
```

### Weekly Review
```
Run weekly review for week of: [DATE]
```

## Daily Summary Processing

### Step 1: Read Daily Note File

Read the target daily note file at:
`C:\Users\bruce\Documents\Notes\20.00 Journal\2026\2026-MM-DD [Dayname].md`

Confirm the file exists and note the current state of the Habits section.

### Step 2: Extract Information from Reflection

Parse the user's reflection to extract:

| Category | Information to Extract |
|----------|------------------------|
| **Exercise** | What exercise was done (or not done), type, duration |
| **Diet** | Eating patterns for morning, afternoon, evening |
| **Meditation** | Yes/No |
| **Reading** | Yes/No, what was read (if mentioned) |
| **Energy** | Energy levels and patterns |
| **Work Completed** | All work items, organized by category |
| **Meetings** | All meetings attended with participants |
| **Personal** | Family time, appointments, personal activities |
| **Tomorrow's Plan** | Any mentioned plans for the next day |

### Step 3: Categorize Work Items

Organize work items into these categories (as applicable):

| Category | Description |
|----------|-------------|
| **Cook Medical** | Day job work items |
| **AI BizConnexion** | Business partnership work with Chantal Cox |
| **Lead Gen** | Cold outreach, LinkedIn, association outreach |
| **Client Work** | Work for specific clients (name the client) |
| **BruceFleck.com** | Personal brand and book launch work |
| **Learning/Development** | Courses, masterminds, skill building |
| **Financial** | Bookkeeping, investment management |
| **Admin** | General administrative tasks |

### Step 4: Update Habits Section

Update the Habits section if values are not already filled in:

```markdown
## Habits
#habit/exercise: [Yes/No + brief description if Yes]
#habit/meditate: [Yes/No]
#habit/read: [Yes/No]
#habit/journal: Yes
#habit/diet: [Yes/Partial/No + brief note if Partial]
```

### Step 5: Generate Daily Summary

Insert the Daily Summary section before the "## Completed Today:" section.

**Daily Summary Template:**

```markdown
## Daily Summary

### Physical
- Exercise: [Yes/No]
- What I did: [Exercise description, or reason if no exercise]
- Energy: [Energy notes if mentioned]

### Diet
- Morning: [Morning eating]
- Afternoon: [Afternoon eating]
- Evening: [Evening eating]

### Work Completed

**[Category 1]:**
- [Work item]
- [Work item]

**[Category 2]:**
- [Work item]

### Lead Gen (AI Biz Connection)
- Contacts made: [# or N/A]
- Method: [cold email, LinkedIn, etc.]
- [Other lead gen activities]

### Meetings
- [Time]: [Meeting name] with [participants]
- [Time]: [Meeting name] with [participants]

### Personal
- [Personal items]

### Tomorrow's Plan ([Day] [Date])
- [ ] [Planned item]
- [ ] [Planned item]
- [ ] **Priority:** [If a priority was mentioned]
```

**Conditional Sections:**
- Include **Lead Gen** section only if lead gen work was done
- Include **Meetings** section only if meetings occurred
- Include **Tomorrow's Plan** section only if plans were mentioned
- Include **Schedule** section only if a detailed timeline was provided
- Omit empty sections

### Step 6: Process Knowledge Links

Check the daily note for a `## Knowledge Links:` section. If present and it contains URLs:

**Step 6a: Create Knowledge Notes**

For each URL found, use the `/knowledge-notemaker` skill to:
1. Scrape the article/video content
2. Analyze and extract teaching points
3. Create a structured knowledge note in the appropriate `50.00 Knowledge\` subfolder

**Step 6b: Add Link Summaries to Daily Note**

After each knowledge note is created, add a brief summary directly below the URL in the daily note using this format:

```markdown
https://example.com/article-url
**{Article Title}** by {Author} — {Topic area}. **Problem:** {The problem addressed}. **Big Idea:** {The core insight or framework}. **Takeaway:** {The actionable conclusion}. [[{Knowledge Note Filename Without Extension}]]
```

The internal Obsidian link uses `[[filename]]` syntax (without the `.md` extension) to link directly to the knowledge note created in Step 6a.

**Guidelines:**
- Keep each summary to 2-3 sentences max
- The Problem, Big Idea, and Takeaway should be distinct and specific — not vague restatements
- The internal link filename must exactly match the knowledge note filename (e.g., `[[Author Name-Article Title]]`)
- Process all links in parallel when possible for efficiency
- If a URL cannot be scraped (paywall, broken link), note this and ask the user for the content

### Step 7: Handle Special Content

**Meeting Summaries:**
If a meeting summary (like ZenithPro call notes) is provided, create a dedicated subsection:

```markdown
### [Meeting Name] - [Date]
**Recording:** [URL if provided]

**Topics Discussed:**
- **[Topic] ([timestamp])** - [Summary]
- **[Topic] ([timestamp])** - [Summary]
```

**Health/Sick Days:**
If the user mentions being sick or unwell:
- Note health status prominently
- Adjust expectations for habits
- Mark diet as "N/A (sick)" if appropriate

## Weekly Review Processing

### Step 0: Load Goals Reference

Before compiling the review, read the goals reference note:
`10.00 Journal/2026/2026 Systems and Goals.md`

This contains the four big goals and the success system definition. Use it to populate the Big Goals Progress section accurately.

### Step 1: Gather Daily Notes

Read all daily notes for the week (Sunday through Saturday or Monday through Sunday as specified):

```
C:\Users\bruce\Documents\Notes\20.00 Journal\2026\2026-MM-DD [Day].md
```

### Step 2: Compile Weekly Metrics

**Habit Tracking:**
| Habit | Sun | Mon | Tue | Wed | Thu | Fri | Sat | Total |
|-------|-----|-----|-----|-----|-----|-----|-----|-------|
| Exercise | | | | | | | | X/7 |
| Meditate | | | | | | | | X/7 |
| Read | | | | | | | | X/7 |
| Diet (Clean) | | | | | | | | X/7 |

**Lead Gen Metrics (from Systems Planning):**
- Total contacts made this week: [#]
- Conversations started: [#]
- Methods used: [list]

**Highest-Leverage Activities Assessment:**
1. Morning Exercise: [X/7 days] - [Assessment]
2. Daily Lead Generation: [X/7 days] - [Assessment]

### Step 3: Generate Weekly Review

**Weekly Review Template:**

```markdown
# Weekly Review - Week of [Date Range]
**Generated:** [Timestamp]

---

## Habit Tracking

| Habit | S | M | T | W | T | F | S | Score |
|-------|---|---|---|---|---|---|---|-------|
| Exercise | | | | | | | | /7 |
| Meditate | | | | | | | | /7 |
| Read | | | | | | | | /7 |
| Diet | | | | | | | | /7 |

---

## Highest-Leverage Activities

### Morning Exercise
- Days completed: X/7
- Types: [list exercise types done]
- Assessment: [On track / Needs attention / Off track]
- Notes: [Patterns observed]

### Daily Lead Generation
- Days with lead gen activity: X/7
- Total contacts: [#]
- Conversations started: [#]
- Assessment: [On track / Needs attention / Off track]
- Notes: [Patterns observed]

---

## Work Summary by Category

### Cook Medical
- [Summary of Cook Medical work this week]

### AI BizConnexion
- [Summary]

### Client Work
- [Client name]: [Summary]

### Learning/Development
- [Summary]

### BruceFleck.com
- [Summary]

---

## Big Goals Progress

### Goal 1: AIPP — $10k/Month (Book + Course + Community)
**Target:** $10,000/month from book sales, course sales, and community subscription
- **This week's activities:** [What was done to advance AIPP — writing, publishing, marketing, community building]
- **Momentum indicators:** [Any sales, signups, leads, content published, milestones hit]
- **Assessment:** [On track / Building momentum / Stalled / Not started this week]
- **Next move:** [The single most important action to advance this goal next week]

### Goal 2: AIBC — $20k/Month (AI Biz Connection)
**Target:** $20,000/month from AI Biz Connection services and programs
- **This week's activities:** [Lead gen, client work, proposals, outreach, partnerships, programs]
- **Revenue indicators:** [New clients, retained clients, proposals sent, conversations active]
- **Assessment:** [On track / Building momentum / Stalled / Not started this week]
- **Next move:** [The single most important action to advance this goal next week]

---

## Wins This Week
- [Notable accomplishments]

## Challenges
- [Obstacles encountered]

## Patterns Noticed
- [Energy patterns, productivity patterns, etc.]

---

## Next Week Focus

Based on Systems Planning priorities:
1. [Focus area 1]
2. [Focus area 2]
3. [Focus area 3]

---

## Accountability Check

**Chantal Check-ins:** [How many this week?]
**Mastermind Attendance:** [Yes/No]
**ZenithPro Engagement:** [Summary]

---

*Review completed: [Timestamp]*
```

## Key People Reference

| Name | Context |
|------|---------|
| **Jodi** | Wife |
| **Chantal Cox** | AI BizConnexion business partner |
| **Jen Gaudet** | Client - Every Day Wellness Wichita |
| **Taireez** | Works with Jen Gaudet |
| **Steve Baker** | Diet accountability partner |
| **Neil Khilnani** | Cook Medical colleague (Delphi consensus) |
| **Adam Gwozdz** | Cook Medical colleague (Delphi consensus) |
| **Darby Rollins** | Claude Code sprint instructor |
| **Rich** | ZenithPro (Q&A sessions) |
| **Lisa** | ZenithPro study group |
| **Seneca** | ZenithPro study group |

## Priority Domains (from Systems Planning)

| Domain | Focus Areas | Target |
|--------|-------------|--------|
| **Physical Health** | Flexibility, Strength, Endurance | Sustained energy for work |
| **Intellectual Growth** | AI for business, marketing, business skills | Expertise that drives business |
| **Business** | AI Biz Connection ($20k/mo), BruceFleck.com ($10k/mo) | $30k/mo combined revenue |
| **Financial** | Investment properties, crypto, stocks | Wealth building & passive income |

## Daily Habits (from Systems Planning)

| Habit | Trigger | Action | Minimum Viable |
|-------|---------|--------|----------------|
| **Evening Planning** | After dinner / 9pm | Check tomorrow's calendar, identify workout window | 5 minutes |
| **Morning Exercise** | First open window (7-8am ideal) | Gym: strength or cardio | 20-min home workout |
| **Lead Gen Hour** | 3pm daily | Outreach for AI Biz Connection | 30 minutes, 5 contacts |
| **Daily Brief** | Before bed / end of work | Voice log in Obsidian via Wispr Flow | 2 minutes |
| **Chantal Check-in** | End of lead gen session | Quick text with numbers | 30 seconds |

## Constraints

### NEVER DO:
- Invent or assume information not provided in the reflection
- Add habits or work items the user didn't mention
- Change the structure of existing daily note content
- Delete or modify content already in the daily note (except updating empty habit fields)

### ALWAYS DO:
- Preserve exact spelling of names (Jodi, Gaudet, etc.)
- Categorize work items accurately
- Include all mentioned activities
- Maintain consistent formatting with previous daily summaries
- Note when highest-leverage activities (exercise, lead gen) were missed
