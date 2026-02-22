---
name: deep-research
description: Multi-source deep research orchestrator. Dispatches queries to Perplexity, Gemini, Tavily, and Exa.ai simultaneously for comprehensive research coverage.
trigger_phrases:
  - deep research
  - research this
  - find everything about
  - comprehensive research
  - multi-source research
---

# Deep Research Orchestrator

You are a research orchestration system that dispatches queries to multiple research engines and collects comprehensive results.

## Quick Start - Run All 4 APIs in Parallel

**Mac/Linux:**
```bash
source ~/.claude/skills/deep-research/venv/bin/activate && python3 ~/.claude/skills/deep-research/references/scripts/orchestrator.py "YOUR QUERY HERE"
```

**Windows (PowerShell):**
```powershell
& "$env:USERPROFILE\.claude\skills\deep-research\venv\Scripts\Activate.ps1"; python "$env:USERPROFILE\.claude\skills\deep-research\references\scripts\orchestrator.py" "YOUR QUERY HERE"
```

This runs Perplexity, Gemini, Tavily, and Exa.ai simultaneously and saves all results to the staging folder.

## Available Research Sources

### API Sources (Fast, Direct) - ALL CONFIGURED
1. **Perplexity Sonar Deep Research** - Multi-step retrieval and synthesis
2. **Gemini API** - Google's AI with web grounding
3. **Tavily** - AI-native search API
4. **Exa.ai** - Semantic/neural search

### Native Sources (Always Available)
5. **WebSearch** - Built-in Claude web search
6. **WebFetch** - Direct URL fetching and analysis

## How to Use This Skill

### Option 1: Full Orchestration (Recommended)

Run all 4 API sources in parallel:

**Mac/Linux:**
```bash
source ~/.claude/skills/deep-research/venv/bin/activate && python3 ~/.claude/skills/deep-research/references/scripts/orchestrator.py "YOUR RESEARCH QUERY"
```

**Windows (PowerShell):**
```powershell
& "$env:USERPROFILE\.claude\skills\deep-research\venv\Scripts\Activate.ps1"; python "$env:USERPROFILE\.claude\skills\deep-research\references\scripts\orchestrator.py" "YOUR QUERY HERE"
```

Options:
- Specify sources: `orchestrator.py "query" perplexity,gemini`
- Run sequentially: `orchestrator.py "query" --sequential`

### Option 2: Individual Sources

**Mac/Linux:**
```bash
# Activate virtual environment first
source ~/.claude/skills/deep-research/venv/bin/activate

# Perplexity Deep Research (best for comprehensive synthesis)
python3 ~/.claude/skills/deep-research/references/scripts/perplexity_research.py "YOUR QUERY"

# Gemini Research (best for Google's knowledge + web grounding)
python3 ~/.claude/skills/deep-research/references/scripts/gemini_research.py "YOUR QUERY"

# Tavily Search (best for structured search results with sources)
python3 ~/.claude/skills/deep-research/references/scripts/tavily_research.py "YOUR QUERY" [basic|advanced]

# Exa Semantic Search (best for finding conceptually related content)
python3 ~/.claude/skills/deep-research/references/scripts/exa_research.py "YOUR QUERY" [auto|neural|keyword]
```

**Windows (PowerShell):**
```powershell
# Activate virtual environment first
& "$env:USERPROFILE\.claude\skills\deep-research\venv\Scripts\Activate.ps1"

# Then run any script with python (not python3)
python "$env:USERPROFILE\.claude\skills\deep-research\references\scripts\perplexity_research.py" "YOUR QUERY"
```

### Option 3: Native Claude Tools (Always Available)

These require no API keys and run instantly:

**WebSearch** - Built-in web search
```
Use WebSearch tool directly with query parameter
Results include titles, URLs, and snippets
Good for: Quick facts, recent news, specific lookups
```

**WebFetch** - Fetch and analyze specific URLs
```
Use WebFetch tool with URL and prompt
Retrieves page content and processes with AI
Good for: Deep reading of specific articles, extracting data from known sources
```

## Output Location

All results saved to your home directory:
```
~/research-staging/
```

Files created:
- `{timestamp}_{source}_{query_slug}.json` - Raw data
- `{timestamp}_{source}_{query_slug}.md` - Readable markdown
- `{timestamp}_ORCHESTRATOR_{query_slug}.md` - Combined summary

## Workflow Recommendation

For maximum research coverage:

1. **Start with orchestrator** - Get quick results from all 4 APIs (~2-3 min)
2. **Add browser deep research** - For topics needing more depth
3. **Run WebSearch** - Fill gaps with additional queries
4. **Combine findings** - Synthesize all results into final document

## Configuration

API keys: `~/.claude/skills/deep-research/references/api-keys.json`
Virtual env: `~/.claude/skills/deep-research/venv/`

## Cost Estimates

| Source | Cost per Query | Time |
|--------|---------------|------|
| Perplexity Deep | ~$0.15-0.50 | 2-3 min |
| Gemini API | Free tier | 10-20 sec |
| Tavily Advanced | 2 credits (~$0.016) | 2-5 sec |
| Exa.ai | ~$0.005 | 2-5 sec |
| **Full Orchestration** | **~$0.20-0.55** | **2-3 min** |

## Example

```
User: Deep research on "AI agent architectures for autonomous task completion in 2025"

Claude: I'll run comprehensive research across all sources.

[Runs orchestrator.py with query]

Results saved to research-staging folder:
- Perplexity: Detailed analysis with 15 citations
- Gemini: Google's perspective with web grounding
- Tavily: 10 structured search results
- Exa: 10 semantically relevant articles

Would you like me to:
1. Run browser-based deep research for more depth?
2. Synthesize these results into a unified report?
3. Search for specific sub-topics?
```
