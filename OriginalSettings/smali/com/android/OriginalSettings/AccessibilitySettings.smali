.class public Lcom/android/OriginalSettings/AccessibilitySettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/OriginalSettings/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/AccessibilitySettings$SettingsContentObserver;,
        Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;,
        Lcom/android/OriginalSettings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment;,
        Lcom/android/OriginalSettings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;,
        Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;,
        Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;,
        Lcom/android/OriginalSettings/AccessibilitySettings$SettingsPackageMonitor;
    }
.end annotation


# static fields
.field private static final sInstalledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

.field private final mHandler:Landroid/os/Handler;

.field private mLongPressTimeoutDefault:I

.field private final mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNoServicesMessagePreference:Landroid/preference/Preference;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

.field private mServicesCategory:Landroid/preference/PreferenceCategory;

.field private final mSettingsContentObserver:Lcom/android/OriginalSettings/AccessibilitySettings$SettingsContentObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSystemsCategory:Landroid/preference/PreferenceCategory;

.field private mToggleHomeButtonAnswersCallPreference:Landroid/preference/CheckBoxPreference;

.field private mToggleLargeTextPreference:Landroid/preference/CheckBoxPreference;

.field private mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

.field private mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

.field private mToggleScriptInjectionPreference:Lcom/android/OriginalSettings/AccessibilityEnableScriptInjectionPreference;

