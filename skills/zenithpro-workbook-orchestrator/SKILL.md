---
name: zenithpro-workbook-orchestrator
description: Execute ZenithPro multi-prompt workbooks with registry compliance, truth validation, and systematic file materialization. Orchestrates complete lesson workbook execution.
---

# ZenithPro Workbook Orchestrator

Execute multi-prompt ZenithPro lesson workbooks with comprehensive validation, registry compliance, and systematic output file generation. This skill orchestrates the complete execution of workbooks containing multiple embedded prompts.

## When to Use This Skill

- Executing ZenithPro lesson workbooks with multiple prompts
- Running asset production workbooks
- Processing any multi-prompt workbook requiring systematic execution
- When outputs need registry compliance verification
- When you need complete audit trails and execution ledgers

## Invocation

**To run a workbook, provide:**
```
Run the Workbook Orchestrator on: [WORKBOOK_PATH]

Inputs are located at: [INPUT_FOLDER_PATH]
Save outputs to: [OUTPUT_FOLDER_PATH]
```

**Example:**
```
Run the Workbook Orchestrator on: C:\Users\bruce\Documents\Notes\Projects\10.00 Zenith\10.02 Lessons\ZenithPro-Lesson 08\Zenith-Pro-Asset-Production-Workbook.md

Inputs are located at: C:\Users\bruce\Documents\Notes\Projects\10.00 Zenith\10.02 Lessons\ZenithPro-Lesson 08\Inputs
Save outputs to: C:\Users\bruce\Documents\Notes\Projects\10.00 Zenith\10.02 Lessons\ZenithPro-Lesson 08\Outputs
```

## ZenithPro Lesson Structure

**Base Path:** `C:\Users\bruce\Documents\Notes\Projects\10.00 Zenith\10.02 Lessons`

**Lesson Folders:**
- `ZenithPro-Lesson 01`
- `ZenithPro-Lesson 02`
- `ZenithPro-Lesson 03`
- ... (and so on)

**Within Each Lesson Folder:**
- `\Inputs` - Contains all input files for that lesson's workbook
- `\Outputs` - Where all generated outputs should be saved

## Instructions

When this skill is invoked, read and follow the complete orchestration protocol in:
`C:\Users\bruce\Documents\Notes\00 Mission Control\00.20 Skills\zenithpro-workbook-orchestrator.md`

The orchestrator protocol includes:

### Phase 0: Registry Integration
- Read and internalize product registry files
- Extract compliance rules and terminology
- Load source priority rules

### Phase 1: Workbook Parsing
- Read workbook architecture completely
- Authenticate ALL input files with line counts
- Run Truth Critic validation on inputs
- Create execution plan with dependency graph
- Present plan and AWAIT user confirmation

### Phase 2: Prompt Execution
- Execute each prompt systematically
- Verify inputs before each execution
- Apply registry compliance filters
- Monitor execution checkpoints

### Phase 3: Output Materialization
- Apply file naming convention: `00 [Lesson] [Prompt-Name].md`
- Include execution verification section in each output
- Document all assumptions and inputs used

### Phase 4: Verification Protocol
- Check terminology against registry
- Verify claims against approved sources
- Confirm no known error patterns

### Phase 5: Token Conservation
- Monitor token usage
- Generate handoff package if approaching limits

### Phase 6: Execution Ledger
- Generate master ledger with completion status
- Document all files created
- Record assumptions and anomalies

## Critical Mandates

### Complete Read Mandate
- READ EVERY INPUT FILE COMPLETELY
- Do NOT stop when you think you've found relevant information
- Do NOT skim or sample files
- Report line counts for each file read

### Zero-Assumption Mandate
- DO NOT ASSUME or make things up
- ASK for clarity when information is missing
- HALT and request clarification rather than guess
- Document ALL assumptions explicitly

## Related Files

- **Full Protocol:** `C:\Users\bruce\Documents\Notes\00 Mission Control\00.20 Skills\zenithpro-workbook-orchestrator.md`
- **Truth Critic:** `C:\Users\bruce\Documents\Notes\00 Mission Control\00.20 Skills\zenithpro-truth-critic.md`
- **Product Registry:** `C:\Users\bruce\Documents\Notes\00 Mission Control\00.20 Skills\product-registry\zenithpro\`

## Output Format

Each prompt output is saved as a separate markdown file with:
- Complete prompt execution content
- Execution verification section
- Registry compliance checklist
- Input files used with line counts
- Assumptions documented
- Verification signature and traceability
