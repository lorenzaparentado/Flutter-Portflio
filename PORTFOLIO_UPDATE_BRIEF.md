# Lorenz Aparentado — Content Update Brief for Existing Flutter Portfolio

**Repository:** `lorenzaparentado/Flutter-Portflio`  
**Stack:** Flutter / Dart / Flutter Web  
**Date context:** August 2026  
**Primary goal:** Update the portfolio's information so it accurately represents Lorenz in 2026, improve the implementation and functionality where useful, and **preserve the original rendered visual design and page structure.**

---

# 0. Most important instruction: visual design locked, implementation unlocked

This brief supersedes any previous instruction that accidentally treated the existing code architecture as untouchable.

The existing/original **rendered UI** is the visual specification. The existing implementation is not.

The portfolio should look like the **same website** after this task, but it is allowed to be built more cleanly, robustly, responsively, accessibly, and maintainably underneath.

The governing rule is:

> **You may change how the portfolio is built. You may not intentionally change what the portfolio looks like.**

## Preserve exactly

- warm tan/brown/green palette
- Urbanist heading typography
- Montserrat body typography
- existing font sizes and weights
- offset solid-shadow design language
- existing border radii
- existing section colors
- current section spacing/padding pattern
- current desktop header
- current mobile header + drawer
- current hero arrangement
- current portrait placement
- current four-stat row/grid
- current About Me image/text composition
- current two-row Work composition
- current 2×2 Projects composition on desktop
- current project card color alternation
- current Contact section and four-button composition
- the intended original desktop/mobile visual outcomes at equivalent viewport sizes

## Do not add

- new top-level sections
- experience timeline/cards
- separate Education section
- separate Skills section
- separate Vanguard section
- new hero buttons
- new metric strip design
- new navigation items
- new visual motifs
- new card styles
- new animations
- a visually different responsive composition

## Functional/architectural refactoring is allowed

This is not a visual redesign task, but it **may include architecture and implementation cleanup** when that makes the portfolio more correct, maintainable, responsive, accessible, or reliable.

It is acceptable to keep separate `web` and `mobile` widgets, but it is also acceptable to consolidate duplicated code if doing so preserves the rendered desktop/mobile layouts. Do not preserve a bad implementation purely for the sake of preserving it.

Allowed examples include:

- extracting reusable widgets
- centralizing repeated content/data
- consolidating duplicated desktop/mobile logic
- replacing brittle `MediaQuery` math with better constraints/layout logic
- improving breakpoint handling
- fixing hard-coded dimensions that create real rendering bugs
- updating deprecated APIs/packages
- improving URL launching and navigation reliability
- improving accessibility semantics/focus/keyboard behavior
- removing dead or obsolete code
- improving type/null safety
- reorganizing code for maintainability

The condition for every such refactor is **visual regression safety**: the rendered result must still match the original design.

---

# 1. Existing page structure — keep this exact order

The source currently renders:

1. **Landing**
2. **Stats**
3. **About Me**
4. **Work**
5. **Projects**
6. **Contact/Footer**

Keep this order exactly.

The desktop header should remain:

**About Me | Work | Lorenz | Projects | Contact Me**

Do not rename these navigation labels unless absolutely necessary. The existing section names work well with the visual design.

---

# 2. Current source of truth

Use the included **`Lorenz Aparentado - Resume (Aug 2026)(1).pdf`** as the primary factual source for education, dates, companies, titles, accomplishments, and skills.

## Contact

- Name: **Lorenz Aparentado**
- Professional email: **lorenzaparentado.work@gmail.com**
- Phone: **+1 (484) 350-8039**
- LinkedIn display: **laparentado**
- LinkedIn URL: `https://www.linkedin.com/in/laparentado`
- GitHub display: **lorenzaparentado**
- GitHub URL: `https://github.com/lorenzaparentado`
- Portfolio: `https://lorenz-aparentado.vercel.app`

Because the original Contact design includes four contact buttons, **keep all four buttons and their positions**. Do not remove the phone button as part of this task.

## Education

**Drexel University — Philadelphia, PA**  
Bachelor of Science in Computer Science  
Minor in Data Science  
GPA: **3.91**  
Anticipated graduation: **June 2027**  
Concentrations: **Software Engineering / Computer Graphics, Vision, and Interaction**

Do not retain the old GPA 3.87 or old Artificial Intelligence/Machine Learning concentration copy.

---

# 3. Landing section — content update only

The original Landing design has:

- Lorenz's name on the left
- the existing portrait in the center
- a three-line identity block on the right

Keep that composition exactly.

## Keep

`Lorenz\nAparentado`

