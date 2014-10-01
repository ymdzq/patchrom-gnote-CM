.class public Lcom/android/OriginalSettings/applications/InstalledAppDetails;
.super Landroid/app/Fragment;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/applications/InstalledAppDetails$DisableChanger;,
        Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;,
        Lcom/android/OriginalSettings/applications/InstalledAppDetails$PremiumSmsSelectionListener;,
        Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;,
        Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;,
        Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;
    }
.end annotation


# instance fields
.field private mActivitiesButton:Landroid/widget/Button;

.field private mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

.field private mAppSize:Landroid/widget/TextView;

.field private mAppVersion:Landroid/widget/TextView;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAskCompatibilityCB:Landroid/widget/CheckBox;

.field private mCacheSize:Landroid/widget/TextView;

.field private mCanBeOnSdCardChecker:Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;

.field private mCanClearData:Z

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mClearCacheButton:Landroid/widget/Button;

.field private mClearCacheObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;

.field private mClearDataButton:Landroid/widget/Button;

.field private mClearDataObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;

.field private mComputingStr:Ljava/lang/CharSequence;

.field private mDataSize:Landroid/widget/TextView;

.field private mDisableAfterUninstall:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnableCompatibilityCB:Landroid/widget/CheckBox;

.field private mExternalCodeSize:Landroid/widget/TextView;

.field private mExternalDataSize:Landroid/widget/TextView;

.field private mForceStopButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mHaveSizes:Z

.field private mInitialized:Z

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mLastCacheSize:J

.field private mLastCodeSize:J

.field private mLastDataSize:J

.field private mLastExternalCodeSize:J

.field private mLastExternalDataSize:J

.field private mLastTotalSize:J

.field private mMoreControlButtons:Landroid/view/View;

.field private mMoveAppButton:Landroid/widget/Button;

.field private mMoveInProgress:Z

.field private mNotificationSwitch:Landroid/widget/CompoundButton;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageMoveObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPrivacyGuardSwitch:Landroid/widget/CompoundButton;

.field private mRootView:Landroid/view/View;

.field private mScreenCompatSection:Landroid/view/View;

.field private mSession:Lcom/android/OriginalSettings/applications/ApplicationsState$Session;

.field private mShowUninstalled:Z

.field private mSmsManager:Lcom/android/internal/telephony/ISms;

.field private mSpecialDisableButton:Landroid/widget/Button;

.field private mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

.field private mTotalSize:Landroid/widget/TextView;

.field private mUninstallButton:Landroid/widget/Button;

