---
name: copy-arsenal
description: |
  ZenithPro Copy Arsenal - the central orchestrator for a complete AI-powered copywriting system.
  4 master copywriters (Clayton, Carlton, Deutsch, Evaldo), 51+ skills, 882+ frameworks, 9 agents,
  a competitive Arena, and an evolution engine that improves with every use.

  Use this skill when you need help choosing which copywriter, skill, or workflow to use.
  Triggers on: "copy arsenal", "which copywriter", "which master", "copy help", "arsenal"
license: Private
metadata:
  version: 1.0.0
  author: Bruce Fleck (based on Rich Schefren's ZenithPro program)
  category: copywriting-orchestrator
  total_frameworks: 882+
  total_skills: 51+
  total_agents: 9
  masters: 4
  updated: 2026-02-12
---

# ZenithPro Copy Arsenal

The complete AI-powered copywriting system. Four world-class copywriting methodologies, a competitive Arena that pits them against each other, and an evolution engine that makes every skill smarter over time.

---

## What This Skill Does

This is the **central hub** for the entire Copy Arsenal. Use it when you:

- Don't know which copywriter or skill to use for your project
- Want an overview of the system's capabilities
- Need to understand the difference between the four masters
- Want guidance on whether to use a single master, an element skill, or the Arena
- Need a quick reference for any component of the system

**This skill does NOT write copy itself.** It routes you to the right tool for the job.

---

## Quick Start: Three Paths to Great Copy

### Path 1: Single Master (Fast)
Know which approach fits? Go directly to the master.

```
/clayton    - Full sales letter with emotional triggers and proof cascades
/carlton    - Bold, hook-driven copy with stopping power
/deutsch    - Sophisticated, story-driven persuasion for educated buyers
/evaldo     - VSL-optimized copy with croc brain activation
```

### Path 2: Element Skill (Surgical)
Need to fix or improve just ONE section of copy?

```
/clayton-headlines    - Rewrite headlines with emotional triggers
/carlton-hooks        - Create attention-grabbing hooks
/deutsch-leads        - Write sophisticated openings
/evaldo-close         - Build VSL-style closes
```

See `references/element-skills-reference.md` for the complete list of 50+ element skills.

### Path 3: Arena Competition (Maximum Quality)
When quality matters more than speed, let all four masters compete.

```
/arena [project-name] [rounds]

Example: /arena landing-page 3
```

This runs a multi-round competition: all four masters + a synthesis entry draft, get critiqued, revise, and are judged. The best copy wins.

---

## The Four Masters

| Master | Frameworks | Skills | Specialty | Best For |
|--------|-----------|--------|-----------|----------|
| **Clayton Makepeace** | 514 | 15 | Emotional triggers, proof cascades | Health, financial, supplement markets |
| **John Carlton** | 200+ | 19 | Incongruous hooks, bar room voice | Bold offers, personality-driven brands |
| **David Deutsch** | 102 | 10 | Story-driven dual journey | High-end offers, educated audiences |
| **Evaldo Albuquerque** | 66 | 9 | One Belief, croc brain activation | Video sales letters, webinar scripts |

### Which Master for What?

**Selling supplements or health products?**
Use Clayton - emotional proof stacking is his specialty.

**Need attention-grabbing hooks?**
Use Carlton - incongruous juxtaposition creates stopping power.

**Sophisticated, educated audience?**
Use Deutsch - story-driven elegance that respects intelligence.

**Creating a VSL or webinar script?**
Use Evaldo - purpose-built for video sales letter structure.

**Skeptical professionals (cold outreach)?**
Use `/practitioner-persuasion` - a spawned synthesis methodology combining all four masters for professional audiences.

**Not sure?**
Run the Arena and let them compete.

See `references/four-masters-guide.md` for detailed comparison.

---

## Decision Trees

### By Project Type

| Project Type | Recommended | Why |
|-------------|-------------|-----|
| Complete sales letter | Master skill or Arena | Full workflow needed |
| Just headlines | `[master]-headlines` element skill | Surgical improvement |
| Just bullets | `[master]-bullets` element skill | Targeted optimization |
| VSL / video script | `evaldo` | Purpose-built for VSL |
| Email campaign | `clayton-email` | Best email frameworks |
| Cold outreach | `practitioner-persuasion` | Built for skeptical pros |
| Bold hooks needed | `carlton-hooks` | Stopping power specialist |
| Landing page | Arena (3 rounds) | Competition yields best results |
| Maximum quality | Arena (3-5 rounds) | Let masters compete |

### By Audience Type

| Audience | Recommended Master |
|----------|-------------------|
| Health/supplement buyers | Clayton |
| Financial newsletter readers | Clayton |
| Bold personality brand followers | Carlton |
| Educated professionals | Deutsch |
| C-suite executives | Deutsch |
| VSL/webinar viewers | Evaldo |
| Skeptical professionals (cold) | Practitioner Persuasion |

### By Copy Element

| Element | Clayton | Carlton | Deutsch | Evaldo |
|---------|---------|---------|---------|--------|
| Headlines | Emotional triggers | Incongruous hooks | 100 Headlines Method | 13 headline types |
| Leads | 24 lead strategies | Story-driven openings | Dual journey | 10 Questions structure |
| Body | Proof cascades | One-Two Punch | Resistance-free | Croc brain activation |
| Bullets | Fascinations | Power bullets | Polished specificity | Intrigue bullets |
| Close | 10-step close | Takeaway close | Permission close | Stack + urgency |
| Proof | 13 proof strategies | Testimonial mastery | Social proof weaving | Mechanism proof |

See `references/workflow-selection.md` for detailed decision trees with flowcharts.

---

## The Arena System

The Arena is a competitive evolution engine. All four copywriters compete on the same assignment. Each round:

1. **Draft** - All 5 entries (4 masters + synthesis) drafted in parallel
2. **Critique** - Each entry reviewed by its methodology's critic agent
3. **Revise** - Each entry improved based on critic feedback
4. **Judge** - Marketplace Judge declares a winner based on conversion probability
5. **Learn** - All skills updated with learnings from the round

**Why it works:** Competition produces better copy than any single approach. The winning techniques get absorbed by all copywriters, making the entire system stronger.

**After multiple arenas:** The system learns YOUR patterns - which masters win for which project types in YOUR market.

See `references/arena-guide.md` for the complete Arena guide.

---

## The 9 Agents

### Critic Agents (4)
| Agent | Evaluates Against |
|-------|------------------|
| `clayton-critic` | 29 emotions, 13 proof strategies, Tingle Test, 6 headline maxims |
| `carlton-critic` | 17-Point System, hook strength, voice authenticity, One-Two Punch |
| `deutsch-critic` | 4 C's + 2 H's, Dual Journey, 10 triggers, Just Talk Test |
| `evaldo-critic` | Three Box Check, One Belief clarity, 10 Questions, Croc Brain Test |

### Infrastructure Agents (5)
| Agent | Purpose |
|-------|---------|
| `marketplace-judge` | Predicts marketplace winner based on buyer psychology |
| `arena-synthesist` | Creates hybrid entries combining frameworks from multiple masters |
| `synthesis-critic` | Evaluates whether combinations work together effectively |
| `skill-evolver` | Integrates learning into skills permanently (auto for minor, approval for major) |
| `copywriter-spawner` | Creates new copywriters from consistently winning synthesis combinations |

See `references/agents-overview.md` for detailed agent documentation.

---

## Evolution: How the System Gets Smarter

The Copy Arsenal improves with every use:

1. **Within Arena** - Each round provides learning that informs the next round
2. **After Arena** - Skill Evolver analyzes all learning and updates skills
3. **Across Arenas** - Win records track performance; patterns trigger permanent updates
4. **Spawning** - When a synthesis wins ALL rounds, it becomes a new copywriter

**What gets tracked:**
- Which master wins for which project types
- Which frameworks produce the strongest results
- Which combinations work well together
- What critic feedback helps most
- Your specific patterns and preferences

**The more you use it, the more valuable it becomes.**

See `references/evolution-system.md` for the full evolution documentation.

---

## Complete Skill Index

### Clayton Makepeace (15 skills)
| Skill | Purpose |
|-------|---------|
| `clayton` | Master orchestrator - full workflow |
| `clayton-headlines` | Headlines and subject lines |
| `clayton-leads` | Opening hooks and leads |
| `clayton-bullets` | Fascinations and bullet points |
| `clayton-body-copy` | Main body copy |
| `clayton-proof` | Credibility and testimonials |
| `clayton-offers` | Offer structure and pricing |
| `clayton-closes` | Closes and calls to action |
| `clayton-email` | Email campaigns |
| `clayton-psychology` | Buyer psychology (29 emotions) |
| `clayton-process` | Writing craft and methodology |
| `clayton-structure` | Copy architecture (11 components) |
| `clayton-testing` | Testing and optimization |
| `clayton-business` | Copywriting business economics |
| `clayton-events` | Event copywriting |

### John Carlton (19 skills)
| Skill | Purpose |
|-------|---------|
| `carlton` | Master orchestrator - full workflow |
| `carlton-headlines` | Headlines with stopping power |
| `carlton-leads` | Story-driven openings |
| `carlton-hooks` | Incongruous juxtaposition hooks |
| `carlton-bullets` | Power bullets and fascinations |
| `carlton-body` | Body copy with bar room voice |
| `carlton-offers` | Offer and guarantee design |
| `carlton-close` | Close formulas and urgency |
| `carlton-voice` | Voice and storytelling |
| `carlton-psychology` | A-Brain triggers, zombie awakening |
| `carlton-research` | Market research and USP development |
| `carlton-strategy` | Copywriting business frameworks |
| `carlton-structure` | 17-point system and architecture |
| `carlton-features-benefits` | Feature-to-benefit translation |
| `carlton-testimonials` | Testimonial gathering and writing |
| `carlton-turbulence` | Urgency, scarcity, and takeaways |

### David Deutsch (10 skills)
| Skill | Purpose |
|-------|---------|
| `deutsch` | Master orchestrator - full workflow |
| `deutsch-headlines` | 100 Headlines Method |
| `deutsch-leads` | Dual journey openings |
| `deutsch-bullets` | Polished specificity bullets |
| `deutsch-body` | Resistance-free body copy |
| `deutsch-close` | Permission-based closes |
| `deutsch-psychology` | 10 emotional triggers |
| `deutsch-process` | Improvement mindset and craft |
| `deutsch-stories` | Origin stories and narratives |
| `deutsch-strategy` | Copy strategy and positioning |

### Evaldo Albuquerque (9 skills)
| Skill | Purpose |
|-------|---------|
| `evaldo` | Master orchestrator - full workflow |
| `evaldo-headlines` | 13 headline types |
| `evaldo-leads` | 10 Questions opening structure |
| `evaldo-bullets` | Intrigue and mechanism bullets |
| `evaldo-body` | Proof and mechanism explanation |
| `evaldo-close` | Stack, urgency, and price anchoring |
| `evaldo-ideas` | Core idea and angle development |
| `evaldo-lifts` | Supplementary emails and lift notes |
| `evaldo-philosophy` | Copywriting mindset and filters |

### System Skills
| Skill | Purpose |
|-------|---------|
| `copywriting-arena` | Competitive evolution engine |
| `practitioner-persuasion` | Spawned synthesis for professional cold outreach |

---

## System Architecture

```
Copy Arsenal
├── Skills Layer (51+)
│   ├── Clayton: 15 skills (514 frameworks)
│   ├── Carlton: 19 skills (200+ frameworks)
│   ├── Deutsch: 10 skills (102 frameworks)
│   ├── Evaldo: 9 skills (66 frameworks)
│   └── Arena + Spawned: dynamic
├── Agents Layer (9)
│   ├── 4 Critic Agents (one per master)
│   └── 5 Infrastructure Agents (judge, synthesist, etc.)
├── Arena Layer
│   ├── Competition Engine
│   ├── Learning Ledger (~/.claude/arena/ledger.md)
│   ├── Win Records (~/.claude/arena/win-records/)
│   └── Synthesis Registry (~/.claude/arena/synthesis-registry/)
└── Evolution Layer
    ├── Pattern Detection
    ├── Skill Updates (minor=auto, major=approval)
    └── Copywriter Spawning (synthesis wins all rounds)
```

---

## Key Locations

| Component | Location |
|-----------|----------|
| Skills | `~/.claude/skills/` |
| Agents | `~/.claude/agents/` |
| Arena Data | `~/.claude/arena/` |
| Ledger | `~/.claude/arena/ledger.md` |
| Win Records | `~/.claude/arena/win-records/` |
| Arena Output | `~/Documents/Notes/00 Projects/[project]-arena-[date]/` |

---

## Reference Files

- `references/four-masters-guide.md` - Detailed comparison of all four masters
- `references/workflow-selection.md` - Decision trees and project-type routing
- `references/element-skills-reference.md` - Complete element skill catalog
- `references/arena-guide.md` - Full Arena competition guide
- `references/agents-overview.md` - All 9 agents documented
- `references/evolution-system.md` - How the system improves over time
- `references/system-architecture.md` - Technical system architecture

---

*ZenithPro Copy Arsenal v1.0.0*
*882+ frameworks. 4 masters. 51+ skills. 9 agents. One system that gets smarter every time you use it.*
