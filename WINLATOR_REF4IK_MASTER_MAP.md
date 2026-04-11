# Winlator Bionic ref4ik Mod — Master Map Report
**APK:** `Winlator bionic ref4ik mod test.apk`
**Generated:** 2026-04-10
**Tools used:** apktool 2.9.3 + JADX (output already in `~/winlator_analysis/`)

---

## 1. APK Identity

| Field | Value |
|---|---|
| **Package name** | `com.winlator.ref4ikk` |
| **App label** | `bionic ref4ik test version` |
| **Version code** | 20 |
| **Version name** | `test` |
| **Min SDK** | 26 (Android 8.0 Oreo) |
| **Target SDK** | 28 (Android 9 Pie) |
| **Compile SDK** | 34 (Android 14) |
| **Application class** | `com.winlator.cmod.PluviaApp` (Kotlin) |
| **App category** | `game` |
| **Debuggable** | `true` |
| **Extract native libs** | `true` |

> The `ref4ikk` package suffix (double k) distinguishes it from upstream Winlator packages and allows coexistence.

---

## 2. Source Package Layout

All application code lives under `com.winlator.cmod.*` (745 Java/Kotlin files decompiled by JADX).

```
com.winlator.cmod
├── PluviaApp.kt               Application class; BouncyCastle init, SteamService repair, NetworkMonitor
├── MainActivity.java          Home screen: containers list, nav drawer, fragments
├── XServerDisplayActivity.java  Wine session host (singleTask, sensorLandscape, PiP)
├── XrActivity.java            VR/Oculus session (:vr_process, singleTask, landscape)
├── BigPictureActivity.java    Big Picture gaming UI
├── TerminalActivity.java      In-app terminal
├── GamePadTestActivity.java   Gamepad diagnostics
├── ControlsEditorActivity.java  Touch overlay editor
├── ExternalControllerBindingsActivity.java  Physical controller mappings
├── FileManagerActivity.java   In-app file browser
├── WinlatorForegroundService.java  Foreground service (dataSync)
├── ShortcutBroadcastReceiver.java  Home-screen shortcut handler
│
├── alsaserver/                ALSA client/server (ALSAClient, ConnectionHandler, RequestCodes)
├── bigpicture/                Big Picture carousel UI + SteamGridDB cover art API
│   └── steamgrid/             SteamGridDBApi (Retrofit interface), response models
├── box86_64/                  Box86/Box64 preset system (presets, RC file parser)
│   └── rc/                    RC file format (RCField, RCFile, RCGroup, RCManager)
├── components/                GitHub component download/install pipeline
│                              (ComponentDownloader, ComponentInstaller, GitHubComponentManager)
├── container/                 Container model (Container.java + ContainerManager, Shortcut)
├── contentdialog/             All in-session dialogs:
│                              AudioDriver, DXVK, VKD3D, GraphicsDriver, GPUPerformance,
│                              Debug, DXWrapper, ScreenEffect, ShortcutSettings, UpdateDialog, etc.
├── contents/                  Content profile system (AdrenotoolsManager, ContentsManager, Downloader)
├── core/                      Core utilities:
│                              AppUtils, FileUtils, ImageUtils, ProcessHelper, StreamUtils
│                              WineInfo (Parcelable), WineRegistryEditor, WineRequestHandler
│                              WineStartMenuCreator, WineThemeManager
│                              EnvVars, KeyValueSet, DefaultVersion
│                              GPUInformation, GPUPerformanceManager
│                              HDRConfiguration, HDRDisplayManager, HDREGLConfigChooser, etc.
│                              PatchElf, ElfHelper, MSBitmap, MSLink, MSLogFont
│                              HttpUtils, NetworkHelper, DohOkHttp
│                              PreloaderDialog, DownloadProgressDialog
│                              EnvironmentManager, TarCompressorUtils, OnExtractFileListener
├── db/                        Room database (PluviaDatabase — single DB for app + Steam)
├── fexcore/                   FEXCore preset management
├── inputcontrols/             Touch input overlay system
├── math/                      Math/geometry utilities
├── midi/                      MIDI playback
├── renderer/                  Renderer abstraction
├── restore/                   RestoreActivity (:restore_process — backup/restore containers)
├── saves/                     Save file management + CustomFilePickerActivity
├── service/                   DownloadService (Kotlin, background downloads)
├── steam/                     Full Steam client layer (see §6)
├── sysvshm/                   System V shared memory (for WINEESYNC)
├── update/                    Self-update system (GitHub releases, beta flag)
├── utils/                     NetworkMonitor
├── widget/                    UI widgets: FpsCounterDialog, FpsCounterConfig, EnvVarsView
├── win32/                     Win32 utilities
├── winhandler/                WinHandler + TaskManagerDialog (active Wine windows)
├── xconnector/                Unix socket server (XConnectorEpoll, XInputStream, XOutputStream)
├── xenvironment/              XEnvironment + EnvironmentComponent lifecycle (see §7)
│   └── components/            Runtime engine components (see §7)
└── xserver/                   Pure-Java X11 server implementation (see §8)
```

