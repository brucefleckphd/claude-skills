---
name: girard-field-intelligence
description: "Master synthesis layer for the entire Girard Deep Marketing System. Reads all Girard skill outputs simultaneously, detects cross-layer convergence zones invisible to individual skills, resolves conflicts between signals, and produces a single Desire Field Briefing with: the Convergence Map, the Single Move, unified timing intelligence, 90-day projection, and ranked risk/opportunity matrix. Run monthly via automation or on-demand before major launches. Requires underlying Girard reports to exist — refreshes stale ones automatically before synthesizing."
version: 1.0.0
author: Strategic Profits / Deep Marketing Thinkers Series
source_thinker: "René Girard (Mimetic Desire Theory) — Meta-Synthesis Layer"
programs: [ZenithPro, Force Multiplier, Connect the Dots]
interface:
  invoke: "/girard-field-intelligence [focus: launch-name|positioning|general]"
  called_by: [user, monthly-automation]
  outputs_to: [client-output-folder]
depends_on: [girard-model-map, girard-desire-propagation, girard-rivalry-detector, girard-scapegoat-radar, mimetic-market-intelligence]
---

# Girard Field Intelligence

---

## LAYER 1: INVARIANTS (Never override.)

1. **Freshness gate before synthesis.** Before producing the briefing, check the timestamps of all underlying Girard reports. Any report older than 30 days is stale and MUST be refreshed by spawning the relevant skill as a sub-agent. Never synthesize stale data — the convergence zones only exist if all inputs are from the same time window.

2. **Convergence requires multiple independent signals.** A convergence zone must be confirmed by at least THREE independent Girard skill outputs pointing at the same object or territory. Two signals = notable. Three or more = convergence zone. Name the zone only when the threshold is met.

3. **The Single Move is singular.** The highest-leverage move output must be ONE thing — one positioning shift, one offer change, one content piece, one action. Not a list. Not a strategy. One move, with explicit reasoning for why it outranks everything else in the current field.

4. **Conflicts must be resolved, not listed.** When two skill outputs point in opposite directions, do not present both and let the user decide. Analyze both signals, name the stronger one, explain why, and make a recommendation. Presenting unresolved conflicts is a failure mode.

5. **Every finding must cite its source skill.** All claims in the briefing must be tagged with the skill that produced them: [Model Map], [Desire Propagation], [Rivalry Detector], [Scapegoat Radar], [Mimetic Market Intelligence]. This allows tracing any finding back to its evidence source.

---

## LAYER 2: QUALITY GUIDANCE

6. **The convergence zones are the prize.** Spend more time on cross-layer convergence than on any individual skill's findings. The individual findings are already in the skill reports. The convergence — what only becomes visible when looking at all layers simultaneously — is what this skill produces that nothing else can.

7. **Timing intelligence changes the value of opportunities.** A desire at peak velocity (9/10) that is also approaching saturation is worth less than a desire at 7/10 velocity that is in early propagation. Always combine velocity with stage when assessing opportunity value.

8. **The 90-day projection is a simulation, not a prediction.** Frame it as: "If you execute these moves, here is where the desire field will likely be relative to your positioning." Not a guarantee. A strategic simulation that makes the implications of action (and inaction) visible.

---

## PURPOSE

Each individual Girard skill is a specialized intelligence analyst looking at one dimension of the market's desire field: who shapes it (Model Map), what's moving through it (Desire Propagation), where it's most intense (Rivalry Detector), what it's uniting against (Scapegoat Radar), how competitors are positioned within it (Mimetic Market Intelligence).

This skill is the director who sits in the briefing room with all the analysts and asks: what does this mean when we look at it all together? Where are multiple independent signals converging on the same thing? What does that tell us about the one move we should make this week?

The Desire Field Briefing is produced monthly to track how the field evolves over time, and on-demand before major launches or positioning decisions.

---

## EXECUTION PROCESS

### Step 1: Freshness Check
Locate all Girard skill output reports in the project vault:
- `René Girard - Model Map/` → latest Model Map Report
- `René Girard - Desire Propagation Tracker/` → latest Desire Velocity Report
- `René Girard - Rivalry Detector/` → latest Rivalry Map
- `René Girard - Scapegoat Radar/` → latest Scapegoat Report
- `René Girard - Mimetic Market Intelligence/` → LIVE ANALYSIS files (Docs 1-3)

Check file modification dates. Flag any report older than 30 days as stale. For stale reports, spawn the relevant skill as a background sub-agent to refresh. Wait for all refreshes to complete before proceeding to synthesis.

### Step 2: Full Read
Read ALL reports in their entirety before beginning synthesis. Do not summarize as you read. Hold all findings simultaneously before drawing cross-layer conclusions.

### Step 3: Cross-Layer Analysis
For each significant finding in any individual report, ask: "Which other reports have signals that point toward or away from this finding?" Build the cross-reference matrix mentally before writing anything.

