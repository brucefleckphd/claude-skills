---
name: sales-create-proposal
description: Generate winning proposals and SOWs. Creates professional sales documents with pricing, scope, and terms. Use when moving deals toward close.
---

# Create the Proposal

Transform conversations into contracts. This skill creates compelling proposals that address objections, demonstrate value, and make saying yes easy.

## When to Use This Skill

- After successful discovery/demo calls
- Custom pricing quotes needed
- Formal proposal requested
- Statement of Work (SOW) required

## Required Inputs

**Deal Context:**
- Client company and contact
- Problem/pain points discussed
- Proposed solution and scope
- Budget range (if known)
- Decision timeline
- Key stakeholders

**Pricing Information:**
- Base pricing
- Options/add-ons available
- Discount authority
- Payment terms

## Instructions

1. **Summarize understanding** - Show you heard them
2. **Present solution** - Scope aligned to their needs
3. **Build pricing** - Clear, no surprises
4. **Add social proof** - Relevant case studies
5. **Define next steps** - Make it easy to proceed

## Output Format

```markdown
# Proposal for [Client Name]

**Prepared by:** [Your Name]
**Date:** [Date]
**Valid Until:** [Date]

---

## Executive Summary
[2-3 sentences: their problem, your solution, expected outcome]

---

## Understanding Your Situation
[Reflect back their challenges - shows you listened]

### Current Challenges
- [Challenge 1]
- [Challenge 2]
- [Challenge 3]

### Desired Outcomes
- [Outcome 1]
- [Outcome 2]
- [Outcome 3]

---

## Proposed Solution

### Scope of Work
[Detailed description of what's included]

### Deliverables
| Deliverable | Description | Timeline |
|------------|-------------|----------|
| [Item] | [Description] | [When] |

### What's NOT Included
[Clear boundaries to prevent scope creep]

---

## Investment

### Option A: [Package Name]
**$[Price]** [one-time / monthly / annually]

Includes:
- [Item]
- [Item]
- [Item]

### Option B: [Package Name] - Recommended
**$[Price]** [one-time / monthly / annually]

Includes everything in Option A, plus:
- [Additional item]
- [Additional item]

### Payment Terms
[Payment schedule and terms]

---

## Why Choose [Your Company]

### Results We've Delivered
[Brief case study or metrics from similar client]

### Our Guarantee
[Risk reversal if applicable]

---

## Next Steps

1. [Action 1 - e.g., "Sign this proposal"]
2. [Action 2 - e.g., "Schedule kickoff call"]
3. [Action 3 - e.g., "Submit onboarding info"]

---

**Questions?** Contact [Name] at [email/phone]
```

## MCP Integration

**Zapier Actions:**
- `google_docs_create_document_from_template`: Generate formatted proposal
- `gmail_send_email`: Deliver proposal
- `salesforce_update_record`: Log proposal sent