---

## 3. Android Manifest Components

### Activities (14 total)

| Activity | Exported | Notes |
|---|---|---|
| `MainActivity` | ✅ LAUNCHER | Main entry point |
| `XServerDisplayActivity` | ✅ | Wine session; singleTask; PiP; sensorLandscape |
| `XrActivity` | ✅ | VR/Oculus; `:vr_process`; Oculus VR category |
| `BigPictureActivity` | ❌ | Big Picture gaming mode |
| `TerminalActivity` | ❌ | Linux terminal |
| `GamePadTestActivity` | ❌ | Gamepad test; portrait |
| `ControlsEditorActivity` | ❌ | Touch overlay editor; sensorLandscape |
| `ExternalControllerBindingsActivity` | ❌ | Physical controller; sensor |
| `FileManagerActivity` | ❌ | File browser |
| `saves.CustomFilePickerActivity` | ❌ | Save file picker |
| `steam.SteamLibraryActivity` | ❌ | Steam library UI; sensorLandscape |
| `steam.SteamLoginActivity` | ❌ | Steam login UI |
| `steam.SteamShortcutSettingsActivity` | ❌ | Per-game Steam Wine config |
| `restore.RestoreActivity` | ✅ | Container restore; `:restore_process` |

### Services (3)

| Service | Type | Notes |
|---|---|---|
| `WinlatorForegroundService` | dataSync | General foreground service |
| `steam.service.SteamService` | dataSync | Steam download + session |
| `androidx.room.MultiInstanceInvalidationService` | — | Room DB multi-process invalidation |

### Receivers (2)

| Receiver | Exported | Intent |
|---|---|---|
| `ShortcutBroadcastReceiver` | ✅ | `com.winlator.cmod.SHORTCUT_ADDED` |
| `androidx.profileinstaller.ProfileInstallReceiver` | ✅ | ART profile management |

### Providers (3)

| Provider | Authority | Notes |
|---|---|---|
| `androidx.core.content.FileProvider` | `com.winlator.ref4ikk.tileprovider` | File sharing (APK install etc.) |
| `core.WinlatorFilesProvider` | `com.winlator.ref4ikk.core.WinlatorFilesProvider` | MANAGE_DOCUMENTS provider |
| `androidx.startup.InitializationProvider` | `com.winlator.ref4ikk.androidx-startup` | Emoji2, Lifecycle, OkHttp, ProfileInstaller |

### Permissions

```
INTERNET, ACCESS_NETWORK_STATE, ACCESS_WIFI_STATE, VIBRATE
WRITE_EXTERNAL_STORAGE, READ_EXTERNAL_STORAGE, MANAGE_EXTERNAL_STORAGE
MODIFY_AUDIO_SETTINGS, HIGH_SAMPLING_RATE_SENSORS
FOREGROUND_SERVICE, POST_NOTIFICATIONS, REQUEST_INSTALL_PACKAGES
WRITE_SECURE_SETTINGS, INSTALL_SHORTCUT
```

---

## 4. Native Libraries

### arm64-v8a (primary ABI)

