.class public Lcom/winlator/cmod/SettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SettingsFragment.java"


# static fields
.field public static final DEFAULT_EXPORT_PATH:Ljava/lang/String;

.field public static final DEFAULT_WINE_DEBUG_CHANNELS:Ljava/lang/String; = "warn,err,fixme"

.field private static final REQUEST_CODE_FRONTEND_EXPORT_PATH:I = 0x3ea

.field private static final REQUEST_CODE_INSTALL_SOUNDFONT:I = 0x3e9


# instance fields
.field private cbCursorLock:Landroid/widget/CheckBox;

.field private cbDarkMode:Landroid/widget/CheckBox;

.field private cbEnableBigPictureMode:Landroid/widget/CheckBox;

.field private cbEnableCustomApiKey:Landroid/widget/CheckBox;

.field private cbGyroEnabled:Landroid/widget/CheckBox;

.field private cbInvertGyroX:Landroid/widget/CheckBox;

.field private cbInvertGyroY:Landroid/widget/CheckBox;

.field private cbXinputToggle:Landroid/widget/CheckBox;

.field private enableLegacyInputMode:Z

.field private etCustomApiKey:Landroid/widget/EditText;

.field private installSoundFontCallback:Lcom/winlator/cmod/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/winlator/cmod/core/Callback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field isDarkMode:Z

.field private isRestoreAction:Z

.field private preferences:Landroid/content/SharedPreferences;

.field private preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

.field private sbGyroDeadzone:Landroid/widget/SeekBar;

.field private sbGyroSmoothing:Landroid/widget/SeekBar;

.field private sbGyroXSensitivity:Landroid/widget/SeekBar;

.field private sbGyroYSensitivity:Landroid/widget/SeekBar;


