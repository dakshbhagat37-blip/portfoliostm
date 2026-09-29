# SoleTrustMedia Asset Guide

The portfolio keeps project data in `client/src/data/projects.ts` and configuration in `client/src/data/siteConfig.ts`. Large media should be uploaded through the WebDev asset workflow, not committed into `client/public`.

## How to add a project

1. Create a folder outside the project, for example `/home/ubuntu/webdev-static-assets/work/new-project/`.
2. Add the approved files: `cover.webp`, `01.webp`, `02.webp`, `mobile.webp`, `desktop.webp` where relevant.
3. Upload the approved files with `manus-upload-file --webdev <file>`.
4. Add one entry to `client/src/data/projects.ts` with `name`, `type`, `description`, `images`, `tags`, and `website`.
5. Add the correct label: `CLIENT WORK`, `SELF-INITIATED CONCEPT`, or `SOURCE ASSET PENDING`.
6. Add tags such as `Branding`, `Web / Digital`, `E-commerce`, `Content`, `Campaigns`, `AI / Technology`, `Data`, `Concepts`, or `Experimental`.
7. Run `pnpm run check && pnpm run build`.

## Replace a cover

Replace the first item in a project's `images` array with the uploaded cover URL. Keep the same aspect ratio and use a compressed WebP or AVIF asset.

## Add Instagram images

Place approved account thumbnails in the external asset workspace under `instagram/`, upload them, and replace the `image` value in the Instagram feed data. Keep each source URL and date. Never add invented captions, followers, likes, views, or engagement numbers.

## Add artwork

Use `artwork/` for abstract studio artifacts only: ink marks, arrows, diagrams, registration marks, paper textures, and type fragments. Label them `STUDIO ARTIFACT`, `EXPERIMENT`, or `ARCHIVE NOTE` when they appear in the UI.

## Add DBU visuals

Use `dbu/` for concept-only visuals such as journey diagrams, CRM UI, campaign mockups, and student-content boards. Keep the DBU module labeled `CONCEPT PROPOSAL / NOT CLIENT WORK`.

## Add mobile images

If a project has a dedicated mobile capture, add it as `mobile.webp` and use it in the project data. Do not stretch desktop screenshots into a phone frame.
