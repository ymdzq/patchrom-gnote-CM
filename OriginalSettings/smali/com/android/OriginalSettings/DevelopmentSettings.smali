.class public Lcom/android/OriginalSettings/DevelopmentSettings;
.super Landroid/preference/PreferenceFragment;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/DevelopmentSettings$ConfirmEnforceFragment;,
        Lcom/android/OriginalSettings/DevelopmentSettings$SystemPropPoker;
    }
.end annotation


# instance fields
.field private mAdbDialog:Landroid/app/Dialog;

.field private mAdbNotify:Landroid/preference/CheckBoxPreference;

.field private mAdbOverNetwork:Landroid/preference/CheckBoxPreference;

.field private mAdbTcpDialog:Landroid/app/Dialog;

.field private mAdvancedReboot:Landroid/preference/CheckBoxPreference;

.field private final mAllPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowMockLocation:Landroid/preference/CheckBoxPreference;

.field private mAnimatorDurationScale:Landroid/preference/ListPreference;

.field private mAppProcessLimit:Landroid/preference/ListPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mBugreport:Landroid/preference/Preference;

.field private mBugreportInPower:Landroid/preference/CheckBoxPreference;

.field private mDebugApp:Ljava/lang/String;

.field private mDebugAppPref:Landroid/preference/Preference;

.field private mDebugLayout:Landroid/preference/CheckBoxPreference;

.field private mDevelopmentTools:Landroid/preference/PreferenceScreen;

.field private mDialogClicked:Z

.field private mDisableOverlays:Landroid/preference/CheckBoxPreference;

.field private final mDisabledPrefs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mDontPokeProperties:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnableAdb:Landroid/preference/CheckBoxPreference;

.field private mEnableDialog:Landroid/app/Dialog;

.field private mEnableTracesPref:Landroid/preference/MultiCheckPreference;

.field private mEnabledSwitch:Landroid/widget/Switch;

.field private mEnforceReadExternal:Landroid/preference/CheckBoxPreference;

.field private mForceHardwareUi:Landroid/preference/CheckBoxPreference;

.field private mForceMsaa:Landroid/preference/CheckBoxPreference;

.field private mHaveDebugSettings:Z

.field private mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

.field private mKeepScreenOn:Landroid/preference/CheckBoxPreference;

.field private mKillAppLongpressBack:Landroid/preference/CheckBoxPreference;

.field private mLastEnabledState:Z

.field private mOpenGLTraces:Landroid/preference/ListPreference;

.field private mOverlayDisplayDevices:Landroid/preference/ListPreference;

.field private mPassword:Landroid/preference/PreferenceScreen;

.field private mPointerLocation:Landroid/preference/CheckBoxPreference;

.field private final mResetCbPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mRootAccess:Landroid/preference/ListPreference;

.field private mRootDialog:Landroid/app/Dialog;

.field private mSelectedRootValue:Ljava/lang/Object;

.field private mShowAllANRs:Landroid/preference/CheckBoxPreference;

.field private mShowCpuUsage:Landroid/preference/CheckBoxPreference;

.field private mShowHwLayersUpdates:Landroid/preference/CheckBoxPreference;

.field private mShowHwOverdraw:Landroid/preference/CheckBoxPreference;

.field private mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

.field private mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

.field private mShowTouches:Landroid/preference/CheckBoxPreference;

.field private mStrictMode:Landroid/preference/CheckBoxPreference;

.field private mTrackFrameTime:Landroid/preference/CheckBoxPreference;

.field private mTransitionAnimationScale:Landroid/preference/ListPreference;

.field private mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

.field private mWaitForDebugger:Landroid/preference/CheckBoxPreference;

