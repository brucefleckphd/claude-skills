---
name: youtube-notemaker
description: |
  Extract YouTube video transcripts and create structured learning notes in markdown format. 
  Triggers on: "/youtube-notemaker", "create notes from YouTube", "summarize this YouTube video", 
  "take notes on this video", "YouTube to notes", or when user provides a YouTube URL and asks 
  for notes, summary, or key takeaways. Saves notes to user-specified location on local filesystem.
---

# YouTube Note Maker

Create structured learning notes from YouTube video transcripts.

## Workflow

1. **Get YouTube URL** - Get URL from Chrome extension or ask user if not available
2. **Get transcript** - Extract via web_fetch or user pastes transcript 
3. **Analyze content** - Identify author, title, key teaching points, and action steps
4. **Generate note** - Create markdown note following the template in `references/note-template.md`
5. **Confirm save location** - Ask user for save path (suggest C:\Users\bruce\Documents\Notes\Knowledge\)
6. **Save to filesystem** - Write markdown file to specified location

## Transcript Acquisition
**Option A - Web fetch attempt:**
Use web_fetch on the YouTube URL. Extract VIDEO_ID from URLs like:
- `youtube.com/watch?v=VIDEO_ID`
- `youtu.be/VIDEO_ID`

**Option B - User provides transcript:**
Ask user to paste the transcript if they have it from YouTube's transcript feature or a browser extension.


If transcript unavailable, inform user and request they paste it manually.

## Note Generation

Analyze the transcript to extract:

| Element | Description |
|---------|-------------|
| **Author** | Channel name or speaker |
| **Title** | Video title |
| **Situation** | Background/context leading to the topic |
| **Problem** | The challenge being addressed |
| **Solution** | The proposed approach/framework |
| **Teaching Points** | Key concepts with how-to and examples |
| **Action Steps** | Concrete next steps |

See `references/note-template.md` for exact output format.

## Saving Notes

**Filename format:** `Author-Video Title.md`

**Default location:** User's Obsidian vault folder C:\Users\bruce\Documents\Notes\Knowledge

Always confirm save location before writing. If user doesn't specify, suggest:
- `00.00 Inbox\` (for Obsidian users)
- Or ask for preferred directory path

## Resources

- `references/note-template.md` - The exact markdown template for output
