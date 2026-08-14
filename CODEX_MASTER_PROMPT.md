# Master Prompt for Codex — Functional Modernization + Content Update, Visual Design Locked

You are working on my existing Flutter portfolio repository:

`lorenzaparentado/Flutter-Portflio`

Your task is to **fully update the portfolio's content to accurately reflect me in August 2026 and improve the implementation wherever useful, while preserving the ORIGINAL portfolio's rendered visual design as closely to 1:1 as possible.**

This is **NOT a visual redesign**.

The distinction is critical:

> **You may change how the site is built. You may not change what the site looks like.**

Before changing anything:

1. Read `PORTFOLIO_UPDATE_BRIEF.md` completely.
2. Inspect the original repository and treat the original rendered UI as the visual source of truth.
3. If possible, capture/reference the original desktop and mobile renderings before editing.
4. Use `Lorenz Aparentado - Resume (Aug 2026)(1).pdf` as the factual source of truth for education, employment, dates, metrics, and technologies.
5. Use `Guess Me - Product Handoff.pdf` only when describing Guess Me, and never describe planned features as shipped.

---

# 1. NON-NEGOTIABLE VISUAL LOCK

Preserve the original visual design.

Do not intentionally redesign, modernize, restyle, or reinterpret the UI.

The updated portfolio should retain the same recognizable:

- page/section order
- overall composition
- warm tan/brown/green palette
- fonts and typography treatment
- relative font hierarchy
- header/navbar appearance
- mobile navigation appearance
- hero composition
- portrait treatment
- card shapes
- border radii
- offset solid shadows
- box colors
- spacing rhythm
- section backgrounds
- project grid/card appearance
- stat card appearance
- About Me composition
- Work composition
- Contact/footer composition
- visual relationship between desktop and mobile
- existing interaction aesthetic

Do not introduce a new visual language such as:

- gradients
- glassmorphism
- terminal/code-window visuals
- skill bars
- icon clouds
- a timeline
- new experience-card designs
- new decorative shapes
- new card styles
- typewriter effects
- new animation styles
- a different navigation system
- a new hero layout
- a different section hierarchy

Do not add new top-level sections solely because the resume contains more information.

Keep the existing top-level sequence:

1. Landing
2. Stats
3. About Me
4. Work
5. Projects
6. Contact/Footer

Keep the recognizable desktop navigation structure:

- About Me
- Work
- Lorenz in the center
- Projects
- Contact Me

---

# 2. IMPLEMENTATION IS NOT LOCKED

Unlike the visuals, **the code architecture is allowed to change**.

If the original implementation is brittle, duplicated, awkward, deprecated, inaccessible, hard-coded, or unnecessarily difficult to maintain, you may improve it.

You are explicitly allowed to:

- refactor Dart/widget architecture
- extract reusable widgets
- consolidate duplicated desktop/mobile code where it is genuinely beneficial
- centralize repeated content/data
- replace brittle viewport math with safer constraints or responsive logic
- improve breakpoint handling
- fix hard-coded sizing that causes overflow or inconsistent rendering
- clean up dead code
- remove obsolete code
- update deprecated Flutter/Dart APIs
- update deprecated package usage
- improve `url_launcher` handling
- improve asset loading
- fix navigation/scroll behavior
- improve keyboard navigation
- add accessibility semantics and labels
- improve focus handling
- improve link/button reliability
- improve performance where reasonable
- improve null-safety/type-safety
- simplify confusing implementation details
- rename poorly named internal variables/classes/files where useful
- reorganize code for maintainability
- fix responsive bugs
- fix compile/analyzer warnings caused by the touched code

You may modify files such as:

- `lib/styles/*`
- `lib/common_widgets.dart`
- `lib/tools.dart`
- `lib/responsive.dart`
- `lib/web/home_page/*`
- `lib/mobile/home_page/*`

**if doing so is useful for implementation quality or correctness.**

However, those changes must not become an excuse to visually redesign the site.

### Core rule

A refactor is acceptable if the user-visible result remains visually equivalent to the original design.

For example:

- Replacing duplicated web/mobile widgets with shared responsive components: **allowed**, if the rendered layouts still match.
- Replacing brittle `MediaQuery` arithmetic with `LayoutBuilder`/constraints: **allowed**, if sizing/positioning remain visually equivalent.
- Centralizing colors/text styles into a cleaner theme: **allowed**, if the actual colors/typography remain the same.
- Fixing a broken mobile breakpoint: **allowed**, while preserving the intended original mobile design.
- Improving accessibility semantics: **allowed**, with no unnecessary visual changes.
- Changing card layout/style because you prefer another design: **not allowed**.