| Library | Purpose |
|---|---|
| `libwinlator.so` | Main JNI bridge — Wine/X11 integration |
| `libfpslimiter.so` | **ref4ik custom FPS limiter** native lib |
| `libpulse.so` + `libpulseaudio.so` | PulseAudio sound server |
| `libpulsecommon-13.0.so` + `libpulsecore-13.0.so` | PulseAudio internals |
| `libsndfile.so` | Audio file I/O (WAV/FLAC/etc.) |
| `libltdl.so` | libtool dynamic loading (Wine DLL loader) |
| `libopenxr_loader.so` | OpenXR VR runtime (Meta Quest) |
| `libpatchelf.so` | PatchELF — ELF RPATH/interpreter patching (bionic linking) |
| `libconscrypt_jni.so` | Conscrypt TLS (OkHttp alt TLS stack) |
| `libc++_shared.so` | NDK C++ runtime |
| `libandroidx.graphics.path.so` | AndroidX graphics path |
| `libzstd-jni-1.5.2-3.so` | Zstandard (.tzst/.zst) decompression |

> **Bionic note:** `libpatchelf.so` is the key bionic differentiator — allows re-linking Wine/Box64 ELF binaries against Android's bionic libc at runtime, bypassing the need for proot/chroot.

### Other ABI directories (cross-compile artifacts)

`aarch64-MacOSX-clang`, `aarch64-Windows10-clang`, `amd64-Windows10-clang`, `ppc64-AIX-clang`, `ppc64-OS400-clang` — these are BouncyCastle multi-platform JNI stubs bundled by the BC library; unused at runtime on Android.

---

## 5. Bundled Assets

### Root-level assets

| Asset | Size/Type | Purpose |
|---|---|---|
| `imagefs.txz` | large .txz | Linux root filesystem (Wine guest userspace) |
| `container_pattern_common.tzst` | .tzst | Base Wine container skeleton |
| `proton-9.0-x86_64.txz` | large .txz | Proton 9.0 x86_64 Wine binaries |
| `proton-9.0-arm64ec.txz` | large .txz | Proton 9.0 arm64ec Wine binaries |
| `proton-9.0-x86_64_container_pattern.tzst` | .tzst | Container pattern for x86_64 Proton |
| `proton-9.0-arm64ec_container_pattern.tzst` | .tzst | Container pattern for arm64ec Proton |
| `pulseaudio.tzst` | .tzst | PulseAudio daemon binaries |
| `input_dlls.tzst` | .tzst | Windows input DLLs |
| `experimental-drm.tzst` | .tzst | Experimental DRM/KMS support |
| `contents.json` | JSON | Remote component manifest (68 entries — see §5.1) |
| `gpu_cards.json` | JSON | GPU device/vendor database (NVIDIA/AMD/Intel) |
| `common_dlls.json` | JSON | Common DLL list |
| `box64_env_vars.json` | JSON | Box64 environment variables |
| `fexcore_env_vars.json` | JSON | FEXCore environment variables |
| `wine_debug_channels.json` | JSON | Wine debug channel list |
| `wine_startmenu.json` | JSON | Wine Start Menu template |
| `default_music.mp3` | MP3 | Background music |
| `PublicSuffixDatabase.list` | text | OkHttp public suffix DB |
| `system.reg.LOG1/LOG2` | registry | Windows registry log stubs |

### Sub-folders

```
assets/
├── box86_64/          Box86 + Box64 binaries and presets
├── fexcore/           FEXCore ARM64→x86 JIT engine files
├── wowbox64/          WoW64 + Box64 integration
├── ddrawrapper/       DDraw-to-OpenGL wrapper
├── dxwrapper/         DirectX wrapper (multiple DX versions)
├── graphics_driver/   Vulkan GPU drivers:
│   ├── adrenotools-v762.tzst    Turnip Vulkan driver (Adreno 762)
│   ├── adrenotools-v805.tzst    Turnip Vulkan driver (Adreno 805)
│   ├── wrapper.tzst             Default system wrapper
│   ├── wrapper-v2..v6.tzst      Versioned wrappers
│   └── extra_libs.tzst          Extra GPU libs
├── wincomponents/     Windows compatibility DLLs:
│   ├── ddraw.tzst, direct3d.tzst, directmusic.tzst
│   ├── directplay.tzst, directshow.tzst, directsound.tzst
│   ├── opengl.tzst, vcrun2010.tzst, xaudio.tzst
│   └── wincomponents.json       Component metadata
├── inputcontrols/     Gamepad/touch input profiles
├── soundfonts/        MIDI soundfont files
└── dexopt/            ART baseline profile (baseline.prof/.profm)
```