Specifically look for:
- **Convergence signals:** 3+ reports pointing at the same desire/object/territory
- **Conflict signals:** 2 reports pointing in opposite directions
- **Timing alignments:** Where velocity data + rivalry intensity + scapegoat stage all point to the same timing window
- **Gap confirmations:** Where a gap identified in one report is confirmed by absence of signal in other reports

### Step 4: Draft the Briefing (5 sections)

---

## OUTPUT STRUCTURE: Desire Field Briefing

**Header:**
- Date: [YYYY-MM-DD]
- Reports synthesized: [list with dates]
- Focus area: [General / Launch: X / Positioning: Y]
- Field health summary (1-2 sentences): overall state of the desire field for Rich's market

---

### Section 1: Convergence Map

**What this section is:** Cross-layer patterns that no individual skill could see.

For each convergence zone (expect 2-4 per briefing):

**Zone [N]: [Name]**
- **Desire/territory:** What object or positioning territory multiple signals are converging on
- **Confirming signals:** [Source Skill 1] found X. [Source Skill 2] found Y. [Source Skill 3] found Z. All three independently point at [the same thing].
- **Convergence strength:** Number of independent signals (3 = notable, 4+ = high conviction)
- **Current stage:** Is the convergence building, at peak, or beginning to disperse?
- **Strategic implication:** What this convergence means for Rich's positioning or offers
- **Timing window:** How long this convergence zone is likely to remain open

---

### Section 2: The Single Move

**The one highest-leverage action available in the current desire field.**

This is not a list. It is one specific, implementable move.

Format:
- **The Move:** [One sentence describing the exact action]
- **What it does mimetically:** [Why this specific move captures more desire than any alternative — which desires it activates, which models it aligns with, which rivalries it positions inside]
- **Why it outranks everything else:** [Explicit comparison to the next 2-3 options and why this one wins]
- **How to execute it:** [Specific enough to start this week]
- **What it unlocks:** [What subsequent moves become available once this one is made]

---

### Section 3: Unified Timing Intelligence

**A single action calendar synthesizing timing signals from all reports.**

| Action | Source Signal | Urgency | Window Closes |
|--------|--------------|---------|---------------|
| [Action] | [Source Skill + specific signal] | HIGH/MEDIUM/LOW | [Date or condition] |

Include:
- All time-sensitive actions from the Scapegoat Radar (lifecycle stages)
- Desire velocity peaks from the Desire Propagation Tracker (act before saturation)
- Rivalry intensity windows from the Rivalry Detector (contested objects are only contested while rivals are fighting)
- Content sequencing from prior Mimetic Content Strategist output

---

### Section 4: The 90-Day Projection

**If Rich executes the Single Move + timing calendar above, here is where the desire field will likely be relative to his positioning in 90 days.**

Structure:
- **Month 1 state:** What the field looks like after the first moves land
- **Month 2 state:** How competitor responses and market evolution shift the field
- **Month 3 state:** Where Rich's positioning sits relative to the field at the end of the quarter
- **Key risks to the projection:** What could make this projection wrong (market event, competitor move, own execution failure)
- **Key accelerants:** What additional actions would improve the projection

---

### Section 5: Ranked Risk/Opportunity Matrix

**All opportunities ranked by capture value. All risks ranked by proximity + urgency.**

**Opportunities (ranked):**
| Rank | Opportunity | Velocity | Available Territory | Rich's Fit | Time Sensitivity | Composite Score |
|------|-------------|----------|---------------------|------------|-----------------|-----------------|

**Risks (ranked):**
| Rank | Risk | Proximity to Rich | Cycle Stage | Damage Potential | Action Required |
|------|------|------------------|-------------|-----------------|-----------------|

---

### Conflict Resolution Log

Any cases where two skill outputs pointed in opposite directions, with explicit resolution:

**Conflict:** [Skill A] said X. [Skill B] said Y.
**Resolution:** Follow [Skill A/B] because [reasoning].
**Confidence:** High/Medium/Low

---

## MONTHLY AUTOMATION SETUP

To run this automatically on the 1st of each month, configure a launchd plist:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>com.girard.field-intelligence.monthly</string>
    <key>ProgramArguments</key>
    <array>
        <string>/bin/bash</string>
        <string>-c</string>
        <string>cd /Users/richardschefren/Documents/Obsidian/Active-Brain && claude -p "/girard-field-intelligence" 2>&1 | tee /tmp/girard-field-intelligence.log</string>
    </array>
    <key>StartCalendarInterval</key>
    <dict>
        <key>Day</key>
        <integer>1</integer>
        <key>Hour</key>
        <integer>7</integer>
        <key>Minute</key>
        <integer>0</integer>
    </dict>
    <key>RunAtLoad</key>
    <false/>
</dict>
</plist>
```

Install: `cp com.girard.field-intelligence.monthly.plist ~/Library/LaunchAgents/ && launchctl load ~/Library/LaunchAgents/com.girard.field-intelligence.monthly.plist`

---

## OUTPUT FILE

Save complete briefing to:
`[project-folder]/René Girard - Field Intelligence/[YYYY-MM] - Desire Field Briefing.md`

If Slack is available, post a 3-bullet summary to the relevant channel.
