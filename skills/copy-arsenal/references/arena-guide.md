# The Arena - Complete Competition Guide

## What Is the Arena?

The Arena is a competitive evolution engine where copywriting masters compete on the same assignment. Each round includes drafting, critique, revision, and judgment. The winning techniques get absorbed by all competitors, making the entire system stronger over time.

**Command:** `/arena [project-name] [rounds]`

**Example:** `/arena landing-page 3`

---

## Why Competition Works

A single copywriting approach gives you ONE perspective. The Arena gives you FIVE (four masters + synthesis), judged against real marketplace criteria. Benefits:

- **Better copy** - Competition produces higher quality than any single approach
- **Multiple perspectives** - See your project through four different lenses
- **Self-improving** - Skills evolve through competition
- **Market-tested** - Judge evaluates based on conversion probability, not theory
- **Discovery** - Sometimes the unexpected master wins, revealing insights

---

## Arena Flow

### Phase 0: Setup

You provide:
1. **Assignment Brief** - Product/service, target market, price point, constraints, copy type
2. **Number of Rounds** - Recommended: 3-5

The Arena creates:
- Project folder with round subfolders
- Output tracking structure

### Phase 1: Drafting (Parallel)

All five entries drafted simultaneously:
- Clayton drafts using emotional triggers + proof cascades
- Carlton drafts using hooks + bar room voice
- Deutsch drafts using dual journey + resistance-free approach
- Evaldo drafts using one belief + croc brain activation
- Synthesis drafts using a strategic combination of frameworks

### Phase 2: Critique (Parallel)

Each entry evaluated by its methodology's critic:
| Draft | Critic | Evaluates |
|-------|--------|-----------|
| Clayton | `clayton-critic` | 29 emotions, 13 proof strategies, Tingle Test |
| Carlton | `carlton-critic` | 17-Point System, hook strength, voice |
| Deutsch | `deutsch-critic` | 4 C's + 2 H's, Dual Journey, Just Talk Test |
| Evaldo | `evaldo-critic` | Three Box Check, One Belief, Croc Brain |
| Synthesis | `synthesis-critic` | Integration quality, harmony, sum > parts |

### Phase 3: Revision (Parallel)

Each entry revised based on its critic's feedback. Copywriters receive their original draft, the critique, and critical fixes.

### Phase 4: Judgment (Sequential)

The Marketplace Judge evaluates all revised entries based on:
- Buyer psychology
- Direct response fundamentals
- Conversion probability

Produces: Winner declaration, full ranking, learning briefs.

**User Override:** After judgment, you can override the winner if you disagree. Your override is logged for future judge calibration.

### Phase 4.5: Ledger Update (Mandatory)

After every judgment, the learning ledger is immediately updated with match results and key learnings. This prevents data loss if context is interrupted.

### Phase 5: Learning Integration (Parallel)

Each competitor receives:
- Their critic's feedback
- Judge's overall learning
- Individual learning brief
- What the winner did differently

### Phase 6: Next Round

Return to Phase 1 with accumulated learning. Each round produces better entries.

### Phase 7: Post-Arena Processing

After all rounds:
- **Skill Evolver** analyzes all learning and updates skills
- **If Synthesis won all rounds:** Copywriter Spawner creates a new methodology

---

## Output Structure

```
[project-name]-arena-[date]/
├── brief.md
├── round-1/
│   ├── drafts/        (5 draft files)
│   ├── critiques/     (5 critique files)
│   ├── revisions/     (5 revised files)
│   └── judgment.md
├── round-2/
│   └── [same structure]
├── round-N/
│   └── [same structure]
├── final/
│   ├── winner.md
│   ├── learning-summary.md
│   └── evolution-log.md
└── arena-summary.md
```

---

## The Synthesis Entry

The fifth competitor is a strategic hybrid. The Arena Synthesist:
1. Analyzes the brief
2. Selects frameworks from multiple masters
3. Documents the combination rationale
4. Produces a synthesis draft

Example combination: "70% Deutsch (story-driven opening) + 20% Carlton (hook power) + 10% Clayton (proof cascade)"

When a synthesis wins ALL rounds of a competition, the Copywriter Spawner creates a new permanent methodology from that combination.

---

## Recommended Round Counts

| Situation | Rounds | Why |
|-----------|--------|-----|
| Quick comparison | 1 | See all approaches, no evolution |
| Standard competition | 3 | Good balance of quality and time |
| Maximum refinement | 5 | Deep evolution across entries |
| Testing new copywriter | 3 | Enough rounds to evaluate |

---

## Records and Memory

| Record | Location | Purpose |
|--------|----------|---------|
| Master Ledger | `~/.claude/arena/ledger.md` | Run history, patterns, stable roster |
| Win Records | `~/.claude/arena/win-records/` | Per-copywriter performance tracking |
| Synthesis Registry | `~/.claude/arena/synthesis-registry/` | Successful and attempted combinations |

---

## Tips for Best Results

1. **Write detailed briefs** - The better your brief, the better all entries will be
2. **Include constraints** - Word limits, tone requirements, mandatory elements help differentiate entries
3. **Override the judge when you disagree** - Your market knowledge matters; overrides improve future judging
4. **Run 3+ rounds** - Single rounds don't trigger evolution; multi-round competitions produce the best learning
5. **Use Arena for important projects** - Reserve Arena for projects where quality justifies the extra time

---

*Part of the ZenithPro Copy Arsenal Reference Set*
