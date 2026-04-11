.class public Lcom/winlator/cmod/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;


# static fields
.field public static final CONTAINER_PATTERN_COMPRESSION_LEVEL:B = 0x9t

.field public static final EDIT_INPUT_CONTROLS_REQUEST_CODE:B = 0x3t

.field public static final OPEN_DIRECTORY_REQUEST_CODE:B = 0x4t

.field public static final OPEN_FILE_REQUEST_CODE:B = 0x2t

.field public static PACKAGE_NAME:Ljava/lang/String; = null

.field public static final PERMISSION_WRITE_EXTERNAL_STORAGE_REQUEST_CODE:B = 0x1t


# instance fields
.field private containerManager:Lcom/winlator/cmod/container/ContainerManager;

.field private currentSaveEditDialog:Lcom/winlator/cmod/contentdialog/SaveEditDialog;

.field private drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field private editInputControls:Z

.field private isDarkMode:Z

.field private openFileCallback:Lcom/winlator/cmod/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/winlator/cmod/core/Callback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public final preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

.field private saveEditDialog:Lcom/winlator/cmod/contentdialog/SaveEditDialog;

.field private saveManager:Lcom/winlator/cmod/saves/SaveManager;

.field private saveSettingsDialog:Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;

.field private selectedProfileId:I

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public static synthetic $r8$lambda$yQWu6j-K9-g0CbPQhwQTQ5xaI6s(Lcom/winlator/cmod/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/winlator/cmod/MainActivity;->lambda$showAllFilesAccessDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 60
    new-instance v0, Lcom/winlator/cmod/core/PreloaderDialog;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/core/PreloaderDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/winlator/cmod/MainActivity;->preloaderDialog:Lcom/winlator/cmod/core/PreloaderDialog;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/winlator/cmod/MainActivity;->editInputControls:Z

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

    .line 587
    const-string v0, "system"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    invoke-static {}, Landroidx/core/os/LocaleListCompat;->getEmptyLocaleList()Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setApplicationLocales(Landroidx/core/os/LocaleListCompat;)V

    goto :goto_1

    .line 590
    :cond_0
    const-string v0, "en"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 592
    invoke-static {v0}, Landroidx/core/os/LocaleListCompat;->forLanguageTags(Ljava/lang/String;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    .line 593
    .local v0, "localeList":Landroidx/core/os/LocaleListCompat;
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setApplicationLocales(Landroidx/core/os/LocaleListCompat;)V

    .end local v0    # "localeList":Landroidx/core/os/LocaleListCompat;
    goto :goto_0

    .line 594
    :cond_1
    const-string v0, "ru"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 596
    invoke-static {v0}, Landroidx/core/os/LocaleListCompat;->forLanguageTags(Ljava/lang/String;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    .line 597
    .restart local v0    # "localeList":Landroidx/core/os/LocaleListCompat;
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setApplicationLocales(Landroidx/core/os/LocaleListCompat;)V

    goto :goto_1

    .line 594
    .end local v0    # "localeList":Landroidx/core/os/LocaleListCompat;
    :cond_2
    :goto_0
    nop

    .line 599
    :goto_1
    return-void
.end method

.method private checkForUpdatesOnStartup()V
    .locals 3

    .line 602
    iget-object v0, p0, Lcom/winlator/cmod/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "receive_beta_updates"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    const-string v0, "MainActivity"

    const-string v1, "Startup update check skipped because update notifications are disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    return-void

    .line 607
    :cond_0
    new-instance v0, Lcom/winlator/cmod/update/UpdateManager;

    invoke-direct {v0, p0}, Lcom/winlator/cmod/update/UpdateManager;-><init>(Landroid/content/Context;)V

    .line 609
    .local v0, "updateManager":Lcom/winlator/cmod/update/UpdateManager;
    new-instance v1, Lcom/winlator/cmod/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/MainActivity$1;-><init>(Lcom/winlator/cmod/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/winlator/cmod/update/UpdateManager;->checkForUpdates(Lcom/winlator/cmod/update/UpdateManager$UpdateCheckCallback;)V

    .line 629
    return-void
.end method

.method private synthetic lambda$showAllFilesAccessDialog$0(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 211
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/winlator/cmod/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0, v0}, Lcom/winlator/cmod/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 214
    return-void
.end method

.method private requestAppPermissions()Z
    .locals 8

    .line 314
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 315
    .local v1, "hasWritePermission":Z
    :goto_0
    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v2

    .line 316
    .local v5, "hasReadPermission":Z
    :goto_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1e

    if-lt v6, v7, :cond_3

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    move v6, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v6, v3

    .line 318
    .local v6, "hasManageStoragePermission":Z
    :goto_3
    if-eqz v1, :cond_4

    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    .line 319
    return v2

    .line 322
    :cond_4
    if-eqz v1, :cond_5

    if-nez v5, :cond_6

    .line 323
    :cond_5
    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "permissions":[Ljava/lang/String;
    invoke-static {p0, v0, v3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 327
    .end local v0    # "permissions":[Ljava/lang/String;
    :cond_6
    return v3
.end method

.method private setMenuItemTextColor(Landroid/view/MenuItem;I)V
    .locals 4
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .param p2, "color"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "menuItem",
            "color"
        }
    .end annotation

    .line 581
    new-instance v0, Landroid/text/SpannableString;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 582
    .local v0, "spanString":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 583
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 584
    return-void
.end method

.method private setNavigationViewItemTextColor(Lcom/google/android/material/navigation/NavigationView;I)V
    .locals 4
    .param p1, "navigationView"    # Lcom/google/android/material/navigation/NavigationView;
    .param p2, "color"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "navigationView",
            "color"
        }
    .end annotation

    .line 566
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 567
    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 568
    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-direct {p0, v1, p2}, Lcom/winlator/cmod/MainActivity;->setMenuItemTextColor(Landroid/view/MenuItem;I)V

    .line 571
    invoke-interface {v1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 572
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SubMenu;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 573
    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 574
    .local v3, "subMenuItem":Landroid/view/MenuItem;
    invoke-direct {p0, v3, p2}, Lcom/winlator/cmod/MainActivity;->setMenuItemTextColor(Landroid/view/MenuItem;I)V

    .line 572
    .end local v3    # "subMenuItem":Landroid/view/MenuItem;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 566
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 578
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private show(Landroidx/fragment/app/Fragment;Z)V
    .locals 6
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "reverse"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fragment",
            "reverse"
        }
    .end annotation

    .line 441
    invoke-virtual {p0}, Lcom/winlator/cmod/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 444
    .local v0, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    iget-object v1, p0, Lcom/winlator/cmod/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "transition_animation"

    const-string v3, "slide_vertical"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, "animationType":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_1
    const-string v2, "zoom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_2
    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_3
    const-string v2, "fade"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_4
    const-string v2, "slide_horizontal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 472
    if-eqz p2, :cond_2

    .line 473
    const v2, 0x7f010036

    .line 474
    .local v2, "enterAnim":I
    const v3, 0x7f01003f

    .local v3, "exitAnim":I
    goto :goto_2

    .line 467
    .end local v2    # "enterAnim":I
    .end local v3    # "exitAnim":I
    :pswitch_0
    const/4 v2, 0x0

    .line 468
    .restart local v2    # "enterAnim":I
    const/4 v3, 0x0

    .line 469
    .restart local v3    # "exitAnim":I
    goto :goto_2

    .line 463
    .end local v2    # "enterAnim":I
    .end local v3    # "exitAnim":I
    :pswitch_1
    const v2, 0x7f010040

    .line 464
    .restart local v2    # "enterAnim":I
    const v3, 0x7f010041

    .line 465
    .restart local v3    # "exitAnim":I
    goto :goto_2

    .line 459
    .end local v2    # "enterAnim":I
    .end local v3    # "exitAnim":I
    :pswitch_2
    const v2, 0x7f01001c

    .line 460
    .restart local v2    # "enterAnim":I
    const v3, 0x7f01001d

    .line 461
    .restart local v3    # "exitAnim":I
    goto :goto_2

    .line 450
    .end local v2    # "enterAnim":I
    .end local v3    # "exitAnim":I
    :pswitch_3
    if-eqz p2, :cond_1

    .line 451
    const v2, 0x7f010037

    .line 452
    .restart local v2    # "enterAnim":I
    const v3, 0x7f01003e

    .restart local v3    # "exitAnim":I
    goto :goto_2

    .line 454
    .end local v2    # "enterAnim":I
    .end local v3    # "exitAnim":I
    :cond_1
    const v2, 0x7f010038

    .line 455
    .restart local v2    # "enterAnim":I
    const v3, 0x7f01003c

    .line 457
    .restart local v3    # "exitAnim":I
    goto :goto_2

    .line 476
    .end local v2    # "enterAnim":I
    .end local v3    # "exitAnim":I
    :cond_2
    const v2, 0x7f01003a

    .line 477
    .restart local v2    # "enterAnim":I
    const v3, 0x7f01003b

    .line 482
    .restart local v3    # "exitAnim":I
    :goto_2
    const v4, 0x7f0900cb

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 483
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v5

    .line 484
    invoke-virtual {v5, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v5

    .line 485
    invoke-virtual {v5, v4, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    .line 486
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_3

    .line 488
    :cond_3
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v5

    .line 489
    invoke-virtual {v5, v4, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v4

    .line 490
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 493
    :goto_3
    iget-object v4, p0, Lcom/winlator/cmod/MainActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v5, 0x800003

    invoke-virtual {v4, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    .line 494
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5718248e -> :sswitch_4
        0x2fd67c -> :sswitch_3
        0x33af38 -> :sswitch_2
        0x3923d3 -> :sswitch_1
        0x57363244 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showAboutDialog()V
    .locals 11

    .line 497
    const-string v0, "<br />"

    const-string v1, "---"

    new-instance v2, Lcom/winlator/cmod/contentdialog/ContentDialog;

    const v3, 0x7f0c001c

    invoke-direct {v2, p0, v3}, Lcom/winlator/cmod/contentdialog/ContentDialog;-><init>(Landroid/content/Context;I)V

    .line 498
    .local v2, "dialog":Lcom/winlator/cmod/contentdialog/ContentDialog;
    const v3, 0x7f0900dc

    invoke-virtual {v2, v3}, Lcom/winlator/cmod/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 500
    iget-boolean v3, p0, Lcom/winlator/cmod/MainActivity;->isDarkMode:Z

    if-eqz v3, :cond_0

    .line 501
    invoke-virtual {v2}, Lcom/winlator/cmod/contentdialog/ContentDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v5, 0x7f0800a5

    invoke-virtual {v3, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0

    .line 503
    :cond_0
    invoke-virtual {v2}, Lcom/winlator/cmod/contentdialog/ContentDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v5, 0x7f0800a4

    invoke-virtual {v3, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 507
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/winlator/cmod/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/winlator/cmod/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 509
    .local v3, "pInfo":Landroid/content/pm/PackageInfo;
    const v5, 0x7f09021f

    invoke-virtual {v2, v5}, Lcom/winlator/cmod/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 510
    .local v5, "tvWebpage":Landroid/widget/TextView;
    const-string v7, "<a href=\"https://www.winlator.org\">winlator.org</a>"

    invoke-static {v7, v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 513
    const v7, 0x7f0901a1

    invoke-virtual {v2, v7}, Lcom/winlator/cmod/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f120502

    invoke-virtual {p0, v9}, Lcom/winlator/cmod/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    const/16 v7, 0x1f

    new-array v7, v7, [Ljava/lang/CharSequence;

    const-string v8, "<b>Winlator Bionic REF4IK MOD by ref4ik</b>"

    aput-object v8, v7, v6

    const-string v8, "Telegram: <a href=\"https://t.me/winlatorruu\">t.me/winlatorruu</a>"

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-string v8, "GitHub: <a href=\"https://github.com/REF4IK/winlator-ref4ik-\">github.com/REF4IK/winlator-ref4ik-</a>"

    const/4 v10, 0x2

    aput-object v8, v7, v10

    const/4 v8, 0x3

    aput-object v1, v7, v8

    const-string v8, "BrunoSX Creator Winlator(<a href=\"https://github.com/brunodev85\">github.com/brunodev85</a>)"

    const/4 v10, 0x4

    aput-object v8, v7, v10

    const/4 v8, 0x5

    aput-object v1, v7, v8

    const-string v8, "Coffincolors  Winlator cmod (<a href=\"https://github.com/coffincolors/winlator\">Fork</a>)"

    const/4 v10, 0x6

    aput-object v8, v7, v10

    const-string v8, "Pipetto-crypto WInlator bionic(<a href=\"https://github.com/Pipetto-crypto/winlator/tree/winlator_bionic\">winlator_bionic</a>)"

    const/4 v10, 0x7

    aput-object v8, v7, v10

    aput-object v1, v7, v4

    const-string v4, "Big Picture Mode Music by"

    const/16 v8, 0x9

    aput-object v4, v7, v8

    const-string v4, "Dale Melvin Blevens III (Fumer)"

    const/16 v8, 0xa

    aput-object v4, v7, v8

    const/16 v4, 0xb

    aput-object v1, v7, v4

    const-string v4, "Components:"

    const/16 v8, 0xc

    aput-object v4, v7, v8

    const-string v4, "Ubuntu RootFs (<a href=\"https://releases.ubuntu.com/focal\">Focal Fossa</a>)"

    const/16 v8, 0xd

    aput-object v4, v7, v8

    const-string v4, "Wine (<a href=\"https://www.winehq.org\">winehq.org</a>)"

    const/16 v8, 0xe

    aput-object v4, v7, v8

    const-string v4, "Box86/Box64 by <a href=\"https://github.com/ptitSeb\">ptitseb</a>"

    const/16 v8, 0xf

    aput-object v4, v7, v8

    const-string v4, "FEX-Emu (<a href=\"https://github.com/FEX-Emu/FEX\">github.com/FEX-Emu/FEX</a>)"

    const/16 v8, 0x10

    aput-object v4, v7, v8

    const-string v4, "PRoot (<a href=\"https://proot-me.github.io\">proot-me.github.io</a>)"

    const/16 v8, 0x11

    aput-object v4, v7, v8

    const-string v4, "Mesa (Turnip/Zink/VirGL) (<a href=\"https://www.mesa3d.org\">mesa3d.org</a>)"

    const/16 v8, 0x12

    aput-object v4, v7, v8

    const-string v4, "DXVK (<a href=\"https://github.com/doitsujin/dxvk\">github.com/doitsujin/dxvk</a>)"

    const/16 v8, 0x13

    aput-object v4, v7, v8

    const-string v4, "VKD3D (<a href=\"https://gitlab.winehq.org/wine/vkd3d\">gitlab.winehq.org/wine/vkd3d</a>)"

    const/16 v8, 0x14

    aput-object v4, v7, v8

    const-string v4, "D8VK (<a href=\"https://github.com/AlpyneDreams/d8vk\">github.com/AlpyneDreams/d8vk</a>)"

    const/16 v8, 0x15

    aput-object v4, v7, v8

    const-string v4, "linux-fg (<a href=\"https://github.com/xXJSONDeruloXx/linux-fg\">github.com/xXJSONDeruloXx/linux-fg</a>)"

    const/16 v8, 0x16

    aput-object v4, v7, v8

    const-string v4, "CNC DDraw (<a href=\"https://github.com/FunkyFr3sh/cnc-ddraw\">github.com/FunkyFr3sh/cnc-ddraw</a>)"

    const/16 v8, 0x17

    aput-object v4, v7, v8

    const-string v4, "WinlatorWCPHub by Arihany (<a href=\"https://github.com/Arihany/WinlatorWCPHub\">github.com/Arihany/WinlatorWCPHub</a>)"

    const/16 v8, 0x18

    aput-object v4, v7, v8

    const/16 v4, 0x19

    aput-object v1, v7, v4

    const-string v1, "GPU Drivers:"

    const/16 v4, 0x1a

    aput-object v1, v7, v4

    const-string v1, "K11MCH1 AdrenoTools Drivers (<a href=\"https://github.com/K11MCH1/AdrenoToolsDrivers\">github.com/K11MCH1/AdrenoToolsDrivers</a>)"

    const/16 v4, 0x1b

    aput-object v1, v7, v4

    const-string v1, "MrPurple666 Purple Turnip (<a href=\"https://github.com/MrPurple666/purple-turnip\">github.com/MrPurple666/purple-turnip</a>)"

    const/16 v4, 0x1c

    aput-object v1, v7, v4

    const-string v1, "Weab-chan Freedreno Turnip CI (<a href=\"https://github.com/Weab-chan/freedreno_turnip-CI\">github.com/Weab-chan/freedreno_turnip-CI</a>)"

    const/16 v4, 0x1d

    aput-object v1, v7, v4

    const-string v1, "crueter GameHub 8Elite Drivers (<a href=\"https://github.com/crueter/GameHub-8Elite-Drivers\">github.com/crueter/GameHub-8Elite-Drivers</a>)"

    const/16 v4, 0x1e

    aput-object v1, v7, v4

    invoke-static {v0, v7}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 549
    .local v1, "creditsAndThirdPartyAppsHTML":Ljava/lang/String;
    const v4, 0x7f0901b4

    invoke-virtual {v2, v4}, Lcom/winlator/cmod/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 550
    .local v4, "tvCreditsAndThirdPartyApps":Landroid/widget/TextView;
    invoke-static {v1, v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 553
    new-array v7, v9, [Ljava/lang/CharSequence;

    const-string v8, "longjunyu2\'s <a href=\"https://github.com/longjunyu2/winlator/tree/use-glibc-instead-of-proot\">(Fork)</a>"

    aput-object v8, v7, v6

    invoke-static {v0, v7}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, "glibcExpVersionForkHTML":Ljava/lang/String;
    const v7, 0x7f0901dc

    invoke-virtual {v2, v7}, Lcom/winlator/cmod/contentdialog/ContentDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 556
    .local v7, "tvGlibcExpVersionFork":Landroid/widget/TextView;
    invoke-static {v0, v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    .end local v0    # "glibcExpVersionForkHTML":Ljava/lang/String;
    .end local v1    # "creditsAndThirdPartyAppsHTML":Ljava/lang/String;
    .end local v3    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "tvCreditsAndThirdPartyApps":Landroid/widget/TextView;
    .end local v5    # "tvWebpage":Landroid/widget/TextView;
    .end local v7    # "tvGlibcExpVersionFork":Landroid/widget/TextView;
    goto :goto_1

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 562
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    invoke-virtual {v2}, Lcom/winlator/cmod/contentdialog/ContentDialog;->show()V

    .line 563
    return-void
.end method

.method private showAllFilesAccessDialog()V
    .locals 3

    .line 207
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 208
    const v1, 0x7f12003b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 209
    const v1, 0x7f12003a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/winlator/cmod/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/winlator/cmod/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/winlator/cmod/MainActivity;)V

    .line 210
    const v2, 0x7f120333

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 215
    const v1, 0x7f120095

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 217
    return-void
.end method

.method private showSavesFragment()V
    .locals 3

    .line 268
    new-instance v0, Lcom/winlator/cmod/SavesFragment;

    invoke-direct {v0}, Lcom/winlator/cmod/SavesFragment;-><init>()V

    .line 269
    .local v0, "fragment":Lcom/winlator/cmod/SavesFragment;
    invoke-virtual {p0}, Lcom/winlator/cmod/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 270
    const v2, 0x7f0900cb

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 271
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 272
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
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

    .line 232
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult called with requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WinActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/winlator/cmod/MainActivity;->saveSettingsDialog:Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    const-string v0, "Forwarding result to SaveSettingsDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/winlator/cmod/MainActivity;->saveSettingsDialog:Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;

    invoke-virtual {v0, p1, p2, p3}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/MainActivity;->saveEditDialog:Lcom/winlator/cmod/contentdialog/SaveEditDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    const-string v0, "Forwarding result to SaveEditDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/winlator/cmod/MainActivity;->saveEditDialog:Lcom/winlator/cmod/contentdialog/SaveEditDialog;

    invoke-virtual {v0, p1, p2, p3}, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 243
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No dialog found for request code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :goto_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v0, :cond_2

    if-ne p2, v2, :cond_2

    if-eqz p3, :cond_2

    .line 248
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 249
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/winlator/cmod/MainActivity;->openFileCallback:Lcom/winlator/cmod/core/Callback;

    if-eqz v3, :cond_2

    .line 250
    invoke-interface {v3, v0}, Lcom/winlator/cmod/core/Callback;->call(Ljava/lang/Object;)V

    .line 251
    iput-object v1, p0, Lcom/winlator/cmod/MainActivity;->openFileCallback:Lcom/winlator/cmod/core/Callback;

    .line 255
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_2
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_3

    if-ne p2, v2, :cond_3

    if-eqz p3, :cond_3

    .line 256
    const-string v0, "selectedFilePath"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "filePath":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 258
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 259
    const-string v3, "\u0412\u044b\u0431\u0440\u0430\u043d \u0444\u0430\u0439\u043b"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 260
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 261
    const-string v3, "OK"

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 262
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 265
    .end local v0    # "filePath":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .line 297
    invoke-virtual {p0}, Lcom/winlator/cmod/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 298
    .local v0, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    .line 299
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroidx/fragment/app/Fragment;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 300
    .local v3, "fragment":Landroidx/fragment/app/Fragment;
    instance-of v4, v3, Lcom/winlator/cmod/ContainersFragment;

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/winlator/cmod/MainActivity;->finish()V

    .line 302
    return-void

    .line 304
    .end local v3    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_0
    goto :goto_0

    .line 306
    :cond_1
    new-instance v2, Lcom/winlator/cmod/ContainersFragment;

    invoke-direct {v2}, Lcom/winlator/cmod/ContainersFragment;-><init>()V

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/winlator/cmod/MainActivity;->show(Landroidx/fragment/app/Fragment;Z)V

    .line 307
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 120
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    sget-object v0, Lcom/winlator/cmod/MainActivity;->PACKAGE_NAME:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/winlator/cmod/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/winlator/cmod/MainActivity;->PACKAGE_NAME:Ljava/lang/String;

    .line 130
    :cond_0
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/winlator/cmod/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 133
    const-string v1, "enable_big_picture_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 135
    .local v0, "isBigPictureModeEnabled":Z
    if-eqz v0, :cond_1

    .line 137
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/winlator/cmod/BigPictureActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/winlator/cmod/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 142
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/winlator/cmod/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "dark_mode"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/winlator/cmod/MainActivity;->isDarkMode:Z

    .line 145
    if-eqz v1, :cond_2

    .line 146
    const v1, 0x7f13000c

    invoke-virtual {p0, v1}, Lcom/winlator/cmod/MainActivity;->setTheme(I)V

    goto :goto_0

    .line 148
    :cond_2
    const v1, 0x7f13000b

    invoke-virtual {p0, v1}, Lcom/winlator/cmod/MainActivity;->setTheme(I)V

    .line 152
    :goto_0
    iget-object v1, p0, Lcom/winlator/cmod/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "app_language"

    const-string v4, "system"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "savedLanguage":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/winlator/cmod/MainActivity;->applyLanguage(Ljava/lang/String;)V

    .line 156
    const v3, 0x7f0c0081

    invoke-virtual {p0, v3}, Lcom/winlator/cmod/MainActivity;->setContentView(I)V

    .line 158
    const v3, 0x7f0900b6

    invoke-virtual {p0, v3}, Lcom/winlator/cmod/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object v3, p0, Lcom/winlator/cmod/MainActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 159
    const v3, 0x7f090115

    invoke-virtual {p0, v3}, Lcom/winlator/cmod/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/navigation/NavigationView;

    .line 160
    .local v3, "navigationView":Lcom/google/android/material/navigation/NavigationView;
    invoke-virtual {v3, p0}, Lcom/google/android/material/navigation/NavigationView;->setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;)V

    .line 162
    const v4, 0x7f090227

    invoke-virtual {p0, v4}, Lcom/winlator/cmod/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v4}, Lcom/winlator/cmod/MainActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 163
    invoke-virtual {p0}, Lcom/winlator/cmod/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v4

    .line 164
    .local v4, "actionBar":Landroidx/appcompat/app/ActionBar;
    const v5, 0x7f080101

    if-eqz v4, :cond_3

    .line 165
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 166
    invoke-virtual {v4, v5}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 170
    :cond_3
    iget-boolean v6, p0, Lcom/winlator/cmod/MainActivity;->isDarkMode:Z

    if-eqz v6, :cond_4

    const/4 v6, -0x1

    goto :goto_1

    :cond_4
    const/high16 v6, -0x1000000

    .line 171
    .local v6, "textColor":I
    :goto_1
    invoke-direct {p0, v3, v6}, Lcom/winlator/cmod/MainActivity;->setNavigationViewItemTextColor(Lcom/google/android/material/navigation/NavigationView;I)V

    .line 175
    new-instance v7, Lcom/winlator/cmod/saves/SaveManager;

    invoke-direct {v7, p0}, Lcom/winlator/cmod/saves/SaveManager;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/winlator/cmod/MainActivity;->saveManager:Lcom/winlator/cmod/saves/SaveManager;

    .line 176
    new-instance v7, Lcom/winlator/cmod/container/ContainerManager;

    invoke-direct {v7, p0}, Lcom/winlator/cmod/container/ContainerManager;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/winlator/cmod/MainActivity;->containerManager:Lcom/winlator/cmod/container/ContainerManager;

    .line 178
    invoke-virtual {p0}, Lcom/winlator/cmod/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 179
    .local v7, "intent":Landroid/content/Intent;
    const-string v8, "edit_input_controls"

    invoke-virtual {v7, v8, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/winlator/cmod/MainActivity;->editInputControls:Z

    .line 180
    if-eqz v8, :cond_5

    .line 181
    const-string v5, "selected_profile_id"

    invoke-virtual {v7, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/winlator/cmod/MainActivity;->selectedProfileId:I

    .line 182
    const v2, 0x7f0800ff

    invoke-virtual {v4, v2}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 183
    invoke-virtual {v3}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v5, 0x7f0903b1

    invoke-interface {v2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/winlator/cmod/MainActivity;->onNavigationItemSelected(Landroid/view/MenuItem;)Z

    .line 184
    invoke-virtual {v3, v5}, Lcom/google/android/material/navigation/NavigationView;->setCheckedItem(I)V

    goto :goto_3

    .line 186
    :cond_5
    const-string v8, "selected_menu_item_id"

    invoke-virtual {v7, v8, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 187
    .local v2, "selectedMenuItemId":I
    if-lez v2, :cond_6

    move v8, v2

    goto :goto_2

    :cond_6
    const v8, 0x7f0903ab

    .line 189
    .local v8, "menuItemId":I
    :goto_2
    invoke-virtual {v4, v5}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 190
    invoke-virtual {v3}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/winlator/cmod/MainActivity;->onNavigationItemSelected(Landroid/view/MenuItem;)Z

    .line 191
    invoke-virtual {v3, v8}, Lcom/google/android/material/navigation/NavigationView;->setCheckedItem(I)V

    .line 193
    invoke-direct {p0}, Lcom/winlator/cmod/MainActivity;->requestAppPermissions()Z

    move-result v5

    if-nez v5, :cond_7

    .line 194
    invoke-static {p0}, Lcom/winlator/cmod/xenvironment/ImageFsInstaller;->installIfNeeded(Lcom/winlator/cmod/MainActivity;)V

    .line 197
    :cond_7
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1e

    if-lt v5, v9, :cond_8

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v5

    if-nez v5, :cond_8

    .line 198
    invoke-direct {p0}, Lcom/winlator/cmod/MainActivity;->showAllFilesAccessDialog()V

    .line 202
    :cond_8
    invoke-direct {p0}, Lcom/winlator/cmod/MainActivity;->checkForUpdatesOnStartup()V

    .line 204
    .end local v2    # "selectedMenuItemId":I
    .end local v8    # "menuItemId":I
    :goto_3
    return-void
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 381
    invoke-virtual {p0}, Lcom/winlator/cmod/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 382
    .local v0, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    .line 383
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 386
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    # REF4IK-Banner: store menu items (IDs outside packed-switch range)
    const v2, 0x7f09054e
    if-eq v1, v2, :store_gog

    const v2, 0x7f09054f
    if-eq v1, v2, :store_epic

    const v2, 0x7f090550
    if-eq v1, v2, :store_amazon

    :pswitch_0
    goto/16 :goto_0

    :store_gog
    iget-object v1, p0, Lcom/winlator/cmod/MainActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/winlator/cmod/store/GogMainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/winlator/cmod/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :store_epic
    iget-object v1, p0, Lcom/winlator/cmod/MainActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/winlator/cmod/store/EpicMainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/winlator/cmod/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :store_amazon
    iget-object v1, p0, Lcom/winlator/cmod/MainActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/winlator/cmod/store/AmazonMainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/winlator/cmod/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 403
    :pswitch_1
    iget-object v1, p0, Lcom/winlator/cmod/MainActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v3, 0x800003

    invoke-virtual {v1, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    .line 404
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/winlator/cmod/steam/SteamLibraryActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/winlator/cmod/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 405
    goto :goto_0

    .line 388
    :pswitch_2
    new-instance v1, Lcom/winlator/cmod/ShortcutsFragment;

    invoke-direct {v1}, Lcom/winlator/cmod/ShortcutsFragment;-><init>()V

    invoke-direct {p0, v1, v3}, Lcom/winlator/cmod/MainActivity;->show(Landroidx/fragment/app/Fragment;Z)V

    .line 389
    goto :goto_0

    .line 417
    :pswitch_3
    new-instance v1, Lcom/winlator/cmod/SettingsFragment;

    invoke-direct {v1}, Lcom/winlator/cmod/SettingsFragment;-><init>()V

    invoke-direct {p0, v1, v3}, Lcom/winlator/cmod/MainActivity;->show(Landroidx/fragment/app/Fragment;Z)V

    .line 418
    goto :goto_0

    .line 410
    :pswitch_4
    new-instance v1, Lcom/winlator/cmod/SavesFragment;

    invoke-direct {v1}, Lcom/winlator/cmod/SavesFragment;-><init>()V

    invoke-direct {p0, v1, v3}, Lcom/winlator/cmod/MainActivity;->show(Landroidx/fragment/app/Fragment;Z)V

    .line 411
    goto :goto_0

    .line 394
    :pswitch_5
    new-instance v1, Lcom/winlator/cmod/InputControlsFragment;

    iget v4, p0, Lcom/winlator/cmod/MainActivity;->selectedProfileId:I

    invoke-direct {v1, v4}, Lcom/winlator/cmod/InputControlsFragment;-><init>(I)V

    invoke-direct {p0, v1, v3}, Lcom/winlator/cmod/MainActivity;->show(Landroidx/fragment/app/Fragment;Z)V

    .line 395
    goto :goto_0

    .line 413
    :pswitch_6
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/winlator/cmod/GamePadTestActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 414
    .local v1, "gamepadIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/winlator/cmod/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 415
    goto :goto_0

    .line 423
    .end local v1    # "gamepadIntent":Landroid/content/Intent;
    :pswitch_7
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/winlator/cmod/FileManagerActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 424
    .local v1, "fmIntent":Landroid/content/Intent;
    const/16 v3, 0x3e9

    invoke-virtual {p0, v1, v3}, Lcom/winlator/cmod/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 400
    .end local v1    # "fmIntent":Landroid/content/Intent;
    :pswitch_8
    new-instance v1, Lcom/winlator/cmod/ContentsFragment;

    invoke-direct {v1}, Lcom/winlator/cmod/ContentsFragment;-><init>()V

    invoke-direct {p0, v1, v3}, Lcom/winlator/cmod/MainActivity;->show(Landroidx/fragment/app/Fragment;Z)V

    .line 401
    goto :goto_0

    .line 391
    :pswitch_9
    new-instance v1, Lcom/winlator/cmod/ContainersFragment;

    invoke-direct {v1}, Lcom/winlator/cmod/ContainersFragment;-><init>()V

    invoke-direct {p0, v1, v3}, Lcom/winlator/cmod/MainActivity;->show(Landroidx/fragment/app/Fragment;Z)V

    .line 392
    goto :goto_0

    .line 397
    :pswitch_a
    new-instance v1, Lcom/winlator/cmod/Box86_64RCFragment;

    invoke-direct {v1}, Lcom/winlator/cmod/Box86_64RCFragment;-><init>()V

    invoke-direct {p0, v1, v3}, Lcom/winlator/cmod/MainActivity;->show(Landroidx/fragment/app/Fragment;Z)V

    .line 398
    goto :goto_0

    .line 407
    :pswitch_b
    new-instance v1, Lcom/winlator/cmod/AdrenotoolsFragment;

    invoke-direct {v1}, Lcom/winlator/cmod/AdrenotoolsFragment;-><init>()V

    invoke-direct {p0, v1, v3}, Lcom/winlator/cmod/MainActivity;->show(Landroidx/fragment/app/Fragment;Z)V

    .line 408
    goto :goto_0

    .line 420
    :pswitch_c
    invoke-direct {p0}, Lcom/winlator/cmod/MainActivity;->showAboutDialog()V

    .line 421
    nop

    .line 427
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x7f0903a7
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menuItem"
        }
    .end annotation

    .line 332
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 334
    iget-object v0, p0, Lcom/winlator/cmod/MainActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/winlator/cmod/MainActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/MainActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    .line 339
    :goto_0
    return v2

    .line 340
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090479

    if-ne v0, v1, :cond_6

    .line 342
    invoke-virtual {p0}, Lcom/winlator/cmod/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 343
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "edit_save_id"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 344
    .local v1, "editSaveId":I
    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/winlator/cmod/MainActivity;->saveManager:Lcom/winlator/cmod/saves/SaveManager;

    invoke-virtual {v3, v1}, Lcom/winlator/cmod/saves/SaveManager;->getSaveById(I)Lcom/winlator/cmod/saves/Save;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 347
    .local v3, "saveToEdit":Lcom/winlator/cmod/saves/Save;
    :goto_1
    if-eqz v3, :cond_4

    .line 349
    iget-object v4, p0, Lcom/winlator/cmod/MainActivity;->saveEditDialog:Lcom/winlator/cmod/contentdialog/SaveEditDialog;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 350
    iget-object v4, p0, Lcom/winlator/cmod/MainActivity;->saveEditDialog:Lcom/winlator/cmod/contentdialog/SaveEditDialog;

    invoke-virtual {v4}, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->dismiss()V

    .line 352
    :cond_3
    invoke-virtual {p0, v3}, Lcom/winlator/cmod/MainActivity;->showSaveEditDialog(Lcom/winlator/cmod/saves/Save;)V

    goto :goto_3

    .line 354
    :cond_4
    new-instance v4, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;

    iget-object v5, p0, Lcom/winlator/cmod/MainActivity;->saveManager:Lcom/winlator/cmod/saves/SaveManager;

    iget-object v6, p0, Lcom/winlator/cmod/MainActivity;->containerManager:Lcom/winlator/cmod/container/ContainerManager;

    invoke-direct {v4, p0, v5, v6}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;-><init>(Landroid/app/Activity;Lcom/winlator/cmod/saves/SaveManager;Lcom/winlator/cmod/container/ContainerManager;)V

    iput-object v4, p0, Lcom/winlator/cmod/MainActivity;->saveSettingsDialog:Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;

    .line 357
    iget-boolean v5, p0, Lcom/winlator/cmod/MainActivity;->isDarkMode:Z

    if-eqz v5, :cond_5

    .line 358
    invoke-virtual {v4}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f0800a5

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_2

    .line 360
    :cond_5
    invoke-virtual {v4}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f0800a4

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 363
    :goto_2
    iget-object v4, p0, Lcom/winlator/cmod/MainActivity;->saveSettingsDialog:Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;

    invoke-virtual {v4}, Lcom/winlator/cmod/contentdialog/SaveSettingsDialog;->show()V

    .line 365
    :goto_3
    return v2

    .line 367
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "editSaveId":I
    .end local v3    # "saveToEdit":Lcom/winlator/cmod/saves/Save;
    :cond_6
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 221
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 222
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 223
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 224
    invoke-static {p0}, Lcom/winlator/cmod/xenvironment/ImageFsInstaller;->installIfNeeded(Lcom/winlator/cmod/MainActivity;)V

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/winlator/cmod/MainActivity;->finish()V

    .line 228
    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveAdded()V
    .locals 2

    .line 289
    invoke-virtual {p0}, Lcom/winlator/cmod/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0900cb

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 290
    .local v0, "currentFragment":Landroidx/fragment/app/Fragment;
    instance-of v1, v0, Lcom/winlator/cmod/SavesFragment;

    if-eqz v1, :cond_0

    .line 291
    move-object v1, v0

    check-cast v1, Lcom/winlator/cmod/SavesFragment;

    invoke-virtual {v1}, Lcom/winlator/cmod/SavesFragment;->refreshSavesList()V

    .line 293
    :cond_0
    return-void
.end method

.method public setOpenFileCallback(Lcom/winlator/cmod/core/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "openFileCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/winlator/cmod/core/Callback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 310
    .local p1, "openFileCallback":Lcom/winlator/cmod/core/Callback;, "Lcom/winlator/cmod/core/Callback<Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/winlator/cmod/MainActivity;->openFileCallback:Lcom/winlator/cmod/core/Callback;

    .line 311
    return-void
.end method

.method public showSaveEditDialog(Lcom/winlator/cmod/saves/Save;)V
    .locals 3
    .param p1, "saveToEdit"    # Lcom/winlator/cmod/saves/Save;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "saveToEdit"
        }
    .end annotation

    .line 276
    new-instance v0, Lcom/winlator/cmod/contentdialog/SaveEditDialog;

    iget-object v1, p0, Lcom/winlator/cmod/MainActivity;->saveManager:Lcom/winlator/cmod/saves/SaveManager;

    iget-object v2, p0, Lcom/winlator/cmod/MainActivity;->containerManager:Lcom/winlator/cmod/container/ContainerManager;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/winlator/cmod/contentdialog/SaveEditDialog;-><init>(Landroid/app/Activity;Lcom/winlator/cmod/saves/SaveManager;Lcom/winlator/cmod/container/ContainerManager;Lcom/winlator/cmod/saves/Save;)V

    iput-object v0, p0, Lcom/winlator/cmod/MainActivity;->saveEditDialog:Lcom/winlator/cmod/contentdialog/SaveEditDialog;

    .line 279
    iget-boolean v1, p0, Lcom/winlator/cmod/MainActivity;->isDarkMode:Z

    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {v0}, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0800a5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {v0}, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0800a4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 285
    :goto_0
    iget-object v0, p0, Lcom/winlator/cmod/MainActivity;->saveEditDialog:Lcom/winlator/cmod/contentdialog/SaveEditDialog;

    invoke-virtual {v0}, Lcom/winlator/cmod/contentdialog/SaveEditDialog;->show()V

    .line 286
    return-void
.end method

.method public toggleDrawer()V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/winlator/cmod/MainActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/winlator/cmod/MainActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_0

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/winlator/cmod/MainActivity;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    .line 377
    :goto_0
    return-void
.end method
