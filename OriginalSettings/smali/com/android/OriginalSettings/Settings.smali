.class public Lcom/android/OriginalSettings/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/android/OriginalSettings/ButtonBarHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/Settings$SystemSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$DreamSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$QuietHoursSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$ProfilesSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$ApnEditorActivity;,
        Lcom/android/OriginalSettings/Settings$ApnSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$AnonymousStatsActivity;,
        Lcom/android/OriginalSettings/Settings$WifiDisplaySettingsActivity;,
        Lcom/android/OriginalSettings/Settings$AndroidBeamSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$TextToSpeechSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$AdvancedWifiSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$DataUsageSummaryActivity;,
        Lcom/android/OriginalSettings/Settings$DeviceAdminSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$CryptKeeperSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$AccountSyncSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$PowerUsageSummaryActivity;,
        Lcom/android/OriginalSettings/Settings$RunningServicesActivity;,
        Lcom/android/OriginalSettings/Settings$PrivacySettingsActivity;,
        Lcom/android/OriginalSettings/Settings$LocationSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$SecuritySettingsActivity;,
        Lcom/android/OriginalSettings/Settings$AccessibilitySettingsActivity;,
        Lcom/android/OriginalSettings/Settings$DevelopmentSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$StorageUseActivity;,
        Lcom/android/OriginalSettings/Settings$ManageApplicationsActivity;,
        Lcom/android/OriginalSettings/Settings$DeviceInfoSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$DisplaySettingsActivity;,
        Lcom/android/OriginalSettings/Settings$SoundSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$UserDictionarySettingsActivity;,
        Lcom/android/OriginalSettings/Settings$LocalePickerActivity;,
        Lcom/android/OriginalSettings/Settings$SpellCheckersSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$KeyboardLayoutPickerActivity;,
        Lcom/android/OriginalSettings/Settings$InputMethodAndLanguageSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$WifiP2pSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$WifiSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$StorageSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$DateTimeSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$VpnSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$TetherSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$WirelessSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$BluetoothSettingsActivity;,
        Lcom/android/OriginalSettings/Settings$HeaderAdapter;
    }
.end annotation


