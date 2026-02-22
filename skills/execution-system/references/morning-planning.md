# Morning Planning

Start each day with clarity on priorities, schedule, and focus. This skill conducts an interview to gather plans and generates a structured daily plan.

## Interview Process

### Phase 1: Gather Context

Ask the user:

1. "What meetings do you have scheduled today? (Include times and whether they're flexible or mandatory)"
2. "What personal time blocks do you need? (Exercise, lunch, dinner, appointments)"
3. "What are your top priorities for today?"

### Phase 2: Clarifying Questions

Based on responses, ask clarifying questions such as:
- "You mentioned [task]. Is this for Cook Medical, AIBC, or BruceFleck.com?"
- "What's the deadline on [task]?"
- "Is there anything blocking you from completing [task]?"
- "Do you have the materials/information you need for [meeting]?"

### Phase 3: Categorize Priorities

Sort tasks into:

| Category | Definition | Examples |
|----------|------------|----------|
| **Must Do (Urgent + Important)** | Has deadline today, protects income, committed to others | Cook Medical deadlines, client deliverables |
| **Should Do (Important)** | Moves goals forward, no hard deadline today | Lead gen, project work, learning |
| **Nice to Have** | Helpful but can defer | Admin, organization, optional tasks |

### Phase 4: Energy Mapping

Map tasks to energy levels:

| Time Block | Energy | Best For |
|------------|--------|----------|
| Early AM (before meetings) | Building | Exercise, meditation |
| Morning (until ~11:30am) | Peak | Deep work, complex tasks, important meetings |
| Lunch (11:30am-12:30pm) | Low | Break, light reading, rest |
| Afternoon (2pm-6pm) | Good | Meetings, lead gen, client work |
| Low energy any time | Low | Email, admin, small cognitive tasks |
| Evening | Wind down | Duolingo, food logging, reading |

## Output Format

Generate the following daily plan:

```markdown
## Daily Plan - [Day] [Date]

### Today's Focus
[1-2 sentence summary of the main priority]

### Schedule

| Time | Activity | Category | Notes |
|------|----------|----------|-------|
| [time] | [activity] | [Must/Should/Nice] | [any notes] |

### Must Do Today
- [ ] [Task 1] - [context]
- [ ] [Task 2] - [context]

### Should Do Today
- [ ] [Task 1]
- [ ] [Task 2]

### Nice to Have
- [ ] [Task 1]

### Blocked Time
- [time]: [reason] (protected)

### Cook Medical Projects Active Today
- [Project 1]: [what you're doing]
- [Project 2]: [what you're doing]

### Notes/Reminders
- [Any important context for the day]
```

## Priority Ranking Reference

When helping prioritize, use this order:

1. **Cook Medical (urgent/deadline)** - Protects primary income
2. **Cook Medical (flexible timing)** - Must get done
3. **AI Biz Connection - Client Service** - Maintain current revenue
4. **AI Biz Connection - Prospecting** - Build revenue
5. **BruceFleck.com** - Build personal brand revenue
6. **AI Systems Building** - Infrastructure

## Daily Habits to Protect

Ensure these are scheduled:

| Habit | Ideal Time | Minimum |
|-------|------------|---------|
| Exercise | 7-8am (or first open window) | 20 min home workout |
| Meditation | Morning | 10 min |
| Lunch break | 11:30am-12:30pm | 30 min |
| Lead Gen | 3pm | 30 min, 5 contacts |
| Dinner with Jodi | Evening | Protected |
| Duolingo | Evening | 5 min |
| Reading | Before bed | 10 min |

## Example Interaction

**User:** Run morning planning

**AI:** Good morning! Let's plan your day.

**Q1: What meetings do you have scheduled today?** (Include times and whether they're mandatory or flexible)

**User:** I have a Cook Medical team meeting at 9am that's mandatory. Then a client call with Jen Gaudet at 2pm. And ZenithPro call at noon.

**AI:** Got it.

**Q2: What personal time blocks do you need today?** (Exercise, lunch, dinner, appointments)

**User:** I want to get to the gym before 9. Need lunch. Dinner with Jodi around 6:30.

**AI:**

**Q3: What are your top priorities for today outside of meetings?**

**User:** I need to finish the Aprima claims matrix for Cook--that's due tomorrow. And I want to do some lead gen outreach.

**AI:** A few clarifying questions:
- For the Aprima claims matrix, how much time do you estimate it needs?
- Is the Jen Gaudet call a regular check-in or do you need to prepare materials?

[Continues with clarification, then generates daily plan]

## Integration with Daily Note

After generating the plan, offer to add it to the daily note:

"Would you like me to add this plan to your daily note at `C:\Users\bruce\Documents\Notes\20.00 Journal\2026\[date].md`?"

If yes, add the Daily Plan section to the "My Primary Intentions" section of the daily note.

## Constraints

### NEVER DO:
- Assume priorities without asking
- Schedule over protected time blocks without explicit permission
- Ignore the priority ranking when conflicts arise
- Skip clarifying questions when tasks are ambiguous

### ALWAYS DO:
- Ask about Cook Medical work specifically (for quarterly tracking)
- Protect exercise time in the morning when possible
- Include lead gen in the afternoon plan
- Map tasks to energy levels
- Confirm the plan before finalizing