.field private mUpdatedSysApp:Z

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    .line 96
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 121
    iput-boolean v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 122
    iput-boolean v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 149
    iput-boolean v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 150
    iput-wide v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 151
    iput-wide v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastDataSize:J

    .line 152
    iput-wide v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 153
    iput-wide v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 154
    iput-wide v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 155
    iput-wide v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 192
    new-instance v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$1;-><init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    .line 1278
    new-instance v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$2;-><init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 1309
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/OriginalSettings/applications/InstalledAppDetails;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getMoveErrMsg(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->setPrivacyGuard(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Landroid/widget/CompoundButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Landroid/widget/CompoundButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPrivacyGuardSwitch:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Lcom/android/OriginalSettings/applications/ApplicationsState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->processMoveMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->initiateClearUserData()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/applications/InstalledAppDetails;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method private checkForceStop()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 1291
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1293
    invoke-direct {p0, v5}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    .line 1307
    :goto_0
    return-void

    .line 1294
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 1297
    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_0

    .line 1299
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1301
    const-string v0, "android.intent.extra.PACKAGES"

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1302
    const-string v0, "android.intent.extra.UID"

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1303
    const-string v0, "android.intent.extra.user_handle"

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1304
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1267
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1269
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 1270
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-virtual {v0, p1}, Lcom/android/OriginalSettings/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;)V

    .line 1271
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-virtual {v0, p1}, Lcom/android/OriginalSettings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 1272
    if-eqz v0, :cond_0

    .line 1273
    iput-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    .line 1275
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->checkForceStop()V

    .line 1276
    return-void
.end method

.method private getMoveErrMsg(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "errCode"

    .prologue
    .line 265
    packed-switch p1, :pswitch_data_0

    .line 279
    const-string v0, ""

    :goto_0
    return-object v0

    .line 267
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08074e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 269
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08074f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 271
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080750

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 273
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080751

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 275
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080752

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 277
    :pswitch_5
    const-string v0, ""

    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1
    .parameter "packageName"

    .prologue
    .line 1348
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    if-eqz v0, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->getPremiumSmsPermission(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1354
    :goto_0
    return v0

    .line 1351
    :catch_0
    move-exception v0

    .line 1354
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 2
    .parameter "size"

    .prologue
    .line 240
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleDisableable(Landroid/widget/Button;)Z
    .locals 8
    .parameter "button"

    .prologue
    .line 320
    const/4 v0, 0x0

    .line 325
    .local v0, disableable:Z
    :try_start_0
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string v6, "android"

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 327
    .local v4, sys:Landroid/content/pm/PackageInfo;
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 328
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 331
    .local v2, homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->isThisASystemPackage()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 333
    :cond_1
    const v5, 0x7f080713

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setText(I)V

    .line 344
    .end local v2           #homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #sys:Landroid/content/pm/PackageInfo;
    :goto_0
    return v0

    .line 334
    .restart local v2       #homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #sys:Landroid/content/pm/PackageInfo;
    :cond_2
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v5, :cond_3

    .line 335
    const v5, 0x7f080713

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setText(I)V

    .line 336
    const/4 v0, 0x1

    goto :goto_0

    .line 338
    :cond_3
    const v5, 0x7f080714

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setText(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    const/4 v0, 0x1

    goto :goto_0

    .line 341
    .end local v2           #homes:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #sys:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 342
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "InstalledAppDetails"

    const-string v6, "Unable to get package info"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initDataButtons()V
    .locals 4

    .prologue
    const v3, 0x7f080715

    const/4 v2, 0x0

    .line 247
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 252
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 253
    iput-boolean v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 262
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v1, 0x7f080727

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 260
    :goto_1
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private initMoveButton()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 283
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 284
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 307
    :goto_0
    return-void

    .line 287
    :cond_0
    const/4 v0, 0x0

    .line 288
    .local v0, dataOnly:Z
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    if-eqz v4, :cond_1

    move v0, v2

    .line 289
    :goto_1
    const/4 v1, 0x1

    .line 290
    .local v1, moveDisable:Z
    if-eqz v0, :cond_2

    .line 291
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v5, 0x7f08074a

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 301
    :goto_2
    if-eqz v1, :cond_5

    .line 302
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .end local v1           #moveDisable:Z
    :cond_1
    move v0, v3

    .line 288
    goto :goto_1

    .line 292
    .restart local v1       #moveDisable:Z
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x4

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 293
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v5, 0x7f08074b

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 295
    const/4 v1, 0x0

    goto :goto_2

    .line 297
    :cond_3
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v5, 0x7f08074c

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 298
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;->init()V

    .line 299
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_4

    move v1, v2

    :goto_3
    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_3

    .line 304
    :cond_5
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private initNotificationButton()V
    .locals 4

    .prologue
    .line 386
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 388
    .local v1, nm:Landroid/app/INotificationManager;
    const/4 v0, 0x1

    .line 390
    .local v0, enabled:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 394
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 395
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->isThisASystemPackage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 396
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 401
    :goto_1
    return-void

    .line 398
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 399
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    .line 391
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private initPrivacyGuardButton()V
    .locals 3

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPrivacyGuardSwitch:Landroid/widget/CompoundButton;

    if-nez v0, :cond_0

    .line 417
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPrivacyGuardSwitch:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPrivacyGuardSetting(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 412
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->isThisASystemPackage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPrivacyGuardSwitch:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    goto :goto_0

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPrivacyGuardSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method private initUninstallButtons()V
    .locals 6

    .prologue
    const v5, 0x7f080710

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 348
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 349
    const/4 v0, 0x1

    .line 350
    .local v0, enabled:Z
    iget-boolean v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v2, :cond_5

    .line 351
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v5, 0x7f080716

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(I)V

    .line 352
    const/4 v1, 0x0

    .line 353
    .local v1, specialDisable:Z
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 354
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v1

    .line 355
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    if-eqz v1, :cond_4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 375
    .end local v1           #specialDisable:Z
    :goto_2
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 376
    const/4 v0, 0x0

    .line 378
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 379
    if-eqz v0, :cond_2

    .line 381
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    :cond_2
    return-void

    .end local v0           #enabled:Z
    :cond_3
    move v2, v3

    .line 348
    goto :goto_0

    .restart local v0       #enabled:Z
    .restart local v1       #specialDisable:Z
    :cond_4
    move v3, v4

    .line 357
    goto :goto_1

    .line 359
    .end local v1           #specialDisable:Z
    :cond_5
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 360
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    .line 361
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v0

    goto :goto_2

    .line 362
    :cond_6
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x80

    and-int/2addr v2, v3

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_7

    .line 367
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(I)V

    .line 368
    const/4 v0, 0x0

    goto :goto_2

    .line 370
    :cond_7
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_2
.end method

.method private initiateClearUserData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1038
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1040
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1041
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing user data for package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;

    if-nez v0, :cond_0

    .line 1043
    new-instance v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;-><init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;

    .line 1045
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1047
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v0

    .line 1048
    if-nez v0, :cond_1

    .line 1050
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldnt clear application user data for package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    const/4 v0, 0x4

    invoke-direct {p0, v0, v4}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 1055
    :goto_0
    return-void

    .line 1053
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v1, 0x7f080732

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private isThisASystemPackage()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 311
    :try_start_0
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string v4, "android"

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 312
    .local v1, sys:Landroid/content/pm/PackageInfo;
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 315
    .end local v1           #sys:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v2

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 992
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 993
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 994
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v3, 0x7f080715

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 995
    if-ne v0, v4, :cond_0

    .line 996
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleared user data for package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1001
    :goto_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->checkForceStop()V

    .line 1002
    return-void

    .line 999
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private processMoveMsg(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 1019
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1020
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1022
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 1023
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1024
    const-string v0, "InstalledAppDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Moved resources for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1030
    :goto_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshUi()Z

    .line 1031
    return-void

    .line 1028
    :cond_0
    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0
.end method

.method private refreshButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1005
    iget-boolean v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    if-nez v0, :cond_0

    .line 1006
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->initUninstallButtons()V

    .line 1007
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->initDataButtons()V

    .line 1008
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->initMoveButton()V

    .line 1009
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->initNotificationButton()V

    .line 1016
    :goto_0
    return-void

    .line 1011
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v1, 0x7f08074d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1012
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1013
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1014
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private refreshSizeInfo()V
    .locals 10

    .prologue
    .line 925
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x2

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 927
    :cond_0
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastTotalSize:J

    iput-wide v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCacheSize:J

    iput-wide v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastDataSize:J

    iput-wide v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 928
    iget-boolean v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mHaveSizes:Z

    if-nez v6, :cond_1

    .line 929
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 930
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 931
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 932
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 934
    :cond_1
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 935
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 985
    :goto_0
    return-void

    .line 938
    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 939
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->codeSize:J

    .line 940
    .local v2, codeSize:J
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->dataSize:J

    .line 941
    .local v4, dataSize:J
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 942
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    add-long/2addr v2, v6

    .line 943
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v4, v6

    .line 954
    :cond_3
    :goto_1
    iget-wide v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCodeSize:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_4

    .line 955
    iput-wide v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 956
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 958
    :cond_4
    iget-wide v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastDataSize:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_5

    .line 959
    iput-wide v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastDataSize:J

    .line 960
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 962
    :cond_5
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->cacheSize:J

    iget-object v8, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    add-long v0, v6, v8

    .line 963
    .local v0, cacheSize:J
    iget-wide v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCacheSize:J

    cmp-long v6, v6, v0

    if-eqz v6, :cond_6

    .line 964
    iput-wide v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 965
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 967
    :cond_6
    iget-wide v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastTotalSize:J

    iget-object v8, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_7

    .line 968
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->size:J

    iput-wide v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 969
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v7, v7, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->size:J

    invoke-direct {p0, v7, v8}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 972
    :cond_7
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->dataSize:J

    iget-object v8, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_8

    iget-boolean v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCanClearData:Z

    if-nez v6, :cond_b

    .line 973
    :cond_8
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 978
    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_c

    .line 979
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 945
    .end local v0           #cacheSize:J
    :cond_9
    iget-wide v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    iget-object v8, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_a

    .line 946
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    iput-wide v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 947
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v7, v7, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    invoke-direct {p0, v7, v8}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 949
    :cond_a
    iget-wide v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    iget-object v8, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    .line 950
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    iput-wide v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 951
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v7, v7, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    invoke-direct {p0, v7, v8}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 975
    .restart local v0       #cacheSize:J
    :cond_b
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 976
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 981
    :cond_c
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 982
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private refreshUi()Z
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/16 v12, 0x8

    const/4 v11, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 661
    iget-boolean v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    if-eqz v0, :cond_1

    .line 870
    :cond_0
    :goto_0
    return v4

    .line 664
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    move-result-object v6

    .line 666
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    if-nez v0, :cond_2

    move v4, v3

    .line 667
    goto :goto_0

    .line 670
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_3

    move v4, v3

    .line 671
    goto :goto_0

    .line 675
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 678
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 679
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, v5, v6}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 684
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v6, v1}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v2, v0

    .line 688
    :goto_1
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v7

    .line 691
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 692
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v8, 0x7f0d00a3

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 693
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    move v5, v4

    .line 694
    :goto_2
    if-nez v5, :cond_7

    if-nez v7, :cond_7

    .line 695
    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 734
    :goto_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 736
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getPackageScreenCompatMode(Ljava/lang/String;)I

    .line 747
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 751
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 752
    new-instance v5, Landroid/widget/AppSecurityPermissions;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v5, v1, v6}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 753
    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v7

    .line 757
    invoke-virtual {v5}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v1

    if-gtz v1, :cond_5

    if-eqz v7, :cond_10

    .line 759
    :cond_5
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 764
    :goto_4
    const v1, 0x7f0d00a9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 766
    const v2, 0x7f0d00aa

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 768
    if-eqz v7, :cond_11

    .line 770
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 771
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 772
    const v1, 0x7f0d00ab

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 774
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v8, 0x7f0c0046

    const v9, 0x1090008

    invoke-static {v2, v8, v9}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 777
    const v8, 0x1090009

    invoke-virtual {v2, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 778
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 780
    add-int/lit8 v2, v7, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 781
    new-instance v2, Lcom/android/OriginalSettings/applications/InstalledAppDetails$PremiumSmsSelectionListener;

    iget-object v7, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-direct {v2, v6, v7}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$PremiumSmsSelectionListener;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/ISms;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 789
    :goto_5
    invoke-virtual {v5}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v1

    if-lez v1, :cond_14

    .line 791
    const v1, 0x7f0d00ad

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 793
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 794
    invoke-virtual {v5}, Landroid/widget/AppSecurityPermissions;->getPermissionsView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 797
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 798
    if-eqz v1, :cond_14

    array-length v0, v1

    if-le v0, v4, :cond_14

    .line 799
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v3

    .line 800
    :goto_6
    array-length v2, v1

    if-ge v0, v2, :cond_13

    .line 801
    aget-object v2, v1, v0

    .line 802
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 800
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 685
    :catch_0
    move-exception v0

    .line 686
    const-string v1, "InstalledAppDetails"

    const-string v2, "mUsbManager.hasDefaults"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    goto/16 :goto_1

    :cond_6
    move v5, v3

    .line 693
    goto/16 :goto_2

    .line 697
    :cond_7
    if-eqz v7, :cond_c

    if-eqz v5, :cond_c

    move v2, v4

    .line 699
    :goto_8
    if-eqz v7, :cond_d

    .line 700
    const v8, 0x7f080703

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 705
    :goto_9
    const/4 v0, 0x0

    .line 706
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07001f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 708
    if-eqz v5, :cond_9

    .line 709
    const v5, 0x7f080717

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 710
    new-instance v9, Landroid/text/SpannableString;

    invoke-direct {v9, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 711
    if-eqz v2, :cond_8

    .line 712
    new-instance v10, Landroid/text/style/BulletSpan;

    invoke-direct {v10, v8}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v9, v10, v3, v5, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 714
    :cond_8
    if-nez v0, :cond_e

    new-array v0, v11, [Ljava/lang/CharSequence;

    aput-object v9, v0, v3

    const-string v5, "\n"

    aput-object v5, v0, v4

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 717
    :cond_9
    :goto_a
    if-eqz v7, :cond_b

    .line 718
    const v5, 0x7f080718

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 720
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 721
    if-eqz v2, :cond_a

    .line 722
    new-instance v2, Landroid/text/style/BulletSpan;

    invoke-direct {v2, v8}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v7, v2, v3, v5, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 725
    :cond_a
    if-nez v0, :cond_f

    new-array v0, v11, [Ljava/lang/CharSequence;

    aput-object v7, v0, v3

    const-string v2, "\n"

    aput-object v2, v0, v4

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 728
    :cond_b
    :goto_b
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 730
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :cond_c
    move v2, v3

    .line 697
    goto :goto_8

    .line 702
    :cond_d
    const v8, 0x7f080702

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_9

    .line 714
    :cond_e
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/CharSequence;

    aput-object v0, v5, v3

    const-string v0, "\n"

    aput-object v0, v5, v4

    aput-object v9, v5, v11

    const-string v0, "\n"

    aput-object v0, v5, v13

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_a

    .line 725
    :cond_f
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/CharSequence;

    aput-object v0, v2, v3

    const-string v0, "\n"

    aput-object v0, v2, v4

    aput-object v7, v2, v11

    const-string v0, "\n"

    aput-object v0, v2, v13

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_b

    .line 761
    :cond_10
    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 785
    :cond_11
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 786
    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 806
    :cond_12
    :try_start_1
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 807
    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_7

    .line 808
    :catch_1
    move-exception v2

    goto/16 :goto_7

    .line 811
    :cond_13
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 812
    if-lez v6, :cond_14

    .line 813
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 815
    if-ne v6, v4, :cond_17

    .line 816
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 829
    :goto_c
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v2, 0x7f0d00ac

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 831
    const v2, 0x7f08073f

    new-array v5, v11, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v3

    aput-object v1, v5, v4

    invoke-virtual {v7, v2, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 837
    :cond_14
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->checkForceStop()V

    .line 838
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    .line 839
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshButtons()V

    .line 840
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshSizeInfo()V

    .line 842
    iget-boolean v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mInitialized:Z

    if-nez v0, :cond_1b

    .line 844
    iput-boolean v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mInitialized:Z

    .line 845
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x80

    and-int/2addr v0, v1

    if-nez v0, :cond_15

    move v3, v4

    :cond_15
    iput-boolean v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mShowUninstalled:Z

    .line 866
    :cond_16
    iget-boolean v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    if-nez v0, :cond_0

    .line 867
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->initPrivacyGuardButton()V

    goto/16 :goto_0

    .line 817
    :cond_17
    if-ne v6, v11, :cond_18

    .line 818
    const v0, 0x7f080740

    new-array v1, v11, [Ljava/lang/Object;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_c

    .line 821
    :cond_18
    add-int/lit8 v0, v6, -0x2

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 822
    add-int/lit8 v0, v6, -0x3

    move-object v2, v1

    move v1, v0

    :goto_d
    if-ltz v1, :cond_1a

    .line 823
    if-nez v1, :cond_19

    const v0, 0x7f080742

    :goto_e
    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v3

    aput-object v2, v8, v4

    invoke-virtual {v7, v0, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 822
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_d

    .line 823
    :cond_19
    const v0, 0x7f080743

    goto :goto_e

    .line 826
    :cond_1a
    const v0, 0x7f080741

    new-array v1, v11, [Ljava/lang/Object;

    aput-object v2, v1, v3

    add-int/lit8 v2, v6, -0x1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_c

    .line 850
    :cond_1b
    :try_start_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x2200

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 853
    iget-boolean v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mShowUninstalled:Z

    if-nez v1, :cond_16

    .line 857
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    const/high16 v1, 0x80

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    move v4, v3

    goto/16 :goto_0

    .line 859
    :catch_2
    move-exception v0

    move v4, v3

    .line 860
    goto/16 :goto_0
.end method

.method private resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 910
    const v0, 0x7f080702

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 911
    const v0, 0x7f080719

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 913
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 914
    return-void
.end method

.method private retrieveAppEntry()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 632
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 633
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v4, "package"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 634
    .local v3, packageName:Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_0

    .line 635
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 637
    .local v2, intent:Landroid/content/Intent;
    :goto_1
    if-eqz v2, :cond_0

    .line 638
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 641
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-virtual {v4, v3}, Lcom/android/OriginalSettings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    .line 642
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    if-eqz v4, :cond_3

    .line 645
    :try_start_0
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x2240

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    :goto_2
    return-object v3

    .end local v3           #packageName:Ljava/lang/String;
    :cond_1
    move-object v3, v5

    .line 633
    goto :goto_0

    .line 635
    .restart local v3       #packageName:Ljava/lang/String;
    :cond_2
    const-string v4, "intent"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    move-object v2, v4

    goto :goto_1

    .line 649
    :catch_0
    move-exception v1

    .line 650
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "InstalledAppDetails"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when retrieving package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 653
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    const-string v4, "InstalledAppDetails"

    const-string v6, "Missing AppEntry; maybe reinstalling?"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iput-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_2
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 10
    .parameter "pkgInfo"

    .prologue
    const/4 v9, 0x0

    .line 562
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v5, 0x7f0d008b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 563
    .local v0, appSnippet:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v9, v4, v9, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 565
    const v4, 0x7f0d0054

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 566
    .local v1, icon:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    invoke-virtual {v4, v5}, Lcom/android/OriginalSettings/applications/ApplicationsState;->ensureIcon(Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;)V

    .line 567
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 569
    const v4, 0x7f0d00cd

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 570
    .local v2, label:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    const v4, 0x7f0d00cf

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 573
    .local v3, packageName:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 576
    const v4, 0x7f0d00d0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    .line 578
    if-eqz p1, :cond_0

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 579
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 580
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f080749

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    :goto_0
    return-void

    .line 583
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 918
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 919
    const-string v0, "chg"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 920
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 921
    const/4 v2, -0x1

    invoke-virtual {v0, p0, v2, v1}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 922
    return-void
.end method

.method private setNotificationsEnabled(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    .line 1330
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1331
    .local v3, packageName:Ljava/lang/String;
    const-string v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    .line 1334
    .local v2, nm:Landroid/app/INotificationManager;
    :try_start_0
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 1335
    .local v0, enable:Z
    invoke-interface {v2, v3, p1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1339
    .end local v0           #enable:Z
    :goto_0
    return-void

    .line 1336
    :catch_0
    move-exception v1

    .line 1337
    .local v1, ex:Landroid/os/RemoteException;
    iget-object v5, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    if-nez p1, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private setPrivacyGuard(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1342
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1343
    .local v0, packageName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, p1}, Landroid/content/pm/PackageManager;->setPrivacyGuardSetting(Ljava/lang/String;Z)V

    .line 1344
    return-void
.end method

.method private showDialogInner(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1058
    invoke-static {p1, p2}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;->newInstance(II)Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    move-result-object v0

    .line 1059
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1060
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1061
    return-void
.end method

.method private uninstallPkg(Ljava/lang/String;ZZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1260
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1261
    const-string v0, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1262
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1263
    iput-boolean p3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 1264
    return-void
.end method

.method private updateForceStopButton(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1287
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1288
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 538
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 539
    if-ne p1, v5, :cond_1

    .line 540
    iget-boolean v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    if-eqz v1, :cond_0

    .line 541
    iput-boolean v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 543
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x2200

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 546
    .local v0, ainfo:Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    .line 547
    new-instance v2, Lcom/android/OriginalSettings/applications/InstalledAppDetails$DisableChanger;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v1, v3}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    .end local v0           #ainfo:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v1

    if-nez v1, :cond_1

    .line 555
    invoke-direct {p0, v5, v5}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 558
    :cond_1
    return-void

    .line 551
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 605
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1429
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1430
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v4, "activity"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1432
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_1

    .line 1433
    invoke-virtual {v0, v3, p2}, Landroid/app/ActivityManager;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 1450
    :cond_0
    :goto_0
    return-void

    .line 1434
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_3

    .line 1435
    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v0, v3, v1}, Landroid/app/ActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 1437
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    if-ne p1, v0, :cond_5

    .line 1438
    if-nez p2, :cond_4

    .line 1439
    const/16 v0, 0x8

    invoke-direct {p0, v0, v2}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1441
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    goto :goto_0

    .line 1443
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPrivacyGuardSwitch:Landroid/widget/CompoundButton;

    if-ne p1, v0, :cond_0

    .line 1444
    if-eqz p2, :cond_6

    .line 1445
    const/16 v0, 0xa

    invoke-direct {p0, v0, v2}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1447
    :cond_6
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->setPrivacyGuard(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1362
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1363
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_5

    .line 1364
    iget-boolean v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v3, :cond_1

    .line 1365
    invoke-direct {p0, v0, v4}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 1425
    :cond_0
    :goto_0
    return-void

    .line 1367
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 1368
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_2

    .line 1369
    const/4 v0, 0x7

    invoke-direct {p0, v0, v4}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1371
    :cond_2
    new-instance v2, Lcom/android/OriginalSettings/applications/InstalledAppDetails$DisableChanger;

    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2, p0, v0, v4}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-virtual {v2, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1375
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x80

    and-int/2addr v0, v3

    if-nez v0, :cond_4

    .line 1376
    invoke-direct {p0, v2, v1, v4}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 1378
    :cond_4
    invoke-direct {p0, v2, v4, v4}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 1381
    :cond_5
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_6

    .line 1382
    const/16 v0, 0x9

    invoke-direct {p0, v0, v4}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 1383
    :cond_6
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_7

    .line 1384
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 1386
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v2, v1}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1390
    :goto_1
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v2, v4}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 1391
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1393
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v2, 0x7f0d00a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1394
    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_0

    .line 1387
    :catch_0
    move-exception v0

    .line 1388
    const-string v1, "InstalledAppDetails"

    const-string v3, "mUsbManager.clearDefaults"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1395
    :cond_7
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_9

    .line 1396
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 1397
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1398
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1399
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1401
    invoke-virtual {p0, v1, v0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1404
    :cond_8
    invoke-direct {p0, v1, v4}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 1406
    :cond_9
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    if-ne p1, v3, :cond_b

    .line 1408
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;

    if-nez v0, :cond_a

    .line 1409
    new-instance v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;-><init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;

    .line 1411
    :cond_a
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto/16 :goto_0

    .line 1412
    :cond_b
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_c

    .line 1413
    const/4 v0, 0x5

    invoke-direct {p0, v0, v4}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 1415
    :cond_c
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 1416
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;

    if-nez v2, :cond_d

    .line 1417
    new-instance v2, Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;-><init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;

    .line 1419
    :cond_d
    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x4

    and-int/2addr v2, v3

    if-eqz v2, :cond_e

    move v0, v1

    .line 1421
    :cond_e
    iput-boolean v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 1422
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshButtons()V

    .line 1423
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/OriginalSettings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 422
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 424
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/OriginalSettings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/OriginalSettings/applications/ApplicationsState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    .line 425
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mState:Lcom/android/OriginalSettings/applications/ApplicationsState;

    invoke-virtual {v1, p0}, Lcom/android/OriginalSettings/applications/ApplicationsState;->newSession(Lcom/android/OriginalSettings/applications/ApplicationsState$Callbacks;)Lcom/android/OriginalSettings/applications/ApplicationsState$Session;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mSession:Lcom/android/OriginalSettings/applications/ApplicationsState$Session;

    .line 426
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 427
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    .line 428
    const-string v1, "usb"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 429
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 430
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 431
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 432
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    .line 434
    new-instance v1, Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;

    invoke-direct {v1}, Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;-><init>()V

    iput-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/OriginalSettings/applications/CanBeOnSdCardChecker;

    .line 437
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mSession:Lcom/android/OriginalSettings/applications/ApplicationsState$Session;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/applications/ApplicationsState$Session;->resume()V

    .line 439
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    .line 441
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->setHasOptionsMenu(Z)V

    .line 442
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 503
    const v0, 0x7f080711

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 505
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f0d01b3

    const v7, 0x7f0d01b2

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 447
    const v3, 0x7f04003c

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 448
    .local v2, view:Landroid/view/View;
    invoke-static {p2, v2, v2, v5}, Lcom/android/OriginalSettings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 450
    iput-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    .line 451
    invoke-virtual {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f080746

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    .line 454
    const v3, 0x7f0d0092

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    .line 455
    const v3, 0x7f0d0094

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    .line 456
    const v3, 0x7f0d0099

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    .line 457
    const v3, 0x7f0d0096

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    .line 458
    const v3, 0x7f0d009b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    .line 460
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 461
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 462
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 466
    :cond_0
    const v3, 0x7f0d008c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 467
    .local v0, btnPanel:Landroid/view/View;
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    .line 468
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const v4, 0x7f08070a

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 469
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    .line 470
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 473
    const v3, 0x7f0d008d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    .line 474
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 475
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    .line 476
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 479
    const v3, 0x7f0d009c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 480
    .local v1, data_buttons_panel:Landroid/view/View;
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    .line 481
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    .line 484
    const v3, 0x7f0d00a0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    .line 485
    const v3, 0x7f0d00a1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    .line 487
    const v3, 0x7f0d00a4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    .line 490
    const v3, 0x7f0d00a5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    .line 491
    const v3, 0x7f0d00a6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    .line 492
    const v3, 0x7f0d00a7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    .line 494
    const v3, 0x7f0d008e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CompoundButton;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    .line 496
    const v3, 0x7f0d008f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CompoundButton;

    iput-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPrivacyGuardSwitch:Landroid/widget/CompoundButton;

    .line 498
    return-object v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 528
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 529
    .local v0, menuId:I
    if-ne v0, v1, :cond_0

    .line 530
    iget-object v3, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    .line 533
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 609
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .prologue
    .line 613
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshUi()Z

    .line 614
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshSizeInfo()V

    .line 625
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 599
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 600
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mSession:Lcom/android/OriginalSettings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/applications/ApplicationsState$Session;->pause()V

    .line 601
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 509
    const/4 v0, 0x1

    .line 510
    .local v0, showIt:Z
    iget-boolean v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v1, :cond_1

    .line 511
    const/4 v0, 0x0

    .line 523
    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 524
    return-void

    .line 512
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    if-nez v1, :cond_2

    .line 513
    const/4 v0, 0x0

    goto :goto_0

    .line 514
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 515
    const/4 v0, 0x0

    goto :goto_0

    .line 516
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 517
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 518
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_6

    .line 519
    const/4 v0, 0x0

    goto :goto_0

    .line 520
    :cond_6
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 521
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 618
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/OriginalSettings/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 589
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 591
    iget-object v0, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->mSession:Lcom/android/OriginalSettings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/applications/ApplicationsState$Session;->resume()V

    .line 592
    invoke-direct {p0}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    invoke-direct {p0, v1, v1}, Lcom/android/OriginalSettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 595
    :cond_0
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .parameter "running"

    .prologue
    .line 629
    return-void
.end method