## Replace the old landing text

Old concept:

- Third Year Computer Science Student
- Aspiring Software Engineer
- Mobile / Fullstack Developer

Use this updated three-line text:

> **Computer Science @ Drexel**  
> **Software Engineer @ SIG**  
> **Full-Stack / Data / AI Systems**

Keep it concise because it must fit the original right-side text area without resizing or repositioning the hero.

Do not add hero buttons, subtitles, badges, availability indicators, or extra rows.

---

# 4. Stats section — reuse the exact four existing boxes

The current design already has four stat cards. Keep them exactly as-is visually and replace only the values/labels.

Use:

### Stat 1
**3**  
Engineering roles

### Stat 2
**14**  
Reports automated

### Stat 3
**40+**  
Production MRs

### Stat 4
**100K+**  
Users reached

These are stronger than the old vanity/dated stats and map to verified resume accomplishments.

Do not add a fifth stat. Do not change the card sizing, color order, shadows, or row/grid arrangement.

If a label wraps differently, shorten the label rather than resizing the card.

---

# 5. About Me section — preserve the original layout

The original About Me section has:

- centered `About Me` heading
- a large image/decorative container on the left
- a long text block on the right
- one Resume button below
- one `Last Updated ...` line below the button

Keep this structure, alignment, colors, dimensions, shadows, button styling, and order.

## About Me copy

Use this as the target copy, shortening slightly if required to avoid overflow:

> Hey, I'm Lorenz, a Computer Science student at Drexel University pursuing a minor in Data Science with concentrations in Software Engineering and Computer Graphics, Vision, and Interaction. I have a 3.91 GPA and expect to graduate in June 2027.
>
> Professionally, I've worked across three engineering teams at NeuroFlow, Comcast, and Susquehanna International Group. My experience spans mobile development, backend services, full-stack applications, data and risk pipelines, and AI-enabled internal tooling. I'm currently a Software Engineer Co-op at SIG, where I've worked on C#/.NET risk systems, automated reporting, data pipelines, and developer tooling.
>
> Before SIG, I built cross-platform sports experiences at Comcast and shipped production mobile and backend work at NeuroFlow. In September 2026, I'll also begin a Vanguard-sponsored senior design project focused on understanding how developers use AI coding tools and how that affects productivity.
>
> Outside of software, I enjoy lifting, running, climbing, music, DJing, and tinkering with personal projects and my homelab.

Tone should remain natural and personal like the original site, not read like a corporate bio.

## About image/placeholder container

The current source shows the literal word `Image` inside the existing About Me container.

Do **not** redesign that area.

Preferred order:

1. If an appropriate local existing image can be placed inside that exact container without changing its dimensions/style, use it.
2. Otherwise remove only the literal `Image` text and retain the colored container as a decorative block.

Do not create a new image composition, carousel, collage, border treatment, or illustration.

## Resume button

Keep the same button:

**Check out my resume!**

Do not change its size, color, position, radius, shadow, or typography.

Replace the old Google Drive URL with the included current resume PDF as a stable local web asset, ideally renamed cleanly to:

`Lorenz_Aparentado_Resume.pdf`

Verify it works after `flutter build web`.

## Last Updated

Keep the original visual treatment and position.

Replace:

`Last Updated September, 2024`

with:

**Last Updated August, 2026**

---

# 6. Work section — keep the exact existing two-row design

The original Work section contains:

- centered `Work` heading
- first row: text on left + rectangular image/decorative box on right
- second row: rectangular image/decorative box on left + text on right

Do not turn this into a timeline or employer cards.

Do not add logos in a way that changes the layout.

All three employers should be summarized inside the **existing two text blocks**.

## Work Text 1 — current SIG experience

Use approximately this copy:

> I'm currently a Software Engineer Co-op at Susquehanna International Group on the Operations Development / Internal Positions team. My work spans C#, .NET, Blazor, Oracle SQL, Apache Iceberg, Python, and FastAPI across internal risk, data, and developer-tooling systems.
>
> I built a hypothetical VaR platform that resolves instruments by several identifiers and automates external risk-system submissions, reducing preparation for ad hoc requests from hours to minutes. I also built an LLM-powered VaR support chatbot that converts natural-language questions into safeguarded read-only SQL, returns supporting CSVs, and helps accelerate QA and investigation. Beyond that, I've automated 14 recurring risk and position-quality reports, helped productionize VaR data pipelines, scaled AI-assisted code review across 12+ repositories, and contributed across database, application, validation, and UI layers of a multi-team instrument-authoring platform.