### 5.1 Remote Component Catalog (contents.json — 68 entries)

Components downloadable from community repos:

| Type | Versions available | Source repo |
|---|---|---|
| **Wine** | 9.16 custom, Proton-10-arm64ec | K11MCH1/Winlator101, de0ver/Components-for-Wine |
| **Box64** | 0.3.7-34e7894 | ziad9267/Winlator-Contents |
| **FEXCore** | 241214, 2508.1, 2508-83e4496, 2507, 2506 | ziad9267/Winlator-Contents |
| **VKD3D** | 2.14.1-proton, 2.14.1-arm64ec | ziad9267/Winlator-Contents |
| **DXVK** | 0.96 → 2.7 (50+ versions incl. gplasync, HDR, async) | REF4IK/Components- + slaker222, ziad9267 |

> DXVK versions hosted on `REF4IK/Components-` GitHub repo — ref4ik's own component mirror.

---

## 6. Steam Integration (Pluvia Layer)

This build integrates the **Pluvia** Steam client layer on top of Winlator.

### Core Steam Classes

| Class | Role |
|---|---|
| `SteamClientManager` | JavaSteam connection lifecycle; login state |
| `SteamService` | Kotlin singleton; all Steam operations (download, cloud sync, achievements) |
| `SteamAutoCloud` | Upload/download Steam Cloud save files |
| `SteamGameLauncher` | Launch Steam games through Wine via shortcuts |
| `SteamUnifiedFriends` | Friends/social unified messaging |
| `SteamLibraryActivity` | Jetpack Compose library grid/list UI |
| `SteamLoginActivity` | QR code + credential login forms (Compose) |
| `SteamShortcutSettingsActivity` | Per-game Wine configuration overlay |
| `SteamShortcutHelper` | Shortcut creation helpers |

### Steam Data Models

```
steam/data/
├── AppInfo.java            Steam app metadata
├── DepotInfo.java          Depot definition (with serializer)
├── DownloadInfo.java       Active download state
├── DownloadingAppInfo.java  Download progress tracking
├── LaunchInfo.java         Game launch configuration
├── LibraryAssetsInfo.java  Library artwork metadata
├── BranchInfo.java         Steam branch info
├── ConfigInfo.java         Per-app config
├── EncryptedAppTicket.java  DRM ticket
├── FileChangeLists.java    Delta update file lists
├── GameProcessInfo.java    Running game process info
└── CachedLicense.java      License cache
```

### SteamService Key Operations

- `startLoginWithCredentials()` / `startLoginWithQr()`
- `getOwnedGames()` / `refreshOwnedGamesFromServer()`
- `downloadApp()` — depot-based download with parallel chunk fetching
- `syncUserFiles()` / `forceSyncUserFiles()` — Steam Cloud
- `generateAchievements()` / `syncAchievementsFromGoldberg()`
- `kickPlayingSession()`, `notifyRunningProcesses()`
- `repairInstalledMetadataFromDisk()` — called on every app start

### Steam Network Stack

- **JavaSteam** (543 classes) — full Steam CM protocol over TCP/WebSocket
- **Protobuf** schemas bundled: auth, app info, content manifest, client metrics, friends, cloud, workshop, etc.
- **BouncyCastle** — replaces AndroidOpenSSL for Steam auth crypto (RSA, ECDH)

---

## 7. Wine Runtime Engine (XEnvironment)

### Architecture

```
XServerDisplayActivity
  └── XEnvironment
        ├── ImageFs              Linux rootfs manager (imagefs.txz extraction + path resolution)
        ├── ALSAServerComponent  ALSA audio bridge (Unix socket)
        ├── PulseAudioComponent  PulseAudio daemon startup
        ├── SysVSharedMemoryComponent  POSIX SHM (enabled when WINEESYNC=1)
        ├── BionicProgramLauncherComponent  ← BIONIC MODE (no proot)
        │     ├── Box64 extraction + version management
        │     ├── FEXCore extraction + version management
        │     ├── EnvVars construction
        │     └── ProcessHelper.exec() → Wine binary
        ├── VirGLRendererComponent  VirGL GPU renderer bridge
        └── XServerComponent     Pure-Java X11 server (see §8)
```