# instance fields
.field private SETTINGS_FOR_RESTRICTED:[I

.field private mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

.field private mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mFirstHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFragmentClass:Ljava/lang/String;

.field protected mHeaderIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInLocalHeaderSwitch:Z

.field private mLastHeader:Landroid/preference/PreferenceActivity$Header;

.field private mListeningToAccountUpdates:Z

.field private mParentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mTopLevelHeaderId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 103
    const/16 v0, 0x1a

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/OriginalSettings/Settings;->SETTINGS_FOR_RESTRICTED:[I

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    .line 895
    return-void

    .line 103
    :array_0
    .array-data 0x4
        0x40t 0x2t 0xdt 0x7ft
        0x41t 0x2t 0xdt 0x7ft
        0x42t 0x2t 0xdt 0x7ft
        0x43t 0x2t 0xdt 0x7ft
        0x45t 0x2t 0xdt 0x7ft
        0x4bt 0x2t 0xdt 0x7ft
        0x4ct 0x2t 0xdt 0x7ft
        0x4dt 0x2t 0xdt 0x7ft
        0x4et 0x2t 0xdt 0x7ft
        0x50t 0x2t 0xdt 0x7ft
        0x4ft 0x2t 0xdt 0x7ft
        0x54t 0x2t 0xdt 0x7ft
        0x55t 0x2t 0xdt 0x7ft
        0x56t 0x2t 0xdt 0x7ft
        0x57t 0x2t 0xdt 0x7ft
        0x51t 0x2t 0xdt 0x7ft
        0x59t 0x2t 0xdt 0x7ft
        0x5at 0x2t 0xdt 0x7ft
        0x5bt 0x2t 0xdt 0x7ft
        0x5ct 0x2t 0xdt 0x7ft
        0x61t 0x2t 0xdt 0x7ft
        0x5dt 0x2t 0xdt 0x7ft
        0x46t 0x2t 0xdt 0x7ft
        0x47t 0x2t 0xdt 0x7ft
        0x48t 0x2t 0xdt 0x7ft
        0x4at 0x2t 0xdt 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/Settings;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/Settings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/Settings;->switchToParent(Ljava/lang/String;)V

    return-void
.end method

.method private getMetaData()V
    .locals 6

    .prologue
    .line 589
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 591
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 608
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 592
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.OriginalSettings.TOP_LEVEL_HEADER_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/OriginalSettings/Settings;->mTopLevelHeaderId:I

    .line 593
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.OriginalSettings.FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/Settings;->mFragmentClass:Ljava/lang/String;

    .line 596
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.OriginalSettings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 597
    .local v2, parentHeaderTitleRes:I
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.OriginalSettings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 598
    .local v1, parentFragmentClass:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 599
    new-instance v3, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v3}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v3, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 600
    iget-object v3, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v1, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 601
    if-eqz v2, :cond_0

    .line 602
    iget-object v3, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 605
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v1           #parentFragmentClass:Ljava/lang/String;
    .end local v2           #parentHeaderTitleRes:I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private highlightHeader(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 310
    if-eqz p1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 312
    .local v0, index:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 314
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->isMultiPane()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 319
    .end local v0           #index:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private insertAccountsHeaders(Ljava/util/List;I)I
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I)I"
        }
    .end annotation

    .prologue
    const v12, 0x7f0808f7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 527
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v4

    .line 528
    new-instance v5, Ljava/util/ArrayList;

    array-length v0, v4

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 529
    array-length v6, v4

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_5

    aget-object v7, v4, v3

    .line 530
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, v7}, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 531
    if-nez v8, :cond_0

    .line 529
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 535
    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v9

    .line 536
    array-length v0, v9

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, v7}, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 538
    :goto_2
    new-instance v10, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v10}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 539
    iput-object v8, v10, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 540
    iget-object v11, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-nez v11, :cond_1

    .line 541
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    iput-object v11, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 543
    :cond_1
    if-eqz v0, :cond_4

    .line 544
    iput v12, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 545
    iput v12, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 546
    const-class v0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 547
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 549
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v8, "account_type"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v7, "account"

    aget-object v8, v9, v2

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 551
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v7, "account"

    aget-object v8, v9, v2

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 566
    :cond_2
    :goto_3
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move v0, v2

    .line 536
    goto :goto_2

    .line 554
    :cond_4
    iput-object v8, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    .line 555
    iput-object v8, v10, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    .line 556
    const-class v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 557
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 558
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v0, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v0, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->isMultiPane()Z

    move-result v0

    if-nez v0, :cond_2

    .line 562
    iget-object v0, v10, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const-string v7, "account_label"

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 570
    :cond_5
    new-instance v0, Lcom/android/OriginalSettings/Settings$3;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/Settings$3;-><init>(Lcom/android/OriginalSettings/Settings;)V

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 577
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 578
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move p2, v2

    goto :goto_4

    .line 580
    :cond_6
    iget-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mListeningToAccountUpdates:Z

    if-nez v0, :cond_7

    .line 581
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 582
    iput-boolean v1, p0, Lcom/android/OriginalSettings/Settings;->mListeningToAccountUpdates:Z

    .line 584
    :cond_7
    return p2
.end method