# direct methods
.method public static synthetic $r8$lambda$0zJ8hoPmBAI_UC4Z4Sex3_MPMGE(Lcom/winlator/cmod/SettingsFragment;Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/SettingsFragment;->lambda$loadWineDebugChannels$26(Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3hiJdeyjQpZ7NbB04vCH0oANjoE(Lcom/winlator/cmod/SettingsFragment;Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/SettingsFragment;->lambda$onCreateView$11(Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5yfn7Qwx1LmOKuVOx2zbLR4FcwU(Lcom/winlator/cmod/SettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/SettingsFragment;->lambda$onRestoreSuccess$35()V

    return-void
.end method

.method public static synthetic $r8$lambda$61tc7ZhzDj_MDVg4TDCnGFK-nxM(Lcom/winlator/cmod/SettingsFragment;Ljava/util/ArrayList;ILandroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/winlator/cmod/SettingsFragment;->lambda$loadWineDebugChannels$27(Ljava/util/ArrayList;ILandroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6pGQf9aJv-eDXqPszUteGTwUZQM(Lcom/winlator/cmod/SettingsFragment;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/SeekBar;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Ljava/util/List;Landroid/widget/RadioGroup;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/EditText;[ILandroid/widget/Spinner;Landroid/widget/RadioGroup;Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p17}, Lcom/winlator/cmod/SettingsFragment;->lambda$onCreateView$21(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/SeekBar;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Ljava/util/List;Landroid/widget/RadioGroup;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/EditText;[ILandroid/widget/Spinner;Landroid/widget/RadioGroup;Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BCtonarlCvN92wnRtENEXEzEZ4E(Lcom/winlator/cmod/SettingsFragment;Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/winlator/cmod/SettingsFragment;->lambda$loadWineDebugChannels$25(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ce3iPiZnVvE_zvG_ye6x9SfaajQ(Lcom/winlator/cmod/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/SettingsFragment;->lambda$onCreateView$20(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GpX2cEOKpngFz0S51bjio2B5IBM(Lcom/winlator/cmod/SettingsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/SettingsFragment;->lambda$onCreateView$4(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$HEWirOoYyoprplDRRpw7to3rE3I(Lcom/winlator/cmod/SettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/SettingsFragment;->lambda$onRestoreFailed$36()V

    return-void
.end method

.method public static synthetic $r8$lambda$KGk9lgCzhKdLCB4UMLASL4fHpYI(Lcom/winlator/cmod/SettingsFragment;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/SettingsFragment;->lambda$backupAppData$32(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kjfccj_lwrGLFFuflcBh_b37M58(Lcom/winlator/cmod/SettingsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/SettingsFragment;->lambda$onCreateView$5(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$LIEasY3ybveMk6ECPhIz7KnvXjY(Lcom/winlator/cmod/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/SettingsFragment;->lambda$onCreateView$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mj7Yk9o_sz5mngw3B7Np3GDxln4(Lcom/winlator/cmod/SettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/SettingsFragment;->lambda$onCreateView$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$OAgskJQgr2pYgqmQZAIsknAydsM(Lcom/winlator/cmod/SettingsFragment;Ljava/util/ArrayList;[Ljava/lang/String;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/winlator/cmod/SettingsFragment;->lambda$loadWineDebugChannels$24(Ljava/util/ArrayList;[Ljava/lang/String;Landroid/view/View;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QnDNP9TePk-6tZKpQSe6Iu-OPPU(Lcom/winlator/cmod/SettingsFragment;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lcom/winlator/cmod/SettingsFragment;->lambda$showAnalogStickConfigDialog$37(Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$RcadvG_Fr1MWIMIKv_4MfNlMNDI(Lcom/winlator/cmod/SettingsFragment;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/SettingsFragment;->lambda$backupAppData$34(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vv8rygYuZUtdk5JVOCRld95TMpc(Lcom/winlator/cmod/SettingsFragment;Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/SettingsFragment;->lambda$onViewCreated$3(Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$W3bHs75AnpP8BOeGUYZEbt6EVm8(Lcom/winlator/cmod/SettingsFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/SettingsFragment;->lambda$showBackupConfirmationDialog$30(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_DJOeOgUJc9ka4G4fv6C78IabE0(Lcom/winlator/cmod/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/SettingsFragment;->lambda$onCreateView$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$axYLWKXXHorqfNaRObUkRCXfZRE(Lcom/winlator/cmod/SettingsFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/SettingsFragment;->lambda$onViewCreated$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bMymI6qWSmt4_onYveZPJw737bo(Lcom/winlator/cmod/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/SettingsFragment;->lambda$onViewCreated$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ceqtR0yDzgKGHVcV2X5NGLdaqVQ(Lcom/winlator/cmod/SettingsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/SettingsFragment;->lambda$onCreateView$7(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$d52tUO4AIDQr7-LHxbgMOpbEjYE(Lcom/winlator/cmod/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/SettingsFragment;->lambda$onViewCreated$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dE2A2d_yHYhB-zgLfcyc78osMk8(Lcom/winlator/cmod/SettingsFragment;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/winlator/cmod/SettingsFragment;->lambda$showGyroConfigDialog$29(Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dNXXnfajtY2hXIwWz-0BkUBqbLM(Lcom/winlator/cmod/SettingsFragment;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/SettingsFragment;->lambda$onCreateView$18(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$foz94WzMWnRG8KyV93Y5_8bmeJE(Lcom/winlator/cmod/SettingsFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/SettingsFragment;->lambda$initCustomApiKeySettings$22(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$hcIfpXVxARl_00_VXW8wZ4Mj2_A(Lcom/winlator/cmod/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/SettingsFragment;->lambda$onCreateView$19(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hdXl3dc6IdBj6wkWKLgvx6YZxSY(Lcom/winlator/cmod/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/SettingsFragment;->lambda$onCreateView$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kdPXiRujf5nxAG6uNQAg9Dw9-z8(Lcom/winlator/cmod/SettingsFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/SettingsFragment;->lambda$initCustomApiKeySettings$23(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sT8q7MXRcOzCB6XC62jKNBIYhFE(Lcom/winlator/cmod/SettingsFragment;Landroid/content/Context;Landroid/widget/Spinner;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/winlator/cmod/SettingsFragment;->lambda$onCreateView$10(Landroid/content/Context;Landroid/widget/Spinner;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tnufdWhRTpkbTWpjwnBoFZodpG0(Lcom/winlator/cmod/SettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/winlator/cmod/SettingsFragment;->lambda$backupAppData$33()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetpreferences(Lcom/winlator/cmod/SettingsFragment;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mapplyLanguage(Lcom/winlator/cmod/SettingsFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/winlator/cmod/SettingsFragment;->applyLanguage(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Winlator/Frontend"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/SettingsFragment;->DEFAULT_EXPORT_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/SettingsFragment;->isRestoreAction:Z

    .line 107
    iput-boolean v0, p0, Lcom/winlator/cmod/SettingsFragment;->enableLegacyInputMode:Z

    return-void
.end method

.method private applyDynamicStyles(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isDarkMode"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "isDarkMode"
        }
    .end annotation

    .line 619
    return-void
.end method

.method private applyDynamicStylesRecursively(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 622
    const v0, 0x7f09020e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 623
    .local v0, "soundLabel":Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/winlator/cmod/SettingsFragment;->isDarkMode:Z

    invoke-direct {p0, v0, v1}, Lcom/winlator/cmod/SettingsFragment;->applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V

    .line 625
    const v1, 0x7f090212

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 626
    .local v1, "themeLabel":Landroid/widget/TextView;
    iget-boolean v2, p0, Lcom/winlator/cmod/SettingsFragment;->isDarkMode:Z

    invoke-direct {p0, v1, v2}, Lcom/winlator/cmod/SettingsFragment;->applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V

    .line 628
    const v2, 0x7f09020d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 629
    .local v2, "shortcutSettingsLabel":Landroid/widget/TextView;
    iget-boolean v3, p0, Lcom/winlator/cmod/SettingsFragment;->isDarkMode:Z

    invoke-direct {p0, v2, v3}, Lcom/winlator/cmod/SettingsFragment;->applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V

    .line 631
    const v3, 0x7f0901a7

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 632
    .local v3, "bigPictureModeLabel":Landroid/widget/TextView;
    iget-boolean v4, p0, Lcom/winlator/cmod/SettingsFragment;->isDarkMode:Z

    invoke-direct {p0, v3, v4}, Lcom/winlator/cmod/SettingsFragment;->applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V

    .line 634
    const v4, 0x7f0901b8

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 635
    .local v4, "tvCustomApiKey":Landroid/widget/TextView;
    iget-boolean v5, p0, Lcom/winlator/cmod/SettingsFragment;->isDarkMode:Z

    invoke-direct {p0, v4, v5}, Lcom/winlator/cmod/SettingsFragment;->applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V

    .line 641
    const v5, 0x7f090222

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 642
    .local v5, "xServerLabel":Landroid/widget/TextView;
    iget-boolean v6, p0, Lcom/winlator/cmod/SettingsFragment;->isDarkMode:Z

    invoke-direct {p0, v5, v6}, Lcom/winlator/cmod/SettingsFragment;->applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V

    .line 644
    const v6, 0x7f0901e0

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 645
    .local v6, "gyroSettingsLabel":Landroid/widget/TextView;
    iget-boolean v7, p0, Lcom/winlator/cmod/SettingsFragment;->isDarkMode:Z

    invoke-direct {p0, v6, v7}, Lcom/winlator/cmod/SettingsFragment;->applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V

    .line 647
    const v7, 0x7f0901d9

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 648
    .local v7, "gameControllerLabel":Landroid/widget/TextView;
    iget-boolean v8, p0, Lcom/winlator/cmod/SettingsFragment;->isDarkMode:Z

    invoke-direct {p0, v7, v8}, Lcom/winlator/cmod/SettingsFragment;->applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V

    .line 651
    const v8, 0x7f0901ed

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 652
    .local v8, "logsLabel":Landroid/widget/TextView;
    iget-boolean v9, p0, Lcom/winlator/cmod/SettingsFragment;->isDarkMode:Z

    invoke-direct {p0, v8, v9}, Lcom/winlator/cmod/SettingsFragment;->applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V

    .line 654
    const v9, 0x7f0901c5

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 655
    .local v9, "experimentalLabel":Landroid/widget/TextView;
    iget-boolean v10, p0, Lcom/winlator/cmod/SettingsFragment;->isDarkMode:Z

    invoke-direct {p0, v9, v10}, Lcom/winlator/cmod/SettingsFragment;->applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V

    .line 657
    const v10, 0x7f0901e6

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 658
    .local v10, "ImageFsLabel":Landroid/widget/TextView;
    iget-boolean v11, p0, Lcom/winlator/cmod/SettingsFragment;->isDarkMode:Z

    invoke-direct {p0, v10, v11}, Lcom/winlator/cmod/SettingsFragment;->applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V

    .line 660
    return-void
.end method

.method private applyFieldSetLabelStyle(Landroid/widget/TextView;Z)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "isDarkMode"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "textView",
            "isDarkMode"
        }
    .end annotation

    .line 665
    if-eqz p2, :cond_0

    .line 667
    const-string v0, "#cccccc"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 668
    const v0, 0x7f060354

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 671
    :cond_0
    const-string v0, "#424242"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 672
    const v0, 0x7f060353

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 674
    :goto_0
    return-void
.end method

.method private applyLanguage(Ljava/lang/String;)V
    .locals 2
    .param p1, "languageCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "languageCode"
        }
    .end annotation

    .line 1330
    const-string v0, "system"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1332
    invoke-static {}, Landroidx/core/os/LocaleListCompat;->getEmptyLocaleList()Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setApplicationLocales(Landroidx/core/os/LocaleListCompat;)V

    goto :goto_1

    .line 1333
    :cond_0
    const-string v0, "en"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1335
    invoke-static {v0}, Landroidx/core/os/LocaleListCompat;->forLanguageTags(Ljava/lang/String;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    .line 1336
    .local v0, "localeList":Landroidx/core/os/LocaleListCompat;
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setApplicationLocales(Landroidx/core/os/LocaleListCompat;)V

    .line 1337
    .end local v0    # "localeList":Landroidx/core/os/LocaleListCompat;
    goto :goto_1

    :cond_1
    const-string v0, "ru"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1339
    invoke-static {v0}, Landroidx/core/os/LocaleListCompat;->forLanguageTags(Ljava/lang/String;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    .line 1340
    .restart local v0    # "localeList":Landroidx/core/os/LocaleListCompat;
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setApplicationLocales(Landroidx/core/os/LocaleListCompat;)V

    .end local v0    # "localeList":Landroidx/core/os/LocaleListCompat;
    goto :goto_0

    .line 1341
    :cond_2
    const-string v0, "zh"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1343
    invoke-static {v0}, Landroidx/core/os/LocaleListCompat;->forLanguageTags(Ljava/lang/String;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    .line 1344
    .restart local v0    # "localeList":Landroidx/core/os/LocaleListCompat;
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setApplicationLocales(Landroidx/core/os/LocaleListCompat;)V

    goto :goto_1

    .line 1341
    .end local v0    # "localeList":Landroidx/core/os/LocaleListCompat;
    :cond_3
    :goto_0
    nop

    .line 1346
    :goto_1
    return-void
.end method

.method private backupAppData()V
    .locals 5

    .line 994
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 995
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "app_data_backup.tar"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 997
    .local v1, "backupFile":Ljava/io/File;
    iget-object v2, p0, Lcom/winlator/cmod/SettingsFragment;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    const v3, 0x7f12005a

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/core/PreloaderDialog;->showOnUiThread(I)V

    .line 999
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    .line 1000
    .local v2, "availableProcessors":I
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 1002
    .local v3, "compressionExecutor":Ljava/util/concurrent/ExecutorService;
    new-instance v4, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda32;

    invoke-direct {v4, p0, v0, v1}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda32;-><init>(Lcom/winlator/cmod/SettingsFragment;Ljava/io/File;Ljava/io/File;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1020
    return-void
.end method

.method private checkForUpdates()V
    .locals 3

    .line 1349
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1351
    :cond_0
    new-instance v0, Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/winlator/cmod/core/PreloaderDialog;-><init>(Landroid/app/Activity;)V

    .line 1352
    .local v0, "progressDialog":Lcom/winlator/cmod/core/PreloaderDialog;
    const v1, 0x7f12009d

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/core/PreloaderDialog;->show(I)V

    .line 1354
    new-instance v1, Lcom/winlator/cmod/update/UpdateManager;

    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/winlator/cmod/update/UpdateManager;-><init>(Landroid/content/Context;)V

    .line 1356
    .local v1, "updateManager":Lcom/winlator/cmod/update/UpdateManager;
    new-instance v2, Lcom/winlator/cmod/SettingsFragment$14;

    invoke-direct {v2, p0, v0}, Lcom/winlator/cmod/SettingsFragment$14;-><init>(Lcom/winlator/cmod/SettingsFragment;Lcom/winlator/cmod/core/PreloaderDialog;)V

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/update/UpdateManager;->checkForUpdates(Lcom/winlator/cmod/update/UpdateManager$UpdateCheckCallback;)V

    .line 1389
    return-void
.end method

.method private initCustomApiKeySettings(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 677
    const v0, 0x7f090085

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/winlator/cmod/SettingsFragment;->cbEnableCustomApiKey:Landroid/widget/CheckBox;

    .line 678
    const v0, 0x7f0900b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/winlator/cmod/SettingsFragment;->etCustomApiKey:Landroid/widget/EditText;

    .line 681
    iget-object v0, p0, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "enable_custom_api_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 682
    .local v0, "isCustomApiKeyEnabled":Z
    iget-object v1, p0, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "custom_api_key"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 684
    .local v1, "customApiKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/winlator/cmod/SettingsFragment;->cbEnableCustomApiKey:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 685
    iget-object v3, p0, Lcom/winlator/cmod/SettingsFragment;->etCustomApiKey:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 688
    iget-object v3, p0, Lcom/winlator/cmod/SettingsFragment;->etCustomApiKey:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 690
    iget-object v2, p0, Lcom/winlator/cmod/SettingsFragment;->cbEnableCustomApiKey:Landroid/widget/CheckBox;

    new-instance v3, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/winlator/cmod/SettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 695
    const v2, 0x7f090038

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda4;-><init>(Lcom/winlator/cmod/SettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 700
    return-void
.end method

.method static synthetic lambda$backupAppData$31(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 1006
    const-string v0, "imagefs/tmp/.sysvshm"

    .line 1007
    .local v0, "excludePath":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private synthetic lambda$backupAppData$32(Ljava/io/File;)V
    .locals 3
    .param p1, "backupFile"    # Ljava/io/File;

    .line 1010
    iget-object v0, p0, Lcom/winlator/cmod/SettingsFragment;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-virtual {v0}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V

    .line 1011
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backup completed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 1012
    return-void
.end method

.method private synthetic lambda$backupAppData$33()V
    .locals 2

    .line 1015
    iget-object v0, p0, Lcom/winlator/cmod/SettingsFragment;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-virtual {v0}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V

    .line 1016
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Backup failed."

    invoke-static {v0, v1}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 1017
    return-void
.end method

.method private synthetic lambda$backupAppData$34(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .param p1, "dataDir"    # Ljava/io/File;
    .param p2, "backupFile"    # Ljava/io/File;

    .line 1004
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v1, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {v0, p2, v1}, Lcom/winlator/cmod/core/TarCompressorUtils;->archive([Ljava/io/File;Ljava/io/File;Lcom/winlator/cmod/core/TarCompressorUtils$ExclusionFilter;)V

    .line 1009
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p2}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda11;-><init>(Lcom/winlator/cmod/SettingsFragment;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1018
    goto :goto_0

    .line 1013
    :catch_0
    move-exception v0

    .line 1014
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda12;-><init>(Lcom/winlator/cmod/SettingsFragment;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1019
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private synthetic lambda$initCustomApiKeySettings$22(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 691
    iget-object v0, p0, Lcom/winlator/cmod/SettingsFragment;->etCustomApiKey:Landroid/widget/EditText;

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 692
    return-void
.end method

.method private synthetic lambda$initCustomApiKeySettings$23(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 696
    const-string v0, "https://www.steamgriddb.com/profile/preferences/api"

    .line 697
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 698
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/winlator/cmod/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 699
    return-void
.end method

.method private synthetic lambda$loadWineDebugChannels$24(Ljava/util/ArrayList;[Ljava/lang/String;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "debugChannels"    # Ljava/util/ArrayList;
    .param p2, "items"    # [Ljava/lang/String;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "selectedPositions"    # Ljava/util/ArrayList;

    .line 747
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, "selectedPosition":I
    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 748
    .end local v1    # "selectedPosition":I
    :cond_1
    invoke-direct {p0, p3, p1}, Lcom/winlator/cmod/SettingsFragment;->loadWineDebugChannels(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 749
    return-void
.end method

.method private synthetic lambda$loadWineDebugChannels$25(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "debugChannels"    # Ljava/util/ArrayList;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "v"    # Landroid/view/View;

    .line 739
    const/4 v0, 0x0

    .line 741
    .local v0, "jsonArray":Lorg/json/JSONArray;
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    const-string v2, "wine_debug_channels.json"

    invoke-static {p1, v2}, Lcom/winlator/cmod/core/FileUtils;->readString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 743
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 745
    invoke-static {v0}, Lcom/winlator/cmod/core/ArrayUtils;->toStringArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v1

    .line 746
    .local v1, "items":[Ljava/lang/String;
    new-instance v2, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0, p2, v1, p3}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda21;-><init>(Lcom/winlator/cmod/SettingsFragment;Ljava/util/ArrayList;[Ljava/lang/String;Landroid/view/View;)V

    const v3, 0x7f120513

    invoke-static {p1, v3, v1, v2}, Lcom/winlator/cmod/contentdialog/ContentDialog;->showMultipleChoiceList(Landroid/content/Context;I[Ljava/lang/String;Lcom/winlator/cmod/core/Callback;)V

    .line 750
    return-void
.end method

.method private synthetic lambda$loadWineDebugChannels$26(Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "debugChannels"    # Ljava/util/ArrayList;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "v"    # Landroid/view/View;

    .line 755
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 756
    const-string v0, "warn,err,fixme"

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 757
    invoke-direct {p0, p2, p1}, Lcom/winlator/cmod/SettingsFragment;->loadWineDebugChannels(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 758
    return-void
.end method

.method private synthetic lambda$loadWineDebugChannels$27(Ljava/util/ArrayList;ILandroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "debugChannels"    # Ljava/util/ArrayList;
    .param p2, "index"    # I
    .param p3, "view"    # Landroid/view/View;
    .param p4, "v"    # Landroid/view/View;

    .line 767
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 768
    invoke-direct {p0, p3, p1}, Lcom/winlator/cmod/SettingsFragment;->loadWineDebugChannels(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 769
    return-void
.end method

.method private synthetic lambda$onCreateView$10(Landroid/content/Context;Landroid/widget/Spinner;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sMIDISoundFont"    # Landroid/widget/Spinner;
    .param p3, "uri"    # Landroid/net/Uri;

    .line 426
    new-instance v0, Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/winlator/cmod/core/PreloaderDialog;-><init>(Landroid/app/Activity;)V

    .line 427
    .local v0, "dialog":Lcom/winlator/cmod/core/PreloaderDialog;
    const v1, 0x7f120245

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/core/PreloaderDialog;->showOnUiThread(I)V

    .line 428
    new-instance v1, Lcom/winlator/cmod/SettingsFragment$3;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/winlator/cmod/SettingsFragment$3;-><init>(Lcom/winlator/cmod/SettingsFragment;Lcom/winlator/cmod/core/PreloaderDialog;Landroid/content/Context;Landroid/widget/Spinner;)V

    invoke-static {p1, p3, v1}, Lcom/winlator/cmod/midi/MidiManager;->installSF2File(Landroid/content/Context;Landroid/net/Uri;Lcom/winlator/cmod/midi/MidiManager$OnSoundFontInstalledCallback;)V

    .line 449
    return-void
.end method

.method private synthetic lambda$onCreateView$11(Landroid/content/Context;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sMIDISoundFont"    # Landroid/widget/Spinner;
    .param p3, "v"    # Landroid/view/View;

    .line 425
    new-instance v0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda6;-><init>(Lcom/winlator/cmod/SettingsFragment;Landroid/content/Context;Landroid/widget/Spinner;)V

    iput-object v0, p0, Lcom/winlator/cmod/SettingsFragment;->installSoundFontCallback:Lcom/winlator/cmod/core/Callback;

    .line 452
    const/16 v0, 0x3e9

    invoke-direct {p0, v0}, Lcom/winlator/cmod/SettingsFragment;->openFile(I)V

    .line 453
    return-void
.end method

.method static synthetic lambda$onCreateView$12(Landroid/content/Context;Landroid/widget/Spinner;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sMIDISoundFont"    # Landroid/widget/Spinner;

    .line 458
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/winlator/cmod/midi/MidiManager;->removeSF2File(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    const v0, 0x7f1203f6

    invoke-static {p0, v0}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 460
    invoke-static {p1}, Lcom/winlator/cmod/midi/MidiManager;->loadSFSpinnerWithoutDisabled(Landroid/widget/Spinner;)V

    goto :goto_0

    .line 462
    :cond_0
    const v0, 0x7f1203f5

    invoke-static {p0, v0}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 463
    :goto_0
    return-void
.end method

.method static synthetic lambda$onCreateView$13(Landroid/widget/Spinner;Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p0, "sMIDISoundFont"    # Landroid/widget/Spinner;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;

    .line 456
    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    new-instance v0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda38;

    invoke-direct {v0, p1, p0}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda38;-><init>(Landroid/content/Context;Landroid/widget/Spinner;)V

    const v1, 0x7f1200f7

    invoke-static {p1, v1, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    goto :goto_0

    .line 465
    :cond_0
    const v0, 0x7f120098

    invoke-static {p1, v0}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 466
    :goto_0
    return-void
.end method

.method static synthetic lambda$onCreateView$14(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;

    .line 510
    const v0, 0x7f120222

    invoke-static {p0, p1, v0}, Lcom/winlator/cmod/core/AppUtils;->showHelpBox(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic lambda$onCreateView$15(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;

    .line 516
    const v0, 0x7f1204c2

    invoke-static {p0, v0}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    return-void
.end method

.method static synthetic lambda$onCreateView$16(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;

    .line 517
    const v0, 0x7f120220

    invoke-static {p0, p1, v0}, Lcom/winlator/cmod/core/AppUtils;->showHelpBox(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method private synthetic lambda$onCreateView$17()V
    .locals 1

    .line 529
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/winlator/cmod/MainActivity;

    invoke-static {v0}, Lcom/winlator/cmod/xenvironment/ImageFsInstaller;->installFromAssets(Lcom/winlator/cmod/MainActivity;)V

    return-void
.end method

.method private synthetic lambda$onCreateView$18(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;

    .line 529
    new-instance v0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda5;-><init>(Lcom/winlator/cmod/SettingsFragment;)V

    const v1, 0x7f1200ee

    invoke-static {p1, v1, v0}, Lcom/winlator/cmod/contentdialog/ContentDialog;->confirm(Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 530
    return-void
.end method

.method private synthetic lambda$onCreateView$19(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 535
    invoke-direct {p0}, Lcom/winlator/cmod/SettingsFragment;->showBackupConfirmationDialog()V

    .line 536
    return-void
.end method

.method private synthetic lambda$onCreateView$20(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 541
    invoke-direct {p0}, Lcom/winlator/cmod/SettingsFragment;->selectBackupFileForRestore()V

    .line 542
    return-void
.end method

.method private synthetic lambda$onCreateView$21(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/SeekBar;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Ljava/util/List;Landroid/widget/RadioGroup;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/EditText;[ILandroid/widget/Spinner;Landroid/widget/RadioGroup;Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;)V
    .locals 11
    .param p1, "cbUseDRI3"    # Landroid/widget/CheckBox;
    .param p2, "cbUseXR"    # Landroid/widget/CheckBox;
    .param p3, "sbCursorSpeed"    # Landroid/widget/SeekBar;
    .param p4, "cbEnableWineDebug"    # Landroid/widget/CheckBox;
    .param p5, "cbEnableBox86_64Logs"    # Landroid/widget/CheckBox;
    .param p6, "triggerRbIds"    # Ljava/util/List;
    .param p7, "rgTriggerType"    # Landroid/widget/RadioGroup;
    .param p8, "cbEnableFileProvider"    # Landroid/widget/CheckBox;
    .param p9, "cbOpenInBrowser"    # Landroid/widget/CheckBox;
    .param p10, "cbShareClipboard"    # Landroid/widget/CheckBox;
    .param p11, "etDownloadableContentsURL"    # Landroid/widget/EditText;
    .param p12, "keycodes"    # [I
    .param p13, "sbGyroTriggerButton"    # Landroid/widget/Spinner;
    .param p14, "rgGyroMode"    # Landroid/widget/RadioGroup;
    .param p15, "wineDebugChannels"    # Ljava/util/ArrayList;
    .param p16, "view"    # Landroid/view/View;
    .param p17, "v"    # Landroid/view/View;

    .line 546
    move-object v0, p0

    iget-object v1, v0, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 549
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, v0, Lcom/winlator/cmod/SettingsFragment;->cbDarkMode:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const-string v3, "dark_mode"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 550
    const-string v2, "use_dri3"

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 551
    const-string v2, "use_xr"

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 552
    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    const-string v3, "cursor_speed"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 553
    const-string v2, "enable_wine_debug"

    invoke-virtual {p4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 554
    const-string v2, "enable_box86_64_logs"

    invoke-virtual/range {p5 .. p5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 555
    invoke-virtual/range {p7 .. p7}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, p6

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const-string v4, "trigger_type"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 556
    iget-object v2, v0, Lcom/winlator/cmod/SettingsFragment;->cbCursorLock:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const-string v4, "cursor_lock"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 557
    iget-object v2, v0, Lcom/winlator/cmod/SettingsFragment;->cbXinputToggle:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const-string v4, "xinput_toggle"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 558
    const-string v2, "enable_file_provider"

    invoke-virtual/range {p8 .. p8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 559
    const-string v2, "open_with_android_browser"

    invoke-virtual/range {p9 .. p9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 560
    const-string v2, "share_android_clipboard"

    invoke-virtual/range {p10 .. p10}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 562
    invoke-virtual/range {p11 .. p11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "downloadable_contents_url"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 565
    iget-object v2, v0, Lcom/winlator/cmod/SettingsFragment;->cbGyroEnabled:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const-string v4, "gyro_enabled"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 568
    invoke-virtual/range {p13 .. p13}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    aget v2, p12, v2

    .line 571
    .local v2, "selectedKeycode":I
    const-string v4, "gyro_trigger_button"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 573
    invoke-virtual/range {p14 .. p14}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v4

    const v5, 0x7f09011d

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    const-string v5, "gyro_mode"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 577
    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const-string v5, "wine_debug_channels"

    if-nez v4, :cond_1

    .line 578
    const-string v4, ","

    move-object/from16 v6, p15

    invoke-static {v4, v6}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 579
    :cond_1
    move-object/from16 v6, p15

    iget-object v4, v0, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 580
    invoke-interface {v1, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 582
    :cond_2
    iget-object v4, v0, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 584
    :cond_3
    :goto_1
    const-string v4, "legacy_mode_enabled"

    iget-boolean v5, v0, Lcom/winlator/cmod/SettingsFragment;->enableLegacyInputMode:Z

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 587
    const v4, 0x7f090080

    move-object/from16 v5, p16

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    const-string v7, "enable_big_picture_mode"

    invoke-interface {v1, v7, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 588
    invoke-direct {p0, v1}, Lcom/winlator/cmod/SettingsFragment;->saveCustomApiKeySettings(Landroid/content/SharedPreferences$Editor;)V

    .line 590
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 591
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const v7, 0x7f090115

    invoke-virtual {v4, v7}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/navigation/NavigationView;

    .line 592
    .local v4, "navigationView":Lcom/google/android/material/navigation/NavigationView;
    const v7, 0x7f0903ab

    invoke-virtual {v4, v7}, Lcom/google/android/material/navigation/NavigationView;->setCheckedItem(I)V

    .line 593
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v7

    .line 594
    .local v7, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v7}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v8

    new-instance v9, Lcom/winlator/cmod/ContainersFragment;

    invoke-direct {v9}, Lcom/winlator/cmod/ContainersFragment;-><init>()V

    .line 595
    const v10, 0x7f0900cb

    invoke-virtual {v8, v10, v9}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v8

    .line 596
    invoke-virtual {v8}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 598
    .end local v4    # "navigationView":Lcom/google/android/material/navigation/NavigationView;
    .end local v7    # "fragmentManager":Landroidx/fragment/app/FragmentManager;
    :cond_4
    return-void
.end method

.method private synthetic lambda$onCreateView$4(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 230
    iget-object v0, p0, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 231
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "dark_mode"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 232
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 235
    invoke-direct {p0, p2}, Lcom/winlator/cmod/SettingsFragment;->updateTheme(Z)V

    .line 236
    return-void
.end method

.method private synthetic lambda$onCreateView$5(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 300
    iget-object v0, p0, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 301
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "receive_beta_updates"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 302
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 303
    return-void
.end method

.method private synthetic lambda$onCreateView$6(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 306
    invoke-direct {p0}, Lcom/winlator/cmod/SettingsFragment;->checkForUpdates()V

    return-void
.end method

.method private synthetic lambda$onCreateView$7(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 329
    iput-boolean p2, p0, Lcom/winlator/cmod/SettingsFragment;->enableLegacyInputMode:Z

    .line 330
    iget-object v0, p0, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "legacy_mode_enabled"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 331
    return-void
.end method

.method private synthetic lambda$onCreateView$8(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 391
    invoke-direct {p0}, Lcom/winlator/cmod/SettingsFragment;->showAnalogStickConfigDialog()V

    return-void
.end method

.method private synthetic lambda$onCreateView$9(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 412
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/winlator/cmod/SettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 414
    return-void
.end method

.method private synthetic lambda$onRestoreFailed$36()V
    .locals 2

    .line 1143
    iget-object v0, p0, Lcom/winlator/cmod/SettingsFragment;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-virtual {v0}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V

    .line 1144
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Data restore failed."

    invoke-static {v0, v1}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 1145
    return-void
.end method

.method private synthetic lambda$onRestoreSuccess$35()V
    .locals 2

    .line 1135
    iget-object v0, p0, Lcom/winlator/cmod/SettingsFragment;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-virtual {v0}, Lcom/winlator/cmod/core/PreloaderDialog;->closeOnUiThread()V

    .line 1136
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Data restored successfully."

    invoke-static {v0, v1}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 1137
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/winlator/cmod/core/AppUtils;->restartApplication(Landroid/content/Context;)V

    .line 1138
    return-void
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 134
    invoke-direct {p0}, Lcom/winlator/cmod/SettingsFragment;->showGyroConfigDialog()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$1(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 141
    new-instance v0, Lcom/winlator/cmod/contentdialog/GPUPerformanceDialog;

    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/winlator/cmod/contentdialog/GPUPerformanceDialog;-><init>(Landroid/content/Context;)V

    .line 142
    .local v0, "dialog":Lcom/winlator/cmod/contentdialog/GPUPerformanceDialog;
    invoke-virtual {v0}, Lcom/winlator/cmod/contentdialog/GPUPerformanceDialog;->show()V

    .line 143
    return-void
.end method

.method private synthetic lambda$onViewCreated$2(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 186
    iget-object v0, p0, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 187
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "adreno_turbo_root_warning_shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 188
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 189
    return-void
.end method

.method private synthetic lambda$onViewCreated$3(Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "cbAdrenoTurboMode"    # Landroid/widget/CheckBox;
    .param p2, "buttonView"    # Landroid/widget/CompoundButton;
    .param p3, "isChecked"    # Z

    .line 160
    invoke-static {p3}, Lcom/winlator/cmod/core/GPUInformation;->setTurboMode(Z)Z

    move-result v0

    .line 162
    .local v0, "success":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 164
    iget-object v2, p0, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 165
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "adreno_turbo_mode"

    invoke-interface {v2, v3, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 166
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 168
    if-eqz p3, :cond_0

    .line 169
    const v3, 0x7f12002f

    invoke-virtual {p0, v3}, Lcom/winlator/cmod/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 170
    :cond_0
    const v3, 0x7f12002e

    invoke-virtual {p0, v3}, Lcom/winlator/cmod/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    nop

    .line 171
    .local v3, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 172
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "message":Ljava/lang/String;
    goto :goto_1

    .line 174
    :cond_1
    xor-int/lit8 v2, p3, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 177
    iget-object v2, p0, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "adreno_turbo_root_warning_shown"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 179
    .local v2, "hasShownRootWarning":Z
    if-nez v2, :cond_2

    .line 180
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 181
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v3, "\u0420\u045e\u0421\u0402\u0420\u00b5\u0420\u00b1\u0421\u0453\u0420\u00b5\u0421\u201a\u0421\u0403\u0421\u040f root \u0420\u0491\u0420\u0455\u0421\u0403\u0421\u201a\u0421\u0453\u0420\u0457"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f120032

    invoke-virtual {p0, v4}, Lcom/winlator/cmod/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n\u0420\u201d\u0420\u00bb\u0421\u040f \u0421\u0402\u0420\u00b0\u0420\u00b1\u0420\u0455\u0421\u201a\u0421\u2039 \u0421\u040c\u0421\u201a\u0420\u0455\u0420\u2116 \u0421\u201e\u0421\u0453\u0420\u0405\u0420\u0454\u0421\u2020\u0420\u0451\u0420\u0451 \u0420\u0405\u0420\u00b5\u0420\u0455\u0420\u00b1\u0421\u2026\u0420\u0455\u0420\u0491\u0420\u0451\u0420\u0458 root \u0420\u0491\u0420\u0455\u0421\u0403\u0421\u201a\u0421\u0453\u0420\u0457 \u0420\u0405\u0420\u00b0 \u0421\u0453\u0421\u0403\u0421\u201a\u0421\u0402\u0420\u0455\u0420\u2116\u0421\u0403\u0421\u201a\u0420\u0406\u0420\u00b5."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 184
    new-instance v3, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda36;

    invoke-direct {v3, p0}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda36;-><init>(Lcom/winlator/cmod/SettingsFragment;)V

    const v4, 0x104000a

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 190
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 191
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    goto :goto_1

    .line 193
    :cond_2
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Turbo Mode \u0420\u0405\u0420\u00b5\u0420\u0491\u0420\u0455\u0421\u0403\u0421\u201a\u0421\u0453\u0420\u0457\u0420\u00b5\u0420\u0405 (\u0420\u0405\u0420\u00b5\u0421\u201a root)"

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 195
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 198
    .end local v2    # "hasShownRootWarning":Z
    :goto_1
    return-void
.end method

.method private synthetic lambda$showAnalogStickConfigDialog$37(Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V
    .locals 12
    .param p1, "sbLeftDeadzone"    # Landroid/widget/SeekBar;
    .param p2, "sbRightDeadzone"    # Landroid/widget/SeekBar;
    .param p3, "sbLeftSensitivity"    # Landroid/widget/SeekBar;
    .param p4, "sbRightSensitivity"    # Landroid/widget/SeekBar;
    .param p5, "cbInvertLeftX"    # Landroid/widget/CheckBox;
    .param p6, "cbInvertLeftY"    # Landroid/widget/CheckBox;
    .param p7, "cbInvertRightX"    # Landroid/widget/CheckBox;
    .param p8, "cbInvertRightY"    # Landroid/widget/CheckBox;
    .param p9, "cbLeftStickSquareDeadzone"    # Landroid/widget/CheckBox;
    .param p10, "dialog"    # Landroid/content/DialogInterface;
    .param p11, "which"    # I

    .line 1291
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 1292
    .local v0, "newDeadzoneLeft":F
    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 1293
    .local v2, "newDeadzoneRight":F
    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    .line 1294
    .local v3, "newSensitivityLeft":F
    invoke-virtual/range {p4 .. p4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    .line 1296
    .local v4, "newSensitivityRight":F
    invoke-virtual/range {p5 .. p5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 1297
    .local v1, "newInvertLeftX":Z
    invoke-virtual/range {p6 .. p6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    .line 1298
    .local v5, "newInvertLeftY":Z
    invoke-virtual/range {p7 .. p7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    .line 1299
    .local v6, "newInvertRightX":Z
    invoke-virtual/range {p8 .. p8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    .line 1302
    .local v7, "newInvertRightY":Z
    move-object v8, p0

    iget-object v9, v8, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 1303
    .local v9, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v10, "deadzone_left"

    invoke-interface {v9, v10, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1304
    const-string v10, "deadzone_right"

    invoke-interface {v9, v10, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1305
    const-string v10, "sensitivity_left"

    invoke-interface {v9, v10, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1306
    const-string v10, "sensitivity_right"

    invoke-interface {v9, v10, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1307
    const-string v10, "invert_left_x"

    invoke-interface {v9, v10, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1308
    const-string v10, "invert_left_y"

    invoke-interface {v9, v10, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1309
    const-string v10, "invert_right_x"

    invoke-interface {v9, v10, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1310
    const-string v10, "invert_right_y"

    invoke-interface {v9, v10, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1311
    const-string v10, "square_deadzone_left"

    invoke-virtual/range {p9 .. p9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v11

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1312
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1320
    return-void
.end method

.method private synthetic lambda$showBackupConfirmationDialog$30(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 988
    invoke-direct {p0}, Lcom/winlator/cmod/SettingsFragment;->backupAppData()V

    return-void
.end method

.method static synthetic lambda$showGyroConfigDialog$28(Lcom/winlator/cmod/widget/InputControlsView;Landroid/view/View;)V
    .locals 0
    .param p0, "inputControlsView"    # Lcom/winlator/cmod/widget/InputControlsView;
    .param p1, "v"    # Landroid/view/View;

    .line 810
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/InputControlsView;->resetStickPosition()V

    .line 811
    invoke-virtual {p0}, Lcom/winlator/cmod/widget/InputControlsView;->invalidate()V

    .line 812
    return-void
.end method

.method private synthetic lambda$showGyroConfigDialog$29(Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "sbGyroXSensitivity"    # Landroid/widget/SeekBar;
    .param p2, "sbGyroYSensitivity"    # Landroid/widget/SeekBar;
    .param p3, "sbGyroSmoothing"    # Landroid/widget/SeekBar;
    .param p4, "sbGyroDeadzone"    # Landroid/widget/SeekBar;
    .param p5, "cbInvertGyroX"    # Landroid/widget/CheckBox;
    .param p6, "cbInvertGyroY"    # Landroid/widget/CheckBox;
    .param p7, "dialog"    # Landroid/content/DialogInterface;
    .param p8, "which"    # I

    .line 966
    iget-object v0, p0, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 967
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const-string v3, "gyro_x_sensitivity"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 968
    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const-string v3, "gyro_y_sensitivity"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 969
    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const-string v3, "gyro_smoothing"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 970
    invoke-virtual {p4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const-string v2, "gyro_deadzone"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 971
    const-string v1, "invert_gyro_x"

    invoke-virtual {p5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 972
    const-string v1, "invert_gyro_y"

    invoke-virtual {p6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 973
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 974
    return-void
.end method

.method private loadWineDebugChannels(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "view",
            "debugChannels"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 727
    .local p2, "debugChannels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 728
    .local v3, "context":Landroid/content/Context;
    const v4, 0x7f090102

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 729
    .local v4, "container":Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 731
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 732
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f0c00e1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 733
    .local v8, "itemView":Landroid/view/View;
    const v9, 0x7f090225

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 734
    const v10, 0x7f090064

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    .line 736
    const v11, 0x7f090003

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 737
    .local v11, "addButton":Landroid/view/View;
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 738
    new-instance v12, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda13;

    invoke-direct {v12, v0, v3, v2, v1}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda13;-><init>(Lcom/winlator/cmod/SettingsFragment;Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/View;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 752
    const v12, 0x7f09006d

    invoke-virtual {v8, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 753
    .local v12, "resetButton":Landroid/view/View;
    invoke-virtual {v12, v7}, Landroid/view/View;->setVisibility(I)V

    .line 754
    new-instance v13, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda14;

    invoke-direct {v13, v0, v2, v1}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda14;-><init>(Lcom/winlator/cmod/SettingsFragment;Ljava/util/ArrayList;Landroid/view/View;)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 759
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 761
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_0

    .line 762
    invoke-virtual {v5, v6, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 763
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 764
    .local v14, "textView":Landroid/widget/TextView;
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    move v15, v13

    .line 766
    .local v15, "index":I
    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda15;

    invoke-direct {v7, v0, v2, v15, v1}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda15;-><init>(Lcom/winlator/cmod/SettingsFragment;Ljava/util/ArrayList;ILandroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 770
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 761
    .end local v14    # "textView":Landroid/widget/TextView;
    .end local v15    # "index":I
    add-int/lit8 v13, v13, 0x1

    const v6, 0x7f0c00e1

    const/4 v7, 0x0

    goto :goto_0

    .line 772
    .end local v13    # "i":I
    :cond_0
    return-void
.end method

.method private moveFiles(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .param p1, "sourceDir"    # Ljava/io/File;
    .param p2, "targetDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sourceDir",
            "targetDir"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1112
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1113
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_3

    .line 1114
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 1115
    .local v3, "file":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1116
    .local v4, "targetFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1117
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1118
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 1120
    :cond_0
    invoke-direct {p0, v3, v4}, Lcom/winlator/cmod/SettingsFragment;->moveFiles(Ljava/io/File;Ljava/io/File;)V

    goto :goto_1

    .line 1122
    :cond_1
    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1114
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "targetFile":Ljava/io/File;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1123
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "targetFile":Ljava/io/File;
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to move file: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1129
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "targetFile":Ljava/io/File;
    :cond_3
    invoke-static {p1}, Lcom/winlator/cmod/core/FileUtils;->clear(Ljava/io/File;)Z

    .line 1130
    return-void
.end method

.method private onRestoreFailed()V
    .locals 2

    .line 1142
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda33;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda33;-><init>(Lcom/winlator/cmod/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1146
    return-void
.end method

.method private onRestoreSuccess()V
    .locals 2

    .line 1134
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda37;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda37;-><init>(Lcom/winlator/cmod/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1139
    return-void
.end method

.method private openFile(I)V
    .locals 2
    .param p1, "requestCode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestCode"
        }
    .end annotation

    .line 717
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 718
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 722
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    .line 723
    return-void
.end method

.method public static resetEmulatorsVersion(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 3
    .param p0, "activity"    # Landroidx/appcompat/app/AppCompatActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 775
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 776
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 777
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "current_box64_version"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 778
    const-string v2, "current_wowbox64_version"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 779
    const-string v2, "current_fexcore_version"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 780
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 781
    return-void
.end method

.method private restoreAppData(Landroid/net/Uri;)V
    .locals 3
    .param p1, "backupUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backupUri"
        }
    .end annotation

    .line 1102
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1103
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/winlator/cmod/restore/RestoreActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1104
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1105
    invoke-virtual {p0, v0}, Lcom/winlator/cmod/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 1106
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 1108
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private saveCustomApiKeySettings(Landroid/content/SharedPreferences$Editor;)V
    .locals 3
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editor"
        }
    .end annotation

    .line 704
    iget-object v0, p0, Lcom/winlator/cmod/SettingsFragment;->cbEnableCustomApiKey:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 705
    .local v0, "isCustomApiKeyEnabled":Z
    const-string v1, "enable_custom_api_key"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 707
    const-string v1, "custom_api_key"

    if-eqz v0, :cond_0

    .line 708
    iget-object v2, p0, Lcom/winlator/cmod/SettingsFragment;->etCustomApiKey:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 709
    .local v2, "customApiKey":Ljava/lang/String;
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 710
    .end local v2    # "customApiKey":Ljava/lang/String;
    goto :goto_0

    .line 711
    :cond_0
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 713
    :goto_0
    return-void
.end method

.method private selectBackupFileForRestore()V
    .locals 2

    .line 1025
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/winlator/cmod/SettingsFragment;->isRestoreAction:Z

    .line 1026
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1027
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1028
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1029
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/winlator/cmod/SettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1030
    return-void
.end method

.method private showAnalogStickConfigDialog()V
    .locals 39

    .line 1174
    move-object/from16 v11, p0

    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    .line 1175
    .local v12, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f0c0025

    const/4 v13, 0x0

    invoke-virtual {v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 1177
    .local v14, "dialogView":Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v15, v0

    .line 1178
    .local v15, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v15, v14}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1179
    const-string v0, "Configure Analog Sticks"

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1180
    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1183
    const v1, 0x7f090137

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/SeekBar;

    .line 1184
    .local v10, "sbLeftDeadzone":Landroid/widget/SeekBar;
    const v1, 0x7f0901e7

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    .line 1186
    .local v9, "tvLeftDeadzone":Landroid/widget/TextView;
    const v1, 0x7f090138

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/SeekBar;

    .line 1187
    .local v8, "sbLeftSensitivity":Landroid/widget/SeekBar;
    const v1, 0x7f0901e8

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    .line 1189
    .local v7, "tvLeftSensitivity":Landroid/widget/TextView;
    const v1, 0x7f09013b

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/SeekBar;

    .line 1190
    .local v6, "sbRightDeadzone":Landroid/widget/SeekBar;
    const v1, 0x7f090204

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    .line 1192
    .local v5, "tvRightDeadzone":Landroid/widget/TextView;
    const v1, 0x7f09013c

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/SeekBar;

    .line 1193
    .local v4, "sbRightSensitivity":Landroid/widget/SeekBar;
    const v1, 0x7f090205

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/TextView;

    .line 1195
    .local v3, "tvRightSensitivity":Landroid/widget/TextView;
    const v1, 0x7f09009d

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/CheckBox;

    .line 1196
    .local v2, "cbInvertLeftX":Landroid/widget/CheckBox;
    const v1, 0x7f09009e

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 1197
    .local v1, "cbInvertLeftY":Landroid/widget/CheckBox;
    const v13, 0x7f09009f

    invoke-virtual {v14, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    .line 1198
    .local v13, "cbInvertRightX":Landroid/widget/CheckBox;
    const v0, 0x7f0900a0

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1201
    .local v0, "cbInvertRightY":Landroid/widget/CheckBox;
    move-object/from16 v17, v12

    .end local v12    # "inflater":Landroid/view/LayoutInflater;
    .local v17, "inflater":Landroid/view/LayoutInflater;
    const v12, 0x7f0900a1

    invoke-virtual {v14, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    .line 1204
    .local v12, "cbLeftStickSquareDeadzone":Landroid/widget/CheckBox;
    move-object/from16 v18, v14

    .end local v14    # "dialogView":Landroid/view/View;
    .local v18, "dialogView":Landroid/view/View;
    iget-object v14, v11, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v19, v15

    .end local v15    # "builder":Landroid/app/AlertDialog$Builder;
    .local v19, "builder":Landroid/app/AlertDialog$Builder;
    const-string v15, "deadzone_left"

    move-object/from16 v20, v12

    .end local v12    # "cbLeftStickSquareDeadzone":Landroid/widget/CheckBox;
    .local v20, "cbLeftStickSquareDeadzone":Landroid/widget/CheckBox;
    const v12, 0x3dcccccd    # 0.1f

    invoke-interface {v14, v15, v12}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v14

    const/high16 v15, 0x42c80000    # 100.0f

    mul-float/2addr v14, v15

    .line 1205
    .local v14, "currentDeadzoneLeft":F
    iget-object v15, v11, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    .end local v0    # "cbInvertRightY":Landroid/widget/CheckBox;
    .local v22, "cbInvertRightY":Landroid/widget/CheckBox;
    const-string v0, "deadzone_right"

    invoke-interface {v15, v0, v12}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float v15, v0, v12

    .line 1206
    .local v15, "currentDeadzoneRight":F
    iget-object v0, v11, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v12, "sensitivity_left"

    move-object/from16 v23, v13

    .end local v13    # "cbInvertRightX":Landroid/widget/CheckBox;
    .local v23, "cbInvertRightX":Landroid/widget/CheckBox;
    const/high16 v13, 0x3f800000    # 1.0f

    invoke-interface {v0, v12, v13}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v0, v12

    .line 1207
    .local v0, "currentSensitivityLeft":F
    iget-object v12, v11, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v24, v1

    .end local v1    # "cbInvertLeftY":Landroid/widget/CheckBox;
    .local v24, "cbInvertLeftY":Landroid/widget/CheckBox;
    const-string v1, "sensitivity_right"

    invoke-interface {v12, v1, v13}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v12, v1

    .line 1208
    .local v12, "currentSensitivityRight":F
    iget-object v1, v11, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v13, "square_deadzone_left"

    move-object/from16 v21, v2

    const/4 v2, 0x0

    .end local v2    # "cbInvertLeftX":Landroid/widget/CheckBox;
    .local v21, "cbInvertLeftX":Landroid/widget/CheckBox;
    invoke-interface {v1, v13, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 1210
    .local v13, "squareDeadzoneLeft":Z
    iget-object v1, v11, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    move/from16 v16, v13

    .end local v13    # "squareDeadzoneLeft":Z
    .local v16, "squareDeadzoneLeft":Z
    const-string v13, "invert_left_x"

    invoke-interface {v1, v13, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 1211
    .local v13, "invertLeftX":Z
    iget-object v1, v11, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    move/from16 v25, v13

    .end local v13    # "invertLeftX":Z
    .local v25, "invertLeftX":Z
    const-string v13, "invert_left_y"

    invoke-interface {v1, v13, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 1212
    .local v13, "invertLeftY":Z
    iget-object v1, v11, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    move/from16 v26, v13

    .end local v13    # "invertLeftY":Z
    .local v26, "invertLeftY":Z
    const-string v13, "invert_right_x"

    invoke-interface {v1, v13, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 1213
    .local v13, "invertRightX":Z
    iget-object v1, v11, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v11, "invert_right_y"

    invoke-interface {v1, v11, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 1216
    .local v11, "invertRightY":Z
    float-to-int v1, v14

    invoke-virtual {v10, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deadzone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v27, v14

    .end local v14    # "currentDeadzoneLeft":F
    .local v27, "currentDeadzoneLeft":F
    invoke-virtual {v10}, Landroid/widget/SeekBar;->getProgress()I

    move-result v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, "%"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1219
    float-to-int v1, v0

    invoke-virtual {v8, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v28, v0

    .end local v0    # "currentSensitivityLeft":F
    .local v28, "currentSensitivityLeft":F
    const-string v0, "Sensitivity: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v29, v10

    .end local v10    # "sbLeftDeadzone":Landroid/widget/SeekBar;
    .local v29, "sbLeftDeadzone":Landroid/widget/SeekBar;
    invoke-virtual {v8}, Landroid/widget/SeekBar;->getProgress()I

    move-result v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1222
    float-to-int v1, v15

    invoke-virtual {v6, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1225
    float-to-int v1, v12

    invoke-virtual {v4, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1228
    move-object/from16 v2, v21

    move/from16 v14, v25

    .end local v21    # "cbInvertLeftX":Landroid/widget/CheckBox;
    .end local v25    # "invertLeftX":Z
    .restart local v2    # "cbInvertLeftX":Landroid/widget/CheckBox;
    .local v14, "invertLeftX":Z
    invoke-virtual {v2, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1229
    move-object/from16 v1, v24

    move/from16 v10, v26

    .end local v24    # "cbInvertLeftY":Landroid/widget/CheckBox;
    .end local v26    # "invertLeftY":Z
    .restart local v1    # "cbInvertLeftY":Landroid/widget/CheckBox;
    .local v10, "invertLeftY":Z
    invoke-virtual {v1, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1230
    move-object/from16 v0, v23

    .end local v23    # "cbInvertRightX":Landroid/widget/CheckBox;
    .local v0, "cbInvertRightX":Landroid/widget/CheckBox;
    invoke-virtual {v0, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1231
    move-object/from16 v0, v22

    .end local v22    # "cbInvertRightY":Landroid/widget/CheckBox;
    .local v0, "cbInvertRightY":Landroid/widget/CheckBox;
    .restart local v23    # "cbInvertRightX":Landroid/widget/CheckBox;
    invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1233
    move/from16 v21, v11

    move-object/from16 v11, v20

    move/from16 v38, v16

    move/from16 v16, v12

    move/from16 v12, v38

    .end local v20    # "cbLeftStickSquareDeadzone":Landroid/widget/CheckBox;
    .local v11, "cbLeftStickSquareDeadzone":Landroid/widget/CheckBox;
    .local v12, "squareDeadzoneLeft":Z
    .local v16, "currentSensitivityRight":F
    .local v21, "invertRightY":Z
    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1236
    nop

    .end local v0    # "cbInvertRightY":Landroid/widget/CheckBox;
    .restart local v22    # "cbInvertRightY":Landroid/widget/CheckBox;
    new-instance v0, Lcom/winlator/cmod/SettingsFragment$10;

    move/from16 v20, v12

    move-object/from16 v12, p0

    .end local v12    # "squareDeadzoneLeft":Z
    .local v20, "squareDeadzoneLeft":Z
    invoke-direct {v0, v12, v9}, Lcom/winlator/cmod/SettingsFragment$10;-><init>(Lcom/winlator/cmod/SettingsFragment;Landroid/widget/TextView;)V

    move-object/from16 v10, v29

    .end local v29    # "sbLeftDeadzone":Landroid/widget/SeekBar;
    .local v10, "sbLeftDeadzone":Landroid/widget/SeekBar;
    .restart local v26    # "invertLeftY":Z
    invoke-virtual {v10, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1249
    new-instance v0, Lcom/winlator/cmod/SettingsFragment$11;

    invoke-direct {v0, v12, v7}, Lcom/winlator/cmod/SettingsFragment$11;-><init>(Lcom/winlator/cmod/SettingsFragment;Landroid/widget/TextView;)V

    invoke-virtual {v8, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1262
    new-instance v0, Lcom/winlator/cmod/SettingsFragment$12;

    invoke-direct {v0, v12, v5}, Lcom/winlator/cmod/SettingsFragment$12;-><init>(Lcom/winlator/cmod/SettingsFragment;Landroid/widget/TextView;)V

    invoke-virtual {v6, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1275
    new-instance v0, Lcom/winlator/cmod/SettingsFragment$13;

    invoke-direct {v0, v12, v3}, Lcom/winlator/cmod/SettingsFragment$13;-><init>(Lcom/winlator/cmod/SettingsFragment;Landroid/widget/TextView;)V

    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1289
    new-instance v0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda1;

    move-object/from16 v25, v0

    move/from16 v24, v28

    move-object/from16 v38, v23

    move-object/from16 v23, v22

    move-object/from16 v22, v38

    .end local v28    # "currentSensitivityLeft":F
    .local v22, "cbInvertRightX":Landroid/widget/CheckBox;
    .local v23, "cbInvertRightY":Landroid/widget/CheckBox;
    .local v24, "currentSensitivityLeft":F
    move-object/from16 v28, v1

    .end local v1    # "cbInvertLeftY":Landroid/widget/CheckBox;
    .local v28, "cbInvertLeftY":Landroid/widget/CheckBox;
    move-object/from16 v1, p0

    move-object/from16 v29, v2

    .end local v2    # "cbInvertLeftX":Landroid/widget/CheckBox;
    .local v29, "cbInvertLeftX":Landroid/widget/CheckBox;
    move-object v2, v10

    move-object/from16 v30, v3

    .end local v3    # "tvRightSensitivity":Landroid/widget/TextView;
    .local v30, "tvRightSensitivity":Landroid/widget/TextView;
    move-object v3, v6

    move-object/from16 v31, v4

    .end local v4    # "sbRightSensitivity":Landroid/widget/SeekBar;
    .local v31, "sbRightSensitivity":Landroid/widget/SeekBar;
    move-object v4, v8

    move-object/from16 v32, v5

    .end local v5    # "tvRightDeadzone":Landroid/widget/TextView;
    .local v32, "tvRightDeadzone":Landroid/widget/TextView;
    move-object/from16 v5, v31

    move-object/from16 v33, v6

    .end local v6    # "sbRightDeadzone":Landroid/widget/SeekBar;
    .local v33, "sbRightDeadzone":Landroid/widget/SeekBar;
    move-object/from16 v6, v29

    move-object/from16 v34, v7

    .end local v7    # "tvLeftSensitivity":Landroid/widget/TextView;
    .local v34, "tvLeftSensitivity":Landroid/widget/TextView;
    move-object/from16 v7, v28

    move-object/from16 v35, v8

    .end local v8    # "sbLeftSensitivity":Landroid/widget/SeekBar;
    .local v35, "sbLeftSensitivity":Landroid/widget/SeekBar;
    move-object/from16 v8, v22

    move-object/from16 v36, v9

    .end local v9    # "tvLeftDeadzone":Landroid/widget/TextView;
    .local v36, "tvLeftDeadzone":Landroid/widget/TextView;
    move-object/from16 v9, v23

    move/from16 v37, v26

    move-object/from16 v26, v10

    .end local v10    # "sbLeftDeadzone":Landroid/widget/SeekBar;
    .local v26, "sbLeftDeadzone":Landroid/widget/SeekBar;
    .local v37, "invertLeftY":Z
    move-object v10, v11

    invoke-direct/range {v0 .. v10}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/winlator/cmod/SettingsFragment;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    const-string v0, "Save"

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    .end local v19    # "builder":Landroid/app/AlertDialog$Builder;
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1322
    const-string v0, "Cancel"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1325
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1326
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1327
    return-void
.end method

.method private showBackupConfirmationDialog()V
    .locals 3

    .line 985
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 986
    const-string v1, "Backup Data"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 987
    const-string v1, "Do you want to create a backup of the app\'s data directory?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/winlator/cmod/SettingsFragment;)V

    .line 988
    const-string v2, "Yes"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 989
    const-string v1, "No"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 990
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 991
    return-void
.end method

.method private showGyroConfigDialog()V
    .locals 37

    .line 784
    move-object/from16 v15, p0

    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0074

    const/4 v14, 0x0

    invoke-virtual {v0, v1, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 785
    .local v13, "dialogView":Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v12, v0

    .line 786
    .local v12, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 787
    const-string v0, "Gyroscope Configuration"

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 790
    new-instance v0, Lcom/winlator/cmod/widget/InputControlsView;

    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v11, 0x1

    invoke-direct {v0, v1, v11}, Lcom/winlator/cmod/widget/InputControlsView;-><init>(Landroid/content/Context;Z)V

    move-object v10, v0

    .line 791
    .local v10, "inputControlsView":Lcom/winlator/cmod/widget/InputControlsView;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v0}, Lcom/winlator/cmod/widget/InputControlsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 792
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lcom/winlator/cmod/widget/InputControlsView;->setEditMode(Z)V

    .line 795
    const/high16 v1, 0x437a0000    # 250.0f

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x44160000    # 600.0f

    invoke-virtual {v10, v3, v1, v2}, Lcom/winlator/cmod/widget/InputControlsView;->initializeStickElement(FFF)V

    .line 796
    invoke-virtual {v10}, Lcom/winlator/cmod/widget/InputControlsView;->getStickElement()Lcom/winlator/cmod/inputcontrols/ControlElement;

    move-result-object v1

    sget-object v2, Lcom/winlator/cmod/inputcontrols/ControlElement$Type;->STICK:Lcom/winlator/cmod/inputcontrols/ControlElement$Type;

    invoke-virtual {v1, v2}, Lcom/winlator/cmod/inputcontrols/ControlElement;->setType(Lcom/winlator/cmod/inputcontrols/ControlElement$Type;)V

    .line 800
    const v1, 0x7f0904e8

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/FrameLayout;

    .line 801
    .local v8, "placeholder":Landroid/widget/FrameLayout;
    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 804
    invoke-virtual {v10}, Lcom/winlator/cmod/widget/InputControlsView;->invalidate()V

    .line 807
    const v1, 0x7f0902a5

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/Button;

    .line 808
    .local v6, "btnResetCenter":Landroid/widget/Button;
    new-instance v1, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda34;

    invoke-direct {v1, v10}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda34;-><init>(Lcom/winlator/cmod/widget/InputControlsView;)V

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 815
    const v1, 0x7f090134

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/SeekBar;

    .line 816
    .local v5, "sbGyroXSensitivity":Landroid/widget/SeekBar;
    const v1, 0x7f090135

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/SeekBar;

    .line 817
    .local v4, "sbGyroYSensitivity":Landroid/widget/SeekBar;
    const v1, 0x7f090132

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/SeekBar;

    .line 818
    .local v3, "sbGyroSmoothing":Landroid/widget/SeekBar;
    const v1, 0x7f090131

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/SeekBar;

    .line 819
    .local v2, "sbGyroDeadzone":Landroid/widget/SeekBar;
    const v1, 0x7f09009b

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 820
    .local v1, "cbInvertGyroX":Landroid/widget/CheckBox;
    const v7, 0x7f09009c

    invoke-virtual {v13, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Landroid/widget/CheckBox;

    .line 821
    .local v9, "cbInvertGyroY":Landroid/widget/CheckBox;
    const v7, 0x7f0901e3

    invoke-virtual {v13, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 822
    .local v7, "tvGyroXSensitivity":Landroid/widget/TextView;
    const v14, 0x7f0901e4

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 823
    .local v14, "tvGyroYSensitivity":Landroid/widget/TextView;
    const v11, 0x7f0901e1

    invoke-virtual {v13, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 824
    .local v11, "tvGyroSmoothing":Landroid/widget/TextView;
    const v0, 0x7f0901df

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 828
    .local v0, "tvGyroDeadzone":Landroid/widget/TextView;
    move-object/from16 v19, v6

    .end local v6    # "btnResetCenter":Landroid/widget/Button;
    .local v19, "btnResetCenter":Landroid/widget/Button;
    iget-object v6, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v20, v8

    .end local v8    # "placeholder":Landroid/widget/FrameLayout;
    .local v20, "placeholder":Landroid/widget/FrameLayout;
    const-string v8, "gyro_x_sensitivity"

    move-object/from16 v21, v10

    .end local v10    # "inputControlsView":Lcom/winlator/cmod/widget/InputControlsView;
    .local v21, "inputControlsView":Lcom/winlator/cmod/widget/InputControlsView;
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-interface {v6, v8, v10}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v6

    const/high16 v22, 0x42c80000    # 100.0f

    mul-float v6, v6, v22

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 829
    iget-object v6, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v23, v12

    .end local v12    # "builder":Landroid/app/AlertDialog$Builder;
    .local v23, "builder":Landroid/app/AlertDialog$Builder;
    const-string v12, "gyro_y_sensitivity"

    invoke-interface {v6, v12, v10}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v6

    mul-float v6, v6, v22

    float-to-int v6, v6

    invoke-virtual {v4, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 830
    iget-object v6, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v10, "gyro_smoothing"

    move-object/from16 v25, v13

    .end local v13    # "dialogView":Landroid/view/View;
    .local v25, "dialogView":Landroid/view/View;
    const v13, 0x3f666666    # 0.9f

    invoke-interface {v6, v10, v13}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v6

    mul-float v6, v6, v22

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 831
    iget-object v6, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v13, "gyro_deadzone"

    move-object/from16 v27, v12

    const v12, 0x3d4ccccd    # 0.05f

    invoke-interface {v6, v13, v12}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v6

    mul-float v6, v6, v22

    float-to-int v6, v6

    invoke-virtual {v2, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 832
    iget-object v6, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v12, "invert_gyro_x"

    move-object/from16 v28, v8

    const/4 v8, 0x0

    invoke-interface {v6, v12, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 833
    iget-object v6, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v29, v1

    .end local v1    # "cbInvertGyroX":Landroid/widget/CheckBox;
    .local v29, "cbInvertGyroX":Landroid/widget/CheckBox;
    const-string v1, "invert_gyro_y"

    invoke-interface {v6, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v9, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 836
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "X Sensitivity: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "%"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 837
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v30, v9

    .end local v9    # "cbInvertGyroY":Landroid/widget/CheckBox;
    .local v30, "cbInvertGyroY":Landroid/widget/CheckBox;
    const-string v9, "Y Sensitivity: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 838
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Smoothing: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 839
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Deadzone: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 842
    new-instance v6, Lcom/winlator/cmod/SettingsFragment$5;

    invoke-direct {v6, v15, v7}, Lcom/winlator/cmod/SettingsFragment$5;-><init>(Lcom/winlator/cmod/SettingsFragment;Landroid/widget/TextView;)V

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 855
    new-instance v6, Lcom/winlator/cmod/SettingsFragment$6;

    invoke-direct {v6, v15, v14}, Lcom/winlator/cmod/SettingsFragment$6;-><init>(Lcom/winlator/cmod/SettingsFragment;Landroid/widget/TextView;)V

    invoke-virtual {v4, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 868
    new-instance v6, Lcom/winlator/cmod/SettingsFragment$7;

    invoke-direct {v6, v15, v11}, Lcom/winlator/cmod/SettingsFragment$7;-><init>(Lcom/winlator/cmod/SettingsFragment;Landroid/widget/TextView;)V

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 881
    new-instance v6, Lcom/winlator/cmod/SettingsFragment$8;

    invoke-direct {v6, v15, v0}, Lcom/winlator/cmod/SettingsFragment$8;-><init>(Lcom/winlator/cmod/SettingsFragment;Landroid/widget/TextView;)V

    invoke-virtual {v2, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 895
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v8, "sensor"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Landroid/hardware/SensorManager;

    .line 896
    .local v8, "sensorManager":Landroid/hardware/SensorManager;
    const/4 v6, 0x4

    invoke-virtual {v8, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    .line 899
    .local v6, "gyroscopeSensor":Landroid/hardware/Sensor;
    move-object/from16 v31, v0

    const/4 v9, 0x1

    .end local v0    # "tvGyroDeadzone":Landroid/widget/TextView;
    .local v31, "tvGyroDeadzone":Landroid/widget/TextView;
    new-array v0, v9, [F

    const/16 v32, 0x0

    const/4 v9, 0x0

    aput v32, v0, v9

    move-object/from16 v18, v7

    .end local v7    # "tvGyroXSensitivity":Landroid/widget/TextView;
    .local v18, "tvGyroXSensitivity":Landroid/widget/TextView;
    move-object v7, v0

    .line 900
    .local v7, "smoothGyroX":[F
    move-object/from16 v33, v2

    const/4 v0, 0x1

    .end local v2    # "sbGyroDeadzone":Landroid/widget/SeekBar;
    .local v33, "sbGyroDeadzone":Landroid/widget/SeekBar;
    new-array v2, v0, [F

    aput v32, v2, v9

    move v0, v9

    move-object v9, v2

    .line 901
    .local v9, "smoothGyroY":[F
    iget-object v2, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const v0, 0x3f666666    # 0.9f

    invoke-interface {v2, v10, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v26

    .line 902
    .local v26, "smoothingFactor":F
    iget-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const v2, 0x3d4ccccd    # 0.05f

    invoke-interface {v0, v13, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v22

    .line 903
    .local v22, "gyroDeadzone":F
    iget-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v0, v12, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    .line 904
    .local v32, "invertGyroX":Z
    iget-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v34

    .line 905
    .local v34, "invertGyroY":Z
    iget-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v1, v28

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v24

    .line 906
    .local v24, "gyroSensitivityX":F
    iget-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v1, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v27

    .line 908
    .local v27, "gyroSensitivityY":F
    new-instance v12, Lcom/winlator/cmod/SettingsFragment$9;

    move-object/from16 v28, v31

    .end local v31    # "tvGyroDeadzone":Landroid/widget/TextView;
    .local v28, "tvGyroDeadzone":Landroid/widget/TextView;
    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v31, v33

    .end local v33    # "sbGyroDeadzone":Landroid/widget/SeekBar;
    .local v31, "sbGyroDeadzone":Landroid/widget/SeekBar;
    move/from16 v2, v22

    move-object/from16 v33, v3

    .end local v3    # "sbGyroSmoothing":Landroid/widget/SeekBar;
    .local v33, "sbGyroSmoothing":Landroid/widget/SeekBar;
    move/from16 v3, v32

    move-object/from16 v35, v4

    .end local v4    # "sbGyroYSensitivity":Landroid/widget/SeekBar;
    .local v35, "sbGyroYSensitivity":Landroid/widget/SeekBar;
    move/from16 v4, v34

    move-object/from16 v36, v5

    .end local v5    # "sbGyroXSensitivity":Landroid/widget/SeekBar;
    .local v36, "sbGyroXSensitivity":Landroid/widget/SeekBar;
    move/from16 v5, v24

    move-object v13, v6

    .end local v6    # "gyroscopeSensor":Landroid/hardware/Sensor;
    .local v13, "gyroscopeSensor":Landroid/hardware/Sensor;
    move/from16 v6, v27

    move-object v10, v8

    .end local v8    # "sensorManager":Landroid/hardware/SensorManager;
    .local v10, "sensorManager":Landroid/hardware/SensorManager;
    move/from16 v8, v26

    move-object v15, v10

    .end local v10    # "sensorManager":Landroid/hardware/SensorManager;
    .local v15, "sensorManager":Landroid/hardware/SensorManager;
    move-object/from16 v10, v21

    invoke-direct/range {v0 .. v10}, Lcom/winlator/cmod/SettingsFragment$9;-><init>(Lcom/winlator/cmod/SettingsFragment;FZZFF[FF[FLcom/winlator/cmod/widget/InputControlsView;)V

    .line 962
    .local v0, "gyroListener":Landroid/hardware/SensorEventListener;
    const/4 v1, 0x1

    invoke-virtual {v15, v0, v13, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 965
    new-instance v1, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda35;

    move-object v10, v1

    move-object v2, v11

    .end local v11    # "tvGyroSmoothing":Landroid/widget/TextView;
    .local v2, "tvGyroSmoothing":Landroid/widget/TextView;
    move-object/from16 v11, p0

    move-object/from16 v3, v23

    .end local v23    # "builder":Landroid/app/AlertDialog$Builder;
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v12, v36

    move-object v5, v13

    move-object/from16 v4, v25

    .end local v13    # "gyroscopeSensor":Landroid/hardware/Sensor;
    .end local v25    # "dialogView":Landroid/view/View;
    .local v4, "dialogView":Landroid/view/View;
    .local v5, "gyroscopeSensor":Landroid/hardware/Sensor;
    move-object/from16 v13, v35

    move-object v6, v14

    const/4 v8, 0x0

    .end local v14    # "tvGyroYSensitivity":Landroid/widget/TextView;
    .local v6, "tvGyroYSensitivity":Landroid/widget/TextView;
    move-object/from16 v14, v33

    move-object/from16 v23, v15

    .end local v15    # "sensorManager":Landroid/hardware/SensorManager;
    .local v23, "sensorManager":Landroid/hardware/SensorManager;
    move-object/from16 v15, v31

    move-object/from16 v16, v29

    move-object/from16 v17, v30

    invoke-direct/range {v10 .. v17}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda35;-><init>(Lcom/winlator/cmod/SettingsFragment;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    const-string v10, "OK"

    invoke-virtual {v3, v10, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 976
    const-string v1, "Cancel"

    invoke-virtual {v3, v1, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 979
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 980
    return-void
.end method

.method private updateGPUInfoDisplay(Landroid/widget/TextView;)V
    .locals 13
    .param p1, "tvGPUInfoDisplay"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tvGPUInfoDisplay"
        }
    .end annotation

    .line 1153
    :try_start_0
    new-instance v0, Lcom/winlator/cmod/core/GPUPerformanceManager;

    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/winlator/cmod/core/GPUPerformanceManager;-><init>(Landroid/content/Context;)V

    .line 1154
    .local v0, "gpuManager":Lcom/winlator/cmod/core/GPUPerformanceManager;
    invoke-virtual {v0}, Lcom/winlator/cmod/core/GPUPerformanceManager;->getGPUStatus()Lcom/winlator/cmod/core/GPUPerformanceManager$GPUStatus;

    move-result-object v1

    .line 1156
    .local v1, "status":Lcom/winlator/cmod/core/GPUPerformanceManager$GPUStatus;
    invoke-static {}, Lcom/winlator/cmod/core/GPUInformation;->getRenderer()Ljava/lang/String;

    move-result-object v2

    .line 1157
    .local v2, "gpuRenderer":Ljava/lang/String;
    const-string v3, "GPU: %s\n\u0420\u00a0\u0420\u00b5\u0420\u0456\u0421\u0453\u0420\u00bb\u0421\u040f\u0421\u201a\u0420\u0455\u0421\u0402: %s"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    .line 1159
    iget-object v7, v1, Lcom/winlator/cmod/core/GPUPerformanceManager$GPUStatus;->governor:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, v1, Lcom/winlator/cmod/core/GPUPerformanceManager$GPUStatus;->governor:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v7, "\u0420\u045c\u0420\u00b5\u0420\u0451\u0420\u00b7\u0420\u0406\u0420\u00b5\u0421\u0403\u0421\u201a\u0420\u0405\u0420\u0455"

    :goto_0
    const/4 v8, 0x1

    aput-object v7, v5, v8

    .line 1157
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1161
    .local v3, "info":Ljava/lang/String;
    iget-wide v9, v1, Lcom/winlator/cmod/core/GPUPerformanceManager$GPUStatus;->currentFreq:J

    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    if-lez v5, :cond_1

    .line 1162
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\n\u0420\u00a7\u0420\u00b0\u0421\u0403\u0421\u201a\u0420\u0455\u0421\u201a\u0420\u00b0: %s (%d%%)"

    new-array v4, v4, [Ljava/lang/Object;

    .line 1163
    invoke-virtual {v1}, Lcom/winlator/cmod/core/GPUPerformanceManager$GPUStatus;->getFrequencyMHz()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v6

    invoke-virtual {v1}, Lcom/winlator/cmod/core/GPUPerformanceManager$GPUStatus;->getUsagePercent()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v8

    .line 1162
    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 1166
    :cond_1
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1169
    .end local v0    # "gpuManager":Lcom/winlator/cmod/core/GPUPerformanceManager;
    .end local v1    # "status":Lcom/winlator/cmod/core/GPUPerformanceManager$GPUStatus;
    .end local v2    # "gpuRenderer":Ljava/lang/String;
    .end local v3    # "info":Ljava/lang/String;
    goto :goto_1

    .line 1167
    :catch_0
    move-exception v0

    .line 1168
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GPU: \u0420\u0098\u0420\u0405\u0421\u201e\u0420\u0455\u0421\u0402\u0420\u0458\u0420\u00b0\u0421\u2020\u0420\u0451\u0421\u040f \u0420\u0405\u0420\u00b5\u0420\u0491\u0420\u0455\u0421\u0403\u0421\u201a\u0421\u0453\u0420\u0457\u0420\u0405\u0420\u00b0"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1170
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private updateTheme(Z)V
    .locals 2
    .param p1, "isDarkMode"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isDarkMode"
        }
    .end annotation

    .line 606
    if-eqz p1, :cond_0

    .line 607
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f13000c

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTheme(I)V

    goto :goto_0

    .line 609
    :cond_0
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f13000b

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTheme(I)V

    .line 613
    :goto_0
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->recreate()V

    .line 614
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 1034
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1036
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    .line 1037
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1039
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 1040
    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_4

    .line 1052
    :sswitch_0
    iget-object v1, p0, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1053
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "frontend_export_uri"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1054
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1059
    :try_start_0
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1065
    goto :goto_0

    .line 1063
    :catch_0
    move-exception v2

    .line 1064
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to take persistable permissions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 1068
    .end local v2    # "e":Ljava/lang/SecurityException;
    :goto_0
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/winlator/cmod/core/FileUtils;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1071
    .local v2, "fullPath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0901d0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1072
    .local v3, "tvFrontendExportPath":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    move-object v4, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1073
    goto :goto_4

    .line 1077
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "fullPath":Ljava/lang/String;
    .end local v3    # "tvFrontendExportPath":Landroid/widget/TextView;
    :sswitch_1
    iget-object v1, p0, Lcom/winlator/cmod/SettingsFragment;->installSoundFontCallback:Lcom/winlator/cmod/core/Callback;

    if-eqz v1, :cond_1

    .line 1079
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v1, v0}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1083
    nop

    :goto_2
    iput-object v2, p0, Lcom/winlator/cmod/SettingsFragment;->installSoundFontCallback:Lcom/winlator/cmod/core/Callback;

    .line 1084
    goto :goto_4

    .line 1083
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 1080
    :catch_1
    move-exception v1

    .line 1081
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1204e7

    invoke-static {v3, v4}, Lcom/winlator/cmod/core/AppUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1083
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_2

    :goto_3
    iput-object v2, p0, Lcom/winlator/cmod/SettingsFragment;->installSoundFontCallback:Lcom/winlator/cmod/core/Callback;

    .line 1084
    throw v1

    .line 1043
    :sswitch_2
    iget-boolean v1, p0, Lcom/winlator/cmod/SettingsFragment;->isRestoreAction:Z

    if-eqz v1, :cond_1

    .line 1044
    invoke-direct {p0, v0}, Lcom/winlator/cmod/SettingsFragment;->restoreAppData(Landroid/net/Uri;)V

    .line 1045
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/winlator/cmod/SettingsFragment;->isRestoreAction:Z

    .line 1094
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 121
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/winlator/cmod/SettingsFragment;->setHasOptionsMenu(Z)V

    .line 123
    new-instance v0, Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/winlator/cmod/core/PreloaderDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/winlator/cmod/SettingsFragment;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    .line 124
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 67
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    .line 215
    move-object/from16 v15, p0

    const v0, 0x7f0c00d3

    const/4 v1, 0x0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    invoke-virtual {v14, v0, v13, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 216
    .local v8, "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 217
    .local v7, "context":Landroid/content/Context;
    invoke-static {v7}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    .line 220
    const-string v2, "dark_mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v15, Lcom/winlator/cmod/SettingsFragment;->isDarkMode:Z

    .line 222
    invoke-direct {v15, v8, v0}, Lcom/winlator/cmod/SettingsFragment;->applyDynamicStyles(Landroid/view/View;Z)V

    .line 225
    const v0, 0x7f09007e

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->cbDarkMode:Landroid/widget/CheckBox;

    .line 226
    iget-object v3, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 228
    iget-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->cbDarkMode:Landroid/widget/CheckBox;

    new-instance v2, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda16;

    invoke-direct {v2, v15}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda16;-><init>(Lcom/winlator/cmod/SettingsFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 239
    const v0, 0x7f09017a

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Spinner;

    .line 240
    .local v6, "spAppLanguage":Landroid/widget/Spinner;
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f030001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 241
    .local v5, "languageValues":[Ljava/lang/String;
    iget-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "app_language"

    const-string v3, "system"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 243
    .local v4, "savedLanguage":Ljava/lang/String;
    const/4 v0, 0x0

    .line 244
    .local v0, "languageIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v5

    if-ge v2, v3, :cond_1

    .line 245
    aget-object v3, v5, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    move v0, v2

    .line 247
    move v3, v0

    goto :goto_1

    .line 244
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v3, v0

    .line 250
    .end local v0    # "languageIndex":I
    .end local v2    # "i":I
    .local v3, "languageIndex":I
    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 252
    new-instance v0, Lcom/winlator/cmod/SettingsFragment$1;

    invoke-direct {v0, v15, v5}, Lcom/winlator/cmod/SettingsFragment$1;-><init>(Lcom/winlator/cmod/SettingsFragment;[Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 268
    const v0, 0x7f09017b

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/Spinner;

    .line 269
    .local v2, "spTransitionAnimation":Landroid/widget/Spinner;
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x7f030039

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "animationValues":[Ljava/lang/String;
    iget-object v9, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v10, "transition_animation"

    const-string v11, "slide_vertical"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 272
    .local v12, "savedAnimation":Ljava/lang/String;
    const/4 v9, 0x0

    .line 273
    .local v9, "animationIndex":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    array-length v11, v0

    if-ge v10, v11, :cond_3

    .line 274
    aget-object v11, v0, v10

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 275
    move v9, v10

    .line 276
    move v11, v9

    goto :goto_3

    .line 273
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    move v11, v9

    .line 279
    .end local v9    # "animationIndex":I
    .end local v10    # "i":I
    .local v11, "animationIndex":I
    :goto_3
    invoke-virtual {v2, v11}, Landroid/widget/Spinner;->setSelection(I)V

    .line 281
    new-instance v9, Lcom/winlator/cmod/SettingsFragment$2;

    invoke-direct {v9, v15, v0}, Lcom/winlator/cmod/SettingsFragment$2;-><init>(Lcom/winlator/cmod/SettingsFragment;[Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 296
    const v9, 0x7f0900a4

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Landroid/widget/CheckBox;

    .line 297
    .local v10, "cbReceiveBetaUpdates":Landroid/widget/CheckBox;
    iget-object v9, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    .end local v0    # "animationValues":[Ljava/lang/String;
    .local v16, "animationValues":[Ljava/lang/String;
    const-string v0, "receive_beta_updates"

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v10, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 299
    new-instance v0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda24;

    invoke-direct {v0, v15}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda24;-><init>(Lcom/winlator/cmod/SettingsFragment;)V

    invoke-virtual {v10, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 305
    const v0, 0x7f090013

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 306
    .local v0, "btCheckForUpdates":Landroid/widget/Button;
    new-instance v9, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda25;

    invoke-direct {v9, v15}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda25;-><init>(Lcom/winlator/cmod/SettingsFragment;)V

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    const v9, 0x7f090080

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, v15, Lcom/winlator/cmod/SettingsFragment;->cbEnableBigPictureMode:Landroid/widget/CheckBox;

    .line 310
    move-object/from16 v17, v0

    .end local v0    # "btCheckForUpdates":Landroid/widget/Button;
    .local v17, "btCheckForUpdates":Landroid/widget/Button;
    iget-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v18, v2

    .end local v2    # "spTransitionAnimation":Landroid/widget/Spinner;
    .local v18, "spTransitionAnimation":Landroid/widget/Spinner;
    const-string v2, "enable_big_picture_mode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v9, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 312
    invoke-direct {v15, v8}, Lcom/winlator/cmod/SettingsFragment;->initCustomApiKeySettings(Landroid/view/View;)V

    .line 315
    const v0, 0x7f09007d

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->cbCursorLock:Landroid/widget/CheckBox;

    .line 316
    iget-object v2, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v9, "cursor_lock"

    const/4 v1, 0x1

    invoke-interface {v2, v9, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 319
    const v0, 0x7f0900af

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->cbXinputToggle:Landroid/widget/CheckBox;

    .line 320
    iget-object v2, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v9, "xinput_toggle"

    const/4 v1, 0x0

    invoke-interface {v2, v9, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 323
    const v0, 0x7f0900a2

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/CheckBox;

    .line 324
    .local v2, "cbLegacyInputMode":Landroid/widget/CheckBox;
    iget-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v9, "legacy_mode_enabled"

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v15, Lcom/winlator/cmod/SettingsFragment;->enableLegacyInputMode:Z

    .line 325
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 328
    new-instance v0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda26;

    invoke-direct {v0, v15}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda26;-><init>(Lcom/winlator/cmod/SettingsFragment;)V

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 335
    const v0, 0x7f090099

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->cbGyroEnabled:Landroid/widget/CheckBox;

    .line 336
    iget-object v1, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v9, "gyro_enabled"

    move-object/from16 v21, v2

    const/4 v2, 0x0

    .end local v2    # "cbLegacyInputMode":Landroid/widget/CheckBox;
    .local v21, "cbLegacyInputMode":Landroid/widget/CheckBox;
    invoke-interface {v1, v9, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 341
    const v0, 0x7f090133

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/Spinner;

    .line 342
    .local v2, "sbGyroTriggerButton":Landroid/widget/Spinner;
    const v0, 0x7f090126

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/RadioGroup;

    .line 345
    .local v1, "rgGyroMode":Landroid/widget/RadioGroup;
    iget-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v9, "gyro_mode"

    move/from16 v22, v3

    const/4 v3, 0x0

    .end local v3    # "languageIndex":I
    .local v22, "languageIndex":I
    invoke-interface {v0, v9, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v23

    .line 347
    .local v23, "selectedMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f03000c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 348
    .local v3, "keycodeArray":Landroid/content/res/TypedArray;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [I

    .line 351
    .local v0, "keycodes":[I
    const-string v9, "Populating keycodes array:"

    move-object/from16 v24, v4

    .end local v4    # "savedLanguage":Ljava/lang/String;
    .local v24, "savedLanguage":Ljava/lang/String;
    const-string v4, "SettingsFragment"

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    move-object/from16 v25, v5

    .end local v5    # "languageValues":[Ljava/lang/String;
    .local v25, "languageValues":[Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    move-object/from16 v26, v6

    .end local v6    # "spAppLanguage":Landroid/widget/Spinner;
    .local v26, "spAppLanguage":Landroid/widget/Spinner;
    const/4 v6, -0x1

    if-ge v9, v5, :cond_5

    .line 354
    invoke-virtual {v3, v9, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    aput v5, v0, v9

    .line 355
    aget v5, v0, v9

    if-eq v5, v6, :cond_4

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    aget v6, v0, v9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    aput v5, v0, v9

    .line 357
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Keycode["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 359
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid keycode resource at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :goto_5
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, v25

    move-object/from16 v6, v26

    goto :goto_4

    .line 362
    .end local v9    # "i":I
    :cond_5
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 365
    iget-object v5, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v9, "gyro_trigger_button"

    const/16 v6, 0x66

    invoke-interface {v5, v9, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 366
    .local v6, "selectedButton":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Selected button keycode: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v5, -0x1

    .line 370
    .local v5, "selectedIndex":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_6
    move-object/from16 v28, v3

    .end local v3    # "keycodeArray":Landroid/content/res/TypedArray;
    .local v28, "keycodeArray":Landroid/content/res/TypedArray;
    array-length v3, v0

    if-ge v9, v3, :cond_7

    .line 371
    aget v3, v0, v9

    if-ne v3, v6, :cond_6

    .line 372
    move v5, v9

    .line 373
    goto :goto_7

    .line 370
    :cond_6
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v28

    goto :goto_6

    .line 378
    .end local v9    # "i":I
    :cond_7
    :goto_7
    const/4 v3, -0x1

    if-eq v5, v3, :cond_8

    .line 379
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Selected button found at index: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_8

    .line 382
    :cond_8
    const-string v3, "Selected button not found in keycodes array!"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :goto_8
    if-nez v23, :cond_9

    const v3, 0x7f09011d

    goto :goto_9

    :cond_9
    const v3, 0x7f09011f

    :goto_9
    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 390
    const v3, 0x7f090016

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/widget/Button;

    .line 391
    .local v4, "btConfigureAnalogSticks":Landroid/widget/Button;
    new-instance v3, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda27;

    invoke-direct {v3, v15}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda27;-><init>(Lcom/winlator/cmod/SettingsFragment;)V

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    const v3, 0x7f090014

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 396
    .local v3, "btnChooseFrontendExportPath":Landroid/widget/Button;
    const v9, 0x7f0901d0

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 399
    .local v9, "tvFrontendExportPath":Landroid/widget/TextView;
    move-object/from16 v27, v0

    .end local v0    # "keycodes":[I
    .local v27, "keycodes":[I
    iget-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v29, v1

    .end local v1    # "rgGyroMode":Landroid/widget/RadioGroup;
    .local v29, "rgGyroMode":Landroid/widget/RadioGroup;
    const-string v1, "frontend_export_uri"

    move-object/from16 v30, v2

    .end local v2    # "sbGyroTriggerButton":Landroid/widget/Spinner;
    .local v30, "sbGyroTriggerButton":Landroid/widget/Spinner;
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 400
    .local v31, "savedUriString":Ljava/lang/String;
    if-nez v31, :cond_a

    .line 402
    sget-object v0, Lcom/winlator/cmod/SettingsFragment;->DEFAULT_EXPORT_PATH:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 405
    :cond_a
    invoke-static/range {v31 .. v31}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 406
    .local v0, "savedUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/winlator/cmod/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/winlator/cmod/core/FileUtils;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "displayPath":Ljava/lang/String;
    if-eqz v1, :cond_b

    move-object v2, v1

    goto :goto_a

    :cond_b
    move-object/from16 v2, v31

    :goto_a
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    .end local v0    # "savedUri":Landroid/net/Uri;
    .end local v1    # "displayPath":Ljava/lang/String;
    :goto_b
    new-instance v0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda28;

    invoke-direct {v0, v15}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda28;-><init>(Lcom/winlator/cmod/SettingsFragment;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    const v0, 0x7f090172

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/Spinner;

    .line 418
    .local v2, "sMIDISoundFont":Landroid/widget/Spinner;
    iget-boolean v0, v15, Lcom/winlator/cmod/SettingsFragment;->isDarkMode:Z

    if-eqz v0, :cond_c

    const v0, 0x7f0800a5

    goto :goto_c

    :cond_c
    const v0, 0x7f0800a4

    :goto_c
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 420
    const v0, 0x7f090059

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 421
    .local v1, "btInstallSF":Landroid/view/View;
    const v0, 0x7f09006b

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 423
    .local v0, "btRemoveSF":Landroid/view/View;
    invoke-static {v2}, Lcom/winlator/cmod/midi/MidiManager;->loadSFSpinnerWithoutDisabled(Landroid/widget/Spinner;)V

    .line 424
    move-object/from16 v32, v3

    .end local v3    # "btnChooseFrontendExportPath":Landroid/widget/Button;
    .local v32, "btnChooseFrontendExportPath":Landroid/widget/Button;
    new-instance v3, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda29;

    invoke-direct {v3, v15, v7, v2}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda29;-><init>(Lcom/winlator/cmod/SettingsFragment;Landroid/content/Context;Landroid/widget/Spinner;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    new-instance v3, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda30;

    invoke-direct {v3, v2, v7}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda30;-><init>(Landroid/widget/Spinner;Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    const v3, 0x7f0900ab

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 469
    .local v3, "cbUseDRI3":Landroid/widget/CheckBox;
    move-object/from16 v33, v0

    .end local v0    # "btRemoveSF":Landroid/view/View;
    .local v33, "btRemoveSF":Landroid/view/View;
    iget-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v34, v1

    .end local v1    # "btInstallSF":Landroid/view/View;
    .local v34, "btInstallSF":Landroid/view/View;
    const-string v1, "use_dri3"

    move-object/from16 v35, v2

    const/4 v2, 0x1

    .end local v2    # "sMIDISoundFont":Landroid/widget/Spinner;
    .local v35, "sMIDISoundFont":Landroid/widget/Spinner;
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 471
    const v0, 0x7f0900ad

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/CheckBox;

    .line 472
    .local v1, "cbUseXR":Landroid/widget/CheckBox;
    iget-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v36, v4

    .end local v4    # "btConfigureAnalogSticks":Landroid/widget/Button;
    .local v36, "btConfigureAnalogSticks":Landroid/widget/Button;
    const-string v4, "use_xr"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 473
    invoke-static {}, Lcom/winlator/cmod/XrActivity;->isSupported()Z

    move-result v0

    if-nez v0, :cond_d

    .line 474
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 477
    :cond_d
    const v0, 0x7f090095

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/CheckBox;

    .line 478
    .local v4, "cbEnableWineDebug":Landroid/widget/CheckBox;
    iget-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "enable_wine_debug"

    move-object/from16 v37, v1

    const/4 v1, 0x0

    .end local v1    # "cbUseXR":Landroid/widget/CheckBox;
    .local v37, "cbUseXR":Landroid/widget/CheckBox;
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 480
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "wine_debug_channels"

    move-object/from16 v38, v4

    .end local v4    # "cbEnableWineDebug":Landroid/widget/CheckBox;
    .local v38, "cbEnableWineDebug":Landroid/widget/CheckBox;
    const-string v4, "warn,err,fixme"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v4, v0

    .line 481
    .local v4, "wineDebugChannels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v15, v8, v4}, Lcom/winlator/cmod/SettingsFragment;->loadWineDebugChannels(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 483
    const v0, 0x7f090083

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/CheckBox;

    .line 484
    .local v2, "cbEnableBox86_64Logs":Landroid/widget/CheckBox;
    iget-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "enable_box86_64_logs"

    move-object/from16 v39, v4

    const/4 v4, 0x0

    .end local v4    # "wineDebugChannels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v39, "wineDebugChannels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 486
    const v0, 0x7f0901b7

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    .line 487
    .local v4, "tvCursorSpeed":Landroid/widget/TextView;
    const v0, 0x7f09012e

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/SeekBar;

    .line 488
    .local v1, "sbCursorSpeed":Landroid/widget/SeekBar;
    new-instance v0, Lcom/winlator/cmod/SettingsFragment$4;

    invoke-direct {v0, v15, v4}, Lcom/winlator/cmod/SettingsFragment$4;-><init>(Lcom/winlator/cmod/SettingsFragment;Landroid/widget/TextView;)V

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 500
    iget-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v40, v2

    .end local v2    # "cbEnableBox86_64Logs":Landroid/widget/CheckBox;
    .local v40, "cbEnableBox86_64Logs":Landroid/widget/CheckBox;
    const-string v2, "cursor_speed"

    move-object/from16 v41, v4

    .end local v4    # "tvCursorSpeed":Landroid/widget/TextView;
    .local v41, "tvCursorSpeed":Landroid/widget/TextView;
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 502
    const v0, 0x7f090125

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/RadioGroup;

    .line 503
    .local v4, "rgTriggerType":Landroid/widget/RadioGroup;
    const v0, 0x7f09004e

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 504
    .local v2, "btHelpTriggerMode":Landroid/view/View;
    const v0, 0x7f090121

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v42, 0x7f090120

    move-object/from16 v43, v1

    .end local v1    # "sbCursorSpeed":Landroid/widget/SeekBar;
    .local v43, "sbCursorSpeed":Landroid/widget/SeekBar;
    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v42, 0x7f090122

    move/from16 v44, v6

    .end local v6    # "selectedButton":I
    .local v44, "selectedButton":I
    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 505
    .local v6, "triggerRbIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "trigger_type"

    move-object/from16 v42, v9

    const/4 v9, 0x1

    .end local v9    # "tvFrontendExportPath":Landroid/widget/TextView;
    .local v42, "tvFrontendExportPath":Landroid/widget/TextView;
    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 507
    .local v1, "triggerType":I
    if-ltz v1, :cond_e

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_e

    .line 508
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 510
    :cond_e
    new-instance v0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda31;

    invoke-direct {v0, v7}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda31;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    const v0, 0x7f090088

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .local v0, "cbEnableFileProvider":Landroid/widget/CheckBox;
    move-object v9, v0

    .line 513
    move/from16 v45, v1

    .end local v1    # "triggerType":I
    .local v45, "triggerType":I
    const v1, 0x7f09003f

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 515
    .local v1, "btHelpFileProvider":Landroid/view/View;
    move-object/from16 v46, v2

    .end local v2    # "btHelpTriggerMode":Landroid/view/View;
    .local v46, "btHelpTriggerMode":Landroid/view/View;
    iget-object v2, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v47, v4

    .end local v4    # "rgTriggerType":Landroid/widget/RadioGroup;
    .local v47, "rgTriggerType":Landroid/widget/RadioGroup;
    const-string v4, "enable_file_provider"

    move-object/from16 v48, v6

    const/4 v6, 0x1

    .end local v6    # "triggerRbIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v48, "triggerRbIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 516
    new-instance v2, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda17;

    invoke-direct {v2, v7}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda17;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    new-instance v2, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda18;

    invoke-direct {v2, v7}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda18;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    const v2, 0x7f0900a3

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/CheckBox;

    move-object/from16 v20, v10

    .end local v10    # "cbReceiveBetaUpdates":Landroid/widget/CheckBox;
    .local v6, "cbOpenInBrowser":Landroid/widget/CheckBox;
    .local v20, "cbReceiveBetaUpdates":Landroid/widget/CheckBox;
    move-object v10, v6

    .line 520
    iget-object v2, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v4, "open_with_android_browser"

    move-object/from16 v49, v0

    const/4 v0, 0x0

    .end local v0    # "cbEnableFileProvider":Landroid/widget/CheckBox;
    .local v49, "cbEnableFileProvider":Landroid/widget/CheckBox;
    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v6, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 522
    const v2, 0x7f0900a7

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/widget/CheckBox;

    move/from16 v19, v11

    .end local v11    # "animationIndex":I
    .local v4, "cbShareClipboard":Landroid/widget/CheckBox;
    .local v19, "animationIndex":I
    move-object v11, v4

    .line 523
    iget-object v2, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    move-object/from16 v50, v1

    .end local v1    # "btHelpFileProvider":Landroid/view/View;
    .local v50, "btHelpFileProvider":Landroid/view/View;
    const-string v1, "share_android_clipboard"

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 525
    const v0, 0x7f0900b9

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v51, v12

    .end local v12    # "savedAnimation":Ljava/lang/String;
    .local v2, "etDownloadableContentsURL":Landroid/widget/EditText;
    .local v51, "savedAnimation":Ljava/lang/String;
    move-object v12, v2

    .line 526
    iget-object v0, v15, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "downloadable_contents_url"

    move-object/from16 v52, v4

    .end local v4    # "cbShareClipboard":Landroid/widget/CheckBox;
    .local v52, "cbShareClipboard":Landroid/widget/CheckBox;
    const-string v4, "https://github.com/The412Banner/REF4IK-Banner/raw/main/contents.json"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 528
    const v0, 0x7f090063

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda19;

    invoke-direct {v1, v15, v7}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda19;-><init>(Lcom/winlator/cmod/SettingsFragment;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    const v0, 0x7f090010

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/Button;

    .line 534
    .local v4, "btnBackupData":Landroid/widget/Button;
    new-instance v0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda20;

    invoke-direct {v0, v15}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda20;-><init>(Lcom/winlator/cmod/SettingsFragment;)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    const v0, 0x7f09006f

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/Button;

    .line 540
    .local v1, "btnRestoreData":Landroid/widget/Button;
    new-instance v0, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda22;

    invoke-direct {v0, v15}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda22;-><init>(Lcom/winlator/cmod/SettingsFragment;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    move/from16 v53, v5

    .line 545
    .local v53, "finalSelectedIndex":I
    const v0, 0x7f090018

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v54, v9

    new-instance v9, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda23;

    move-object/from16 v57, v0

    move-object/from16 v55, v33

    move-object/from16 v56, v49

    move-object/from16 v33, v17

    move-object/from16 v49, v27

    move-object/from16 v27, v16

    .end local v16    # "animationValues":[Ljava/lang/String;
    .end local v17    # "btCheckForUpdates":Landroid/widget/Button;
    .local v27, "animationValues":[Ljava/lang/String;
    .local v33, "btCheckForUpdates":Landroid/widget/Button;
    .local v49, "keycodes":[I
    .local v55, "btRemoveSF":Landroid/view/View;
    .local v56, "cbEnableFileProvider":Landroid/widget/CheckBox;
    move-object v0, v9

    move-object/from16 v58, v1

    .end local v1    # "btnRestoreData":Landroid/widget/Button;
    .local v58, "btnRestoreData":Landroid/widget/Button;
    move-object/from16 v1, p0

    move-object/from16 v59, v2

    .end local v2    # "etDownloadableContentsURL":Landroid/widget/EditText;
    .local v59, "etDownloadableContentsURL":Landroid/widget/EditText;
    move-object v2, v3

    move-object/from16 v60, v3

    .end local v3    # "cbUseDRI3":Landroid/widget/CheckBox;
    .local v60, "cbUseDRI3":Landroid/widget/CheckBox;
    move-object/from16 v3, v37

    move-object/from16 v61, v4

    .end local v4    # "btnBackupData":Landroid/widget/Button;
    .local v61, "btnBackupData":Landroid/widget/Button;
    move-object/from16 v4, v43

    move/from16 v62, v5

    .end local v5    # "selectedIndex":I
    .local v62, "selectedIndex":I
    move-object/from16 v5, v38

    move-object/from16 v63, v6

    .end local v6    # "cbOpenInBrowser":Landroid/widget/CheckBox;
    .local v63, "cbOpenInBrowser":Landroid/widget/CheckBox;
    move-object/from16 v6, v40

    move-object/from16 v64, v7

    .end local v7    # "context":Landroid/content/Context;
    .local v64, "context":Landroid/content/Context;
    move-object/from16 v7, v48

    move-object/from16 v65, v8

    .end local v8    # "view":Landroid/view/View;
    .local v65, "view":Landroid/view/View;
    move-object/from16 v8, v47

    move-object/from16 v13, v49

    move-object/from16 v14, v30

    move-object/from16 v15, v29

    move-object/from16 v16, v39

    move-object/from16 v17, v65

    move-object/from16 v66, v9

    move-object/from16 v9, v54

    invoke-direct/range {v0 .. v17}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda23;-><init>(Lcom/winlator/cmod/SettingsFragment;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/SeekBar;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Ljava/util/List;Landroid/widget/RadioGroup;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/EditText;[ILandroid/widget/Spinner;Landroid/widget/RadioGroup;Ljava/util/ArrayList;Landroid/view/View;)V

    move-object/from16 v0, v57

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    return-object v65
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "savedInstanceState"
        }
    .end annotation

    .line 128
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 131
    invoke-direct {p0, p1}, Lcom/winlator/cmod/SettingsFragment;->applyDynamicStylesRecursively(Landroid/view/View;)V

    .line 133
    const v0, 0x7f090017

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 134
    .local v0, "btnConfigureGyro":Landroid/widget/Button;
    new-instance v1, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda7;-><init>(Lcom/winlator/cmod/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v1, 0x7f090035

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 138
    .local v1, "btnGPUPerformance":Landroid/widget/Button;
    const v2, 0x7f0901d3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 140
    .local v2, "tvGPUInfoDisplay":Landroid/widget/TextView;
    new-instance v3, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda8;-><init>(Lcom/winlator/cmod/SettingsFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    const v3, 0x7f09007b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 147
    .local v3, "cbAdrenoTurboMode":Landroid/widget/CheckBox;
    invoke-static {}, Lcom/winlator/cmod/core/GPUInformation;->isAdrenoGPU()Z

    move-result v4

    .line 149
    .local v4, "isAdrenoGPU":Z
    if-eqz v4, :cond_1

    .line 150
    iget-object v5, p0, Lcom/winlator/cmod/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v6, "adreno_turbo_mode"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 151
    .local v5, "turboEnabled":Z
    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 154
    if-eqz v5, :cond_0

    .line 155
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/winlator/cmod/core/GPUInformation;->setTurboMode(Z)Z

    .line 158
    :cond_0
    new-instance v6, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda9;

    invoke-direct {v6, p0, v3}, Lcom/winlator/cmod/SettingsFragment$$ExternalSyntheticLambda9;-><init>(Lcom/winlator/cmod/SettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 199
    .end local v5    # "turboEnabled":Z
    goto :goto_0

    .line 201
    :cond_1
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 205
    :goto_0
    invoke-direct {p0, v2}, Lcom/winlator/cmod/SettingsFragment;->updateGPUInfoDisplay(Landroid/widget/TextView;)V

    .line 207
    invoke-virtual {p0}, Lcom/winlator/cmod/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v5}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v5

    const v6, 0x7f1203e1

    invoke-virtual {v5, v6}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 208
    return-void
.end method