If this overflows in the original layout, shorten wording while preserving the most important verified facts. Do not enlarge or redesign the section first.

## Work Text 2 — Comcast + NeuroFlow

Use approximately this copy:

> Before SIG, I was a Full Stack Developer Co-op on Comcast's Sports Experiences team. I built a cross-platform Flutter sports app prototype with eight features including real-time stats, favoriting, badges, and interactive challenges; integrated it with existing backend services; and worked across iOS, Android, web, and TV prototypes. I also led a Twitch-style live chat hackathon prototype designed for thousands of concurrent users and co-created an Xfinity WiFi smart-home safety demo presented to senior leadership.
>
> At NeuroFlow, where I worked as both a Software Engineering Co-op and Associate, I shipped mobile and backend features using Flutter, Kotlin, Swift, Flask, AWS Lambda, PostgreSQL, and Retool. I led part of a native-to-Flutter migration that reduced feature file count and complexity by 50%, worked on notifications reaching 100,000+ customers, delivered 40+ production merge requests, built health-record integrations and backend improvements, helped shape a 3–4 month Flutter roadmap, and mentored a new developer.

Again: shorten copy before changing layout dimensions.

## Work image/decorative boxes

The source currently contains literal `Image` placeholder text inside both Work boxes.

Do not alter the boxes' dimensions, positions, colors, shadows, or radii.

Either:

- populate them with a tasteful local/available image that fits the same box without changing the composition, OR
- remove only the literal `Image` text and leave the original colored blocks as decorative elements.

Do not invent internal company screenshots or diagrams.

---

# 7. Projects section — retain exactly four cards and the existing 2×2 design

Do not change:

- number of visible cards: **4**
- desktop 2×2 arrangement
- mobile project presentation style
- card dimensions
- alternating card colors
- tech-pill design
- existing image-colored panel placement
- button placement/appearance

Replace only project content and button functionality.

## Project 1 — BioXplorer

**Title:** BioXplorer

**Description:**

> AI education app with GPT-4 chat, TensorFlow animal detection, geolocation, and species learning; winner of HackRU's education track.

**Tech pills:**

- Python
- OpenAI
- TensorFlow

**Link:**

`https://github.com/lorenzaparentado/BioXplorer`

Supporting verified facts from the resume:

- five-page AI education platform
- Firebase storage also used
- built/presented within 24 hours
- 1st place in HackRU education track among 302 participants

Keep the card description short enough for the existing fixed card.

---

## Project 2 — Eventify

**Title:** Eventify

**Description:**

> Event discovery and planning app with authentication, event/RSVP flows, Ticketmaster integration, geocoding, and PostgreSQL.

**Tech pills:**

- JavaScript
- PostgreSQL
- Ticketmaster

**Link:**

`https://github.com/lorenzaparentado/Eventify`

Verified repository details include authentication middleware, event creation/editing/RSVP routes, Ticketmaster integration, and OpenStreetMap geocoding.

---

## Project 3 — Hidden Gems

**Title:** Hidden Gems

**Description:**

> Flutter discovery app for finding and saving lesser-known local spots with maps, categories, authentication, and Supabase-backed data.

**Tech pills:**

- Flutter
- Supabase
- MapBox

**Link:**

`https://github.com/lorenzaparentado/hidden-gems-v1`

Only claim features verified in the repository. The repository describes map discovery, bookmarks, spot creation, authentication, location support, and Supabase integration.

---

## Project 4 — Guess Me

**Title:** Guess Me

**Description:**

> Couples game built around a quick answer → guess → reveal loop with category-based questions, scoring, and streak-focused product design.

**Tech pills:**

Use technologies verified from the actual project workspace if available. If not verifiable, use conservative product labels that still fit the existing pill UI, for example:

- Flutter
- Mobile
- Product

**Button behavior:**

- If a public repository or live build is available in the workspace, keep the existing button look and wire it to that verified URL.
- If no public URL can be verified, retain the exact button shape/position but change its text to **In Development** and do not pretend it opens a project.

Use `Guess Me - Product Handoff.pdf` only as product context. Do not claim planned premium, social, payment, or advanced features are implemented unless code proves it.

---

# 8. Project card image panels

The original cards contain solid image-color panels rather than finished project screenshots.

The design lock is more important than adding screenshots.

Do not redesign these panels.

If real project thumbnails already exist locally and can be inserted without changing the panel size/radius/placement, they may be used. Otherwise keep the existing solid panel treatment.

Do not fetch random stock imagery.

---

# 9. Vanguard senior design — mention only within existing content

Current/upcoming item:

**Vanguard AI Developer Productivity Analytics**  
Incoming Senior Design Project  
Sept 2026 – Jun 2027

