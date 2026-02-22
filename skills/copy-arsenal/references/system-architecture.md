# System Architecture

## Four-Layer Architecture

The Copy Arsenal operates across four layers:

```
Layer 1: Skills (51+)
    The knowledge base. Frameworks, workflows, voice patterns.

Layer 2: Agents (9)
    The evaluators. Critics, judges, evolvers, spawners.

Layer 3: Arena
    The competition engine. Drafting, critique, revision, judgment.

Layer 4: Evolution
    The learning engine. Pattern detection, skill updates, spawning.
```

---

## Layer 1: Skills

### Master Orchestrators (4 + spawned)
Full workflow skills that guide complete copy projects:
- `clayton` - 514 frameworks, 15 skills
- `carlton` - 200+ frameworks, 19 skills
- `deutsch` - 102 frameworks, 10 skills
- `evaldo` - 66 frameworks, 9 skills
- `practitioner-persuasion` - Spawned synthesis

### Element Skills (49+)
Surgical tools for specific copy sections:
- Clayton: 14 element skills
- Carlton: 18 element skills
- Deutsch: 9 element skills
- Evaldo: 8 element skills

### System Skills
- `copywriting-arena` - Competition orchestrator
- `copy-arsenal` - This meta-orchestrator

### Skill Structure
Each skill contains:
```
skill-name/
├── SKILL.md          # Main skill definition
└── references/       # Supporting materials
    ├── frameworks/   # YAML framework files
    ├── meta/         # JSON categorization
    └── *.md          # Guides, patterns, templates
```

---

## Layer 2: Agents

### Critic Agents (4)
Located in `~/.claude/agents/`:
- `clayton-critic` - Evaluates against Clayton standards
- `carlton-critic` - Evaluates against Carlton standards
- `deutsch-critic` - Evaluates against Deutsch standards
- `evaldo-critic` - Evaluates against Evaldo standards

### Infrastructure Agents (5)
- `marketplace-judge` - Declares Arena winners
- `arena-synthesist` - Creates hybrid entries
- `synthesis-critic` - Evaluates combinations
- `skill-evolver` - Integrates learning into skills
- `copywriter-spawner` - Creates new copywriters

---

## Layer 3: Arena

### Competition Engine
- Parallel drafting (5 entries simultaneously)
- Parallel critique (5 critics simultaneously)
- Parallel revision (5 revisions simultaneously)
- Sequential judgment (1 judge, needs all inputs)

### Data Stores
Located in `~/.claude/arena/`:
```
arena/
├── ledger.md                # Master ledger (all stats, history)
├── config.md                # Arena settings
├── win-records/             # Per-copywriter performance
│   ├── clayton.md
│   ├── carlton.md
│   ├── deutsch.md
│   ├── evaldo.md
│   └── [spawned].md
└── synthesis-registry/      # Combination tracking
    ├── successful/          # Became copywriters
    └── attempted/           # All tried combinations
```

### Output Structure
Project outputs saved to Notes folder:
```
[project]-arena-[date]/
├── brief.md
├── round-N/
│   ├── drafts/
│   ├── critiques/
│   ├── revisions/
│   └── judgment.md
├── final/
│   ├── winner.md
│   ├── learning-summary.md
│   └── evolution-log.md
└── arena-summary.md
```

---

## Layer 4: Evolution

### Pattern Detection
- Tracks win/loss data across all arenas
- Identifies which masters win for which project types
- Detects successful synthesis combinations
- Monitors user overrides for judge calibration

### Skill Updates
- **Minor (auto):** Clarifications, examples, reinforcement
- **Major (approval):** New frameworks, structural changes
- **Version history:** Last 3 versions maintained for rollback

### Copywriter Spawning
- Triggered when synthesis wins ALL rounds
- Creates new skill + critic from winning combination
- Tracks lineage (parent methodologies and percentages)
- New copywriter competes in future arenas

---

## Data Flow

### Single Master Flow
```
User Brief -> Master Skill -> Draft -> Critic -> Revision -> Final Output
```

### Arena Flow
```
User Brief -> 5 Drafters (parallel)
           -> 5 Critics (parallel)
           -> 5 Revisers (parallel)
           -> 1 Judge (sequential)
           -> Learning Integration
           -> [Next Round or Post-Arena]
           -> Skill Evolution
```

---

## File Locations Summary

| Component | Location |
|-----------|----------|
| Skills | `~/.claude/skills/` |
| Agents | `~/.claude/agents/` |
| Arena Data | `~/.claude/arena/` |
| Learning Ledger | `~/.claude/arena/ledger.md` |
| Win Records | `~/.claude/arena/win-records/` |
| Synthesis Registry | `~/.claude/arena/synthesis-registry/` |
| Arena Output | `~/Documents/Notes/00 Projects/[project]-arena-[date]/` |

---

## Framework Statistics

| Master | Frameworks | Skills | Category |
|--------|-----------|--------|----------|
| Clayton Makepeace | 514 | 15 | Emotional triggers + proof |
| John Carlton | 200+ | 19 | Hooks + voice |
| David Deutsch | 102 | 10 | Story + journey |
| Evaldo Albuquerque | 66 | 9 | Belief + brain |
| **Total** | **882+** | **53+** | |

Plus 9 agents, Arena engine, and Evolution system.

---

*Part of the ZenithPro Copy Arsenal Reference Set*