.method private onBuildStartFragmentIntentHelper(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 402
    const-class v0, Lcom/android/OriginalSettings/DataUsageSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/OriginalSettings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/OriginalSettings/accounts/AccountSyncSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/OriginalSettings/UserDictionarySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/OriginalSettings/deviceinfo/Memory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/OriginalSettings/applications/ManageApplications;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/OriginalSettings/WirelessSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/OriginalSettings/SoundSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/OriginalSettings/PrivacySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/OriginalSettings/accounts/ManageAccountsSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/OriginalSettings/vpn2/VpnSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/OriginalSettings/SecuritySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/OriginalSettings/applications/InstalledAppDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/OriginalSettings/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/OriginalSettings/TetherSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/OriginalSettings/ApnSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/OriginalSettings/LocationSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/OriginalSettings/ZonePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    :cond_0
    const-string v0, "settings:remove_ui_options"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 422
    :cond_1
    const-class v0, Lcom/android/OriginalSettings/SubSettings;

    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 423
    return-void
.end method

.method private switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mInLocalHeaderSwitch:Z

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/Settings;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mInLocalHeaderSwitch:Z

    .line 254
    return-void
.end method

.method private switchToParent(Ljava/lang/String;)V
    .locals 10
    .parameter "className"

    .prologue
    .line 270
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 272
    .local v0, cn:Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 273
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 275
    .local v5, parentInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v5, :cond_0

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    .line 276
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.android.OriginalSettings.FRAGMENT_CLASS"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, fragmentClass:Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 278
    .local v2, fragmentTitle:Ljava/lang/CharSequence;
    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 279
    .local v4, parentHeader:Landroid/preference/PreferenceActivity$Header;
    iput-object v1, v4, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 280
    iput-object v2, v4, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 281
    iput-object v4, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 283
    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/Settings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 284
    iget v7, p0, Lcom/android/OriginalSettings/Settings;->mTopLevelHeaderId:I

    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/Settings;->highlightHeader(I)V

    .line 286
    new-instance v7, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v7}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v7, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 287
    iget-object v7, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.OriginalSettings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 289
    iget-object v7, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.OriginalSettings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .end local v1           #fragmentClass:Ljava/lang/String;
    .end local v2           #fragmentTitle:Ljava/lang/CharSequence;
    .end local v4           #parentHeader:Landroid/preference/PreferenceActivity$Header;
    .end local v5           #parentInfo:Landroid/content/pm/ActivityInfo;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v3

    .line 292
    .local v3, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "Settings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find parent activity : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateHeaderList(Ljava/util/List;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 436
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    iget-object v10, p0, Lcom/android/OriginalSettings/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v11, "show"

    sget-object v12, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v13, "eng"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 439
    .local v9, showDev:Z
    const/4 v3, 0x0

    .line 441
    .local v3, i:I
    iget-object v10, p0, Lcom/android/OriginalSettings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 442
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_10

    .line 443
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 445
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    iget-wide v10, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v4, v10

    .line 446
    .local v4, id:I
    const v10, 0x7f0d0244

    if-eq v4, v10, :cond_1

    const v10, 0x7f0d0252

    if-eq v4, v10, :cond_1

    const v10, 0x7f0d0253

    if-ne v4, v10, :cond_5

    .line 448
    :cond_1
    invoke-static {p0, p1, v1}, Lcom/android/OriginalSettings/Utils;->updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    .line 507
    :cond_2
    :goto_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/OriginalSettings/Settings;->SETTINGS_FOR_RESTRICTED:[I

    invoke-static {v10, v4}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v10

    if-nez v10, :cond_3

    .line 510
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 514
    :cond_3
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_0

    .line 516
    iget-object v10, p0, Lcom/android/OriginalSettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v10, :cond_4

    invoke-static {v1}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v10

    if-eqz v10, :cond_4

    .line 518
    iput-object v1, p0, Lcom/android/OriginalSettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    .line 520
    :cond_4
    iget-object v10, p0, Lcom/android/OriginalSettings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 449
    :cond_5
    const v10, 0x7f0d0247

    if-ne v4, v10, :cond_7

    .line 450
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 451
    .local v5, launcherIntent:Landroid/content/Intent;
    const-string v10, "android.intent.category.HOME"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    const-string v10, "android.intent.category.DEFAULT"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    new-instance v7, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 455
    .local v7, launcherPreferencesIntent:Landroid/content/Intent;
    const-string v10, "com.cyanogenmod.category.LAUNCHER_PREFERENCES"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/high16 v11, 0x1

    invoke-virtual {v10, v5, v11}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 458
    .local v0, defaultLauncher:Landroid/content/pm/ActivityInfo;
    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v7, v11}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 460
    .local v6, launcherPreferences:Landroid/content/pm/ResolveInfo;
    if-eqz v6, :cond_6

    .line 461
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    iput-object v10, v1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto/16 :goto_1

    .line 464
    :cond_6
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 466
    .end local v0           #defaultLauncher:Landroid/content/pm/ActivityInfo;
    .end local v5           #launcherIntent:Landroid/content/Intent;
    .end local v6           #launcherPreferences:Landroid/content/pm/ResolveInfo;
    .end local v7           #launcherPreferencesIntent:Landroid/content/Intent;
    :cond_7
    const v10, 0x7f0d0241

    if-ne v4, v10, :cond_8

    .line 468
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "android.hardware.wifi"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 469
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 471
    :cond_8
    const v10, 0x7f0d0242

    if-ne v4, v10, :cond_9

    .line 473
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "android.hardware.bluetooth"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 474
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 476
    :cond_9
    const v10, 0x7f0d0243

    if-ne v4, v10, :cond_a

    .line 478
    const-string v10, "network_management"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v8

    .line 481
    .local v8, netManager:Landroid/os/INetworkManagementService;
    :try_start_0
    invoke-interface {v8}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v10

    if-nez v10, :cond_2

    .line 482
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 484
    :catch_0
    move-exception v10

    goto/16 :goto_1

    .line 487
    .end local v8           #netManager:Landroid/os/INetworkManagementService;
    :cond_a
    const v10, 0x7f0d0259

    if-ne v4, v10, :cond_b

    .line 488
    add-int/lit8 v2, v3, 0x1

    .line 489
    .local v2, headerIndex:I
    invoke-direct {p0, p1, v2}, Lcom/android/OriginalSettings/Settings;->insertAccountsHeaders(Ljava/util/List;I)I

    move-result v3

    .line 490
    goto/16 :goto_1

    .end local v2           #headerIndex:I
    :cond_b
    const v10, 0x7f0d0251

    if-ne v4, v10, :cond_d

    .line 491
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isMonkeyRunning()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 494
    :cond_c
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 496
    :cond_d
    const v10, 0x7f0d025e

    if-eq v4, v10, :cond_e

    const v10, 0x7f0d0260

    if-ne v4, v10, :cond_f

    .line 498
    :cond_e
    if-nez v9, :cond_2

    .line 499
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 501
    :cond_f
    const v10, 0x7f0d025f

    if-ne v4, v10, :cond_2

    .line 502
    invoke-static {}, Lcom/android/OriginalSettings/DevelopmentSettings;->isRootForAppsEnabled()Z

    move-result v10

    if-nez v10, :cond_2

    .line 503
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 524
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v4           #id:I
    :cond_10
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 323
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 324
    .local v4, superIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, startingFragment:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_1

    .line 328
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 329
    .local v2, modIntent:Landroid/content/Intent;
    const-string v5, ":android:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 331
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 332
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0           #args:Landroid/os/Bundle;
    .local v1, args:Landroid/os/Bundle;
    move-object v0, v1

    .line 336
    .end local v1           #args:Landroid/os/Bundle;
    .restart local v0       #args:Landroid/os/Bundle;
    :goto_0
    const-string v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 337
    const-string v5, ":android:show_fragment_args"

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 340
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #modIntent:Landroid/content/Intent;
    :goto_1
    return-object v2

    .line 334
    .restart local v0       #args:Landroid/os/Bundle;
    .restart local v2       #modIntent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #args:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0       #args:Landroid/os/Bundle;
    goto :goto_0

    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #modIntent:Landroid/content/Intent;
    :cond_1
    move-object v2, v4

    .line 340
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 617
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mFragmentClass:Ljava/lang/String;

    .line 360
    :cond_0
    :goto_0
    return-object v0

    .line 350
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 353
    :cond_2
    const-string v1, "com.android.OriginalSettings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.OriginalSettings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.OriginalSettings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    :cond_3
    const-class v0, Lcom/android/OriginalSettings/applications/ManageApplications;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 612
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1
    .parameter "accounts"

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 845
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, p1}, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 846
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->invalidateHeaders()V

    .line 847
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 430
    .local p1, headers:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v0, 0x7f050041

    invoke-virtual {p0, v0, p1}, Lcom/android/OriginalSettings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 432
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/Settings;->updateHeaderList(Ljava/util/List;)V

    .line 433
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 1
    .parameter "fragmentName"
    .parameter "args"
    .parameter "titleRes"
    .parameter "shortTitleRes"

    .prologue
    .line 394
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 396
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, p1, v0}, Lcom/android/OriginalSettings/Settings;->onBuildStartFragmentIntentHelper(Ljava/lang/String;Landroid/content/Intent;)V

    .line 397
    return-object v0
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 1
    .parameter "fragmentName"
    .parameter "args"
    .parameter "titleText"
    .parameter "shortTitleText"

    .prologue
    .line 385
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 387
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, p1, v0}, Lcom/android/OriginalSettings/Settings;->onBuildStartFragmentIntentHelper(Ljava/lang/String;Landroid/content/Intent;)V

    .line 388
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "settings:remove_ui_options"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setUiOptions(I)V

    .line 149
    :cond_0
    new-instance v0, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    invoke-direct {v0}, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/Settings;->mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    .line 150
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 151
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, v3}, Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 153
    const-string v0, "development"

    invoke-virtual {p0, v0, v2}, Lcom/android/OriginalSettings/Settings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 156
    invoke-direct {p0}, Lcom/android/OriginalSettings/Settings;->getMetaData()V

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mInLocalHeaderSwitch:Z

    .line 158
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 159
    iput-boolean v2, p0, Lcom/android/OriginalSettings/Settings;->mInLocalHeaderSwitch:Z

    .line 161
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget v0, p0, Lcom/android/OriginalSettings/Settings;->mTopLevelHeaderId:I

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/Settings;->highlightHeader(I)V

    .line 165
    const v0, 0x7f080419

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/Settings;->setTitle(I)V

    .line 169
    :cond_1
    if-eqz p1, :cond_2

    .line 170
    const-string v0, "com.android.OriginalSettings.CURRENT_HEADER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 171
    const-string v0, "com.android.OriginalSettings.PARENT_HEADER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 175
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_3

    .line 177
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v3}, Lcom/android/OriginalSettings/Settings;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 180
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_4

    .line 181
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    new-instance v1, Lcom/android/OriginalSettings/Settings$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/Settings$1;-><init>(Lcom/android/OriginalSettings/Settings;)V

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/OriginalSettings/Settings;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 189
    :cond_4
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 190
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 191
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 193
    :cond_5
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 245
    iget-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mListeningToAccountUpdates:Z

    if-eqz v0, :cond_0

    .line 246
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 248
    :cond_0
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 3

    .prologue
    .line 369
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, fragmentClass:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 371
    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 372
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    iput-object v0, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 373
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 374
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 375
    iput-object v1, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 379
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 5
    .parameter "header"
    .parameter "position"

    .prologue
    .line 799
    const/4 v0, 0x0

    .line 800
    .local v0, revert:Z
    iget-wide v1, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0d025a

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 801
    const/4 v0, 0x1

    .line 804
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 806
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_1

    .line 807
    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    iget-wide v1, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/Settings;->highlightHeader(I)V

    .line 811
    :goto_0
    return-void

    .line 809
    :cond_1
    iput-object p1, p0, Lcom/android/OriginalSettings/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 298
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 301
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/Settings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 307
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 230
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 232
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 233
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 234
    check-cast v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->pause()V

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/OriginalSettings/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 239
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/OriginalSettings/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 240
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 816
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 817
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/OriginalSettings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 818
    const v3, 0x7f0805e2

    .line 823
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/OriginalSettings/Settings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 825
    const/4 v0, 0x1

    return v0

    .line 819
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/OriginalSettings/OwnerInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    const v3, 0x7f080446

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 210
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 212
    new-instance v1, Lcom/android/OriginalSettings/Settings$2;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/Settings$2;-><init>(Lcom/android/OriginalSettings/Settings;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 218
    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/OriginalSettings/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 222
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 223
    check-cast v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;->resume()V

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->invalidateHeaders()V

    .line 226
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 197
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 200
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    .line 201
    const-string v0, "com.android.OriginalSettings.CURRENT_HEADER"

    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_1

    .line 204
    const-string v0, "com.android.OriginalSettings.PARENT_HEADER"

    iget-object v1, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 206
    :cond_1
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 834
    if-nez p1, :cond_0

    .line 835
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 839
    :goto_0
    return-void

    .line 837
    :cond_0
    new-instance v0, Lcom/android/OriginalSettings/Settings$HeaderAdapter;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/Settings;->getHeaders()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/Settings;->mAuthenticatorHelper:Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/OriginalSettings/Settings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/OriginalSettings/accounts/AuthenticatorHelper;)V

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2
    .parameter

    .prologue
    .line 829
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/OriginalSettings/Settings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 2
    .parameter "header"

    .prologue
    const/4 v1, 0x0

    .line 258
    iget-boolean v0, p0, Lcom/android/OriginalSettings/Settings;->mInLocalHeaderSwitch:Z

    if-nez v0, :cond_0

    .line 259
    iput-object v1, p0, Lcom/android/OriginalSettings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 260
    iput-object v1, p0, Lcom/android/OriginalSettings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 262
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 263
    return-void
.end method
