# Winlator REF4IK+

A patched build of **Winlator Bionic** by the REF4IK dev team, with self-hosted components and a pre-configured components list so everything works out of the box.

---

## Credits

This project is built entirely on top of the work of the **REF4IK dev team**.

| | |
|---|---|
| **Base APK** | [Winlator Bionic REF4IK mod](https://github.com/REF4IK/Components-Adrenotools-) by REF4IK |
| **Components** | [REF4IK/Components-Adrenotools-](https://github.com/REF4IK/Components-Adrenotools-) · [REF4IK/Components-](https://github.com/REF4IK/Components-) |
| **Additional components** | [Arihany/WinlatorWCPHub](https://github.com/Arihany/WinlatorWCPHub) · [ziad9267/Winlator-Contents](https://github.com/ziad9267/Winlator-Contents) · [de0ver/Components-for-Wine](https://github.com/de0ver/Components-for-Wine) · [slaker222/wcp-for-winlator](https://github.com/slaker222/wcp-for-winlator) |
| **Winlator** | Original project by [brunodev85](https://github.com/brunodev85/winlator) |

All credit for the underlying emulation, Wine integration, and component ecosystem belongs to the original authors. This repo only provides patched builds and self-hosted mirrors.

---

## What's Different

- **App name** set to `Winlator REF4IK+`
- **Default components URL** points to this repo's self-hosted mirror — no dependency on external sources staying online
- **112 WCP components** mirrored locally: Wine, Box64, WOWBox64, FEXCore, VKD3D, DXVK

---

## Download

Get the latest APK from the [Releases](https://github.com/The412Banner/REF4IK-Banner/releases/latest) page.

> Only install from the **Releases** page. Do not install CI artifacts.

---

## Components

All 112 WCP components are hosted in this repo under the [`Components`](https://github.com/The412Banner/REF4IK-Banner/releases/tag/Components) release and served via:

```
https://github.com/The412Banner/REF4IK-Banner/raw/main/contents.json
```

This URL is baked into the app as the default. You can change it in **Settings → Downloadable Contents URL** if needed.

### Component Types

| Type | Count |
|---|---|
| Wine | 15 |
| Box64 | 6 |
| WOWBox64 | 5 |
| FEXCore | 7 |
| VKD3D | 4 |
| DXVK | 75 |
| **Total** | **112** |

---

## Building

Builds are automated via GitHub Actions. Every push to a `v*` tag triggers a full build:

1. Downloads base APK from the `base-apk` release
2. Decompiles with apktool
3. Applies patches from `patches/`
4. Rebuilds and signs (AOSP testkey v1/v2/v3)
5. Uploads APK to the release

To trigger a build manually: **Actions → Build APK → Run workflow**.

---

## License

This repo contains no original source code. All components and the base APK are the work of their respective authors listed in the Credits section above.
