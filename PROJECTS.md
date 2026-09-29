# Project Content Guide

The central dataset is `client/src/data/projects.ts`. The UI reads the array, so adding or editing a project does not require changing the Work sheet components.

Each project should include:

- `name` — the visible project title.
- `type` — concise category and medium.
- `note` — one short editorial sentence.
- `description` — the project explanation shown after opening the file.
- `services` — the visible service list.
- `images` — approved image URLs, beginning with the cover.
- `marker` — archive index label.
- `tag` — `CLIENT WORK`, `SELF-INITIATED CONCEPT`, or `SOURCE ASSET PENDING`.
- `tags` — filter metadata used by the real filter system.
- `website` — an approved external URL, if available.
- `cta` — `OPEN WEBSITE` or `OPEN CONCEPT`.

## Supported filters

`ALL`, `BRANDING`, `WEB / DIGITAL`, `E-COMMERCE`, `CONTENT`, `CAMPAIGNS`, `AI / TECHNOLOGY`, `DATA`, and `CONCEPTS` are driven by the project's `tags` array. If a filter is selected, only matching projects render.

## Labels matter

Never present a concept as client work. Use `SELF-INITIATED CONCEPT`, `EXPERIMENTAL`, or `CONCEPT` where appropriate. If approved media is not available, use `SOURCE ASSET PENDING` rather than implying the image is a real project capture.

## Client mode

Edit `client/src/data/siteConfig.ts`:

```ts
clientMode: "DBU",
clientName: "Desh Bhagat University",
showDbuModule: true,
```

For a general portfolio, set `clientMode` to `"GENERAL"` and `showDbuModule` to `false`. The DBU file and its content will then disappear while the rest of the archive continues to work.
