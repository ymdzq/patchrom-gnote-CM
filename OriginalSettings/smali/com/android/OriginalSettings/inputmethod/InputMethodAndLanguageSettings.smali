.class public Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/OriginalSettings/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final sHardKeyboardKeys:[Ljava/lang/String;

.field private static final sSystemSettingNames:[Ljava/lang/String;


# instance fields
.field private mDefaultInputMethodSelectorVisibility:I

.field private mGameControllerCategory:Landroid/preference/PreferenceCategory;

.field private mHandler:Landroid/os/Handler;

.field private mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

.field private final mHardKeyboardPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mIm:Landroid/hardware/input/InputManager;

.field private mImis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInputMethodPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentWaitingForResult:Landroid/content/Intent;

.field private mIsOnlyImeSettings:Z

.field private mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

.field private mLanguagePref:Landroid/preference/Preference;

.field private mSettingsObserver:Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

.field private mStatusBarImeSwitcher:Landroid/preference/CheckBoxPreference;

.field private mStylusGestures:Landroid/preference/PreferenceScreen;

.field private mStylusIconEnabled:Landroid/preference/CheckBoxPreference;

.field private mVolumeKeyCursorControl:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "auto_replace"

    aput-object v1, v0, v2

    const-string v1, "auto_caps"

    aput-object v1, v0, v3

    const-string v1, "auto_punctuate"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->sSystemSettingNames:[Ljava/lang/String;

    .line 76
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "auto_replace"

    aput-object v1, v0, v2

    const-string v1, "auto_caps"

    aput-object v1, v0, v3

    const-string v1, "auto_punctuate"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    .line 611
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V

    return-void
.end method

.method private getInputMethodPreference(Landroid/view/inputmethod/InputMethodInfo;I)Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;
    .locals 9
    .parameter "imi"
    .parameter "imiSize"

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 479
    .local v7, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p1, v7}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 482
    .local v6, label:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v8

    .line 483
    .local v8, settingsActivity:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 484
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 485
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    :goto_0
    new-instance v0, Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;

    iget-object v3, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;-><init>(Lcom/android/OriginalSettings/SettingsPreferenceFragment;Landroid/content/Intent;Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodInfo;I)V

    .line 492
    .local v0, pref:Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;->setKey(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v0, v6}, Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 494
    return-object v0

    .line 487
    .end local v0           #pref:Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_0
.end method

.method private hasOnlyOneLanguageInstance(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9
    .parameter "languageCode"
    .parameter "locales"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 403
    const/4 v1, 0x0

    .line 404
    .local v1, count:I
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 405
    .local v4, localeCode:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_0

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 407
    add-int/lit8 v1, v1, 0x1

    .line 408
    if-le v1, v5, :cond_0

    .line 413
    .end local v4           #localeCode:Ljava/lang/String;
    :goto_1
    return v6

    .line 404
    .restart local v4       #localeCode:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 413
    .end local v4           #localeCode:Ljava/lang/String;
    :cond_1
    if-ne v1, v5, :cond_2

    :goto_2
    move v6, v5

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_2
.end method

.method private haveInputDeviceWithVibrator()Z
    .locals 4

    .prologue
    .line 601
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v1

    .line 602
    .local v1, devices:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 603
    aget v3, v1, v2

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 604
    .local v0, device:Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 605
    const/4 v3, 0x1

    .line 608
    .end local v0           #device:Landroid/view/InputDevice;
    :goto_1
    return v3

    .line 602
    .restart local v0       #device:Landroid/view/InputDevice;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 608
    .end local v0           #device:Landroid/view/InputDevice;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private showKeyboardLayoutDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "inputDeviceDescriptor"

    .prologue
    .line 559
    new-instance v0, Lcom/android/OriginalSettings/inputmethod/KeyboardLayoutDialogFragment;

    invoke-direct {v0, p1}, Lcom/android/OriginalSettings/inputmethod/KeyboardLayoutDialogFragment;-><init>(Ljava/lang/String;)V

    .line 561
    .local v0, fragment:Lcom/android/OriginalSettings/inputmethod/KeyboardLayoutDialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/OriginalSettings/inputmethod/KeyboardLayoutDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 562
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "keyboardLayout"

    invoke-virtual {v0, v1, v2}, Lcom/android/OriginalSettings/inputmethod/KeyboardLayoutDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 563
    return-void
.end method

.method private updateActiveInputMethodsSummary()V
    .locals 3

    .prologue
    .line 454
    iget-object v2, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;

    .line 455
    .local v1, pref:Landroid/preference/Preference;
    instance-of v2, v1, Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;

    if-eqz v2, :cond_0

    .line 456
    check-cast v1, Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;

    .end local v1           #pref:Landroid/preference/Preference;
    invoke-virtual {v1}, Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;->updateSummary()V

    goto :goto_0

    .line 459
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V

    .line 460
    return-void
.end method

.method private updateCurrentImeName()V
    .locals 7

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 464
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v3, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "current_input_method"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 466
    .local v2, curPref:Landroid/preference/Preference;
    if-eqz v2, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->getCurrentInputMethodName(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/view/inputmethod/InputMethodManager;Ljava/util/List;Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 469
    .local v1, curIme:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 470
    monitor-enter p0

    .line 471
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 472
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private updateGameControllers()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 588
    invoke-direct {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->haveInputDeviceWithVibrator()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 589
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 591
    iget-object v2, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    const-string v3, "vibrate_input_devices"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 593
    .local v0, chkPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_input_devices"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 598
    .end local v0           #chkPref:Landroid/preference/CheckBoxPreference;
    :goto_1
    return-void

    .line 593
    .restart local v0       #chkPref:Landroid/preference/CheckBoxPreference;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 596
    .end local v0           #chkPref:Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private updateHardKeyboards()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 503
    iget-object v10, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 504
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->keyboard:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 505
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    .line 506
    .local v2, devices:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v10, v2

    if-ge v3, v10, :cond_3

    .line 507
    aget v10, v2, v3

    invoke-static {v10}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 508
    .local v1, device:Landroid/view/InputDevice;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v1}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 511
    invoke-virtual {v1}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    .line 512
    .local v5, inputDeviceDescriptor:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v10, v5}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 514
    .local v7, keyboardLayoutDescriptor:Ljava/lang/String;
    if-eqz v7, :cond_1

    iget-object v10, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v10, v7}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v6

    .line 517
    .local v6, keyboardLayout:Landroid/hardware/input/KeyboardLayout;
    :goto_1
    new-instance v8, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v8, v10, v9}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 518
    .local v8, pref:Landroid/preference/PreferenceScreen;
    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 519
    if-eqz v6, :cond_2

    .line 520
    invoke-virtual {v6}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 524
    :goto_2
    new-instance v10, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings$1;

    invoke-direct {v10, p0, v5}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings$1;-><init>(Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 531
    iget-object v10, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    .end local v5           #inputDeviceDescriptor:Ljava/lang/String;
    .end local v6           #keyboardLayout:Landroid/hardware/input/KeyboardLayout;
    .end local v7           #keyboardLayoutDescriptor:Ljava/lang/String;
    .end local v8           #pref:Landroid/preference/PreferenceScreen;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .restart local v5       #inputDeviceDescriptor:Ljava/lang/String;
    .restart local v7       #keyboardLayoutDescriptor:Ljava/lang/String;
    :cond_1
    move-object v6, v9

    .line 514
    goto :goto_1

    .line 522
    .restart local v6       #keyboardLayout:Landroid/hardware/input/KeyboardLayout;
    .restart local v8       #pref:Landroid/preference/PreferenceScreen;
    :cond_2
    const v10, 0x7f08079c

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_2

    .line 536
    .end local v1           #device:Landroid/view/InputDevice;
    .end local v2           #devices:[I
    .end local v3           #i:I
    .end local v5           #inputDeviceDescriptor:Ljava/lang/String;
    .end local v6           #keyboardLayout:Landroid/hardware/input/KeyboardLayout;
    .end local v7           #keyboardLayoutDescriptor:Ljava/lang/String;
    .end local v8           #pref:Landroid/preference/PreferenceScreen;
    :cond_3
    iget-object v9, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    .line 537
    iget-object v9, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    .restart local v3       #i:I
    move v4, v3

    .end local v3           #i:I
    .local v4, i:I
    :goto_3
    add-int/lit8 v3, v4, -0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    if-lez v4, :cond_5

    .line 538
    iget-object v9, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    .line 539
    .local v8, pref:Landroid/preference/Preference;
    invoke-virtual {v8}, Landroid/preference/Preference;->getOrder()I

    move-result v9

    const/16 v10, 0x3e8

    if-ge v9, v10, :cond_4

    .line 540
    iget-object v9, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    move v4, v3

    .line 542
    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_3

    .line 544
    .end local v4           #i:I
    .end local v8           #pref:Landroid/preference/Preference;
    .restart local v3       #i:I
    :cond_5
    iget-object v9, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 545
    iget-object v9, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 546
    .local v0, count:I
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_6

    .line 547
    iget-object v9, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/preference/Preference;

    .line 548
    .restart local v8       #pref:Landroid/preference/Preference;
    invoke-virtual {v8, v3}, Landroid/preference/Preference;->setOrder(I)V

    .line 549
    iget-object v9, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 546
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 552
    .end local v8           #pref:Landroid/preference/Preference;
    :cond_6
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 556
    .end local v0           #count:I
    .end local v3           #i:I
    :goto_5
    return-void

    .line 554
    :cond_7
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5
.end method

.method private updateInputDevices()V
    .locals 0

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->updateHardKeyboards()V

    .line 499
    invoke-direct {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->updateGameControllers()V

    .line 500
    return-void
.end method

.method private updateUserDictionaryPreference(Landroid/preference/Preference;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 239
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 240
    invoke-static {v0}, Lcom/android/OriginalSettings/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/app/Activity;)Ljava/util/TreeSet;

    move-result-object v0

    .line 241
    if-nez v0, :cond_1

    .line 244
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v1

    if-gt v1, v3, :cond_2

    .line 246
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.USER_DICTIONARY_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    const v2, 0x7f08079f

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 249
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 250
    const-class v1, Lcom/android/OriginalSettings/UserDictionarySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 259
    invoke-virtual {v0}, Ljava/util/TreeSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    .line 260
    invoke-virtual {p1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "locale"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_2
    const v0, 0x7f0807a0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 264
    const-class v0, Lcom/android/OriginalSettings/inputmethod/UserDictionaryList;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 577
    invoke-super {p0, p1, p2, p3}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 579
    iget-object v1, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 580
    iget-object v1, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    const-string v2, "input_device_descriptor"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, inputDeviceDescriptor:Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    .line 583
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Ljava/lang/String;)V

    .line 585
    .end local v0           #inputDeviceDescriptor:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 105
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const v0, 0x7f05001b

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->addPreferencesFromResource(I)V

    .line 110
    const v0, 0x7f080339

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 117
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "phone_language"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 129
    :goto_1
    new-instance v0, Lcom/android/OriginalSettings/VoiceInputOutputSettings;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/VoiceInputOutputSettings;-><init>(Lcom/android/OriginalSettings/SettingsPreferenceFragment;)V

    invoke-virtual {v0}, Lcom/android/OriginalSettings/VoiceInputOutputSettings;->onCreate()V

    .line 132
    const-string v0, "hard_keyboard"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    .line 133
    const-string v0, "keyboard_settings_category"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    .line 135
    const-string v0, "game_controller_settings_category"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    .line 139
    const-string v0, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    .line 141
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    iget-boolean v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 144
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 148
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 152
    :cond_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 153
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    .line 155
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 156
    iget-boolean v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    if-nez v0, :cond_1

    .line 157
    new-instance v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 158
    const-string v1, "current_input_method"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0807c1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v1, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 164
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    if-nez v0, :cond_3

    move v1, v2

    :goto_2
    move v3, v2

    .line 165
    :goto_3
    if-ge v3, v1, :cond_4

    .line 166
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 167
    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getInputMethodPreference(Landroid/view/inputmethod/InputMethodInfo;I)Lcom/android/OriginalSettings/inputmethod/InputMethodPreference;

    move-result-object v0

    .line 168
    iget-object v4, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 119
    :cond_2
    const-string v0, "phone_language"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    goto/16 :goto_1

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_2

    .line 171
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 172
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move v3, v2

    .line 173
    :goto_4
    if-ge v3, v1, :cond_5

    .line 174
    iget-object v4, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 173
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    .line 179
    :cond_5
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    .line 180
    invoke-direct {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 183
    const-string v0, "status_bar_ime_switcher"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_6

    .line 185
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1110056

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 186
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 192
    :cond_6
    :goto_5
    const-string v0, "stylus_gestures"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mStylusGestures:Landroid/preference/PreferenceScreen;

    .line 193
    const-string v0, "stylus_icon_enabled"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mStylusIconEnabled:Landroid/preference/CheckBoxPreference;

    .line 195
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 196
    const-string v0, "pointer_settings_category"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 198
    if-eqz v0, :cond_7

    .line 199
    iget-object v1, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mStylusGestures:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 200
    iget-object v1, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mStylusIconEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 205
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v3, Lcom/android/OriginalSettings/Settings$SpellCheckersSettingsActivity;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 207
    const-string v0, "spellcheckers_settings"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/inputmethod/SpellCheckersPreference;

    .line 209
    if-eqz v0, :cond_8

    .line 210
    invoke-virtual {v0, p0, v1}, Lcom/android/OriginalSettings/inputmethod/SpellCheckersPreference;->setFragmentIntent(Lcom/android/OriginalSettings/SettingsPreferenceFragment;Landroid/content/Intent;)V

    .line 213
    :cond_8
    const-string v0, "volume_key_cursor_control"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    .line 214
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    if-eqz v0, :cond_9

    .line 215
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->hasVolumeRocker(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 216
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 217
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "volume_key_cursor_control"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 225
    :cond_9
    :goto_6
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    .line 226
    new-instance v0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    iget-object v1, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;-><init>(Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    .line 227
    return-void

    .line 188
    :cond_a
    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mStatusBarImeSwitcher:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_5

    .line 221
    :cond_b
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_6

    .line 112
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 349
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 354
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 359
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 334
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 336
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 337
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->pause()V

    .line 342
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v1, v2, v0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/OriginalSettings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 344
    return-void

    .line 342
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 441
    iget-object v3, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    move-object v2, p2

    .line 442
    check-cast v2, Ljava/lang/String;

    .line 443
    .local v2, volumeKeyCursorControl:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 444
    .local v1, val:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "volume_key_cursor_control"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 446
    iget-object v3, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 447
    .local v0, index:I
    iget-object v3, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mVolumeKeyCursorControl:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 448
    const/4 v3, 0x1

    .line 450
    .end local v0           #index:I
    .end local v1           #val:I
    .end local v2           #volumeKeyCursorControl:Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 364
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isMonkeyRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v3

    .line 399
    :goto_0
    return v4

    .line 367
    :cond_0
    iget-object v5, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mStatusBarImeSwitcher:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_2

    .line 368
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "status_bar_ime_switcher"

    iget-object v7, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mStatusBarImeSwitcher:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_1

    move v3, v4

    :cond_1
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 371
    :cond_2
    iget-object v5, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mStylusIconEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_5

    .line 372
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "stylus_icon_enabled"

    iget-object v7, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mStylusIconEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_1
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 399
    :cond_3
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto :goto_0

    :cond_4
    move v4, v3

    .line 372
    goto :goto_1

    .line 374
    :cond_5
    instance-of v5, p2, Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_6

    .line 375
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 377
    const-string v3, "current_input_method"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 378
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 380
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_2

    .line 382
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_6
    instance-of v5, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_3

    move-object v0, p2

    .line 383
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 384
    .local v0, chkPref:Landroid/preference/CheckBoxPreference;
    iget-object v5, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 385
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    sget-object v5, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_9

    .line 386
    iget-object v5, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    sget-object v6, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-ne v0, v5, :cond_8

    .line 387
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->sSystemSettingNames:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_7

    move v3, v4

    :cond_7
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 385
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 393
    .end local v1           #i:I
    :cond_9
    iget-object v5, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    const-string v6, "vibrate_input_devices"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-ne v0, v5, :cond_3

    .line 394
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "vibrate_input_devices"

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_a

    move v3, v4

    :cond_a
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 270
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 272
    iget-object v5, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    invoke-virtual {v5}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->resume()V

    .line 273
    iget-object v5, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v5, p0, v10}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 275
    iget-boolean v5, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    if-nez v5, :cond_1

    .line 276
    iget-object v5, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    if-eqz v5, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 278
    .local v1, conf:Landroid/content/res/Configuration;
    iget-object v5, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 285
    .local v3, language:Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->hasOnlyOneLanguageInstance(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 287
    iget-object v5, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v8, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5, v8}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 291
    .local v4, localeString:Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_0

    .line 292
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 294
    iget-object v5, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 298
    .end local v1           #conf:Landroid/content/res/Configuration;
    .end local v3           #language:Ljava/lang/String;
    .end local v4           #localeString:Ljava/lang/String;
    :cond_0
    const-string v5, "key_user_dictionary_settings"

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->updateUserDictionaryPreference(Landroid/preference/Preference;)V

    .line 304
    :cond_1
    iget-object v5, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mStatusBarImeSwitcher:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_2

    .line 305
    iget-object v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mStatusBarImeSwitcher:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "status_bar_ime_switcher"

    invoke-static {v5, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_5

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 309
    :cond_2
    iget-object v5, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mStylusIconEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_3

    .line 310
    iget-object v8, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mStylusIconEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "stylus_icon_enabled"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_6

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 315
    :cond_3
    iget-object v5, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 316
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    sget-object v5, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_8

    .line 317
    iget-object v5, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    sget-object v8, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 319
    .local v0, chkPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v8, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->sSystemSettingNames:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_7

    move v5, v6

    :goto_4
    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 316
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 289
    .end local v0           #chkPref:Landroid/preference/CheckBoxPreference;
    .end local v2           #i:I
    .restart local v1       #conf:Landroid/content/res/Configuration;
    .restart local v3       #language:Ljava/lang/String;
    :cond_4
    iget-object v5, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v8, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5, v8}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #localeString:Ljava/lang/String;
    goto/16 :goto_0

    .end local v1           #conf:Landroid/content/res/Configuration;
    .end local v3           #language:Ljava/lang/String;
    .end local v4           #localeString:Ljava/lang/String;
    :cond_5
    move v5, v7

    .line 305
    goto :goto_1

    :cond_6
    move v5, v7

    .line 310
    goto :goto_2

    .restart local v0       #chkPref:Landroid/preference/CheckBoxPreference;
    .restart local v2       #i:I
    :cond_7
    move v5, v7

    .line 319
    goto :goto_4

    .line 324
    .end local v0           #chkPref:Landroid/preference/CheckBoxPreference;
    .end local v2           #i:I
    :cond_8
    invoke-direct {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 327
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    invoke-static {p0, v5, v6, v10}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndSubtypeUtil;->loadInputMethodSubtypeList(Lcom/android/OriginalSettings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V

    .line 329
    invoke-direct {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->updateActiveInputMethodsSummary()V

    .line 330
    return-void
.end method

.method public onSetupKeyboardLayouts(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 567
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/OriginalSettings/Settings$KeyboardLayoutPickerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 569
    const-string v1, "input_device_descriptor"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    iput-object v0, p0, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    .line 572
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/inputmethod/InputMethodAndLanguageSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 573
    return-void
.end method
