# Winlator Bionic ref4ik — Complete Deep Map
**APK:** `Winlator bionic ref4ik mod test.apk`
**Scan date:** 2026-04-10 | **Method:** 4-pass parallel JADX + apktool analysis
**Source files:** 745 Java/Kotlin classes | **DEX count:** 22 | **Native libs:** 14

---

## TABLE OF CONTENTS
1. [APK Identity & Build Info](#1-apk-identity--build-info)
2. [Application Entry Points](#2-application-entry-points)
3. [Core Utilities Package](#3-core-utilities-package)
4. [Container System](#4-container-system)
5. [Content & Component System](#5-content--component-system)
6. [Renderer & Effects Pipeline](#6-renderer--effects-pipeline)
7. [Input & Controls System](#7-input--controls-system)
8. [Audio System (ALSA + PulseAudio)](#8-audio-system-alsa--pulseaudio)
9. [X11 Server Implementation](#9-x11-server-implementation)
10. [XConnector Layer (Unix Socket)](#10-xconnector-layer-unix-socket)
11. [XEnvironment & Engine Components](#11-xenvironment--engine-components)
12. [Steam Integration Layer (Pluvia)](#12-steam-integration-layer-pluvia)
13. [Big Picture Mode](#13-big-picture-mode)
14. [Box86/Box64 & FEXCore System](#14-box86box64--fexcore-system)
15. [Update System](#15-update-system)
16. [Database Layer (Room)](#16-database-layer-room)
17. [Native Libraries (JNI)](#17-native-libraries-jni)
18. [Bundled Assets Catalog](#18-bundled-assets-catalog)
19. [Android Resources](#19-android-resources)
20. [DEX Structure & Third-Party Libraries](#20-dex-structure--third-party-libraries)
21. [All Socket Paths & File Paths](#21-all-socket-paths--file-paths)
22. [All Network Endpoints & API Keys](#22-all-network-endpoints--api-keys)
23. [Environment Variables Reference](#23-environment-variables-reference)
24. [JNI Symbol Index](#24-jni-symbol-index)
25. [Settings, Shortcuts & UI Fragment Detail](#25-settings-shortcuts--ui-fragment-detail-r3-a)
26. [WinHandler Protocol, XServerDisplayActivity & Steam Paths](#26-winhandler-protocol-xserverdisplayactivity--steam-paths-r3-b)
27. [Launchers, Renderer, Containers & PulseAudio](#27-launchers-renderer-containers--pulseaudio-r3-c)
28. [Database Schema, DriverResolver, MIDI & X11 Atoms](#28-database-schema-driverresolver-midi--x11-atoms-r3-d)
29. [Registry, Theme, Restore & Workarounds](#29-registry-theme-restore--workarounds-r4-a)
30. [FileManager, Terminal, Controls, BigPicture & NetworkMonitor](#30-filemanager-terminal-controls-bigpicture--networkmonitor-r4-c)
31. [Steam Service Internals, Cloud Sync, Workshop & Game Launcher](#31-steam-service-internals-cloud-sync-workshop--game-launcher-r4-b)
32. [Assets, GamePad, Controller Bindings & WinComponents](#32-assets-gamepad-controller-bindings--wincomponents-r5-c)
33. [DownloadService, FpsCounter, EnvVarsView, ImageFs & MangoHud](#33-downloadservice-fpscounter-envvarsview-imagefs--mangohud-r5-b)
34. [Steam Library, Login, Shortcut Settings, SteamApp & EventDispatcher](#34-steam-library-login-shortcut-settings-steamapp--eventdispatcher-r5-a)
35. [SteamLibraryViewModel, DepotInfo, BranchInfo, ConfigInfo, UFS, UI Data Classes](#35-steamlibraryviewmodel-depotinfo-branchinfo-configinfo-ufs-ui-data-classes-r6-b)
36. [Assets Catalog, Env Var JSONs, XEnvironment Components & WineUtils](#36-assets-catalog-env-var-jsons-xenvironment-components--wineutils-r6-c)
37. [Steam FileUtils, TarCompressorUtils, ProcessHelper & VDF Parser Cross-Reference](#37-steam-fileutils-tarcompressorutils-processhelper--vdf-parser-cross-reference-r6-a)
38. [SaveFilePattern, LibraryAssets, SteamGameActions, NetworkMonitor, SteamLoginViewModel](#38-savefilepattern-libraryassets-steamgameactions-networkmonitor-steamloginviewmodel-r7-b)
39. [ContentProfile, ContentsManager, Box64PresetManager, HDR System, AdrenotoolsManager, Container](#39-contentprofile-contentsmanager-box64presetmanager-hdr-system-adrenotoolsmanager-container-r7-c)
40. [VDFParser (text+binary), TarCompressorUtils, ProcessHelper, MSLink, MSBitmap, AppUtils, FileUtils, WineInfo, KeyValueSet, MSLogFont](#40-vdfparser-textbinary-tarcompressorutils-processhelper-mslink-msbitmap-apputils-fileutils-wineinfo-keyvalueset-mslogfont-r7-a)
41. [MainActivity, SettingsFragment, ContainerDetailFragment, ContainersFragment, FileManagerActivity](#41-mainactivity-settingsfragment-containerdetailfragment-containersfragment-filemanageractivity-r8-c)
42. [SteamAutoCloud, WorkshopManager, DownloadInfo, SteamFriend, SteamLicense, PostSyncInfo, UserFileInfo](#42-steamautocloud-workshopmanager-downloadinfo-steamfriend-steamlicense-postsyncinfo-userfileinfo-r8-a)
43. [Core Utility Layer: StringUtils, StreamUtils, NetworkHelper, GPUInformation, WineRegistryEditor, WineUtils, DriverResolver, Win32AppWorkarounds](#43-core-utility-layer-stringutils-streamutils-networkhelper-gpuinformation-wineregistryeditor-wineutils-driverresolver-win32appworkarounds-et-al-r8-b)
44. [BigPictureActivity, TerminalActivity, XrActivity, Steam UI Data Classes, Widget Layer](#44-bigpictureactivity-terminalactivity-xractivity-steam-ui-data-classes-widget-layer-r9-c)
45. [SteamService, PluviaDatabase, SteamUtils, ContainerUtils, Steam Token/License Helpers](#45-steamservice-pluviadatabase-steamutils-containerutils-steam-tokenlicense-helpers-r9-a)
46. [X Server Protocol, InputControls, WinHandler UDP Bridge, Math Utilities](#46-x-server-protocol-inputcontrols-winhandler-udp-bridge-math-utilities-r9-b)

---

## 1. APK Identity & Build Info

| Field | Value |
|---|---|
| Package name | `com.winlator.ref4ikk` |
| App label | `bionic ref4ik test version` |
| Version code | 20 |
| Version name (manifest) | `test` |
| VERSION_NAME (BuildConfig) | `7.1.4x-cmod` |
| APPLICATION_ID (BuildConfig) | `com.winlator.cmod` |
| BUILD_TYPE | `debug` |
| Min SDK | 26 (Android 8.0) |
| Target SDK | 28 (Android 9) |
| Compile SDK | 34 (Android 14) |
| Debuggable | `true` |
| Extract native libs | `true` |
| App category | `game` |
| Application class | `com.winlator.cmod.PluviaApp` |
| Theme | `AppTheme` |
| Base fork | Winlator (brunodev85) → cmod fork (coffincolors) → Bionic fork (Pipetto-crypto) → ref4ik |

---

## 2. Application Entry Points

### PluviaApp (Application class)
- Removes AndroidOpenSSL provider; installs **BouncyCastleProvider** (Steam auth crypto)
- Inits: `PrefManager`, `DownloadService`, `NetworkMonitor`, `PluviaDatabase`
- Launches `SteamService.repairInstalledMetadataFromDisk()` on IO coroutine at startup
- Tracks foreground Activity via lifecycle callbacks (`currentForegroundActivity`)
- Global `EventDispatcher events` static singleton

### Activities

| Activity | Package | Process | Export | Key Role |
|---|---|---|---|---|
| `MainActivity` | cmod | main | ✅ LAUNCHER | Nav drawer, fragment host, container list |
| `XServerDisplayActivity` | cmod | main | ✅ | Wine session display; singleTask; PiP |
| `XrActivity` | cmod | :vr_process | ✅ | VR/Oculus; Oculus VR category |
| `BigPictureActivity` | cmod | main | ❌ | Steam Big Picture UI |
| `TerminalActivity` | cmod | main | ❌ | Linux shell terminal |
| `GamePadTestActivity` | cmod | main | ❌ | Gamepad diagnostics |
| `ControlsEditorActivity` | cmod | main | ❌ | Touch overlay editor |
| `ExternalControllerBindingsActivity` | cmod | main | ❌ | Physical controller mappings |
| `FileManagerActivity` | cmod | main | ❌ | In-app file browser |
| `saves.CustomFilePickerActivity` | cmod | main | ❌ | Save file picker |
| `steam.SteamLibraryActivity` | cmod | main | ❌ | Steam library grid (Compose) |
| `steam.SteamLoginActivity` | cmod | main | ❌ | Steam login (Compose) |
| `steam.SteamShortcutSettingsActivity` | cmod | main | ❌ | Per-game Wine config |
| `restore.RestoreActivity` | cmod | :restore_process | ✅ | Container backup/restore |

### MainActivity details
- Request codes: `PERMISSION_WRITE_EXTERNAL_STORAGE(1)`, `OPEN_FILE(2)`, `EDIT_INPUT_CONTROLS(3)`, `OPEN_DIRECTORY(4)`
- Fragment transitions: slide_horizontal, slide_vertical, fade, zoom, none (user-configurable)
- Supports dark mode, language selection
- Calls `checkForUpdatesOnStartup()` on launch

### XServerDisplayActivity details
- Audio drivers handled: `alsa`, `alsa-reflector`, `pulseaudio`
- Graphics systems: DXVK config, VKD3D config, wrapper config
- Screen effects: `CRTEffect`, `ColorEffect`, `FXAAEffect`, `NTSCCombinedEffect`, `ToonEffect`
- Wine registry/shortcut/clipboard management
- Keyboard, gamepad, mouse, sensor input handling
- WINEESYNC auto-enabled if not set by container
- Sets `MESA_VK_WSI_DEBUG=forcesync` when ESYNC enabled

### XrActivity (extends XServerDisplayActivity)
- VR controller axes (23 types): L/R PITCH, YAW, ROLL, THUMBSTICK, X/Y/Z, HMD variants, IPD
- VR controller buttons (19 types): GRIP, MENU, THUMBSTICK variants, TRIGGER, A/B/X/Y
- Smooth mouse tracking mode for VR pointer

### Services

| Service | Process | Type | Role |
|---|---|---|---|
| `WinlatorForegroundService` | main | dataSync | Persistent notification (CHANNEL_ID: "winlator_running", NOTIFICATION_ID: 1001) |
| `steam.service.SteamService` | main | dataSync | Steam download/auth/library |
| `androidx.room.MultiInstanceInvalidationService` | shared | — | Room DB multi-process |

### Receivers / Providers

| Component | Type | Key |
|---|---|---|
| `ShortcutBroadcastReceiver` | Receiver | `com.winlator.cmod.SHORTCUT_ADDED` |
| `ProfileInstallReceiver` | Receiver | ART profile (INSTALL, SKIP, SAVE, BENCHMARK) |
| `FileProvider` | Provider | `com.winlator.ref4ikk.tileprovider` |
| `WinlatorFilesProvider` | Provider | `com.winlator.ref4ikk.core.WinlatorFilesProvider` (DOCUMENTS_PROVIDER) |
| `InitializationProvider` | Provider | `androidx-startup` (Emoji2, Lifecycle, OkHttp, ProfileInstaller) |

---

## 3. Core Utilities Package

### ProcessHelper
- Signals: `SIGSTOP(19)`, `SIGCONT(18)`, `SIGTERM(15)`, `SIGKILL(9)`
- Methods: `suspendProcess()`, `resumeProcess()`, `terminateProcess()`, `killProcess()`
- `exec()` with envp and working directory variants
- Extracts PID via reflection on Process class

### WineRequestHandler
- Listens on **port 24816**
- Request codes: `OPEN_URL(1)`, `GET_WINE_CLIPBOARD(2)`, `SET_WINE_CLIPBOARD(3)`
- Clipboard encoding: UTF-16LE

### ElfHelper + PatchElf
- ELF binary inspection and RPATH/interpreter patching
- Used by bionic launcher to relink Wine/Box64 ELFs to Android bionic

### NetworkHelper / HttpUtils / DohOkHttp
- DNS-over-HTTPS fallback client
- Network connectivity checks

### WineInfo (Parcelable)
- `MAIN_WINE_VERSION = new WineInfo("proton", "9.0", "x86_64")`
- Arch types: `x86`, `x86_64`, `arm64ec`
- Pattern: `^(wine|proton)-([0-9\.]+)-?([0-9\.]+)?-(x86|x86_64|arm64ec)$`

### WineRegistryEditor / WineThemeManager / WineStartMenuCreator
- Programmatic Windows registry write support
- `DEFAULT_DESKTOP_THEME` constant
- Start menu entry generation from `wine_startmenu.json`

### DriverResolver
- GPU driver path resolution (System/wrapper/Turnip paths)

### GPUInformation (JNI-backed)
- `getMemorySize()`, `getRenderer()`, `getVersion()`, `enumerateExtensions()`
- `isAdrenoGPU()`, `isTurboModeActive()`, `setTurboMode()`

### GPUPerformanceManager
- GPU performance metrics collection

### HDR System (8 classes)
- `HDRConfiguration` — hdrMode, hdrColorSpace, hdrToneMapping, enable10Bit, enableWideColorGamut
- `HDRDisplayManager` — detects HDR display capabilities
- `HDREGLConfigChooser` — selects EGL config for 10-bit/HDR
- `HDRSurfaceConfiguration` — surface format setup
- `HDR10MetadataHandler` — HDMI metadata injection
- `HDRColorUtils` — color space conversion
- `HDRDisplayInfo` — display HDR capability data
- `HDREffect` — tone-mapping shader effect

### Win32 Helpers
- `MSLink` — parses Windows `.lnk` shortcut files
- `MSBitmap` — Windows BMP format
- `MSLogFont` — Windows LOGFONT structure

### DefaultVersion (constants)
```
BOX64    = "0.3.7"
BOX86    = "0.3.2"
D8VK     = "1.0"
DXVK     = "1.10.1"
FEXCORE  = "2507"
VKD3D    = "2.12-0"
WRAPPER  = "System"
```

### WinlatorFilesProvider
- MANAGE_DOCUMENTS content provider exposing container files to the system

### Other Core Classes
- `AppUtils` — Android app/intent utilities
- `FileUtils` — copy, delete, chmod, compress
- `ImageUtils` — image processing
- `StreamUtils` — stream I/O
- `CursorLocker` — mouse confinement to window
- `CubicBezierInterpolator` — animation easing
- `EnvVars` — env var constants
- `KeyValueSet` — configuration key-value store
- `UnitUtils` — byte/MB conversion
- `ArrayUtils`, `StringUtils` — collection/string helpers
- `TarCompressorUtils` — .tar.zst/.txz operations
- `OnExtractFileListener`, `Callback<T>` — generic callbacks
- `PreloaderDialog`, `DownloadProgressDialog` — loading UIs
- `EnvironmentManager` — static env var map for child processes
- `Win32AppWorkarounds` — application-specific compatibility patches

---

## 4. Container System

### Container.java — All Default Constants
```java
DEFAULT_AUDIO_DRIVER      = "alsa-reflector"
DEFAULT_DDRAWRAPPER       = "wined3d"
DEFAULT_DXWRAPPER         = "dxvk"
DEFAULT_DXWRAPPERCONFIG   = "version=1.10.1,framerate=0,maxDeviceMemory=0,async=0,asyncCache=0,vkd3dVersion=2.12-0,vkd3dLevel=12_1"
DEFAULT_EMULATOR          = "FEXCore"
DEFAULT_ENV_VARS          = "ZINK_DESCRIPTORS=lazy ZINK_DEBUG=compact MESA_SHADER_CACHE_DISABLE=false
                             MESA_SHADER_CACHE_MAX_SIZE=512MB mesa_glthread=true WINEESYNC=1
                             TU_DEBUG=noconform,sysmem DXVK_HUD=devinfo,fps,frametimes,gpuload,version,api"
DEFAULT_GRAPHICSDRIVERCONFIG = "version=System;blacklistedExtensions=;maxDeviceMemory=0;
                                adrenotoolsTurnip=1;frameSync=Normal;presentMode=mailbox;
                                resourceType=auto;blit=0;enableHDR=0;hdrMode=0;
                                hdrColorSpace=0;hdrToneMapping=0;enable10Bit=0;
                                enableWideColorGamut=0"
DEFAULT_GRAPHICS_DRIVER   = "wrapper"
DEFAULT_SCREEN_SIZE       = "1280x720"
DEFAULT_WINCOMPONENTS     = "direct3d=1,directsound=0,directmusic=0,directshow=0,directplay=0,xaudio=0,vcrun2010=1,opengl=0"
FALLBACK_WINCOMPONENTS    = "direct3d=1,directsound=1,directmusic=1,directshow=1,directplay=1,xaudio=1,vcrun2010=1,opengl=0"
DEFAULT_DRIVES            = "D:{DOWNLOADS}E:/data/data/com.winlator.cmod/storage"
```

### Container Fields
`id`, `name`, `rootDir`, `wineVersion`, `emulator`, `box64Version`, `box64Preset`, `fexcoreVersion`, `fexcorePreset`, `audioDriver`, `audioDriverConfig`, `graphicsDriver`, `graphicsDriverConfig`, `dxwrapper`, `ddrawrapper`, `dxwrapperConfig`, `wincomponents`, `screenSize`, `envVars`, `drives`, `cpuList`, `cpuListWoW64`, `primaryController`, `controllerMapping`, `inputType`, `rcfileId`, `lc_all`, `midiSoundFont`, `desktopTheme`, `extraData` (JSONObject), `fullscreenStretched`, `isRelativeMouseMovement`, `showFPS`, `startupSelection`, `wow64Mode`

### Container Startup Selection
- `STARTUP_SELECTION_NORMAL(0)` — default startup
- `STARTUP_SELECTION_ESSENTIAL(1)` — minimal services
- `STARTUP_SELECTION_AGGRESSIVE(2)` — all services

### Container XrControllerMapping enum (10 buttons)
`BUTTON_A`, `BUTTON_B`, `BUTTON_X`, `BUTTON_Y`, `BUTTON_GRIP`, `BUTTON_TRIGGER`, `THUMBSTICK_UP`, `THUMBSTICK_DOWN`, `THUMBSTICK_LEFT`, `THUMBSTICK_RIGHT`

### ContainerManager
- Container CRUD lifecycle management
- JSON persistence for container configs

### Shortcut.java
- Application shortcut within a container
- `getExtra(key, default)` for per-shortcut overrides of container settings

---

## 5. Content & Component System

### GitHubComponentManager
- `GITHUB_API_BASE`: `https://api.github.com/repos/`
- `REPO_OWNER`: `REF4IK`
- `REPO_NAME`: `Components-Adrenotools-`
- `RELEASE_TAG`: `111`
- Full URL: `https://api.github.com/repos/REF4IK/Components-Adrenotools-/releases/tags/111`
- Headers: `Accept: application/vnd.github.v3+json`
- Timeout: 10,000ms
- Parses JSON asset arrays for `name`, `download_url`, `size`

### ComponentInfo Fields
`id`, `fileName`, `displayName`, `description`, `sourceUrl`, `downloadUrl`, `fileSize`, `type`
- `detectType()` — infers component category from filename
- `getFormattedSize()` — human-readable file size

### ComponentDownloader / ComponentInstaller
- HTTP download → temp file → install to components directory
- Progress callbacks

### ComponentsDialog
- UI for browsing/installing GitHub-hosted components

### ContentsManager
- Manages installed content profiles (Wine, Box64, DXVK, etc.)
- `getProfileByEntryName(name)` — lookup by entry name string

### ContentProfile
- Profile data for an installed content package

### AdrenotoolsManager
- Manages Adreno GPU driver injection
- Interfaces with `adrenotools-v762.tzst` / `adrenotools-v805.tzst` assets

---

## 6. Renderer & Effects Pipeline

### GLRenderer (extends GLSurfaceView.Renderer)
- Implements `WindowManager.OnWindowModificationListener`, `Pointer.OnPointerMotionListener`
- Fields: `surfaceWidth/Height`, `quadVertices`, `windowMaterial`, `cursorMaterial`, `effectComposer`
- HDR: `hdrFramebuffer`, `hdr10MetadataHandler`, `hdrConfiguration`
- Methods: `onSurfaceCreated()`, `onSurfaceChanged()`, `onDrawFrame()`
- `GL_ERROR_CHECK_INTERVAL_MS = 2000`

### Materials (4 classes)
- `ShaderMaterial` — base GLSL shader
- `WindowMaterial` — renders X11 window texture to quad
- `ScreenMaterial` — renders backbuffer
- `CursorMaterial` — renders cursor sprite

### Effects (15 classes)
| Effect | Description |
|---|---|
| `CRTEffect` | CRT monitor phosphor/scanline simulation |
| `ColorEffect` | Saturation, brightness, contrast |
| `FXAAEffect` | Fast approximate anti-aliasing |
| `NTSCCombinedEffect` | NTSC color encoding simulation |
| `ToonEffect` | Cel-shading / cartoon look |
| `BlurEffect` | Gaussian blur |
| `HDREffect` | HDR tone mapping |
| `GrayscaleEffect` | Grayscale conversion |
| `SepiaEffect` | Sepia tone |
| `PixelateEffect` | Pixel-art downscale |
| `SharpenEffect` | Unsharp mask |
| `SmoothEffect` | Smoothing/AA |
| `VignetteEffect` | Edge darkening |
| `FrameGenerationEffect` | Frame interpolation |

### EffectComposer
- Chains multiple Effect instances for post-processing pipeline

### NativeRenderer
- JNI bridge to native rendering code in `libwinlator.so`

### RenderTarget / Texture / VertexAttribute / GPUImage / ViewTransformation
- Standard GL resource management classes

---

## 7. Input & Controls System

### ExternalController
- Button indices: `A, B, X, Y, L1, L2, L3, R1, R2, R3, SELECT, START`
- Trigger types: `BUTTON(0)`, `AXIS(1)`, `BOTH(2)`
- Deadzone/sensitivity per-axis
- Left/right stick inversion support

### InputControlsManager / ControlsProfile / ControlsElement / Binding / ExternalControllerBinding
- Full touch overlay input mapping system
- Profile save/load

### GamepadState
- Current button/axis state snapshot

### GyroSettings
- Gyro/accelerometer sensitivity and mapping

### CustomIconManager
- Custom PNG icons for touch overlay buttons (assets/inputcontrols/icons/ — 27 PNGs: 0.png–26.png)

### EnvVarsView (widget)
Known env vars with UI editor types:
- `ZINK_DESCRIPTORS` — SELECT (auto/lazy/cached/notemplates)
- `ZINK_DEBUG` — SELECT_MULTIPLE (nir/spirv/tgsi/validation/sync/compact/noreorder)
- `MESA_SHADER_CACHE_DISABLE` — CHECKBOX
- `mesa_glthread` — CHECKBOX
- `WINEESYNC` — CHECKBOX (0/1)
- `TU_DEBUG` — SELECT_MULTIPLE (startup/nir/nobin/sysmem/gmem/forcebin/layout/noubwc/nomultipos/nolrz/nolrzfc/perf/perfc/flushall/syncdraw/push_consts_per_stage/rast_order/unaligned_store/log_skip_gmem_ops/dynamic/bos/3d_load/fdm/noconform/rd)
- `DXVK_HUD` — SELECT_MULTIPLE (devinfo/fps/frametimes/submissions/drawcalls/pipelines/descriptors/memory/gpuload/version/api/cs/compiler/samplers)
- `MESA_EXTENSION_MAX_YEAR` — NUMBER
- `PULSE_LATENCY_MSEC` — NUMBER
- `MANGOHUD` — CHECKBOX

### FpsCounterConfig / FpsCounterDialog
- MangoHud-based overlay: fps, CPU/GPU stats, RAM, VRAM, renderer, battery temp/voltage, CPU temp
- FPS limit via `fps_limit=N` in MangoHud config file
- `libfpslimiter.so` — native custom FPS limiter (ref4ik addition)
- Settings: background opacity, counter scale, horizontal layout, frame-time graph

---

## 8. Audio System (ALSA + PulseAudio)

### ALSAClient (JNI-backed)
- Native methods: `create()`, `createVirtualStream()`, `start()`, `stop()`, `pause()`, `write()`, `writeVirtual()`, `flush()`, `close()`
- Data types: `U8`, `S16LE`, `S16BE`, `FLOATLE`, `FLOATBE`
- Fields: `channelCount`, `sampleRate`, `bufferSize`, `streamPtr`, `mirrorStreamPtr`
- ALSA-Reflector mode: dual stream (pacer + mirror) for low-latency
- `computeLatencyMillis()` — real-time latency measurement
- Default: `latencyMillis=20`, `performanceMode=1`, `volume=1.0`

### ALSARequestHandler
Request codes over Unix socket:
- `RELEASE(0)`, `START(1)`, `STOP(2)`, `PAUSE(3)`, `CONFIG(4)`, `WRITE(5)`, `DRAIN(6)`, `POINTER(7)`
- Uses `SysVSharedMemory` for buffer passing

### ALSAServerComponent
- Socket path: `/usr/tmp/.sound/AS0`
- Creates `XConnectorEpoll` with `ALSAClientConnectionHandler`
- Multithreaded mode enabled

### PulseAudioComponent
- Socket path: `/usr/tmp/.sound/PS0`
- Executes PulseAudio daemon with:
  - `module-native-protocol-unix` (auth-anonymous=1)
  - `module-aaudio-sink`
- Env: `LD_LIBRARY_PATH`, `HOME`, `TMPDIR`

### MidiManager
- `DEFAULT_SF2_FILE = "wt_210k_G.sf2"`
- `SF2_ASSETS_DIR = "soundfonts"`
- Error codes: `ERROR_UNKNOWN(0)`, `ERROR_EXIST(1)`, `ERROR_BADFORMAT(2)`
- Methods: `load()`, `loadSFSpinner()`, `installSF2File()`

---

## 9. X11 Server Implementation

### XServer (Main server)
- `VENDOR_NAME = "Elbrus Technologies, LLC"`
- `VERSION = 11`
- Managers: `cursorManager`, `drawableManager`, `grabManager`, `inputDeviceManager`, `pixmapManager`, `windowManager`, `selectionManager`, `graphicsContextManager`, `shmSegmentManager`
- Extensions: BigReq, MITSHM, DRI3, Present, Sync (SparseArray indexed by opcode)
- Lockable enum: `WINDOW_MANAGER`, `PIXMAP_MANAGER`, `DRAWABLE_MANAGER`, `GRAPHIC_CONTEXT_MANAGER`, `INPUT_DEVICE`, `CURSOR_MANAGER`, `SHMSEGMENT_MANAGER`
- Input injection: `injectPointerMove()`, `injectPointerMoveDelta()`, `injectPointerButtonPress/Release()`, `injectKeyPress/Release()`

### Atom Registry
70+ standard X11 atoms pre-loaded (PRIMARY through WM_TRANSIENT_FOR)

### ClientOpcodes (127 opcodes)
All standard X11 opcodes implemented:
`CREATE_WINDOW(1)` through `NO_OPERATION(127)` — full X11 protocol

### X11 Event Types (30+ events)
`KeyPress(8)`, `KeyRelease(9)`, `ButtonPress(4)`, `ButtonRelease(5)`, `MotionNotify(6)`, `EnterNotify(7)`, `LeaveNotify(8)`, `Expose(12)`, `CreateNotify(16)`, `DestroyNotify(17)`, `UnmapNotify(18)`, `MapNotify(19)`, `MapRequest(20)`, `ConfigureNotify(22)`, `ConfigureRequest(23)`, `PropertyNotify(28)`, `SelectionClear(29)`, `SelectionNotify(31)`, plus `PresentCompleteNotify`, `PresentIdleNotify`, `InputDeviceEvent`, `RawEvent`, `PointerWindowEvent`

### X11 Error Types (17+ errors)
`BadRequest(1)`, `BadValue(2)`, `BadWindow(3)`, `BadPixmap(4)`, `BadAtom(5)`, `BadCursor(6)`, `BadFont(7)`, `BadMatch(8)`, `BadDrawable(9)`, `BadAccess(10)`, `BadAlloc(11)`, `BadColor(12)`, `BadGC(13)`, `BadIDChoice(14)`, `BadName(15)`, `BadLength(16)`, `BadImplementation(17)`, `BadSHMSegment(130)`

### Extensions Detail

**DRI3Extension** (major opcode -102)
- `QUERY_VERSION(0)`, `OPEN(1)`, `PIXMAP_FROM_BUFFER(2)`, `PIXMAP_FROM_BUFFERS(7)`
- PIXMAP_FROM_BUFFER: creates pixmap from dmabuf FD
- PIXMAP_FROM_BUFFERS: handles `AHardwareBuffer (modifier=1255)` and `dmabuf (modifier=1274)`
- FD passing via ancillary socket messages

**BigReqExtension** — enables 32-bit request lengths

**MITSHMExtension** — shared memory pixmap transfers

**PresentExtension** — compositing buffer swap notifications

**SyncExtension** — synchronization fences/alarms

### Keyboard
- `KEYSYMS_PER_KEYCODE=2`, `MIN_KEYCODE=8`, `MAX_KEYCODE=255`, `KEYS_COUNT=248`
- 512-entry keysym table
- Android KeyEvent mapping: 66 keys (ESC, ENTER, arrows, modifiers, a–z, 0–9, F1–F12, keypad)
- Sticky key support: CapsLock, NumLock toggle behavior

### Pointer (Mouse)
- Buttons: `BUTTON_LEFT`, `BUTTON_MIDDLE`, `BUTTON_RIGHT`, `BUTTON_SCROLL_UP/DOWN`, `BUTTON_SCROLL_CLICK_LEFT/RIGHT`
- Bitmask button state, clamped position

### Drawable (JNI-backed)
- `ByteBuffer` in little-endian ARGB8888 format
- Native ops: `copyArea`, `copyAreaOp` (GC function), `drawBitmap`, `drawLine`, `fillRect`, `drawAlphaMaskedBitmap`, `fromBitmap`

### Window Properties (X11 atoms stored per-window)
`WM_NAME`, `WM_CLASS`, `WM_HINTS`, `_NET_WM_PID`, `_NET_WM_WOW64`, `_NET_WM_HWND`, and standard ICCCM/EWMH atoms

---

## 10. XConnector Layer (Unix Socket)

### UnixSocketConfig — Socket Paths
```
XSERVER_PATH   = "/usr/tmp/.X11-unix/X0"
ALSA_PATH      = "/usr/tmp/.sound/AS0"
PULSE_PATH     = "/usr/tmp/.sound/PS0"
SYSVSHM_PATH   = "/usr/tmp/.sysvshm/SM0"
VIRGL_PATH     = "/tmp/.virgl/V0"
```

### XConnectorEpoll (JNI-backed)
- Native methods: `createAFUnixSocket(path)`, `createEpollFd()`, `createEventFd()`, `addFdToEpoll(fd)`, `removeFdFromEpoll(fd)`, `doEpollIndefinitely()`, `waitForSocketRead()`, `closeFd()`
- Buffer defaults: `initialInputBufferCapacity=4096`, `initialOutputBufferCapacity=4096`
- X11 instance uses: `initialInputBufferCapacity=262144`, `canReceiveAncillaryMessages=true`
- Threading: single epoll thread OR per-client threads (`multithreadedClients` flag)
- Ancillary message (FD passing) support for DRI3

### ClientSocket (JNI-backed)
- Native: `read(fd, data, offset, length)`, `write(fd, data, length)`, `recvAncillaryMsg()`, `sendAncillaryMsg()`
- Ancillary FD queue: `ArrayDeque<Integer>` for received file descriptors

### XInputStream / XOutputStream
- Buffered I/O with little/big endian support
- `writeSuccessReply(sequenceNumber, replyLength)` helper
- Auto-expanding output buffer

---

## 11. XEnvironment & Engine Components

### XEnvironment
- Component container; `startEnvironmentComponents()` / `stopEnvironmentComponents()`
- `getComponent(Class<T>)` — typed component lookup
- `ImageFs` reference for container FS paths
- `isWinetricksRunning()` / `setWinetricksRunning()` flag

### ImageFs
```
HOME_PATH   = "/home/xuser"
CACHE_PATH  = "/home/xuser/.cache"
CONFIG_PATH = "/home/xuser/.config"
WINEPREFIX  = "/home/xuser/.wine"
USER        = "xuser"
```
- `LATEST_VERSION = 21`
- Tracks version via `.img_version` file
- Paths: `getRootDir()`, `getWinePath()`, `getConfigDir()`, `getLibDir()`, `getBinDir()`, `getShareDir()`, `getEtcDir()`

### GuestProgramLauncherComponent (PRoot mode)
Launch command pattern:
```
libproot.so --kill-on-exit --rootfs=<rootPath> --cwd=/home/xuser
  --bind=/dev --bind=/proc --bind=/sys [extra --bind=...]
  /usr/bin/env <envVars> box64 <executable>
```
Environment:
- `HOME=/home/xuser`, `USER=xuser`, `TMPDIR=/tmp`, `LC_ALL=en_US.utf8`, `DISPLAY=:0`
- `PATH` includes wine bin directory
- `LD_LIBRARY_PATH=/usr/lib/aarch64-linux-gnu:/usr/lib/arm-linux-gnueabihf`
- `LD_PRELOAD=libandroid-sysvshm.so` (if exists)
- `ANDROID_SYSVSHM_SERVER=/usr/tmp/.sysvshm/SM0`
- MangoHud config written: `fps_limit=N` in config file
- `PROOT_TMP_DIR`, `PROOT_LOADER`, `PROOT_LOADER_32`

### BionicProgramLauncherComponent (Bionic mode — no PRoot)
- `isProotLaunch() = false`
- Relinks ELFs against Android bionic via `PatchElf`
- Arm64EC emulator DLLs: `wowbox64.dll` or `libwow64fex.dll`
- Additional environment (beyond base):
  - `LD_LIBRARY_PATH=/system/lib64`
  - `PREFIX=<rootPath>/usr`
  - `XDG_DATA_DIRS`, `XDG_CONFIG_DIRS`
  - `GST_PLUGIN_PATH`, `FONTCONFIG_PATH`, `VK_LAYER_PATH`
  - `WINE_NO_DUPLICATE_EXPLORER=1`
  - `WINE_DISABLE_FULLSCREEN_HACK=1`
  - `ENABLE_UTIL_LAYER=1`
  - `ALSA_CONFIG_PATH`, `ALSA_PLUGIN_DIR`
  - `OPENSSL_CONF`, `SSL_CERT_FILE`, `SSL_CERT_DIR`
  - `WINE_X11FORCEGLX=1`, `WINE_GST_NO_GL=1`
  - `ANDROID_RESOLV_DNS` (primary DNS from ConnectivityManager)
  - `WINE_NEW_NDIS=1`
  - `WINE_OPEN_WITH_ANDROID_BROWSER=1`
  - `WINE_FROM_ANDROID_CLIPBOARD=1`
- Box64 extraction: selects version from container config, falls back to container default
- FEXCore extraction: version-managed same way
- `checkDependencies()` via `ldd <libXau.so>`
- `restartWineServer()`

### GlibcProgramLauncherComponent (glibc full mode)
- `isProotLaunch() = false`
- Command: `<rootPath>/usr/local/bin/box64 <executable>`
- Extra methods: `runWinetricks()`, `startWineServer()`, `stopWineServer()`, `restartWineServer()`

### VirGLRendererComponent (Native GL renderer)
- JNI methods: `handleNewConnection(fd)→clientPtr`, `handleRequest(clientPtr)`, `destroyClient()`, `destroyRenderer()`, `getCurrentEGLContextPtr()`
- Loads `libvirglrenderer.so`
- Shares EGL context with XServerView
- `flushFrontbuffer(drawableId, framebuffer)` → copies to X11 Drawable via `copyFromFramebuffer()`

### SysVSharedMemoryComponent
- Socket: `/usr/tmp/.sysvshm/SM0`
- JNI: `ashmemCreateRegion()`, `createMemoryFd()`, `mapSHMSegment()`, `unmapSHMSegment()`
- Registers `SHMSegmentManager` with XServer
- Required for `WINEESYNC=1` (SysV IPC shared memory)

### NetworkInfoUpdateComponent
- Registers `BroadcastReceiver` for `CONNECTIVITY_CHANGE`
- Writes `/usr/tmp/adapterinfo` with IP/netmask/gateway
- Updates `/etc/hosts` with localhost mapping

---

## 12. Steam Integration Layer (Pluvia)

### Architecture Overview
```
PluviaApp
  ├── SteamClientManager          ─ Cold Client installation check
  ├── SteamService (Singleton)    ─ All Steam ops (auth/download/cloud/achievements)
  │     ├── SteamClient (JavaSteam) ─ CM protocol over TCP
  │     │     ├── SteamUser (auth, persona)
  │     │     ├── SteamApps (PICS, depots, licenses)
  │     │     ├── SteamCloud (UFS cloud saves)
  │     │     ├── SteamFriends (friends, personas)
  │     │     ├── SteamUserStats (achievements, stats)
  │     │     ├── SteamWorkshop (mod downloads)
  │     │     └── SteamUnifiedMessages (RPC)
  │     ├── SteamAutoCloud        ─ Automatic cloud save sync
  │     └── SteamUnifiedFriends   ─ Friends RPC
  ├── SteamGameLauncher           ─ Game launch via Wine
  ├── SteamShortcutHelper         ─ .acf manifest parsing, .desktop creation
  ├── WorkshopManager             ─ Workshop item sync
  └── StatsAchievementsGenerator  ─ Goldberg achievement configs
```

### SteamClientManager
- `isColdClientInstalled()` — checks for `steamclient_loader_x64.exe`
- `ensureColdClientSupportReady()` — extracts Steam DLLs from ZSTD asset

### SteamGameLauncher
- `launch(context, app, preferredContainerId)`
- Prepares encrypted app tickets, Steam runtime files, settings
- `STEAM_LOADER_EXEC`, `STEAM_LOADER_WIN_PATH` — Wine paths to Steam loader
- `syncOnExit()` — triggers cloud sync after game closes

### SteamShortcutHelper
- VDF regex: `"([^"]+)"\s+"([^"]*)"`
- Wine prefix: `/home/xuser/.wine`
- Steam dir (Wine): `C:\Program Files (x86)\Steam`
- Downloads: `.wine/drive_c/users/xuser/Downloads`
- `importInstalledGames()` — scans `.acf` manifests → creates shortcuts
- `maybeDownloadCoverArt()` — downloads game artwork
- Cover art CDN: cloudflare, akamai + fallback patterns

### SteamGameActions
- `exportSaves(uri)` — ZIP export
- `importSaves()` — ZIP import
- `syncCloudSaves(SaveLocation)`, `forceCloudSync()`

### PrefManager (EncryptedSharedPreferences — AES256)
Keys stored:
- Auth: `username`, `refreshToken`, `accessToken`, `steamId64`, `accountId`
- Network: `cellId`, `cellIdManuallySet`, `downloadOnWifiOnly`
- Downloads: `downloadSpeed`, `useSingleDownloadFolder`, `downloadFolders` (Steam/Epic/GOG/Amazon)
- Prefs: `containerLanguage`, `libraryLayoutMode`, `enableSteamLogs`, `offlineMode`
- Cloud: `pendingSteamCloudSyncAppsRaw`
- Workshop: `steamWorkshopEnabledItemIds`
- Graphics: `graphicsDriver`
- User state: `personaState`, `avatarHash`, `userName`
- PICS: `lastPICSChangeNumber`

### SteamUtils Key Methods
- `enrichSteamSettings()` — writes Steam config files into Wine prefix
- `ensureSaveLocationsForGames()` / `loadExtraSaveMappings()`
- `createAppManifest()`, `skipFirstTimeSteamSetup()`
- `processPendingGoldbergSyncs()`, `queuePendingGoldbergSync()`, `syncGoldbergAchievementsAndStats()`
- `getMachineName()`, `getUniqueDeviceId()`
- `getOSType()` → EOSType, `getSteam3AccountId()`, `getSteamId64()`
- `fetchDirect3DMajor()` → queries PCGamingWiki API for DirectX version
- DoH: `https://dns.google/dns-query`

### Steam Data Models

**SteamApp** (@Serializable)
- `id`, `name`, `type (AppType)`, `state (ReleaseState)`, icon/logo URL
- `depots: List<DepotInfo>`, `dlcAppIds`, `saveLocations`, `saveFilePatterns`
- `STEAM_URL = "https://shared.steamstatic.com/store_item_assets/steam/apps"`

**SteamLicense** (@Serializable)
- `packageId`, `lastChangeNumber`, `timeCreated`, `paymentMethod (EPaymentMethod)`
- `licenseFlags (EnumSet<ELicenseFlags>)`, `licenseType (ELicenseType)`
- `accessToken (long)`, `ownerAccountId`, `appIds: List`, `depotIds: List`

**DepotInfo** (@Serializable)
- `depotId`, `depotName`, `contentDepotId`, OS support flags (Windows/Mac/Linux)
- `manifestId`, `gcsroot`, `pathType (PathType)`

**LaunchInfo** (@Serializable)
- OS, arch, description, launch parameters, working directory

### Steam Enums
- `SyncResult`: Success, UpToDate, InProgress, PendingOperations, Conflict, UpdateFail, DownloadFail, UnknownFail
- `SaveLocation`: Local, Remote, None
- `LoginResult`: Success, Failed, InProgress, DeviceAuth, DeviceConfirm, EmailAuth
- `GameSource`: STEAM, GOG, EPIC, AMAZON
- `AppType`: Application, Tool, Demo, DLC, Config
- `ReleaseState`: Unreleased, PreloadOnly, Deprecated, Released
- `ControllerSupport`: None, Partial, Full
- `OS`: Windows, Mac, Linux, SteamOS
- `OSArch`: x86, x64
- `PathType`: WindowsPath, MacPath, LinuxPath

### Steam Events (EventDispatcher)
```
SteamEvent:
  Connected(isAutoLoggingIn: Boolean)
  Disconnected
  LoggedOut
  LogonStarted / LogonEnded
  PersonaStateReceived(friend: SteamFriend)
  QrAuthEnded / QrChallengeReceived / QrCodeScanned
  ForceCloseApp / RemotelyDisconnected

AndroidEvent:
  EndProcess (singleton)
  DownloadPausedDueToConnectivity(appId)
  DownloadStatusChanged(appId, phase, progress)
  LibraryInstallStatusChanged(appId, status)
```

### Room Database Entities (Steam)
`SteamApp`, `SteamLicense`, `AppInfo`, `DownloadingAppInfo`, `CachedLicense`, `EncryptedAppTicket`, `ChangeNumbers`, `FileChangeLists`

### WorkshopManager
- RPC: `PublishedFile.QueryFiles()` — paginated (page size 100, max 50 pages)
- Methods: `getSubscribedItems()`, `syncEnabledItems()`, `cleanupUnsubscribedItems()`, `downloadWorkshopItem()`
- `WorkshopItem`: `publishedFileId`, `title`, `description`, `downloaded`, `lastModified`, `tags`

### StatsAchievementsGenerator / Achievement
- Generates Goldberg emulator achievement configs
- Fields: `appId`, `apiname`, `displayName`, `description`, `hidden`, `icon`, `percent`

---

## 13. Big Picture Mode

### BigPictureActivity
- SteamGridDB API key (hardcoded): `4765cce5e92f8406ab0f5346c3b5e3ba`
- SteamGridDB base URL: `https://www.steamgriddb.com/api/v2/`
- Retrofit + OkHttp + Gson
- MP3 music selection, PNG wallpaper support
- `BigPictureAdapter` — carousel list adapter
- `TiledBackgroundView` — tiled background rendering
- `CarouselItemDecoration` — carousel UI decoration

---

## 14. Box86/Box64 & FEXCore System

### Box86_64 Preset System
- `Box86_64Preset` — preset data model
- `Box86_64PresetManager` — preset CRUD + selection
- `Box86_64EditPresetDialog` — UI for editing presets
- Default preset: `"COMPATIBILITY"`

### RC File Format (Box86/Box64 config)
- `RCFile` — parses `.rc`/`.rcp` config files
- `RCManager` — manages RC file collection
- `RCGroup`, `RCItem`, `RCField` — hierarchical config nodes

### Bundled RC Profiles (assets/box86_64/rcfiles/)
- `default.rc`
- `box86_64rc-1.rcp`
- `Luis Gaming.rcp` — per-process optimization profiles
  - Steam-specific BOX64 env var overrides
  - Flatout-specific settings

### Box64 Bundled Versions (assets/box86_64/)
- `box64-0.3.2.tzst`, `box64-0.3.6.tzst`, `box64-0.3.7.tzst`, `box64-0.3.7.1.tzst`

### FEXCore Bundled Versions (assets/fexcore/)
- `fexcore-2505.tzst`, `fexcore-2507.tzst`, `fexcore-2508.tzst`, `fexcore-2509.tzst`

### WoW64 / Box64 (assets/wowbox64/)
- `wowbox64-0.3.4.tzst`, `wowbox64-0.3.7.tzst`

### FEXCore Preset System
- `FEXCorePresetManager` — preset management parallel to Box64

---

## 15. Update System

### UpdateManager
- `GITHUB_API_BASE_URL = "https://api.github.com/"`
- `REPO_OWNER = "REF4IK"`
- `REPO_NAME = "update-url-mod-"`
- Full endpoint: `https://api.github.com/repos/REF4IK/update-url-mod-/releases/latest`
- Prefs: `receive_beta_updates` (boolean), `skipped_version` (string)
- Install flow: download APK → `FileProvider` → `REQUEST_INSTALL_PACKAGES` intent

### GitHubRelease / ReleaseAsset
- Parses `tag_name`, `prerelease`, `assets[]` from GitHub API JSON

---

## 16. Database Layer (Room)

### PluviaDatabase
- Single Room database for entire app
- Entities: all Steam entities + container/save data

### Steam DAOs
- `SteamAppDao` — `getInstalledApps()`, `getAppById()`, `insertApps()`, `updateApp()`, `deleteApp()`
- `SteamLicenseDao` — `getLicenses()`, `insertOrUpdateLicense()`, `deleteLicenses()`
- `AppInfoDao` — `getAppInfo()`, `insertOrUpdate()`, `deleteAppInfo()`
- `DownloadingAppInfoDao` — download progress tracking
- `CachedLicenseDao` — license cache CRUD
- `EncryptedAppTicketDao` — per-app auth ticket
- `ChangeNumbersDao` — PICS change number tracking
- `FileChangeListsDao` — file delta tracking

### Room Type Converters
`AppConverter`, `LicenseConverter`, `FriendConverter`, `PathTypeConverter`, `ByteArrayConverter`, `UserFileInfoListConverter`, `DateSerializer`, `OsEnumSetSerializer`, `LicenseSerializer`

---

## 17. Native Libraries (JNI)

### libwinlator.so (arm64-v8a, 7.6MB)
SONAME: `libwinlator.so`
Dependencies: `liblog.so`, `libandroid.so`, `libjnigraphics.so`, `libopenxr_loader.so`, `libaaudio.so`, `libEGL.so`, `libGLESv2.so`, `libGLESv3.so`, `libc++_shared.so`, `libm.so`, `libdl.so`, `libc.so`
Flags: `BIND_NOW`, 22 RELA entries, 249+ exported symbols

**JNI Export Groups:**

XR Activity:
`Java_com_winlator_cmod_XrActivity_init`, `bindFramebuffer`, `beginFrame`, `endFrame`, `getWidth`, `getHeight`, `getAxes`, `getButtons`

ALSA Client:
`Java_com_winlator_cmod_alsaserver_ALSAClient_create`, `createVirtualStream`, `start`, `stop`, `pause`, `flush`, `write`, `writeVirtual`, `close`

GPU Information:
`Java_com_winlator_cmod_core_GPUInformation_getMemorySize`, `getRenderer`, `getVersion`, `enumerateExtensions`, `isAdrenoGPU`, `isTurboModeActive`, `setTurboMode`

PatchElf:
`Java_com_winlator_cmod_core_PatchElf_createElfObject`, `destroyElfObject`, `getInterpreter`, `setInterpreter`, `getSoName`, `replaceSoName`, `getNeeded`, `addNeeded`, `removeNeeded`, `getRPath`, `addRPath`, `removeRPath`, `getOsAbi`, `replaceOsAbi`, `isChanged`

GPUImage:
`Java_com_winlator_cmod_core_GPUImage_createHardwareBuffer`, `destroyHardwareBuffer`, `createImageKHR`, `destroyImageKHR`, `hardwareBufferFromSocket`, `lockHardwareBuffer`

SysVSharedMemory:
`Java_com_winlator_cmod_sysvshm_SysVSharedMemory_ashmemCreateRegion`, `createMemoryFd`, `mapSHMSegment`, `unmapSHMSegment`

XConnectorEpoll:
`Java_com_winlator_cmod_xconnector_XConnectorEpoll_createEpollFd`, `createAFUnixSocket`, `addFdToEpoll`, `removeFdFromEpoll`, `closeFd`, `createEventFd`, `pollEpollEvents`, `waitForSocketRead`, `doEpollIndefinitely`

ClientSocket:
`Java_com_winlator_cmod_xconnector_ClientSocket_read`, `write`, `sendAncillaryMsg`, `recvAncillaryMsg`

Drawable (JNI drawing ops):
`Java_com_winlator_cmod_xserver_Drawable_drawBitmap`, `copyArea`, `copyAreaOp`, `fillRect`, `drawLine`, `drawAlphaMaskedBitmap`, `fromBitmap`

Pixmap:
`Java_com_winlator_cmod_xserver_Pixmap_toBitmap`

XR Engine:
`XrEngineInit`, `XrEngineDestroy`, `XrEngineEnter`, `XrEngineLeave`, `XrEngineWaitForFrame`

XR Framebuffer:
`XrFramebufferCreate`, `XrFramebufferCreateGL`, `XrFramebufferAcquire`, `XrFramebufferRelease`, `XrFramebufferDestroy`, `XrFramebufferSetCurrent`

XR Input:
`XrInputInit`, `XrInputUpdate`, `XrInputCreateAction`, `XrInputCreateActionSet`, `XrInputCreateActionSpace`, `XrInputGetActionStateBoolean/Float/Vector2`, `XrInputGetBinding`, `XrInputGetButtonState`, `XrInputGetJoystickState`, `XrInputGetPose`, `XrInputProcessHaptics`, `XrInputVibrate`, `XrInputGetMilliseconds`

Utilities: `ToXrTime`, `FromXrTime`, `ToDegrees`, `ToRadians`

### libfpslimiter.so (ref4ik custom, arm64-v8a)
- Custom native FPS limiter (ref4ik addition)
- No public symbol table in this analysis

### libpatchelf.so (arm64-v8a)
- Exposes the PatchElf JNI functions above
- ELF relinker for bionic compatibility

### libpulse.so + libpulseaudio.so + libpulsecommon-13.0.so + libpulsecore-13.0.so
- PulseAudio 13.0 complete daemon

### libsndfile.so — audio file I/O (WAV/FLAC/OGG)

### libltdl.so — libtool dynamic linker (Wine DLL loading)

### libopenxr_loader.so — OpenXR 1.x runtime (Meta Quest)

### libconscrypt_jni.so — Conscrypt TLS (OkHttp)

### libzstd-jni-1.5.2-3.so — Zstandard decompression (.tzst)

### libandroidx.graphics.path.so — AndroidX graphics path

### libc++_shared.so — NDK C++ runtime

### Multi-Platform Stubs (BouncyCastle JNI)
- `aarch64-Windows10-clang/` (211K), `aarch64-MacOSX-clang/` (83K)
- `amd64-Windows10-clang/junixsocket-native-2.6.0.dll` (283K)
- `x86_64-MacOSX-clang/libjunixsocket-native-2.6.0.dylib` (51K)
- `ppc64-AIX-clang/` (111K), `ppc64-OS400-clang/` (111K)
- These are **junixsocket** multi-platform stubs — unused at runtime on Android

---

## 18. Bundled Assets Catalog

### Root Assets

| Asset | Description |
|---|---|
| `imagefs.txz` | Linux root filesystem (Wine guest userspace) |
| `container_pattern_common.tzst` | Base Wine container skeleton |
| `proton-9.0-x86_64.txz` | Proton 9.0 x86_64 Wine binaries |
| `proton-9.0-arm64ec.txz` | Proton 9.0 arm64ec Wine binaries |
| `proton-9.0-x86_64_container_pattern.tzst` | Container pattern (x86_64) |
| `proton-9.0-arm64ec_container_pattern.tzst` | Container pattern (arm64ec) |
| `pulseaudio.tzst` | PulseAudio daemon |
| `input_dlls.tzst` | Windows input DLLs |
| `experimental-drm.tzst` | Experimental DRM/KMS |
| `gpu_cards.json` | 279 GPU entries (NVIDIA/AMD/Intel) |
| `contents.json` | 68 remote component entries |
| `common_dlls.json` | system32 (450+ DLLs) + syswow64 (500+ DLLs) |
| `box64_env_vars.json` | 18 Box64 tuning parameters |
| `fexcore_env_vars.json` | 15 FEXCore tuning parameters |
| `wine_debug_channels.json` | 250+ Wine debug channels |
| `wine_startmenu.json` | IE, Notepad, Wordpad, Task Manager, etc. |
| `default_music.mp3` | Background music |
| `PublicSuffixDatabase.list` | OkHttp TLD list |
| `system.reg.LOG1/LOG2` | Windows registry stubs |

### graphics_driver/
`adrenotools-v762.tzst`, `adrenotools-v805.tzst`, `wrapper.tzst`, `wrapper-v2.tzst` through `wrapper-v6.tzst`, `extra_libs.tzst`

### wincomponents/ (DLL packs)
`ddraw.tzst`, `direct3d.tzst`, `directmusic.tzst`, `directplay.tzst`, `directshow.tzst`, `directsound.tzst`, `opengl.tzst`, `vcrun2010.tzst`, `xaudio.tzst`, `wincomponents.json`

**wincomponents.json contents:**
- `direct3d`: d3dcompiler 33–47, d3dcsx, d3dx9/10/11
- `directsound`: dsound
- `directmusic`: dmband, dmcompos, dmime, dmloader, dmscript, dmstyle, dmsynth, dmusic, dswave
- `directshow`: amstream, qasf, qcap, qdvd, qedit, quartz
- `directplay`: dplaysvr, dplayx, dpmodemx, dpnet, dpnhpast, dpnhupnp, dpnsvr, dpwsockx
- `xaudio`: x3daudio 1.0–1.7, xactengine 2.0–3.7, xapofx, xaudio2
- `vcrun2010`: msvcp100, msvcr100, vcomp100, atl100
- `opengl`: libgallium_wgl, opengl32

### dxwrapper/ (DXVK + VKD3D packs)
DXVK: `d8vk.tzst`, `dxvk-0.40.1.tzst`, `dxvk-0.96.tzst`, `dxvk-1.5.5.tzst`, `dxvk-1.7.1.tzst`, `dxvk-1.10.x.tzst`, `dxvk-2.x.tzst` series
VKD3D: `vkd3d-2.8.tzst`, `vkd3d-2.12.tzst`, `vkd3d-2.13.tzst`, `vkd3d-2.14.1.tzst`

### ddrawrapper/
`cnc-ddraw.tzst`, `dd7to9.tzst`, `nglide.tzst`

### box86_64/
- Binaries: `box64-0.3.2.tzst`, `box64-0.3.6.tzst`, `box64-0.3.7.tzst`, `box64-0.3.7.1.tzst`
- rcfiles/: `default.rc`, `box86_64rc-1.rcp`, `Luis Gaming.rcp`

### fexcore/
`fexcore-2505.tzst`, `fexcore-2507.tzst`, `fexcore-2508.tzst`, `fexcore-2509.tzst`

### wowbox64/
`wowbox64-0.3.4.tzst`, `wowbox64-0.3.7.tzst`

### inputcontrols/
- `icons/`: 27 PNGs (0.png–26.png)
- `profiles/`: gamepad profile definitions

### soundfonts/
MIDI SF2 soundfont files (default: `wt_210k_G.sf2`)

### Remote Component Catalog (contents.json — 68 entries)

| Type | Versions |
|---|---|
| Wine | 9.16 custom, Proton-10-arm64ec |
| Box64 | 0.3.7-34e7894 |
| FEXCore | 241214, 2508.1, 2508-83e4496, 2507, 2506 |
| VKD3D | 2.14.1-proton, 2.14.1-arm64ec |
| DXVK | 0.96 → 2.7 (50+ versions: async, gplasync, arm64ec, HDR variants) |

---

## 19. Android Resources

### res/xml/
- `preferences.xml` — Main preference screen (Output/Pointer/Keyboard/Extra Keys/Other)
  - Output: resolution, scaling, stretch, PIP, fullscreen
  - Pointer: touch modes, stylus, mouse helper
  - Keyboard: IME, scancodes, accessibility
  - Other: clipboard, audio, user actions
- `preferences_x11.xml` — X11-specific preferences
- `file_paths.xml` — FileProvider path configuration
- `shortcuts.xml` — App shortcuts
- `accessibility_service_config.xml` — Accessibility service

### res/values/ (sizes)
- `strings.xml` (106KB) — 1000+ strings
- `attrs.xml` (103KB) — custom view attributes
- `styles.xml` (547KB) — style definitions
- `colors.xml` (33KB), `dimens.xml` (64KB), `ids.xml` (53KB)
- `arrays.xml` (18KB), `drawables.xml` (505B), `bools.xml`

### res/layout/ — 229 layout XML files
Key layouts: `wine_debug_channel_list_item`, `box86_64_rc_var`, `wine_install_options_dialog`, `screen_effect_dialog`, `task_manager_dialog`, `external_controller_binding_list_item`

### res/menu/ — 15 menu files
`main_menu.xml`, `containers_menu.xml`, `saves_menu.xml`, `shortcuts_menu.xml`, `file_manager_menu.xml`, `xserver_menu.xml`, `container_popup_menu.xml`, `content_popup_menu.xml`, `process_popup_menu.xml`, `shortcut_popup_menu.xml`, `rc_new_menu.xml`, `rc_group_menu.xml`

### res/drawable/ — 608 drawable files

---

## 20. DEX Structure & Third-Party Libraries

### DEX Distribution (22 DEX files)

| DEX | Primary Contents |
|---|---|
| smali/ | Kotlin coroutines, AndroidX compat, Glide image loading |
| smali_classes2 | AndroidX, coil, okhttp, timber, kotlin |
| smali_classes3–16 | Main `com.winlator.cmod.*` classes |
| smali_classes17 | androidx, cn (SF2), coil, in (JavaSteam) |
| smali_classes18–22 | kotlin stdlib, kotlinx, okhttp3, okio, retrofit2, timber, ktor, jp |

### Third-Party Library Summary

| Library | Classes | Role |
|---|---|---|
| **JavaSteam** (`in.dragonbra.javasteam`) | 543 | Full Steam CM network protocol |
| **Ktor** (`io.ktor`) | 934 | HTTP client for Steam API |
| **Coil** | 177 | Async image loading (artwork) |
| **OkHttp3 + Okio** | ~100 | HTTP + I/O |
| **Retrofit2** | ~50 | REST (UpdateManager, SteamGridDB) |
| **Room** (SQLite ORM) | ~40 | App + Steam database |
| **Jetpack Compose + Material3** | ~300 | Steam/shortcut UI |
| **BouncyCastle** | ~200 | Steam auth crypto (RSA/ECDH) |
| **Conscrypt** | ~30 | Alt TLS stack |
| **Kotlin Coroutines** | ~80 | Async throughout |
| **Timber** | ~5 | Logging |
| **Google Protobuf** | ~50 | Steam protocol serialization |
| **Kotlin Serialization** | ~30 | JSON models |
| **cn.sherlock SF2** | ~20 | SF2 soundbank (MIDI) |
| **Glide** | ~80 | Additional image loading |

### META-INF/services
- `io.ktor.client.HttpClientEngineContainer`
- `java.security.Provider`
- `kotlinx.coroutines.CoroutineExceptionHandler`
- `kotlinx.coroutines.internal.MainDispatcherFactory`

---

## 21. All Socket Paths & File Paths

### Unix Sockets
```
/usr/tmp/.X11-unix/X0        X11 server
/usr/tmp/.sound/AS0          ALSA server
/usr/tmp/.sound/PS0          PulseAudio server
/usr/tmp/.sysvshm/SM0        SysV shared memory server
/tmp/.virgl/V0               VirGL renderer
```

### ImageFs Container Paths
```
/home/xuser                  Home directory
/home/xuser/.wine            Wine prefix
/home/xuser/.cache           XDG cache
/home/xuser/.config          XDG config
/home/xuser/.winlator        Winlator metadata dir
/home/xuser/.winlator/.img_version  Version file (current: 21)
/usr/tmp                     Temp dir (chmod 0755)
/usr/lib/aarch64-linux-gnu   PRoot library path
/usr/lib/arm-linux-gnueabihf PRoot 32-bit library path
/system/lib64                Bionic library path
```

### Wine Paths (inside container)
```
C:\Program Files (x86)\Steam                Steam dir
C:\Program Files (x86)\Steam\steamclient_loader_x64.exe  Cold client
.wine/drive_c/users/xuser/Downloads          Downloads
.wine/dosdevices/                            Drive mappings
```

### Android App Paths
```
/data/data/com.winlator.cmod/storage         Container storage
context.getFilesDir()/tmp                    Working tmp dir
context.getFilesDir()/soundfonts             MIDI soundfonts
Environment.DIRECTORY_DOWNLOADS             Download dir (D: drive default)
```

### Wine Request Handler
```
TCP port 24816    Wine clipboard/URL handler
```

---

## 22. All Network Endpoints & API Keys

### Steam CDN & Assets
```
https://shared.steamstatic.com/store_item_assets/steam/apps/{appId}/...
https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/
  (missing avatar: .../fe/fef49e7fa7e1997310d705b2a6158ff8dc1cdfeb_full.jpg)
https://cdn.cloudflare.steamstatic.com/steam/apps/{appId}/library_600x900_2x.jpg
https://cdn.cloudflare.steamstatic.com/steam/apps/{appId}/library_600x900.jpg
https://cdn.cloudflare.steamstatic.com/steam/apps/{appId}/header.jpg
https://cdn.akamai.steamstatic.com/steam/apps/{appId}/...  (fallback)
https://cdn.cloudflare.steamstatic.com/client/installer/SteamSetup.exe
```

### Steam Protocol
```
Steam CM servers (javasteam autodiscovery)
Protobuf binary protocol over TCP
PICS continuous polling with change numbers
UFS (User File Storage) for cloud saves
PublishedFile RPC for workshop
```

### GitHub APIs
```
https://api.github.com/repos/REF4IK/update-url-mod-/releases/latest
    → Self-update endpoint
https://api.github.com/repos/REF4IK/Components-Adrenotools-/releases/tags/111
    → Adrenotools component catalog
https://github.com/maxjivi05/Components/releases/download/Components
    → Steam component downloads (in SteamService)
```

### Component Download Repos (contents.json)
```
https://github.com/K11MCH1/Winlator101/releases/download/wine_col/  (Wine 9.16)
https://github.com/de0ver/Components-for-Wine/releases/download/...  (Proton-10)
https://github.com/ziad9267/Winlator-Contents/raw/refs/heads/main/   (Box64, FEXCore, VKD3D, DXVK)
https://github.com/REF4IK/Components-/releases/download/1/          (DXVK catalog — 50+ builds)
https://github.com/slaker222/wcp-for-winlator/releases/download/wcp/ (DXVK 2.7)
```

### SteamGridDB
```
https://www.steamgriddb.com/api/v2/
API Key: 4765cce5e92f8406ab0f5346c3b5e3ba   ← hardcoded in BigPictureActivity
```

### PCGamingWiki
```
https://pcgamingwiki.com/w/api.php?action=cargoquery&tables=Infobox_game,API&join_on=...
    → Used by SteamUtils.fetchDirect3DMajor() to detect DirectX version per game
```

### Steam Remote Storage
```
https://api.steampowered.com/ISteamRemoteStorage/GetPublishedFileDetails/v1
```

### DNS
```
https://dns.google/dns-query    ← DNS-over-HTTPS fallback (SteamUtils + DohOkHttp)
```

---

## 23. Environment Variables Reference

### Box64 Tuning Variables (assets/box64_env_vars.json — 18 vars)
`BOX64_DYNAREC_SAFEFLAGS`, `BOX64_DYNAREC_FASTNAN`, `BOX64_DYNAREC_FASTROUND`, `BOX64_DYNAREC_X87DOUBLE`, `BOX64_DYNAREC_BIGBLOCK`, `BOX64_DYNAREC_STRONGMEM`, `BOX64_DYNAREC_FORWARD`, `BOX64_DYNAREC_CALLRET`, `BOX64_DYNAREC_WAIT`, `BOX64_DYNAREC_WEAKBARRIER`, `BOX64_DYNAREC_ALIGNED_ATOMICS`, `BOX64_DYNAREC_DF`, `BOX64_DYNAREC_DIRTY`, `BOX64_DYNAREC_NATIVEFLAGS`, `BOX64_DYNAREC_PAUSE`, `BOX64_AVX`, `BOX64_MAXCPU`, `BOX64_UNITYPLAYER`, `BOX64_MMAP32`

### FEXCore Tuning Variables (assets/fexcore_env_vars.json — 15 vars)
`FEX_TSO*`, `FEX_X87REDUCEDPRECISION`, `FEX_MULTIBLOCK`, `FEX_MAXINST`, `FEX_HOSTFEATURES`, `FEX_SMALLTSCSCALE`, `FEX_SMC_CHECKS`, `FEX_VOLATILEMETADATA`, `FEX_MONOHACKS`, `FEX_HIDEHYPERVISORBIT`, `FEX_DISABLEL2CACHE`, `FEX_DYNAMICL1CACHE`

### Container Default Env Vars
```
ZINK_DESCRIPTORS=lazy
ZINK_DEBUG=compact
MESA_SHADER_CACHE_DISABLE=false
MESA_SHADER_CACHE_MAX_SIZE=512MB
mesa_glthread=true
WINEESYNC=1
TU_DEBUG=noconform,sysmem
DXVK_HUD=devinfo,fps,frametimes,gpuload,version,api
```

### Bionic Launcher Additional Vars
```
HOME=/home/xuser
USER=xuser
TMPDIR=/tmp
LC_ALL=en_US.utf8
DISPLAY=:0
LD_LIBRARY_PATH=/system/lib64
PREFIX=<rootPath>/usr
XDG_DATA_DIRS=<paths>
XDG_CONFIG_DIRS=<paths>
GST_PLUGIN_PATH=<paths>
FONTCONFIG_PATH=<path>
VK_LAYER_PATH=<path>
WINE_NO_DUPLICATE_EXPLORER=1
WINE_DISABLE_FULLSCREEN_HACK=1
ENABLE_UTIL_LAYER=1
ALSA_CONFIG_PATH=<path>
ALSA_PLUGIN_DIR=<path>
OPENSSL_CONF=<path>
SSL_CERT_FILE=<path>
SSL_CERT_DIR=<path>
WINE_X11FORCEGLX=1
WINE_GST_NO_GL=1
ANDROID_RESOLV_DNS=<primary_dns>
WINE_NEW_NDIS=1
WINE_OPEN_WITH_ANDROID_BROWSER=1
WINE_FROM_ANDROID_CLIPBOARD=1
```

### PRoot Launcher Additional Vars
```
PROOT_TMP_DIR=<tmp>
PROOT_LOADER=<loader>
PROOT_LOADER_32=<loader32>   (non-WoW64 mode)
LD_LIBRARY_PATH=/usr/lib/aarch64-linux-gnu:/usr/lib/arm-linux-gnueabihf
LD_PRELOAD=libandroid-sysvshm.so   (if exists)
ANDROID_SYSVSHM_SERVER=/usr/tmp/.sysvshm/SM0
```

---

## 24. JNI Symbol Index

### Classes with native methods

| Java Class | Native Methods |
|---|---|
| `ALSAClient` | create, createVirtualStream, start, stop, pause, write, writeVirtual, flush, close |
| `XConnectorEpoll` | createAFUnixSocket, createEpollFd, createEventFd, addFdToEpoll, removeFdFromEpoll, doEpollIndefinitely, waitForSocketRead, closeFd, pollEpollEvents |
| `ClientSocket` | read, write, sendAncillaryMsg, recvAncillaryMsg |
| `SysVSharedMemory` | ashmemCreateRegion, createMemoryFd, mapSHMSegment, unmapSHMSegment |
| `GPUInformation` | getMemorySize, getRenderer, getVersion, enumerateExtensions, isAdrenoGPU, isTurboModeActive, setTurboMode |
| `PatchElf` | createElfObject, destroyElfObject, getInterpreter, setInterpreter, getSoName, replaceSoName, getNeeded, addNeeded, removeNeeded, getRPath, addRPath, removeRPath, getOsAbi, replaceOsAbi, isChanged |
| `GPUImage` | createHardwareBuffer, destroyHardwareBuffer, createImageKHR, destroyImageKHR, hardwareBufferFromSocket, lockHardwareBuffer |
| `Drawable` | drawBitmap, copyArea, copyAreaOp, fillRect, drawLine, drawAlphaMaskedBitmap, fromBitmap |
| `Pixmap` | toBitmap |
| `XrActivity` | init, bindFramebuffer, beginFrame, endFrame, getWidth, getHeight, getAxes, getButtons |
| `VirGLRendererComponent` | handleNewConnection, handleRequest, destroyClient, destroyRenderer, getCurrentEGLContextPtr |

### System.loadLibrary calls
- `System.loadLibrary("winlator")` — main JNI lib (libwinlator.so)
- `libvirglrenderer.so` — loaded at runtime by VirGLRendererComponent

---

---

## 25. Settings, Shortcuts & UI Fragment Detail (R3-A)

### SettingsFragment — All Preference Keys

| Key | Type | Default | Notes |
|---|---|---|---|
| `dark_mode` | boolean | false | Triggers `recreate()` |
| `app_language` | string | "system" | Values: en/ru/zh; uses `AppCompatDelegate.setApplicationLocales` |
| `transition_animation` | string | "slide_vertical" | Fragment transition style |
| `receive_beta_updates` | boolean | false | Beta channel toggle |
| `enable_big_picture_mode` | boolean | false | BigPictureActivity toggle |
| `enable_custom_api_key` | boolean | false | SteamGridDB custom key |
| `custom_api_key` | string | — | Custom SteamGridDB key value |
| `cursor_lock` | boolean | true | Mouse capture |
| `xinput_toggle` | boolean | false | XInput toggle |
| `legacy_mode_enabled` | boolean | false | Legacy compatibility |
| `gyro_enabled` | boolean | false | Gyroscope input |
| `gyro_trigger_button` | int | 102 | Gyro activation button code |
| `gyro_mode` | int | 0 | 0=Hold, 1=Toggle |
| `adreno_turbo_mode` | boolean | false | Adreno Turbo Mode |
| `adreno_turbo_root_warning_shown` | boolean | false | Root warning shown flag |
| `use_dri3` | boolean | true | DRI3 extension |
| `use_xr` | boolean | true | XR/VR support |
| `enable_wine_debug` | boolean | false | Wine debug output |
| `wine_debug_channels` | string | "warn,err,fixme" | Loaded from `wine_debug_channels.json` asset |
| `enable_box86_64_logs` | boolean | false | Box64 logging |
| `cursor_speed` | float | 1.0f | Range 0–100% |
| `trigger_type` | int | 1 | 0=Button, 1=Axis, 2=Mixed |
| `enable_file_provider` | boolean | true | File provider |
| `open_with_android_browser` | boolean | false | Open URLs in browser |
| `share_android_clipboard` | boolean | false | Clipboard sharing |
| `downloadable_contents_url` | string | `https://github.com/REF4IK/Components-Adrenotools-/releases/download/1/contents.json` | Override contents.json URL |
| `frontend_export_uri` | string | — | Export URI for frontend metadata |
| `gyro_x_sensitivity` | float | 1.0f | — |
| `gyro_y_sensitivity` | float | 1.0f | — |
| `gyro_smoothing` | float | 0.9f | — |
| `gyro_deadzone` | float | 0.05f | — |
| `invert_gyro_x` | boolean | false | — |
| `invert_gyro_y` | boolean | false | — |
| `shortcuts_grid_view` | boolean | true | Grid vs list |
| `deadzone_left` | float | 0.1f | Left stick deadzone |
| `deadzone_right` | float | 0.1f | Right stick deadzone |
| `sensitivity_left` | float | 1.0f | Left stick sensitivity |
| `sensitivity_right` | float | 1.0f | Right stick sensitivity |
| `square_deadzone_left` | boolean | false | Square deadzone shape |
| `invert_left_x`, `invert_left_y`, `invert_right_x`, `invert_right_y` | boolean | false | Axis inversion |

**Cleared on reset:** `current_box64_version`, `current_wowbox64_version`, `current_fexcore_version`

**Backup/restore:**
- Archive function: `TarCompressorUtils.archive()` with exclusion filter for `imagefs/tmp/.sysvshm`
- Default export path: `Environment.getExternalStoragePublicDirectory(DIRECTORY_DOWNLOADS) + "/Winlator/Frontend"`
- Request codes: `1001` (soundfont install), `1002` (frontend export path), `2` (restore backup)

---

### ShortcutsFragment — Detailed Data

**Request codes:**
- `REQUEST_CODE_IMPORT_BOX64_PRESET = 7878`
- `REQUEST_CODE_IMPORT_FEXCORE_PRESET = 7879`
- `REQUEST_CODE_SELECT_EXE_FILE = 7777`

**SteamGridDB integration:**
- API Key (hardcoded): `4765cce5e92f8406ab0f5346c3b5e3ba`
- Base URL: `https://www.steamgriddb.com/api/v2/`
- `searchGame` endpoint — search by name → game ID
- `getGridsByGameId` endpoint — params: `type=alternate`, `dimensions=600x900`, `format=static`

**Steam cover art URL patterns (3 hosts × 5 patterns):**
```
Hosts: cdn.cloudflare.steamstatic.com, cdn.akamai.steamstatic.com, steamcdn-a.akamaihd.net
Patterns per host:
  /steam/apps/{appId}/library_600x900_2x.jpg
  /steam/apps/{appId}/library_600x900.jpg
  /steam/apps/{appId}/capsule_616x353.jpg
  /steam/apps/{appId}/capsule_184x69.jpg
  /steam/apps/{appId}/header.jpg
```

**Cover art cache:**
- Path: `context.getCacheDir() + "/coverArtCache/"`
- Filename: `{shortcutName}.png`
- Negative TTL (SteamGridDB failures): `600000ms` (10 minutes)

**Steam Store search:**
- URL: `https://store.steampowered.com/api/storesearch/?term={encoded_query}&l=english&cc=us`
- Sophisticated scoring algorithm for app ID matching

**Shortcut file format:**
- Extension: `.desktop` 
- Format: `[Desktop Entry]` + `[Extra Data]` sections
- Fields: `Exec`, `Type=Application`, `StartupNotify`, `Path`, `Icon`, `StartupWMClass`
- Extra fields tracked: `uuid`, `disableXinput`, `game_source`, `gameSource`, playtime stats (SharedPreferences: `playtime_stats`)

**Frontend export metadata format:**
- `metadata.pegasus.txt` (Pegasus format)
- `FRONTEND_INSTRUCTIONS.txt`
- Supported frontends: Daijisho, Beacon
- Launch command: `am start -n {package}/{activity} -e shortcut_path {file_path}`

---

### ContainerDetailFragment — Full Configuration Details

**SDL2 Environment Variables (9 values, exact):**
```
SDL_JOYSTICK_WGI=0
SDL_XINPUT_ENABLED=1
SDL_JOYSTICK_RAWINPUT=0
SDL_JOYSTICK_HIDAPI=1
SDL_DIRECTINPUT_ENABLED=0
SDL_JOYSTICK_ALLOW_BACKGROUND_EVENTS=1
SDL_HINT_FORCE_RAISEWINDOW=0
SDL_ALLOW_TOPMOST=0
SDL_MOUSE_FOCUS_CLICKTHROUGH=1
```

**Container Profile Schema:**
- Archive extension: `.wprofile.zip`
- Schema version: `2`
- Type identifier: `"container_settings_profile"`
- Import/export: `ZipInputStream` / `ZipOutputStream`

**Direct3D Wine Registry Keys (`Software\Wine\Direct3D`):**
```
csmt                  DWORD  0=disabled, 3=enabled
VideoPciDeviceID      DWORD  from GPU spinner
VideoPciVendorID      DWORD  from GPU spinner
OffScreenRenderingMode STRING "backbuffer" or "fbo"
strict_shader_math    DWORD
VideoMemorySize       STRING default "2048"
shader_backend        STRING always "glsl"
UseGLSL               STRING always "enabled"
```

**DirectInput Wine Registry Keys:**
```
MouseWarpOverride     STRING "disabled" | "enabled" | "force"
```

**Spinners in ContainerDetailFragment:**
- `SWineVersion` — Wine version
- `SGraphicsDriver` — Graphics driver
- `SScreenSize` — Screen resolution
- `SGPUName` — GPU from `gpu_cards.json` (fields: `deviceID`, `vendorID`)
- `SAudioDriver` — Audio driver
- `SBox64Version`, `SBox64Preset` — Box64 config
- `SFEXCoreVersion`, `SFEXCorePreset` — FEXCore config
- `SEmulator64`, `SEmulator` — Emulator selection
- `SDXWrapper`, `SDDrawrapper` — Wine wrappers
- `SDInputType` — Input type (values 1–6)
- `SDesktopTheme` — Desktop theme
- `SMIDISoundFont` — MIDI soundfont
- `SStartupSelection` — Byte values 0–255
- `SRCFile` — RC file selection
- `LC_ALL` — Locale code + ".UTF-8"

**Video Memory Size Options:**
- Parsed via `StringUtils.parseNumber()`; default "2048"

**Windows path mappings:**
- `D:` → External storage Downloads folder
- `Z:` → ImageFS root
- `C:` → `.wine/drive_c`

**Component installation via ContainerDetailFragment:**
- Download dir: `Environment.getExternalStorageDirectory() + "/Download/Winlator"`
- Temp shortcut format: `_winlator_component_{filename}`
- Extra data: `inputType=6`, `relativeMouseMovement=0`, `simTouchScreen=0`, `execArgs=/passive /norestart`

---

### ContentsFragment — Download / Install Flow

**Download URL preference:** `downloadable_contents_url`
**Default URL:** `https://github.com/REF4IK/Components-Adrenotools-/releases/download/1/contents.json`

**File format support:** `.wcp` (packed), `.xz`, `.zst`

**SharedPreferences used:**
- `file_size_cache` — caches remote file sizes by URL
- `dark_mode` — theme

**Install status error codes:**
`ERROR_BADTAR`, `ERROR_NOPROFILE`, `ERROR_BADPROFILE`, `ERROR_EXIST`, `ERROR_MISSINGFILES`, `ERROR_UNTRUSTPROFILE`

**Install flow:**
1. User selects file via `ACTION_OPEN_DOCUMENT` (request code `2`)
2. Extract to `cache/temp_{timestamp}`
3. Validate profile from archive
4. Check `getUnTrustedContentFiles()`
5. Call `finishInstallContent()`

---

### SteamFragment — Steam Setup

**Status state machine:** "No containers" → "Not Installed" → "Installing..." → "Installed"

**Key methods:**
- `loadContainers()` — loads from ContainerManager
- `refreshStatus()` — uses `SteamShortcutHelper.isSteamInstalled(container)`
- `installOrUpdateSteam()` — downloads installer if absent
- `runSteamClient()` — launches Steam via shortcut
- `importSteamGames()` — scans `.acf` → creates shortcuts
- `launchShortcut()` — routes to `XServerDisplayActivity` or `XrActivity`

**Import result:** `SteamShortcutHelper.ImportResult { found, imported }`

---

### DriverStoreFragment — GPU Driver Recommendations

**Adreno model → recommended driver:**
```
Adreno 610 → "KIMCHI Turnip"
Adreno 620 → "KIMCHI Turnip"
Adreno 630 → "Mr. Purple Turnip"
Adreno 640 → "Mr. Purple Turnip"
Adreno 650 → "Mr. Purple Turnip"
Adreno 660 → "Mr. Purple Turnip"
Adreno 730 → "GameHub Adreno 8xx"
Adreno 740 → "GameHub Adreno 8xx"
Adreno 750 → "GameHub Adreno 8xx"
```

**GPU model extraction regex:** `adreno[^0-9]*([0-9]{3})` → "Adreno {model}"

**Custom repository API:**
- `addCustomRepository(url, name)`, `removeCustomRepository(url)`
- `getCustomRepositories()`, `getCustomRepositoryName(repo)`
- Storage: `DriverResolver` class

**HTTP clients:**
- `DohOkHttp.get()` — OkHttp with DoH
- COVER_ART_HTTP: 90-second timeout (call + read)
- STEAMGRID_HTTP: 8-second timeout (call + read)

**Driver search:** `DriverResolver.searchDrivers(DriverSearchCallback)` → `List<DriverResolver.DriverInfo>`
**Driver download:** `DriverResolver.downloadDriver(driverInfo, DriverDownloadCallback)` with `onProgress(int)`, `onComplete(Uri)`, `onError(String)`
**Driver install:** `AdrenotoolsManager.installDriver(Uri)` → `installedDriverId`

---

---

## 26. WinHandler Protocol, XServerDisplayActivity & Steam Paths (R3-B)

### WinHandler — Full UDP Protocol

**Ports:** Android sends to `CLIENT_PORT=7946` (Wine listener); Android listens on `SERVER_PORT=7947`.
All packets: 64-byte `ByteBuffer`, `ByteOrder.LITTLE_ENDIAN`.

**Outgoing messages (Android → Wine, port 7946):**

| Type byte | Method | Payload |
|---|---|---|
| `0x02` | `exec(filename, params)` | `[byte:2][int:totalLen][int:filenameLen][int:paramsLen][bytes:filename][bytes:params]` |
| `0x03` | `killProcess(name)` | `[byte:3][int:nameLen][bytes:name]` |
| `0x04` | `listProcesses()` | `[byte:4][int:0]` |
| `0x06` | `setProcessAffinity(name, mask)` | `[byte:6][int:nameLen+9][int:0][int:affinityMask][byte:nameLen][bytes:name]` |
| `0x06` | `setProcessAffinity(pid, mask)` | `[byte:6][int:9][int:pid][int:affinityMask][byte:0]` |
| `0x07` | `mouseEvent(flags, dx, dy, wheel)` | `[byte:7][int:10][int:flags][short:dx][short:dy][short:wheelDelta][byte:isMove]` (isMove=1 if flags&1) |
| `0x08` | gamepad identity reply | `[byte:8][int:deviceId][byte:inputType][int:nameLen][bytes:name]` |
| `0x09` | `sendGamepadState` | `[byte:9][byte:enabled][int:deviceId][GamepadState bytes]` |
| `0x0B` | `keyboardEvent(vkey, flags)` | `[byte:11][byte:vkey][int:flags]` |
| `0x0C` | `bringToFront(name, handle)` | `[byte:12][int:nameLen][bytes:name][long:handle]` |

**Show Desktop:** sends exec `"explorer.exe /minall"` to port 7946.

**Incoming messages (Wine → Android, port 7947) — first byte = requestCode:**

| Code | Name | Description |
|---|---|---|
| `0x01` | INIT | Wine ready; reload prefs, `actions.notify()` |
| `0x05` | PROCESS_INFO | `[skip4][short:numProcs][short:index][int:pid][long:memUsage][int:affinityMask][byte:wow64][32 bytes:name ANSI]` |
| `0x08` | GAMEPAD_CHECK | `[byte:xinputEnabled][byte:notify]` → respond with gamepad identity |
| `0x09` | GAMEPAD_STATE_REQUEST | `[int:gamepadId]` → respond with state |
| `0x0A` | CONTROLLER_DISCONNECT | Clears `currentController` and `gamepadClients` |
| `0x0D` | CURSOR_POS | `[short:x][short:y]` → sets XServer pointer position |

**Input type constants:**
```
DEFAULT_INPUT_TYPE          = 4
FLAG_INPUT_TYPE_XINPUT      = 4
FLAG_INPUT_TYPE_DINPUT      = 8
DINPUT_MAPPER_TYPE_STANDARD = 0
DINPUT_MAPPER_TYPE_XINPUT   = 1  (default)
FLAG_DINPUT_MAPPER_STANDARD = 1
FLAG_DINPUT_MAPPER_XINPUT   = 2
INPUT_TYPE_MIXED            = 2
```

**Mouse event flags (used in handleCapturedPointer):**
```
1     = mouse move (relative)
2     = left button down
4     = left button up
8     = right button down
16    = right button up
32    = middle button down
64    = middle button up
2048  = scroll wheel
```
Scroll wheel delta multiplier: `scrollY * 270` (integer)

**Gyroscope math (exact):**
```
rawX = -rawGyroX   (always negate)
if invertGyroX: rawX = -rawX
if invertGyroY: rawGyroY = -rawGyroY
sensitivityMultiplier = 5.0 * userSensitivity
processedX = rawX * gyroSensitivityX * sensitivityMultiplier
processedY = rawGyroY * gyroSensitivityY * sensitivityMultiplier
smoothGyroX = (smoothGyroX * smoothingFactor) + ((1.0 - smoothingFactor) * processedX)
smoothGyroY = (smoothGyroY * smoothingFactor) + ((1.0 - smoothingFactor) * processedY)
dx = (int)smoothGyroX; dy = (int)smoothGyroY
→ mouseEvent(flags=1, dx, dy, wheel=0)
```

**Constructor gyro defaults** (overridden by prefs at INIT event):
```
gyroSensitivityX  = 0.35f
gyroSensitivityY  = 0.25f
smoothingFactor   = 0.45f  (overridden to 0.9f from "gyro_smoothing" pref)
invertGyroX       = true   (X negated by default)
gyroDeadzone      = 0.01f  (overridden to 0.05f from "gyro_deadzone" pref)
```

**Gyro trigger button axis codes:**
```
104 = left trigger axis  (AXIS_LTRIGGER, event.getAxisValue(17))
105 = right trigger axis (AXIS_RTRIGGER, event.getAxisValue(18))
102 = default (keyboard button code path)
```

**Left trigger threshold for processGyroWithLeftTrigger:** `controller.state.triggerL > 0.5f`

**Gyro injection into right stick:**
```
gamepadState.thumbRX = clamp(thumbRX + gyroX, -1.0, 1.0)
gamepadState.thumbRY = clamp(thumbRY + gyroY, -1.0, 1.0)
```

---

### XServerDisplayActivity — Full Detail

**Intent extras read:**
```
"container_id"              int, default 0
"shortcut_path"             String
"shortcut_name"             String
"exec_path"                 String (fallback for workarounds)
"return_to_steam_library"   boolean, default false
"steam_library_app_id"      int, default 0  → SteamLibraryActivity.EXTRA_SELECTED_APP_ID
```

**Shortcut extras read (via shortcut.getExtra()):**
```
"cpuList"               CPU affinity list
"cpuListWoW64"          WoW64 CPU affinity
"wmClass"               Win32 window class for workarounds
"secondaryExec"         Secondary executable
"execDelay"             int seconds (default "0") for secondary exec
"graphicsDriver"        override
"graphicsDriverConfig"  override string
"audioDriver"           override
"emulator"              override
"dxwrapper" / "ddrawrapper" / "dxwrapperConfig"  overrides
"screenSize"            override
"lc_all"                locale override
"inputType"             String→byte override
"disableXinput"         String boolean (default "false")
"relativeMouseMovement" "0"/"1"
"sharpnessEffect"       vkbasalt effect name (default "None")
"sharpnessLevel"        String→double (default "100")
"sharpnessDenoise"      String→double (default "100")
"controlsProfile"       controls profile ID
"simTouchScreen"        "0"/"1"
"forceFullscreen"       "0"/"1"
"fullscreenStretched"   "0"/"1"
"startupSelection"      String→byte
"wincomponents"         Wine component set
"envVars"               extra env vars
"box64Preset"           Box64 preset
"fexcorePreset"         FEXCore preset
"rcfileId"              String→int
"wrapperGraphicsDriverVersion"  Adrenotools driver version
"game_source"/"gameSource"  checked for "STEAM" to bind cloud sync
"app_id"/"steamAppId"   Steam App ID for cloud sync
```

**Env vars set programmatically:**
```
LC_ALL                      from container/shortcut
MESA_DEBUG                  "" (empty string)
MESA_NO_ERROR               "1"
WINEPREFIX                  imageFs.wineprefix
WINEDEBUG                   "+channel1,+channel2..." or "-all"
WINEESYNC                   "1" (if not already set)
PULSE_LATENCY_MSEC          16 (default)
ALSA_VOLUME                 (int)(100*volume) (only if volume != 1.0)
ANDROID_ALSA_SERVER         rootPath + UnixSocketConfig.ALSA_SERVER_PATH
ANDROID_ASERVER_USE_SHM     "true"
ANDROID_ALSA_REFLECTOR      "1" (pulseaudio/default)
PULSE_SERVER                rootPath + UnixSocketConfig.PULSE_SERVER_PATH
BOX64_RCFILE                container.getRootDir() + "/.box64rc"
VK_ICD_FILENAMES            freedreno_icd.aarch64.json or wrapper_icd.aarch64.json
GALLIUM_DRIVER              "zink"
LIBGL_KOPPER_DISABLE        "true"
MESA_VK_WSI_DEBUG           "sw" (DRI3 disabled) | "forcesync" (frameSync=Always+DRI3)
MESA_VK_WSI_PRESENT_MODE    "fifo" (Always) | resolved present mode
WRAPPER_DISABLE_PRESENT_WAIT "1" (if frameSync=Never)
WRAPPER_EXTENSION_BLACKLIST  from graphicsDriverConfig
UTIL_LAYER_VMEM_MAX_SIZE    maxDeviceMemory (if > 0)
WRAPPER_RESOURCE_TYPE       from graphicsDriverConfig
WRAPPER_BLIT                from graphicsDriverConfig
ENABLE_VKBASALT             "1" (if sharpness effect active)
VKBASALT_CONFIG             config string (if sharpness active)
CNC_DDRAW_CONFIG_FILE       "C:\\windows\\syswow64\\ddraw.ini" (if ddrawrapper=cnc-ddraw)
```

**Guest executable command:**
```
wine explorer /desktop=shell,{screenSize} {wineStartCommand}
```

**Assets extracted at runtime:**
```
graphics_driver/wrapper.tzst              (ZSTD)
graphics_driver/extra_libs.tzst           (ZSTD)
graphics_driver/adrenotools-{id}.tzst     (ZSTD)
input_dlls.tzst                           (ZSTD)
legacy_input_dlls.tzst                    (ZSTD)
soundfonts/{filename}
```

**Wine wrapper scripts created at runtime (in imagefsRoot):**
```
/usr/local/bin/wine      → exec box64 {wineBinPath}/wine explorer.exe ...
/usr/local/bin/wine64    → same
/usr/local/bin/wineserver → exec box64 {wineBinPath}/wineserver "$@"
/usr/bin/winetricks      → executed if exists
/usr/bin/winetricks.latest → latest variant
/usr/bin/winetricksfolder  → generated script for folder mode
```

**SharedPreferences keys read:**
- `"playtime_stats"` (mode 0) — `{shortcutName}_playtime` (long ms), `{shortcutName}_play_count` (int)
- `SAVE_INTERVAL_MS = 1000`
- `RECAPTURE_DELAY_MS = 10000`
- `MAX_LOG_LINES = 1000`
- `BATCH_SIZE = 10`

**Intent flags for return-to-Steam:** `603979776` (`FLAG_ACTIVITY_NEW_TASK | FLAG_ACTIVITY_CLEAR_TASK`)

---

### SteamShortcutHelper — Exact Values

**Steam installer download URL:**
```
https://cdn.cloudflare.steamstatic.com/client/installer/SteamSetup.exe
```

**File paths:**
```
Steam dir (Wine): C:\Program Files (x86)\Steam
Steam exe: C:/Program Files (x86)/Steam/steam.exe
Installer download target: {containerRoot}/.wine/drive_c/users/xuser/Downloads/SteamSetup.exe
Steam desktop shortcut: {containerDesktopDir}/steam-client.desktop
Installer shortcut: {containerDesktopDir}/steam-setup.desktop
Per-game shortcut: {containerDesktopDir}/steam-app-{appId}.desktop
Cover art dir: {containerRoot}/app_data/cover_arts/
Cover art file: steam_{appId}.jpg
Manifests: {steamDir}/steamapps/appmanifest_*.acf
Library folders VDF: {steamDir}/steamapps/libraryfolders.vdf
```

**Steam launch args (per-game shortcut):**
```
-silent -vgui -tcp -nobigpicture -nofriendsui -nochatui -nointro -applaunch {appId}
```

**Shortcut Extra Keys written:**
- `"steamAppId"` = appId string
- `"gameSource"` = `"STEAM"`

**VDF parsing regex:** `"([^"]+)"\s+"([^"]*)"`
**Library path unescaping:** replaces `\\\\` → `\\`

---

### ContentsManager — Full Detail

**ContentProfile.ContentType enum:**
```
CONTENT_TYPE_WINE     → "Wine"
CONTENT_TYPE_DXVK     → "DXVK"
CONTENT_TYPE_VKD3D    → "VKD3D"
CONTENT_TYPE_BOX64    → "Box64"
CONTENT_TYPE_WOWBOX64 → "WOWBox64"
CONTENT_TYPE_FEXCORE  → "FEXCore"
```

**profile.json keys:** `"type"`, `"versionName"`, `"versionCode"` (int), `"description"`, `"files"` (array `{source,target}`), `"wine"` object with `"binPath"`, `"libPath"`, `"prefixPack"`

**Directory structure:**
```
{filesDir}/contents/                          Base
{filesDir}/contents/{typeName}/               Per-type
{filesDir}/contents/{typeName}/{verName}-{verCode}/  Installed
{filesDir}/tmp/contents/                      Temp during install
```

**Template substitution in file target paths:**
```
${libdir}   → {filesDir}/imagefs/usr/lib
${system32} → {filesDir}/imagefs/home/xuser/.wine/drive_c/windows/system32
${syswow64} → {filesDir}/imagefs/home/xuser/.wine/drive_c/windows/syswow64
${bindir}   → {filesDir}/imagefs/usr/bin
${sharedir} → {filesDir}/imagefs/usr/share
```

**Trust file lists (allowed overwrite targets by content type):**
```
DXVK:    ${system32} + ${syswow64}: d3d8.dll, d3d9.dll, d3d10.dll, d3d10_1.dll, d3d10core.dll, d3d11.dll, dxgi.dll
VKD3D:   ${system32}/d3d12core.dll, ${system32}/d3d12.dll, ${syswow64}/d3d12core.dll, ${syswow64}/d3d12.dll
Box64:   ${bindir}/box64
WOWBox64: ${system32}/wowbox64.dll
FEXCore: ${system32}/libwow64fex.dll, ${system32}/libarm64ecfex.dll
```

**SharedPreferences:** `"contents_manager_prefs"` (mode 0), key `"graphics_driver_installed_{driverVersion}"` (boolean)

**Downloader.java:**
- Pure `java.net.URL` / `URLConnection`, no custom headers or auth
- Read/write buffer: **8192 bytes**
- Methods: `downloadFile(url, file)`, `downloadFile(url, file, listener)`, `getFileSize(url)`, `downloadString(url)`
- No hash validation, no retry logic

---

### AdrenotoolsManager — Binary Patch

**Paths:**
```
Base dir: {filesDir}/imagefs/contents/adrenotools/
Per-driver: {filesDir}/imagefs/contents/adrenotools/{driverName}/
Metadata: {driverDir}/meta.json
Temp: {adrenotoolsContentDir}/tmp/
Bundled asset: "graphics_driver/adrenotools-{driverName}.tzst"
```

**meta.json keys:** `"libraryName"` (so filename), `"name"` (display name/ID), `"driverVersion"`

**Env vars set by `setDriverById()`:**
```
ADRENOTOOLS_DRIVER_PATH = {adrenotoolsContentDir}/{driverId}/
ADRENOTOOLS_HOOKS_PATH  = imageFs.getLibDir()
ADRENOTOOLS_DRIVER_NAME = libraryName from meta.json
```

**v762 driver binary patch (notadreno_utils.so):**
```
GPU driver version "512.530" → write byte 3 at offset 9856
GPU driver version "512.502" → write byte 2 at offset 9856
```
Via: `FileUtils.writeToBinaryFile(path, offset=9856, value)`

**Driver ZIP install:** extracts to tmp → validates `meta.json` → renames to `{driverName}/`
**Driver export:** MediaStore Downloads, output `{driverName}.zip`, MIME `"application/zip"`, Android 10+: `"relative_path"="Download/"`

---

### Magic Numbers Reference (R3-B additions)

| Value | Context |
|---|---|
| `270` | Mouse wheel delta multiplier (WinHandler) |
| `9856` | Binary offset in notadreno_utils.so (v762 driver patch) |
| `"512.530"` / `"512.502"` | GPU driver versions that trigger notadreno patch |
| `8192` | Downloader buffer size (bytes) |
| `1000` | Playtime save interval (ms) |
| `10000` | Recapture delay (ms) |
| `64` | WinHandler UDP packet buffer size (bytes) |
| `603979776` | FLAG_ACTIVITY_NEW_TASK \| FLAG_ACTIVITY_CLEAR_TASK |
| `5.0f` | Gyro sensitivity base multiplier |

---

---

## 27. Launchers, Renderer, Containers & PulseAudio (R3-C)

### GuestProgramLauncherComponent (PRoot mode) — Exact Values

**Field defaults:**
```
box86Preset    = "COMPATIBILITY"
box64Preset    = "COMPATIBILITY"
fexcorePreset  = "INTERMEDIATE"
wow64Mode      = true
pid            = -1 (static, protected by lock object)
```

**proot command (exact string):**
```
{nativeLibraryDir}/libproot.so --kill-on-exit
  --rootfs={rootDir}
  --cwd=/home/xuser
  --bind=/dev
  [--bind={rootDir}/tmp/shm:/dev/shm  ← only if WINEESYNC=1]
  --bind=/proc
  --bind=/sys
  [--bind={abs(bindingPath)} per bindingPaths]
  /usr/bin/env {escaped env vars} box64 {guestExecutable}
```

**PRoot host env:**
```
PROOT_TMP_DIR     = {context.getFilesDir()}/tmp
PROOT_LOADER      = {nativeLibraryDir}/libproot-loader.so
PROOT_LOADER_32   = {nativeLibraryDir}/libproot-loader32.so  (only if !wow64Mode)
```

**MangoHud config file:** `{rootDir}/home/xuser/mangohud.conf`
Content:
```
no_display=false
background_alpha=0.0
text_alpha=0.0
position=top-left
text_scale=1.0
fps_limit={fpsLimit or 0}
fps=0
frametime=0
frame_timing=0
frametime_graph=0
histogram=0
cpu_stats=0
gpu_stats=0
ram_stats=0
vram=0
```

**MangoHud env vars set:**
```
MANGOHUD              = "1"
MANGOHUD_CONFIGFILE   = "/home/xuser/mangohud.conf" (proot-relative)
MANGOHUD_DLSYM        = "1"
LD_PRELOAD            += /usr/lib/mangohud/libMangoHud.so (or /usr/lib/libMangoHud.so fallback)
VK_INSTANCE_LAYERS    += "VK_LAYER_MANGOHUD_overlay"
```
MangoHud reload signal: `SIGUSR1` (signal 10) via `Process.sendSignal(pid, 10)`

---

### BionicProgramLauncherComponent — All 28 Env Vars (exact, in order)

```
HOME                        = {filesDir}/imagefs/home/xuser
USER                        = "xuser"
TMPDIR                      = {rootDir}/usr/tmp
XDG_DATA_DIRS               = {rootDir}/usr/share
LD_LIBRARY_PATH             = {rootDir}/usr/lib:/system/lib64
XDG_CONFIG_DIRS             = {rootDir}/usr/etc/xdg
GST_PLUGIN_PATH             = {rootDir}/usr/lib/gstreamer-1.0
FONTCONFIG_PATH             = {rootDir}/usr/etc/fonts
VK_LAYER_PATH               = {rootDir}/usr/share/vulkan/implicit_layer.d:{rootDir}/usr/share/vulkan/explicit_layer.d
WINE_NO_DUPLICATE_EXPLORER  = "1"
PREFIX                      = {rootDir}/usr
DISPLAY                     = ":0"
WINE_DISABLE_FULLSCREEN_HACK = "1"
ENABLE_UTIL_LAYER           = "1"
GST_PLUGIN_FEATURE_RANK     = "ximagesink:3000"
ALSA_CONFIG_PATH            = {rootDir}/usr/share/alsa/alsa.conf:{rootDir}/usr/etc/alsa/conf.d/android_aserver.conf
ALSA_PLUGIN_DIR             = {rootDir}/usr/lib/alsa-lib
OPENSSL_CONF                = {rootDir}/usr/etc/tls/openssl.cnf
SSL_CERT_FILE               = {rootDir}/usr/etc/tls/cert.pem
SSL_CERT_DIR                = {rootDir}/usr/etc/tls/certs
WINE_X11FORCEGLX            = "1"
WINE_GST_NO_GL              = "1"
SteamGameId                 = "0"
PATH                        = {imageFs.getWinePath()}/bin:{rootDir}/usr/bin
ANDROID_SYSVSHM_SERVER      = {rootDir}/usr/tmp/.sysvshm/SM0
ANDROID_RESOLV_DNS          = <primary DNS from ConnectivityManager, fallback "8.8.4.4">
WINE_NEW_NDIS               = "1"
LD_PRELOAD                  = {imageFs.getLibDir()}/libandroid-sysvshm.so (empty string if absent)
```

**Plus conditional:**
```
WRAPPER_DISABLE_PLACED     = "1"  (if BOX64_MMAP32=="1" && !wineInfo.isArm64EC())
WINE_OPEN_WITH_ANDROID_BROWSER = "1"  (if pref set)
WINE_FROM_ANDROID_CLIPBOARD = "1" + WINE_TO_ANDROID_CLIPBOARD = "1"  (if pref set)
```

**arm64EC DLL selection:**
```java
if (emulator.toLowerCase().equals("fexcore"))
    HODLL = "libwow64fex.dll"
else
    HODLL = "wowbox64.dll"
```

**Override via env var:** `GUEST_PROGRAM_LAUNCHER_COMMAND` — if non-empty, command is taken from it (split by `;`, joined with spaces).

**Exec call:** `ProcessHelper.exec(command, envVars.toStringArray(), rootDir, terminationCallback)`
where `rootDir = {filesDir}/imagefs`

---

### GlibcProgramLauncherComponent — Key Differences

```
BOX64_LD_LIBRARY_PATH = {rootDir}/usr/lib/x86_64-linux-gnu  (Wine x86 libs)
XAUTHORITY = "/data/user/0/com.winlator/files/imagefs/home/xuser/.Xauthority"  (hardcoded!)
box64 path: {rootDir}/usr/local/bin/box64  (not /usr/bin/box64)
X socket check: /data/data/com.winlator/files/imagefs/tmp/.X11-unix/X0  (hardcoded, uses /tmp not /usr/tmp!)
winetricks cmd: {rootDir}/usr/bin/winetricks {arguments}
wineserver: {imageFs.getWinePath()}/bin/wineserver
```

---

### NativeRenderer — JNI Methods (all 4)

```java
public static native void eglSwapBuffersWrapper(long dpy, long surf)
public static native long getEGLDisplay()
public static native long getEGLSurface()
public static native boolean initEGLContext(Object nativeWindow)
```
Library: `libwinlator.so`. VirGL JNI is separate in `libvirglrenderer.so`.

---

### SaveManager — Storage Format

**Save storage path:** `{filesDir}/saves/`  
**File per save:** `{title}.json`  

**JSON fields:**
```
"ID"          int   (max existing + 1)
"Title"       String
"Path"        String (absolute path to save data)
"ContainerID" int    (optInt, -1 if absent)
```
Extra keys round-tripped verbatim via `extraData` JSONObject.

**transferSave:** strips `{container.getRootDir()}/.wine/drive_c` prefix from save path, copies to new container's `drive_c`.

---

### ContainerManager — Full JSON Fields

Container config file: `{homeDir}/xuser-{id}/.container`

Full JSON fields written by `Container.saveData()`:

| Key | Default |
|---|---|
| `"id"` | container.id |
| `"name"` | `"Container-{id}"` |
| `"screenSize"` | `"1280x720"` |
| `"envVars"` | (see DEFAULT_ENV_VARS in §4) |
| `"cpuList"` | null |
| `"cpuListWoW64"` | null |
| `"graphicsDriver"` | `"wrapper"` |
| `"graphicsDriverConfig"` | (see DEFAULT_GRAPHICSDRIVERCONFIG in §4) |
| `"emulator"` | `"FEXCore"` |
| `"dxwrapper"` | `"dxvk"` |
| `"ddrawrapper"` | `"wined3d"` |
| `"dxwrapperConfig"` | `""` (omitted if empty) |
| `"audioDriver"` | `"alsa-reflector"` |
| `"audioDriverConfig"` | `"performanceMode=1,volume=1.0,latencyMillis=20"` |
| `"wincomponents"` | (see DEFAULT_WINCOMPONENTS in §4) |
| `"drives"` | `"D:{downloads}E:/data/data/com.winlator.cmod/storage"` |
| `"showFPS"` | false |
| `"relativeMouseMovement"` | false |
| `"fullscreenStretched"` | false |
| `"inputType"` | 4 |
| `"wow64Mode"` | true |
| `"startupSelection"` | 1 (ESSENTIAL) |
| `"box64Version"` | DefaultVersion.BOX64 = "0.3.7" |
| `"box64Preset"` | `"COMPATIBILITY"` |
| `"fexcoreVersion"` | DefaultVersion.FEXCORE = "2507" |
| `"fexcorePreset"` | `"INTERMEDIATE"` |
| `"desktopTheme"` | WineThemeManager.DEFAULT_DESKTOP_THEME |
| `"extraData"` | JSONObject |
| `"rcfileId"` | 0 |
| `"midiSoundFont"` | `""` |
| `"lc_all"` | `""` |
| `"primaryController"` | 1 |
| `"controllerMapping"` | String of 10 null chars |
| `"wineVersion"` | only written if not main wine version |

**Container directory structure:**
```
{filesDir}/imagefs/home/xuser-{id}/           Container root dir
{filesDir}/imagefs/home/xuser-{id}/.container  Config JSON
{filesDir}/imagefs/home/xuser                  Symlink → ./xuser-{id} (active container)
```

**Migration rules (checkObsoleteOrMissingProperties):**
- `"dxcomponents"` → renamed `"wincomponents"`
- `"dxwrapper"` = `"original-wined3d"` → `"dxvk"`
- `"graphicsDriver"` ∈ {`"turnip-zink"`, `"turnip"`, `"llvmpipe"`} → `"wrapper"`
- appVersion < 16 → missing DEFAULT_ENV_VARS keys are merged into stored envVars

**Container prefix creation — priority search for prefix pack file:**
1. `prefixPack` from ContentProfile (if non-empty)
2. `"prefix.tar.xz"`
3. `"prefixPack.txz"`
4. `"prefixPack.tar.xz"`
5. `"prefixPack.tar.zst"`

**DLL copy after prefix creation:**
- arm64EC: `{wineInfo.path}/lib/wine/aarch64-windows/*.dll` → `system32/`
  - Exception: `iexplore.exe` on arm64EC pulled from `i386-windows/iexplore.exe`
- non-arm64EC: `{wineInfo.path}/lib/wine/x86_64-windows/*.dll` → `system32/`
- Always: `{wineInfo.path}/lib/wine/i386-windows/*.dll` → `syswow64/`

---

### XEnvironment — Component Registration & PulseAudio

Components are registered by the call site (not hardcoded in XEnvironment):
1. `ALSAServerComponent` — socket `/usr/tmp/.sound/AS0`
2. `BionicProgramLauncherComponent` — bionic mode
3. `GlibcProgramLauncherComponent` — glibc mode
4. `GuestProgramLauncherComponent` — proot mode
5. `NetworkInfoUpdateComponent` — writes `{imageFs.getTmpDir()}/adapterinfo` + `/etc/hosts`
6. `PulseAudioComponent` — socket `/usr/tmp/.sound/PS0`
7. `SysVSharedMemoryComponent` — socket `/usr/tmp/.sysvshm/SM0`
8. `VirGLRendererComponent` — socket `/tmp/.virgl/V0`
9. `XServerComponent` — socket `/usr/tmp/.X11-unix/X0`

**Tmp dir:** `{filesDir}/tmp` — cleared on every `startEnvironmentComponents()`

**PulseAudio launch (exact):**
- Working dir: `{filesDir}/pulseaudio`
- Config file: `{workingDir}/default.pa`
- Config content:
  ```
  load-module module-native-protocol-unix auth-anonymous=1 auth-cookie-enabled=0 socket="{socketPath}"
  load-module module-aaudio-sink
  set-default-sink AAudioSink
  ```
- Libs copied from APK: `libltdl.so`, `libpulseaudio.so`, `libpulse.so`, `libpulsecommon-13.0.so`, `libpulsecore-13.0.so`, `libsndfile.so`
- `LD_LIBRARY_PATH` = `/system/lib64:{modulesDir}:{workingDir}` (arm64)
- Exact command:
  ```
  {workingDir}/libpulseaudio.so --system=false --disable-shm=true --fail=false -n
    --file=default.pa --daemonize=false --use-pid-file=false --exit-idle-time=-1
  ```

---

## 28. Database Schema, DriverResolver, MIDI & X11 Atoms (R3-D)

### PluviaDatabase — Complete Schema

**Database name:** `pluvia_database`  
**Schema version:** `1`  
**Identity hash:** `78afbbc7cc9b73d85b863fcceb069e27`  
**Migration strategy:** `fallbackToDestructiveMigration()` — no manual migrations  
**Dev machine source path:** `D:/procect vscode/winlator mod/winlator-dev/app/src/main/java/com/winlator/cmod/db/PluviaDatabase.kt`

#### Table: `app_info`
Columns: `id` INTEGER PK, `is_downloaded` INTEGER, `downloaded_depots` TEXT, `dlc_depots` TEXT

#### Table: `cached_license`
Columns: `id` INTEGER PK AUTOINCREMENT, `license_json` TEXT

#### Table: `app_change_numbers`
Columns: `appId` INTEGER PK, `changeNumber` INTEGER

#### Table: `downloading_app_info`
Columns: `appId` INTEGER PK, `dlcAppIds` TEXT

#### Table: `encrypted_app_ticket`
Columns: `app_id` INTEGER PK, `result` INTEGER, `ticket_version_no` INTEGER, `crc_encrypted_ticket` INTEGER, `cb_encrypted_user_data` INTEGER, `cb_encrypted_app_ownership_ticket` INTEGER, `encrypted_ticket` BLOB, `timestamp` INTEGER

#### Table: `app_file_change_lists`
Columns: `appId` INTEGER PK, `userFileInfo` TEXT

#### Table: `steam_app` (59 columns)
All column names:
`id`, `package_id`, `owner_account_id`, `license_flags`, `received_pics`, `last_change_number`, `depots`, `branches`, `name`, `type`, `os_list`, `release_state`, `release_date`, `metacritic_score`, `metacritic_full_url`, `logo_hash`, `logo_small_hash`, `icon_hash`, `client_icon_hash`, `client_tga_hash`, `small_capsule`, `header_image`, `library_assets`, `primary_genre`, `review_score`, `review_percentage`, `controller_support`, `demo_of_app_id`, `developer`, `publisher`, `homepage_url`, `game_manual_url`, `load_all_before_launch`, `dlc_app_ids`, `is_free_app`, `dlc_for_app_id`, `must_own_app_to_purchase`, `dlc_available_on_store`, `optional_dlc`, `game_dir`, `install_script`, `no_servers`, `order`, `primary_cache`, `valid_os_list`, `third_party_cd_key`, `visible_only_when_installed`, `visible_only_when_subscribed`, `launch_eula_url`, `require_default_install_folder`, `content_type`, `install_dir`, `use_launch_cmd_line`, `launch_without_workshop_updates`, `use_mms`, `install_script_signature`, `install_script_override`, `config`, `ufs`

Key queries:
```sql
-- Owned apps (excludes app 480 = Spacewar):
SELECT * FROM steam_app WHERE id != 480 AND package_id != ? AND type != 0 ORDER BY LOWER(name)

-- DLC with downloadable depots:
SELECT * FROM steam_app AS app WHERE dlc_for_app_id = ? AND depots <> '{}'
  AND EXISTS (SELECT * FROM steam_license AS license WHERE license.license_type <> 0
    AND REPLACE(REPLACE(license.app_ids, '[', ','), ']', ',') LIKE ('%,' || app.id || ',%'))

-- Apps without PICS data:
SELECT * FROM steam_app WHERE received_pics = 0 AND package_id != ? AND owner_account_id = ?
```

#### Table: `steam_license` (16 columns)
Columns: `packageId` INTEGER PK, `last_change_number`, `time_created`, `time_next_process`, `minute_limit`, `minutes_used`, `payment_method`, `license_flags`, `purchase_code` TEXT, `license_type`, `territory_code`, `access_token`, `owner_account_id` TEXT, `master_package_id`, `app_ids` TEXT, `depot_ids` TEXT

**Stale license cleanup:** batched DELETE/SELECT using `SQLITE_MAX_VARS`.

---

### DriverResolver — Exact Values

**4 default driver repositories:**
```
"MrPurple666/purple-turnip"         → display name "Mr. Purple Turnip"
"crueter/GameHub-8Elite-Drivers"    → display name "GameHub Adreno 8xx"
"K11MCH1/AdrenoToolsDrivers"        → display name "KIMCHI Turnip"
"Weab-chan/freedreno_turnip-CI"      → display name "Weab-Chan Freedreno"
```

**GitHub API mirror fallback chain (tried in order):**
1. `https://api.github.com/repos/`
2. `https://gh.api.99988866.xyz/`
3. `https://ghproxy.com/https://api.github.com/repos/`
4. `https://mirror.ghproxy.com/https://api.github.com/repos/`

URL pattern: `{mirror}{repo}/releases?per_page=100&page={n}` (pages 1–5)

**Download mirror fallback chain:**
1. `{asset.browser_download_url}` (direct)
2. `https://ghproxy.com/{browser_download_url}`
3. `https://mirror.ghproxy.com/{browser_download_url}`

**HTTP parameters:**
- Connect/Read timeout: 15,000ms (search), 30,000ms (download)
- Accept: `application/vnd.github.v3+json`
- User-Agent: `Winlator-App`
- `RELEASES_PER_PAGE = 100`, `MAX_RELEASE_PAGES = 5`

**SharedPreferences:** name `"DriverResolverPrefs"`, keys `"custom_repositories"`, `"custom_repository_names_{normalizedUrl}"`

**Driver name parsing:** strip `.zip`, split by `_`. If last segment matches `(?i)(Gmem|Sysmem|Freedreno|Mesa|Zink).*` → name = `"{baseName} ({lastPart})"`.

---

### MIDI Handler — UDP Protocol

**MidiHandler ports:**
```
Server (listener): UDP 7942
Client (sender):   UDP 7941
Buffer size:       9 bytes, LITTLE_ENDIAN
Inactivity all-notes-off: 100ms
Scheduler check interval: 200ms (CHECK_DELAY)
```

**Request codes (first byte):**
```
1 = MIDI_SHORT   → send 3-byte ShortMessage to receiver
5 = MIDI_OPEN    → open SoftSynthesizer + load SF2
6 = MIDI_CLOSE   → close synth + receiver
```
Defined but unhandled: `MIDI_LONG=2`, `MIDI_PREPARE=3`, `MIDI_UNPREPARE=4`, `MIDI_RESET=7`

**Libraries:** `cn.sherlock.com.sun.media.sound.SF2Soundbank` + `SoftSynthesizer`; `jp.kshoji.javax.sound.midi.Receiver` + `ShortMessage`

**All-notes-off:** 128 notes × 16 channels → `ShortMessage(128, channel, note, 0)`

**Note:** No jp/kshoji USB MIDI hardware device library present. jp.kshoji package is used only for the javax.sound.midi software interfaces (ShortMessage, Receiver).

---

### X11 Atom Table — Predefined IDs 1–68

```
1=PRIMARY        2=SECONDARY      3=ARC            4=ATOM
5=BITMAP         6=CARDINAL       7=COLORMAP       8=CURSOR
9=CUT_BUFFER0    10=CUT_BUFFER1   11=CUT_BUFFER2   12=CUT_BUFFER3
13=CUT_BUFFER4   14=CUT_BUFFER5   15=CUT_BUFFER6   16=CUT_BUFFER7
17=DRAWABLE      18=FONT          19=INTEGER        20=PIXMAP
21=POINT         22=RECTANGLE     23=RESOURCE_MANAGER  24=RGB_COLOR_MAP
25=RGB_BEST_MAP  26=RGB_BLUE_MAP  27=RGB_DEFAULT_MAP   28=RGB_GRAY_MAP
29=RGB_GREEN_MAP 30=RGB_RED_MAP   31=STRING        32=VISUALID
33=WINDOW        34=WM_COMMAND    35=WM_HINTS      36=WM_CLIENT_MACHINE
37=WM_ICON_NAME  38=WM_ICON_SIZE  39=WM_NAME       40=WM_NORMAL_HINTS
41=WM_SIZE_HINTS 42=WM_ZOOM_HINTS 43=MIN_SPACE     44=NORM_SPACE
45=MAX_SPACE     46=END_SPACE     47=SUPERSCRIPT_X  48=SUPERSCRIPT_Y
49=SUBSCRIPT_X   50=SUBSCRIPT_Y   51=UNDERLINE_POSITION  52=UNDERLINE_THICKNESS
53=STRIKEOUT_ASCENT  54=STRIKEOUT_DESCENT  55=ITALIC_ANGLE  56=X_HEIGHT
57=QUAD_WIDTH    58=WEIGHT        59=POINT_SIZE    60=RESOLUTION
61=COPYRIGHT     62=NOTICE        63=FONT_NAME     64=FAMILY_NAME
65=FULL_NAME     66=CAP_HEIGHT    67=WM_CLASS      68=WM_TRANSIENT_FOR
```
Additional atoms interned dynamically at runtime.

---

### X11 Event Mask Constants (Event.java)

```
KEY_PRESS=1             KEY_RELEASE=2           BUTTON_PRESS=4
BUTTON_RELEASE=8        ENTER_WINDOW=16         LEAVE_WINDOW=32
POINTER_MOTION=64       POINTER_MOTION_HINT=128  BUTTON1_MOTION=256
BUTTON2_MOTION=512      BUTTON3_MOTION=1024      BUTTON4_MOTION=2048
BUTTON5_MOTION=4096     BUTTON_MOTION=8192       KEYMAP_STATE=16384
EXPOSURE=32768          VISIBILITY_CHANGE=65536  STRUCTURE_NOTIFY=131072
RESIZE_REDIRECT=262144  SUBSTRUCTURE_NOTIFY=524288  SUBSTRUCTURE_REDIRECT=1048576
FOCUS_CHANGE=2097152    PROPERTY_CHANGE=4194304  COLORMAP_CHANGE=8388608
OWNER_GRAB_BUTTON=16777216
```

### Property.java Formats
```
Format.BYTE_ARRAY  = 8
Format.SHORT_ARRAY = 16
Format.INT_ARRAY   = 32
Mode: REPLACE, PREPEND, APPEND
```
Data in `ByteBuffer` LITTLE_ENDIAN. `getInt(i)` → `data.getInt(i*4)`.

---

### UpdateManager — Version Comparison Algorithm

1. Strip leading `v` from both versions
2. Strip everything after first `-` (ignores `-beta`, `-pre` suffixes)
3. Split by `.`, compare numerically segment by segment (missing = `0`)
4. Strip non-numeric prefix from each segment (`"1rc2"` → `1`)
5. Returns `cmp > 0` = update available

**APK download path:** `{externalFilesDir(DOWNLOADS)}/update.apk`
**FileProvider authority:** `{packageName}.tileprovider`
**Beta flag:** `"receive_beta_updates"` (boolean, default false) — if false, skip `prerelease=true` releases
**Skip flag:** `"skipped_version"` (String) — exact `tagName` to skip

---

---

## 29. Registry, Theme, Restore & Workarounds (R4-A)

### RestoreActivity

**Process:** `getIntent().getData()` (backup URI) → `TarCompressorUtils.extractTar(backupFile, dataDir)` → delete temp file → re-launch app.
**Target dir:** `getFilesDir().getParentFile()` (app data root, e.g. `/data/data/com.winlator.ref4ikk/`)
**Symlink skip rule:** skips symlinks whose target contains `"Download"` OR `"storage"`
**Success:** toast `"Data restored successfully."` → finish + `getLaunchIntentForPackage()`
**Failure:** toast `"Data restore failed."` → finish; log tag `"RestoreOp"`

---

### Win32AppWorkarounds — Only One Registered App

**Lookup:** `className.toLowerCase(Locale.ENGLISH)` — case-insensitive

**Only registered workaround: `"dxmd.exe"` (Deus Ex: Mankind Divided)**

5 sub-workarounds in order:
1. `TaskAffinityWorkaround(taskAffinityMask)` — sets CPU affinity at window creation
2. `DXWrapperWorkaround(Container.DEFAULT_DXWRAPPER)` — forces default DX wrapper
3. `EnvVarsWorkaround("WINEVMEMMAXSIZE", "16384")` — sets Wine virtual memory max to 16384 MB
4. `EnvVarsWorkaround("WINEOVERRIDEAFFINITYMASK", Short.toString(taskAffinityMask))` — passes affinity mask to Wine
5. `DelayedTaskAffinityWorkaround(taskAffinityMask)` — re-applies affinity after **40000ms** (40 seconds)

**Fields:** `taskAffinityMask` (short), `taskAffinityMaskWoW64` (short) — set via setters

---

### WineRegistryEditor — File Format Details

**Buffer size:** `char[131072]` (128 KB); `BufferedReader`/`BufferedWriter` also 131072
**Temp clone:** all edits on clone file → atomic `renameTo` on `close()` if `modified==true`

**Windows FILETIME epoch offset:** `System.currentTimeMillis() + 116444736000000000L`
**Timestamp line format:** `\n#time=%x%08x` (high word hex, low word hex padded 8)

**Value formats:**
```
String:  "escaped_value"
DWORD:   dword:XXXXXXXX  (8-hex digit, from Integer.decode("0x"+hex))
Hex:     hex:XX,XX,XX,...  (wrap at col 56 with \\\n  continuation)
```

**JSON import format (`importReg`):**
- Input: JSON object where keys = registry key paths; values = arrays of `{type, name, value}` objects
- Types: `"String"` → `setStringValue()`, `"Dword"` → `setDwordValue()`

**Key path separator:** `\` (backslash); escape rule: `\` → `\\`, `"` → `\"`

---

### ShortcutBroadcastReceiver

**Action:** `"com.winlator.SHORTCUT_ADDED"`
**Extras read:** `"shortcut_added"` (boolean), `"shortcut_name"` (String), `"shortcut_icon"` (Bitmap), `"android.intent.extra.shortcut.INTENT"` (Intent)
**Success path:** `shortcutManager.requestPinShortcut()` with no callback PendingIntent
**ShortcutInfo:** ID = shortcutName, shortLabel = shortcutName, icon = `Icon.createWithBitmap()`

---

### WineThemeManager

**`DEFAULT_DESKTOP_THEME` = `"LIGHT,IMAGE,#0277bd"`**

**Registry file modified:** `/home/xuser/.wine/user.reg`

**Wallpaper path:** `{rootDir}/home/xuser/.cache/wallpaper.bmp`
**User wallpaper override:** `{rootDir}/home/xuser/.config/user-wallpaper.png`
**Default wallpaper colors:**
- Top half: `0xFF011F1B` (very dark teal)
- Bottom half: `0xFF022F3D` (dark blue-teal)
- Image positioned at `outputHeight * 0.6666667f` (2/3 height), `inTargetDensity=240`

**Wallpaper registry keys (`Control Panel\Desktop`):**
```
Wallpaper      = "/home/xuser/.cache/wallpaper.bmp"
WallpaperStyle = "2" (stretched)
TileWallpaper  = "0"
```

**LIGHT theme — `Control Panel\Colors` (all RGB space-separated strings):**
```
ActiveBorder=245 245 245    ActiveTitle=96 125 139      Background=(dynamic)
ButtonAlternateFace=245 245 245  ButtonDkShadow=158 158 158  ButtonFace=245 245 245
ButtonHilight=224 224 224   ButtonLight=255 255 255     ButtonShadow=158 158 158
ButtonText=0 0 0            GradientActiveTitle=96 125 139   GradientInactiveTitle=117 117 117
GrayText=158 158 158        Hilight=2 136 209           HilightText=255 255 255
HotTrackingColor=2 136 209  InactiveBorder=255 255 255  InactiveTitle=117 117 117
InactiveTitleText=200 200 200  InfoText=0 0 0           InfoWindow=255 255 255
Menu=245 245 245            MenuBar=245 245 245         MenuHilight=2 136 209
MenuText=0 0 0              Scrollbar=245 245 245       TitleText=255 255 255
Window=245 245 245          WindowFrame=158 158 158     WindowText=0 0 0
```

**DARK theme — `Control Panel\Colors`:**
```
ActiveBorder=48 48 48       ActiveTitle=33 33 33        Background=(dynamic)
ButtonAlternateFace=33 33 33  ButtonDkShadow=0 0 0      ButtonFace=33 33 33
ButtonHilight=48 48 48      ButtonLight=48 48 48        ButtonShadow=0 0 0
ButtonText=255 255 255      GradientActiveTitle=33 33 33  GradientInactiveTitle=33 33 33
GrayText=117 117 117        Hilight=2 136 209           HilightText=255 255 255
HotTrackingColor=2 136 209  InactiveBorder=48 48 48     InactiveTitle=33 33 33
InactiveTitleText=117 117 117  InfoText=255 255 255     InfoWindow=255 255 255
Menu=33 33 33               MenuBar=48 48 48            MenuHilight=2 136 209
MenuText=255 255 255        Scrollbar=48 48 48          TitleText=255 255 255
Window=48 48 48             WindowFrame=0 0 0           WindowText=255 255 255
```

---

### WineStartMenuCreator

**Source asset:** `"wine_startmenu.json"` (read from APK assets, not disk)
**State file:** `{containerDir}/.startmenu` (JSON array of current entries, for diff-based cleanup)
**LNK files:** `{container.getStartMenuDir()}/{name}.lnk` (recursive for nested folders)
**LNK creation:** `MSLink.createFile(options, outputFile)`

**JSON entry fields:** `"name"`, `"children"` (optional array = folder), `"path"`, `"cmdArgs"` (optional), `"iconLocation"` (optional, default=path), `"iconIndex"` (optional, default=0), `"showCommand"` (optional)

**`showCommand` values:** `"SW_SHOWMAXIMIZED"` → `3`, `"SW_SHOWMINNOACTIVE"` → `7`, default → `1`

**Cleanup:** recursively removes old `.lnk` files; deletes empty directories.

---

---

## 30. FileManager, Terminal, Controls, BigPicture & NetworkMonitor (R4-C)

### FileManagerActivity

**Intent extras:**
```
"browseMode"        boolean — true = action menu on tap; false = return selected path
"containerId"       int — if >= 0, shows container drive root instead of filesystem
"rootPath"          String — navigation ceiling (cannot go above)
"startPath"         String — initial directory
"title"             String — override ActionBar title
"allowedExtensions" String[] — case-insensitive extension filter
```
**Result extra:** `"selectedFilePath"` (String, absolute path)

**Container mode drives exposed:**
```
C: → {containerDir}/.wine/drive_c
Z: → {containerDir}/../..   (Android root via getCanonicalFile)
+ any drives from container.drivesIterator()
```

**SortBy enum:** `NAME` (default), `DATE` (newest first), `SIZE` (largest first)

**Context menu operations:** Open, Share (`FileProvider`, MIME `application/octet-stream`), Copy, Move, Rename (`File.renameTo()`), Delete (recursive)
**Toolbar:** New Folder, Paste (8192-byte I/O loop, collision suffix ` (N)`), Cancel clipboard, Refresh, Toggle layout, Search (substring filter), Sort by...

**Permissions requested:** `READ_EXTERNAL_STORAGE`, `WRITE_EXTERNAL_STORAGE` (request code `123`)

---

### TerminalActivity

**Not a PTY terminal** — single command input field, runs command via `BionicProgramLauncherComponent.execShellCommand(command)` (inside Wine/Bionic environment).

**Startup:** sets chmod 0755 on all files in `{imageFs.getRootDir()}/usr/bin`

**Blocked commands:** `"bash"` and `"dash"` only → prints `"Interactive shells are unsupported."`

**All other commands:** passed directly to `execShellCommand()` with no sanitization.

---

### ControlsEditorActivity

**ControlElement.Type enum (6 types):**
1. `BUTTON` — 1 binding; supports Shape, ToggleSwitch, text/icon
2. `D_PAD` — 4 bindings (Up/Right/Down/Left); defaults W/D/S/A
3. `RANGE_BUTTON` — 1 axis range scroller; has Range sub-type
4. `STICK` — 4 bindings (Up/Right/Down/Left); defaults W/D/S/A
5. `TRACKPAD` — 4 bindings; defaults MOUSE_MOVE_UP/RIGHT/DOWN/LEFT
6. `STEERING_WHEEL` — 2 bindings (Right/Left); defaults D/A

**ControlElement.Shape enum (BUTTON only):** `CIRCLE`, `RECT`, `ROUND_RECT`, `SQUARE`

**ControlElement.Range enum (RANGE_BUTTON only):**
```
FROM_A_TO_Z       max=26
FROM_0_TO_9       max=10
FROM_F1_TO_F12    max=12
FROM_NP0_TO_NP9   max=10 (numpad)
```

**ControlElement constants:**
```
BUTTON_MIN_TIME_TO_KEEP_PRESSED  = 300ms
DPAD_DEAD_ZONE                   = 0.3f
STICK_DEAD_ZONE                  = 0.15f
STICK_SENSITIVITY                = 3.0f
TRACKPAD_ACCELERATION_THRESHOLD  = 4
TRACKPAD_MAX_SPEED               = 20.0f
TRACKPAD_MIN_SPEED               = 0.8f
Default opacity                  = 0.5f
Default scale                    = 1.0f
Default iconScale                = 1.0f
```

**Custom icons:** `CustomIconManager` — imported via `image/*` picker; stored as short iconId; displayed at 40dp × 40dp, 2dp margin, 4dp padding.

---

### BigPictureActivity

**SteamGridDB API key (plain text):** `4765cce5e92f8406ab0f5346c3b5e3ba`
**Base URL:** `https://www.steamgriddb.com/api/v2/`

**API call 1 — search:**
```
GET /search/autocomplete/{term}
Authorization: Bearer 4765cce5e92f8406ab0f5346c3b5e3ba
→ takes first result (no scoring)
```

**API call 2 — grids:**
```
GET /grids/game/{gameId}
styles=alternate, dimensions=600x900, types=static
→ takes first grid result (score field parsed but never used for selection)
```

**Cover art cache:** `getCacheDir()/coverArtCache/{shortcut.name}.png`, PNG quality 100

**Background music:**
- MP3 path: `{filesDir}/bigpicturemode_bgmusic.mp3`
- YouTube embed URL: `https://www.youtube.com/embed/{videoId}?enablejsapi=1`
- Default YouTube video ID (hardcoded): `"yNwKYgM6SkM"`
- YouTube validation regex: `^(https?://)?(www\.)?(youtube\.com|youtu\.?be)/.+$`
- Auto-play: simulates touch at center 1000ms after `onPageFinished`

**Background animation types:**
```
"ab"              — default animation
"ab_gear"         — gear animation
"ab_quilt"        — quilt animation
"folder"          — PNG frame animation from user folder
"custom_wallpaper" — static bitmap (Center/Stretch/Tile)
"none"            — no animation
```

**SharedPreferences keys (`selected_animation`, `custom_wallpaper_path`, `wallpaper_display_mode`, `parallax_mode`, `bg_music_enabled`, `music_source`, `selected_mp3_path`, `saved_youtube_url`, `png_folder_uri`, `frame_duration_seekbar`)**

**Request codes:** `REQUEST_CODE_UPLOAD_CUSTOM_COVER=1069`, `REQUEST_CODE_SELECT_MP3=1070`, `REQUEST_CODE_SELECT_WALLPAPER=1080`, `REQUEST_CODE_SELECT_PNG_FOLDER=1090`

**Game launch:** starts `XServerDisplayActivity` with `container_id`, `shortcut_path`, `shortcut_name`, `disableXinput`

---

### NetworkMonitor (Kotlin singleton)

**Monitored:** `NET_CAPABILITY_INTERNET` via `ConnectivityManager.NetworkCallback`

**Skipped transports:** VPN (4), WiFi-Aware (5), loopback (6)

**`hasInternet`:** `StateFlow<Boolean>` — true if any non-skipped network has `NET_CAPABILITY_VALIDATED`

**`isWifiConnected`:** `StateFlow<Boolean>` — true if any validated network has transport WIFI (1) or ETHERNET (3)

---

---

## 31. Steam Service Internals, Cloud Sync, Workshop & Game Launcher (R4-B)

### SteamService — All Constants

```
DOWNLOAD_INFO_DIR          = ".DownloadInfo"
DOWNLOAD_INFO_FILE         = "depot_bytes.json"
LEGACY_DOWNLOAD_INFO_FILE  = "bytes_downloaded.txt"
STEAM_CONTROLLER_CONFIG_FILENAME = "steam_controller_config.vdf"
INVALID_APP_ID             = Integer.MAX_VALUE
INVALID_PKG_ID             = Integer.MAX_VALUE
MAX_PICS_BUFFER            = 256
MAX_RETRY_ATTEMPTS         = 20
```

**SteamClient configuration:**
```
Protocol types:      WEB_SOCKET only (no TCP)
requestTimeout:      30 seconds
responseTimeout:     120 seconds
ConnectionTimeout:   60,000 ms
OkHttp connectTimeout: 10s, readTimeout: 60s, writeTimeout: 30s
Callback pump:       runWaitCallbacks(1000L) — polls every 1000ms
```

**PICS polling:**
```
Interval: 60 seconds per iteration
Channels: appPicsChannel (capacity 1000), packagePicsChannel (capacity 1000), overflow=SUSPEND
Batch size: MAX_PICS_BUFFER = 256
```

**Reconnect:** max 20 attempts, reset on successful connection.

**Download DownloadPhase states:** `UNKNOWN`, `PREPARING`, `VERIFYING`, `PATCHING`, `DOWNLOADING`, `QUEUED`, `PAUSED`, `FAILED`, `COMPLETE`, `CANCELLED`

**Download persistence:**
```
{appDirPath}/.DownloadInfo/depot_bytes.json       (JSON snapshot)
{appDirPath}/.DownloadInfo/bytes_downloaded.txt   (legacy text)
```

**Install paths:**
```
Internal: {baseDataDirPath}/Steam/steamapps/common/
External: {externalStoragePath}/Steam/steamapps/common/
Internal staging: {baseDataDirPath}/Steam/steamapps/staging/
External staging: {externalStoragePath}/Steam/steamapps/staging/
Server list: {baseCacheDirPath}/server_list.bin
```

**Component CDN base:** `https://github.com/maxjivi05/Components/releases/download/Components`

**ImageFS download filenames:**
```
BIONIC variant: imagefs_bionic.txz
Other:          imagefs_gamenative.txz
Patches:        imagefs_patches_gamenative.tzst
Steam file:     steam.tzst
Steam token:    steam-token.tzst  (alt: steam-token-r2.tzst)
```

**Steam controller config search priority:**
```
1. controller_xboxone_gamepad_fps.vdf
2. controller_xboxone_wasd.vdf
3. gamepad_joystick.vdf (×2 fallback)
Default fallback types: controller_xbox360, controller_xboxone, controller_steamcontroller_gordon, controller_generic
```

**EXE scoring heuristics:**
```
Phase 1: explicit launchExecutable from AppInfo
Phase 2: scorer
  + UE_SHIPPING: ".*-win(32|64)(-shipping)?\.exe$"   (IGNORE_CASE)
  + UE_BINARIES: ".*/binaries/win(32|64)/.*\.exe$"   (IGNORE_CASE)
  - NEGATIVE_KEYWORDS (lowercased match): crash, handler, viewer, compiler, tool, setup, unins, eac, launcher, steam
  - GENERIC_NAME skip: "^[a-z]\d{1,3}\.exe$"         (IGNORE_CASE)
  - requires .exe extension
Phase 3: largest-depot fallback
Phase 4: install dir path fallback
```

**Callbacks registered:**
`ConnectedCallback`, `DisconnectedCallback`, `LoggedOnCallback`, `LoggedOffCallback`, `LicenseListCallback`, `PersonaStateCallback`, `PlayingSessionStateCallback`, `PICSChangesCallback`, `ServiceMethodResponse` (family groups)

**GSE/Goldberg save paths:**
```
{wineprefix}/drive_c/users/xuser/AppData/Roaming/GSE Saves/{appId}/
{wineprefix}/drive_c/Program Files (x86)/Steam/userdata/{accountId}/{appId}/
  → achievements.json  (Goldberg format)
  → steam_settings/    (config dir)
```

---

### SteamAutoCloud — Cloud Sync Details

```
MAX_USER_FILE_RETRIES = 3
Hash algorithm: SHA-1 (MessageDigest), buffer 8192 bytes
Placeholder regex: "%\\w+%"  (matches %VARIABLE% style)
Upload User-Agent: "Valve/Steam HTTP Client 1.0"
Upload Content-Type: "application/octet-stream"
```

**Sync decision tree:**
```
No local saves + cloud has files → force DOWNLOAD
Local > Cloud → UPLOAD wins
Both sides changed → CONFLICT → resolve by SaveLocation (Local=upload, Remote=download, None=upload)
Local changes, no new cloud → UPLOAD
No local changes, new cloud → DOWNLOAD
Neither changed → do nothing
```

---

### SteamUtils — File Writes Reference

**enrichSteamSettings config files (written to steam_settings/):**
```
configs.user.ini:
  [user::general]
  account_name={username}
  account_steamid={steamId64}
  language={language}
  ticket={ticketBase64}
  [user::saves]
  local_save_path=C:\Program Files (x86)\Steam\userdata\{accountId}\

configs.app.ini:
  [app::dlcs]
  unlock_all={0 or 1}
  {dlcId}=dlc  (per DLC)

configs.main.ini:
  [main::connectivity]
  disable_lan_only={0 or 1}
  offline=1  (if isOffline)
  [main::stats]
  allow_unknown_stats=1

steam_appid.txt:      appId as string
depots.txt:           depot IDs list
supported_languages.txt: arabic, bulgarian, schinese, tchinese, czech, danish, dutch, english,
  finnish, french, german, greek, hungarian, italian, japanese, koreana,
  norwegian, polish, portuguese, brazilian, romanian, russian, spanish,
  latam, swedish, thai, turkish, ukrainian, vietnamese
```

**Interfaces extraction regex:** `"^Steam[A-Za-z]+[0-9]{3}$"` (IGNORE_CASE) → `steam_interfaces.txt`

**skipFirstTimeSteamSetup — CommonRedist registry entries written (system.reg):**
```
DirectX\Jun2010      .NET\3.5/3.5 Client Profile/4.0/4.0 Client Profile/4.5.1/4.5.2/4.6/4.6.1/4.6.2/4.7/4.7.1/4.7.2/4.8/4.8.1
XNA\3.0/3.1/4.0      OpenAL\2.0.7.0
(Both Software\Valve\Steam\Apps\CommonRedist and Software\Wow6432Node\Valve\Steam\Apps\CommonRedist)
```

**autoLoginUserChanges Wine registry keys (`Software\Valve\Steam`):**
```
AutoLoginUser  = PrefManager.getUsername()
SteamExe       = "C:\\Program Files (x86)\\Steam\\steam.exe"
SteamPath      = "C:\\Program Files (x86)\\Steam"
InstallPath    = "C:\\Program Files (x86)\\Steam"
loginusers.vdf → {wineprefix}/drive_c/Program Files (x86)/Steam/config/loginusers.vdf
```

**createAppManifest paths:**
```
steamapps dir: {wineprefix}/drive_c/Program Files (x86)/Steam/steamapps/
appmanifest_{appId}.acf
Symlink: steamapps/common/{installDir} → actual install path
CommonRedist ACF: appmanifest_228980.acf
```

**Extra save mappings:** `steam_save_mappings.json` asset + user override `{filesDir}/steam_save_mappings.json`

---

### WorkshopManager

```
MAX_PAGES = 50, PAGE_SIZE = 100
COMPLETE_MARKER = ".workshop_complete"
Workshop content dir: {wineprefix}/drive_c/Program Files (x86)/Steam/steamapps/workshop/content/{appId}/
Item marker file: {itemDir}/.workshop_complete (stores timestamp as string)
```

**RPC:** `CPublishedFile_GetUserFiles_Request` — type `"mysubscriptions"`, filetype `0`, paginated 1–50 × 100 items.

**Sync decision:** if marker absent OR no content files OR `item.timeUpdated > savedTimestamp` → re-download.

---

### SteamGameLauncher

```
STEAM_LOADER_WIN_PATH = "C:/Program Files (x86)/Steam/steamclient_loader_x64.exe"
STEAM_LOADER_EXEC     = "wine C:/Program Files (x86)/Steam/steamclient_loader_x64.exe"
Placeholder steamId64 = "76561198000000000"
```

**.desktop shortcut format (SteamGameLauncher):**
```
[Desktop Entry]
Type=Application
Name={app.getName()}
Exec=wine C:/Program Files (x86)/Steam/steamclient_loader_x64.exe
Icon=steam_icon_{app.getId()}

[Extra Data]
game_source=STEAM
app_id={app.getId()}
container_id={container.id}
game_install_path={installPath}
launch_exe_path={launchExecutable}
use_container_defaults=1
```

**writeGameSteamSettings:** walks gameDir to depth ~5, finds all `steam_api.dll`, `steam_api64.dll`, `steamclient.dll`, `steamclient64.dll` → generates `steam_interfaces.txt` per file → calls `writeCompleteSettingsDir()` + `enrichSteamSettings()` per candidate dir.

**copySteamRuntimeIntoGameDir:** copies all of steamDir into gameDir/Steam/, excluding `dumps/`, `steamapps/`, `userdata/`.

**A: drive mount:** adds `"A:{gamePath}"` to container.getDrives() (replaces existing A: entry).

---

---

## 32. Assets, GamePad, Controller Bindings & WinComponents (R5-C)

### wine_startmenu.json — All 10 Entries

**Group: Programs**
| Name | Path |
|---|---|
| Internet Explorer | `C:/windows/system32/iexplore.exe` |
| Notepad | `C:/windows/notepad.exe` |
| Wordpad | `C:/windows/system32/write.exe` |

**Group: System Tools**
| Name | Path | cmdArgs | iconLocation | iconIndex |
|---|---|---|---|---|
| Computer | `C:/windows/wfm.exe` | — | — | — |
| Task Manager | `C:/windows/system32/taskmgr.exe` | — | — | — |
| Registry Editor | `C:/windows/regedit.exe` | — | — | — |
| Command Prompt | `C:/windows/system32/cmd.exe` | — | — | — |
| Wine Mono Installer | `C:/windows/system32/control.exe` | `appwiz.cpl install_mono` | `shell32.dll` | `-25` |
| Wine Gecko Installer | `C:/windows/system32/control.exe` | `appwiz.cpl install_gecko` | `shell32.dll` | `-25` |
| Wine Configuration | `C:/windows/system32/winecfg.exe` | — | — | — |

---

### gpu_cards.json — Structure

**Total entries: 289** — ALL desktop/laptop PC GPUs only (used to spoof Wine GPU identity).

**Vendors:**
- `vendorID 4318 (0x10DE)` — NVIDIA: 146 entries
- `vendorID 32902 (0x8086)` — Intel: 80 entries
- `vendorID 4098 (0x1002)` — AMD/ATI: 63 entries

**No mobile GPUs (Adreno, Mali, PowerVR) present.**

**Schema:** `{ "name": string, "deviceID": int, "vendorID": int }` (flat array)

**Notable entries:**
```
NVIDIA GeForce RTX 3070        deviceID=9373,  vendorID=4318
NVIDIA GeForce RTX 2080 Ti     deviceID=7687,  vendorID=4318
NVIDIA GeForce GTX 1080 Ti     deviceID=6918,  vendorID=4318
AMD VANGOGH (Steam Deck APU)   deviceID=5695,  vendorID=4098
Radeon RX 6800/6900 XT         deviceID=29631, vendorID=4098
Intel UHD Graphics 630         deviceID=16027, vendorID=32902
```

---

### GamePadTestActivity

**Axes tested:**

| Android Axis | Index | Description | Deadzone |
|---|---|---|---|
| AXIS_X | 0 | Left stick X | `MotionRange.flat` |
| AXIS_Y | 1 | Left stick Y | `MotionRange.flat` |
| AXIS_RZ | 11 | Right stick X | `MotionRange.flat` |
| AXIS_Z | 14 | Right stick Y | `MotionRange.flat` |
| AXIS_LTRIGGER | 17 | Left trigger | None (raw) |
| AXIS_RTRIGGER | 18 | Right trigger | None (raw) |

**Buttons tested (keyCode → label):**
```
19=D-UP    20=D-DOWN  21=D-LEFT  22=D-RIGHT
96=A       97=B       99=X       100=Y
102=LB     103=RB     104=LT     105=RT
106=L3     107=R3     108=START  109=SELECT  110=HOME
```

**Vibration test:** `VibrationEffect.createWaveform({0,100,100}, {0,128,0}, repeat=0)` — 100ms on/off, amplitude 128.

---

### ExternalControllerBindingsActivity — Axis Key Codes

| keyCode (short) | Direction |
|---|---|
| -1 | AXIS X- (left stick left) |
| -2 | AXIS X+ (left stick right) |
| -3 | AXIS Y- (left stick up) |
| -4 | AXIS Y+ (left stick down) |
| -5 | AXIS Z- (right stick left) |
| -6 | AXIS Z+ (right stick right) |
| -7 | AXIS RZ- (right stick up) |
| -8 | AXIS RZ+ (right stick down) |

**D-pad via hat axes:** AXIS_HAT_X (15) → D-LEFT(21)/D-RIGHT(22); AXIS_HAT_Y (16) → D-UP(19)/D-DOWN(20)
**Trigger detection:** controller.state.isPressed(10) → 104 (LT); isPressed(11) → 105 (RT)

---

### wincomponents.json — Full DLL Lists

**direct3d (49):** `d3dcompiler_33–43`, `d3dcompiler_46–47`, `d3dcsx_42–43`, `d3dx10`, `d3dx10_33–43`, `d3dx11_42–43`, `d3dx9_24–43`

**directsound (1):** `dsound`

**directmusic (10):** `dmband`, `dmcompos`, `dmime`, `dmloader`, `dmscript`, `dmstyle`, `dmsynth`, `dmusic`, `dmusic32`, `dswave`

**directshow (6):** `amstream`, `qasf`, `qcap`, `qdvd`, `qedit`, `quartz`

**directplay (8):** `dplaysvr.exe`, `dplayx`, `dpmodemx`, `dpnet`, `dpnhpast`, `dpnhupnp`, `dpnsvr.exe`, `dpwsockx`

**xaudio (41):** `x3daudio1_0–1_7`, `xactengine2_0–2_10`, `xactengine3_0–3_7`, `xapofx1_0–1_5`, `xaudio2_0–2_7`

**vcrun2010 (4):** `msvcp100`, `msvcr100`, `vcomp100`, `atl100`

**opengl (2):** `libgallium_wgl`, `opengl32`

---

### contents.json — Full Schema

**Total entries: 69** (all `verCode=1`; verCode is not incremented per release)

**Schema:** `{ "type": string, "verName": string, "verCode": int, "remoteUrl": string }`

**Type counts:** Wine=2, Box64=1, FEXCore=5, VKD3D=2, DXVK=59

**DXVK 59 versions:** `0.96` through `2.7` (all async/gplasync/HDR variants), all from `REF4IK/Components-/releases/download/1/`

---

---

## 33. DownloadService, FpsCounter, EnvVarsView, ImageFs & MangoHud (R5-B)

### DownloadService — Paths

All paths derived at runtime (no hardcoded string constants):
```
baseDataDirPath        = context.getDataDir().getPath()
baseCacheDirPath       = context.getCacheDir().getPath()
baseExternalAppDirPath = context.getExternalFilesDir(null).getParentFile().getPath()
externalVolumePaths    = secondary MEDIA_MOUNTED volumes, deduplicated
```
All download control methods delegate to `SteamService.INSTANCE` (pauseAll, resumeAll, cancelAll, clearCompleted, pause/resume/cancel by ID).

---

### FpsCounterConfig — All 15 SharedPreferences Keys

**SharedPreferences name:** `"fps_counter_config"`

| Key | Type | Default |
|---|---|---|
| `"fps_counter_enabled"` | boolean | false |
| `"fps_counter_show_fps"` | boolean | false |
| `"fps_counter_show_ram"` | boolean | false |
| `"fps_counter_show_gpu"` | boolean | false |
| `"fps_counter_show_gpu_load"` | boolean | false |
| `"fps_counter_show_frame_time_graph"` | boolean | false |
| `"fps_counter_show_renderer"` | boolean | false |
| `"fps_counter_show_cpu_load"` | boolean | false |
| `"fps_counter_show_cpu_temp"` | boolean | false |
| `"fps_counter_show_battery_temp"` | boolean | false |
| `"fps_counter_show_battery_voltage"` | boolean | false |
| `"fps_counter_horizontal_layout"` | boolean | false |
| `"fps_counter_background_opacity"` | int | 51 |
| `"fps_counter_counter_scale"` | int | 60 |
| `"fps_counter_fps_limit"` | int | 0 |

**Module enum (ordinal order):** `FPS`, `RAM`, `GPU`, `GPU_LOAD`, `FRAME_TIME_GRAPH`, `RENDERER`, `CPU_LOAD`, `CPU_TEMP`, `BATTERY_TEMP`, `BATTERY_VOLTAGE`

**Ranges:** `backgroundOpacity` [0–255], `counterScale` [60–200], `fpsLimit` [0–240] (0 = no limit)

**Note:** FpsCounterConfig does NOT write the MangoHud conf file — that is done by GuestProgramLauncherComponent.

---

### EnvVarsView — Full Known Env Vars Table (10 entries)

| Env Var | UI Type | Options |
|---|---|---|
| `ZINK_DESCRIPTORS` | SELECT | `auto` (default), `lazy`, `cached`, `notemplates` |
| `ZINK_DEBUG` | SELECT_MULTIPLE | `nir`, `spirv`, `tgsi`, `validation`, `sync`, `compact`, `noreorder` |
| `MESA_SHADER_CACHE_DISABLE` | CHECKBOX | off=`"false"`, on=`"true"` |
| `mesa_glthread` | CHECKBOX | off=`"false"`, on=`"true"` |
| `WINEESYNC` | CHECKBOX | off=`"0"`, on=`"1"` |
| `TU_DEBUG` | SELECT_MULTIPLE | `startup`, `nir`, `nobin`, `sysmem`, `gmem`, `forcebin`, `layout`, `noubwc`, `nomultipos`, `nolrz`, `nolrzfc`, `perf`, `perfc`, `flushall`, `syncdraw`, `push_consts_per_stage`, `rast_order`, `unaligned_store`, `log_skip_gmem_ops`, `dynamic`, `bos`, `3d_load`, `fdm`, `noconform`, `rd` |
| `DXVK_HUD` | SELECT_MULTIPLE | `devinfo`, `fps`, `frametimes`, `submissions`, `drawcalls`, `pipelines`, `descriptors`, `memory`, `gpuload`, `version`, `api`, `cs`, `compiler`, `samplers` |
| `MESA_EXTENSION_MAX_YEAR` | NUMBER | (free integer) |
| `PULSE_LATENCY_MSEC` | NUMBER | (free integer) |
| `MANGOHUD` | CHECKBOX | off=`"0"`, on=`"1"` |

---

### ImageFs — All Path Methods

**`find(Context)`:** `new ImageFs(new File(context.getFilesDir(), "imagefs"))`

| Method | Returns |
|---|---|
| `getRootDir()` | `{filesDir}/imagefs` |
| `getConfigDir()` | `rootDir/.winlator` |
| `getImgVersionFile()` | `rootDir/.winlator/.img_version` |
| `getInstalledWineDir()` | `rootDir/opt/installed-wine` |
| `getTmpDir()` | `rootDir/usr/tmp` |
| `getLibDir()` | `rootDir/usr/lib` |
| `getBinDir()` | `rootDir/usr/bin` |
| `getShareDir()` | `rootDir/usr/share` |
| `getEtcDir()` | `rootDir/usr/etc` |

**`LATEST_VERSION = 21`** (byte, in ImageFsInstaller)
**Version check:** if `getVersion() < 21` → full reinstall (no incremental migration).
**`clearRootDir`:** deletes everything in rootDir *except* the `home/` subdirectory.
**`installGuestLibraries`:** creates placeholder `rootDir/usr/lib/winlator/guest/libevshim_guest.so`.

---

### MangoHud Config File — Exact Content

**Written to:** `{rootDir}/home/xuser/mangohud.conf`

```
no_display=false
background_alpha=0.0
text_alpha=0.0
position=top-left
text_scale=1.0
fps_limit={N}      (fpsLimit from FpsCounterConfig, or 0)
fps=0
frametime=0
frame_timing=0
frametime_graph=0
histogram=0
cpu_stats=0
gpu_stats=0
ram_stats=0
vram=0
```

**Note:** All display modules are hardcoded to `0` — module visibility flags in FpsCounterConfig drive the app-side overlay, not this file.

**MangoHud library search order:**
1. `rootDir/usr/lib/mangohud/libMangoHud.so` (preferred)
2. `rootDir/usr/lib/libMangoHud.so` (fallback)

**Vulkan layer JSON search order:**
1. `rootDir/usr/share/vulkan/implicit_layer.d/MangoHud.json`
2. `rootDir/usr/share/vulkan/explicit_layer.d/MangoHud.json`

**Reload signal:** `SIGUSR1` (signal 10) sent to Wine PID via `Process.sendSignal(pid, 10)`.

---

### EnvVars.java

Pure `LinkedHashMap<String, String>` wrapper. No constants.
- `put(name, value)` → stores `String.valueOf(value)`
- `putAll(String values)` → parses space-separated `KEY=VALUE` pairs
- `get(name)` → returns `""` if absent
- `toEscapedString()` → spaces in values escaped as `\ ` (backslash-space)
- `toStringArray()` → `String[]` of `KEY=VALUE` entries

---

---

## 34. Steam Library, Login, Shortcut Settings, SteamApp & EventDispatcher (R5-A)

### SteamLibraryActivity — Intent Extras

| Extra | Value | Type | Notes |
|---|---|---|---|
| `EXTRA_SELECTED_APP_ID` | `"steam_library_selected_app_id"` | Int | Deep-link to game detail; nulled if ≤ 0 |

**Launched activities:**
- `SteamLoginActivity` (no extras) — via `loginLauncher`
- `SteamShortcutSettingsActivity` with `steam_app_id` (Int) + `steam_container_id` (Int)
- `ActivityResultContracts.OpenDocumentTree` — folder picker (no initial URI)
- `ActivityResultContracts.CreateDocument("application/zip")` — save zip named `{gameName}.zip` (sanitised: replaces `/\:*`, strips blanks)
- `ActivityResultContracts.OpenDocument(["application/zip"])` — import zip

---

### SteamLibraryActivity — UI State (`SteamLibraryUiState`)

| Field | Type | Notes |
|---|---|---|
| `isConnected` | `Boolean` | CM connection established |
| `isLoggedIn` | `Boolean` | User authenticated |
| `isOfflineMode` | `Boolean` | From `PrefManager.getSteamOfflineMode()` |
| `isRefreshing` | `Boolean` | Library refresh in progress |
| `errorMessage` | `String?` | Nullable error string |
| `profile` | `SteamProfileUi` | Current user profile |
| `containers` | `List<SteamContainerOption>` | Available Wine containers |
| `selectedContainerId` | `Integer?` | Currently selected container |
| `selectedGameId` | `Integer?` | Currently selected game |
| `totalGamesCount` | `Int` | Total owned games |
| `games` | `List<SteamLibraryGameUi>` | Filtered/displayed games |
| `selectedGame` | `SteamGameDetailUi?` | Detail panel data |

**Compose saveable state:** `pendingExportGameId: MutableState<Int?>`, `pendingImportGameId: MutableState<Int?>`

**Library layout mode:** Stored as `Int` in `PrefManager.libraryLayoutMode` (not an enum in Activity).

---

### SteamLibraryActivity — ViewModel Callbacks

The `SteamLibraryScreen` composable receives 23 lambdas:
`onLogout`, `onLoginClicked`, `onRefresh`, `onSelectGame`, `onSearch(String)`, `onClearSearch`,
`onSelectContainer(Int)`, `onSelectGameForFolder(Int)`, `onInstall(Int)`, `onUninstall(Int)`,
`onLaunch(Int)`, `onCancelDownload(Int)`, `onPauseDownload(Int)`, `onResumeDownload(Int)`,
`onOpenShortcutSettings(Int, Int?)`, `onVerifyGameFiles(Int, Int?)`, `onExportSaves(Int, String)`,
`onImportSaves(Int)`, `onDownloadWorkshop(Int)`, `onManageWorkshop(Int)`, `onClearPendingSelected()`

---

### PrefManager — All Known Properties (EncryptedSharedPreferences, AES-256-SIV/GCM)

| Property | Type | Notes |
|---|---|---|
| `username` | `String` | Steam account username |
| `refreshToken` | `String` | Steam refresh token |
| `accessToken` | `String` | Steam access token |
| `steamUserSteamId64` | `Long` | SteamID64 |
| `steamUserAccountId` | `Int` | Steam account ID |
| `cellId` | `Int` | Steam CDN cell/region |
| `cellIdManuallySet` | `Boolean` | User-overridden cell |
| `downloadOnWifiOnly` | `Boolean` | Throttle to WiFi |
| `lastPICSChangeNumber` | `Int` | Last PICS sync number |
| `steamUserName` | `String` | Display name |
| `steamUserAvatarHash` | `String` | Avatar hash |
| `personaState` | `Int` | Online/offline/away |
| `externalStoragePath` | `String` | SD card path |
| `useExternalStorage` | `Boolean` | External storage toggle |
| `containerLanguage` | `String` | Wine container locale |
| `downloadSpeed` | `Long` | Bandwidth cap |
| `clientId` | `String` | Steam client ID |
| `libraryLayoutMode` | `Int` | Grid vs list |
| `enableSteamLogs` | `Boolean` | Debug logging |
| `useSingleDownloadFolder` | `Boolean` | All games one folder |
| `defaultDownloadFolder` | `String` | Default install path |
| `steamDownloadFolder` | `String` | Steam install path |
| `epicDownloadFolder` | `String` | Epic install path |
| `gogDownloadFolder` | `String` | GOG install path |
| `amazonDownloadFolder` | `String` | Amazon install path |
| `downloadQueueSize` | `Int` | Concurrent download slots |
| `steamOfflineMode` | `Boolean` | Start in offline mode |
| `preferredSteamContainerId` | `Int` | Saved container choice |
| `graphicsDriver` | `String` | Global default driver |
| `pendingSteamCloudSyncAppsRaw` | `String` | Serialised pending sync app IDs |

**Per-game prefs methods:**
- `getSteamSelectedBranch(appId, defaultBranch): String` / `setSteamSelectedBranch` / `clearSteamSelectedBranch`
- `getSteamWorkshopEnabledItemIds(appId): Set<Long>` / `setSteamWorkshopEnabledItemIds`
- `hasSteamWorkshopEnabledItems(appId): Boolean`
- `hasPendingSteamCloudSyncAppId(appId): Boolean`
- `addPendingSteamCloudSyncAppId(appId)` / `removePendingSteamCloudSyncAppId(appId)`
- `clearAuthTokens()` — clears username, refreshToken, accessToken
- `clearPreferences()` — wipes all prefs

---

### SteamLoginActivity — Login Flow

**Screens (`LoginScreen` enum):** `CREDENTIAL`, `QR`, `TWO_FACTOR`

**`LoginResult` enum:** `Success`, `Failed`, `InProgress`, `DeviceAuth`, `DeviceConfirm`, `EmailAuth`

**Setup:**
1. Starts `SteamService` as foreground service
2. Hides system bars (immersive, `BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE`)
3. Dark Material3 theme with custom color constants: `Accent`, `TextPrimary`, `TextSecondary`, `BgDark`, `CardDark`, `CardBorder`

**Auth modes:**
- **Credential:** username + password form with visibility toggle, "Remember session" toggle, keyboard done = submit
- **QR:** `QrCard` composable; QR URL from `SteamEvent.QrChallengeReceived`; pulsing alpha loading animation (`0.3f→1.0f`, tween, `RepeatMode.Reverse`)
- **Two-factor:** `TwoFactorLogin` composable with code input, cancel link

**`UserLoginState` fields:**

| Field | Type | Default |
|---|---|---|
| `username` | `String` | `""` |
| `password` | `String` | `""` |
| `twoFactorCode` | `String` | `""` |
| `rememberSession` | `Boolean` | — |
| `isLoggingIn` | `Boolean` | `false` |
| `isSteamConnected` | `Boolean` | `false` |
| `loginResult` | `LoginResult` | `LoginResult.Failed` |
| `loginScreen` | `LoginScreen` | `LoginScreen.CREDENTIAL` |
| `qrCode` | `String?` | `null` |
| `isQrFailed` | `Boolean` | `false` |
| `previousCodeIncorrect` | `Boolean` | `false` |
| `email` | `String?` | `null` |
| `lastTwoFactorMethod` | `String?` | `null` |

**Entrance animation:** `AnimatedVisibility(entered)` — `fadeIn(tween)` + `slideInVertically(FastOutSlowInEasing)` from `it/4` offset

---

### SteamShortcutSettingsActivity — Intent Extras

| Extra | Value | Type |
|---|---|---|
| `EXTRA_APP_ID` | `"steam_app_id"` | `Int` |
| `EXTRA_CONTAINER_ID` | `"steam_container_id"` | `Int` (null if < 0) |

**Setup:** Calls `SteamGameActions.ensureSteamShortcut(context, appId, containerId): Shortcut?` — shows Toast + finish() if null.

---

### SteamShortcutSettingsActivity — Per-Game Override Keys

All stored as `Shortcut.putExtra(key, value)`. `null` value = inherit from container.

| Key | Type/Values | Container fallback getter |
|---|---|---|
| `"inputType"` | Int bitmask | — |
| `"disableXinput"` | `"1"` or null | — |
| `"relativeMouseMovement"` | `"1"` or `"0"` | — |
| `"simTouchScreen"` | `"1"` or `"0"` | — |
| `"execArgs"` | String | — |
| `"screenSize"` | String (e.g. `"1920x1080"`) | `container.getScreenSize()` |
| `"graphicsDriver"` | String | `container.getGraphicsDriver()` |
| `"graphicsDriverConfig"` | String | `container.getGraphicsDriverConfig()` |
| `"dxwrapper"` | String | `container.getDXWrapper()` |
| `"dxwrapperConfig"` | String | `container.getDXWrapperConfig()` |
| `"ddrawrapper"` | String | `container.getDDrawWrapper()` |
| `"audioDriver"` | String | `container.getAudioDriver()` |
| `"audioDriverConfig"` | String | `container.getAudioDriverConfig()` |
| `"emulator"` | String (or `"custom"`) | — |
| `"forceFullscreen"` | `"1"` or null | — |
| `"fullscreenStretched"` | `"1"` or null | — |
| `"secondaryExec"` | String | — |
| `"execDelay"` | String (default `"0"`) | — |
| `"wincomponents"` | String (serialised) | `container.getWinComponents()` |
| `"envVars"` | String (serialised) | — |
| `"startupSelection"` | String (int cast) | `container.getStartupSelection()` |
| `"box64Version"` | String | `container.getBox64Version()` |
| `"box64Preset"` | String | `container.getBox64Preset()` |
| `"fexcoreVersion"` | String | `container.getFEXCoreVersion()` |
| `"fexcorePreset"` | String | `container.getFEXCorePreset()` |
| primary exe path | String | override primary executable |

---

### SteamApp — All 59 Fields

**Class:** `com.winlator.cmod.steam.data.SteamApp` — plain Kotlin data class (NOT @Serializable).

| Field | Type | Default |
|---|---|---|
| `id` | `Int` | — |
| `packageId` | `Int` | `0` |
| `ownerAccountId` | `List<Int>` | `emptyList()` |
| `licenseFlags` | `EnumSet<ELicenseFlags>` | `EnumSet.noneOf(ELicenseFlags)` |
| `receivedPICS` | `Boolean` | `false` |
| `lastChangeNumber` | `Int` | `0` |
| `depots` | `Map<Int, DepotInfo>` | `emptyMap()` |
| `branches` | `Map<String, BranchInfo>` | `emptyMap()` |
| `name` | `String` | `""` |
| `type` | `AppType` | `AppType.invalid` |
| `osList` | `EnumSet<OS>` | `EnumSet.of(OS.none)` |
| `releaseState` | `ReleaseState` | `ReleaseState.disabled` |
| `releaseDate` | `Long` | `0L` |
| `metacriticScore` | `Byte` | `0` |
| `metacriticFullUrl` | `String` | `""` |
| `logoHash` | `String` | `""` |
| `logoSmallHash` | `String` | `""` |
| `iconHash` | `String` | `""` |
| `clientIconHash` | `String` | `""` |
| `clientTgaHash` | `String` | `""` |
| `smallCapsule` | `Map<Language, String>` | `emptyMap()` |
| `headerImage` | `Map<Language, String>` | `emptyMap()` |
| `libraryAssets` | `LibraryAssetsInfo` | `LibraryAssetsInfo(null,null,null)` |
| `primaryGenre` | `Boolean` | `false` |
| `reviewScore` | `Byte` | `0` |
| `reviewPercentage` | `Byte` | `0` |
| `controllerSupport` | `ControllerSupport` | `ControllerSupport.none` |
| `demoOfAppId` | `Int` | `0` |
| `developer` | `String` | `""` |
| `publisher` | `String` | `""` |
| `homepageUrl` | `String` | `""` |
| `gameManualUrl` | `String` | `""` |
| `loadAllBeforeLaunch` | `Boolean` | `false` |
| `dlcAppIds` | `List<Int>` | `emptyList()` |
| `isFreeApp` | `Boolean` | `false` |
| `dlcForAppId` | `Int` | `0` |
| `mustOwnAppToPurchase` | `Int` | `0` |
| `dlcAvailableOnStore` | `Boolean` | `false` |
| `optionalDlc` | `Boolean` | `false` |
| `gameDir` | `String` | `""` |
| `installScript` | `String` | `""` |
| `noServers` | `Boolean` | `false` |
| `order` | `Boolean` | `false` |
| `primaryCache` | `Int` | `0` |
| `validOSList` | `EnumSet<OS>` | `EnumSet.of(OS.none)` |
| `thirdPartyCdKey` | `Boolean` | `false` |
| `visibleOnlyWhenInstalled` | `Boolean` | `false` |
| `visibleOnlyWhenSubscribed` | `Boolean` | `false` |
| `launchEulaUrl` | `String` | `""` |
| `requireDefaultInstallFolder` | `Boolean` | `false` |
| `contentType` | `Int` | `0` |
| `installDir` | `String` | `""` |
| `useLaunchCmdLine` | `Boolean` | `false` |
| `launchWithoutWorkshopUpdates` | `Boolean` | `false` |
| `useMms` | `Boolean` | `false` |
| `installScriptSignature` | `String` | `""` |
| `installScriptOverride` | `Boolean` | `false` |
| `config` | `ConfigInfo` | `ConfigInfo(null,null,0,0,null,null)` |
| `ufs` | `UFS` | `UFS(0,0,null)` |

---

### EventDispatcher — Architecture

**Class:** `com.winlator.cmod.steam.events.EventDispatcher`
**Internal storage:** `LinkedHashMap<KClass<Event<?>>, List<Pair<String, EventListener>>>`

**API:**

| Method | Notes |
|---|---|
| `on<E,T>(listener: (E)->T)` | Permanent listener (reified inline) |
| `once<E,T>(listener: (E)->T)` | One-shot, auto-removes after first fire |
| `off<E,T>(listener: (E)->T)` | Removes by `listener.toString()` identity |
| `clearAllListenersOf<E>()` | Removes all listeners for event class |
| `clearAllListeners()` | Clears entire map |
| `onJava(eventClass, listener)` | Java-compat wrapper (once=false) |
| `emit<E,T>(event, resultAggregator)` | Fires all, collects results, removes once-handlers |
| `emitJava(event)` | Java-compat; returns `firstOrNull` result |

**Listener identity:** `listener.toString()` — must be same reference for `off()` to work.

---

### Event Hierarchy

**Base interface:** `Event<T>` with two sub-interfaces:
- `AndroidEvent<T> : Event<T>`
- `SteamEvent<T> : Event<T>`

**AndroidEvent types (all `T=Unit`):**

| Event | Fields |
|---|---|
| `AndroidEvent.EndProcess` | (singleton) |
| `AndroidEvent.DownloadPausedDueToConnectivity` | `appId: Int` |
| `AndroidEvent.DownloadStatusChanged` | `appId: Int`, `isDownloading: Boolean` |
| `AndroidEvent.LibraryInstallStatusChanged` | `appId: Int` |

**SteamEvent types (all `T=Unit`):**

| Event | Fields |
|---|---|
| `SteamEvent.Connected` | `isAutoLoggingIn: Boolean` |
| `SteamEvent.Disconnected` | (singleton) |
| `SteamEvent.RemotelyDisconnected` | (singleton) |
| `SteamEvent.LogonStarted` | `username: String?` |
| `SteamEvent.LogonEnded` | `username: String?`, `loginResult: LoginResult`, `message: String?` |
| `SteamEvent.LoggedOut` | `username: String?` |
| `SteamEvent.PersonaStateReceived` | `persona: SteamFriend` |
| `SteamEvent.QrChallengeReceived` | `challengeUrl: String` |
| `SteamEvent.QrCodeScanned` | (singleton) |
| `SteamEvent.QrAuthEnded` | `success: Boolean`, `message: String?` |
| `SteamEvent.ForceCloseApp` | (singleton) |

---

---

## 35. SteamLibraryViewModel, DepotInfo, BranchInfo, ConfigInfo, UFS, UI Data Classes (R6-B)

### SteamLibraryViewModel — Fields

**Package:** `com.winlator.cmod.steam.ui` | **Superclass:** `androidx.lifecycle.ViewModel` | **DEX:** `classes7.dex`

| Field | Type | Notes |
|---|---|---|
| `appContext` | `Context` | `PluviaApp.getInstance().getApplicationContext()` |
| `db` | `PluviaDatabase` | `PluviaDatabase.INSTANCE.getInstance()` |
| `_uiState` | `MutableStateFlow<SteamLibraryUiState>` | Initial: all-false/null |
| `uiState` | `StateFlow<SteamLibraryUiState>` | Read-only via `FlowKt.asStateFlow()` |
| `cachedApps` | `List<SteamApp>` | Updated from DB flow; starts `emptyList()` |
| `manifestSizeCache` | `Map<Integer, SteamService.ManifestSizes>` | `LinkedHashMap` |
| `manifestRequests` | `Set<Integer>` | `LinkedHashSet`, in-flight fetches |
| `selectedContainersByAppId` | `Map<Integer, Integer>` | `LinkedHashMap`, per-game container override |
| `pendingRefreshJobs` | `Map<Integer, Job>` | `LinkedHashMap` |

**Constructor launches 4 coroutines:**
1. `isConnectedFlow()` collector
2. `isLoggedInFlow()` collector
3. `getAllOwnedApps()` DB flow collector
4. Active-downloads polling loop

---

### SteamLibraryViewModel — Key Method Details

**`downloadGame(appId)`:**
- Reads branch via `PrefManager.getSteamSelectedBranch(appId)`
- Gets depots via `SteamService.Companion.getDownloadableDepots(appId, null)`
- Calls `SteamService.INSTANCE.downloadApp(appId, depots, emptyList(), branch, ..., verifyAll=false, forceDownload=false, installPath)`

**`ensureManifestSizes(appId)`:**
- Guard: skips if already in `manifestSizeCache` or `manifestRequests`
- Adds to `manifestRequests`, launches coroutine → `SteamService.Companion.getSelectedManifestSizes(appId, branch)`
- Caches result; on error sets `errorMessage`

**`scheduleBurstRefresh(appId)`:**
- Loops N times (N from LiveLiterals) with delay between iterations (delay from LiveLiterals)
- Each iteration calls `refreshDownloadDrivenUi`

**`playGame(appId)`:**
- Resolves container from `selectedContainersByAppId` or `PrefManager.getPreferredSteamContainerId()`
- Calls `SteamGameLauncher.INSTANCE.launch(context, app, containerId)`

**Download phase tracking:** `isTrackedDownloadPhase()` returns true for: `PREPARING`, `VERIFYING`, `PATCHING`, `DOWNLOADING`, `QUEUED`, `PAUSED`

---

### DepotInfo — All Fields (`@Serializable`)

| Field | Type | Default | Required |
|---|---|---|---|
| `depotId` | `int` | — | Yes (bit 0) |
| `dlcAppId` | `int` | `0` | No |
| `depotFromApp` | `int` | `0` | No |
| `sharedInstall` | `boolean` | `false` | No |
| `osList` | `EnumSet<OS>` | `EnumSet.of(OS.none)` | No |
| `osArch` | `OSArch` | `OSArch.Unknown` | No |
| `manifests` | `Map<String, ManifestInfo>` | `emptyMap()` | No |
| `encryptedManifests` | `Map<String, ManifestInfo>` | `emptyMap()` | No |
| `language` | `String` | `"english"` | No |
| `realm` | `String` | `"steampublic"` | No |
| `optionalDlcId` | `int` | `0` | No |

**ManifestInfo key** = branch name (e.g. `"public"`).

---

### ManifestInfo — All Fields (`@Serializable`)

All 4 fields required (`seen0 & 15 == 15`):

| Field | Type | Serialization |
|---|---|---|
| `name` | `String` | String (index 0) |
| `gid` | `long` | `@Serializable(with=LongAsStringSerializer)` (index 1) |
| `size` | `long` | `@Serializable(with=LongAsStringSerializer)` (index 2) |
| `download` | `long` | `@Serializable(with=LongAsStringSerializer)` (index 3) |

**Note:** `gid`, `size`, `download` are serialized as strings (Steam depot GIDs are uint64).

---

### BranchInfo — All Fields (`@Serializable`)

| Field | Type | Default | Required |
|---|---|---|---|
| `name` | `String` | — | Yes (bit 0) |
| `buildId` | `long` | — | Yes (bit 1) |
| `pwdRequired` | `boolean` | `false` | No |
| `timeUpdated` | `Date` | `null` | No — `@Serializable(with=DateSerializer)` |

---

### ConfigInfo — All Fields (`@Serializable`)

| Field | Type | Default |
|---|---|---|
| `installDir` | `String` | `""` |
| `launch` | `List<LaunchInfo>` | `emptyList()` |
| `steamControllerTemplateIndex` | `int` | `0` |
| `steamControllerTouchTemplateIndex` | `int` | `0` |
| `steamInputManifestPath` | `String` | `""` |
| `steamControllerConfigDetails` | `List<SteamControllerConfigDetail>` | `emptyList()` |

---

### LaunchInfo — All Fields (`@Serializable`)

All 6 required (`seen0 & 63 == 63`):

| Field | Type | Notes |
|---|---|---|
| `executable` | `String` | — |
| `workingDir` | `String` | — |
| `description` | `String` | — |
| `type` | `String` | — |
| `configOS` | `EnumSet<OS>` | `@Serializable(with=OsEnumSetSerializer)` |
| `configArch` | `OSArch` | `EnumsKt.createSimpleEnumSerializer(...)` |

---

### UFS — All Fields (`@Serializable`)

| Field | Type | Default |
|---|---|---|
| `quota` | `int` | `0` |
| `maxNumFiles` | `int` | `0` |
| `saveFilePatterns` | `List<SaveFilePattern>` | `emptyList()` |

---

### LibraryAssetsInfo — All Fields (`@Serializable`)

| Field | Type | Default |
|---|---|---|
| `libraryCapsule` | `LibraryCapsuleInfo` | `LibraryCapsuleInfo(null, null, 3, null)` |
| `libraryHero` | `LibraryHeroInfo` | `LibraryHeroInfo(null, null, 3, null)` |
| `libraryLogo` | `LibraryLogoInfo` | `LibraryLogoInfo(null, null, 3, null)` |

---

### SteamLibraryGameUi — All Fields (Library card ViewModel)

| Field | Type | Nullable |
|---|---|---|
| `appId` | `int` | No |
| `name` | `String` | No |
| `subtitle` | `String` | No |
| `appType` | `AppType` | No |
| `capsuleUrl` | `String` | No |
| `heroUrl` | `String` | No |
| `logoUrl` | `String` | No |
| `installed` | `boolean` | No |
| `isDownloading` | `boolean` | No |
| `downloadPhase` | `DownloadPhase` | Yes |
| `downloadProgress` | `float` | No |
| `statusLine` | `String` | No |
| `assignedContainerId` | `Integer` | Yes |

---

### SteamGameDetailUi — All 23 Fields (Detail panel ViewModel)

| Field | Type | Nullable |
|---|---|---|
| `appId` | `int` | No |
| `name` | `String` | No |
| `subtitle` | `String` | No |
| `appType` | `AppType` | No |
| `capsuleUrl` | `String` | No |
| `heroUrl` | `String` | No |
| `logoUrl` | `String` | No |
| `installed` | `boolean` | No |
| `isDownloading` | `boolean` | No |
| `downloadPhase` | `DownloadPhase` | Yes |
| `downloadProgress` | `float` | No |
| `statusLine` | `String` | No |
| `installPath` | `String` | No |
| `downloadSizeBytes` | `long` | No |
| `installSizeBytes` | `long` | No |
| `availableBytes` | `long` | No |
| `downloadedBytes` | `long` | No |
| `totalBytes` | `long` | No |
| `speedBytesPerSec` | `Long` | Yes |
| `etaMs` | `Long` | Yes |
| `currentFileName` | `String` | Yes |
| `releaseDateSeconds` | `long` | No |
| `assignedContainerId` | `Integer` | Yes |

---

### SteamProfileUi — Fields

| Field | Type | Default |
|---|---|---|
| `name` | `String` | `""` |
| `avatarUrl` | `String` | `""` |
| `status` | `String` | `""` |
| `statusMode` | `String` | `"OFFLINE"` (hardcoded literal) |
| `currentGame` | `String?` | `null` |

---

### Key Enums

**`AppType`** (19 values, code field): `invalid(0)`, `game(1)`, `application(2)`, `tool(3)`, `demo(4)`, `deprected(5)`, `dlc(6)`, `guide(7)`, `driver(8)`, `config(9)`, `hardware(10)`, `franchise(11)`, `video(12)`, `plugin(13)`, `music(14)`, `series(15)`, `comic(16)`, `beta(17)`, `shortcut(18)`

**`DownloadPhase`** (13 values): `UNKNOWN(0)`, `PREPARING(1)`, `DOWNLOADING(2)`, `PAUSED(3)`, `FAILED(4)`, `VERIFYING(5)`, `PATCHING(6)`, `APPLYING_DATA(7)`, `FINALIZING(8)`, `QUEUED(9)`, `UNPACKING(10)`, `COMPLETE(11)`, `CANCELLED(12)`
- `DownloadPhase.fromMessage(String)` — parses from SteamKit message strings via `parseRules`

**`OS`** (code field): `none(0)`, `windows(1)`, `macos(2)`, `linux(3)`
- `OS.from(String)` parses comma-separated (e.g. `"windows,linux"`)

**`OSArch`** (keyValName field): `Arch32` (`"32bit"`), `Arch64` (`"64bit"`), `Unknown` (`""`)

**`SteamPresenceStatus`** (ordinals): `ONLINE(0)`, `AWAY(1)`, `OFFLINE(2)`

---

---

## 36. Assets Catalog, Env Var JSONs, XEnvironment Components & WineUtils (R6-C)

### Full Asset Directory Listing

**`assets/` top-level files:**
```
box64_env_vars.json          fexcore_env_vars.json        gpu_cards.json
common_dlls.json             imagefs.txz                  wine_debug_channels.json
contents.json                input_dlls.tzst              wine_startmenu.json
container_pattern_common.tzst proton-9.0-arm64ec.txz      wincomponents/ (subdir)
default_music.mp3            proton-9.0-arm64ec_container_pattern.tzst
ddrawrapper/                 proton-9.0-x86_64.txz
dxwrapper/                   proton-9.0-x86_64_container_pattern.tzst
experimental-drm.tzst        pulseaudio.tzst
fexcore/                     PublicSuffixDatabase.list
graphics_driver/             soundfonts/
box86_64/                    inputcontrols/
wowbox64/                    dexopt/
system.reg.LOG1 / LOG2
```

**`wincomponents/` subdir:** `wincomponents.json` + individual packs: `ddraw.tzst`, `direct3d.tzst`, `directmusic.tzst`, `directplay.tzst`, `directshow.tzst`, `directsound.tzst`, `opengl.tzst`, `vcrun2010.tzst`, `xaudio.tzst`

**Binary emulator/driver subdirs:**

| Dir | Files |
|---|---|
| `box86_64/` | `box64-0.3.2.tzst`, `box64-0.3.6.tzst`, `box64-0.3.7.tzst`, `box64-0.3.7.1.tzst`; `rcfiles/box86_64rc-1.rcp`, `Luis Gaming.rcp` |
| `fexcore/` | `fexcore-2505.tzst`, `fexcore-2506.tzst`, `fexcore-2507.tzst`, `fexcore-2508.tzst`, `fexcore-2509.tzst` |
| `wowbox64/` | `wowbox64-0.3.4.tzst`, `wowbox64-0.3.7.tzst` |
| `graphics_driver/` | `adrenotools-v762.tzst`, `adrenotools-v805.tzst`, `extra_libs.tzst`, `wrapper.tzst`, `wrapper-v2.tzst` through `wrapper-v6.tzst` |
| `ddrawrapper/` | `cnc-ddraw.tzst`, `dd7to9.tzst`, `nglide.tzst` |
| `dxwrapper/` | `d8vk-1.0.tzst`, `dxvk-0.40.1.tzst`, `dxvk-0.96.tzst`, `dxvk-1.5.5.tzst`, `dxvk-1.7.1.tzst`, `dxvk-1.10.1.tzst`, `dxvk-1.10.3.tzst`, `dxvk-2.2.116.tzst`, `dxvk-2.3.1.tzst`, `dxvk-2.3.1-arm64ec-gplasync.tzst`, `dxvk-2.4.tzst`, `dxvk-2.4.1.tzst`, `dxvk-2.4.1-arm64ec.tzst`, `dxvk-2.4-24-gplasync.tzst`, `dxvk-2.4-gplasync.tzst`, `dxvk-2.4.1-gplasync.tzst`, `dxvk-async-1.10.3.tzst`, `vkd3d-2.8-0.tzst`, `vkd3d-2.12-0.tzst`, `vkd3d-2.13-0.tzst`, `vkd3d-2.14.1-0.tzst` |
| `soundfonts/` | `wt_210k_G.sf2`, `wt_210k_G_LICENSE.txt` |

---

### box64_env_vars.json — All 19 Entries

| Env Var | Values | Default | UI Type |
|---|---|---|---|
| `BOX64_DYNAREC_SAFEFLAGS` | 0,1,2 | 1 | dropdown |
| `BOX64_DYNAREC_FASTNAN` | 0,1 | 1 | toggleSwitch |
| `BOX64_DYNAREC_FASTROUND` | 0,1,2 | 1 | dropdown |
| `BOX64_DYNAREC_X87DOUBLE` | 0,1,2 | 0 | dropdown |
| `BOX64_DYNAREC_BIGBLOCK` | 0,1,2,3 | 2 | dropdown |
| `BOX64_DYNAREC_STRONGMEM` | 0,1,2,3 | 0 | dropdown |
| `BOX64_DYNAREC_FORWARD` | 0,128,256,512,1024 | 512 | dropdown |
| `BOX64_DYNAREC_CALLRET` | 0,1 | 0 | toggleSwitch |
| `BOX64_DYNAREC_WAIT` | 0,1 | 1 | toggleSwitch |
| `BOX64_AVX` | 0,1,2 | 1 | dropdown |
| `BOX64_MAXCPU` | 0,4,8,16,32,64 | 0 | dropdown |
| `BOX64_UNITYPLAYER` | 0,1 | 1 | toggleSwitch |
| `BOX64_DYNAREC_WEAKBARRIER` | 0,1,2 | 0 | dropdown |
| `BOX64_DYNAREC_ALIGNED_ATOMICS` | 0,1 | 0 | toggleSwitch |
| `BOX64_DYNAREC_DF` | 0,1 | 1 | toggleSwitch |
| `BOX64_DYNAREC_DIRTY` | 0,1,2 | 0 | dropdown |
| `BOX64_DYNAREC_NATIVEFLAGS` | 0,1 | 1 | toggleSwitch |
| `BOX64_DYNAREC_PAUSE` | 0,1,2,3 | 0 | dropdown |
| `BOX64_MMAP32` | 0,1 | 1 | toggleSwitch |

**Note:** `toggleSwitch` field inconsistently uses both boolean `true`/`false` and string `"true"`/`"false"` — parser must handle both.

---

### fexcore_env_vars.json — All 15 Entries

| Env Var | Values | Default | UI Type |
|---|---|---|---|
| `FEX_TSOENABLED` | 0,1 | 1 | toggleSwitch |
| `FEX_VECTORTSOENABLED` | 0,1 | 0 | toggleSwitch |
| `FEX_HALFBARRIERTSOENABLED` | 0,1 | 1 | toggleSwitch |
| `FEX_MEMCPYSETTSOENABLED` | 0,1 | 0 | toggleSwitch |
| `FEX_X87REDUCEDPRECISION` | 0,1 | 0 | toggleSwitch |
| `FEX_MULTIBLOCK` | 0,1 | 1 | toggleSwitch |
| `FEX_MAXINST` | (free text) | 5000 | editText |
| `FEX_HOSTFEATURES` | enablesve, disablesve, enableavx, disableavx, off | off | dropdown |
| `FEX_SMALLTSCSCALE` | 0,1 | 1 | toggleswitch (lowercase s) |
| `FEX_SMC_CHECKS` | none, mtrack, full | mtrack | dropdown |
| `FEX_VOLATILEMETADATA` | 0,1 | 1 | toggleSwitch |
| `FEX_MONOHACKS` | 0,1 | 1 | toggleSwitch |
| `FEX_HIDEHYPERVISORBIT` | 0,1 | 0 | toggleSwitch |
| `FEX_DISABLEL2CACHE` | 0,1 | 0 | toggleSwitch |
| `FEX_DYNAMICL1CACHE` | 0,1 | 0 | toggleSwitch |

**Note:** `FEX_MAXINST` uses `editText: true` — free text. `FEX_SMALLTSCSCALE` has `toggleswitch` (lowercase) — parser must be case-insensitive.

---

### common_dlls.json — Wine Stub DLL Lists

Two top-level keys: `"system32"` (~570 DLLs/EXEs) and `"syswow64"` (~630 entries). Used to populate the Wine prefix with appropriate stubs. `syswow64` additionally includes legacy 16-bit/Win9x entries: `krnl386.exe`, `gdi.exe`, `user.exe`, `winevdm.exe`, `wow32.dll`, `win32s16.dll`, `dosx.exe`, `ddhelp.exe`, plus many `.vxd`, `.drv`, `.mod` files for 9x compatibility.

---

### wine_debug_channels.json

Single array of ~480 Wine debug channel names (no nested structure). Used to populate the WINEDEBUG channel picker UI. Notable examples: `acledit`, `actctx`, `advapi`, `alsa`, `d3d`, `d3d9`–`d3d12`, `ddraw`, `dinput`, `dsound`, `dwrite`, `dxgi`, `opengl`, `pulse`, `vulkan`, `wined3d`, `xinput`, `x11drv`, `waylanddrv`, `winex11.drv`, `macdrv`, `dmo`, `mf`, `mfplat`, etc.

---

### XEnvironment — Architecture & Component Registry

**Class:** `com.winlator.cmod.xenvironment.XEnvironment`

| Method | Notes |
|---|---|
| `addComponent(EnvironmentComponent)` | Sets `component.environment = this`, appends to list |
| `getComponent(Class<T>)` | Linear scan by exact class |
| `startEnvironmentComponents()` | Clears tmpDir, then `start()` on each component |
| `stopEnvironmentComponents()` | `stop()` on each component |
| `onPause()` | Calls `suspendProcess()` on `GuestProgramLauncherComponent` |
| `onResume()` | Calls `resumeProcess()` on `GuestProgramLauncherComponent` |
| `getTmpDir()` | `context.getFilesDir()/tmp`, chmod 0755 on creation |

**`EnvironmentComponent` (abstract base):** 1 field: `protected XEnvironment environment`. Two abstract methods: `start()`, `stop()`.

---

### ImageFs — Full Path Constants

```java
USER      = "xuser"
HOME_PATH = "/home/xuser"
CACHE_PATH = "/home/xuser/.cache"
CONFIG_PATH = "/home/xuser/.config"
WINEPREFIX  = "/home/xuser/.wine"
```

**Key internal paths:**
- `rootDir/.winlator/.img_version` — version file (int, first line)
- `rootDir/opt/installed-wine` — installed Wine directory tracker
- `rootDir/usr/tmp` — temp directory
- `rootDir/usr/lib`, `rootDir/usr/bin`, `rootDir/usr/share`, `rootDir/usr/etc`

---

### ImageFsInstaller — Key Logic

**`LATEST_VERSION = 21`** (byte constant)

**Install trigger:** `imageFs.getVersion() < 21` OR `!imageFs.isValid()`

**install pipeline:**
1. Clear rootDir (preserving `home/` subdir)
2. Extract `imagefs.txz` (XZ; ~4.54x expansion ratio for progress bar: `compressed_size * 4.5454545f`)
3. `installWineFromAssets()` — parallel extraction of all `wine_entries` string array resource
4. `installGuestLibraries()` — creates `rootDir/usr/lib/winlator/guest/`, placeholder `libevshim_guest.so`
5. `createImgVersionFile(21)`
6. `resetContainerImgVersions()` — containers with `imgVersion <= 5` flagged `wineprefixNeedsUpdate=t`; removes `imgVersion` extra from all containers

---

### Three Wine Launcher Paths

| Launcher | Class | proot? | Box64 path | Env paths |
|---|---|---|---|---|
| **Proot** | `GuestProgramLauncherComponent` | Yes | `/usr/bin/box64` (chroot-relative) | Chroot-relative |
| **Bionic** | `BionicProgramLauncherComponent` | No | `{rootDir}/usr/bin/box64` | Absolute, rootDir-prefixed |
| **Glibc** | `GlibcProgramLauncherComponent` | No | `{rootDir}/usr/local/bin/box64` | Absolute; `LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu` + `BOX64_LD_LIBRARY_PATH={rootDir}/usr/lib/x86_64-linux-gnu` |

---

### BionicProgramLauncherComponent — Full Env Var Set

All paths are absolute (rootDir-prefixed):

| Env Var | Value |
|---|---|
| `HOME` | `{rootDir}/home/xuser` |
| `USER` | `xuser` |
| `TMPDIR` | `{rootDir}/usr/tmp` |
| `XDG_DATA_DIRS` | `{rootDir}/usr/share` |
| `XDG_CONFIG_DIRS` | `{rootDir}/usr/etc/xdg:{rootDir}/etc/xdg` |
| `LD_LIBRARY_PATH` | `{rootDir}/usr/lib:/system/lib64` |
| `VK_LAYER_PATH` | `{rootDir}/usr/share/vulkan/implicit_layer.d:{rootDir}/usr/share/vulkan/explicit_layer.d` |
| `GST_PLUGIN_PATH` | `{rootDir}/usr/lib/gstreamer-1.0` |
| `FONTCONFIG_PATH` | `{rootDir}/usr/etc/fonts` |
| `ALSA_CONFIG_PATH` | `{rootDir}/usr/share/alsa/alsa.conf:{rootDir}/usr/etc/alsa/conf.d/android_aserver.conf` |
| `ALSA_PLUGIN_DIR` | `{rootDir}/usr/lib/alsa-lib` |
| `OPENSSL_CONF` | `{rootDir}/usr/etc/tls/openssl.cnf` |
| `SSL_CERT_FILE` | `{rootDir}/usr/etc/tls/cert.pem` |
| `SSL_CERT_DIR` | `{rootDir}/usr/etc/tls/certs` |
| `WINE_NO_DUPLICATE_EXPLORER` | `1` |
| `PREFIX` | `{rootDir}/usr` |
| `DISPLAY` | `:0` |
| `WINE_DISABLE_FULLSCREEN_HACK` | `1` |
| `ENABLE_UTIL_LAYER` | `1` |
| `GST_PLUGIN_FEATURE_RANK` | `ximagesink:3000` |
| `WINE_X11FORCEGLX` | `1` |
| `WINE_GST_NO_GL` | `1` |
| `SteamGameId` | `0` |
| `WINE_NEW_NDIS` | `1` |
| `ANDROID_SYSVSHM_SERVER` | `{rootDir}{UnixSocketConfig.SYSVSHM_SERVER_PATH}` |
| `ANDROID_RESOLV_DNS` | Active network DNS, fallback `8.8.4.4` |
| `PATH` | `{winePath}/bin:{rootDir}/usr/bin` |

**arm64EC extras:**
- `HODLL` = `libwow64fex.dll` (FEXCore) or `wowbox64.dll` (WowBox64)

**Non-arm64EC extras:**
- `BOX64_MMAP32=1` → `WRAPPER_DISABLE_PLACED=1`

**Conditional:**
- `open_with_android_browser` pref → `WINE_OPEN_WITH_ANDROID_BROWSER=1`
- `share_android_clipboard` pref → `WINE_FROM_ANDROID_CLIPBOARD=1` + `WINE_TO_ANDROID_CLIPBOARD=1`
- `LD_PRELOAD`: prepends `{rootDir}/usr/lib/libandroid-sysvshm.so` if exists

**Launch command escape hatch:** `GUEST_PROGRAM_LAUNCHER_COMMAND` env var in container's EnvVars overrides entire command (semicolon-separated parts joined with spaces).

---

### GlibcProgramLauncherComponent — Key Differences

- Box86 binary: `/usr/local/bin/box86` (vs Bionic's `/usr/bin/box64`)
- XAUTHORITY hardcoded: `/data/user/0/com.winlator/files/imagefs/home/xuser/.Xauthority`
- Box86/Box64 version tracked in SharedPreferences (`box86_version`, `box64_version`, `current_box86_version`, `current_box64_version`)
- `ContentProfile wineProfile` — can use ContentsManager-managed Wine path
- Supports `runWinetricks(String arguments, Callback<Integer>)` — runs `winetricks` with full env

---

### PulseAudioComponent — Config

**Daemon launch command:**
```
{workingDir}/libpulseaudio.so --system=false --disable-shm=true --fail=false -n \
  --file=default.pa --daemonize=false --use-pid-file=false --exit-idle-time=-1
```

**`default.pa` contents:**
```
load-module module-native-protocol-unix auth-anonymous=1 auth-cookie-enabled=0 socket="{socketPath}"
load-module module-aaudio-sink
set-default-sink AAudioSink
```

**Bundled libraries copied from APK:** `libltdl.so`, `libpulseaudio.so`, `libpulse.so`, `libpulsecommon-13.0.so`, `libpulsecore-13.0.so`, `libsndfile.so`

---

### WineUtils — Key Methods

**`createDosdevicesSymlinks(Container)`:**
- Always creates: `c:` → `../drive_c`, `z:` → container grandparent
- For drive `D`: triggers `ensureSteamappsCommonSymlink(container, gameDirectoryPath)`

**`ensureSteamappsCommonSymlink(Container, String gameDirectoryPath)`:**
- Creates: `drive_c/Program Files (x86)/Steam/steamapps/common/{gameName}` → `gameDirectoryPath`
- Handles stale symlink replacement
- Also creates: `steamapps/common/Steamworks Shared/_CommonRedist/` dirs

**`applySystemTweaks(Context, WineInfo)`:**
- Writes to `system.reg`: file associations for `.reg`, `dllfile`, `lnkfile`, `inifile`
- Writes to `user.reg` DllOverrides as `"native,builtin"`: `d3d8`, `d3d9`, `d3d10*`, `d3d11`, `d3d12*`, `ddraw`, `dxgi` + default DDraw wrapper
- Writes as `"builtin,native"`: `dinput`, `dinput8`, `xinput1_1–1_4`, `xinput9_1_0`, `xinputuap`
- Sets MSLogFont for 6 system font metrics (Caption=bold, others=normal)

**`changeServicesStatus(Container, boolean onlyEssential)`:**

| Service | Default Start |
|---|---|
| BITS | 3 |
| Eventlog | 2 |
| HTTP | 3 |
| LanmanServer | 3 |
| NDIS | 2 |
| PlugPlay | 2 |
| RpcSs | 3 |
| scardsvr | 3 |
| Schedule | 3 |
| Spooler | 3 |
| StiSvc | 3 |
| TermService | 3 |
| winebus | 3 |
| winehid | 3 |
| Winmgmt | 3 |
| wuauserv | 3 |

If `onlyEssential=true`: all set to `Start=4` (disabled).

**`setWinComponentRegistryKeys` — DirectSound CLSID:**
- `{E30629D1-27E5-11CE-875D-00608CB78066}` — DirectShow Wave Audio Renderer (registered in both `CLSID` and `Wow6432Node\CLSID`)

**`setWinComponentRegistryKeys` — XAudio CLSIDs:**
- Maps all `xactengine2_0–2_10`, `xactengine3_0–3_7`, `xaudio2_0–2_7` DLLs to either `syswow64\*.dll` (native) or `system32\*.dll` (builtin)

---

### VirGLRendererComponent — JNI Bridge

**Library:** `libvirglrenderer.so` (System.loadLibrary)

**Native methods:**
```java
long handleNewConnection(int fd)
void handleRequest(long clientPtr)
void destroyClient(long clientPtr)
void destroyRenderer(long clientPtr)
long getCurrentEGLContextPtr()
```

**EGL context sharing:** Posts `Runnable` to GLRenderer's event queue → calls native `getCurrentEGLContextPtr()`, then `synchronized wait/notify` to return the pointer to the calling thread.

**Frontbuffer flush:** Called from native side — `drawable.renderLock`, `texture.copyFromFramebuffer(framebuffer, w, h)`, fires `onDrawListener`.

---

### NetworkInfoUpdateComponent — Files Written

| File | Content | Trigger |
|---|---|---|
| `imageFs.getTmpDir()/adapterinfo` | `"Android Wi-Fi Adapter,{ip},{netmask},{gateway}"` | WiFi connected |
| `imageFs.getRootDir()/etc/hosts` | `"{ip}\tlocalhost\n"` | Any connectivity change |

Listens to: `android.net.conn.CONNECTIVITY_CHANGE` broadcast. Falls back to `127.0.0.1` in hosts file when no network.

---

---

## 37. Steam FileUtils, TarCompressorUtils, ProcessHelper & VDF Parser Cross-Reference (R6-A)

### `com.winlator.cmod.steam.utils.FileUtils` (Kotlin object/singleton)

**DEX:** `classes11.dex` | Uses `timber.log.Timber` for logging (not Android Log). Distinct from `com.winlator.cmod.core.FileUtils`.

| Method | Return | Notes |
|---|---|---|
| `calculateDirectorySize(File directory)` | `long` | Recursive sum of `file.length()` for all non-dir files; swallows exceptions; returns 0 on error |
| `makeDir(String dirName)` | `void` | `new File(dirName).mkdirs()` |
| `makeFile(String fileName, String errorTag, Function1<Exception,String> errorMsg)` | `void` | Creates file if absent; logs with `Timber.e` on error |
| `createPathIfNotExist(String filepath)` | `void` | If not ending with `/`: `makeDir(parent)`; else `makeDir(filepath)` |
| `readFileAsString(String path, String errorTag, Function1<Exception,String> errorMsg)` | `String?` | `BufferedReader` line by line; **re-appends `\n` after each line**; returns null on exception |
| `writeStringToFile(String data, String path, ...)` | `void` | Creates parent first via `createPathIfNotExist`; uses `FileOutputStream` + `OutputStreamWriter.append(data)` |
| `walkThroughPath(Path rootPath, int maxDepth, Function1<Path,Unit> action)` | `void` | `Files.list(rootPath)` recursive; `maxDepth=-1` = unbounded; `maxDepth=0` = no subdirs |
| `findFiles(Path rootPath, String pattern, boolean includeDirectories)` | `Stream<Path>` | Non-recursive; pattern split on `*` → ordered substring match (see below) |
| `findFilesRecursive(Path rootPath, String pattern, int maxDepth, boolean includeDirectories)` | `Stream<Path>` | Recursive version of findFiles via walkThroughPath |
| `assetExists(AssetManager, String assetPath)` | `boolean` | `assetManager.open(assetPath)` — IOException = false |
| `findFileCaseInsensitive(File baseDir, String relativePath)` | `File?` | Normalizes `\` → `/`; resolves each path segment case-insensitively via `listFiles()`; returns null if any segment missing |

**Pattern matching algorithm (`findFiles` / `findFilesRecursive`):**
- Pattern split on `*` separator
- Each non-empty part must appear in filename in sequential order with monotonically increasing indices
- Example: `"foo*bar"` → matches any filename containing `"foo"` then `"bar"` at a later position
- Case-sensitive in `findFiles`; `findFileCaseInsensitive` uses `equalsIgnoreCase` per segment

---

### Cross-Cutting File I/O Notes (from R6-A full agent analysis)

**Buffer size:** 128 KB (`131072` bytes) used consistently across `TarCompressorUtils`, core `FileUtils`, and steam `FileUtils` for all file I/O.

**File permissions on tar extraction:** Every file extracted from `.tzst`/`.txz` archives via `TarCompressorUtils` is chmod'd to octal `0771` (`rwxrwxr-x`). This uses the constant `TarConstants.LF_GNUTYPE_LONGNAME = 'L' = ASCII 76` — which coincidentally (or intentionally) equals the Shell Link Header size constant `76` reused in `MSLink.createFile`.

**ProcessHelper.exec() PID detection:**
- Uses Java reflection: `process.getClass().getDeclaredField("pid")` — silently returns -1 on `NoSuchFieldException`
- On Android 9+ this may fail on some implementations

**ProcessHelper.listRunningWineProcesses():**
- Iterates `/proc/` numeric directories; reads `/proc/{pid}/stat`
- Returns pid if content contains `"wine"` OR `"exe"` (approximate — may have false positives from any process with those strings in its name)

**VDF binary parser (`parseVdfData`):**
- All exceptions silently caught with empty `catch (Exception e) {}`
- Corrupted binary VDF data silently produces partial results, not errors

**core `FileUtils.readString(Context, Uri)`:**
- Uses `readLine()` — strips newlines and does NOT re-add them (opposite of steam `FileUtils.readFileAsString` which re-appends `\n`)

---

---

## 38. SaveFilePattern, LibraryAssets, SteamGameActions, NetworkMonitor, SteamLoginViewModel (R7-B)

### SaveFilePattern — Fields & Serialization

**Package:** `com.winlator.cmod.steam.data` | `@Serializable` Kotlin data class

| Field | Type | Required | Notes |
|---|---|---|---|
| `root` | `PathType` (enum) | Yes (bit 0) | Base path type |
| `path` | `String` | Yes (bit 1) | Relative path within root |
| `pattern` | `String` | Yes (bit 2) | Glob pattern to match files |
| `recursive` | `int` | No (bit 3) | 0=non-recursive; defaults from LiveLiterals |
| `uploadRoot` | `PathType` | No (bit 4) | Defaults to `root` if absent |
| `uploadPath` | `String` | No (bit 5) | Defaults to `path` if absent |

**Key methods:**
- `getPrefix()` → `"<root.name()>/<path>"` with `{STEAM_ID_64}` and `{STEAM3_ACCOUNT_ID}` substituted — used as cloud-save sync key
- `getSubstitutedPath()` → substitutes Steam ID placeholders in `path`, replaces `/` with `File.separator`

---

### ManifestInfo — Full Schema (confirmed)

All 4 fields required (`seen0 & 0xF == 0xF`): `name: String`, `gid: long (as string)`, `size: long (as string)`, `download: long (as string)`. Steam sends manifest GIDs as uint64 strings — all 3 long fields use `LongAsStringSerializer`.

---

### LibraryCapsuleInfo / LibraryHeroInfo / LibraryLogoInfo

All three are identical in structure — each has:
- `image: Map<Language, String>` — 1x art URLs keyed by language enum
- `image2x: Map<Language, String>` — 2x art URLs keyed by language enum

Both fields default to `emptyMap()`. Serialized with `LinkedHashMapSerializer(Language enum serializer, StringSerializer)`. Serialization skips both if both maps are empty.

---

### SteamControllerConfigDetail — Fields

Nested data class in `ConfigInfo.kt`:

| Field | Type | Default |
|---|---|---|
| `publishedFileId` | `long` | `0L` |
| `controllerType` | `String` | `""` |
| `enabledBranches` | `List<String>` | `emptyList()` |

---

### AppInfo — Fields (in-memory download state tracker)

Non-serializable Kotlin data class (`com.winlator.cmod.steam.data.AppInfo`):

| Field | Type | Default |
|---|---|---|
| `id` | `int` | required |
| `isDownloaded` | `boolean` | `false` |
| `downloadedDepots` | `List<Integer>` | `emptyList()` |
| `dlcDepots` | `List<Integer>` | `emptyList()` |

---

### SteamGameActions — Key Constants & Methods

**Package:** `com.winlator.cmod.steam` | Kotlin `object` singleton

**Constants:**
- `STEAM_LOADER_EXEC` = `"wine C:/Program Files (x86)/Steam/steamclient_loader_x64.exe"`
- `STEAM_LOADER_WIN_PATH` = `"C:/Program Files (x86)/Steam/steamclient_loader_x64.exe"`

**Shortcut metadata keys written:**
- `game_source` = `"STEAM"`
- `app_id` = `appId.toString()`
- `container_id` = `container.id.toString()`
- `install_path` = `SteamService.getAppDirPath(appId)`
- `launch_executable` = `SteamService.getInstalledExe(appId)`

**Container selection priority in `activateContainerForSteamApp`:**
1. Container from existing Steam shortcut for this appId
2. `PrefManager.getPreferredSteamContainerId()` (if not sentinel)
3. First container in `ContainerManager.getContainers()`

**`findSteamShortcut(Context, int appId)`:**
- Matches: `extra["game_source"] == "STEAM"` AND `extra["app_id"] == appId.toString()`

**`openShortcutSettings(Context, int appId, Integer? containerId)`:**
1. `ensureSteamShortcut(context, appId, containerId)` — creates if not found
2. Starts `SteamShortcutSettingsActivity` with `steam_app_id` + `steam_container_id` extras + `FLAG_ACTIVITY_NEW_TASK`

**`exportSaves(Context, int appId, Uri)`:**
- Save directories collected: goldberg saves dir + container prefix subdirs: `"Documents/"`, `"Saved Games/"`, + third LiveLiterals path
- Output: ZIP file (one entry per dir/file, preserving structure)

**`importSaves(Context, int appId, Uri)`:**
- Routes by zip entry name prefix: goldberg prefix → goldberg settings dir; `"Documents/"`, `"Saved Games/"`, third path → prefix dir

---

### NetworkMonitor — Connectivity Detection

**Package:** `com.winlator.cmod.utils` | Kotlin `object` singleton

**State flows:**
- `hasInternet: StateFlow<Boolean>` — true if ANY validated non-VPN/non-loopback network exists
- `isWifiConnected: StateFlow<Boolean>` — true if a validated network has `TRANSPORT_WIFI` or `TRANSPORT_ETHERNET`

**Ignored transports:** `TRANSPORT_VPN (4)`, `TRANSPORT_WIFI_AWARE (5)`, loopback

**Internet detection:** `NET_CAPABILITY_VALIDATED` (16) — network must pass validation check

**Init:** One-shot via `AtomicBoolean.compareAndSet(false, true)`. Registers `ConnectivityManager.NetworkCallback` for ongoing updates.

---

### SteamLoginViewModel — Architecture

**Package:** `com.winlator.cmod.steam.ui` | `ViewModel` subclass

**State machine:** Lock-free CAS loops on `MutableStateFlow<UserLoginState>` for all updates — thread-safe for concurrent Steam service callbacks.

**`IAuthenticator` impl bridge pattern:**
- `getDeviceCode(previousIncorrect)` → sets `loginScreen=TWO_FACTOR`, `lastTwoFactorMethod="authenticator_code"` → returns `CompletableFuture` awaiting `submitChannel`
- `getEmailCode(email, previousIncorrect)` → sets `loginScreen=TWO_FACTOR`, `lastTwoFactorMethod="email_code"` → returns `CompletableFuture` awaiting `submitChannel`
- `acceptDeviceConfirmation()` → sets `loginScreen=TWO_FACTOR`, `lastTwoFactorMethod="steam_guard"` → returns `completedFuture(true)`

**`submitTwoFactor()`:** Takes `twoFactorCode` from state, uppercases+trims it, sends to `submitChannel` → unblocks the waiting `CompletableFuture` in `IAuthenticator`.

**`retryConnection()` timing:** Stops service, then restarts via `Handler(Looper.mainLooper).postDelayed` — delay duration from LiveLiterals.

**Event → state transitions:**

| Event | State change |
|---|---|
| `SteamConnected(autoLogin=true)` | `isLoggingIn=true, isSteamConnected=true` |
| `SteamConnected(autoLogin=false)` | `isLoggingIn=false, isSteamConnected=true` |
| `SteamDisconnected` | `isLoggingIn=false, isSteamConnected=false` |
| `LogonStarted` | `isLoggingIn=true` |
| `LogonEnded` | `isLoggingIn=false, loginResult=event.result` |
| `QrChallengeReceived` | `qrCode=url, isQrFailed=false` |
| `QrCodeScanned` | `isLoggingIn=true, loginResult=DeviceConfirm, loginScreen=TWO_FACTOR, lastTwoFactorMethod="steam_guard"` |
| `QrAuthEnded(fail)` | `isLoggingIn=false, loginScreen=CREDENTIAL, isQrFailed=true` |
| `QrAuthEnded(success)` | → TWO_FACTOR screen (if not already there) |
| `LoggedOut` | `isLoggingIn=false, isSteamConnected=false, loginResult=Failed, loginScreen=CREDENTIAL` |

---

---

## 39. ContentProfile, ContentsManager, Box64PresetManager, HDR System, AdrenotoolsManager, Container (R7-C)

### ContentProfile — JSON Keys & Fields

**Package:** `com.winlator.cmod.contents` | **DEX:** `classes16.dex`

| JSON Key | Field | Type | Default |
|---|---|---|---|
| `"description"` | `desc` | `String` | — |
| `"files"` | `fileList` | `List<ContentFile>` | — |
| `"source"` / `"target"` | `ContentFile.source/target` | `String` | — |
| `"type"` | `type` | `ContentType` enum | — |
| `"versionCode"` | `verCode` | `int` | — |
| `"versionName"` | `verName` | `String` | — |
| `"binPath"` | `wineBinPath` | `String` | `"bin"` |
| `"libPath"` | `wineLibPath` | `String` | `"lib"` |
| `"prefixPack"` | `winePrefixPack` | `String` | `"prefix.tar.xz"` |

**`ContentType` enum:**

| Value | `typeName` |
|---|---|
| `CONTENT_TYPE_WINE` | `"Wine"` |
| `CONTENT_TYPE_DXVK` | `"DXVK"` |
| `CONTENT_TYPE_VKD3D` | `"VKD3D"` |
| `CONTENT_TYPE_BOX64` | `"Box64"` |
| `CONTENT_TYPE_WOWBOX64` | `"WOWBox64"` |
| `CONTENT_TYPE_FEXCORE` | `"FEXCore"` |

---

### ContentsManager — Key Constants & Paths

**SharedPreferences:** `"contents_manager_prefs"` — key `"graphics_driver_installed_<version>"` (boolean)

**Remote profiles URL:** `"https://github.com/REF4IK/Components-Adrenotools-/releases/download/1/contents.json"` (overrideable via pref `"downloadable_contents_url"`)

**Template directory map (`${…}` → resolved path):**

| Template | Resolved Path |
|---|---|
| `${libdir}` | `<filesDir>/imagefs/usr/lib` |
| `${system32}` | `<filesDir>/imagefs/home/xuser/.wine/drive_c/windows/system32` |
| `${syswow64}` | `<filesDir>/imagefs/home/xuser/.wine/drive_c/windows/syswow64` |
| `${bindir}` | `<filesDir>/imagefs/usr/bin` |
| `${sharedir}` | `<filesDir>/imagefs/usr/share` |

**Trust files per type (files that cannot be user-modified):**

| Type | Trusted files |
|---|---|
| DXVK | `${system32}/d3d8.dll` through `d3d11.dll` + `dxgi.dll` × 2 (system32 + syswow64), 14 total |
| VKD3D | `${system32}/d3d12core.dll`, `d3d12.dll` × 2 (system32 + syswow64), 4 total |
| BOX64 | `${bindir}/box64` |
| WOWBOX64 | `${system32}/wowbox64.dll` |
| FEXCORE | `${system32}/libwow64fex.dll`, `${system32}/libarm64ecfex.dll` |

**`ContentDirName` enum:** `CONTENT_MAIN_DIR_NAME="contents"`, `CONTENT_WINE_DIR_NAME="wine"`, `CONTENT_DXVK_DIR_NAME="dxvk"`, `CONTENT_VKD3D_DIR_NAME="vkd3d"`, `CONTENT_BOX64_DIR_NAME="box64"`

**File paths:**
- `getContentDir(context)` → `context.getFilesDir()/contents`
- `getInstallDir(context, profile)` → `…/contents/<typeName>/<verName>-<verCode>`
- `getTmpDir(context)` → `context.getFilesDir()/tmp/contents`
- `getSourceFile(context, profile, path)` → `installDir/<path>`

**`getEntryName(profile)`:** `"TypeName-verName-verCode"` — dash-separated.

---

### Box86_64PresetManager — Built-In Presets

**File extension:** `.boxx` (export/import)

**SharedPreferences key:** `"<prefix>_custom_presets"` — comma-separated `"CUSTOM-N|Name|envVarString"` triplets

| Preset ID | Key env var differences |
|---|---|
| `STABILITY` | SAFEFLAGS=2, FASTNAN=0, FASTROUND=0, X87DOUBLE=1, BIGBLOCK=0, STRONGMEM=2, FORWARD=128, CALLRET=0, WAIT=0; BOX64: AVX=0, UNITYPLAYER=1, MMAP32=0 |
| `COMPATIBILITY` | STRONGMEM=1, WAIT=1 vs STABILITY; otherwise same |
| `INTERMEDIATE` | FASTNAN=1, BIGBLOCK=1, STRONGMEM=0, CALLRET=1, WAIT=1; BOX64: AVX=0, UNITYPLAYER=0, MMAP32=1 |
| `PERFORMANCE` | SAFEFLAGS=1, FASTNAN=1, FASTROUND=1, X87DOUBLE=0, BIGBLOCK=3, STRONGMEM=0, FORWARD=512, CALLRET=1, WAIT=1; BOX64: AVX=0, UNITYPLAYER=0, MMAP32=1 |

**Export file format (`.boxx`):**
```
Type:<prefix>
Name:<name>
EnvVars:<envVarString>
```

---

### HDRConfiguration — Mode & Tone Mapping Constants

**HDR Mode:** `DISABLED=0`, `AUTO=1`, `HDR10=2`, `DOLBY_VISION=3`, `HLG=4`, `HDR10_PLUS=5`

**Tone Mapping:** `DISABLED=0`, `REINHARD=1`, `HABLE=2`, `ACES=3`, `AUTO=4`

**Color Space names:** `0=sRGB`, `1=Display P3`, `2=BT.2020`, `3=Adobe RGB`

**HDR10 preset defaults:** `hdrMode=2, colorSpace=2(BT.2020), maxLum=1000, minLum=0.01, maxAvgLum=400, toneMapping=4(Auto), gamma=2.4, bitDepth10=true, wideColor=true, saturationBoost=1.1, contrastEnhancement=1.2`

**SDR preset defaults:** `hdrMode=0, colorSpace=0, maxLum=100, minLum=0.1, maxAvgLum=100, toneMapping=0, gamma=2.2, bitDepth10=false, wideColor=false`

---

### HDRColorUtils — Key Constants

| Constant | Value |
|---|---|
| `GAMMA_BT2020` | `2.4f` |
| `GAMMA_BT709` | `2.4f` |
| `GAMMA_SRGB` | `2.2f` |
| `HDR_MAX_LUMINANCE` | `10000.0f` |
| `HDR_PEAK_LUMINANCE` | `1000.0f` |
| `SDR_WHITE_LUMINANCE` | `100.0f` |

**Tone mapping formulas:**
- Reinhard: `L/(1+L)`, L = hdr/maxLuminance
- Hable: A=0.15, B=0.5, C=0.1, D=0.2, E=0.02, F=0.3, white=11.2
- ACES: `(2.51x²+0.03x)/(2.43x²+0.59x+0.14)` clamped to [0,1]

**PQ EOTF (SMPTE ST 2084):** m1=0.15930176, m2=78.84375, c1=0.8359375, c2=18.851562, c3=18.6875

**Color matrices — sRGB→BT2020:**
`[0.627404, 0.329283, 0.043313, 0.069097, 0.91954, 0.011362, 0.016391, 0.088013, 0.895595]`

**Luminance:** BT709: `0.2126R+0.7152G+0.0722B`; BT2020: `0.2627R+0.678G+0.0593B`

---

### HDR10MetadataHandler — BT.2020 Static Metadata

| Field | Raw value | Meaning |
|---|---|---|
| displayPrimaryRed_x | 35400 | 0.708 × 50000 |
| displayPrimaryRed_y | 14600 | 0.292 × 50000 |
| displayPrimaryGreen_x | 8500 | 0.17 × 50000 |
| displayPrimaryGreen_y | 39850 | 0.797 × 50000 |
| displayPrimaryBlue_x | 6550 | 0.131 × 50000 |
| displayPrimaryBlue_y | 2300 | 0.046 × 50000 |
| whitePoint_x | 15635 | 0.3127 × 50000 |
| whitePoint_y | 16450 | 0.329 × 50000 |
| maxDisplayMasteringLuminance | 10000000 | 1000 nit × 10000 |
| minDisplayMasteringLuminance | 5 | 0.0005 nit × 10000 |
| maxContentLightLevel | 1000 | — |
| maxFrameAverageLightLevel | 400 | — |

**Packet format:** 32-byte packet; Byte 0=`0x87`, Byte 1=`0x01`, Byte 2=`0x1A` (26), Byte 3=checksum (256−sum), Bytes 4-5=`0x00 0x00`, Bytes 6–31=raw metadata.

---

### HDRSurfaceConfiguration — EGL Color Space Constants

| Constant | Value |
|---|---|
| `EGL_GL_COLORSPACE_KHR` | 12445 |
| `EGL_GL_COLORSPACE_SRGB_KHR` | 12425 |
| `EGL_GL_COLORSPACE_LINEAR_KHR` | 12426 |
| `EGL_GL_COLORSPACE_BT2020_LINEAR_EXT` | 13119 |
| `EGL_GL_COLORSPACE_BT2020_PQ_EXT` | 13120 |
| `EGL_GL_COLORSPACE_DISPLAY_P3_LINEAR_EXT` | 13154 |
| `EGL_GL_COLORSPACE_DISPLAY_P3_PQ_EXT` | 13155 |

**GL extensions checked:** `GL_EXT_color_buffer_float`, `GL_EXT_color_buffer_half_float`, `GL_OES_texture_half_float`, `GL_EXT_texture_norm16`

**EGL extensions checked:** `EGL_EXT_gl_colorspace_bt2020_linear`, `EGL_EXT_gl_colorspace_bt2020_pq`, `EGL_EXT_gl_colorspace_display_p3_linear`, `EGL_EXT_gl_colorspace_display_p3_pq`

**Framebuffer formats:** SDR=`GL_RGBA(6408)`, 10-bit=`GL_RGB10_A2(32857)`, half-float=`GL_RGBA16F(34842)`, float=`GL_RGBA32F(34836)`

**NOTE:** `getEGLColorSpace()` always returns `EGL_GL_COLORSPACE_SRGB_KHR` — BT2020/P3 branches are empty stubs (incomplete implementation).

---

### AdrenotoolsManager — Key Paths & Binary Patch

**Driver paths:**
- Driver base dir: `<filesDir>/imagefs/contents/adrenotools/`
- Per-driver: `…/adrenotools/<id>/`
- Driver metadata: `…/<id>/meta.json` — keys: `"libraryName"`, `"name"`, `"driverVersion"`
- Bundled asset: `graphics_driver/adrenotools-<id>.tzst`
- Remote GitHub source: Repo `REF4IK/Components-Adrenotools-`, release tag `"111"`, GitHub Releases API

**`setDriverById` env vars set:**
- `ADRENOTOOLS_DRIVER_PATH` = `<adrenotoolsContentDir>/<id>/`
- `ADRENOTOOLS_HOOKS_PATH` = `imageFs.getLibDir()`
- `ADRENOTOOLS_DRIVER_NAME` = `<libraryName from meta.json>`

**Binary patch (v762 driver only):**
- File: `notadreno_utils.so` at offset **9856** (`0x2680`)
- GPU version `"512.530"` → write byte value `3`
- GPU version `"512.502"` → write byte value `2`

---

### Container — All Defaults

**Package:** `com.winlator.cmod.container`

| Constant | Value |
|---|---|
| `DEFAULT_AUDIO_DRIVER` | `"alsa-reflector"` |
| `DEFAULT_DDRAWRAPPER` | `"wined3d"` |
| `DEFAULT_DXWRAPPER` | `"dxvk"` |
| `DEFAULT_DXWRAPPERCONFIG` | `"version=1.10.1,framerate=0,maxDeviceMemory=0,async=0,asyncCache=0,vkd3dVersion=2.12-0,vkd3dLevel=12_1"` |
| `DEFAULT_EMULATOR` | `"FEXCore"` |
| `DEFAULT_GRAPHICS_DRIVER` | `"wrapper"` |
| `DEFAULT_SCREEN_SIZE` | `"1280x720"` |
| `DEFAULT_WINCOMPONENTS` | `"direct3d=1,directsound=0,directmusic=0,directshow=0,directplay=0,xaudio=0,vcrun2010=1,opengl=0"` |
| `FALLBACK_WINCOMPONENTS` | `"direct3d=1,directsound=1,directmusic=1,directshow=1,directplay=1,xaudio=1,vcrun2010=1,opengl=0"` |
| `DEFAULT_ENV_VARS` | `"ZINK_DESCRIPTORS=lazy ZINK_DEBUG=compact MESA_SHADER_CACHE_DISABLE=false MESA_SHADER_CACHE_MAX_SIZE=512MB mesa_glthread=true WINEESYNC=1 TU_DEBUG=noconform,sysmem DXVK_HUD=devinfo,fps,frametimes,gpuload,version,api"` |
| `DEFAULT_GRAPHICSDRIVERCONFIG` | `"version=System;blacklistedExtensions=;maxDeviceMemory=0;adrenotoolsTurnip=1;frameSync=Normal;presentMode=mailbox;resourceType=auto;blit=0;enableHDR=0;hdrMode=0;hdrColorSpace=0;hdrToneMapping=0;enable10Bit=0;enableWideColorGamut=0"` |
| `STARTUP_SELECTION_NORMAL=0`, `STARTUP_SELECTION_ESSENTIAL=1`, `STARTUP_SELECTION_AGGRESSIVE=2` | — |
| `MAX_DRIVE_LETTERS` | `26` |

**Instance field defaults:**

| Field | Default |
|---|---|
| `name` | `"Container-<id>"` |
| `screenSize` | `"1280x720"` |
| `graphicsDriver` | `"wrapper"` |
| `dxwrapper` | `"dxvk"` |
| `ddrawrapper` | `"wined3d"` |
| `audioDriver` | `"alsa-reflector"` |
| `audioDriverConfig` | `"performanceMode=1,volume=1.0,latencyMillis=20"` |
| `wincomponents` | `DEFAULT_WINCOMPONENTS` |
| `wineVersion` | `"proton-9.0-x86_64"` (MAIN_WINE_VERSION) |
| `wow64Mode` | `true` |
| `startupSelection` | `1` (ESSENTIAL) |
| `box64Preset` | `"COMPATIBILITY"` |
| `box64Version` | `"0.3.7"` |
| `fexcorePreset` | `"INTERMEDIATE"` |
| `fexcoreVersion` | `"2507"` |
| `desktopTheme` | `WineThemeManager.DEFAULT_DESKTOP_THEME` |
| `inputType` | `4` |
| `primaryController` | `1` |
| `controllerMapping` | 10 null chars (one per `XrControllerMapping` ordinal) |
| `envVars` | `DEFAULT_ENV_VARS` |

**Container paths:**
- Container dirs: `<imageFs.getRootDir()>/home/xuser-<id>/`
- Active container symlink: `<imageFs.getRootDir()>/home/xuser` → `./xuser-<id>`
- Config file: `.container` (JSON) in container rootDir
- Desktop dir: `.wine/drive_c/users/xuser/Desktop/`
- Start menu dir: `.wine/drive_c/ProgramData/Microsoft/Windows/Start Menu/`
- Icons dir: `.local/share/icons/hicolor/<size>x<size>/apps/`
- Export path: `Downloads/Winlator/Backups/Containers/`

**Migration rules (`checkObsoleteOrMissingProperties`):**
- `"dxcomponents"` → renamed to `"wincomponents"`
- `graphicsDriver` `"turnip-zink"`, `"turnip"`, `"llvmpipe"` → reset to `"dxvk"`
- `dxwrapper = "original-wined3d"` → reset to `"dxvk"`
- `appVersion < 16`: merges missing DEFAULT_ENV_VARS keys into existing envVars

**`XrControllerMapping` enum (10 values):** `BUTTON_A`, `BUTTON_B`, `BUTTON_X`, `BUTTON_Y`, `BUTTON_GRIP`, `BUTTON_TRIGGER`, `THUMBSTICK_UP`, `THUMBSTICK_DOWN`, `THUMBSTICK_LEFT`, `THUMBSTICK_RIGHT`

---

## 40. VDFParser (text+binary), TarCompressorUtils, ProcessHelper, MSLink, MSBitmap, AppUtils, FileUtils, WineInfo, KeyValueSet, MSLogFont (R7-A)

### VDF Text Parser (`com.winlator.cmod.steam.utils.VdfParser`)

**Algorithm:** Cursor-based recursive descent. Strips UTF-8 BOM (`\uFEFF`) on construction. Parses standard Valve KV1 text format.

- `nextToken()` — returns `{`, `}` as single-char; quoted strings via `parseQuoted()`; unquoted via `parseUnquoted()`
- `parseQuoted()` — reads until `"`, handles `\` escapes via `unescapeChar()` (11+ escape sequences)
- `skipWhitespaceAndComments()` — skips whitespace and `//` line comments
- Duplicate keys are preserved (List-backed `VdfObject`, not Map)

**`VdfObject`** — tree node: `List<VdfEntry>` with lookup methods: `getObject(key)`, `getObjects(key)`, `getString(key)`, `getStrings(key)`, `objectEntries()`, `objectValues()`, `stringEntries()`, `keys()`

**`VdfEntry`** — data class: `String key`, `VdfValue value`

**`VdfString`** — implements `VdfValue`: single `String value` field

---

### VDF Binary Parser (`com.winlator.cmod.steam.statsgen.VdfParser`)

**Binary type tags (`static final byte`):**

| Constant | Value | Type |
|---|---|---|
| `VDF_SUBSECTION` | `0` | Nested object (read key, recurse) |
| `VDF_STRING` | `1` | Null-terminated UTF-8 string |
| `VDF_INT32` | `2` | 4-byte LE int |
| `VDF_FLOAT32` | `3` | 4-byte LE IEEE 754 float |
| `VDF_INT64` | `7` | 8-byte LE long |
| `VDF_END` | `8` | End of section |
| `VDF_UINT64` | `10` | 8-byte LE unsigned long (Java `long`) |

**API:** `binaryLoads(byte[] data)` → `Map<String, Object>` (wraps in `DataInputStream`; dispatches by type byte; returns `LinkedHashMap`; silent `catch(Exception e){}` — no error propagation on corruption)

---

### TarCompressorUtils — Key Details

**Buffer:** 128 KB (`131072` bytes) throughout

**Compression types:** `XZ` (Apache XZCompressorInputStream/OutputStream), `ZSTD` (ZstdCompressor*)

**Permissions:** `FileUtils.chmod(file, 505)` = octal `0771` (`rwxrwxr-x`) applied to every extracted file

**`extractTar` special behavior:**
- Strips top-level directory prefix from all entry names
- Skips entries with `/tmp/` in path
- Uses `TarArchiveInputStream` (Apache Commons Compress)
- Symlinks handled via `FileUtils.symlink()`

**`TarArchiveOutputStream` config:** `setLongFileMode(2)` = `LONGFILE_POSIX`

---

### ProcessHelper — Full Method Summary

**Signal constants (byte):** `SIGCONT=18`, `SIGKILL=9`, `SIGSTOP=19`, `SIGTERM=15`

**`exec()` core logic:**
1. Calls `EnvironmentManager.setEnvVars(envp)` + `EnvironmentManager.getEnvVars()` to merge env
2. `splitCommand()` — handles `\"…\"` quoted args + `\\ ` escaped spaces
3. PID extraction via reflection: `process.getClass().getDeclaredField("pid")` — returns `-1` on failure
4. No debug callbacks → stdout+stderr redirected to `/dev/null`

**`listRunningWineProcesses()`:** Iterates `/proc/` numeric dirs; reads `/proc/<pid>/stat`; returns PIDs where content contains `"wine"` (via `ContentProfile.MARK_WINE`) OR `"exe"` — approximate, may have false positives

**`getAffinityMaskAsHexString(cpuList)`:** Comma-separated CPU indices → `Integer.toHexString(bitmask)`

**Debug callbacks:** Synchronized `ArrayList<Callback<String>>` — spawns single-thread executor reading process stdout

---

### MSLink — Shell Link Format

**ShowCommand constants (byte):** `SW_SHOWNORMAL=1`, `SW_SHOWMAXIMIZED=3`, `SW_SHOWMINNOACTIVE=7`

**Base LinkFlags:** `257` (`HasLinkTargetIDList | ForceNoLinkInfo`)
- Adds `32` (`HasArguments`) if cmdArgs set
- Adds `64` (`HasIconLocation`) if iconLocation set

**Hardcoded CLSIDs:**
- `LinkCLSID` = `"00021401-0000-0000-c000-000000000046"` (Shell Link)
- `CLSIDComputer` = `"20d04fe0-3aea-1069-a2d8-08002b30309d"` (My Computer)
- `CLSIDNetwork` = `"208d2c60-3aea-1069-a2d7-08002b30309d"` (Network Neighborhood)

**File structure (76-byte header):**
`HeaderSize(0x4C=76)` → `LinkCLSID(16B)` → `LinkFlags(4B)` → `FileAttributes(4B)` → timestamps(24B zeros) → `FileSize(4B)` → `IconIndex(4B)` → `ShowCommand(4B)` → `Hotkey+Reserved(8B zeros)` → `IDList(var)` → `TerminalID(0x00 0x00)` → optional StringData

**Path handling:** All `/` normalized to `\`. UNC paths use `CLSIDNetwork`; local paths use `CLSIDComputer` with drive root. Dirs: FileAttributes `0x10`; Files: `0x20`.

**CLSID byte order:** Non-standard — first group bytes swapped, standard GUIDs use mixed-endian encoding.

---

### MSBitmap — Windows BMP Reader/Writer

**`open(File)`:**
- Validates magic `0x4D42` ("BM")
- Reads BGR triplets → ARGB_8888 with alpha=`0xFF`
- Row padding: `width % 4` bytes
- Returns `null` if all pixels identical (blank detection)
- Does NOT handle compressed BMPs

**`create(Bitmap, File)`:**
- Writes 24-bit uncompressed BI_RGB BMP
- Header: 54 bytes (BITMAPFILEHEADER + BITMAPINFOHEADER)
- DataOffset = `54`, Planes = `1`, BitCount = `24`, Compression = `0`
- Pixels: BGR order, bottom-up rows, row-padded to multiple of 4
- Padding fill: `0xFF` (not `0x00`)

---

### AppUtils — Key Methods & Constants

**`getArchName()`:** `arm64-v8a`→`"arm64"`, `armeabi-v7a`→`"armhf"`, `x86_64`→`"x86_64"`, `x86`→`"x86"`, default=`"armhf"`

**`restartApplication(Context, int selectedMenuItemId)`:** `getLaunchIntentForPackage` → `makeRestartActivityTask` → optionally puts `"selected_menu_item_id"` extra → `Runtime.exit(0)`

**`hideSystemUI(Activity)`:**
- API ≥ 28: `layoutInDisplayCutoutMode=1` (SHORT_EDGES)
- API ≥ 30: `setDecorFitsSystemWindows(false)` + `WindowInsetsController.hide(statusBars|navigationBars)` + `setSystemBarsBehavior(2)` (BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE)
- Legacy: `setSystemUiVisibility(5894)` with re-hide listener

**`showToast(Context, String text)`:**
- Duration: `LENGTH_LONG` if text ≥ 40 chars, else `LENGTH_SHORT`
- Gravity: `81` (BOTTOM|CENTER_HORIZONTAL), yOffset `50`
- Custom layout: `R.layout.custom_toast`, text in `R.id.TextView`
- Cancels previous global toast

**`showPopupWindow` positioning:**
- Screen padding: `12dp`
- Elevation: `5.0f`
- Positions above anchor if insufficient space below and more space above
- xOffset clamped to `[screenPadding, screenWidth-screenPadding-popupWidth]`

**`observeSoftKeyboardVisibility`:** Keyboard visible threshold: `keypadHeight > screenHeight * 0.15`

---

### core FileUtils — Key Methods

**`writeToBinaryFile(String filename, int position, int data)`:** `RandomAccessFile("rw")` → `seek(position)` → `write(data)` (single byte) — used by AdrenotoolsManager for the v762 binary patch

**`getFilePathFromUriUsingSAF(Context, Uri)`:** `DocumentsContract.getTreeDocumentId()` → split on `:` → `type:path`. `"primary"` type → `Environment.getExternalStorageDirectory()/path`. Otherwise `/mnt/media_rw/<type>/<path>`. URL-decodes path (UTF-8).

**`contentEquals(File, File)`:** Files < 128KB: byte-by-byte comparison. Files ≥ 128KB: 128KB buffer comparison.

**`getFileFromUri(Context, Uri)`:** Tries SAF path; fallback copies URI content to `getCacheDir()/restore_*.tmp`.

**`copy(Context, String assetFile, File dstFile)`:** Recursive asset copy; identifies dirs via `getAssets().list()`.

**Note:** `readString(Context, Uri)` uses `readLine()` which strips newlines (different from steam FileUtils which re-appends `\n`).

---

### WineInfo — Fields & Key Constants

**`MAIN_WINE_VERSION`:** `new WineInfo("proton", "9.0", "x86_64")` — identifier = `"proton-9.0-x86_64"`

**Identifier format:** `<type>-<version>-<arch>` or `<type>-<version>-<subversion>-<arch>`

**`isArm64EC()`:** `arch.equals("arm64ec")`

**`isWin64()`:** `arch.equals("x86_64") || arch.equals("arm64ec")`

**`toString()` `" (Custom)"` suffix:** Identity comparison `this == MAIN_WINE_VERSION` — NOT `.equals()`. Fires only for the exact singleton.

**Identifier regex:** `^(wine|proton)-([0-9\.]+)-?([0-9\.]+)?-(x86|x86_64|arm64ec)$`

---

### KeyValueSet — Comma-Delimited Key=Value Store

**Format:** `key=value,key2=value2,...`

**Boolean true detection:** `"1"`, `"t"`, `"true"` (case-insensitive)

**Iterator reuse hazard:** Returns the same `String[2]` array on every `next()` call — callers must not retain references to the returned array.

---

### MSLogFont — LOGFONTW Defaults

| Field | Default |
|---|---|
| `height` | `-11` |
| `weight` | `400` (FW_NORMAL) |
| `pitchAndFamily` | `34` (0x22 = DEFAULT_PITCH | FF_SWISS) |
| `faceName` | `"Tahoma"` |
| all others | `0` |

**`toByteArray()`:** 92-byte LOGFONTW struct, LITTLE_ENDIAN; `faceName` written as 2-byte chars (up to 32 UTF-16LE characters = standard `lfFaceName[LF_FACESIZE]`).

---

### SteamControllerVdfUtils — Button Mapping (hardcoded)

| Steam button | XInput mapping |
|---|---|
| `button_a` | A |
| `button_b` | B |
| `button_x` | X |
| `button_y` | Y |
| `dpad_north/south/east/west` | DUP/DDOWN/DRIGHT/DLEFT |
| `button_escape` | START |
| `button_menu` | BACK |
| `left_bumper/right_bumper` | LBUMPER/RBUMPER |
| `button_back_left/right` | A/X |
| `button_back_left_upper/right_upper` | B/Y |

---

---

## 41. MainActivity, SettingsFragment, ContainerDetailFragment, ContainersFragment, FileManagerActivity (R8-C)

### MainActivity — Intent Extras

| Extra | Type | Default | Effect |
|---|---|---|---|
| `edit_input_controls` | boolean | false | Skips nav, jumps to InputControlsFragment |
| `selected_profile_id` | int | 0 | Input profile to edit |
| `selected_menu_item_id` | int | 0 | Nav item to select on launch |
| `edit_save_id` | int | -1 | Opens SaveEditDialog if ≥ 0 |

**Activity result codes:**
- requestCode `2` (`OPEN_FILE_REQUEST_CODE`) → `openFileCallback`
- requestCode `1001` → `selectedFilePath` from FileManagerActivity (shows debug path alert)

---

### MainActivity — Navigation Drawer Routing

| Menu Item ID | Action |
|---|---|
| `main_menu_containers` | `ContainersFragment` |
| `main_menu_adrenotools_gpu_drivers` | `AdrenotoolsFragment` |
| `main_menu_box_rc` | `Box86_64RCFragment` |
| `main_menu_contents` | `ContentsFragment` |
| `main_menu_input_controls` | `InputControlsFragment(selectedProfileId)` |
| `main_menu_saves` | `SavesFragment` |
| `main_menu_settings` | `SettingsFragment` |
| `main_menu_shortcuts` | `ShortcutsFragment` |
| `main_menu_steam` | Starts `SteamLibraryActivity` (Pluvia) |
| `main_menu_file_manager` | Starts `FileManagerActivity` |
| `main_menu_gamepad_test` | Starts `GamePadTestActivity` |
| `main_menu_about` | Shows `AboutDialog` |

**Fragment container:** `R.id.FLFragmentContainer`

---

### MainActivity — SharedPreferences Keys Read at Startup

| Key | Type | Default | Effect |
|---|---|---|---|
| `enable_big_picture_mode` | boolean | false | If true, starts `BigPictureActivity` instead |
| `dark_mode` | boolean | false | Applies dark AppTheme (ID `2131951628`) |
| `app_language` | String | `"system"` | `AppCompatDelegate.setApplicationLocales`; valid: `"system"`, `"en"`, `"ru"` |
| `receive_beta_updates` | boolean | false | Checks GitHub for updates on startup |

**Update endpoint:** `https://api.github.com/repos/REF4IK/update-url-mod-/releases/latest`

**Transition animation values:** `"slide_vertical"` (default), `"slide_horizontal"`, `"fade"`, `"zoom"`, `"none"`

---

### MainActivity — About Dialog URLs

```
https://www.winlator.org
https://t.me/winlatorruu
https://github.com/REF4IK/winlator-ref4ik-
https://github.com/brunodev85
https://github.com/coffincolors/winlator
https://github.com/Pipetto-crypto/winlator/tree/winlator_bionic
```
Credits: Ubuntu Focal, Wine, Box86/64, FEX-Emu, PRoot, Mesa, DXVK, VKD3D, D8VK, linux-fg, CNC DDraw, WinlatorWCPHub (Arihany)
Driver credits: K11MCH1/AdrenoToolsDrivers, MrPurple666/purple-turnip, Weab-chan/freedreno_turnip-CI, crueter/GameHub-8Elite-Drivers

---

### SettingsFragment — All SharedPreferences Keys

**Theme/UI:**

| Key | Type | Default | Notes |
|---|---|---|---|
| `dark_mode` | boolean | false | Triggers `activity.recreate()` immediately |
| `app_language` | String | `"system"` | `"system"`, `"en"`, `"ru"` |
| `transition_animation` | String | `"slide_vertical"` | 5 values |
| `enable_big_picture_mode` | boolean | false | Takes effect on next launch |

**Updates:**

| Key | Type | Default |
|---|---|---|
| `receive_beta_updates` | boolean | false |
| `skipped_version` | String | null |

**Input controls:**

| Key | Type | Default | Notes |
|---|---|---|---|
| `cursor_lock` | boolean | true | Mouse capture |
| `cursor_speed` | float | 1.0f | Seekbar /100 |
| `xinput_toggle` | boolean | false | XInput toggle button |
| `legacy_mode_enabled` | boolean | false | |
| `trigger_type` | int | 1 | 0=button, 1=axis, 2=mixed |

**Gyroscope:**

| Key | Type | Default |
|---|---|---|
| `gyro_enabled` | boolean | false |
| `gyro_trigger_button` | int | 102 |
| `gyro_mode` | int | 0 (0=hold, 1=toggle) |
| `gyro_x_sensitivity` | float | 1.0f |
| `gyro_y_sensitivity` | float | 1.0f |
| `gyro_smoothing` | float | 0.9f |
| `gyro_deadzone` | float | 0.05f |
| `invert_gyro_x` | boolean | false |
| `invert_gyro_y` | boolean | false |

**XServer/Wine:**

| Key | Type | Default |
|---|---|---|
| `use_dri3` | boolean | true |
| `use_xr` | boolean | true (only shown if XrActivity.isSupported()) |
| `enable_wine_debug` | boolean | false |
| `wine_debug_channels` | String | `"warn,err,fixme"` |
| `enable_box86_64_logs` | boolean | false |

**Misc:**

| Key | Type | Default | Notes |
|---|---|---|---|
| `enable_file_provider` | boolean | true | Takes effect on next startup |
| `open_with_android_browser` | boolean | false | |
| `share_android_clipboard` | boolean | false | |
| `downloadable_contents_url` | String | `"https://github.com/REF4IK/Components-Adrenotools-/releases/download/1/contents.json"` | |
| `frontend_export_uri` | String | null | Default path: `[Downloads]/Winlator/Frontend` |
| `enable_custom_api_key` | boolean | false | Shows/hides SteamGridDB API key field |
| `custom_api_key` | String | `""` | Removed from prefs when disabled; help URL: `https://www.steamgriddb.com/profile/preferences/api` |

**Emulator version reset keys:** `current_box64_version`, `current_wowbox64_version`, `current_fexcore_version`

**Static constants:**
- `DEFAULT_EXPORT_PATH` = `[Downloads]/Winlator/Frontend`
- `DEFAULT_WINE_DEBUG_CHANNELS` = `"warn,err,fixme"`

---

### ContainerDetailFragment — Key Details

**Static constants:**
- `CONTAINER_PROFILE_ARCHIVE_EXTENSION` = `".wprofile.zip"`
- `CONTAINER_PROFILE_SCHEMA_VERSION` = `2`
- `CONTAINER_PROFILE_TYPE` = `"container_settings_profile"`

**`inputType` bitmask:** bit0/1=DInput/XInput enum, bit2=DInput enabled, bit3=XInput enabled

**SDL2 env vars toggled (added/removed from container envVars):**
```
SDL_JOYSTICK_WGI=0          SDL_XINPUT_ENABLED=1
SDL_JOYSTICK_RAWINPUT=0     SDL_JOYSTICK_HIDAPI=1
SDL_DIRECTINPUT_ENABLED=0   SDL_JOYSTICK_ALLOW_BACKGROUND_EVENTS=1
SDL_HINT_FORCE_RAISEWINDOW=0 SDL_ALLOW_TOPMOST=0
SDL_MOUSE_FOCUS_CLICKTHROUGH=1
```

**Desktop shortcut `.desktop` template (component installer):**
```
[Desktop Entry]
Name=...
Exec=env WINEPREFIX="..." wine [windows_path]
Type=Application
StartupNotify=true
Path=[D: drive path]
StartupWMClass=[filename.lowercase]

[Extra Data]
inputType=6
relativeMouseMovement=0
simTouchScreen=0
execArgs=/passive /norestart
fexConfig=
sharpnessEffect=None
sharpnessLevel=100
sharpnessDenoise=100
```

**Activity request code:** `4` = `OPEN_DIRECTORY_REQUEST_CODE`

---

### ContainersFragment — Container Menu Actions

| Menu Item ID | Action |
|---|---|
| `container_duplicate` | Async duplicate + reload |
| `container_edit` | Opens `ContainerDetailFragment(container.id)` |
| `container_export` | Exports to `[Downloads]/Winlator/Backups/Containers/` |
| `container_file_manager` | Starts `FileManagerActivity` with `browseMode=true` |
| `container_info` | Shows `StorageInfoDialog` |
| `container_reconfigure` | Deletes `.wine/.update-timestamp` to force Wine reconfigure |
| `container_remove` | Removes container + disables home screen shortcuts |

**Options menu:**

| ID | Action |
|---|---|
| `containers_menu_add` | Opens `ContainerDetailFragment()` (new) if ImageFs valid |
| `containers_menu_import` | OPEN_DOCUMENT_TREE (requestCode 1070) |
| `action_big_picture_mode` | Starts `BigPictureActivity` with fade |
| `action_terminal` | Starts `TerminalActivity` |

**Container launch:** `runContainer(container)` → `XServerDisplayActivity` with `container_id=container.id`; if XR enabled: `XrActivity.openIntent(activity, container.id, null)`

---

### XServerDisplayActivity — Intent Extras

| Extra | Type | Notes |
|---|---|---|
| `container_id` | int | Primary container lookup |
| `shortcut_path` | String | Path to `.desktop` shortcut file |
| `shortcut_name` | String | Display name |
| `exec_path` | String | Direct executable path override |
| `generate_wineprefix` | boolean | Force new wine prefix |
| `return_to_steam_library` | boolean | On finish, return to Steam library |
| `steam_library_app_id` | int | Steam app ID to select on return |

**SharedPreferences read:** `dark_mode`, `open_with_android_browser`, `share_android_clipboard`, `trigger_type` (default 1), `gyro_enabled` (default **true** here — different from SettingsFragment default of false), `touchscreen_timeout_enabled` (default true), `selected_profile_index` (default -1)

**Foreground service:** `WinlatorForegroundService`, channel `"winlator_running"`, notification ID `1001`

---

### FileManagerActivity — Intent Extras

| Constant | String Value | Type |
|---|---|---|
| `EXTRA_BROWSE_MODE` | `"browseMode"` | boolean |
| `EXTRA_CONTAINER_ID` | `"containerId"` | int |
| `EXTRA_ROOT_PATH` | `"rootPath"` | String |
| `EXTRA_START_PATH` | `"startPath"` | String |
| `EXTRA_TITLE` | `"title"` | String |

**Result:** Returns `selectedFilePath` String extra with `resultCode=-1`

---

### UpdateManager

- GitHub Releases endpoint: `https://api.github.com/repos/REF4IK/update-url-mod-/releases/latest`
- Download path: `getExternalFilesDir(DIRECTORY_DOWNLOADS)/update.apk`
- FileProvider authority: `[packageName].tileprovider`
- Pref keys: `receive_beta_updates`, `skipped_version`

---

### WinlatorForegroundService

- Channel ID: `"winlator_running"`
- Notification ID: `1001`
- Priority: LOW (`-1`)
- Returns: `START_STICKY`
- Notification text: `"Winlator is running"`

---

### ShortcutBroadcastReceiver

- Action: `"com.winlator.SHORTCUT_ADDED"`
- Extras: `shortcut_added` (boolean), `shortcut_name` (String), `shortcut_icon` (Bitmap Parcelable), `android.intent.extra.shortcut.INTENT` (Intent Parcelable)

---

---

## 42. SteamAutoCloud, WorkshopManager, DownloadInfo, SteamFriend, SteamLicense, PostSyncInfo, UserFileInfo (R8-A)

### SteamAutoCloud — Steam Cloud Save Sync

**Location:** `com.winlator.cmod.steam.service.SteamAutoCloud`
**Pattern:** Kotlin singleton object

**Constants:**
- `MAX_USER_FILE_RETRIES = 3`
- Copy buffer: 64 KB

**Core method: `syncUserFiles(appId, saveLocation, container, ...)`** — 8-phase suspend coroutine:
1. **PrepUserFiles** — Resolves `SaveLocation` enum, enumerates local files, builds `UserFileInfo` list.
2. **FetchCloudManifest** — Calls Steam API to retrieve cloud manifest for the appId.
3. **CompareFiles** — Diffs local vs cloud; categorizes into upload/download/conflict sets.
4. **ResolveConflicts** — Compares timestamps, prefers newer; creates backup of older file.
5. **DownloadFiles** — Downloads each remote-newer file via SteamService; retries up to `MAX_USER_FILE_RETRIES`.
6. **UploadFiles** — Uploads each local-newer file via SteamService.
7. **PruneDeleted** — Removes locally deleted files from cloud manifest.
8. **Finalize** — Builds `PostSyncInfo` with all timing microseconds and counts; fires completion event.

**Path substitution in `UserFileInfo.getPrefix()`:**
- `{SteamID}` → numeric Steam 64-bit ID
- `{Steam3AccountID}` → Steam3 account ID
- `GameInstall` SaveLocation uses container's game install dir as root

**`SaveLocation` enum values:** `LOCAL_CONFIG`, `GAME_INSTALL`, `CLOUD_PENDING_REMOTE`, `CLOUD_PENDING_LOCAL`, `ROAMING`

---

### WorkshopManager — Steam Workshop File Download

**Location:** `com.winlator.cmod.steam.workshop.WorkshopManager`

**Constants:**
- `MAX_PAGES = 50`, `PAGE_SIZE = 100` → max 5,000 items
- `COMPLETE_MARKER = ".workshop_complete"`

**HTTP client:** OkHttp with `followRedirects=true`, `followSslRedirects=true`

**Core method: `fetchSubscribedFilesViaRPC(appId)`** — Paginates `CPublishedFile_GetUserFiles_Request` RPC, 100 items/page, up to 50 pages.

**`resolveOutputFileName` priority:**
1. `filename` field from manifest (if present)
2. URL-decoded last path segment
3. `publishedFileId` as fallback

**Completion marker:** Writes `.workshop_complete` to download dir on successful completion; its presence indicates item is fully downloaded.

---

### DownloadInfo — Per-Download Session Tracker

**Location:** `com.winlator.cmod.steam.data.DownloadInfo`

**Speed tracking constants:**
- `SPEED_SAMPLE_RETENTION_MS = 120_000` (2 min retention window)
- `SPEED_SAMPLE_INTERVAL_MS = 250` (sample every 250ms)
- `CURRENT_SPEED_WINDOW_MS = 5_000` (5s window for current display speed)
- `ETA_SPEED_WINDOW_MS = 60_000` (60s window for ETA calculation)
- `ETA_SAMPLE_STALE_TIMEOUT_MS = 120_000` (samples >2min old ignored for ETA)
- `PROGRESS_SNAPSHOT_MIN_INTERVAL_MS = 1_000` (throttle progress listener to 1/s)

**Persistence:**
- `PERSISTENCE_DIR = ".DownloadInfo"`
- `PERSISTENCE_FILE = "depot_bytes.json"`
- Saved to `<appDir>/.DownloadInfo/depot_bytes.json`
- Atomic generation counter to detect stale writes

**Algorithm:** EMA-smoothed speed. Two windows: 5s for display, 60s for ETA projection.

**Key fields:** `appId`, `depotId`, `manifestId`, `totalBytes`, `downloadedBytes`, `startTime`, `speedSamples: CircularBuffer`, `generationCounter: AtomicLong`

---

### SteamFriend — Friend Presence Model

**Location:** `com.winlator.cmod.steam.data.SteamFriend`

**Fields:** `steamId`, `personaName`, `avatarHash`, `personaState: Int`, `gameAppID: Int`, `gameName: String`

**Key methods:**
- `isOnline()` — True if persona state in range `[1, 5]` (Online=1, Busy=2, Away=3, Snooze=4, LookingToTrade=5)
- `isPlayingGame()` — Requires `isOnline()` AND (`gameAppID > 0` OR `gameName` non-blank)

---

### SteamLicense — Steam Package License

**Location:** `com.winlator.cmod.steam.data.SteamLicense`
**Pattern:** `@Serializable` data class — 16 fields

**Notable fields:**
- `val packageId: Int`
- `val billingType: Int`, `licenseType: Int`, `licenseFlags: Int`
- `val purchaseCountryCode: String`, `territoryCode: Int`, `changeNumber: Int`
- `val ownedSince: Long` (Unix timestamp)
- `val masterPackageId: Int`, `accessToken: Long`
- `var appIds: MutableList<Int>` — **mutable** `@JvmField var`
- `var depotIds: MutableList<Int>` — **mutable** `@JvmField var`
- 4 additional metadata fields (all `val`)

**Note:** `appIds` and `depotIds` are `var` (mutable); all others are `val`.

---

### PostSyncInfo — Cloud Sync Session Metrics

**Location:** `com.winlator.cmod.steam.data.PostSyncInfo`

**22 fields — all timing/count data from a completed sync session:**

| Field | Description |
|---|---|
| `microsecAcLaunch` | Microseconds for AC launch phase |
| `microsecAcPrepUserFiles` | Microseconds for PrepUserFiles phase |
| `microsecAcExit` | Microseconds for AC exit phase |
| `pendingRemoteOperations` | Count of pending remote ops at sync end |
| `filesUploaded` | Files uploaded this session |
| `filesDownloaded` | Files downloaded this session |
| `filesDeleted` | Files deleted from cloud this session |
| `filesManaged` | Total files managed |
| `bytesUploaded` | Bytes uploaded |
| `bytesDownloaded` | Bytes downloaded |
| `syncDurationMs` | Total sync wall-clock time |
| +11 additional timing/metadata fields | |

---

### UserFileInfo — Cloud Save File Descriptor

**Location:** `com.winlator.cmod.steam.data.UserFileInfo`
**Pattern:** `@Serializable` data class

**Fields:**
- `val root: String` — Local root directory
- `val path: String` — Relative path within root
- `val filename: String`
- `val timestamp: Long` — Last-modified Unix timestamp
- `val sha: String` — SHA hash of file content
- `val cloudRoot: String = root` — Defaults to local root
- `val cloudPath: String = path` — Defaults to local path

**`getPrefix()`:** Substitutes `{SteamID}` → Steam 64-bit ID, `{Steam3AccountID}` → Steam3 account ID in root/path strings.

---

### DownloadingAppInfo

**Location:** `com.winlator.cmod.steam.data.DownloadingAppInfo` — `@Serializable`
**Fields:** `val appId: Int`, `val dlcAppIds: List<Int> = emptyList()`

### OwnedGames

**Location:** `com.winlator.cmod.steam.data.OwnedGames` — `@Serializable`
**7 fields:** `appId: Int`, `name: String`, `sortAs: String?` (**only nullable**), `rtimeLastPlayed: Long` (Unix ts), `playtime2Weeks: Int`, `playtimeForever: Int`, `iconUrl: String`

### GameProcessInfo

**Location:** `com.winlator.cmod.steam.data.GameProcessInfo` — `@Serializable`
**Fields:** `appId: Int`, `branch: String = ""`, `processes: List<AppProcessInfo>`

### CachedLicense

**Location:** `com.winlator.cmod.steam.data.CachedLicense` — Room `@Entity`
**Fields:** `@PrimaryKey val id: Long` (packageId as Long), `val licenseJson: String` (full JSON serialization of SteamLicense)

---

## 43. Core Utility Layer: StringUtils, StreamUtils, NetworkHelper, GPUInformation, WineRegistryEditor, WineUtils, DriverResolver, Win32AppWorkarounds, et al. (R8-B)

**Total files in `com.winlator.cmod.core`:** 46 classes, all from `classes11.dex`

---

### StringUtils

**Methods:**
- `removeEndSlash(String)` — Strips trailing `/` or `\` in a loop
- `addEndSlash(String)` — Appends `/` if not present
- `insert(String, int, String)` — Substring-concat insert at index
- `replace(String, int, int, String)` — Region replace `[start,end)`
- `unescape(String path)` — Double regex pass: strip leading backslashes from segments, collapse `\\` → `\`, trim
- `parseIdentifier(Object)` — Lowercase, strip trailing `(...)`, replace spaces/` + ` with `-`
- `parseNumber(Object)` — Strip everything except `[0-9.]`
- `getString(Context, String resName)` — Resource lookup by name via `getIdentifier`; null on failure
- `formatBytes(long)` / `formatBytes(long, boolean)` — log10/1024 grouping; units bytes/KB/MB/GB/TB; `"%.2f"` format; returns `"0 bytes"` for ≤0
- `fromANSIString(byte[])` / `fromANSIString(byte[], Charset)` — Truncates at first null byte
- `escapeDOSPath(String)` — Doubles backslashes, escapes spaces with `\ `

---

### StreamUtils

**Constant:** `BUFFER_SIZE = 131072` (128 KB)

**Methods:**
- `skip(InputStream, int)` — Calls `skip()`, falls back to manual 1 KB reads; returns 0 on IOException
- `copyToByteArray(InputStream)` — Returns empty array on null input
- `copy(InputStream, OutputStream)` — 128 KB chunks, flushes at EOF; `true` on success, `false` on IOException

---

### NetworkHelper

**Constructor:** Acquires `WifiManager` via `context.getSystemService("wifi")`

**Methods:**
- `getIpAddress()` → raw int (0 if null)
- `getNetmask()` → `Integer.bitCount(dhcpInfo.netmask)`; falls back to `NetworkInterface.getInterfaceAddresses()` if result outside `[8,32]`
- `getGateway()` → `dhcpInfo.gateway` raw int
- `static formatIpAddress(int)` → little-endian int as `"A.B.C.D"`
- `static formatNetmask(int)` → fixed lookup: 24→`255.255.255.0`, 16→`255.255.0.0`, 8→`255.0.0.0`, else `0.0.0.0`

---

### GPUInformation — JNI GPU Detection

**Native library:** `libwinlator.so` (loaded in static block)

**Native methods (all static):**
- `enumerateExtensions()` → `String[]` GL/Vulkan extensions
- `getMemorySize()` → `long` VRAM bytes
- `getRenderer()` → GL_RENDERER string
- `getVersion()` → GL_VERSION string
- `isAdrenoGPU()` → `boolean`
- `isTurboModeActive()` → `boolean`
- `setTurboMode(boolean)` → `boolean`

**Java detection (regex on lowercased renderer):**
- `isAdreno6xx()` → `".*adreno[^6]+6[0-9]{2}.*"`
- `isAdreno7xx()` → `".*adreno[^7]+7[0-9]{2}.*"`
- `isAdreno8xx()` → `".*adreno[^8]+8[0-9]{2}.*"`

---

### WineRegistryEditor — `.reg` File Editor

**Implements:** `Closeable`

**Inner class `Location`:** `offset: int`, `start: int`, `end: int`; `length() = end - start`

**Edit strategy:** Copy-on-write — all mutations write to a new temp file, then `renameTo(cloneFile)`. `close()` renames clone → original if `modified`, else deletes clone.

**Fields:**
- `cloneFile: File` — Temp working copy
- `file: File` — Target registry file
- `modified: boolean`, `createKeyIfNotExist: boolean = true`
- `lastParentKeyPosition: int` — Caches last parent key offset for sequential write optimization
- `lastParentKey: String`

**Public API:**
- `getStringValue(key, name[, fallback])` — Strips surrounding quotes from raw value
- `setStringValue(key, name, value)` — Writes `"escaped_value"`; null → `""`
- `getDwordValue(key, name[, fallback])` — Decodes `dword:XXXXXXXX` as hex int
- `setDwordValue(key, name, int)` — Writes `dword:XXXXXXXX` (8 hex digits)
- `setHexValue(key, name, String/byte[])` — Writes `hex:xx,xx,...`; line continuation `\\\n  ` at column 56
- `removeValue(key, name)` — Removes specific named value from key section
- `removeKey(key[, removeTree])` — `removeTree=true` prefix-matches to remove entire subtree
- `importReg(String json)` — JSON: top-level keys = registry paths, values = `[{type, name, value}]`; handles `"String"` and `"Dword"` types

**Key creation:** Inserts `[KeyName] #time=HH:LLLLLLLL\n` with Windows FILETIME epoch offset `+116444736000000000L`

**Private helpers:**
- `getKeyLocation(key, keyAsPrefix)` — Scans for `[escaped_key]`; uses `lastParentKeyPosition` skip optimization
- `getValueLocation(keyLocation, name)` — Scans key body for `"escaped_name"=` or `@=`; handles multi-line continuation

---

### WineUtils — Container and Registry Setup

**`createDosdevicesSymlinks(Container)`** — Removes all `[a-z]:` entries in `.wine/dosdevices`, recreates `c:` → `../drive_c`, `z:` → container grandparent. If drive letter = `"D"`, calls `ensureSteamappsCommonSymlink`.

**`ensureSteamappsCommonSymlink(Container, String gameDirectoryPath)`** — Creates symlink at `drive_c/Program Files (x86)/Steam/steamapps/common/{gameName}` → `gameDirectoryPath`. Also creates `Steamworks Shared/_CommonRedist` + `steamapps` dirs.

**`setWindowMetrics(WineRegistryEditor)`** — Writes `MSLogFont` binary data (normal + bold) to `Control Panel\Desktop\WindowMetrics` for 6 font slots: CaptionFont (bold, weight=700), IconFont, MenuFont, MessageFont, SmCaptionFont, StatusFont via `setHexValue`.

**`applySystemTweaks(Context, WineInfo)`** — Sets `system.reg` entries: `.reg` association, shell32 icons, REGfile ShellOpen command. Sets `user.reg` DLL overrides:
- `direct3dLibs` (d3d8–d3d12core, ddraw, dxgi, DEFAULT_DDRAWRAPPER) → `"native,builtin"`
- `xinputLibs` (dinput, dinput8, xinput*) → `"builtin,native"`
- Calls `setWindowMetrics`

**`overrideWinComponentDlls(Context, Container, identifier, useNative)`** — Reads `wincomponents/wincomponents.json` from assets; sets each DLL to `"native,builtin"` or removes from `user.reg`.

**`setWinComponentRegistryKeys`** — Special cases:
- `"directsound"` → adds/removes `CLSID {083863F1...}\Instance\{E30629D1...}` Wave Audio Renderer in both `CLSID` + `Wow6432Node\CLSID`
- `"xaudio"` → adds/removes ~20 `Wow6432Node\CLSID\{...}\InprocServer32` XAudio/XACT COM GUID mappings

---

### WineThemeManager — Wine Desktop Theme

**Constant:** `DEFAULT_DESKTOP_THEME = "LIGHT,IMAGE,#0277bd"`

**`ThemeInfo`:** Parses `"THEME,TYPE,#RRGGBB"` or `"THEME,#RRGGBB"` (2-part = IMAGE type).

**`apply()`** — Writes all `Control Panel\Colors` to `user.reg`:
- Light: grays (`245,245,245`), blue highlight (`2,136,209`), blue-gray title bar (`96,125,139`)
- Dark: near-black (`33,33,33`), dark gray borders (`48,48,48`), same blue highlight
- Both: TitleText always white

**Wallpaper:** Checks `imageFs/home/xuser/.config/user-wallpaper.png`; fallback = rendered gradient (top `#FF1F2021`, bottom `#FF2C2E30`) + centered 2/3-height wallpaper drawable. Output: `imageFs/home/xuser/.cache/wallpaper.bmp` (24-bit BMP via `MSBitmap.create`).

---

### WineRequestHandler — Wine→Android IPC

**Protocol:** TCP server on port **500** (single-threaded; 4-byte int request code + format-specific payload)

**Request codes:**
- `OPEN_URL = 1` — Length-prefixed UTF-8 URL → `ACTION_VIEW` intent
- `GET_WINE_CLIPBOARD = 2` — format(int) + size(int) + data; if format=13 (CF_UNICODETEXT): UTF-16LE bytes → String, strip `\0`, set Android clipboard
- `SET_WINE_CLIPBOARD = 3` — Read Android clipboard, append `\0`, encode UTF-16LE, write format=13 + size + data

---

### WineStartMenuCreator — Start Menu `.lnk` Management

**`create(Context, Container)`:** Removes old menu (from `.startmenu` JSON), reads `assets/wine_startmenu.json`, saves new JSON to `.startmenu`, creates `.lnk` files recursively.

**`parseShowCommand`:** `"SW_SHOWMAXIMIZED"` → 3, `"SW_SHOWMINNOACTIVE"` → 7, else 1

**`.lnk` fields from JSON:** `{name, path, cmdArgs, iconLocation, iconIndex, showCommand}`

---

### AppUtils — Android UI Utilities

**`getArchName()`** — Iterates `Build.SUPPORTED_ABIS`; returns `"arm64"`, `"armhf"`, `"x86_64"`, or `"x86"`; fallback `"armhf"`

**`restartApplication(Context, int)`** — Creates restart intent, puts `selected_menu_item_id` extra, calls `Runtime.exit(0)`

**`hideSystemUI(Activity)`** — API 30+: `WindowInsetsController` (`BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE`); older: flag `5894` + visibility change listener re-apply

**`showToast(Context, String)`** — Cancels previous global toast; inflates `custom_toast` layout; `LENGTH_LONG` if text ≥ 40 chars; gravity `BOTTOM|CENTER_HORIZONTAL` y+50; posts to UI thread if needed

**`observeSoftKeyboardVisibility`** — Keyboard visible if visible frame height < root height × 85%

**`setupTabLayout`** — Hides XR tab if `XrActivity.isSupported()` is false

---

### GPUPerformanceManager — Adreno Frequency/Governor Control

**Sysfs primary paths:** `/sys/class/kgsl/kgsl-3d0/devfreq/{governor, cur_freq, max_freq, min_freq, available_frequencies, available_governors}`

**Alternate cur_freq paths:** `kgsl-3d0/gpuclk`, `gpu_clock`, `/sys/kernel/gpu/gpu_clock`, kgsl-3d0.0 platform path, `/d/clk/gpu/clk_rate`

**`PerformanceMode` enum:**

| Mode | Behavior |
|---|---|
| `DEFAULT` | Restore original settings |
| `PERFORMANCE` | Set governor `"performance"` (or `applySustainedPerformance()` without root) |
| `FORCE_MAX` | Write `max_freq` → `GPU_MIN_FREQ_PATH` to lock at max |
| `SUSTAINED_PERFORMANCE` | `Process.setThreadPriority(-8)` |
| `THERMAL_HINT` | Logs "Applied thermal hints" — currently no-op |
| `GAME_MODE` | Sets system props `debug.egl.hw=1`, `debug.sf.hw=1`, `debug.composition.type=gpu`; disables dirty regions/Vulkan layers/robustness |

**`GPUStatus` inner class:** `governor, currentFreq, maxFreq, minFreq, isAdreno`; `getFrequencyMHz()`, `getMaxFrequencyMHz()`, `getUsagePercent()`

---

### DriverResolver — GPU Driver Search/Download from GitHub

**Constants:**
- `DEFAULT_DRIVER_REPOSITORIES = ["MrPurple666/purple-turnip", "crueter/GameHub-8Elite-Drivers", "K11MCH1/AdrenoToolsDrivers", "Weab-chan/freedreno_turnip-CI"]`
- 4 mirror fallbacks including Chinese proxies (`gh.api.99988866.xyz`, `ghproxy.com`, `mirror.ghproxy.com`)
- `MAX_RELEASE_PAGES = 5`, `RELEASES_PER_PAGE = 100` → max 500 releases/repo
- SharedPreferences: `"DriverResolverPrefs"` — keys `PREFS_CUSTOM_REPOS`, `PREFS_CUSTOM_REPO_NAMES`

**Display name mapping:**

| Repo | Display Name |
|---|---|
| `MrPurple666/purple-turnip` | `"Mr. Purple Turnip"` |
| `crueter/GameHub-8Elite-Drivers` | `"GameHub Adreno 8xx"` |
| `K11MCH1/AdrenoToolsDrivers` | `"KIMCHI Turnip"` |
| `Weab-chan/freedreno_turnip-CI` | `"Weab-Chan Freedreno"` |

**`searchDrivers`:** Filters out drafts and pre-releases; only processes `.zip` assets.

**`downloadDriver`:** Tries direct URL + 2 ghproxy mirrors; streams to `getCacheDir()/driver_downloads/{name}.zip`.

**`parseDriverNameFromFile`:** Appends memory type suffix (`Gmem/Sysmem/Freedreno/Mesa/Zink`) if found in last underscore segment.

---

### Win32AppWorkarounds — Per-Game Process Workarounds

**Fields:** `workarounds: ArrayMap<String, Workaround>` (key = EXE name lowercase)

**Built-in workarounds — only `"dxmd.exe"` (Deus Ex: Mankind Divided):**
- `TaskAffinityWorkaround(taskAffinityMask)`
- `DXWrapperWorkaround(Container.DEFAULT_DXVK)` — forces DXVK
- `EnvVarsWorkaround("WINEVMEMMAXSIZE", "16384")`
- `EnvVarsWorkaround("WINEOVERRIDEAFFINITYMASK", taskAffinityMask)`
- `DelayedTaskAffinityWorkaround(taskAffinityMask)` — fires after **40,000ms** via `AppUtils.runDelayed`

**Workaround types:** `TaskAffinityWorkaround`, `DelayedTaskAffinityWorkaround`, `DXWrapperWorkaround`, `EnvVarsWorkaround`, `MultiWorkaround`

---

### DohOkHttp — DNS-over-HTTPS Singleton

**DoH endpoint:** `https://cloudflare-dns.com/dns-query` (POST, IPv6 included)
**Bootstrap DNS:** `1.1.1.1`, `1.0.0.1`, `8.8.8.8`, `8.8.4.4`
**Timeouts:** Connect 15s, read 3min, write 30s
**Config:** HTTP/1.1 only (forced); interceptor adds `User-Agent: Mozilla/5.0 (Android) Winlator.CMOD`; DoH first, falls back to `Dns.SYSTEM`; double-checked locking singleton

---

### Additional Core Classes

**`ElfHelper`** — ELF bitness: reads 52-byte header, validates `[0x7F, 'E', 'L', 'F']` magic, returns `header[4]` (EI_CLASS: 1=32-bit, 2=64-bit). Methods: `is32Bit(File)`, `is64Bit(File)`.

**`PatchElf`** — JNI ELF patcher (`libwinlator.so`): get/set interpreter, SONAME, OS ABI, NEEDED, RPATH; stores native ptr in `elfInstancePtr: long`.

**`CPUStatus`** — Reads `/sys/devices/system/cpu/cpuN/cpufreq/scaling_cur_freq`; `getCurrentClockSpeeds()` → `short[]` (MHz); `getMaxClockSpeed(int)` reads `cpuinfo_max_freq`.

**`ArrayUtils`** — `concat(byte[]...)`, `concat(T[]...)` variadic; `toStringArray(JSONArray)` silently ignores per-element JSONException.

**`UnitUtils`** — `dpToPx(float)` = `density * dp`; `pxToDp(float)` = `px / density`.

**`EnvVars`** — `LinkedHashMap<String, String>` preserving insertion order; parses space-separated `KEY=VALUE`; `get(name)` never returns null (returns `""`); `toEscapedString()` escapes spaces in values as `\ `.

**`EnvironmentManager`** — Static `HashMap` for process environment; `setEnvVars(String[])` clears + repopulates (split limit 2 preserves `=` in values); `getEnvVars()` returns defensive copy.

**`HttpUtils`** — `HttpURLConnection` GET; `download(Activity, url, File, Callback)` shows `DownloadProgressDialog`, runs async, fires callback on UI thread; deletes file on interrupted/failed download.

**`MSBitmap`** — 24-bit uncompressed BMP: `open(File)` → ARGB_8888 Bitmap (returns null if all pixels identical); `create(Bitmap, File)` → 24-bit BMP (rows bottom-up, pixels BGR, `0xFF` row padding).

**`VKD3DVersionItem`** — Display model: `displayName = verName`, `identifier = "verName-verCode"`.

---

## 44. BigPictureActivity, TerminalActivity, XrActivity, Steam UI Data Classes, Widget Layer (R9-C)

### BigPictureActivity

**Location:** `com.winlator.cmod.BigPictureActivity` — `classes9.dex`
**Superclass:** `AppCompatActivity`

**Constants / key fields:**

| Field | Value | Purpose |
|---|---|---|
| `API_KEY` | `"4765cce5e92f8406ab0f5346c3b5e3ba"` | SteamGridDB Bearer API key (hardcoded) |
| `BASE_URL` | `"https://www.steamgriddb.com/api/v2/"` | SteamGridDB Retrofit base URL |
| `REQUEST_CODE_SELECT_MP3` | `1070` | |
| `REQUEST_CODE_SELECT_PNG_FOLDER` | `1090` | |
| `REQUEST_CODE_SELECT_WALLPAPER` | `1080` | |
| `REQUEST_CODE_UPLOAD_CUSTOM_COVER` | `1069` | |
| `SEEK_BAR_PROGRESS_KEY` | `"frame_duration_seekbar"` | |
| `WALLPAPER_DISPLAY_PREF_KEY` | `"wallpaper_display_mode"` | |
| `WALLPAPER_PREF_KEY` | `"custom_wallpaper_path"` | |

**SharedPreferences keys (DefaultSharedPreferences):**

| Key | Type | Default | Values |
|---|---|---|---|
| `"selected_animation"` | String | `"ab"` | `"ab"`, `"ab_gear"`, `"ab_quilt"`, `"none"`, `"folder"`, `"custom_wallpaper"` |
| `"parallax_mode"` | String | `"default"` | `"fast"` (5.0 speed), `"slow"` (1.0), `"off"` (disabled), `"default"` (2.0) |
| `"bg_music_enabled"` | boolean | true | |
| `"music_source"` | String | `"mp3"` | `"mp3"` or `"youtube"` |
| `"selected_mp3_path"` | String | null | |
| `"saved_youtube_url"` | String | `""` | |
| `"wallpaper_display_mode"` | String | — | `"center"`, `"stretch"`, `"tile"` |
| `"custom_wallpaper_path"` | String | — | |
| `"png_folder_uri"` | String | — | |

**Playtime prefs file:** `"playtime_stats"` (mode 0); keys: `"<shortcutName>_playtime"` (Long ms), `"<shortcutName>_play_count"` (Int)

**`loadShortcutData(Shortcut)`:**
- Reads playtime from `"playtime_stats"` SharedPreferences
- Shows `"Times Played: N"` and `"Playtime: XdYhZmWs"`
- Per-shortcut extras with container fallback: `graphicsDriver`, `dxwrapper`, `dxwrapperConfig`, `audioDriver`, `box64Preset`
- Checks `shortcut.getCustomCoverArtPath()` → `BitmapFactory.decodeFile()`
- Falls back to `loadCachedCoverArt(name)` from `<cacheDir>/coverArtCache/<name>.png`
- Falls back to `R.drawable.cover_art_placeholder` + `fetchCoverArt(shortcut)` via SteamGridDB

**`fetchCoverArt(Shortcut)`** → `searchGame("Bearer " + API_KEY, name)` → first result → `getGridsByGameId()` → `dimensions="600x900"`, `styles="alternate"`, `types="static"` → downloads and caches PNG

**`downloadCoverArt(String url, Shortcut)`** — `HttpURLConnection` GET → `BitmapFactory.decodeStream()` → cached PNG at `<cacheDir>/coverArtCache/<shortcutName>.png` (quality 100) on background thread

**`runFromShortcut(Shortcut)`** → `XServerDisplayActivity` with extras: `"container_id"` (int), `"shortcut_path"` (String), `"shortcut_name"` (String), `"disableXinput"` (String, default `"0"`)

**`showSettingsView()` / `hideSettingsView()`** — `ObjectAnimator.ofFloat()`, `AccelerateDecelerateInterpolator`, duration 500ms; slides mainLayout out left, settingsLayout in from right

**`enableImmersiveMode()`** — `setSystemUiVisibility(5894)` (FULLSCREEN | HIDE_NAVIGATION | IMMERSIVE_STICKY)

**`applyParallaxMode(String)`** — `"fast"` → 5.0, `"slow"` → 1.0, `"off"` → disabled, default → 2.0

**`extractYouTubeId(String)`** — splits on `"v="`, takes `[1]`, splits on `"&"`, takes `[0]`; or extracts from `youtu.be/` path

**Default YouTube video:** `"yNwKYgM6SkM"` (hardcoded fallback)

**`loadYouTubeVideo(String videoId)`** — embeds `<iframe src="https://www.youtube.com/embed/{videoId}?enablejsapi=1">`; simulates touch at center after 1000ms delay (MotionEvent down+up at width/2, height/2)

**`playDefaultMp3FromAssets()`** — opens `assets/default_music.mp3`, loops=true

**`formatPlaytime(long ms)`** — format `"%dd %02dh %02dm %02ds"`

**D-pad navigation (dispatchKeyEvent):**
- `KEYCODE_DPAD_UP (19)` / `KEYCODE_DPAD_DOWN (20)` — navigate between recyclerView/playButton/settings
- `KEYCODE_BUTTON_A (96)` — click playButton or coverArtView
- `KEYCODE_BUTTON_Y (103)` or `KEYCODE_BUTTON_X (105)` — toggle settings panel

**onActivityResult:**
- `1080` (wallpaper) → save to `<filesDir>/custom_bg.png`, show display mode dialog (Center/Stretch/Tile)
- `1070` (MP3) → copy to `<filesDir>/bigpicturemode_bgmusic.mp3`
- `1069` (custom cover) → `shortcut.saveCustomCoverArt(bitmap)`
- `1090` (PNG folder) → read DocumentFile tree, load all `.png` frames

---

### TiledBackgroundView

**Location:** `com.winlator.cmod.bigpicture.TiledBackgroundView`

**Fields & defaults:**

| Field | Default | Purpose |
|---|---|---|
| `currentFrame` | 0 | Animation frame index |
| `frameDuration` | 66 ms | ~15 FPS |
| `scrollSpeedX/Y` | 2.0f | Parallax pixels/frame |
| `enableParallax` | true | Enables matrix scroll |

**`loadAnimationFrames(String baseName)`** — allocates `Bitmap[39]`, iterates `i=1..39`, resolves drawable `"<baseName>_<XXXX>"` (4-digit zero-padded) via `getIdentifier`. Fallback if no frames: 100×100 bitmap erased with color `0xFF1B1B1A` (`-15066598`). `enableParallax = !baseName.equals("ab_quilt")`.

**`setStaticWallpaper(Bitmap, String mode)`** — `"center"` → drawn centered; `"stretch"` → scaled to view; `"tile"` → `BitmapShader(REPEAT, REPEAT)`. Deferred if view not yet measured.

**`onDraw`** — if no wallpaper: `matrix.setTranslate(-scrollX, -scrollY)` (parallax) or `(0,0)` → `canvas.drawPaint()`. Fallback color: `-15066598`.

---

### SteamGridDB API

**`SteamGridDBApi` (Retrofit interface):**
```
GET search/autocomplete/{term} → Call<SteamGridSearchResponse>
GET grids/game/{gameId}?styles=&dimensions=&types= → Call<SteamGridGridsResponse>
```

**`SteamGridSearchResponse`:** `boolean success`, `List<GameData> data` (GameData: `int id, String name, String url`)

**`SteamGridGridsResponse`:** `boolean success`, `int page/total/limit`, `List<Grid> data` (Grid: `id, score, style, thumb, url, List<String> tags, Author`). Custom `SteamGridGridsResponseDeserializer` handles `data` as array OR single JSON object.

---

### TerminalActivity

**Location:** `com.winlator.cmod.TerminalActivity` — `classes9.dex`
**Superclass:** `AppCompatActivity`

**Fields:** `commandInput: EditText`, `executeButton: Button`, `outputTextView: TextView`, `imageFs: ImageFs`, `launcher: GuestProgramLauncherComponent`, `xEnvironment: XEnvironment`

**Init flow:**
1. `ImageFs.find(this)` — fails → `outputTextView.setText("Error: Invalid ImageFs.")`
2. Creates `XEnvironment(this, imageFs)` + `ContentsManager(this)`
3. Creates `BionicProgramLauncherComponent(contentsManager, null, null)` — bionic (NOT Wine) launcher
4. `setExecutePermissionsForBinaries()` — `FileUtils.chmod(file, 0755)` on all files in `<imageFs.getRootDir()>/usr/bin`

**`executeCommand(String command)`** — Blocks `"bash"` and `"dash"` (outputs "Interactive shells are unsupported."). Otherwise calls `launcher.execShellCommand(command)`, appends result to textview. Runs **synchronously on UI thread**.

---

### XrActivity

**Location:** `com.winlator.cmod.XrActivity` — `classes9.dex`
**Superclass:** `XServerDisplayActivity`
**Implements:** `TextWatcher`

**`isSupported()` device detection:**
```java
if (!isDeviceDetectionFinished) {
    if (Build.MANUFACTURER.compareToIgnoreCase("META") == 0)   isDeviceSupported = true;
    if (Build.MANUFACTURER.compareToIgnoreCase("OCULUS") == 0) isDeviceSupported = true;
    isDeviceDetectionFinished = true;
}
return isDeviceSupported;
```
Supported: `"META"` and `"OCULUS"` (Quest devices only)

**`isEnabled(Context)`** — reads `"use_xr"` pref (boolean, default `true`); returns `isSupported() && isEnabled`

**`openIntent(Activity, int containerId, String path)`:**
- Extras: `"container_id"`, `"shortcut_path"` (if non-null)
- Intent flags: `0x340C0000` (FLAG_ACTIVITY_NEW_TASK | CLEAR_TASK | NO_ANIMATION | SINGLE_TOP)
- `setLaunchDisplayId(0)` — forces primary display

**`onDestroy()`** — calls `System.exit(0)` — hard kill

**Native methods:** `beginFrame(boolean, boolean)`, `bindFramebuffer()`, `endFrame()`, `getAxes()` → `float[]`, `getButtons()` → `boolean[]`, `getHeight()`, `getWidth()`, `init()`

**`ControllerAxis` enum (23 values):** `L_PITCH, L_YAW, L_ROLL, L_THUMBSTICK_X/Y, L_X/Y/Z, R_PITCH, R_YAW, R_ROLL, R_THUMBSTICK_X/Y, R_X/Y/Z, HMD_PITCH/YAW/ROLL/X/Y/Z/IPD`

**`ControllerButton` enum (19 values):** `L_GRIP, L_MENU, L_THUMBSTICK_PRESS, L_THUMBSTICK_LEFT/RIGHT/UP/DOWN, L_TRIGGER, L_X, L_Y, R_A, R_B, R_GRIP, R_THUMBSTICK_PRESS, R_THUMBSTICK_LEFT/RIGHT/UP/DOWN, R_TRIGGER`

**Text input (XR keyboard forwarding):**
- Monitors `R.id.XRTextInput` EditText
- Text grew → `chars.getEvents(new char[]{lastChar})` → each KeyEvent → `server.keyboard.onKeyEvent()` with 50ms sleep
- Text shrank → sends `KEYCODE_DEL (67)` down+up with 50ms sleep
- `resetText()` — inserts space sentinel `" "` to keep EditText non-empty for backspace detection

**`getAngleDiff(old, new)`** — shortest angular distance wrapping ±180°

**`getButtonClicked(buttons, button)`** — rising-edge: `buttons[i] && !lastButtons[i]`

**Static fields:** `instance`, `isDeviceDetectionFinished`, `isDeviceSupported`, `isEnabled`, `isImmersive`, `isSBS`, `chars` (KeyCharacterMap load(-1)), `lastAxes: float[]`, `lastButtons: boolean[]`, `lastText: String`, `mouseSpeed: float = 1.0f`, `smoothedMouse: float[2]`

---

### Steam UI Data Classes (`com.winlator.cmod.steam.ui`)

All Kotlin data classes from `classes7.dex`:

**`SteamContainerOption`:** `data class(val id: Int, val name: String)` — maps container ID to display name for dropdown

**`SteamPresenceStatus`:** `internal enum { ONLINE, AWAY, OFFLINE }`

**`SteamProfileUi`:** `data class(name: String="", avatarUrl: String="", status: String="", statusMode: String="OFFLINE", currentGame: String?=null)`

**`SteamLibraryGameUi` (list-level game card):**
```kotlin
data class(
    appId: Int, name: String, subtitle: String, appType: AppType,
    capsuleUrl: String,   // vertical 600x900
    heroUrl: String,      // banner
    logoUrl: String,
    installed: Boolean, isDownloading: Boolean,
    downloadPhase: DownloadPhase?,
    downloadProgress: Float,   // 0.0–1.0
    statusLine: String,        // "Installing..."
    assignedContainerId: Int?
)
```

**`SteamGameDetailUi` (full detail screen)** — all `SteamLibraryGameUi` fields plus:
```kotlin
installPath: String, downloadSizeBytes: Long, installSizeBytes: Long,
availableBytes: Long, downloadedBytes: Long, totalBytes: Long,
speedBytesPerSec: Long?, etaMs: Long?,
currentFileName: String?, releaseDateSeconds: Long, assignedContainerId: Int?
```

**`SteamLibraryUiState` (ViewModel state):**
```kotlin
data class(
    isConnected: Boolean=false, isLoggedIn: Boolean=false,
    isOfflineMode: Boolean=PrefManager.getSteamOfflineMode(),  // dynamic default
    isRefreshing: Boolean=false, errorMessage: String?=null,
    profile: SteamProfileUi=SteamProfileUi(),
    containers: List<SteamContainerOption>=emptyList(),
    selectedContainerId: Int?=null, selectedGameId: Int?=null,
    totalGamesCount: Int=0,
    games: List<SteamLibraryGameUi>=emptyList(),
    selectedGame: SteamGameDetailUi?=null
)
```

**`UserLoginState`:**
```kotlin
data class(
    username: String="", password: String="",
    twoFactorCode: String="", rememberSession: Boolean=false,
    isLoggingIn: Boolean=false, isSteamConnected: Boolean=false,
    loginResult: LoginResult=LoginResult.Failed,
    loginScreen: LoginScreen=LoginScreen.CREDENTIAL,
    qrCode: String?=null, isQrFailed: Boolean=false,
    previousCodeIncorrect: Boolean=false,
    email: String?=null, lastTwoFactorMethod: String?=null
)
```

---

### Widget Layer (`com.winlator.cmod.widget`) — `classes15.dex`

**`ColorPickerView`** — 8-color palette (hardcoded RGB ints). `getColorAsString()` → `"#RRGGBB"`. Popup: 32×32dp swatches with frame/selected-frame drawables (`R.drawable.color_frame`, `R.drawable.color_frame_selected`). Popup height: 60dp.

**`FpsCounterConfig`** — SharedPreferences `"fps_counter_config"`:

| Key | Default |
|---|---|
| `fps_counter_enabled` | false |
| `fps_counter_show_fps` | false |
| `fps_counter_show_ram/gpu/gpu_load/frame_time_graph/renderer/cpu_load/cpu_temp/battery_temp/battery_voltage` | false |
| `fps_counter_horizontal_layout` | false |
| `fps_counter_background_opacity` | 51 (~20%) |
| `fps_counter_scale` | 60 (%), clamped 60–200 |
| `fps_counter_fps_limit` | 0 (no limit), clamped 0–240 |

`Module` enum: `FPS, RAM, GPU, GPU_LOAD, FRAME_TIME_GRAPH, RENDERER, CPU_LOAD, CPU_TEMP, BATTERY_TEMP, BATTERY_VOLTAGE`

**`FpsCounterDialog`** — `params.gravity = 8388661` (END|TOP); full-screen `setLayout(-1,-1)`; hides system bars with behavior=2; transparent background.

**`FpsLimit` display:** 0 → `R.string.fps_counter_no_limit`, else the integer value.

**`FrameRating`** — GPU load sysfs paths tried in order: `kgsl-3d0/gpubusy`, `kgsl-3d0/devfreq/gpu_load`, `kgsl-3d0/busy_percentage`, `devfreq/gpu/load`. CPU temperature: 22 sysfs paths tried. Temperature normalization: >10000 → /1000, >1000 → /100, >100 → /10, 1-100 → raw (°C). Battery via `ACTION_BATTERY_CHANGED` (`"temperature"` /10 for °C, `"voltage"` /1000 for V). FPS: accumulated over 500ms windows. Text size: 11sp. Scale pivot: top-left (0,0). Position saved per-view.

**`parseGpuLoad(String)`** — extracts all integers; if ≥2 numbers and `n[1]>0` and `n[0]<=n[1]`: returns `(n[0]*100/n[1])%`; else returns first number if in [0,100].

**`FrameTimeGraphView`** — circular buffer `float[40]` (DEFAULT_SAMPLE_COUNT=40), initialized to `16.67f`. MAX_FRAME_TIME_MS=50.0f, TARGET_30_FPS_MS=33.33f, TARGET_60_FPS_MS=16.67f. Guide lines: 60fps=`0x55FFFFFF`, 30fps=`0x44FF8A52`. Fill: `0x33FFFF77`. `sampleToY = height - (height * (sample / 50.0f))`.

**`FrameGenerationView`** — SharedPreferences `"frame_generation"`: fps (default 30), fps_spinner_position (default 4 = "30→60 FPS"), mode (default 1 = Balanced), mode_spinner_position. Position stored in DefaultSharedPreferences as `"frame_generation_layout"` key, format `"X|Y"` (int as short). FPS options: Auto/15→30/20→40/25→50/30→60/45→90/60→120; values: 0/15/20/25/30/45/60. Mode options: Fast/Balanced/Quality; values: 0/1/2.

**`CPUListView`** — one checkbox per CPU (`Runtime.getRuntime().availableProcessors()`). Tags: `"CPU0"`, `"CPU1"`, etc. `getCheckedCPUListAsString()` → comma-separated indices.

**`EnvVarsView`** — `knownEnvVars` static 2D array defines 10 known env vars with types (SELECT, SELECT_MULTIPLE, CHECKBOX, NUMBER):
- `ZINK_DESCRIPTORS` (SELECT: auto/lazy/cached/notemplates)
- `ZINK_DEBUG` (SELECT_MULTIPLE: nir/spirv/tgsi/validation/sync/compact/noreorder)
- `MESA_SHADER_CACHE_DISABLE` (CHECKBOX)
- `mesa_glthread` (CHECKBOX)
- `WINEESYNC` (CHECKBOX: 0/1)
- `TU_DEBUG` (SELECT_MULTIPLE: startup/nir/nobin/sysmem/gmem/forcebin/layout/noubwc/nomultipos/nolrz/nolrzfc/perf/perfc/flushall/syncdraw/push_consts_per_stage/rast_order/unaligned_store/log_skip_gmem_ops/dynamic/bos/3d_load/fdm/noconform/rd)
- `DXVK_HUD` (SELECT_MULTIPLE: devinfo/fps/frametimes/submissions/drawcalls/pipelines/descriptors/memory/gpuload/version/api/cs/compiler/samplers)
- `MESA_EXTENSION_MAX_YEAR` (NUMBER)
- `PULSE_LATENCY_MSEC` (NUMBER)
- `MANGOHUD` (CHECKBOX: 0/1)

**`ImagePickerView`** — popup 200×240dp; buttons BTBrowse (requestCode=2, PICK image/*) and BTRemove (only if file exists). Wallpaper path: `WineThemeManager.getUserWallpaperFile(context)`. Max image size: 1280px via `ImageUtils.getBitmapFromUri(context, uri, 1280)`.

**`LogView`** — row height 30dp, text size 16dp. Timestamps lines as `"[HH:mm:ss]  <line>"`. Log file: `<Downloads>/Winlator/logs/<name>_<YYYY-MM-DD_HH-mm-ss>.txt`. Scroll thumb color: `0x33000000`. Row colors: even=white (`-1`), odd=`-1968642`.

**`MultiSelectionComboBox`** — `AppCompatTextView`, stores `ArraySet<String>`. Shows `ListPopupWindow` (260dp) with `simple_list_item_multiple_choice`. `getSelectedItemsAsString()` → comma-separated in `items` order.

**`NumberPicker`** — styleable attrs: `maxValue` (default 100), `minValue` (default 0), `step` (default 1), initial `value` (default 0). Fires `OnValueChangeListener` on ACTION_UP. Value clamped to [minValue, maxValue].

**`SeekBar`** — styleable attrs: `maxValue` (default 100.0f), `minValue` (0.0f), `step` (1.0f), `textSize`, `value`, `suffix`. Bar height 6dp, thumb 20dp/10dp radius. Glossy gradient: `LinearGradient(0,0,0,height,[0x33FFFFFF,0x00000000],[0.5,1.0])`. `colorPrimary=-2631721`. Fires `OnValueChangeListener` on ACTION_UP only.

**`TouchpadView`** — MATCH_PARENT×MATCH_PARENT. Modes: touchpad (relative) vs touchscreen (absolute). Pref: `"touchscreen_toggle"` (default false).

**Constants:** `CURSOR_ACCELERATION=1.25f`, `CURSOR_ACCELERATION_THRESHOLD=6px`, `MAX_FINGERS=4`, `MAX_TAP_MILLISECONDS=200`, `MAX_TAP_TRAVEL_DISTANCE=10px`, `MAX_TWO_FINGERS_SCROLL_DISTANCE=350`, `CLICK_DELAYED_TIME=50ms`

**WinHandler mouse event type codes:** 1=move, 2=LDown, 4=LUp, 8=RDown, 16=RUp, 32=MDown, 64=MUp, 2048=scroll

**Touchpad mode:**
- 1-finger move → `xServer.injectPointerMoveDelta(dx, dy)` (relative); accelerated 1.25× if |delta|>6px
- 1-finger tap → LEFT click; 2-finger tap → RIGHT click
- 2-finger close (<350 scaled) → scroll (100px threshold = one event)
- Left button release: delayed 30ms

**Touchscreen mode:**
- 1-finger down/move/up → LEFT press/move/release
- External mouse `ACTION_SCROLL (8)`: `AXIS_VSCROLL (9)`; ≥1.0 → SCROLL_UP, ≤-1.0 → SCROLL_DOWN
- External mouse button codes: 1=LEFT, 2=RIGHT, 4=MIDDLE

**`WinetricksFloatingView`** — position stored in DefaultSharedPreferences as `"winetricks_view"` key, format `"X|Y"`. Min 16px from all edges. Interface `WinetricksListener`: `onWinetricksStableClick`, `onWinetricksLatestClick`, `onOpenWinetricksFolder`, `onToggleTransparency`, `onRestartWineserverClick`.

**`XServerView`** (GLSurfaceView) — OpenGL ES 3.0; RGBA 8888 no depth/stencil; `RENDERMODE_CONTINUOUSLY`; `preserveEGLContextOnPause=true`; HDR: `HDRDisplayManager(context)` → `isHDR10Supported()` → `getRecommendedHDRConfiguration()` (all wrapped in try/catch); render dedup via `AtomicBoolean renderPending` CAS.

**`WrapContentRecyclerView`** — overrides `onMeasure` to use `AT_MOST` with `Integer.MAX_VALUE>>1` to force full content height measurement.

---

## 45. SteamService, PluviaDatabase, SteamUtils, ContainerUtils, Steam Token/License Helpers (R9-A)

### SteamService — Central Steam Engine

**Location:** `com.winlator.cmod.steam.service.SteamService` — `classes16.dex` (6477 lines)
**Type:** Android `Service`, implements `IChallengeUrlChanged`

**Static constants:**
- `INVALID_APP_ID = Integer.MAX_VALUE` (`2147483647`)
- `INVALID_PKG_ID = Integer.MAX_VALUE`
- `MAX_PICS_BUFFER = 256`
- `MAX_RETRY_ATTEMPTS = 20`
- `COMPONENTS_BASE_URL = "https://github.com/maxjivi05/Components/releases/download/Components"`
- `DOWNLOAD_INFO_DIR = ".DownloadInfo"`, `DOWNLOAD_INFO_FILE = "depot_bytes.json"`
- `LEGACY_DOWNLOAD_INFO_FILE = "bytes_downloaded.txt"`
- `STEAM_CONTROLLER_CONFIG_FILENAME = "steam_controller_config.vdf"`

**Static mutable state:**
- `_isConnectedFlow: MutableStateFlow<Boolean>`, `_isLoggedInFlow: MutableStateFlow<Boolean>`
- `cloudSyncStatus: MutableStateFlow<CloudSyncMessage>`
- `downloadJobs: ConcurrentHashMap<Int, DownloadInfo>` — active downloads
- `syncInProgressApps: ConcurrentHashMap<Int, AtomicBoolean>` — CAS guard per app
- `pendingCloudSyncProcessing: AtomicBoolean`
- `instance: SteamService`, `isRunning: Boolean`, `isStopping: Boolean`, `isLoggingOut: Boolean`, `isWaitingForQRAuth: Boolean`
- `keepAlive: volatile Boolean`, `isImporting: volatile Boolean`

**Instance fields — JavaSteam handlers:**
`db: PluviaDatabase`, `licenseDao`, `steamAppDao`, `appInfoDao`, `changeNumbersDao`, `fileChangeListsDao`, `cachedLicenseDao`, `encryptedAppTicketDao`, `downloadingAppInfoDao`, `callbackManager`, `steamClient: SteamClient`, `_steamUser`, `_steamApps`, `_steamFriends`, `_steamCloud`, `_steamUserStats`, `_steamFamilyGroups`, `_unifiedFriends`

**State:** `_loginResult: LoginResult = LoginResult.Failed`, `licenses: List<License> = emptyList()`, `familyGroupMembers: ArrayList<Int>`

**PICS channels:** `appPicsChannel` + `packagePicsChannel` — both `Channel(capacity=1000, SUSPEND)` overflow

**Coroutine scope:** `Dispatchers.IO + SupervisorJob`

**Nested classes:**
- `ManifestSizes(installSize: Long, downloadSize: Long)`
- `Companion.CloudSyncMessage(appId: Int, isUpload: Boolean, message: String, progress: Float)`
- `Companion.CloudSyncCallback(onProgress(msg,progress), onComplete())`

**`onCreate()`:**
1. Sets `instance = this`, initializes PrefManager + PluviaDatabase
2. `startForeground(notificationId, notification)` — foreground service
3. Syncs `_isConnectedFlow`/`_isLoggedInFlow` from current steamClient state
4. Reflection hack: resets a static ConcurrentHashMap via `Class.forName(...)getDeclaredField(...)set(null, new ConcurrentHashMap())`
5. Registers `AndroidEvent.EndProcess` → calls `stop()`
6. Registers `ConnectivityManager.NetworkCallback` — on `onLost`: if wifi-only pref + no wifi → pauses all downloads

**`onStartCommand(intent, flags, startId)`:**
- If intent.action == stop action → emits `AndroidEvent.EndProcess`
- Else if not running: creates `SteamClient` with config:
  - `withProtocolTypes(PROTOCOL_TYPES)` (static EnumSet)
  - `withCellID(PrefManager.getCellId())`
  - `withServerListProvider(FileServerListProvider(File(serverListPath)))`
  - `withConnectionTimeout/HttpClient` (LiveLiterals constants)
- Removes handlers: SteamGameServer, SteamMasterServer, SteamWorkshop, SteamScreenshots
- Extracts: _steamUser, _steamApps, _steamFriends, _steamCloud, _steamUserStats
- Creates SteamUnifiedFriends, FamilyGroups via `SteamUnifiedMessages.createService()`
- Subscribes callbacks: Connected, Disconnected, LoggedOn, LoggedOff, PlayingSessionState, PersonaState, LicenseList
- Launches callback pump coroutine: `callbackManager.runWaitCallbacks(timeout)` loop
- Launches `PICSChangesCheck()` + `continuousPICSGetProductInfo()` coroutines

**Key callback handlers:**

**`onConnected`** — resets `retryAttempt=0`, sets `isConnected=true`. If `PrefManager.getUsername().length>0` and `getRefreshToken().length>0` → auto-login via `login(username, null, refreshToken, null, ...)`; sets `isAutoLoggingIn=true`. Emits `SteamEvent.Connected(isAutoLoggingIn)`.

**`onDisconnected`** — sets `isConnected=false`. If `!isStopping && retryAttempt<MAX_RETRY_ATTEMPTS(20)` → increments retry, emits `SteamEvent.RemotelyDisconnected`, calls `connectToSteam()`. After 20 failures → emits `SteamEvent.Disconnected` (terminal).

**`onLoggedOn`** — On `EResult.OK`: sets `isLoggedIn=true`, stores SteamID, requests friends, starts PICS change checker, updates persona. On `EResult.TryAnotherCM` → reconnect. Others → emit `SteamEvent.LogonEnded(result, ...)`.

**`onLicenseList`** → stores licenses, calls `syncStates()`, triggers PICS product info fetch for all licensed packages/apps.

**`onChanged(QrAuthSession)` (IChallengeUrlChanged):** emits `SteamEvent.QrChallengeReceived(qrAuthSession.getChallengeUrl())`

**PICS system:**
- `PICSChangesCheck()` — runs continuously; calls `steamApps.picsGetChanges(lastChangeNumber)` periodically; queues results into `appPicsChannel`/`packagePicsChannel` (capacity 1000, SUSPEND overflow)
- `continuousPICSGetProductInfo()` — consumes both channels, batches requests, calls `steamApps.picsGetProductInfo(apps, packages)`

**Companion public API — selected key methods:**

| Method | Purpose |
|---|---|
| `isConnected/isLoggedIn/isRunning/isStopping/isLoggingOut/isImporting()` | State queries |
| `isConnectedFlow/isLoggedInFlow()` | `StateFlow<Boolean>` |
| `hasStoredCredentials(context)` | `PrefManager.getRefreshToken()` non-blank |
| `login(username, password?, refreshToken?, authenticator?, ...)` | Triggers logon |
| `getServerListPath()` | `{cacheDir}/steam_server_list.bin` |
| `getInternalAppInstallPath()` | Internal data + `steam/steamapps/common` |
| `getExternalAppInstallPath()` | External storage + `steam/steamapps/common` |
| `getAllInstallPaths()` | Internal + external + all volumes |
| `getDefaultStoragePath()` | External if configured+exists, else internal |
| `downloadApp(appId)` | Queue/start download |
| `pauseAll/pauseDownload/resumeAll/resumeDownload/cancelAll/cancelDownload` | Download control |
| `checkQueue()` | Respects `PrefManager.getDownloadQueueSize()` for parallel count |
| `clearPersistedProgressSnapshot(appDirPath)` | Clears depot_bytes.json |
| `downloadUrlsFor(fileName)` | Returns URL list from `COMPONENTS_BASE_URL`; special case maps one filename to 2 URLs |
| `tryAcquireSync(appId)/releaseSync(appId)` | CAS guard for cloud sync |
| `syncCloudOnExit/hasPendingCloudSync/queuePendingCloudSync/clearPendingCloudSync/handleAppExitCloudSync/processPendingCloudSyncQueue` | Cloud save pipeline |
| `getUserSteamId()` | From `steamClient.getSteamID()` |
| `getEncryptedAppTicket(appId)` | Check DB cache (30-min TTL), request from Steam, store |
| `getEncryptedAppTicketBase64(appId)` | Base64-encoded ticket |
| `stop()` | Graceful shutdown |

---

### PluviaDatabase — Room Database

**Location:** `com.winlator.cmod.db.PluviaDatabase` — `classes9.dex`
**Room schema hash:** `78afbbc7cc9b73d85b863fcceb069e27`
**Version:** 1 — `fallbackToDestructiveMigration()` (schema changes → full drop+recreate)
**Singleton:** DCL (`volatile` instance, synchronized block)

**DAO accessors (abstract methods):**
`steamLicenseDao()`, `steamAppDao()`, `appChangeNumbersDao()`, `appFileChangeListsDao()`, `appInfoDao()`, `cachedLicenseDao()`, `encryptedAppTicketDao()`, `downloadingAppInfoDao()`

**Table DDL:**

**`app_info`:** `id INTEGER PK`, `is_downloaded INTEGER`, `downloaded_depots TEXT`, `dlc_depots TEXT`

**`cached_license`:** `id INTEGER PK AUTOINCREMENT`, `license_json TEXT`

**`app_change_numbers`:** `appId INTEGER PK`, `changeNumber INTEGER`

**`downloading_app_info`:** `appId INTEGER PK`, `dlcAppIds TEXT`

**`encrypted_app_ticket`:** `app_id INTEGER PK`, `result INTEGER`, `ticket_version_no INTEGER`, `crc_encrypted_ticket INTEGER`, `cb_encrypted_user_data INTEGER`, `cb_encrypted_app_ownership_ticket INTEGER`, `encrypted_ticket BLOB`, `timestamp INTEGER` (for 30-min TTL)

**`app_file_change_lists`:** `appId INTEGER PK`, `userFileInfo TEXT` (JSON-serialized `List<UserFileInfo>`)

**`steam_app`** (62 columns — key fields):
`id INTEGER PK`, `package_id`, `owner_account_id TEXT`, `license_flags`, `received_pics`, `last_change_number`, `depots TEXT` (JSON), `branches TEXT` (JSON), `name TEXT`, `type INTEGER` (AppType ordinal), `os_list INTEGER` (bitmask), `release_state`, `release_date` (Unix ts), `metacritic_score`, `metacritic_full_url TEXT`, `logo_hash/icon_hash/client_icon_hash TEXT`, `small_capsule TEXT` (JSON map lang→URL), `library_assets TEXT` (JSON), `primary_genre`, `review_score/percentage`, `controller_support`, `demo_of_app_id`, `developer/publisher/homepage_url/game_manual_url TEXT`, `dlc_app_ids TEXT` (JSON int array), `is_free_app`, `dlc_for_app_id`, `game_dir/install_script/install_dir TEXT`, `config TEXT` (JSON ConfigInfo), `ufs TEXT` (JSON UFS config) [+many more boolean flags]

**`steam_license`:** `packageId INTEGER PK`, `last_change_number`, `time_created/time_next_process INTEGER`, `minute_limit/minutes_used`, `payment_method`, `license_flags`, `purchase_code TEXT`, `license_type`, `territory_code`, `access_token`, `owner_account_id TEXT`, `master_package_id`, `app_ids TEXT` (JSON), `depot_ids TEXT` (JSON)

**DAO interfaces — key details:**

**`SteamLicenseDao`** — `findStaleLicences/deleteStaleLicenses` default methods chunk by `SQLITE_MAX_VARS` (SQLite variable limit ~999) to avoid `SQLITE_MAX_VARIABLE_NUMBER` errors.

**`SteamAppDao`** — `getAllOwnedApps(invalidPkgId)` returns `Flow<List<SteamApp>>` (reactive). `findDownloadableDLCApps/findHiddenDLCApps(appId)` — returns DLCs for a parent app.

**`EncryptedAppTicketDao`** — `getByAppId(appId)` used with `timestamp` field for 30-min cache check in `SteamService.getEncryptedAppTicket()`.

**`ChangeNumbersDao`** — tracks last PICS change number per app for incremental polling.

**`FileChangeListsDao`** — stores cloud save file change lists (`List<UserFileInfo>` as JSON) per app.

---

### SteamUtils — Steam Integration Utilities

**Location:** `com.winlator.cmod.steam.utils.SteamUtils` — singleton object, `classes11.dex`

**HTTP client:** OkHttp with DNS-over-HTTPS (Cloudflare DOH `https://cloudflare-dns.com/dns-query`, bootstrap DNS: `1.1.1.1`, `1.0.0.1`, `8.8.8.8`, `8.8.4.4`)

**Key methods:**

**`writeColdClientIni(steamAppId, container)`** — writes ColdClient INI with sections: ExePath, ExeRunDir, ExeCommandLine, AppID, injection section

**`generateInterfacesFile(dllFile)`** — reads DLL bytes, extracts printable ASCII strings ≥ minLength matching Steam interface version pattern (e.g., `STEAMXXX_INTERFACE_VERSION`), writes sorted set to `steam_interfaces.txt`

**`backupSteamclientFiles/restoreSteamclientFiles(context, steamAppId)`** — copies DLLs to/from `{wineprefix}/.steam_backup`

**`writeCompleteSettingsDir(settingsParentDir, appId, language, isOffline, forceDlc, useSteamInput, ticketBase64)`** — writes full Goldberg/GBE settings directory

**`createAppManifest(context, appId)`** — writes `appmanifest_{appId}.acf`

**`skipFirstTimeSteamSetup(rootDir)`** — writes registry key to skip Steam setup wizard

**`autoLoginUserChanges(imageFs)`** — writes `user.vdf` changes for autologin

**`updateOrModifyLocalConfig(steamUserId64, appId, key, value)`** — edits `localconfig.vdf`

**`generateCloudSaveConfig(context, appId, container)`** — writes cloud save config

**`syncGoldbergAchievementsAndStats(context, appId, container)`** — Goldberg emulator sync

**`coreSteamClientFiles()`** → 4 core DLL filenames. `steamClientFiles()` → core + 2 more.

**`fetchDirect3DMajor(appId, callback)`** — async HTTP fetch for D3D version info

---

### ContainerUtils — Container↔AppID Mapping

**Location:** `com.winlator.cmod.steam.utils.ContainerUtils` — singleton, `classes11.dex`

**Critical design:** `getContainerId(appId) = appId` — **container ID = Steam app ID string**

**`extractGameIdFromContainerId(containerId)`:**
- Strips suffix after `"."` if present
- Splits by `"_"`, takes last part
- Parses as Int; on NumberFormatException → `lastPart.hashCode()`

**`getUsableContainerOrNull(context, appId)`:**
1. Checks `PrefManager.getPreferredSteamContainerId()` first
2. Looks for container named `appId`
3. Falls back to `containers.firstOrNull()`

**`scanExecutablesInADrive(drives)`** — recursively scans A: drive up to `maxDepth` (from LiveLiterals, ~5), filters `.exe`, sorts by priority

**`filterExesForUnpacking/isSystemExecutable/getExecutablePriority`** — blacklist + scoring for EXE selection

---

### SteamTokenHelper — Token Obfuscation

**Location:** `com.winlator.cmod.steam.utils.SteamTokenHelper` — `classes11.dex`

**Algorithm:** XOR stream cipher over 17-element int lookup table `obf`.

**`obf` array:**
```
{389653424, -1198489631, -2104437833, 1921227984, 606990486, 942241035, 954104439,
 1928368716, 1148729639, 26366834, 546318100, 660101408, 663291442, -2104425354,
 1922066209, 679053572, 2019108608}
```

**`obfuscate(ptext, key)`:** 4-byte header `[2,0,0,0]` (magic). Per 4-byte block: `k1+=(obf step), k2+=(step); t = obf[k2%17] ^ k1 ^ d`. Appends checksum. Output: hex-encoded byte array.

**`deobfuscate(data, key)`:** Parses hex → bytes. Validates header bytes `[2,0,0,N]`. Reverses stream cipher. Validates checksum; throws `Exception("checksum mismatch: {hex}")` on failure.

---

### LicenseSerializer — JavaSteam License ↔ JSON/Base64

**Location:** `com.winlator.cmod.steam.utils.LicenseSerializer` — `classes11.dex`

**`serializeLicense(License)`** → JSONObject with keys: `packageId`, `lastChangeNumber`, `timeCreated`, `timeNextProcess`, `minuteLimit`, `minutesUsed`, `paymentMethod`, `licenseFlags` (JSONArray of codes), `purchaseCode`, `licenseType`, `territoryCode`, `accessToken`, `ownerAccountId`

**`deserializeLicense(String)`** → reconstructs JavaSteam `License` from JSON

**`serializeManifest(DepotManifest)`** → Java object serialization → ByteArrayOutputStream → Base64 encode

**`deserializeManifest(String)`** → Base64 decode → ObjectInputStream → cast to DepotManifest

---

### KeyValueUtilsKt — PICS KeyValue → Room Entities

**Location:** `com.winlator.cmod.steam.utils.KeyValueUtilsKt` — `classes11.dex`

**`generateSteamApp(KeyValue)`** — 4157-instruction method; converts PICS KeyValue tree → `SteamApp` Room entity. Covers all 62 `steam_app` columns: name, type, oslist, release_state/date, metacritic, logos/icons, capsule images, library_assets, genres, review scores, controller_support, demo_of_app_id, developer, publisher, DLC fields, UFS config, depot/branch info.

**`generateManifest(List<KeyValue>)`** → `Map<String, ManifestInfo>` (depot ID string → ManifestInfo)

**`parseSteamControllerConfigDetails(KeyValue)`** → `List<SteamControllerConfigDetail>(publishedFileId: Long, controllerType: String, enabledBranches: List<String>)`; navigates `"steam_controller_config" → "steam_input_configurator"`, splits `enabled_branches` on comma.

---

### SteamClientManager — ColdClient Installation

**Location:** `com.winlator.cmod.steam.SteamClientManager` — singleton, `classes5.dex`

**`isColdClientInstalled(context)`** — checks 2 files in `imageFs.rootDir`: a loader `.exe` (must exist + length > loaderMinSize) AND an extra `.dll` (same check). Both must pass.

**`ensureColdClientSupportReady(context)`:**
1. If already installed → true
2. Copies asset archive to `context.getFilesDir()/archiveName`
3. Extracts via `TarCompressorUtils.extract(Type.ZSTD, archiveFile, imageFs.rootDir, null)`
4. `FileUtils.chmod(steamDir, chmodMode)`
5. Returns true on success, false on any exception

---

### Other Steam Utils

**`MarkerUtils`** — `hasMarker/addMarker/removeMarker(dirPath, marker)` using `Marker` enum → plain filesystem marker files. `addMarker` creates dirs first.

**`Net`** — lazy `OkHttpClient`: connect 30s, read 60s, write 30s, call 5min, ping 30s, `retryOnConnectionFailure=true`

**`FileUtils` (steam.utils)** — NIO-based: `calculateDirectorySize`, `makeDir/makeFile`, `readFileAsString/writeStringToFile`, `walkThroughPath(Path, maxDepth, action)`, `findFiles/findFilesRecursive(Path, pattern, maxDepth, includeDirs)`, `assetExists`, `findFileCaseInsensitive`

**`AuthUrlRedactionKt`** — `redactUrlForLogging(url)` strips query params + fragment via `Uri.parse().buildUpon().clearQuery().fragment(null).build()`

---

## 46. X Server Protocol, InputControls, WinHandler UDP Bridge, Math Utilities (R9-B)

### XServer — X11 Server Implementation

**Location:** `com.winlator.cmod.xserver.XServer` — `classes12.dex`

**Constants:**
- `LATIN1_CHARSET = Charset.forName("latin1")`
- `VENDOR_NAME = "Elbrus Technologies, LLC"`
- `VERSION = (short)11` — X11 protocol version

**Subsystems:**
`CursorManager`, `DrawableManager`, `GrabManager`, `InputDeviceManager`, `PixmapManager`, `GLRenderer`, `ScreenInfo`, `SelectionManager`, `SHMSegmentManager`, `WinHandler`, `WindowManager`, `GraphicsContextManager`, `Keyboard`, `Pointer`

**`Lockable` enum (7 values):** WINDOW_MANAGER, PIXMAP_MANAGER, DRAWABLE_MANAGER, GRAPHIC_CONTEXT_MANAGER, INPUT_DEVICE, CURSOR_MANAGER, SHMSEGMENT_MANAGER — each gets its own `ReentrantLock`

**`lock(Lockable...)` → `MultiXLock`** (AutoCloseable; locks in order, unlocks in reverse)

**Extensions registered:**

| Key | Extension | Name |
|---|---|---|
| -100 | BigReqExtension | "BIG-REQUESTS" |
| -101 | MITSHMExtension | "MIT-SHM" |
| -102 | DRI3Extension | "DRI3" |
| -103 | PresentExtension | "Present" |
| -104 | SyncExtension | "SYNC" |

**Pointer injection methods:** `injectPointerMove(x,y)`, `injectPointerMoveDelta(dx,dy)`, `injectPointerButtonPress/Release(Button)`, `injectKeyPress/Release(XKeycode)` — all acquire WINDOW_MANAGER + INPUT_DEVICE locks

---

### X11 Protocol — Client Connection & Authentication

**`XClientRequestHandler`** constants:
- `MAX_REQUEST_LENGTH = 65535`
- Response codes: `RESPONSE_CODE_ERROR = 0`, `RESPONSE_CODE_SUCCESS = 1`

**Auth handshake:**
- Byte 0: byte order — `'B'(66)` = BIG_ENDIAN, `'l'(108)` = LITTLE_ENDIAN
- Reads `majorVersion (short)` — must be 11; auth name+data silently ignored
- Sends server info response then sets `client.authenticated = true`

**Server info response wire format:**
```
byte: 1 (success)
byte: 0
short: 11 (major), short: 0 (minor)
short: additionalDataLength
int: 1 (release number), int: resourceIDBase, int: resourceIDMask (0x7FFFFF)
int: 256 (motion buffer size), short: vendorNameLength
short: 0xFFFF (max request length)
byte: 1 (screens), byte: pixmapFormatCount
byte: 0 (image byte order: LSBFirst), byte: 0
byte: 32 (bitmap scanline unit/pad), byte: 8 (min keycode), byte: -1 (max keycode=255)
int: 0 (padding)
[vendor name latin1 + padding], [pixmap formats], [screen/visual info]
```

**Normal request format:** `opcode(byte) + requestData(byte) + requestLength2(ushort)`. If length=0 → BigReq extension (reads extra 4-byte int). Body length = `(length2 * 4) - 4` bytes.

**ResourceIDs:** maxClients=128; `clientsBits=7`; `idMask=0x7FFFFF` (23 bits); bases are `i << 23` for i=1..127.

---

### X11 Drawable & Rendering

**`Drawable`** — `ByteBuffer.allocateDirect(width*height*4).order(LITTLE_ENDIAN)` (32bpp BGRA)

**Native methods (JNI in `libwinlator.so`):**
- `copyArea(srcX,srcY,dstX,dstY,width,height,srcStride,dstStride,srcData,dstData)` — raw pixel blit
- `copyAreaOp(...gcFunction)` — blit with GC raster op
- `drawAlphaMaskedBitmap(...)` — cursor compositing
- `drawBitmap(width,height,srcData,dstData)` — depth-1 bitmap
- `drawLine(x0,y0,x1,y1,color,lineWidth,stride,data)`, `fillRect(x,y,w,h,color,stride,data)`

**`drawImage` dispatch:** depth=1 → `drawBitmap`; depth=24/32 → `copyArea`. After draw: `texture.setNeedsUpdate(true)`, fires `onDrawListener`.

---

### X11 PixmapManager — Visual/Format Definitions

**Main visual:** depth=32, TrueColor (class=4), bitsPerRGB=24, redMask=0xFF0000, greenMask=0xFF00, blueMask=0xFF

**Supported pixmap formats:**
- depth=1, bitsPerPixel=1, scanlinePad=32
- depth=24, bitsPerPixel=32, scanlinePad=32
- depth=32, bitsPerPixel=32, scanlinePad=32

---

### X11 Keyboard

**Constants:** `KEYSYMS_PER_KEYCODE=2`, `KEYS_COUNT=248`, `MIN_KEYCODE=8`, `MAX_KEYCODE=255`

**Keysym array:** 496 entries (248 keycodes × 2 keysyms), indexed by `(keycode-8)*2`

**Modifier flags:** SHIFT_L/R→bit1, CAPS_LOCK→bit2, CTRL_L/R→bit4, ALT_L/R→bit8, NUM_LOCK→bit16

**Sticky modifiers:** CAPS_LOCK, NUM_LOCK — toggle on press, no release on key-up

**Selected Android keyCode → XKeycode mappings:**

| Android | XKeycode | | Android | XKeycode |
|---|---|---|---|---|
| 111 | KEY_ESC | | 66 | KEY_ENTER |
| 21 | KEY_LEFT | | 22 | KEY_RIGHT |
| 19 | KEY_UP | | 20 | KEY_DOWN |
| 67 | KEY_BKSP | | 112 | KEY_DEL |
| 122 | KEY_HOME | | 123 | KEY_END |
| 59 | KEY_SHIFT_L | | 60 | KEY_SHIFT_R |
| 113 | KEY_CTRL_L | | 114 | KEY_CTRL_R |
| 57 | KEY_ALT_L | | 58 | KEY_ALT_R |
| 131–142 | F1–F12 | | 29–54 | A–Z |

**`XKeycode` scancodes (Linux X11 evdev):** KEY_ESC=9, KEY_1=10..KEY_0=19, KEY_A=38..KEY_Z=61, KEY_ENTER=36, KEY_BKSP=22, KEY_SPACE=65, KEY_CTRL_L=37, KEY_CTRL_R=105, KEY_ALT_L=64, KEY_ALT_R=108, KEY_SHIFT_L=50, KEY_SHIFT_R=62, KEY_F1=67..KEY_F12=96, KEY_UP=111, KEY_DOWN=116, KEY_LEFT=113, KEY_RIGHT=114, KEY_HOME=110, KEY_END=115, KEY_INSERT=118, KEY_DEL=119

---

### X11 Extensions

**`BigReqExtension`** — `MAX_REQUEST_LENGTH=4194303`. Replies with max_request_length for any request.

**`MITSHMExtension`** — sub-opcodes: QUERY_VERSION=0, ATTACH=1, DETACH=2, PUT_IMAGE=3. Attach: reads xid+shmid → `SHMSegmentManager.attach(xid, shmid)`. PUT_IMAGE: only COPY GC function supported. Version response: major=1, minor=1.

**`DRI3Extension`** — sub-opcodes: QUERY_VERSION=0, OPEN=1, PIXMAP_FROM_BUFFER=2, PIXMAP_FROM_BUFFERS=7.
- PIXMAP_FROM_BUFFERS: modifier `1255` → `GPUImage(fd)` (AHardwareBuffer path); modifier `1274` → `pixmapFromFd` (dmabuf)
- `pixmapFromFd`: maps fd via `SysVSharedMemory.mapSHMSegment(fd, size, offset, true)`; onDestroyListener calls `unmapSHMSegment`
- **Custom modifier values:** 1255=AHardwareBuffer, 1274=dmabuf (non-standard)

**`PresentExtension`** — `FAKE_INTERVAL=16666` µs (~60Hz). `presentPixmap`: `synchronized(content.renderLock)` → copies pixmap→window; computes `ust=nanoTime()/1000`, `msc=ust/16666`; sends IdleNotify + CompleteNotify.

**`SyncExtension`** — `SparseBooleanArray fences`. CREATE/TRIGGER/RESET/DESTROY/AWAIT_FENCE. AWAIT_FENCE: **busy-waits** in synchronized block with no sleep until fence triggered.

---

### X11 Atoms — Pre-defined (indices 1–65)

Pre-defined: PRIMARY(1), SECONDARY(2), ARC(3), ATOM(4), BITMAP(5), CARDINAL(6), COLORMAP(7), CURSOR(8), CUT_BUFFER0-7(9-16), DRAWABLE(17), FONT(18), INTEGER(19), PIXMAP(20), STRING(31), WINDOW(33), WM_COMMAND(34), WM_HINTS(35), WM_NAME(39), WM_CLASS(63), WM_TRANSIENT_FOR(65).

**Custom dynamic atoms:** `_NET_WM_PID`, `_NET_WM_WOW64`, `_NET_WM_HWND` (interned)

**Desktop cursor config** pre-set on rootWindow via atom `RESOURCE_MANAGER` (STRING):
```
Xcursor.size:\t20\n
Xcursor.theme:\tdmz\n
Xcursor.theme_core:\ttrue\n
```

---

### X11 Event Masks

```
KEY_PRESS=1, KEY_RELEASE=2, BUTTON_PRESS=4, BUTTON_RELEASE=8,
ENTER_WINDOW=16, LEAVE_WINDOW=32, POINTER_MOTION=64, EXPOSURE=32768,
STRUCTURE_NOTIFY=131072, SUBSTRUCTURE_NOTIFY=524288,
SUBSTRUCTURE_REDIRECT=1048576, PROPERTY_CHANGE=4194304
```

---

### X11 GraphicsContext Function Enum

16 GX raster ops: CLEAR, AND, AND_REVERSE, COPY, AND_INVERTED, NO_OP, XOR, OR, NOR, EQUIV, INVERT, OR_REVERSE, COPY_INVERTED, OR_INVERTED, NAND, SET

---

### Input Controls

**`ControlsProfile`:** `id`, `name`, `cursorSpeed=1.0f`, `virtualGamepad=false`, `gyroSettings: GyroSettings`, `elements: ArrayList<ControlElement>`, `controllers: ArrayList<ExternalController>`

**`GamepadState` wire format** (13 bytes, little-endian, written by `writeTo(ByteBuffer)`):
```
[0-1]: short buttons (bitmask)
[2]:   byte povHat (-1=centered, 0=N, 1=NE, 2=E, 3=SE, 4=S, 5=SW, 6=W, 7=NW)
[3-4]: short thumbLX (* 32767.0f)
[5-6]: short thumbLY (* 32767.0f)
[7-8]: short thumbRX (* 32767.0f)
[9-10]: short thumbRY (* 32767.0f)
[11]:  byte triggerL (* 255.0f)
[12]:  byte triggerR (* 255.0f)
```

**Button indices:** A=0, B=1, X=2, Y=3, L1=4, R1=5, SELECT=6, START=7, L3=8, R3=9, L2=10, R2=11

**`ExternalController` axis mapping:**
- thumbLX=AXIS_X(0), thumbLY=AXIS_Y(1), thumbRX=AXIS_RZ(11), thumbRY=AXIS_RX(14)
- D-pad: HAT_X=axis15, HAT_Y=axis16; deadzone against stick: 0.15f
- triggerL: AXIS_LTRIGGER(17) → fallback AXIS_GAS(23); triggerR: AXIS_RTRIGGER(18) → fallback AXIS_BRAKE(22)
- Xbox controller (vendorId=1118): triggers as binary (>0 → full press)

**`ExternalControllerBinding` axis constants (stored as negative short keyCodes):**
```
AXIS_X_NEGATIVE=-1, AXIS_X_POSITIVE=-2, AXIS_Y_NEGATIVE=-3, AXIS_Y_POSITIVE=-4,
AXIS_Z_NEGATIVE=-5, AXIS_Z_POSITIVE=-6, AXIS_RZ_NEGATIVE=-7, AXIS_RZ_POSITIVE=-8
```

**`ControlElement` constants:**
- `BUTTON_MIN_TIME_TO_KEEP_PRESSED=300ms`, `DPAD_DEAD_ZONE=0.3f`, `STICK_DEAD_ZONE=0.15f`
- `STICK_SENSITIVITY=3.0f`, `TRACKPAD_ACCELERATION_THRESHOLD=4`, `TRACKPAD_MAX_SPEED=20.0f`, `TRACKPAD_MIN_SPEED=0.8f`

**`ControlElement.Type` enum:** BUTTON, D_PAD, RANGE_BUTTON, STICK, TRACKPAD, STEERING_WHEEL

**`Binding` enum (135 values):** mouse (LEFT/MIDDLE/RIGHT, 4 move dirs, scroll up/down), 104 keyboard keys, 24 gamepad bindings (A/B/X/Y, L1/R1/L2/R2, SELECT/START, L3/R3, thumbstick 8 dirs, dpad 4 dirs)

---

### WinHandler — Wine↔Android UDP IPC Bridge

**Location:** `com.winlator.cmod.winhandler.WinHandler`

**Transport:** UDP localhost. `SERVER_PORT=7947` (Java binds/listens), `CLIENT_PORT=7946` (Wine binds; Java sends here). Buffer: 64 bytes, LITTLE_ENDIAN.

**Request codes:**
```
EXIT=0, INIT=1, EXEC=2, KILL_PROCESS=3, LIST_PROCESSES=4,
GET_PROCESS=5, SET_PROCESS_AFFINITY=6, MOUSE_EVENT=7,
GET_GAMEPAD=8, GET_GAMEPAD_STATE=9, RELEASE_GAMEPAD=10,
KEYBOARD_EVENT=11, BRING_TO_FRONT=12, CURSOR_POS_FEEDBACK=13
```

**Threading:** Send thread: single-thread executor; waits on `actions.wait()`, drains `ArrayDeque<Runnable> actions`. Receive thread: single-thread executor; binds `DatagramSocket` on port 7947; dispatches to `handleRequest(requestCode, senderPort)`.

**Wire protocol — Java → Wine (port 7946):**

| Code | Payload |
|---|---|
| EXEC (2) | `[2][len][filenameLen][paramsLen][filename bytes][params bytes]` |
| KILL_PROCESS (3) | `[3][nameLen][name bytes]` |
| SET_PROCESS_AFFINITY (6) by name | `[6][9+nameLen][0][affinityMask int][nameLen byte][name bytes]` |
| SET_PROCESS_AFFINITY (6) by pid | `[6][9][pid int][affinityMask int][0 byte]` |
| MOUSE_EVENT (7) | `[7][10][flags int][dx short][dy short][wheelDelta short][isRelative byte]` |
| KEYBOARD_EVENT (11) | `[11][vkey byte][flags int]` |
| BRING_TO_FRONT (12) | `[12][nameLen][name bytes][handle long]` |
| GET_GAMEPAD reply (8) | `[8][deviceId int][inputType byte][nameLen int][name bytes]` or `[8][0 int]` |
| GET_GAMEPAD_STATE reply (9) | `[9][enabled byte][deviceId int][gamepadState 13 bytes]` |

**Wire protocol — Wine → Java (port 7947):**

| Code | Payload |
|---|---|
| INIT (1) | Triggers full Java-side init |
| GET_PROCESS reply (5) | `[5][skip4][numProcesses short][index short][pid int][memUsage long][affinityMask int][isWow64 byte][name 32 bytes]` |
| GET_GAMEPAD request (8) | `[8][isConnected byte][notify byte]` |
| GET_GAMEPAD_STATE request (9) | `[9][gamepadId int]` |
| CURSOR_POS_FEEDBACK (13) | `[13][x short][y short]` → sets pointer position, requests render |

**`MouseEventFlags` (Win32 MOUSEINPUT.dwFlags):**
```
MOVE=1, LEFTDOWN=2, LEFTUP=4, RIGHTDOWN=8, RIGHTUP=16,
MIDDLEDOWN=32, MIDDLEUP=64, XDOWN=128, XUP=256,
WHEEL=2048, ABSOLUTE=32768
```

---

### WinHandler — Gyro Processing

**Algorithm (`updateGyroData(rawX, rawY)`):**
1. Check `"gyro_enabled"` pref — abort if disabled
2. If `processGyroWithLeftTrigger`: only process if `currentController.state.triggerL > 0.5f`
3. Deadzone: `if |rawX| < gyroDeadzone → rawX=0`; default `gyroDeadzone=0.05f` (from prefs)
4. Negate X: `rawGyroX = -rawGyroX` (physical inversion, always)
5. Apply `invertGyroX` pref (negate again if true); apply `invertGyroY` pref
6. `sensitivityMultiplier = 5.0f * prefs.getFloat("gyro_sensitivity", 1.0f)`
7. `scaledX = rawX * gyroSensitivityX * sensitivityMultiplier` (default gyroSensitivityX=1.0f from prefs)
8. IIR smoothing: `smoothGyroX = smoothGyroX * smoothingFactor + (1-smoothingFactor) * scaledX`; default `smoothingFactor=0.9f`
9. Inject: `mouseEvent(MOVE=1, (int)smoothGyroX, (int)smoothGyroY, 0)` if dx/dy != 0
10. `gyroX/Y` = smoothed value → added to thumbRX/RY in `sendGamepadState` (clamped to [-1,1])

**Gyro prefs read on INIT:**
`"gyro_enabled"`, `"gyro_trigger_button"` (default 102), `"gyro_mode"` (0=hold, 1=toggle), `"gyro_x_sensitivity"`, `"gyro_y_sensitivity"` (both default 1.0), `"gyro_smoothing"` (default 0.9), `"invert_gyro_x"`, `"invert_gyro_y"`, `"gyro_deadzone"` (default 0.05), `"process_gyro_with_left_trigger"`, `"trigger_type"` (default 1), `"xinput_toggle"`, `"useLegacyInputMethod"`

---

### DesktopHelper — Window Focus Bridge

**On pointer button press OR window map:** finds topmost mapped window with `isApplicationWindow()` (mapped + windowGroup==id + width>1 + height>1) → sets X11 focus → calls `winHandler.bringToFront(className, HWND)` → UDP packet code 12 → Wine brings HWND to front.

---

### Math Utilities (`com.winlator.cmod.math`)

**`Mathf`:**
- `clamp(float/int, min, max)`, `roundTo(float, step)` → `Math.floor(x/step)*step`
- `roundPoint(float)` → rounds away from zero (≤0→floor, >0→ceil)
- `sign(float)` → byte -1/0/1, `lengthSq(float, float)` → `x*x+y*y`

**`XForm`** — 2D affine transform as `float[6]`: `[n11,n12,n21,n22,dx,dy]`

Matrix layout: `| n11  n21  dx |` / `| n12  n22  dy |`

- `identity(xform)`, `set(xform, n11,n12,n21,n22,dx,dy)`, `set(xform, tx,ty,sx,sy)` = `[sx,0,0,sy,tx,ty]`
- `makeTransform(xform, tx,ty,sx,sy,angle)` → `[sx*cos, sy*sin, sx*(-sin), sy*cos, tx, ty]`
- `multiply(result, ta, tb)` — 2×2 + translation standard affine multiply
- `transformPoint(xform, x, y)` → `[xform[0]*x+xform[2]*y+xform[4], xform[1]*x+xform[3]*y+xform[5]]`
- `translate/scale/rotate(xform, ...)` — multiply with temp xform; **synchronized on `tmpXForm`**

---

### Key Data Flows

**Touch → X11:** `XServerDisplayActivity.onTouchEvent` → `XServer.injectPointerMove/ButtonPress` → `Pointer.setPosition/setButton` → `InputDeviceManager` → XEvent (MotionNotify/ButtonPress) → `XClient.sendEvent` → Wine X11 client

**Touch → Wine Win32 (non-X):** `TouchpadView.mouseEvent(flags, dx, dy, wheelDelta)` → `WinHandler.addAction(Runnable)` → send thread → UDP packet code 7 → Wine port 7946

**Gyro → Mouse:** `onSensorChanged` → `WinHandler.updateGyroData(rawX, rawY)` → IIR smooth → `mouseEvent(MOVE, dx, dy, 0)` → UDP; + `gyroX/Y` added to thumbRX/RY on next `sendGamepadState`

**DRI3/Present frame:** Wine DRI3 `PixmapFromBuffers(fd, modifier=1255)` → Java `GPUImage(fd)` from AHardwareBuffer → Present `PresentPixmap` → `synchronized(renderLock)` → `copyArea(pixmap→window)` → `texture.setNeedsUpdate(true)` → GL upload on next frame

**Win32 focus:** `Window.isApplicationWindow()` → `DesktopHelper.setFocusedWindow` → `WinHandler.bringToFront(className, HWND)` → UDP code 12 → Wine SetForegroundWindow

---

### Notable Implementation Details

- **SyncExtension AwaitFence**: busy-waits inside `synchronized` with no sleep — **spin-lock** until fence triggered
- **PresentExtension fake 60Hz**: MSC = `nanoTime()/1000/16666`; no actual vsync
- **DRI3 custom modifier values**: 1255=AHardwareBuffer, 1274=dmabuf (non-standard; Wine must use same values)
- **ResourceIDs**: 23-bit ID space per client (max 128 clients); `idMask=0x7FFFFF`
- **Gyro default X inversion**: raw X always negated in code path (physical), then `invertGyroX` pref applies on top
- **Virtual gamepad**: when `profile.isVirtualGamepad()`, `profile.id` sent as deviceId to Wine (no physical controller)
- **`showDesktop()`**: calls `exec("explorer.exe /minall")` — standard Windows minimize-all

*End of Deep Map — generated from multi-pass parallel analysis of ~/winlator_analysis/*
