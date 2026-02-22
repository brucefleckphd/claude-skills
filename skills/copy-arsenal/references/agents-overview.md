# The 9 Agents - Complete Overview

## Agent Architecture

The Copy Arsenal uses 9 specialized agents organized in two groups:

- **4 Critic Agents** - One per master, evaluates copy against that master's standards
- **5 Infrastructure Agents** - Support the Arena competition and evolution system

---

## Critic Agents

### Clayton Critic
**Location:** `~/.claude/agents/clayton-critic/`

**What it evaluates:**
- 29 emotional triggers coverage
- 13 proof strategies usage
- 6 headline maxims compliance
- Tingle Test (gut reaction check)
- 10-step close completeness

**Output:** Score + detailed feedback with specific fixes.

**Used by:**
- Clayton master skill (silent critique before presenting output)
- Arena Phase 2 (evaluating Clayton's entry)

---

### Carlton Critic
**Location:** `~/.claude/agents/carlton-critic/`

**What it evaluates:**
- 17-Point Simple Writing System compliance
- Hook strength and stopping power
- Voice authenticity (bar room test)
- One-Two Punch effectiveness
- A-Brain trigger activation

**Output:** Score + detailed feedback with specific fixes.

**Used by:**
- Carlton master skill (silent critique before presenting output)
- Arena Phase 2 (evaluating Carlton's entry)

---

### Deutsch Critic
**Location:** `~/.claude/agents/deutsch-critic/`

**What it evaluates:**
- 4 C's + 2 H's (Clarity, Compelling, Credible, Change, Honest, Heart-to-Heart)
- Dual Journey presence (logical + emotional)
- 10 Emotional Triggers coverage
- Just Talk Test (natural voice)
- 102 frameworks across 9 elements

**Output:** Score + detailed feedback with specific fixes.

**Used by:**
- Deutsch master skill (silent critique before presenting output)
- Arena Phase 2 (evaluating Deutsch's entry)

---

### Evaldo Critic
**Location:** `~/.claude/agents/evaldo-critic/`

**What it evaluates:**
- Three Box Check
- One Belief clarity and focus
- 10 Questions structure
- Croc Brain activation test
- 66 frameworks across 8 elements

**Output:** Score + detailed feedback with specific fixes.

**Used by:**
- Evaldo master skill (silent critique before presenting output)
- Arena Phase 2 (evaluating Evaldo's entry)

---

## Infrastructure Agents

### Marketplace Judge
**Location:** `~/.claude/agents/marketplace-judge/`

**Purpose:** Predicts which copy entry would win in the actual marketplace. Evaluates based on buyer psychology and conversion probability - not methodology adherence.

**What it does:**
1. Receives all revised entries from a round
2. Evaluates each against buyer psychology criteria
3. Compares all entries head-to-head
4. Predicts marketplace winner
5. Declares winner with full explanation
6. Produces learning briefs for all competitors

**Key principle:** The judge evaluates what would CONVERT, not what follows methodology best.

---

### Arena Synthesist
**Location:** `~/.claude/agents/arena-synthesist/`

**Purpose:** Creates hybrid entries combining frameworks from multiple masters. Optimizes for combinations that might win.

**What it does:**
1. Analyzes the competition brief
2. Selects primary/secondary/tertiary methodologies
3. Documents combination strategy
4. Produces synthesis draft with unified voice
5. Balances strategic analysis with unexplored combinations

**Example output:** "Using Deutsch's dual journey structure (primary) with Carlton's incongruous juxtaposition hook (secondary) and Clayton's proof cascade at the close (tertiary)"

---

### Synthesis Critic
**Location:** `~/.claude/agents/synthesis-critic/`

**Purpose:** Evaluates synthesis entries against integration quality standards. Judges whether methodology combinations were strategic and whether the synthesis is greater than the sum of its parts.

**What it evaluates:**
- Was the combination strategic (not random)?
- Do the elements work together harmoniously?
- Is the synthesis greater than the sum of its parts?
- Does it have a unified voice?

---

### Skill Evolver
**Location:** `~/.claude/agents/skill-evolver/`

**Purpose:** Integrates Arena learning into permanent skill improvements.

**What it does:**
1. Tracks patterns across Arena runs
2. Identifies what winning entries did differently
3. Proposes skill updates
4. Auto-applies minor changes (clarifications, examples)
5. Requests approval for major changes (new frameworks, structural changes)
6. Maintains version history for rollback (last 3 versions)

**Change types:**
- **Minor (auto):** Clarifications, reinforcement, examples
- **Major (requires approval):** New frameworks, structural changes, paradigm shifts

---

### Copywriter Spawner
**Location:** `~/.claude/agents/copywriter-spawner/`

**Purpose:** Creates new copywriter methodologies from winning synthesis combinations.

**Trigger:** Synthesis wins ALL rounds of an Arena competition.

**What it does:**
1. Detects winning synthesis pattern
2. Asks user to name the new methodology
3. Extracts the combination formula
4. Builds new skill folder with SKILL.md
5. Builds new critic agent
6. Initializes win records
7. Integrates new copywriter into the stable

**Example:** The `practitioner-persuasion` methodology was spawned this way from a synthesis that won all rounds in a Health Practitioner Cold Email Arena.

---

## Agent Interaction Map

```
Arena Round:
  Drafting:   [Clayton] [Carlton] [Deutsch] [Evaldo] [Synthesist]
                 |          |         |         |          |
  Critique:   [Clay-C]  [Carl-C]  [Deut-C]  [Eval-C]  [Synth-C]
                 |          |         |         |          |
  Revision:   [Clayton] [Carlton] [Deutsch] [Evaldo] [Synthesist]
                 \          \         |         /          /
  Judgment:              [Marketplace Judge]
                              |
  Learning:          [Skill Evolver]
                              |
  Spawning:       [Copywriter Spawner] (if synthesis sweeps)
```

---

*Part of the ZenithPro Copy Arsenal Reference Set*
