# REF4IK-Banner — Store Integration Report
**Generated:** 2026-04-11  
**Purpose:** Detailed blueprint for adding GOG, Epic Games, and Amazon Games store integrations to Winlator REF4IK+, modelled on the Ludashi-plus implementation  
**Source analysis:** `~/winlator_analysis/` (apktool + JADX of REF4IK base APK) + Ludashi-plus GitHub repo + store pipeline reports

---

## TABLE OF CONTENTS

1. [Package & Class Identity Comparison](#1-package--class-identity-comparison)
2. [Navigation Drawer — Injection Points](#2-navigation-drawer--injection-points)
3. [Game Launch Pipeline](#3-game-launch-pipeline)
4. [Extension File Reusability Matrix](#4-extension-file-reusability-matrix)
5. [Exact Smali Patch Targets](#5-exact-smali-patch-targets)
6. [DEX Strategy](#6-dex-strategy)
7. [Build Pipeline Changes](#7-build-pipeline-changes)
8. [REF4IK-Specific Differences & Special Handling](#8-ref4ik-specific-differences--special-handling)
9. [Manifest Additions Required](#9-manifest-additions-required)
10. [Menu Resource Changes Required](#10-menu-resource-changes-required)
11. [Install Path & Storage Strategy](#11-install-path--storage-strategy)
12. [Implementation Checklist](#12-implementation-checklist)

---

## 1. Package & Class Identity Comparison

### Verdict: IDENTICAL packages — full code reuse possible

| Attribute | Ludashi-plus | REF4IK-Banner |
|---|---|---|
| **Package name (APK)** | `com.winlator.cmod` | `com.winlator.ref4ikk` (double-k suffix) |
| **Application source package** | `com.winlator.cmod.*` | `com.winlator.cmod.*` (same!) |
| **APPLICATION_ID (BuildConfig)** | `com.winlator.cmod` | `com.winlator.cmod` (same!) |
| **Application class** | `com.winlator.cmod.PluviaApp` | `com.winlator.cmod.PluviaApp` (same!) |
| **Main activity** | `com.winlator.cmod.MainActivity` | `com.winlator.cmod.MainActivity` (same!) |
| **Wine session activity** | `com.winlator.cmod.XServerDisplayActivity` | `com.winlator.cmod.XServerDisplayActivity` (same!) |
| **MainActivity location (smali)** | `smali_classes9/com/winlator/cmod/MainActivity.smali` | `smali_classes9/com/winlator/cmod/MainActivity.smali` (same!) |

Both builds are from the **same upstream codebase** (`com.winlator.cmod`, coffincolors fork → Bionic fork). REF4IK diverges only by:
- Adding `libfpslimiter.so` native FPS limiter
- Using `bionic` launch mode (`BionicProgramLauncherComponent`) rather than proot
- Carrying Proton 9.0 x86_64 + arm64ec bundled assets
- Targeting `com.winlator.ref4ikk` as the installed package identifier (double-k avoids collision with upstream)

**This means ALL Ludashi-plus extension Java files compile and run unchanged against the REF4IK smali base.**  
The `com.winlator.cmod.store.*` package used by the extension files lives in injected DEX files, not in the existing smali — no conflict.

---

## 2. Navigation Drawer — Injection Points

### Architecture

`MainActivity` (`smali_classes9/com/winlator/cmod/MainActivity.smali`):
- Implements `NavigationView$OnNavigationItemSelectedListener` (line 6 of smali)
- Field: `drawerLayout: DrawerLayout` (smali field declaration at line 28)
- Key method: `onNavigationItemSelected(MenuItem)Z` — starts at **smali line 1881**

### How menu dispatch works

`onNavigationItemSelected` uses a `packed-switch` table (`pswitch_data_0` at **smali line 2082**) on the menu item ID. The base value of the switch is `0x7f0903a7` (= `main_menu_about`). Each subsequent case maps to the next resource ID in sequence.

### Current menu items and their R.id values

From `R$id.smali` (smali_classes2):

| R.id constant | Hex value | Smali case | Fragment/Activity launched |
|---|---|---|---|
| `main_menu_about` | `0x7f0903a7` | pswitch_c | `showAboutDialog()` |
| `main_menu_adrenotools_gpu_drivers` | `0x7f0903a9` | pswitch_b | `AdrenotoolsFragment` |
| `main_menu_box_rc` | `0x7f0903aa` | pswitch_a | `Box86_64RCFragment` |
| `main_menu_containers` | `0x7f0903ab` | pswitch_9 | `ContainersFragment` |
| `main_menu_contents` | `0x7f0903ac` | pswitch_8 | `ContentsFragment` |
| `main_menu_file_manager` | `0x7f0903ae` | pswitch_7 | `startActivityForResult(FileManagerActivity)` |
| `main_menu_gamepad_test` | `0x7f0903b0` | pswitch_6 | `startActivity(GamePadTestActivity)` |
| `main_menu_input_controls` | `0x7f0903b1` | pswitch_5 | `InputControlsFragment` |
| `main_menu_saves` | `0x7f0903b6` | pswitch_4 | `SavesFragment` |
| `main_menu_settings` | `0x7f0903b8` | pswitch_3 | `SettingsFragment` |
| `main_menu_shortcuts` | `0x7f0903b9` | pswitch_2 | `ShortcutsFragment` |
| `main_menu_steam` | `0x7f0903ba` | pswitch_1 | `startActivity(SteamLibraryActivity)` (line 1937) |

### Navigation drawer XML

File: `patches/res/menu/main_menu.xml` (or `apktool_out/res/menu/main_menu.xml` during build)

Current items (in menu order):
```
main_menu_shortcuts, main_menu_containers, main_menu_input_controls,
main_menu_saves, main_menu_box_rc, main_menu_contents, main_menu_steam,
main_menu_adrenotools_gpu_drivers, main_menu_gamepad_test,
main_menu_settings, main_menu_about, main_menu_file_manager
```

### Adding store menu items

The Ludashi-plus pattern assigns store menu items IDs that **extend the existing `R.id` namespace by adding entries to `public.xml`** and `ids.xml`, then adds new `<item>` entries to `main_menu.xml`. The `packed-switch` in `onNavigationItemSelected` is then patched to extend its range to include the new IDs.

**Store menu item IDs to add** (new entries; values must be non-overlapping with existing `0x7f0903a7`–`0x7f0903ba` range):

| New ID name | Suggested value | Store |
|---|---|---|
| `main_menu_gog` | `0x7f0903bb` | GOG |
| `main_menu_epic` | `0x7f0903bc` | Epic |
| `main_menu_amazon` | `0x7f0903bd` | Amazon |

> Values `0x7f0903bb`–`0x7f0903bd` are directly adjacent to the existing packed-switch top item (`0x7f0903ba`) so the switch can be trivially extended by 3 more cases.

---

## 3. Game Launch Pipeline

### How Ludashi-plus launches store games

The `LudashiLaunchBridge.addToLauncher(Activity, gameName, exePath)` method:
1. Uses **reflection** to load `ContainerManager` (avoids needing smali stubs)
2. Lists all user Wine containers by name
3. Shows an `AlertDialog` with the container list
4. On selection: calls `container.getDesktopDir()` via reflection, writes a `.desktop` shortcut file

The shortcut file format (`[Desktop Entry]` + `[Extra Data]`) is the native Winlator shortcut format. Once the `.desktop` file is written into a container's desktop directory, it appears in the **Shortcuts** section of the side menu. The user taps it there to launch, which routes through the standard `XServerDisplayActivity` pipeline with all Wine env vars applied.

### REF4IK equivalent

REF4IK uses **exactly the same** shortcut system:
- Same `ContainerManager` class at `com.winlator.cmod.container.ContainerManager`
- Same `Container.getDesktopDir()` method
- Same `.desktop` file format with `[Desktop Entry]` + `[Extra Data]`  
- Same `ShortcutsFragment` in the side menu displays these shortcuts
- Same `XServerDisplayActivity` launched with `container_id` + `shortcut_path` intent extras

**The `LudashiLaunchBridge.java` file is 100% reusable without any changes.**

### Install paths

Winlator's `ImageFs` maps `Z:` (Wine drive) to `{filesDir}/imagefs/`. Games installed under `imagefs/` are directly reachable by Wine. The `GogInstallPath.java` helper encodes this:

```java
// Install dir (Android path)
{filesDir}/imagefs/gog_games/{gameDir}
// Wine path
Z:\gog_games\{gameDir}\game.exe
```

REF4IK uses the same `ImageFs` class and the same `Z:` = `imagefs/` mapping. The helper is reusable unchanged.

For Epic and Amazon games, use the same pattern with different subdirectories:
```
{filesDir}/imagefs/epic_games/{gameDir}
{filesDir}/imagefs/amazon_games/{gameDir}
```

---

## 4. Extension File Reusability Matrix

### Summary: all 25 non-Steam extension files are directly reusable

All files are in package `com.winlator.cmod.store` — no package change required. They compile against `android.jar` alone (no Winlator stubs needed) via reflection.

| File | Size | Reuse status | Notes |
|---|---|---|---|
| **GOG** | | | |
| `GogGame.java` | 795B | **Direct reuse** | Plain POJO model |
| `GogInstallPath.java` | 1.2KB | **Direct reuse** | Path helper — `filesDir/imagefs/gog_games/` path is valid |
| `GogLaunchHelper.java` | 400B | **Direct reuse** | Thin wrapper over `LudashiLaunchBridge` |
| `GogTokenRefresh.java` | 3.1KB | **Direct reuse** | Pure HTTP, no app coupling |
| `GogDownloadManager.java` | 64KB | **Direct reuse** | Parallel download engine, GOG API calls, no smali coupling |
| `GogMainActivity.java` | ~6.7KB | **Direct reuse** | Activity built with programmatic views only |
| `GogLoginActivity.java` | 7.2KB | **Direct reuse** | WebView login, pure Activity |
| `GogGamesActivity.java` | 66KB | **Direct reuse** | Library + download UI, pure Activity |
| **Epic** | | | |
| `EpicGame.java` | 1.6KB | **Direct reuse** | Plain POJO model |
| `EpicCredentialStore.java` | 3.8KB | **Direct reuse** | SharedPreferences wrapper |
| `EpicAuthClient.java` | 9.6KB | **Direct reuse** | Pure HTTP auth |
| `EpicApiClient.java` | 11.7KB | **Direct reuse** | Pure HTTP API |
| `EpicDownloadManager.java` | 45KB | **Direct reuse** | Full chunked download engine |
| `EpicMainActivity.java` | 5.8KB | **Direct reuse** | Entry-point Activity |
| `EpicLoginActivity.java` | 5.4KB | **Direct reuse** | WebView OAuth login |
| `EpicGamesActivity.java` | 56KB | **Direct reuse** | Library + download UI |
| **Amazon** | | | |
| `AmazonGame.java` | 1.5KB | **Direct reuse** | Plain POJO model |
| `AmazonCredentialStore.java` | 4.9KB | **Direct reuse** | SharedPreferences wrapper |
| `AmazonPKCEGenerator.java` | 2.7KB | **Direct reuse** | PKCE generator, no deps |
| `AmazonAuthClient.java` | 9.8KB | **Direct reuse** | Pure HTTP auth (device registration) |
| `AmazonApiClient.java` | 13KB | **Direct reuse** | GetEntitlements + manifest fetch |
| `AmazonManifest.java` | 12.8KB | **Direct reuse** | Protobuf-style manifest parser |
| `AmazonDownloadManager.java` | 18.7KB | **Direct reuse** | Parallel download + XZ/LZMA decompress |
| `AmazonSdkManager.java` | 10.4KB | **Direct reuse** | FuelSDK DLL deployment to Wine prefix |
| `AmazonLaunchHelper.java` | 11.2KB | **Direct reuse** | fuel.json parsing + launch env construction |
| `AmazonMainActivity.java` | 6.8KB | **Direct reuse** | Entry-point Activity |
| `AmazonLoginActivity.java` | 7.2KB | **Direct reuse** | PKCE WebView login |
| `AmazonGamesActivity.java` | 56.5KB | **Direct reuse** | Library + download UI |
| **Launch bridge** | | | |
| `LudashiLaunchBridge.java` | 5.7KB | **Direct reuse** | Reflection-based shortcut writer |
| `GogInstallPath.java` | 1.2KB | **Direct reuse** | Path helper (shared by all stores) |

### Files that need renaming only (optional)

`LudashiLaunchBridge.java` can optionally be renamed to `WinlatorLaunchBridge.java` for clarity (no functional change — it's internal to the `com.winlator.cmod.store` package). Update the references in `GogLaunchHelper.java` and `AmazonLaunchHelper.java` accordingly.

### Dependencies required

All three stores need `org.json` for JSON parsing:
- `GogDownloadManager.java`, `EpicApiClient.java`, `EpicDownloadManager.java`, `AmazonApiClient.java` all use `org.json.JSONObject/JSONArray`
- Download from Maven Central: `https://repo1.maven.org/maven2/org/json/json/20240303/json-20240303.jar`

Amazon additionally needs the Apache `commons-compress` library for LZMA/XZ decompression if the built-in `java.util.zip` stream wrappers in `AmazonDownloadManager` reference it. Check `AmazonDownloadManager.java` import section — if it uses `org.apache.commons.compress.compressors.lzma.LZMACompressorInputStream`, add `commons-compress` to the compile classpath and DEX.

---

## 5. Exact Smali Patch Targets

### 5.1 MainActivity — `onNavigationItemSelected` method

**File:** `smali_classes9/com/winlator/cmod/MainActivity.smali`  
**Method:** `onNavigationItemSelected(Landroid/view/MenuItem;)Z`  
**Method start line:** 1881  
**Packed-switch table location:** smali line 2082 (`:pswitch_data_0`)

**Current packed-switch:**
```smali
:pswitch_data_0
.packed-switch 0x7f0903a7        ← base = main_menu_about
    :pswitch_c    # 0x7f0903a7  about
    :pswitch_0    # 0x7f0903a8  (gap — no-op)
    :pswitch_b    # 0x7f0903a9  adrenotools
    :pswitch_a    # 0x7f0903aa  box_rc
    :pswitch_9    # 0x7f0903ab  containers
    :pswitch_8    # 0x7f0903ac  contents
    :pswitch_0    # 0x7f0903ad  (gap — no-op)
    :pswitch_7    # 0x7f0903ae  file_manager
    :pswitch_0    # 0x7f0903af  (gap — no-op)
    :pswitch_6    # 0x7f0903b0  gamepad_test
    :pswitch_5    # 0x7f0903b1  input_controls
    :pswitch_0    # 0x7f0903b2  (gap — no-op)
    :pswitch_0    # 0x7f0903b3  (gap — no-op)
    :pswitch_0    # 0x7f0903b4  (gap — no-op)
    :pswitch_0    # 0x7f0903b5  (gap — no-op)
    :pswitch_4    # 0x7f0903b6  saves
    :pswitch_0    # 0x7f0903b7  (gap — no-op)
    :pswitch_3    # 0x7f0903b8  settings
    :pswitch_2    # 0x7f0903b9  shortcuts
    :pswitch_1    # 0x7f0903ba  steam
.end packed-switch
```

**Required patch:** extend the switch by 3 entries to cover IDs `0x7f0903bb` (GOG), `0x7f0903bc` (Epic), `0x7f0903bd` (Amazon). Add 3 new pswitch labels and the corresponding handler blocks.

**New switch table (patch to apply in patches/smali_classes9/.../MainActivity.smali):**
```smali
:pswitch_data_0
.packed-switch 0x7f0903a7
    :pswitch_c    # about
    :pswitch_0    # gap
    :pswitch_b    # adrenotools
    :pswitch_a    # box_rc
    :pswitch_9    # containers
    :pswitch_8    # contents
    :pswitch_0    # gap
    :pswitch_7    # file_manager
    :pswitch_0    # gap
    :pswitch_6    # gamepad_test
    :pswitch_5    # input_controls
    :pswitch_0    # gap
    :pswitch_0    # gap
    :pswitch_0    # gap
    :pswitch_0    # gap
    :pswitch_4    # saves
    :pswitch_0    # gap
    :pswitch_3    # settings
    :pswitch_2    # shortcuts
    :pswitch_1    # steam
    :pswitch_d    # 0x7f0903bb  GOG    ← NEW
    :pswitch_e    # 0x7f0903bc  Epic   ← NEW
    :pswitch_f    # 0x7f0903bd  Amazon ← NEW
.end packed-switch
```

**New handler blocks to insert before `:pswitch_data_0`:**
```smali
    .line 428
    :pswitch_d
    new-instance v1, Landroid/content/Intent;
    const-class v3, Lcom/winlator/cmod/store/GogMainActivity;
    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    invoke-virtual {p0, v1}, Lcom/winlator/cmod/MainActivity;->startActivity(Landroid/content/Intent;)V
    goto :goto_0

    .line 429
    :pswitch_e
    new-instance v1, Landroid/content/Intent;
    const-class v3, Lcom/winlator/cmod/store/EpicMainActivity;
    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    invoke-virtual {p0, v1}, Lcom/winlator/cmod/MainActivity;->startActivity(Landroid/content/Intent;)V
    goto :goto_0

    .line 430
    :pswitch_f
    new-instance v1, Landroid/content/Intent;
    const-class v3, Lcom/winlator/cmod/store/AmazonMainActivity;
    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    invoke-virtual {p0, v1}, Lcom/winlator/cmod/MainActivity;->startActivity(Landroid/content/Intent;)V
    goto :goto_0
```

### 5.2 R$id.smali — new menu item ID constants

**File:** `smali_classes2/com/winlator/cmod/R$id.smali`  
**Action:** Add 3 new static final int fields

```smali
.field public static final main_menu_gog:I = 0x7f0903bb
.field public static final main_menu_epic:I = 0x7f0903bc
.field public static final main_menu_amazon:I = 0x7f0903bd
```

> These go in the patches/ directory as a patched copy of the full R$id.smali file, or as a targeted line insertion after the `main_menu_steam` field declaration.

### 5.3 Summary table

| File | DEX | Line range | What to patch |
|---|---|---|---|
| `com/winlator/cmod/MainActivity.smali` | smali_classes9 | 1881–2110 | `onNavigationItemSelected`: extend packed-switch + 3 new handler blocks |
| `com/winlator/cmod/R$id.smali` | smali_classes2 | after `main_menu_steam` line (~1417) | Add 3 new field declarations |
| `res/menu/main_menu.xml` | res | after `main_menu_steam` item | Add 3 new `<item>` elements |
| `res/values/public.xml` | res | (any location in `id` section) | Add 3 new ID entries |
| `AndroidManifest.xml` | root | `<application>` body | Add 9 activity declarations (3 per store × 3) |

---

## 6. DEX Strategy

### Current DEX usage in REF4IK

| DEX | Contents |
|---|---|
| `smali/` | Kotlin coroutines, AndroidX compat, Glide image loading |
| `smali_classes2` | AndroidX, coil, okhttp, timber, kotlin |
| `smali_classes3–16` | Main `com.winlator.cmod.*` app classes |
| `smali_classes17` | androidx, SF2 audio (cn.*), coil image, JavaSteam (in.*) |
| `smali_classes18–22` | kotlin stdlib, kotlinx, okhttp3, okio, retrofit2, timber, ktor, jp.* |

**DEX slots 1–22 are all occupied.** First free slot is **classes23**.

### Proposed DEX layout for store extension

REF4IK does not have the Ludashi-plus complication of needing a new JavaSteam layer (JavaSteam is already bundled in `classes17`). The store extension needs only one new DEX:

| New DEX | Contents | Compilation |
|---|---|---|
| `classes23.dex` | All store extension classes: GOG + Epic + Amazon (all 28 Java files in `com.winlator.cmod.store.*`) | `javac` → `d8` |

If the 28 Java files + `org.json` + `commons-compress` exceed d8's 65,535 method limit per DEX, split into two:
- `classes23.dex` — GOG + shared utilities (`LudashiLaunchBridge`, `GogInstallPath`, `GogGame`, `GogLaunchHelper`, `GogTokenRefresh`)
- `classes24.dex` — Epic + Amazon download managers + Activities

In practice the store extension files total approximately 330KB of source. At typical expansion ratios (~5–8 methods per KB) that is ~1,650–2,640 methods — well under 65,535 in a single DEX. **One DEX is sufficient.**

### No DEX limit risk

The `smali_classes16` DEX limit issue that affects BannerHub (65,535 method limit) does **not** apply here because the extension classes go into brand-new `classes23.dex`, not into any existing saturated DEX. The existing smali files are never modified to add new methods.

---

## 7. Build Pipeline Changes

### Current REF4IK-Banner build.yml

The current workflow at `~/REF4IK-Banner/.github/workflows/build.yml` does only:
1. Download base APK from `base-apk` release
2. `apktool d` — decompile
3. Remove `raws.xml` (aapt2 workaround)
4. Copy `patches/` over decompiled output
5. `apktool b` — rebuild
6. `zipalign` + `apksigner`
7. Upload to release

### Changes required

Add the following steps **between "Apply patches" and "Rebuild APK"**:

#### Step A: Download org.json dependency

```yaml
- name: Download org.json (store extension dependency)
  run: |
    wget -q "https://repo1.maven.org/maven2/org/json/json/20240303/json-20240303.jar" \
      -O org-json.jar
```

#### Step B (optional, check AmazonDownloadManager imports first): Download commons-compress

```yaml
- name: Download commons-compress (Amazon LZMA decompression)
  run: |
    wget -q "https://repo1.maven.org/maven2/org/apache/commons/commons-compress/1.26.0/commons-compress-1.26.0.jar" \
      -O commons-compress.jar
```

#### Step C: Compile store extension to classes23.dex

```yaml
- name: Compile store extension (GOG/Epic/Amazon) → classes23.dex
  run: |
    ANDROID_JAR=$(ls $ANDROID_SDK_ROOT/platforms/android-*/android.jar 2>/dev/null \
      | sort -V | tail -1)
    echo "Using android.jar: $ANDROID_JAR"

    mkdir -p ext_store_classes
    javac -source 8 -target 8 \
      -cp "$ANDROID_JAR:org-json.jar:commons-compress.jar" \
      -d ext_store_classes \
      extension/*.java
    echo "Compiled $(find ext_store_classes -name '*.class' | wc -l) class files"

    BUILD_TOOLS=$(ls $ANDROID_SDK_ROOT/build-tools | sort -V | tail -1)
    mkdir -p ext_store_dex
    $ANDROID_SDK_ROOT/build-tools/$BUILD_TOOLS/d8 \
      --release --min-api 26 --output ext_store_dex \
      $(find ext_store_classes -name "*.class") \
      org-json.jar \
      commons-compress.jar
    echo "classes23.dex ready: $(du -sh ext_store_dex/classes.dex | cut -f1)"
```

#### Step D: Inject classes23.dex after APK rebuild

```yaml
- name: Inject classes23.dex (store extension)
  run: |
    cp ext_store_dex/classes.dex classes23.dex
    zip -j rebuilt-unsigned.apk classes23.dex
    echo "classes23.dex injected ($(du -sh classes23.dex | cut -f1))"
```

> The injection step must come **after** `apktool b` (which creates `rebuilt-unsigned.apk`) and **before** `zipalign`.

### Revised step order

```
1. Download base APK
2. Install apktool
3. Decompile APK
4. Remove raws.xml
5. Apply patches               ← patches/ now includes smali + menu + manifest changes
6. Download org.json           ← NEW
7. Download commons-compress   ← NEW (if needed)
8. Compile store extension     ← NEW
9. Rebuild APK (apktool b)
10. Re-inject ab_*.png (if needed — Ludashi workaround; may not apply to REF4IK)
11. Inject classes23.dex       ← NEW
12. Zipalign
13. Sign
14. Upload to release
```

### ab_*.png re-injection

The Ludashi build has an `ab_*.png` re-injection step because apktool removes certain animated resources. Check whether REF4IK base APK has the same issue by inspecting `apktool_out/res/drawable/` for `ab_*.png` files after decompiling. If they are absent, skip this step.

---

## 8. REF4IK-Specific Differences & Special Handling

### 8.1 Install path: imagefs vs filesDir

**Ludashi-plus:** `GogInstallPath` writes games to `{filesDir}/imagefs/gog_games/`.  
**REF4IK:** Uses **identical** `ImageFs` class. The `filesDir` location is `com.winlator.ref4ikk` (double-k package), not `com.winlator.cmod`, but `Context.getFilesDir()` resolves this automatically at runtime.

`GogInstallPath.getInstallDir(ctx, name)` calls `ctx.getFilesDir()` — this automatically returns the correct path for whichever package is installed. **No code change needed.**

### 8.2 Package name vs APPLICATION_ID

The installed APK package is `com.winlator.ref4ikk` but the source code package is `com.winlator.cmod`. This means:
- SharedPreferences files live under `com.winlator.ref4ikk` data directory
- Store prefs (`bh_gog_prefs`, `bh_epic_prefs`, `bh_amazon_prefs`) will be stored correctly under the ref4ik data directory
- The `FileProvider` authority in `AndroidManifest.xml` is `com.winlator.ref4ikk.tileprovider` — if any store activity needs to share a file via `FileProvider`, use this authority (not `com.winlator.cmod.tileprovider`)

### 8.3 Bionic mode (no proot)

REF4IK uses `BionicProgramLauncherComponent` — no proot/chroot. Wine runs natively linked against Android bionic. The store integration only writes `.desktop` shortcut files and launches `XServerDisplayActivity`, so this has **no impact** on the store code.

### 8.4 imagefs path

Ludashi-plus `GogInstallPath` hardcodes `imagefs/gog_games/` as the subdirectory under `filesDir`. In REF4IK, the `ImageFs` class records:
```
HOME_PATH   = "/home/xuser"
WINEPREFIX  = "/home/xuser/.wine"
```
And the imagefs root is `{filesDir}/imagefs/`. The Z: drive maps to this root.

**Confirmed:** `Container.DEFAULT_DRIVES = "D:{DOWNLOADS}E:/data/data/com.winlator.cmod/storage"` — the container's E: drive points to `com.winlator.cmod/storage` (original upstream path). This is hardcoded in `Container.java` in the base APK smali. It does NOT affect game installation — games install under `imagefs/` (Z: drive), not E:.

### 8.5 Steam is already integrated

REF4IK already has `SteamLibraryActivity` and the full Pluvia Steam layer. The store menu item for Steam (`main_menu_steam` = `0x7f0903ba`, pswitch_1) already launches `SteamLibraryActivity`. No Steam work is needed — GOG, Epic, and Amazon are the three additions.

### 8.6 SteamFragment vs SteamLibraryActivity

Ludashi-plus also wraps Steam in a fragment-based entry (`SteamFragment`). REF4IK uses a direct `startActivity(SteamLibraryActivity)` call. The store Activities (GOG/Epic/Amazon) use the same direct `startActivity` pattern — this is correct for REF4IK and matches how Steam is already handled.

### 8.7 No MMKV

Unlike BannerHub, REF4IK does not use MMKV. All prefs are standard `SharedPreferences`. The store extension files (`GogDownloadManager`, `EpicCredentialStore`, `AmazonCredentialStore`) also use standard `SharedPreferences` — **no MMKV compatibility issue**.

### 8.8 Register constants in R$id

The packed-switch in `onNavigationItemSelected` matches integer IDs at **runtime**. The resource IDs must be registered in `R$id.smali` AND in `res/values/public.xml`/`res/values/ids.xml` so that:
1. The smali patch's `const v1, 0x7f0903bb` / `0x7f0903bc` / `0x7f0903bd` actually matches the IDs assigned by aapt2 to the new menu items.

The safest approach is to add the IDs to `res/values/public.xml` (pinning the hex values) so aapt2 assigns them the specific values you expect. Without pinning, aapt2 may assign different IDs on rebuild, breaking the switch.

### 8.9 apktool.yml — do NOT patch versionName

Do not modify `versionCode` or `versionName` in `apktool.yml` to a custom value. REF4IK (`VERSION_NAME = "7.1.4x-cmod"`) does not make server API calls that gate on version like GameHub does, but keeping the original value avoids unexpected breakage.

### 8.10 GOG token refresh timing

`GogTokenRefresh.java` performs a background HTTP call to `https://auth.gog.com/token` to refresh the OAuth token before it expires. This uses a standard `ScheduledExecutorService` — it starts a background thread. In REF4IK this is fine; no foreground service declaration is needed for the token refresh alone (it runs on a background thread, not a Service).

### 8.11 Epic WebView OAuth

`EpicLoginActivity` uses a WebView that navigates to the Epic OAuth URL. The redirect URL is `https://www.epicgames.com/id/api/redirect`. The response body (read via `evaluateJavascript("document.body.innerText")` in `onPageFinished`) contains the `authorizationCode` JSON field. This pattern is already proven in BannerHub and does not require any REF4IK-specific changes.

### 8.12 Amazon PKCE flow

`AmazonLoginActivity` uses PKCE OAuth. The redirect URL intercept pattern works via `shouldOverrideUrlLoading` in the WebViewClient. No special Android permissions beyond INTERNET are needed (already present in REF4IK manifest).

---

## 9. Manifest Additions Required

Add to `patches/AndroidManifest.xml` inside the `<application>` block:

```xml
<!-- GOG Game Store -->
<activity android:exported="false"
    android:name="com.winlator.cmod.store.GogMainActivity"
    android:theme="@style/AppTheme"/>
<activity android:exported="false"
    android:name="com.winlator.cmod.store.GogLoginActivity"
    android:theme="@style/AppTheme"/>
<activity android:exported="false"
    android:name="com.winlator.cmod.store.GogGamesActivity"
    android:screenOrientation="sensorLandscape"
    android:theme="@style/AppTheme"/>

<!-- Epic Games Store -->
<activity android:exported="false"
    android:name="com.winlator.cmod.store.EpicMainActivity"
    android:theme="@style/AppTheme"/>
<activity android:exported="false"
    android:name="com.winlator.cmod.store.EpicLoginActivity"
    android:theme="@style/AppTheme"/>
<activity android:exported="false"
    android:name="com.winlator.cmod.store.EpicGamesActivity"
    android:screenOrientation="sensorLandscape"
    android:theme="@style/AppTheme"/>

<!-- Amazon Games -->
<activity android:exported="false"
    android:name="com.winlator.cmod.store.AmazonMainActivity"
    android:theme="@style/AppTheme"/>
<activity android:exported="false"
    android:name="com.winlator.cmod.store.AmazonLoginActivity"
    android:theme="@style/AppTheme"/>
<activity android:exported="false"
    android:name="com.winlator.cmod.store.AmazonGamesActivity"
    android:screenOrientation="sensorLandscape"
    android:theme="@style/AppTheme"/>
```

---

## 10. Menu Resource Changes Required

### `patches/res/menu/main_menu.xml`

Add 3 new items after the existing `main_menu_steam` item:

```xml
<item android:icon="@drawable/icon_open"
    android:id="@id/main_menu_gog"
    android:title="GOG" />
<item android:icon="@drawable/icon_open"
    android:id="@id/main_menu_epic"
    android:title="Epic Games" />
<item android:icon="@drawable/icon_open"
    android:id="@id/main_menu_amazon"
    android:title="Amazon Games" />
```

### `patches/res/values/public.xml` (ID pinning)

Add to the `id` type section:

```xml
<public type="id" name="main_menu_gog" id="0x7f0903bb" />
<public type="id" name="main_menu_epic" id="0x7f0903bc" />
<public type="id" name="main_menu_amazon" id="0x7f0903bd" />
```

### `patches/res/values/ids.xml` (if present separately)

```xml
<item type="id" name="main_menu_gog" />
<item type="id" name="main_menu_epic" />
<item type="id" name="main_menu_amazon" />
```

---

## 11. Install Path & Storage Strategy

### Per-store install paths

| Store | Android path | Wine path |
|---|---|---|
| GOG | `{filesDir}/imagefs/gog_games/{gameDir}/` | `Z:\gog_games\{gameDir}\` |
| Epic | `{filesDir}/imagefs/epic_games/{gameDir}/` | `Z:\epic_games\{gameDir}\` |
| Amazon | `{filesDir}/imagefs/amazon_games/{gameDir}/` | `Z:\amazon_games\{gameDir}\` |

All paths are under `imagefs/` which maps to Wine's Z: drive in REF4IK (same as Ludashi-plus and BannerHub).

### SharedPreferences keys (per store)

| Store | Prefs file name | Key examples |
|---|---|---|
| GOG | `bh_gog_prefs` | `access_token`, `refresh_token`, `user_id`, `gog_exe_{gameId}` |
| Epic | `bh_epic_prefs` | `access_token`, `refresh_token`, `account_id`, `exchange_code` |
| Amazon | `bh_amazon_prefs` | `access_token`, `refresh_token`, `device_id`, `client_id` |

---

## 12. Implementation Checklist

### Phase 1: Patches preparation

- [ ] Copy all 28 extension Java files from Ludashi-plus `extension/` directory to `REF4IK-Banner/extension/`
- [ ] (Optional) Rename `LudashiLaunchBridge.java` → `WinlatorLaunchBridge.java` and update references in `GogLaunchHelper.java` and `AmazonLaunchHelper.java`
- [ ] Create/update `patches/res/menu/main_menu.xml` — add 3 store menu items
- [ ] Create/update `patches/res/values/public.xml` — pin 3 new ID values
- [ ] Create/update `patches/AndroidManifest.xml` — add 9 activity declarations
- [ ] Create `patches/smali_classes9/com/winlator/cmod/MainActivity.smali` — patch `onNavigationItemSelected` with extended packed-switch + 3 new handler blocks
- [ ] Create `patches/smali_classes2/com/winlator/cmod/R$id.smali` — add 3 new field declarations

### Phase 2: Build workflow update

- [ ] Add `extension/` source directory to repository
- [ ] Update `.github/workflows/build.yml` — add download/compile/inject steps for `classes23.dex`
- [ ] Verify `commons-compress` is needed by checking `AmazonDownloadManager.java` imports
- [ ] Test build locally (apktool + javac + d8) before CI

### Phase 3: Validation

- [ ] Confirm `main_menu_gog` = `0x7f0903bb`, `main_menu_epic` = `0x7f0903bc`, `main_menu_amazon` = `0x7f0903bd` after apktool rebuild (check rebuilt `R$id.smali`)
- [ ] Confirm `classes23.dex` is present in final APK: `unzip -l *.apk | grep classes23`
- [ ] Install APK and verify GOG/Epic/Amazon appear in side menu
- [ ] Test GOG login → library sync → download → launch
- [ ] Test Epic OAuth → library → chunked download (Fastly/Akamai CDN) → launch
- [ ] Test Amazon PKCE login → GetEntitlements → manifest proto → XZ download → fuel.json launch

---

## Appendix A: Key API Constants (from store pipeline reports)

### GOG
- Auth URL: `https://auth.gog.com/auth?client_id=46899977096215655&...`
- Token URL: `https://auth.gog.com/token`
- Client ID: `46899977096215655` (public — intentionally open)
- Client secret: `9d85c43b1482497dbbce61f6e4aa173a433796eeae2ca8c5f6129f2dc4de46d9` (public)
- Library API: `https://embed.gog.com/account/getFilteredProducts`
- Build API: `https://content-system.gog.com/products/{gameId}/os/windows/builds?generation=2`

### Epic
- Auth redirect: reads JSON body from `https://www.epicgames.com/id/api/redirect`
- Extract `authorizationCode` field via `evaluateJavascript("document.body.innerText")` in `onPageFinished`
- Library API: `https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/public/assets/v2/`
- Catalog API: `https://catalog-public-service-prod06.ol.epicgames.com/catalog/api/shared-ns/bulk/items`
- Manifest API: `https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/public/assets/v2/`
- CDN: preferred = Fastly (`egdownload.fastly-edge.com`) or Akamai (`epicgames-download1.akamaized.net`); fallback = `download.epicgames.com` (Cloudflare, 403 without token on chunks)
- Chunk subfolder: DECIMAL `"%02d".format(groupNum)` — NOT hex

### Amazon
- Auth: PKCE OAuth, no client secret
- GetEntitlements: `https://gaming.amazon.com/graphql` (AppStore API)
- Manifest: protobuf format, XZ/LZMA compressed
- Fuel.json: launch configuration embedded in installation

---

## Appendix B: File Count Summary

| Category | Count |
|---|---|
| Extension Java files to add | 28 |
| Smali files to patch | 2 (`MainActivity.smali`, `R$id.smali`) |
| Resource files to patch | 3 (`main_menu.xml`, `public.xml`, `AndroidManifest.xml`) |
| New DEX files | 1 (`classes23.dex`) |
| Build workflow steps to add | 4 |
| New manifest `<activity>` declarations | 9 |
| New menu items | 3 |

---

*End of report — source analysis at `~/winlator_analysis/`, Ludashi-plus reference at `https://github.com/The412Banner/Ludashi-plus`*