Approved fact:

> Selected for a year-long Vanguard-sponsored senior design project focused on analyzing AI-assisted developer productivity, usage patterns, and developer feedback.

Because the original site has no dedicated Education/Upcoming section, do **not** add one.

Mention Vanguard briefly in About Me only.

Do not invent results or treat it as completed work.

---

# 10. Skills — no new Skills section

The current resume includes:

### Languages
C#, Python, Java, JavaScript, Dart, SQL, HTML, CSS, C, Kotlin, Swift

### Frameworks / data
.NET, Blazor, Flutter, FastAPI, Flask, TensorFlow, Streamlit, Firebase, Oracle SQL, PostgreSQL, Apache Iceberg

### Tools / cloud
AWS Lambda, S3, CloudFront, OpenAI API, Git, CI/CD, VS Code, IntelliJ, Xcode, Android Studio, Figma, Retool

### Concepts
OOP, REST APIs, System Design, Data Pipelines, Relational Databases, Full-Stack, Generative AI

Do not add a Skills section, icon wall, or skill bars.

Reflect current skills only through:

- Work text
- project tech pills
- About Me wording where natural

---

# 11. Contact/Footer — preserve its original design exactly

Keep:

- centered `Contact Me` heading
- description in same location
- four contact buttons in the same order/layout
- divider
- Last Updated line

## Contact description

Replace Lorem Ipsum with:

> I'm graduating in June 2027 and always happy to connect about software engineering, interesting technical problems, or new opportunities.

If this is too long for mobile, use:

> I'm graduating in June 2027 and always happy to connect about software engineering and new opportunities.

## Buttons

Keep the existing button ordering and styling:

1. Email
2. Phone
3. LinkedIn
4. GitHub

Update email to:

**lorenzaparentado.work@gmail.com**

Keep phone:

**+1 (484) 350-8039**

Keep LinkedIn display:

**laparentado**

Keep GitHub display:

**lorenzaparentado**

Update any underlying stale URLs/APIs only as required for functionality. Do not visually redesign the buttons.

## Footer date

Keep the existing footer date treatment and change the content to:

**Last Updated August, 2026**

---

# 12. Remove outdated/placeholder content without redesigning around it

The finished source/UI should not visibly contain:

- `Welcome to my Portfolio!` development popup
- `This website is currently under development...`
- `Third Year Computer Science Student`
- `Aspiring Software Engineer`
- old NeuroFlow-current language
- GPA `3.87`
- Artificial Intelligence/Machine Learning concentration copy
- `Lorem ipsum`
- `This is the description`
- literal placeholder `Image` labels
- `Last Updated September, 2024`
- stale resume Google Drive link
- outdated personal email

### Important nuance

Removing placeholder text does **not** authorize redesigning the placeholder container. Keep the container as part of the original visual composition unless an existing real image can be dropped into the exact same space.

---

# 13. WIP modal

The original desktop code shows an on-load popup saying the site is under development.

Remove the automatic popup and its obsolete content.

This is the one intentional interaction removal requested in this update.

Do not replace it with another modal, toast, banner, announcement, intro animation, or splash screen.

---

# 14. Resume asset

Use the attached August 2026 resume.

Preferred implementation:

- copy it into the Flutter project as a stable web-accessible asset
- rename to `Lorenz_Aparentado_Resume.pdf`
- keep the existing `Check out my resume!` button unchanged visually
- update only the button action
- verify the PDF opens from the production `flutter build web` output

Do not add a second Resume CTA somewhere else.

---

# 15. Code architecture may be improved; visual tokens/outcomes must be preserved

No source file is off-limits merely because it influences layout or styling. You may edit:

- `lib/styles/app_colors.dart`
- `lib/styles/text_styles_web.dart`
- `lib/styles/text_style_mobile.dart`
- `lib/common_widgets.dart`
- `lib/tools.dart`
- `lib/responsive.dart`
- `lib/web/home_page/*`
- `lib/mobile/home_page/*`

when doing so improves correctness, maintainability, responsiveness, accessibility, or reliability.

However, preserve the **effective visual tokens and rendered outcomes**: colors, typefaces, type hierarchy, shadows, radii, card proportions, spacing rhythm, alignment, and section composition should remain visually equivalent.

High-value edits may include `strings.dart`, shared data models/content structures, project/resume link logic, WIP popup removal, placeholder contents, asset declarations, responsive utilities, shared widgets, and metadata.

A centralized portfolio content architecture is allowed if it reduces duplication without altering the rendered design. A responsive refactor is allowed if it fixes brittle behavior while reproducing the same intended layouts.

