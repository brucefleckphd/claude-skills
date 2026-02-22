---
name: ksm-worksheet-orchestrator
description: Execute Kindle Series Mastery multi-prompt worksheets with complete input file reading, zero-assumption execution, and systematic file materialization. Orchestrates comprehensive worksheet execution with formal verification.
---

# KSM Worksheet Orchestrator

Execute Kindle Series Mastery (KSM) lesson worksheets with comprehensive validation, complete context loading, and systematic output file generation. This skill orchestrates the complete execution of worksheets containing multiple embedded prompts.

## When to Use This Skill

- Executing KSM lesson worksheets with multiple prompts
- Processing Kindle Series Mastery course materials
- When ALL input files must be read completely before execution
- When outputs need formal verification and traceability
- When you need complete audit trails and execution ledgers
- When automatic handoff is required for long worksheets

## Invocation

**To run a KSM Worksheet, provide:**
```
Run the KSM Worksheet Orchestrator on: KINDLE SERIES MASTERY - LESSON [X] WORKSHEET

Inputs are located at: [INPUT_FOLDER_PATH]
Save outputs to: [OUTPUT_FOLDER_PATH]
```

**Example:**
```
Run the KSM Worksheet Orchestrator on: KINDLE SERIES MASTERY - LESSON 1 WORKSHEET

Inputs are located at: C:\Users\bruce\Documents\Notes\10.00 Projects\11.00 AIPP\Inputs
Save outputs to: C:\Users\bruce\Documents\Notes\10.00 Projects\11.00 AIPP\Outputs
```

## KSM Lesson Structure

**Base Path:** `C:\Users\bruce\Documents\Notes\10.00 Projects\11.00 AIPP`

**Worksheet Locations:**
```
C:\Users\bruce\Documents\Notes\10.00 Projects\11.00 AIPP\Resources\KINDLE SERIES MASTERY - LESSON 1 WORKSHEET.md
C:\Users\bruce\Documents\Notes\10.00 Projects\11.00 AIPP\Resources\KINDLE SERIES MASTERY - LESSON 2 WORKSHEET.md
C:\Users\bruce\Documents\Notes\10.00 Projects\11.00 AIPP\Resources\KINDLE SERIES MASTERY - LESSON 3 WORKSHEET.md
C:\Users\bruce\Documents\Notes\10.00 Projects\11.00 AIPP\Resources\KINDLE SERIES MASTERY - LESSON 4 WORKSHEET.md
C:\Users\bruce\Documents\Notes\10.00 Projects\11.00 AIPP\Resources\KINDLE SERIES MASTERY - LESSON 5 WORKSHEET.md
```

**Recommended Folder Structure:**
```
11.00 AIPP/
  Resources/
    KINDLE SERIES MASTERY - LESSON 1 WORKSHEET.md
    KINDLE SERIES MASTERY - LESSON 2 WORKSHEET.md
    ...
  Inputs/
    [User input files for worksheet execution]
  Outputs/
    [Generated outputs from worksheet execution]
    Lesson-01/
    Lesson-02/
    ...
```

## Instructions

When this skill is invoked, read and follow the complete orchestration protocol below.

### Phase 0: Context Initialization

**Before executing ANY prompt, complete this phase entirely:**

1. **Read and Internalize Worksheet**
   - Locate and read the complete worksheet file
   - Confirm to user: "Successfully read: KINDLE SERIES MASTERY - LESSON [X] WORKSHEET ([Y] lines)"
   - If cannot read: "CANNOT READ WORKSHEET: [path] - HALTING EXECUTION"

2. **Read and Authenticate ALL Input Files (CRITICAL)**
   - Read EVERY file in the input folder COMPLETELY
   - Do NOT stop when you think you've found relevant information
   - Do NOT skim, sample, or summarize - READ IN FULL
   - Confirm each file was read with line count
   - Report total files read and total lines read

**Input File Authentication Report Format:**
```
INPUT FILE AUTHENTICATION - COMPLETE READ CONFIRMATION

Input Folder: [INPUT_FOLDER_PATH]
Total Files in Folder: [X]
Files Read Completely: [Y]

ALL FILES READ IN FULL (not sampled, not summarized):
[filename1.md] (XXX lines) - READ COMPLETELY, START TO FINISH
[filename2.md] (XXX lines) - READ COMPLETELY, START TO FINISH
...

TOTAL LINES READ: [X,XXX lines across Y files]
COMPLETE CONTEXT LOADED: YES

AUTHENTICATION STATUS: ALL FILES READ COMPLETELY
```

### Phase 1: Worksheet Parsing

1. **Identify All Sections** - Map the complete worksheet structure
2. **Identify All Embedded Prompts** - Look for `PROMPT #X:` patterns
3. **Create Execution Plan** - Build dependency graph
4. **Present Plan and AWAIT CONFIRMATION** - Do NOT proceed without explicit user approval

**Execution Plan Format:**
```
EXECUTION PLAN FOR APPROVAL

Worksheet: KINDLE SERIES MASTERY - LESSON [X] WORKSHEET
Total Sections: [X]
Total Prompts: [Y]
Input Files: [Z] files authenticated
Output Location: [OUTPUT_FOLDER_PATH]

PROMPT SEQUENCE:
| # | Prompt Name | Required User Inputs | Dependencies |
|---|-------------|---------------------|--------------|
| 01 | [Name] | [Inputs] | None |
| 02 | [Name] | [Inputs] | Prompt 01 |
...

AWAITING YOUR CONFIRMATION TO PROCEED

Type "PROCEED" to begin execution, or provide corrections.
```