### BionicProgramLauncherComponent — Key Bionic Facts

- `isProotLaunch()` returns **`false`** — no proot/chroot used
- Uses `libpatchelf.so` to relink Wine/Box64 ELFs against Android's bionic libc
- Can use **arm64ec** Wine (Proton arm64ec) for native ARM64 Windows emulation path
- Box64 version selected per-container (falls back to container default)
- FEXCore version also per-container
- `envVars` injected at launch: Box64 env vars + FEXCore env vars + container env vars

### Default Container Configuration

```java
Wine type:        proton-9.0-x86_64  (default; arm64ec also available)
Emulator:         FEXCore            (x86→ARM64 JIT)
Default DXVK:     1.10.1
Default DDraw:    wined3d
Graphics driver:  wrapper (System Vulkan)
Screen size:      1280x720
WoW64 mode:       true

Default env vars:
  ZINK_DESCRIPTORS=lazy
  ZINK_DEBUG=compact
  MESA_SHADER_CACHE_DISABLE=false
  MESA_SHADER_CACHE_MAX_SIZE=512MB
  mesa_glthread=true
  WINEESYNC=1
  TU_DEBUG=noconform,sysmem
  DXVK_HUD=devinfo,fps,frametimes,gpuload,version,api

Default wincomponents:
  direct3d=1, directsound=0, directmusic=0, directshow=0
  directplay=0, xaudio=0, vcrun2010=1, opengl=0
```

### ImageFs Path Layout (inside rootfs)

Managed by `ImageFs.java` — standard Linux FHS inside the `.txz` image, with Wine prefix at a configurable path inside the container's drive layout.

---

## 8. X11 Server (Pure Java)

The app includes a complete X11 server implemented in Java (`xserver/` package, ~80 classes). No system Xorg needed.

### Subsystems

| Package | Contents |
|---|---|
| `xserver/` | Core: XServer, XClient, XResource, XLock, XResourceManager, IDGenerator |
| `xserver/` | Windows: Window, WindowManager, WindowAttributes, DrawableManager |
| `xserver/` | Input: Keyboard, Pointer, InputDeviceManager, GrabManager, CursorManager |
| `xserver/` | Graphics: GraphicsContext, GraphicsContextManager, Pixmap, PixmapManager |
| `xserver/` | Atoms: Atom, SelectionManager, Property |
| `xserver/extensions/` | BigReq, DRI3, MITSHM, Present, Sync |
| `xserver/requests/` | All standard X11 request handlers (Atom, Cursor, Draw, Extension, Font, Grab, GC, Keyboard, Pixmap, Selection, Window) |
| `xserver/events/` | All X11 event types (ButtonPress/Release, KeyPress/Release, Configure, Expose, Motion, Map/Unmap, PropertyNotify, PresentComplete/Idle, etc.) |
| `xserver/errors/` | Full X11 error set (BadWindow, BadDrawable, BadAccess, etc.) |

Transport: Unix domain socket via `XConnectorEpoll` + `XClientConnectionHandler`.

---

## 9. ref4ik-Specific Modifications

These are the key additions/changes that distinguish this mod from upstream Winlator:

| Feature | Implementation |
|---|---|
| **Bionic linking** (no proot) | `BionicProgramLauncherComponent` + `libpatchelf.so` |
| **Custom FPS limiter** | `libfpslimiter.so` native lib + `FpsCounterDialog`/`FpsCounterConfig` (MangoHud `fps_limit` config) |
| **arm64ec Wine support** | `WineInfo` supports `arm64ec` arch; `proton-9.0-arm64ec.txz` bundled |
| **Extended DXVK catalog** | 50+ DXVK versions in `contents.json` from `REF4IK/Components-` repo |
| **Custom component hosting** | `contents.json` points to REF4IK + ziad9267 + K11MCH1 + de0ver component repos |
| **Self-update** | `UpdateManager` → `github.com/REF4IK/update-url-mod-` repo |
| **Steam integration** | Full Pluvia Steam layer (login, download, cloud saves, achievements) |
| **WoW64 mode default on** | `wow64Mode = true` default in `Container` |
| **DXVK HDR builds** | `dxvk_v2.4.1-HDR-v0.3.0.wcp` + `v2.5.1-HDR-v0.3.0.wcp` in catalog |
| **FEXCore 2507/2508 default** | `DefaultVersion.FEXCORE = "2507"` |
| **VR/XR support** | `XrActivity` + `libopenxr_loader.so` for Meta Quest |
| **MangoHud HUD** | GPU/CPU/RAM stats via MangoHud config file written at launch |