---

# 16. Responsive behavior

Do not visually redesign mobile or desktop, but **do fix the responsive implementation if it is brittle or incorrect.**

Check the updated copy at approximately:

- 360 × 800
- 390 × 844
- 768 × 1024
- 1024 × 768
- 1440 × 900
- 1920 × 1080

If text overflows or the original layout breaks at a target viewport:

1. first make the copy reasonably concise,
2. then fix the underlying responsive/layout implementation if it is genuinely brittle,
3. preserve the original typography, visual hierarchy, proportions, and composition,
4. make only visually consistent adjustments where necessary.

You **may** rebuild the responsive implementation when needed; you may not use responsiveness as an excuse to invent a different visual design.

---

# 17. Web metadata — text-only changes allowed

It is okay to update non-visual metadata such as:

- app title
- browser page title
- description meta tag

Suggested title:

`Lorenz Aparentado | Software Engineer`

Suggested description:

`Portfolio of Lorenz Aparentado, a Drexel Computer Science student and software engineer with experience at SIG, Comcast, and NeuroFlow.`

Do not change visible UI to accommodate SEO.

---

# 18. Functional and implementation improvements allowed

You may improve the implementation beyond the minimum content replacement when it materially improves the portfolio's quality without changing its visual design.

Examples:

- update deprecated `url_launcher` usage
- wire and validate project URLs
- make resume opening reliable in production
- remove obsolete WIP code
- fix broken anchor/scroll navigation
- fix responsive overflow and brittle sizing
- consolidate duplicated widgets/content
- add accessibility semantics/labels
- improve keyboard/focus behavior
- remove dead code
- update deprecated Flutter/Dart patterns
- improve asset handling
- fix analyzer issues in touched code
- simplify unnecessarily complex widget logic

Do not make visual changes simply because a newer design would be cleaner. Implementation modernization is encouraged; visual modernization is not.

---

# 19. Confidentiality rules

For SIG, Comcast, and NeuroFlow:

Use only resume-level public descriptions from this brief / attached resume.

Do not add:

- internal screenshots
- internal company dashboards
- internal source code
- private datasets
- architecture diagrams claiming to represent real internal systems
- credentials
- proprietary names that are not already approved in the resume

For visual placeholders, a plain decorative block is better than a fabricated company-system screenshot.

---

# 20. Definition of done

The task is complete when:

- the portfolio still looks like the original portfolio
- section order is unchanged
- colors/fonts/shadows/card styles/layout composition remain visually equivalent
- the implementation may be cleaner/refactored underneath without visual redesign
- all outdated 2024 content is replaced
- current SIG/Comcast/NeuroFlow experience is represented
- GPA is 3.91
- graduation is June 2027
- projects are current and descriptions are real
- the resume button opens the current resume
- enabled project buttons work
- Contact info is current
- WIP popup is gone
- visible placeholder words are gone
- desktop/mobile have no new overflow caused by the content

Run:

1. `flutter pub get`
2. `dart format` on changed Dart files only
3. `flutter analyze`
4. `flutter test`
5. `flutter build web`

Search source for:

- `Lorem`
- `This is the description`
- `September, 2024`
- `Aspiring Software Engineer`
- `under development`
- stale `3.87`
- stale personal email if it should be replaced
- literal placeholder `Image` UI text

---

# 21. Visual regression requirement

Before editing, inspect or capture the original page at representative desktop and mobile sizes if the environment permits.

After editing, compare against the original.

The expected **intentional visual** differences should be limited to:

- words/numbers
- project titles/descriptions/tech pills
- contents inside existing placeholder/image regions
- WIP popup no longer appearing

There may be substantial internal code differences. Link targets and accessibility/behavior changes may also differ functionally without being visible.

The following should NOT visibly move or change style just because the content changed:

- nav
- hero elements
- stat boxes
- section headings
- About container
- Resume button
- Work rows
- project cards
- Contact buttons
- footer divider/date placement

If a non-content visual difference was introduced by a refactor, restore the original visual result unless the difference corrects a genuine rendering defect. Code differences are fine; unintended design differences are not.

---

# 22. Final Codex report

At the end, report:

1. **Content changes made**
2. **Files changed**
3. **Project links wired**
4. **Resume handling**
5. **Analyze/test/build results**
6. **Functional/refactor improvements made**
7. **Visual changes made** — ideally answer `No intentional redesign; original visual design preserved, aside from updated content and minimal corrections to genuine rendering bugs.`

If the answer to #6 is not essentially “none,” identify every visual difference so it can be reviewed.
