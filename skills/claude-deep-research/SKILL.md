---
name: claude-deep-research
description: Run Claude's native Deep Research feature from Claude Code. Uses your claude.ai session to trigger the full agentic Deep Research — multi-step web browsing, synthesis, and comprehensive reports. Requires a session cookie from your claude.ai account.
trigger_phrases:
  - claude deep research
  - deep research via claude
  - run deep research on
  - claude web research
  - research with claude.ai
---

# Claude Deep Research

This skill triggers the real Claude Deep Research feature — the same multi-step agentic research that runs when you click "Deep Research" in claude.ai. It authenticates with your claude.ai session and submits the query through the web interface.

## FIRST: Check Configuration

Before running any research, check if the session key is configured:

```bash
python3 -c "
import json, os
cfg = os.path.expanduser('~/.claude/skills/claude-deep-research/config.json')
try:
    d = json.load(open(cfg))
    key = d.get('session_key', '')
    if not key or key == 'YOUR_SESSION_KEY_HERE':
        print('NOT_CONFIGURED')
    else:
        print('CONFIGURED')
except:
    print('NOT_CONFIGURED')
"
```

- If `CONFIGURED` → skip to **Run Research** below
- If `NOT_CONFIGURED` → follow **Setup** below

---

## Setup (First Time or After Expiry)

Walk the user through these steps:

**Step 1:** Open [https://claude.ai](https://claude.ai) in Chrome and make sure you're logged in.

**Step 2:** Open DevTools — Mac: `Cmd + Option + I` / Windows: `F12`

**Step 3:** Click the **Application** tab (top menu in DevTools)

**Step 4:** In the left sidebar, expand **Cookies** → click **https://claude.ai**

**Step 5:** Find the row named **`sessionKey`** and click it. The full value appears at the bottom of the panel. Copy it — it starts with `sk-ant-sid01-`.

**Step 6:** Paste the value here and I'll save it to the config file.

Once the user pastes the sessionKey, save it:

```bash
python3 -c "
import json, os
cfg = os.path.expanduser('~/.claude/skills/claude-deep-research/config.json')
data = {'session_key': 'PASTE_VALUE_HERE', 'cf_clearance': ''}
json.dump(data, open(cfg, 'w'), indent=2)
print('Saved.')
"
```

Replace `PASTE_VALUE_HERE` with the actual value the user provided, then confirm it's saved and proceed to **Run Research**.

---

## Run Research

Once configured, run:

```bash
python3 ~/.claude/skills/claude-deep-research/research.py "QUERY_HERE"
```

Replace `QUERY_HERE` with the user's research topic. The script will:
1. Authenticate with claude.ai using the session key
2. Create a new conversation
3. Submit the query with web search enabled (`web_search_v0`)
4. Return the full response

This uses `claude-opus-4-6` with `rendering_mode: messages` — the same payload Claude Web sends when you click Deep Research.

**Deep Research takes time.** Tell the user it may take 2-10 minutes. This is normal — it's doing real multi-step research.

---

## Handle Errors

**401 or 403 error:** Session key expired. Tell the user:
> "Your session key has expired. Go to claude.ai → DevTools → Application → Cookies → copy the new `sessionKey` value and paste it here."

Then re-run the Setup steps above to update the config.

**Empty result:** The SSE stream parsed no text. Run with debug:
```bash
python3 ~/.claude/skills/claude-deep-research/research.py "QUERY" 2>&1 | head -50
```

---

## Refresh Cookie (When Expired)

Session keys expire periodically. When the user needs to refresh:

1. Go to claude.ai (still logged in)
2. DevTools → Application → Cookies → copy new `sessionKey`
3. Update the config:

```bash
python3 -c "
import json, os
cfg = os.path.expanduser('~/.claude/skills/claude-deep-research/config.json')
data = json.load(open(cfg))
data['session_key'] = 'NEW_KEY_HERE'
json.dump(data, open(cfg, 'w'), indent=2)
print('Updated.')
"
```
