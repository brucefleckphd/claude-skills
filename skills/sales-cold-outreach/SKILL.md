---
name: sales-cold-outreach
description: Write personalized cold outreach emails and LinkedIn messages. Creates multi-touch sequences with personalization hooks. Use when initiating contact with new prospects.
---

# Write Cold Outreach

Craft personalized outreach that gets responses. This skill creates email and LinkedIn sequences that feel human, not templated.

## When to Use This Skill

- Initiating contact with cold prospects
- Building multi-touch outreach sequences
- Personalizing templates at scale
- LinkedIn connection requests and follow-ups

## Required Inputs

**Prospect Details:**
- Company name and what they do
- Contact name and title
- Research insights (use sales-research-prospect first)
- Personalization hook (recent news, mutual connection, content they posted)

**Campaign Parameters:**
- Outreach channel (email, LinkedIn, or both)
- Number of touches in sequence
- Your offering and specific value prop for this prospect
- Desired call-to-action

## Instructions

### Step 1: Analyze Research
Review prospect intelligence to identify:
1. Primary pain point to address
2. Best personalization angle
3. Tone match for their communication style
4. Optimal timing reference (trigger event)

### Step 2: Craft Opening Hook
Create attention-grabbing opener that:
- References something specific to them (NOT generic flattery)
- Demonstrates you've done research
- Creates curiosity without being clickbait

### Step 3: Bridge to Value
Connect their situation to your solution:
- Agitate the problem briefly
- Hint at solution without pitching
- Use social proof relevant to their context

### Step 4: Close with Low-Friction CTA
- Make the ask small and specific
- Remove risk from saying yes
- Create natural urgency without pressure

### Step 5: Build Sequence
For multi-touch campaigns:
- Touch 1: Initial outreach (value-first)
- Touch 2: Different angle, add value
- Touch 3: Social proof or case study
- Touch 4: Direct ask with breakup hint
- Touch 5: Breakup email (optional)

## Output Format

```markdown
# Cold Outreach Sequence

**Prospect:** [Name] at [Company]
**Hook:** [Personalization angle]
**Campaign Length:** [X touches over Y days]

---

## Touch 1: Initial Outreach
**Subject Line:** [Subject]
**Send Day:** Day 1

[Email body - 3-4 short paragraphs max]

---

## Touch 2: Follow-Up with Value
**Subject Line:** [Subject]
**Send Day:** Day 3

[Email body]

---

## Touch 3: Social Proof
**Subject Line:** [Subject]
**Send Day:** Day 7

[Email body]

---

## Touch 4: Direct Ask
**Subject Line:** [Subject]
**Send Day:** Day 10

[Email body]

---

## LinkedIn Sequence (Optional)

### Connection Request
[Connection request message - 300 char max]

### Follow-Up Message (After Connection)
[Follow-up message]

---

## A/B Test Variants
**Subject Line Alternates:**
- Option A: [Subject]
- Option B: [Subject]

**Opening Hook Alternates:**
- Option A: [Hook]
- Option B: [Hook]
```

## Writing Rules

1. **Subject Lines:** 4-7 words, curiosity or specificity, no spam triggers
2. **Opening:** No "I hope this finds you well" - lead with THEM
3. **Length:** Under 125 words for email, under 300 chars for LinkedIn
4. **Personalization:** Must be swappable if wrong (don't over-commit)
5. **CTA:** One ask per message, make it easy to say yes
6. **Tone:** Match their likely preference (formal for enterprise, casual for startups)

## MCP Integration Notes

**Firecrawl MCP (Pre-work):**
- Research prospect before writing (see sales-research-prospect)

**Zapier MCP Actions:**
- `gmail_create_draft`: Create drafts in Gmail
- `gmail_send_email`: Send directly (if approved)
- `salesforce_create_record`: Log outreach in CRM
- `slack_send_direct_message`: Notify team of outreach

## Example

**Input:** "Write a 3-email sequence for Sarah Chen, VP Marketing at Acme Corp. She recently posted about struggling with content velocity. We help marketing teams 3x output with AI workflows. Get her on a 15-min call."

**Output:**

---

## Touch 1: Initial Outreach
**Subject Line:** Your content velocity post
**Send Day:** Day 1

Sarah,

Your LinkedIn post about content velocity hit home. The "create more with less" pressure is brutal when every piece needs to actually perform.

Curious - have you explored using AI workflows for the heavy lifting? Not the generic chatbot stuff, but actual production pipelines that maintain your brand voice.

We just helped [Similar Company]'s team go from 4 pieces/week to 12 without adding headcount.

Worth a 15-minute look? Happy to show you exactly how it works.

[Your Name]

---

[Continues with Touch 2 and 3...]