---

# 3. VISUAL-EQUIVALENCE TEST

Think of the original and updated site overlaid at 50% opacity at the same viewport size.

Apart from intentional content differences, the layouts should line up very closely.

Expected visible differences are limited to things like:

- updated text
- updated numbers
- updated project names/descriptions/tech pills
- real content replacing placeholder words inside existing visual regions
- current resume/link targets
- removal of the obsolete WIP popup
- tiny rendering corrections needed to fix an actual bug

A person familiar with the old portfolio should say:

> “This is the same portfolio design, but the content is current and the site works better.”

They should **not** say:

> “This is a redesigned portfolio.”

If a functional refactor accidentally changes visual geometry, spacing, color, typography, card proportions, or section composition, restore the original visual result unless the difference fixes a genuine rendering bug.

---

# 4. CONTENT UPDATE

Use `PORTFOLIO_UPDATE_BRIEF.md` for the exact content, project mapping, links, confidentiality rules, and section-by-section requirements.

The central mapping rule is:

> **Fit current information into the existing visual structure instead of inventing new visual structures.**

Examples:

- Updated career positioning goes into the existing Landing content.
- Current concrete metrics go into the existing four Stats boxes.
- Education/background/current positioning go into the existing About Me area.
- SIG, Comcast, and NeuroFlow are represented within the existing Work visual composition.
- Four current projects replace the four existing project cards.
- Vanguard may be mentioned in existing copy; it does not require a new visual section.
- Current technologies appear naturally in role/project content; do not add a new Skills section just because it exists on the resume.

If copy causes overflow, you may solve the problem intelligently. Prefer, in order:

1. concise copy,
2. implementation/responsive fixes that preserve the design,
3. tiny dimensional adjustments consistent with the original visual intent.

Do **not** solve overflow by replacing the section with a new design.

---

# 5. REQUIRED FUNCTIONAL IMPROVEMENTS

At minimum:

1. Remove the obsolete on-load “site under development” popup on desktop and mobile if present.
2. Replace the stale resume URL with the included current resume PDF as a stable web asset while keeping the existing Resume button visually unchanged.
3. Update the professional email to `lorenzaparentado.work@gmail.com`.
4. Make all verified project buttons functional without redesigning them.
5. Remove visible placeholder copy such as Lorem Ipsum, `This is the description`, and literal `Image` labels.
6. Keep the existing “Last Updated” visual treatment but update the date to August 2026.
7. Fix any broken section navigation or scroll targets you encounter.
8. Fix obvious responsive overflow/layout bugs while preserving the intended appearance.
9. Improve accessibility/semantics for interactive elements where practical without changing their visual styling.
10. Ensure external URLs and the resume work correctly in the production web build.

---

# 6. SOURCE OF TRUTH / CONFIDENTIALITY

For professional work, only use information contained in the attached resume/brief.

Do not invent or expose:

- internal source code
- internal screenshots
- proprietary architecture
- private datasets
- credentials/secrets
- unpublished internal system details
- company-confidential information

For projects, verify public repository details before creating claims or links.

If something is unclear, use the more conservative statement rather than inventing detail.

---

# 7. QUALITY BAR

Do not stop at a plan. Implement the update.

The finished code should be materially healthier where useful, but the visual identity should remain the original one.

Run:

- `flutter pub get`
- `dart format` on changed Dart files
- `flutter analyze`
- `flutter test`
- `flutter build web`

Verify at representative sizes such as:

- 360 × 800
- 390 × 844
- 768 × 1024
- 1024 × 768
- 1440 × 900
- 1920 × 1080

Verify:

- no unintended overflow
- no broken navigation
- Resume button works from the production web build
- enabled project links work
- email/LinkedIn/GitHub/contact interactions work
- keyboard/focus behavior is reasonable
- desktop and mobile still visually match the original design

If your environment supports screenshots, compare before/after renders.

---

# 8. FINAL REPORT

At the end, report:

1. Content changes made
2. Functional fixes made
3. Refactors/implementation improvements made
4. Files changed
5. Project links wired
6. Resume handling
7. Analyze/test/build results
8. Visual differences from the original

For item 8, the expected answer is approximately:

> “No intentional visual redesign. The original design was preserved; only content changed plus any minimal corrections required for genuine rendering bugs.”