.field private mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 137
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/OriginalSettings/AccessibilitySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 140
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/OriginalSettings/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    .line 145
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 147
    new-instance v0, Lcom/android/OriginalSettings/AccessibilitySettings$SettingsPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings$SettingsPackageMonitor;-><init>(Lcom/android/OriginalSettings/AccessibilitySettings;Lcom/android/OriginalSettings/AccessibilitySettings$1;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 149
    new-instance v0, Lcom/android/OriginalSettings/AccessibilitySettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/AccessibilitySettings$1;-><init>(Lcom/android/OriginalSettings/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    .line 158
    new-instance v0, Lcom/android/OriginalSettings/AccessibilitySettings$2;

    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings$2;-><init>(Lcom/android/OriginalSettings/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/OriginalSettings/AccessibilitySettings$SettingsContentObserver;

    .line 167
    new-instance v0, Lcom/android/OriginalSettings/AccessibilitySettings$3;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/AccessibilitySettings$3;-><init>(Lcom/android/OriginalSettings/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 1090
    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/AccessibilitySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->loadInstalledServices()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/AccessibilitySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->updateServicesPreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/AccessibilitySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/AccessibilitySettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/Context;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-static {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/Set;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/OriginalSettings/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    return-object v0
.end method

.method private static getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 653
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_accessibility_services"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 655
    .local v4, enabledServicesSetting:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 656
    const-string v4, ""

    .line 658
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 659
    .local v3, enabledServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    sget-object v0, Lcom/android/OriginalSettings/AccessibilitySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 660
    .local v0, colonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 661
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 662
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 663
    .local v1, componentNameString:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 665
    .local v2, enabledService:Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    .line 666
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 669
    .end local v1           #componentNameString:Ljava/lang/String;
    .end local v2           #enabledService:Landroid/content/ComponentName;
    :cond_2
    return-object v3
.end method

.method private handleDisplayMagnificationPreferenceScreenClick()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 310
    iget-object v3, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 311
    .local v0, extras:Landroid/os/Bundle;
    const-string v3, "title"

    const v4, 0x7f0807f7

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v3, "summary"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0807f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 315
    const-string v3, "checked"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_display_magnification_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 317
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-super {p0, v1, v2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 319
    return-void

    :cond_0
    move v1, v2

    .line 315
    goto :goto_0
.end method

.method private handleLockScreenRotationPreferenceClick()V
    .locals 2

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 289
    return-void

    .line 287
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleTogglEnableAccessibilityGesturePreferenceClick()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 298
    iget-object v3, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 299
    .local v0, extras:Landroid/os/Bundle;
    const-string v3, "title"

    const v4, 0x7f0807f9

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v3, "summary"

    const v4, 0x7f0807fc

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v3, "checked"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_accessibility_global_gesture_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 305
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-super {p0, v1, v2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 307
    return-void

    :cond_0
    move v1, v2

    .line 303
    goto :goto_0
.end method

.method private handleToggleHomeButtonAnswersCallPreferenceClick()V
    .locals 3

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ring_home_button_behavior"

    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleHomeButtonAnswersCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 284
    return-void

    .line 279
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleToggleLargeTextPreferenceClick()V
    .locals 2

    .prologue
    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3fa66666

    :goto_0
    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 264
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_1
    return-void

    .line 263
    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private handleTogglePowerButtonEndsCallPreferenceClick()V
    .locals 3

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incall_power_button_behavior"

    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 276
    return-void

    .line 271
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleToggleSpeakPasswordPreferenceClick()V
    .locals 3

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speak_password"

    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 295
    return-void

    .line 292
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeAllPreferences()V
    .locals 7

    .prologue
    .line 322
    const-string v4, "services_category"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    .line 323
    const-string v4, "system_category"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    .line 326
    const-string v4, "toggle_large_text_preference"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/CheckBoxPreference;

    .line 330
    const-string v4, "toggle_power_button_ends_call_preference"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    .line 332
    const/16 v4, 0x1a

    invoke-static {v4}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/OriginalSettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 334
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 338
    :cond_1
    const-string v4, "toggle_home_button_answers_call_preference"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleHomeButtonAnswersCallPreference:Landroid/preference/CheckBoxPreference;

    .line 340
    const/4 v4, 0x3

    invoke-static {v4}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/OriginalSettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 342
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleHomeButtonAnswersCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 346
    :cond_3
    const-string v4, "toggle_lock_screen_rotation_preference"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    .line 350
    const-string v4, "toggle_speak_password_preference"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    .line 354
    const-string v4, "select_long_press_timeout_preference"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    .line 356
    iget-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 357
    iget-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 358
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0031

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 360
    .local v3, timeoutValues:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mLongPressTimeoutDefault:I

    .line 361
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, timeoutTitles:[Ljava/lang/String;
    array-length v2, v3

    .line 364
    .local v2, timeoutValueCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_4

    .line 365
    iget-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    aget-object v5, v3, v0

    aget-object v6, v1, v0

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    .end local v0           #i:I
    .end local v1           #timeoutTitles:[Ljava/lang/String;
    .end local v2           #timeoutValueCount:I
    .end local v3           #timeoutValues:[Ljava/lang/String;
    :cond_4
    const-string v4, "toggle_script_injection_preference"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/OriginalSettings/AccessibilityEnableScriptInjectionPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleScriptInjectionPreference:Lcom/android/OriginalSettings/AccessibilityEnableScriptInjectionPreference;

    .line 374
    const-string v4, "screen_magnification_preference_screen"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 378
    const-string v4, "enable_global_gesture_preference_screen"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 380
    return-void
.end method

.method private loadInstalledServices()V
    .locals 8

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    .line 640
    .local v3, installedServiceInfos:Ljava/util/List;,"Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    sget-object v4, Lcom/android/OriginalSettings/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    .line 641
    .local v4, installedServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 642
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 643
    .local v2, installedServiceInfoCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 644
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 645
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    .local v1, installedService:Landroid/content/ComponentName;
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 643
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 650
    .end local v1           #installedService:Landroid/content/ComponentName;
    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-void
.end method

.method private offerInstallAccessibilitySerivceOnce()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 578
    iget-object v7, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v6}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    iget-object v8, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    if-eq v7, v8, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 582
    .local v3, preferences:Landroid/content/SharedPreferences;
    const-string v7, "key_install_accessibility_service_offered_once"

    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_2

    move v2, v5

    .line 584
    .local v2, offerInstallService:Z
    :goto_1
    if-eqz v2, :cond_0

    .line 585
    const-string v7, "ro.screenreader.market"

    const-string v8, "market://search?q=pname:com.google.android.marvin.talkback"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 588
    .local v4, screenreaderMarketLink:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 589
    .local v1, marketUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v0, v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 591
    .local v0, marketIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v0, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 596
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "key_install_accessibility_service_offered_once"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 600
    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/AccessibilitySettings;->showDialog(I)V

    goto :goto_0

    .end local v0           #marketIntent:Landroid/content/Intent;
    .end local v1           #marketUri:Landroid/net/Uri;
    .end local v2           #offerInstallService:Z
    .end local v4           #screenreaderMarketLink:Ljava/lang/String;
    :cond_2
    move v2, v6

    .line 582
    goto :goto_1
.end method

.method private updateAllPreferences()V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->updateServicesPreferences()V

    .line 384
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->updateSystemPreferences()V

    .line 385
    return-void
.end method

.method private updateLockScreenRotationCheckbox()V
    .locals 3

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 570
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 571
    iget-object v2, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 574
    :cond_0
    return-void

    .line 571
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateServicesPreferences()V
    .locals 15

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 393
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 395
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v6

    .line 399
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v7

    .line 401
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    .line 404
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    move v5, v3

    :goto_1
    if-ge v5, v8, :cond_5

    .line 405
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 407
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 409
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 411
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 412
    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v12, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 418
    if-eqz v1, :cond_3

    invoke-interface {v7, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    .line 420
    :goto_2
    if-eqz v4, :cond_4

    .line 421
    const v12, 0x7f080806

    invoke-virtual {p0, v12}, Lcom/android/OriginalSettings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 426
    :goto_3
    invoke-virtual {v9, v5}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 427
    const-class v12, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v9, v2}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 430
    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 431
    const-string v13, "preference_key"

    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string v13, "checked"

    invoke-virtual {v12, v13, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 433
    const-string v4, "title"

    invoke-virtual {v12, v4, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v4

    .line 436
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 437
    const v4, 0x7f080814

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 439
    :cond_0
    const-string v10, "summary"

    invoke-virtual {v12, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 443
    const-string v10, "enable_warning_title"

    const v13, 0x7f08080c

    new-array v14, v2, [Ljava/lang/Object;

    aput-object v4, v14, v3

    invoke-virtual {p0, v13, v14}, Lcom/android/OriginalSettings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v10, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v10, "enable_warning_message"

    const v13, 0x7f08080d

    new-array v14, v2, [Ljava/lang/Object;

    aput-object v4, v14, v3

    invoke-virtual {p0, v13, v14}, Lcom/android/OriginalSettings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v10, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v10, "disable_warning_title"

    const v13, 0x7f08080e

    new-array v14, v2, [Ljava/lang/Object;

    aput-object v4, v14, v3

    invoke-virtual {p0, v13, v14}, Lcom/android/OriginalSettings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v10, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v10, "disable_warning_message"

    const v13, 0x7f08080f

    new-array v14, v2, [Ljava/lang/Object;

    aput-object v4, v14, v3

    invoke-virtual {p0, v13, v14}, Lcom/android/OriginalSettings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v4

    .line 456
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 457
    const-string v10, "settings_title"

    const v13, 0x7f080805

    invoke-virtual {p0, v13}, Lcom/android/OriginalSettings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v10, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v10, "settings_component_name"

    new-instance v13, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {v13, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v10, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_1
    const-string v0, "service_component_name"

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 404
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_1

    :cond_2
    move v1, v3

    .line 401
    goto/16 :goto_0

    :cond_3
    move v4, v3

    .line 418
    goto/16 :goto_2

    .line 423
    :cond_4
    const v12, 0x7f080807

    invoke-virtual {p0, v12}, Lcom/android/OriginalSettings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 469
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 470
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    if-nez v0, :cond_6

    .line 471
    new-instance v0, Lcom/android/OriginalSettings/AccessibilitySettings$4;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings$4;-><init>(Lcom/android/OriginalSettings/AccessibilitySettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    .line 485
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 486
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    const v1, 0x7f0400a6

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 488
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 490
    :cond_6
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 492
    :cond_7
    return-void
.end method

.method private updateSystemPreferences()V
    .locals 13

    .prologue
    .line 497
    :try_start_0
    iget-object v10, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :goto_0
    iget-object v11, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/CheckBoxPreference;

    iget-object v10, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v10, v10, Landroid/content/res/Configuration;->fontScale:F

    const v12, 0x3fa66666

    cmpl-float v10, v10, v12

    if-nez v10, :cond_2

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {v11, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 504
    const/16 v10, 0x1a

    invoke-static {v10}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/OriginalSettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "incall_power_button_behavior"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 509
    .local v3, incallPowerBehavior:I
    const/4 v10, 0x2

    if-ne v3, v10, :cond_3

    const/4 v6, 0x1

    .line 511
    .local v6, powerButtonEndsCall:Z
    :goto_2
    iget-object v10, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 515
    .end local v3           #incallPowerBehavior:I
    .end local v6           #powerButtonEndsCall:Z
    :cond_0
    const/4 v10, 0x3

    invoke-static {v10}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/OriginalSettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 517
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "ring_home_button_behavior"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 520
    .local v2, incallHomeBehavior:I
    const/4 v10, 0x2

    if-ne v2, v10, :cond_4

    const/4 v1, 0x1

    .line 522
    .local v1, homeButtonAnswersCall:Z
    :goto_3
    iget-object v10, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleHomeButtonAnswersCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 526
    .end local v1           #homeButtonAnswersCall:Z
    .end local v2           #incallHomeBehavior:I
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    .line 529
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "speak_password"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_5

    const/4 v8, 0x1

    .line 531
    .local v8, speakPasswordEnabled:Z
    :goto_4
    iget-object v10, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 534
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "long_press_timeout"

    iget v12, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mLongPressTimeoutDefault:I

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 536
    .local v4, longPressTimeout:I
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 537
    .local v9, value:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v10, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 538
    iget-object v11, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v11, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 541
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "accessibility_script_injection"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    const/4 v7, 0x1

    .line 543
    .local v7, scriptInjectionAllowed:Z
    :goto_5
    iget-object v10, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleScriptInjectionPreference:Lcom/android/OriginalSettings/AccessibilityEnableScriptInjectionPreference;

    invoke-virtual {v10, v7}, Lcom/android/OriginalSettings/AccessibilityEnableScriptInjectionPreference;->setInjectionAllowed(Z)V

    .line 546
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "accessibility_display_magnification_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    const/4 v5, 0x1

    .line 548
    .local v5, magnificationEnabled:Z
    :goto_6
    if-eqz v5, :cond_8

    .line 549
    iget-object v10, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    const v11, 0x7f080806

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 557
    :goto_7
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "enable_accessibility_global_gesture_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    const/4 v0, 0x1

    .line 559
    .local v0, globalGestureEnabled:Z
    :goto_8
    if-eqz v0, :cond_a

    .line 560
    iget-object v10, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    const v11, 0x7f0807fa

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 566
    :goto_9
    return-void

    .line 501
    .end local v0           #globalGestureEnabled:Z
    .end local v4           #longPressTimeout:I
    .end local v5           #magnificationEnabled:Z
    .end local v7           #scriptInjectionAllowed:Z
    .end local v8           #speakPasswordEnabled:Z
    .end local v9           #value:Ljava/lang/String;
    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 509
    .restart local v3       #incallPowerBehavior:I
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 520
    .end local v3           #incallPowerBehavior:I
    .restart local v2       #incallHomeBehavior:I
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 529
    .end local v2           #incallHomeBehavior:I
    :cond_5
    const/4 v8, 0x0

    goto :goto_4

    .line 541
    .restart local v4       #longPressTimeout:I
    .restart local v8       #speakPasswordEnabled:Z
    .restart local v9       #value:Ljava/lang/String;
    :cond_6
    const/4 v7, 0x0

    goto :goto_5

    .line 546
    .restart local v7       #scriptInjectionAllowed:Z
    :cond_7
    const/4 v5, 0x0

    goto :goto_6

    .line 552
    .restart local v5       #magnificationEnabled:Z
    :cond_8
    iget-object v10, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    const v11, 0x7f080807

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_7

    .line 557
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 563
    .restart local v0       #globalGestureEnabled:Z
    :cond_a
    iget-object v10, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    const v11, 0x7f0807fb

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_9

    .line 498
    .end local v0           #globalGestureEnabled:Z
    .end local v4           #longPressTimeout:I
    .end local v5           #magnificationEnabled:Z
    .end local v7           #scriptInjectionAllowed:Z
    .end local v8           #speakPasswordEnabled:Z
    .end local v9           #value:Ljava/lang/String;
    :catch_0
    move-exception v10

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 195
    const/high16 v0, 0x7f05

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/AccessibilitySettings;->addPreferencesFromResource(I)V

    .line 196
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->initializeAllPreferences()V

    .line 197
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "dialogId"

    .prologue
    const/4 v0, 0x0

    .line 606
    packed-switch p1, :pswitch_data_0

    .line 632
    :goto_0
    return-object v0

    .line 608
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080811

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080812

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/OriginalSettings/AccessibilitySettings$5;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/AccessibilitySettings$5;-><init>(Lcom/android/OriginalSettings/AccessibilitySettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 606
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 216
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 218
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/OriginalSettings/AccessibilitySettings$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings$SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 219
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 220
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 223
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_0

    move-object v0, p2

    .line 224
    check-cast v0, Ljava/lang/String;

    .line 225
    .local v0, stringValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "long_press_timeout"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 227
    iget-object v2, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 229
    const/4 v1, 0x1

    .line 231
    .end local v0           #stringValue:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 236
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/CheckBoxPreference;

    if-ne v1, p2, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->handleToggleLargeTextPreferenceClick()V

    .line 258
    :goto_0
    return v0

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    if-ne v1, p2, :cond_1

    .line 240
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->handleTogglePowerButtonEndsCallPreferenceClick()V

    goto :goto_0

    .line 242
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleHomeButtonAnswersCallPreference:Landroid/preference/CheckBoxPreference;

    if-ne v1, p2, :cond_2

    .line 243
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->handleToggleHomeButtonAnswersCallPreferenceClick()V

    goto :goto_0

    .line 245
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    if-ne v1, p2, :cond_3

    .line 246
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->handleLockScreenRotationPreferenceClick()V

    goto :goto_0

    .line 248
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    if-ne v1, p2, :cond_4

    .line 249
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->handleToggleSpeakPasswordPreferenceClick()V

    goto :goto_0

    .line 251
    :cond_4
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    if-ne v1, p2, :cond_5

    .line 252
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->handleTogglEnableAccessibilityGesturePreferenceClick()V

    goto :goto_0

    .line 254
    :cond_5
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    if-ne v1, p2, :cond_6

    .line 255
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->handleDisplayMagnificationPreferenceScreenClick()V

    goto :goto_0

    .line 258
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 201
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 202
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->loadInstalledServices()V

    .line 203
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->updateAllPreferences()V

    .line 205
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->offerInstallAccessibilitySerivceOnce()V

    .line 207
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 208
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/OriginalSettings/AccessibilitySettings$SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings$SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 211
    return-void
.end method