---

## 10. Third-Party Library Summary

| Library | Version/Classes | Role |
|---|---|---|
| **JavaSteam** (`in.dragonbra.javasteam`) | 543 classes | Full Steam CM protocol |
| **Ktor** (`io.ktor`) | 934 classes | HTTP client for Steam API |
| **Coil** | 177 classes | Async image loading (library art) |
| **OkHttp3** + **Okio** | — | HTTP + I/O foundation |
| **Retrofit2** | — | REST (UpdateManager, SteamGridDB) |
| **Room** (SQLite ORM) | — | App + Steam database |
| **Jetpack Compose + Material3** | — | Steam UI, shortcut settings |
| **BouncyCastle** | — | Crypto (Steam RSA/ECDH auth) |
| **Conscrypt** | — | Alt TLS stack |
| **Kotlin Coroutines** | — | Async throughout |
| **Timber** | — | Logging |
| **Google Protobuf** | — | Steam protocol serialization |
| **Kotlin Serialization** | — | JSON models |
| **cn.sherlock SF2** | — | SF2 soundbank (MIDI) |

---

## 11. Update System

```java
UpdateManager:
  REPO_OWNER = "REF4IK"
  REPO_NAME  = "update-url-mod-"
  API        = https://api.github.com/repos/REF4IK/update-url-mod-/releases/latest

Prefs:
  receive_beta_updates  (boolean) — include pre-releases in update check
  skipped_version       (string)  — version tag to skip

Install flow:
  GitHub API → GitHubRelease → download APK → FileProvider → REQUEST_INSTALL_PACKAGES
```

---

## 12. Data Storage Layout

| Store | Contents |
|---|---|
| `filesDir/` | Wine container data, tmp/ work dir |
| `externalFilesDir/` | Container roots, save files |
| `SharedPreferences` (default) | Container settings, FPS counter config, update prefs |
| Room DB (`PluviaDatabase`) | Steam library, installed apps, download state, achievements |
| `MMKV` (if present) | Not detected in this build |

---

## 13. Key Code Locations for Modding

| Goal | File | Notes |
|---|---|---|
| Change default Wine version | `core/DefaultVersion.java` | `DXVK`, `VKD3D`, `BOX64`, `FEXCORE` |
| Change default container config | `container/Container.java` | `DEFAULT_*` constants |
| Add/edit component sources | `assets/contents.json` | JSON array of WCP download entries |
| Modify launch env vars | `xenvironment/components/BionicProgramLauncherComponent.java` | `envVars` construction |
| FPS limiter behavior | `widget/FpsCounterConfig.java` + `libfpslimiter.so` | FPS limit slider |
| Update check endpoint | `update/UpdateManager.java` | `REPO_OWNER`, `REPO_NAME` |
| Steam service operations | `steam/service/SteamService.java` | Large Kotlin singleton |
| X11 server extensions | `xserver/extensions/` | DRI3, Present, MITSHM, Sync, BigReq |
| Wine registry edits | `core/WineRegistryEditor.java` | Programmatic registry writes |

---

## 14. DEX Structure

| DEX | Approx. contents |
|---|---|
| `classes.dex` | (primary) — main app + some core |
| `classes2`–`classes8` | App subpackages |
| `classes9` | `PluviaApp`, Steam-adjacent Kotlin |
| `classes10`–`classes13` | xenvironment, core utilities |
| `classes14` | Update system, content dialogs |
| `classes15` | Container system, FPS counter |
| `classes16`–`classes22` | Third-party: JavaSteam, Ktor, Kotlin stdlib, Compose, Room, etc. |

Total: 22 DEX files (smali_classes2 through smali_classes22 + primary smali/).

---

*End of report — all source at `~/winlator_analysis/`*