.field private mWindowAnimationScale:Landroid/preference/ListPreference;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    .line 215
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    .line 1462
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 79
    invoke-static {p0, p1, p2}, Lcom/android/OriginalSettings/DevelopmentSettings;->setPermissionEnforced(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/DevelopmentSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAllOptions()V

    return-void
.end method

.method private static currentStrictModeActiveIndex()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 758
    const-string v1, "persist.sys.strictmode.visual"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 762
    :goto_0
    return v0

    .line 761
    :cond_0
    const-string v1, "persist.sys.strictmode.visual"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 762
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private disableForUser(Landroid/preference/Preference;)V
    .locals 1
    .parameter "pref"

    .prologue
    .line 338
    if-eqz p1, :cond_0

    .line 339
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 340
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_0
    return-void
.end method

.method private dismissDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1341
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1342
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1343
    iput-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 1345
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 1346
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1347
    iput-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    .line 1349
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 1350
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1351
    iput-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 1353
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    .line 1354
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1355
    iput-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    .line 1357
    :cond_3
    return-void
.end method

.method private enableVerifierSetting()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 709
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 710
    const-string v3, "adb_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 725
    :cond_0
    :goto_0
    return v0

    .line 713
    :cond_1
    const-string v3, "package_verifier_enable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 716
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 717
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 718
    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 720
    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 721
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 725
    goto :goto_0
.end method

.method private findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;
    .locals 4
    .parameter "key"

    .prologue
    .line 345
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 346
    .local v0, pref:Landroid/preference/CheckBoxPreference;
    if-nez v0, :cond_0

    .line 347
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find preference with key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    return-object v0
.end method

.method private static isPermissionEnforced(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 1497
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/pm/IPackageManager;->isPermissionEnforced(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 1498
    :catch_0
    move-exception v0

    .line 1499
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Problem talking with PackageManager"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static isRootForAppsEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 574
    const-string v2, "persist.sys.root_access"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 575
    .local v0, value:I
    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private removeHdcpOptionsForProduction()V
    .locals 3

    .prologue
    .line 400
    const-string v1, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    const-string v1, "hdcp_checking"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 402
    .local v0, hdcpChecking:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 405
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 408
    .end local v0           #hdcpChecking:Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private removeRootOptionsIfRequired()Z
    .locals 2

    .prologue
    .line 356
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 358
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 359
    const/4 v0, 0x1

    .line 363
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetAdbNotifyOptions()V
    .locals 3

    .prologue
    .line 606
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_notify"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 608
    return-void
.end method

.method private resetDangerousOptions()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 542
    iput-boolean v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDontPokeProperties:Z

    .line 543
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 544
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 545
    .local v0, cb:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 546
    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 547
    invoke-virtual {p0, v4, v0}, Lcom/android/OriginalSettings/DevelopmentSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 543
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 550
    .end local v0           #cb:Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-static {}, Lcom/android/OriginalSettings/DevelopmentSettings;->resetDebuggerOptions()V

    .line 551
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->resetRootAccessOptions()V

    .line 552
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->resetAdbNotifyOptions()V

    .line 553
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->resetVerifyAppsOverUsbOptions()V

    .line 554
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v5, v2, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 555
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v3, v2, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 556
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    .line 557
    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    .line 558
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeEnableTracesOptions(J)V

    .line 559
    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    .line 560
    iput-boolean v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 561
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAllOptions()V

    .line 562
    iput-boolean v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDontPokeProperties:Z

    .line 563
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 564
    return-void
.end method

.method private static resetDebuggerOptions()V
    .locals 4

    .prologue
    .line 662
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    :goto_0
    return-void

    .line 664
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private resetRootAccessOptions()V
    .locals 3

    .prologue
    .line 593
    const-string v0, "persist.sys.root_access"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 594
    const-string v1, "persist.sys.root_access"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    const-string v1, "service.adb.root"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    const-string v0, "service.adb.root"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 599
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 602
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateRootAccessOptions()V

    .line 603
    return-void
.end method

.method private resetVerifyAppsOverUsbOptions()V
    .locals 3

    .prologue
    .line 693
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "verifier_verify_adb_installs"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 695
    return-void
.end method

.method private static setPermissionEnforced(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1507
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1, p2}, Landroid/content/pm/IPackageManager;->setPermissionEnforced(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1512
    return-void

    .line 1509
    :catch_0
    move-exception v0

    .line 1510
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Problem talking with PackageManager"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setPrefsEnabledState(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 411
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 412
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 413
    .local v1, pref:Landroid/preference/Preference;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 413
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 415
    .end local v1           #pref:Landroid/preference/Preference;
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAllOptions()V

    .line 416
    return-void
.end method

.method private showVerifierSetting()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 729
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_setting_visible"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAdbOverNetwork()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 514
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "adb_port"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 516
    .local v3, port:I
    if-lez v3, :cond_0

    const/4 v1, 0x1

    .line 518
    .local v1, enabled:Z
    :cond_0
    iget-object v6, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v6, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 520
    const/4 v4, 0x0

    .line 522
    .local v4, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_1

    .line 523
    const-string v6, "wifi"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v5

    .line 526
    .local v5, wifiManager:Landroid/net/wifi/IWifiManager;
    :try_start_0
    invoke-interface {v5}, Landroid/net/wifi/IWifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 532
    .end local v5           #wifiManager:Landroid/net/wifi/IWifiManager;
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 533
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v6

    invoke-static {v6}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 535
    .local v2, hostAddress:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/CheckBoxPreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 539
    .end local v2           #hostAddress:Ljava/lang/String;
    :goto_1
    return-void

    .line 527
    .restart local v5       #wifiManager:Landroid/net/wifi/IWifiManager;
    :catch_0
    move-exception v0

    .line 528
    .local v0, e:Landroid/os/RemoteException;
    const-string v6, "DevelopmentSettings"

    const-string v7, "wifiManager, getConnectionInfo()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 537
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v5           #wifiManager:Landroid/net/wifi/IWifiManager;
    :cond_2
    iget-object v6, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f080251

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_1
.end method

.method private updateAdvancedRebootOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 509
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdvancedReboot:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "advanced_reboot"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 511
    return-void
.end method

.method private updateAllOptions()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 459
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 460
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 461
    .local v1, cr:Landroid/content/ContentResolver;
    iput-boolean v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 462
    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    const-string v2, "adb_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {p0, v5, v2}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 464
    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbNotify:Landroid/preference/CheckBoxPreference;

    const-string v2, "adb_notify"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 466
    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    const-string v2, "bugreport_in_power_menu"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    invoke-virtual {p0, v5, v2}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 468
    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    const-string v2, "stay_on_while_plugged_in"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_3
    invoke-virtual {p0, v5, v2}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 470
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnforceReadExternal:Landroid/preference/CheckBoxPreference;

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v5}, Lcom/android/OriginalSettings/DevelopmentSettings;->isPermissionEnforced(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p0, v2, v5}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 471
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAdbOverNetwork()V

    .line 472
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    const-string v5, "mock_location"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    :goto_4
    invoke-virtual {p0, v2, v3}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 474
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateHdcpValues()V

    .line 475
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updatePasswordSummary()V

    .line 476
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateDebuggerOptions()V

    .line 477
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateStrictModeVisualOptions()V

    .line 478
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updatePointerLocationOptions()V

    .line 479
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateShowTouchesOptions()V

    .line 480
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateFlingerOptions()V

    .line 481
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCpuUsageOptions()V

    .line 482
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateHardwareUiOptions()V

    .line 483
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateMsaaOptions()V

    .line 484
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    .line 485
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateShowHwScreenUpdatesOptions()V

    .line 486
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateShowHwLayersUpdatesOptions()V

    .line 487
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateShowHwOverdrawOptions()V

    .line 488
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateDebugLayoutOptions()V

    .line 489
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAnimationScaleOptions()V

    .line 490
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    .line 491
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateOpenGLTracesOptions()V

    .line 492
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateEnableTracesOptions()V

    .line 493
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateImmediatelyDestroyActivitiesOptions()V

    .line 494
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAppProcessLimitOptions()V

    .line 495
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateShowAllANRsOptions()V

    .line 496
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    .line 497
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateBugreportOptions()V

    .line 498
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateRootAccessOptions()V

    .line 499
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAdvancedRebootOptions()V

    .line 500
    return-void

    :cond_0
    move v2, v4

    .line 462
    goto/16 :goto_0

    :cond_1
    move v2, v4

    .line 464
    goto/16 :goto_1

    :cond_2
    move v2, v4

    .line 466
    goto/16 :goto_2

    :cond_3
    move v2, v4

    .line 468
    goto :goto_3

    :cond_4
    move v3, v4

    .line 472
    goto :goto_4
.end method

.method private updateAnimationScaleOptions()V
    .locals 2

    .prologue
    .line 983
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    .line 984
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    .line 985
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V

    .line 986
    return-void
.end method

.method private updateAnimationScaleValue(ILandroid/preference/ListPreference;)V
    .locals 6
    .parameter "which"
    .parameter "pref"

    .prologue
    .line 963
    :try_start_0
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v4, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v1

    .line 964
    .local v1, scale:F
    const/high16 v4, 0x3f80

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_0

    .line 965
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 967
    :cond_0
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 968
    .local v3, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 969
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 970
    .local v2, val:F
    cmpg-float v4, v1, v2

    if-gtz v4, :cond_1

    .line 971
    invoke-virtual {p2, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 972
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 980
    .end local v0           #i:I
    .end local v1           #scale:F
    .end local v2           #val:F
    .end local v3           #values:[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 968
    .restart local v0       #i:I
    .restart local v1       #scale:F
    .restart local v2       #val:F
    .restart local v3       #values:[Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 976
    .end local v2           #val:F
    :cond_2
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 977
    invoke-virtual {p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {p2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 978
    .end local v0           #i:I
    .end local v1           #scale:F
    .end local v3           #values:[Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private updateAppProcessLimitOptions()V
    .locals 7

    .prologue
    .line 1048
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getProcessLimit()I

    move-result v1

    .line 1049
    .local v1, limit:I
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 1050
    .local v3, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 1051
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1052
    .local v2, val:I
    if-lt v2, v1, :cond_1

    .line 1053
    if-eqz v0, :cond_0

    .line 1054
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1056
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1057
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1065
    .end local v0           #i:I
    .end local v1           #limit:I
    .end local v2           #val:I
    .end local v3           #values:[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 1050
    .restart local v0       #i:I
    .restart local v1       #limit:I
    .restart local v2       #val:I
    .restart local v3       #values:[Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1061
    .end local v2           #val:I
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1062
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1063
    .end local v0           #i:I
    .end local v1           #limit:I
    .end local v3           #values:[Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private updateBugreportOptions()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 734
    const-string v4, "user"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 735
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 736
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v4, "adb_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 738
    .local v0, adbEnabled:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 739
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 740
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 750
    .end local v0           #adbEnabled:Z
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :goto_1
    return-void

    .restart local v1       #resolver:Landroid/content/ContentResolver;
    :cond_0
    move v0, v3

    .line 736
    goto :goto_0

    .line 742
    .restart local v0       #adbEnabled:Z
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 743
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 744
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 745
    const-string v2, "bugreport_in_power_menu"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 748
    .end local v0           #adbEnabled:Z
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :cond_2
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateCpuUsageOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 931
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_processes"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 933
    return-void
.end method

.method private updateDebugLayoutOptions()V
    .locals 3

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugLayout:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.layout"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 922
    return-void
.end method

.method private updateDebuggerOptions()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 669
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "debug_app"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 671
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "wait_for_debugger"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 673
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 676
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    const/16 v4, 0x200

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 678
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 679
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 683
    :goto_1
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080928

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 684
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 685
    iput-boolean v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 690
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 671
    goto :goto_0

    .line 679
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 680
    :catch_0
    move-exception v0

    .line 681
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    goto :goto_1

    .line 687
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080927

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 688
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateEnableTracesOptions()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 1088
    const-string v0, "debug.atrace.tags.enableflags"

    invoke-static {v0, v10, v11}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 1089
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    invoke-virtual {v0}, Landroid/preference/MultiCheckPreference;->getEntryValues()[Ljava/lang/String;

    move-result-object v7

    move v0, v1

    move v2, v3

    .line 1091
    :goto_0
    array-length v4, v7

    if-ge v0, v4, :cond_2

    .line 1092
    shl-int v4, v1, v0

    int-to-long v8, v4

    and-long/2addr v8, v5

    cmp-long v4, v8, v10

    if-eqz v4, :cond_1

    move v4, v1

    .line 1093
    :goto_1
    iget-object v8, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    add-int/lit8 v9, v0, -0x1

    invoke-virtual {v8, v9, v4}, Landroid/preference/MultiCheckPreference;->setValue(IZ)V

    .line 1094
    if-eqz v4, :cond_0

    .line 1095
    add-int/lit8 v2, v2, 0x1

    .line 1091
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    .line 1092
    goto :goto_1

    .line 1098
    :cond_2
    if-nez v2, :cond_3

    .line 1099
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    const v1, 0x7f080942

    invoke-virtual {v0, v1}, Landroid/preference/MultiCheckPreference;->setSummary(I)V

    .line 1107
    :goto_2
    return-void

    .line 1100
    :cond_3
    array-length v0, v7

    if-ne v2, v0, :cond_4

    .line 1101
    iput-boolean v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1102
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    const v1, 0x7f080944

    invoke-virtual {v0, v1}, Landroid/preference/MultiCheckPreference;->setSummary(I)V

    goto :goto_2

    .line 1104
    :cond_4
    iput-boolean v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1105
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    const v4, 0x7f080943

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v4, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/MultiCheckPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private updateFlingerOptions()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 800
    :try_start_0
    const-string v2, "SurfaceFlinger"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 801
    if-eqz v2, :cond_0

    .line 802
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 803
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 804
    const-string v5, "android.ui.ISurfaceComposer"

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 805
    const/16 v5, 0x3f2

    const/4 v6, 0x0

    invoke-interface {v2, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 807
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 809
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 810
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 811
    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    invoke-virtual {p0, v5, v2}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 813
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    .line 814
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 815
    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    :goto_1
    invoke-virtual {p0, v5, v0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 816
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 817
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v1

    .line 811
    goto :goto_0

    :cond_2
    move v0, v1

    .line 815
    goto :goto_1

    .line 819
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private updateHardwareUiOptions()V
    .locals 3

    .prologue
    .line 858
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    const-string v1, "persist.sys.ui.hw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 859
    return-void
.end method

.method private updateHdcpValues()V
    .locals 7

    .prologue
    .line 611
    const/4 v2, 0x1

    .line 612
    const-string v0, "hdcp_checking"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 613
    if-eqz v0, :cond_0

    .line 614
    const-string v1, "persist.sys.hdcp_checking"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 615
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c0033

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 616
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0c0034

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 617
    const/4 v1, 0x0

    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_2

    .line 618
    aget-object v6, v4, v1

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 623
    :goto_1
    aget-object v2, v4, v1

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 624
    aget-object v1, v5, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 625
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 627
    :cond_0
    return-void

    .line 617
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private updateImmediatelyDestroyActivitiesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 957
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "always_finish_activities"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 959
    return-void
.end method

.method private updateKillAppLongpressBackOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 636
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mKillAppLongpressBack:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "kill_app_longpress_back"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 638
    return-void
.end method

.method private updateMsaaOptions()V
    .locals 3

    .prologue
    .line 867
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mForceMsaa:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.egl.force_msaa"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 868
    return-void
.end method

.method private updateOpenGLTracesOptions()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1023
    const-string v0, "debug.egl.trace"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1024
    if-nez v0, :cond_0

    .line 1025
    const-string v0, ""

    .line 1028
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v1, v2

    .line 1029
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 1030
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1031
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1032
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1038
    :goto_1
    return-void

    .line 1029
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1036
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1037
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateOverlayDisplayDevicesOptions()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 998
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "overlay_display_devices"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1000
    if-nez v0, :cond_0

    .line 1001
    const-string v0, ""

    .line 1004
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    move v1, v2

    .line 1005
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 1006
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1007
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1008
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1014
    :goto_1
    return-void

    .line 1005
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1012
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1013
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updatePasswordSummary()V
    .locals 2

    .prologue
    .line 642
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->hasBackupPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0808c0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 650
    :goto_0
    return-void

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0808bf

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 647
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updatePointerLocationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 783
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pointer_location"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 785
    return-void
.end method

.method private updateRootAccessOptions()V
    .locals 4

    .prologue
    .line 567
    const-string v1, "persist.sys.root_access"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 569
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 571
    return-void
.end method

.method private updateShowAllANRsOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1083
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anr_show_background"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 1085
    return-void
.end method

.method private updateShowHwLayersUpdatesOptions()V
    .locals 3

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.hwui.show_layers_updates"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 900
    return-void
.end method

.method private updateShowHwOverdrawOptions()V
    .locals 3

    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowHwOverdraw:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.hwui.show_overdraw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 911
    return-void
.end method

.method private updateShowHwScreenUpdatesOptions()V
    .locals 3

    .prologue
    .line 887
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.hwui.show_dirty_regions"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 889
    return-void
.end method

.method private updateShowTouchesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 793
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_touches"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 795
    return-void
.end method

.method private updateStrictModeVisualOptions()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 774
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/OriginalSettings/DevelopmentSettings;->currentStrictModeActiveIndex()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 775
    return-void

    .line 774
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTrackFrameTimeOptions()V
    .locals 3

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug.hwui.profile"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 878
    return-void
.end method

.method private updateVerifyAppsOverUsbOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 698
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "verifier_verify_adb_installs"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V

    .line 700
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->enableVerifierSetting()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 701
    return-void

    .line 698
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeAdvancedRebootOptions()V
    .locals 3

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "advanced_reboot"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdvancedReboot:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 506
    return-void

    .line 503
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V
    .locals 2
    .parameter "which"
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 990
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 991
    .local v0, scale:F
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, v0}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 992
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAnimationScaleValue(ILandroid/preference/ListPreference;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 995
    .end local v0           #scale:F
    :goto_1
    return-void

    .line 990
    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0

    .line 993
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private writeAppProcessLimitOptions(Ljava/lang/Object;)V
    .locals 2
    .parameter "newValue"

    .prologue
    .line 1069
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1070
    .local v0, limit:I
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 1071
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAppProcessLimitOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1074
    .end local v0           #limit:I
    :goto_1
    return-void

    .line 1069
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 1072
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private writeCpuUsageOptions()V
    .locals 4

    .prologue
    .line 936
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 937
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_processes"

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 939
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.LoadAverageService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 941
    if-eqz v1, :cond_1

    .line 942
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 946
    :goto_1
    return-void

    .line 937
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 944
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method private writeDebugLayoutOptions()V
    .locals 2

    .prologue
    .line 925
    const-string v1, "debug.layout"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugLayout:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 928
    return-void

    .line 925
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeDebuggerOptions()V
    .locals 4

    .prologue
    .line 654
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    :goto_0
    return-void

    .line 656
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeDisableOverlaysOption()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 842
    :try_start_0
    const-string v1, "SurfaceFlinger"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 843
    if-eqz v1, :cond_1

    .line 844
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 845
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 846
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 847
    :cond_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 848
    const/16 v0, 0x3f0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 849
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 851
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    :cond_1
    :goto_0
    return-void

    .line 853
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeEnableTracesOptions()V
    .locals 6

    .prologue
    .line 1110
    const-wide/16 v1, 0x0

    .line 1111
    .local v1, value:J
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    invoke-virtual {v4}, Landroid/preference/MultiCheckPreference;->getEntryValues()[Ljava/lang/String;

    move-result-object v3

    .line 1112
    .local v3, values:[Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 1113
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Landroid/preference/MultiCheckPreference;->getValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1114
    const/4 v4, 0x1

    shl-int/2addr v4, v0

    int-to-long v4, v4

    or-long/2addr v1, v4

    .line 1112
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1117
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeEnableTracesOptions(J)V

    .line 1119
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateEnableTracesOptions()V

    .line 1120
    return-void
.end method

.method private writeEnableTracesOptions(J)V
    .locals 3
    .parameter

    .prologue
    .line 1123
    const-string v0, "debug.atrace.tags.enableflags"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {p1, p2, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1126
    return-void
.end method

.method private writeHardwareUiOptions()V
    .locals 2

    .prologue
    .line 862
    const-string v1, "persist.sys.ui.hw"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 864
    return-void

    .line 862
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeImmediatelyDestroyActivitiesOptions()V
    .locals 2

    .prologue
    .line 950
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    :goto_0
    return-void

    .line 952
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeKillAppLongpressBackOptions()V
    .locals 3

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "kill_app_longpress_back"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mKillAppLongpressBack:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 633
    return-void

    .line 630
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeMsaaOptions()V
    .locals 2

    .prologue
    .line 871
    const-string v1, "debug.egl.force_msaa"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mForceMsaa:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 873
    return-void

    .line 871
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeOpenGLTracesOptions(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 1041
    const-string v1, "debug.egl.trace"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1043
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateOpenGLTracesOptions()V

    .line 1044
    return-void

    .line 1041
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V
    .locals 2
    .parameter "newValue"

    .prologue
    .line 1017
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "overlay_display_devices"

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1019
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    .line 1020
    return-void
.end method

.method private writePointerLocationOptions()V
    .locals 3

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_location"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 780
    return-void

    .line 778
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeRootAccessOptions(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 579
    const-string v0, "persist.sys.root_access"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 580
    const-string v1, "persist.sys.root_access"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    const-string v1, "service.adb.root"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    const-string v0, "service.adb.root"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 586
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 589
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateRootAccessOptions()V

    .line 590
    return-void
.end method

.method private writeShowAllANRsOptions()V
    .locals 3

    .prologue
    .line 1077
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anr_show_background"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1080
    return-void

    .line 1077
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwLayersUpdatesOptions()V
    .locals 2

    .prologue
    .line 903
    const-string v1, "debug.hwui.show_layers_updates"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 906
    return-void

    .line 903
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwOverdrawOptions()V
    .locals 2

    .prologue
    .line 914
    const-string v1, "debug.hwui.show_overdraw"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowHwOverdraw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 917
    return-void

    .line 914
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwScreenUpdatesOptions()V
    .locals 2

    .prologue
    .line 892
    const-string v1, "debug.hwui.show_dirty_regions"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 895
    return-void

    .line 892
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowTouchesOptions()V
    .locals 3

    .prologue
    .line 788
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_touches"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 790
    return-void

    .line 788
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowUpdatesOption()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 825
    :try_start_0
    const-string v1, "SurfaceFlinger"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 826
    if-eqz v1, :cond_1

    .line 827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 828
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 829
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 830
    :cond_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 831
    const/16 v0, 0x3ea

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 832
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 834
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    :cond_1
    :goto_0
    return-void

    .line 836
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeStrictModeVisualOptions()V
    .locals 2

    .prologue
    .line 767
    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 771
    :goto_1
    return-void

    .line 767
    :cond_0
    const-string v0, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 769
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private writeTrackFrameTimeOptions()V
    .locals 2

    .prologue
    .line 881
    const-string v1, "debug.hwui.profile"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 884
    return-void

    .line 881
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeVerifyAppsOverUsbOptions()V
    .locals 3

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_verify_adb_installs"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 706
    return-void

    .line 704
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 368
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 370
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 371
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    .line 373
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 375
    .local v1, padding:I
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 376
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 377
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1164
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 1165
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1166
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 1167
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeDebuggerOptions()V

    .line 1168
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateDebuggerOptions()V

    .line 1173
    :cond_0
    :goto_0
    return-void

    .line 1171
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1130
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    if-ne p1, v0, :cond_1

    .line 1131
    iget-boolean v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    if-eq p2, v0, :cond_1

    .line 1132
    if-eqz p2, :cond_2

    .line 1133
    iput-boolean v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDialogClicked:Z

    .line 1134
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1135
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->dismissDialogs()V

    .line 1137
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0807dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0807dc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 1145
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1160
    :cond_1
    :goto_0
    return-void

    .line 1147
    :cond_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->resetDangerousOptions()V

    .line 1148
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1150
    iput-boolean p2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    .line 1151
    iget-boolean v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 1154
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "development"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x1

    .line 1360
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    .line 1361
    if-ne p2, v1, :cond_0

    .line 1362
    iput-boolean v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDialogClicked:Z

    .line 1363
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1365
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1366
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    .line 1367
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateBugreportOptions()V

    .line 1397
    :cond_0
    :goto_0
    return-void

    .line 1369
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 1370
    if-ne p2, v1, :cond_0

    .line 1371
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_port"

    const/16 v2, 0x15b3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1374
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_3

    .line 1375
    if-ne p2, v1, :cond_0

    .line 1376
    iput-boolean v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDialogClicked:Z

    .line 1377
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1379
    iput-boolean v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    .line 1380
    iget-boolean v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 1385
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "development"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1389
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    .line 1390
    if-ne p2, v1, :cond_4

    .line 1391
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mSelectedRootValue:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeRootAccessOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1394
    :cond_4
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeRootAccessOptions(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    .line 226
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 228
    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 229
    const-string v4, "backup"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 231
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 233
    const v4, 0x7f05000f

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->addPreferencesFromResource(I)V

    .line 235
    const-string v4, "enable_adb"

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    .line 236
    const-string v4, "adb_notify"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbNotify:Landroid/preference/CheckBoxPreference;

    .line 237
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbNotify:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    const-string v4, "bugreport"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    .line 239
    const-string v4, "bugreport_in_power"

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    .line 240
    const-string v4, "adb_over_network"

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/CheckBoxPreference;

    .line 241
    const-string v4, "keep_screen_on"

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    .line 242
    const-string v4, "enforce_read_external"

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnforceReadExternal:Landroid/preference/CheckBoxPreference;

    .line 243
    const-string v4, "allow_mock_location"

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    .line 244
    const-string v4, "local_backup_password"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    .line 245
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    const-string v4, "advanced_reboot"

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdvancedReboot:Landroid/preference/CheckBoxPreference;

    .line 248
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v4, v5}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 249
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 250
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 251
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdvancedReboot:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 254
    :cond_0
    const-string v4, "debug_app"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    .line 255
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    const-string v4, "wait_for_debugger"

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    .line 257
    const-string v4, "verify_apps_over_usb"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    .line 258
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->showVerifierSetting()Z

    move-result v4

    if-nez v4, :cond_1

    .line 260
    const-string v4, "debug_debugging_category"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 262
    .local v0, debugDebuggingCategory:Landroid/preference/PreferenceGroup;
    if-eqz v0, :cond_2

    .line 263
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 268
    .end local v0           #debugDebuggingCategory:Landroid/preference/PreferenceGroup;
    :cond_1
    :goto_0
    const-string v4, "strict_mode"

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    .line 269
    const-string v4, "pointer_location"

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    .line 270
    const-string v4, "show_touches"

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    .line 271
    const-string v4, "show_screen_updates"

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

    .line 272
    const-string v4, "disable_overlays"

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/CheckBoxPreference;

    .line 273
    const-string v4, "show_cpu_usage"

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    .line 274
    const-string v4, "force_hw_ui"

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    .line 275
    const-string v4, "force_msaa"

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mForceMsaa:Landroid/preference/CheckBoxPreference;

    .line 276
    const-string v4, "track_frame_time"

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/CheckBoxPreference;

    .line 277
    const-string v4, "show_hw_screen_udpates"

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

    .line 278
    const-string v4, "show_hw_layers_udpates"

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/CheckBoxPreference;

    .line 279
    const-string v4, "show_hw_overdraw"

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowHwOverdraw:Landroid/preference/CheckBoxPreference;

    .line 280
    const-string v4, "debug_layout"

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugLayout:Landroid/preference/CheckBoxPreference;

    .line 281
    const-string v4, "window_animation_scale"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    .line 282
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 284
    const-string v4, "transition_animation_scale"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    .line 285
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 287
    const-string v4, "animator_duration_scale"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    .line 288
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 290
    const-string v4, "overlay_display_devices"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    .line 291
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 293
    const-string v4, "enable_opengl_traces"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    .line 294
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 296
    const-string v4, "enable_traces"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/MultiCheckPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    .line 297
    sget-object v4, Landroid/os/Trace;->TRACE_TAGS:[Ljava/lang/String;

    array-length v4, v4

    new-array v3, v4, [Ljava/lang/String;

    .line 298
    .local v3, traceValues:[Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 299
    const/4 v4, 0x1

    shl-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 298
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 265
    .end local v2           #i:I
    .end local v3           #traceValues:[Ljava/lang/String;
    .restart local v0       #debugDebuggingCategory:Landroid/preference/PreferenceGroup;
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 301
    .end local v0           #debugDebuggingCategory:Landroid/preference/PreferenceGroup;
    .restart local v2       #i:I
    .restart local v3       #traceValues:[Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    sget-object v5, Landroid/os/Trace;->TRACE_TAGS:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/MultiCheckPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 302
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    invoke-virtual {v4, v3}, Landroid/preference/MultiCheckPreference;->setEntryValues([Ljava/lang/String;)V

    .line 303
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    invoke-virtual {v4, p0}, Landroid/preference/MultiCheckPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 306
    const-string v4, "immediately_destroy_activities"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    .line 308
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    const-string v4, "app_process_limit"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    .line 311
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 314
    const-string v4, "show_all_anrs"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    .line 316
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mResetCbPrefs:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    const-string v4, "kill_app_longpress_back"

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findAndInitCheckboxPref(Ljava/lang/String;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mKillAppLongpressBack:Landroid/preference/CheckBoxPreference;

    .line 321
    const-string v4, "hdcp_checking"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 322
    .local v1, hdcpChecking:Landroid/preference/Preference;
    if-eqz v1, :cond_4

    .line 323
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_4
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->removeHdcpOptionsForProduction()V

    .line 327
    const-string v4, "root_access"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    .line 328
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 329
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->removeRootOptionsIfRequired()Z

    move-result v4

    if-nez v4, :cond_5

    .line 330
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_5
    const-string v4, "development_tools"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDevelopmentTools:Landroid/preference/PreferenceScreen;

    .line 334
    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDevelopmentTools:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1421
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->dismissDialogs()V

    .line 1422
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 1423
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1401
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 1402
    iget-boolean v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_0

    .line 1403
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1405
    :cond_0
    iput-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 1417
    :cond_1
    :goto_0
    return-void

    .line 1407
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_3

    .line 1408
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAdbOverNetwork()V

    .line 1409
    iput-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 1411
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    .line 1412
    iget-boolean v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_4

    .line 1413
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1415
    :cond_4
    iput-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1291
    const-string v2, "hdcp_checking"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1292
    const-string v1, "persist.sys.hdcp_checking"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateHdcpValues()V

    .line 1294
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1337
    :goto_0
    return v0

    .line 1296
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_1

    .line 1297
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWindowAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 1299
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_2

    .line 1300
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTransitionAnimationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 1302
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_3

    .line 1303
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAnimatorDurationScale:Landroid/preference/ListPreference;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeAnimationScaleOption(ILandroid/preference/ListPreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 1305
    :cond_3
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_4

    .line 1306
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1308
    :cond_4
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_5

    .line 1309
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeOpenGLTracesOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1311
    :cond_5
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableTracesPref:Landroid/preference/MultiCheckPreference;

    if-ne p1, v2, :cond_6

    .line 1312
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeEnableTracesOptions()V

    goto :goto_0

    .line 1314
    :cond_6
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_7

    .line 1315
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1317
    :cond_7
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_a

    .line 1318
    const-string v2, "0"

    const-string v3, "persist.sys.root_access"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "0"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1320
    iput-object p2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mSelectedRootValue:Ljava/lang/Object;

    .line 1321
    iput-boolean v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDialogClicked:Z

    .line 1322
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_8

    .line 1323
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->dismissDialogs()V

    .line 1325
    :cond_8
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08006c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    .line 1331
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 1333
    :cond_9
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeRootAccessOptions(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    move v0, v1

    .line 1337
    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const v6, 0x1040013

    const v5, 0x1040009

    const v4, 0x1010355

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1178
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1286
    :cond_0
    :goto_0
    return v1

    .line 1182
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    .line 1183
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1184
    iput-boolean v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDialogClicked:Z

    .line 1185
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 1186
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->dismissDialogs()V

    .line 1188
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0807db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0807da

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 1195
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 1197
    :cond_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "adb_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1199
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1200
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1201
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateBugreportOptions()V

    goto :goto_0

    .line 1203
    :cond_4
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_6

    .line 1204
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bugreport_in_power_menu"

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_1
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    .line 1207
    :cond_6
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbNotify:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_8

    .line 1208
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_notify"

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbNotify:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_2

    .line 1211
    :cond_8
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_b

    .line 1212
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1213
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_9

    .line 1214
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->dismissDialogs()V

    .line 1216
    :cond_9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080252

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f080250

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    .line 1223
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 1225
    :cond_a
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "adb_port"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1227
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateAdbOverNetwork()V

    goto/16 :goto_0

    .line 1229
    :cond_b
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_d

    .line 1230
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "stay_on_while_plugged_in"

    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x3

    :goto_3
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto :goto_3

    .line 1234
    :cond_d
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnforceReadExternal:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_f

    .line 1235
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnforceReadExternal:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1236
    invoke-static {p0}, Lcom/android/OriginalSettings/DevelopmentSettings$ConfirmEnforceFragment;->show(Lcom/android/OriginalSettings/DevelopmentSettings;)V

    goto/16 :goto_0

    .line 1238
    :cond_e
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v2, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->setPermissionEnforced(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1240
    :cond_f
    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_11

    .line 1241
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mock_location"

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_10

    :goto_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_10
    move v0, v1

    goto :goto_4

    .line 1244
    :cond_11
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_12

    .line 1245
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/OriginalSettings/AppPicker;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2}, Lcom/android/OriginalSettings/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1246
    :cond_12
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_13

    .line 1247
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeDebuggerOptions()V

    goto/16 :goto_0

    .line 1248
    :cond_13
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_14

    .line 1249
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeVerifyAppsOverUsbOptions()V

    goto/16 :goto_0

    .line 1250
    :cond_14
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mStrictMode:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_15

    .line 1251
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeStrictModeVisualOptions()V

    goto/16 :goto_0

    .line 1252
    :cond_15
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mPointerLocation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_16

    .line 1253
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writePointerLocationOptions()V

    goto/16 :goto_0

    .line 1254
    :cond_16
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowTouches:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_17

    .line 1255
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeShowTouchesOptions()V

    goto/16 :goto_0

    .line 1256
    :cond_17
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_18

    .line 1257
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeShowUpdatesOption()V

    goto/16 :goto_0

    .line 1258
    :cond_18
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_19

    .line 1259
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeDisableOverlaysOption()V

    goto/16 :goto_0

    .line 1260
    :cond_19
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1a

    .line 1261
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeCpuUsageOptions()V

    goto/16 :goto_0

    .line 1262
    :cond_1a
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1b

    .line 1263
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeImmediatelyDestroyActivitiesOptions()V

    goto/16 :goto_0

    .line 1264
    :cond_1b
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1c

    .line 1265
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeShowAllANRsOptions()V

    goto/16 :goto_0

    .line 1266
    :cond_1c
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1d

    .line 1267
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeHardwareUiOptions()V

    goto/16 :goto_0

    .line 1268
    :cond_1d
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mForceMsaa:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1e

    .line 1269
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeMsaaOptions()V

    goto/16 :goto_0

    .line 1270
    :cond_1e
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1f

    .line 1271
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeTrackFrameTimeOptions()V

    goto/16 :goto_0

    .line 1272
    :cond_1f
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_20

    .line 1273
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeShowHwScreenUpdatesOptions()V

    goto/16 :goto_0

    .line 1274
    :cond_20
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_21

    .line 1275
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeShowHwLayersUpdatesOptions()V

    goto/16 :goto_0

    .line 1276
    :cond_21
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mShowHwOverdraw:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_22

    .line 1277
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeShowHwOverdrawOptions()V

    goto/16 :goto_0

    .line 1278
    :cond_22
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDebugLayout:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_23

    .line 1279
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeDebugLayoutOptions()V

    goto/16 :goto_0

    .line 1280
    :cond_23
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mKillAppLongpressBack:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_24

    .line 1281
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeKillAppLongpressBackOptions()V

    goto/16 :goto_0

    .line 1282
    :cond_24
    iget-object v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mAdvancedReboot:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 1283
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->writeAdvancedRebootOptions()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 420
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 422
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 427
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 432
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 433
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "development_settings_enabled"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    .line 435
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    iget-boolean v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 436
    iget-boolean v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 438
    iget-boolean v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mHaveDebugSettings:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    if-nez v1, :cond_1

    .line 443
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "development_settings_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 445
    iput-boolean v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    .line 446
    iget-object v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    iget-boolean v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 447
    iget-boolean v1, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 450
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->updateKillAppLongpressBackOptions()V

    .line 451
    return-void

    .line 429
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_2
    iget-object v3, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/16 v2, 0x10

    const/4 v5, -0x2

    .line 381
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 382
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 383
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 385
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mEnabledSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const v4, 0x800015

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 389
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 393
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 394
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 395
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 396
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 397
    return-void
.end method

.method pokeSystemProperties()V
    .locals 2

    .prologue
    .line 1426
    iget-boolean v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mDontPokeProperties:Z

    if-nez v0, :cond_0

    .line 1428
    new-instance v0, Lcom/android/OriginalSettings/DevelopmentSettings$SystemPropPoker;

    invoke-direct {v0}, Lcom/android/OriginalSettings/DevelopmentSettings$SystemPropPoker;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/DevelopmentSettings$SystemPropPoker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1430
    :cond_0
    return-void
.end method

.method updateCheckBox(Landroid/preference/CheckBoxPreference;Z)V
    .locals 1
    .parameter "checkBox"
    .parameter "value"

    .prologue
    .line 454
    invoke-virtual {p1, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 455
    iget-boolean v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mHaveDebugSettings:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/android/OriginalSettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 456
    return-void
.end method
