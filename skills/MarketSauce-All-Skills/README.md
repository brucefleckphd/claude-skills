# MarketSauce Skills Library

## 29 Production-Ready Claude Skills

Official Claude Skill format compatible with [Claude Custom Skills](https://support.claude.com/en/articles/12512198-how-to-create-custom-skills).

---

## Installation

### Option 1: Upload Individual Skills
1. Go to **Settings > Capabilities** in Claude
2. Click "Add Skill"
3. Upload any `.zip` file from the `individual-skills/` folder

### Option 2: Extract All Skills
1. Unzip `MarketSauce-All-Skills.zip`
2. Each skill folder contains a `SKILL.md` file
3. Upload skill folders individually to Claude

---

## Skills Included

### Sales (7 skills)
| Skill | Description |
|-------|-------------|
| `sales-research-prospect` | Research prospects before outreach |
| `sales-cold-outreach` | Write personalized cold outreach emails |
| `sales-handle-objections` | Navigate sales objections with proven frameworks |
| `sales-follow-up-sequence` | Create strategic follow-up sequences |
| `sales-create-proposal` | Generate professional proposals |
| `sales-discovery-prep` | Prepare for discovery calls |
| `sales-referral-request` | Ask for referrals effectively |

### Marketing (8 skills)
| Skill | Description |
|-------|-------------|
| `mkt-content-strategy` | Build comprehensive content strategies |
| `mkt-case-study` | Transform client results into case studies |
| `mkt-email-campaign` | Design email marketing campaigns |
| `mkt-social-content` | Create social media content |
| `mkt-landing-page` | Write high-converting landing pages |
| `mkt-lead-magnet` | Create valuable lead magnets |
| `mkt-newsletter` | Write engaging newsletters |
| `mkt-repurpose-content` | Transform content across formats |

### Operations (5 skills)
| Skill | Description |
|-------|-------------|
| `ops-document-process` | Document business processes |
| `ops-meeting-notes` | Transform meetings into action items |
| `ops-design-automation` | Design workflow automations |
| `ops-job-description` | Write compelling job descriptions |
| `ops-onboarding` | Create onboarding experiences |

### Events (4 skills)
| Skill | Description |
|-------|-------------|
| `evt-plan-event` | Plan events from concept to execution |
| `evt-build-rundown` | Create production run-of-show documents |
| `evt-design-workshop` | Design interactive workshops |
| `evt-sponsor-pitch` | Pitch sponsors effectively |

### Strategy (1 skill)
| Skill | Description |
|-------|-------------|
| `strat-competitor-analysis` | Deep competitive intelligence |

### Community (1 skill)
| Skill | Description |
|-------|-------------|
| `com-community-health` | Monitor and improve community health |

### Client Delivery (1 skill)
| Skill | Description |
|-------|-------------|
| `client-kickoff` | Run effective project kickoffs |

### Personal Brand (1 skill)
| Skill | Description |
|-------|-------------|
| `brand-write-bio` | Craft professional bios |

### Communication (1 skill)
| Skill | Description |
|-------|-------------|
| `comms-feedback` | Deliver effective feedback |

---

## Skill Structure

Each skill follows the official Claude format:

```
skill-name/
└── SKILL.md
```

### SKILL.md Format
```yaml
---
name: skill-name
description: Brief description (max 200 chars) - Claude uses this to decide when to invoke the skill
---

# Skill Title

## When to Use This Skill
...

## Required Inputs
...

## Instructions
...

## Output Format
...
```

---

## MCP Integrations

Many skills support MCP (Model Context Protocol) integrations:
- **Firecrawl** - Web scraping and research
- **Zapier** - 7,000+ app integrations (Gmail, Slack, Notion, CRM, etc.)
- **Notion** - Direct database management

---

## Created by Gen AI University

Ship outcomes, not collect knowledge.

Learn more at [GenAIUniversity.com](https://genaiuniversity.com)

© 2025 Gen AI University. All rights reserved.
