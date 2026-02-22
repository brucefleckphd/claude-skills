---
name: knowledge-notemaker
description: |
  Extract content from YouTube videos (via transcript) or web articles (via scrape) and create 
  structured learning notes in markdown format with YAML frontmatter. 
  
  Triggers on: "/knowledge-notemaker", "create notes from this", "take notes on this article", 
  "take notes on this video", "summarize this article", "summarize this YouTube video", 
  "knowledge note", or when user provides a URL and asks for notes, summary, or key takeaways.
  
  Automatically detects source type from URL:
  - YouTube URLs → transcript extraction
  - All other URLs → article/blog scrape
  
  Saves notes to appropriate subfolder in: C:\Users\bruce\Documents\Notes\50.00 Knowledge\
---

# Knowledge Note Maker

Create structured learning notes from YouTube video transcripts or web articles/blog posts.

## Workflow

1. **Receive URL** - Get URL from user
2. **Detect source type** - Route based on URL pattern
3. **Extract content** - Get transcript (YouTube) or scrape article (web)
4. **Analyze content** - Identify author, title, key teaching points, quotes, and action steps
5. **Select subfolder** - Match content topic to appropriate `50.00 Knowledge\` subfolder
6. **Generate note** - Create markdown note following the template in `references/note-template.md`
7. **Save to filesystem** - Write markdown file to the selected subfolder

## Source Detection

**YouTube** (use transcript extraction):
- `youtube.com/watch?v=VIDEO_ID`
- `youtu.be/VIDEO_ID`
- `m.youtube.com/watch?v=VIDEO_ID`
- Any URL containing `youtube` or `youtu.be`

**Web Article** (use article scrape):
- All other URLs — blogs, articles, newsletters, documentation, etc.

## Content Acquisition

### YouTube Videos
**Option A - Firecrawl scrape:**
Use `firecrawl_scrape` on the YouTube URL with `formats: ["markdown"]`. The YouTube postprocessor will return the transcript automatically.

**Option B - Web fetch:**
Use `web_fetch` on the YouTube URL. Extract transcript from the page content.

**Option C - User provides transcript:**
If automated extraction fails, ask user to paste the transcript from YouTube's transcript feature or a browser extension.

### Web Articles
**Option A - Firecrawl scrape (preferred):**
Use `firecrawl_scrape` on the article URL with `formats: ["markdown"]` and `onlyMainContent: true`. This returns clean article content.

**Option B - Web fetch:**
Use `web_fetch` on the article URL. Extract the main content.

**Option C - User provides content:**
If scraping fails, ask user to paste the article content.

## Note Generation

Analyze the content to extract:

| Element | Description |
|---------|-------------|
| **Author** | Channel name, speaker, or article byline |
| **Title** | Video title or article headline |
| **Situation** | Background/context leading to the topic |
| **Problem** | The challenge being addressed |
| **Solution** | The proposed approach/framework |
| **Teaching Points** | Key concepts with how-to guidance |
| **Key Quote** | Author's own words capturing the essence of each teaching point |
| **Example** | ONLY if the author explicitly provides one — do NOT fabricate examples |
| **Action Steps** | Concrete next steps |

See `references/note-template.md` for exact output format.

### Critical Rules for Teaching Points

1. **Quotes are mandatory.** For each teaching point, extract the most important quote from the author that captures the essence or epiphany of that topic. Use the author's exact words. Format in blockquote.

2. **Examples are conditional.** ONLY include an "Example" sub-item if the author/creator explicitly provides a concrete example in their content. If the author does not give an example for a teaching point, omit the Example line entirely. Do NOT invent, infer, or fabricate examples.

3. **How to Use is always included.** Every teaching point must have actionable guidance on how to apply the concept.

## Subfolder Selection

Match the content's primary topic to the appropriate subfolder in `50.00 Knowledge\`:

| Content Topic | Subfolder |
|--------------|-----------|
| AI tools, automation, workflows | `AI & Automation` |
| AI in business context | `AI & Business` |
| AI ethics, human-AI interaction | `AI & Humans` |
| Prompt engineering | `AI Prompts` |
| General articles, essays | `Articles` |
| Business strategy, entrepreneurship | `Business` |
| Coaching, consulting | `Coaching` |
| Content creation, content strategy | `Content` |
| Copywriting, persuasive writing | `Copywriting` |
| Charts, data viz | `Data Visualization` |
| Software development, coding | `Development` |
| Email marketing, sequences | `Email` |
| GoHighLevel | `GHL` |
| Goal setting, planning | `Goals` |
| Habit formation, behavior change | `Habits` |
| Health, fitness, wellness | `Health-Fitness` |
| Historical topics | `History` |
| PKM, note-taking, second brain | `PKMS` |
| Leadership, management | `Leadership` |
| Learning techniques, education | `Learning` |
| Marketing strategy, campaigns | `Marketing` |
| Medical, clinical | `Medical` |
| Messaging, positioning, brand | `Messaging` |
| Neuroscience, brain science | `Neuroscience` |
| Paid advertising | `Paid Ads` |
| Productivity, time management | `Productivity` |
| Psychology, behavior | `Psychology` |
| Book summaries, reading notes | `Reading` |
| Research findings, studies | `Research` |
| SEO, reputation management | `SEO-Reputation Mgmt` |
| Social media strategy | `Social Media` |
| Software tools, apps | `Software` |
| Public speaking, presentations | `Speaking` |
| Success principles, mindset | `Success` |
| Personal transformation | `Transformation` |
| Video production, YouTube | `Video` |
| Web design, websites | `Websites` |
| Philosophy, life wisdom | `Wisdom` |
| Writing craft, storytelling | `Writing` |

If the content spans multiple topics, choose the primary topic. If unsure, ask the user.

## YAML Frontmatter

Every note must include this frontmatter:

```yaml
---
type: ref.note
tags:
  - primary-topic/subtopic
  - secondary-topic/subtopic
source: YouTube  # or "Web Article"
people: firstname-lastname
date-created: YYYY-MM-DD
---
```

**Tag rules:**
- Use lowercase, hyphenated format: `copywriting/storytelling`
- Always include at least two tags: one primary, one secondary
- Tags should reflect the content's core themes, not just the category

**Source values:**
- `YouTube` for YouTube videos
- `Web Article` for blog posts, articles, newsletters, etc.

**People:**
- Author's name in `firstname-lastname` format (lowercase, hyphenated)
- If multiple authors, comma-separate: `firstname-lastname, firstname-lastname`

## Saving Notes

**Filename format:** `Author-Title.md`
- Example: `Joanna Wiebe-How To Grow Your Business With Storytelling.md`
- Example: `Seth Godin-The Practice of Shipping Creative Work.md`

**Save location:** `C:\Users\bruce\Documents\Notes\50.00 Knowledge\[Subfolder]\`

Always confirm the subfolder selection makes sense for the content before saving.

## Resources

- `references/note-template.md` - The exact markdown template for output