### Phase 2: Prompt Execution

For each prompt:
1. **Pre-Execution Verification** - Confirm all inputs available
2. **Execute Prompt** - With full context from all input files
3. **Post-Execution Validation** - Verify all deliverables generated

### Phase 3: Output Materialization

**File Naming Convention:** `00 KSM Lesson [XX] [Prompt-Name].md`

**Examples:**
```
00 KSM Lesson 01 Series-Theme-Generator.md
00 KSM Lesson 01 Book-Idea-Expander.md
00 KSM Lesson 01 Competitor-Positioning.md
00 KSM Lesson 01 Series-Bible.md
```

**Each output file includes:**
- Complete prompt execution output (NOT a summary)
- Execution verification section
- Input files used with line counts
- Assumptions documented with rationale
- Verification signature and traceability

### Phase 4: Token Conservation & Handoff

- Monitor token consumption continuously
- Trigger automatic handoff at 85% capacity
- Generate handoff package: `00 KSM-HANDOFF-Lesson-[X]-[Timestamp].md`

### Phase 5: Execution Ledger

Generate `00 KSM-EXECUTION-LEDGER-Lesson-[X].md` containing:
- Prompt inventory with completion status
- Output file mapping
- Assumptions log
- Anomalies and clarifications
- Execution timeline

## Critical Mandates

### Complete Read Mandate (NON-NEGOTIABLE)
```
READ EVERY INPUT FILE IN THE FOLDER COMPLETELY.

- Do NOT stop when you think you've found relevant information
- Do NOT skim, sample, or summarize input files
- Do NOT assume any file is irrelevant
- Do NOT begin execution until ALL files are FULLY read

Complete context from ALL files is REQUIRED for quality output.
```

**Enforcement:**
- Report line count for each file read
- Confirm "READ COMPLETELY, START TO FINISH" for each file
- Report total lines read across all files

### Zero-Assumption Mandate (NON-NEGOTIABLE)
```
DO NOT ASSUME. DO NOT MAKE THINGS UP. ASK FOR CLARITY.

- If information is missing -> ASK, don't guess
- If instructions are ambiguous -> ASK, don't interpret
- If you're unsure about anything -> ASK, don't proceed
- If data isn't in the inputs -> ASK, don't fabricate

INTERROGATE rather than INTERPOLATE.
```

**When Encountering Uncertainty:**
1. **STOP** - Do not proceed with a guess
2. **IDENTIFY** - State exactly what is unclear or missing
3. **ASK** - Request the specific information needed
4. **WAIT** - Do not continue until user provides clarity
5. **DOCUMENT** - Log all clarifications in the Assumptions table

## Information Deficit Protocol

When encountering missing components or ambiguous instructions:
1. HALT EXECUTION immediately for that specific prompt
2. Articulate precisely what element is missing
3. Enumerate specific information required to proceed
4. Await explicit clarification before resuming
5. Document halt reason in verification appendix

## Resumption Protocol

To resume from a handoff:
1. Read the handoff file
2. Restore execution state from Completion Matrix
3. Load all completed output files into context
4. Resume from Next Prompt to Execute
5. Continue normal execution flow
6. Update Execution Ledger with resumed session

**Resumption Command:**
```
Continue KSM Worksheet Orchestrator from handoff: [HANDOFF_FILE_PATH]
```

## Constraints

### NEVER DO:
- Fabricate, interpolate, or assume missing information
- Proceed with partial/incomplete context
- Output only to chat - MUST materialize as files
- Skip verification steps
- Merge multiple prompts into single output file
- Stop reading input files when you think you've found an answer
- Skim, sample, or partially read input files
- Make up facts, examples, statistics, quotes
- Proceed when uncertain - ASK instead

### ALWAYS DO:
- Interrogate aggressively when clarity is needed
- Preserve complete fidelity to source worksheet instructions
- Save comprehensive output as markdown in designated directory
- Apply naming convention rigorously
- Verify completeness formally for each prompt
- Document ALL assumptions made
- Read EVERY input file COMPLETELY before execution
- Confirm each file was read from start to finish with line count
- ASK when information is missing - do not guess
- HALT and request clarity rather than fill gaps

## Output Format

Each prompt output is saved as a separate markdown file with:
- Complete prompt execution content (not summarized)
- Execution verification section
- Completeness checklist
- Input files used with line counts
- User inputs applied
- Assumptions documented with rationale
- Verification signature and traceability

## Related Files

- **Worksheet Location:** `C:\Users\bruce\Documents\Notes\10.00 Projects\11.00 AIPP\Resources\`
- **Parent Skill Location:** `C:\Users\bruce\Documents\Notes\90.00 Mission Control\90.20 Skills\`

## Version History

| Version | Date | Changes |
|---------|------|---------|
| 1.0 | 2026-01-25 | Initial creation adapted from zenithpro-workbook-orchestrator for Kindle Series Mastery worksheets |
