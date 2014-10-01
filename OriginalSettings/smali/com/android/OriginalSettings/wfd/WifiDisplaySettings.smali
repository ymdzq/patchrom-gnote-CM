.class public final Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    }
.end annotation


# instance fields
.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAvailableDevicesCategory:Lcom/android/OriginalSettings/ProgressCategory;

.field private mDisableHDCP:Landroid/preference/CheckBoxPreference;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEmptyView:Landroid/widget/TextView;

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private final mSwitchOnCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mWifiDisplayOnSetting:Z

.field private mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 356
    new-instance v0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings$4;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings$4;-><init>(Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mSwitchOnCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 366
    new-instance v0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings$5;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings$5;-><init>(Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 379
    new-instance v0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings$6;-><init>(Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;)Landroid/hardware/display/WifiDisplayStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplayStatus;)Landroid/hardware/display/WifiDisplayStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;)Landroid/hardware/display/DisplayManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->applyState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->update()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->showOptionsDialog(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method private applyState()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 210
    iget-object v8, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v3

    .line 211
    .local v3, featureState:I
    iget-object v11, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    if-eq v3, v9, :cond_0

    move v8, v9

    :goto_0
    invoke-virtual {v11, v8}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 212
    iget-object v8, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    iget-boolean v11, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    invoke-virtual {v8, v11}, Landroid/widget/Switch;->setChecked(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 215
    .local v7, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 217
    const/4 v8, 0x3

    if-ne v3, v8, :cond_9

    .line 218
    iget-object v8, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplayStatus;->getRememberedDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v6

    .line 219
    .local v6, pairedDisplays:[Landroid/hardware/display/WifiDisplay;
    iget-object v8, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplayStatus;->getAvailableDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    .line 221
    .local v1, availableDisplays:[Landroid/hardware/display/WifiDisplay;
    new-instance v8, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mDisableHDCP:Landroid/preference/CheckBoxPreference;

    .line 222
    iget-object v8, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mDisableHDCP:Landroid/preference/CheckBoxPreference;

    const v11, 0x7f080298

    invoke-virtual {v8, v11}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 223
    iget-object v8, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mDisableHDCP:Landroid/preference/CheckBoxPreference;

    const v11, 0x7f080299

    invoke-virtual {v8, v11}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 224
    iget-object v11, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mDisableHDCP:Landroid/preference/CheckBoxPreference;

    const-string v8, "persist.sys.wfd.nohdcp"

    const-string v12, "0"

    invoke-static {v8, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_1

    move v8, v9

    :goto_1
    invoke-virtual {v11, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 225
    iget-object v8, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mDisableHDCP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v10}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    .line 226
    iget-object v8, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mDisableHDCP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 228
    iget-object v8, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v8, :cond_2

    .line 229
    new-instance v8, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 230
    iget-object v8, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    const v11, 0x7f0804e3

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 234
    :goto_2
    iget-object v8, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->setOrder(I)V

    .line 235
    iget-object v8, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 237
    move-object v0, v6

    .local v0, arr$:[Landroid/hardware/display/WifiDisplay;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_3
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    .line 238
    .local v2, d:Landroid/hardware/display/WifiDisplay;
    iget-object v8, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v2, v9}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->createWifiDisplayPreference(Landroid/hardware/display/WifiDisplay;Z)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 237
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v0           #arr$:[Landroid/hardware/display/WifiDisplay;
    .end local v1           #availableDisplays:[Landroid/hardware/display/WifiDisplay;
    .end local v2           #d:Landroid/hardware/display/WifiDisplay;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #pairedDisplays:[Landroid/hardware/display/WifiDisplay;
    .end local v7           #preferenceScreen:Landroid/preference/PreferenceScreen;
    :cond_0
    move v8, v10

    .line 211
    goto/16 :goto_0

    .restart local v1       #availableDisplays:[Landroid/hardware/display/WifiDisplay;
    .restart local v6       #pairedDisplays:[Landroid/hardware/display/WifiDisplay;
    .restart local v7       #preferenceScreen:Landroid/preference/PreferenceScreen;
    :cond_1
    move v8, v10

    .line 224
    goto :goto_1

    .line 232
    :cond_2
    iget-object v8, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_2

    .line 240
    .restart local v0       #arr$:[Landroid/hardware/display/WifiDisplay;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_3
    iget-object v8, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v8

    if-nez v8, :cond_4

    .line 241
    iget-object v8, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 244
    :cond_4
    iget-object v8, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/OriginalSettings/ProgressCategory;

    if-nez v8, :cond_6

    .line 245
    new-instance v8, Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const/4 v12, 0x0

    const v13, 0x7f0804e2

    invoke-direct {v8, v11, v12, v13}, Lcom/android/OriginalSettings/ProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v8, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/OriginalSettings/ProgressCategory;

    .line 247
    iget-object v8, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/OriginalSettings/ProgressCategory;

    const v11, 0x7f0804e4

    invoke-virtual {v8, v11}, Lcom/android/OriginalSettings/ProgressCategory;->setTitle(I)V

    .line 251
    :goto_4
    iget-object v8, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v8, v14}, Lcom/android/OriginalSettings/ProgressCategory;->setOrder(I)V

    .line 252
    iget-object v8, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 254
    move-object v0, v1

    array-length v5, v0

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v5, :cond_7

    aget-object v2, v0, v4

    .line 255
    .restart local v2       #d:Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->contains([Landroid/hardware/display/WifiDisplay;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 256
    iget-object v8, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-direct {p0, v2, v10}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->createWifiDisplayPreference(Landroid/hardware/display/WifiDisplay;Z)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/OriginalSettings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 254
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 249
    .end local v2           #d:Landroid/hardware/display/WifiDisplay;
    :cond_6
    iget-object v8, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v8}, Lcom/android/OriginalSettings/ProgressCategory;->removeAll()V

    goto :goto_4

    .line 259
    :cond_7
    iget-object v8, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v8

    if-ne v8, v9, :cond_8

    .line 260
    iget-object v8, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v8, v9}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 270
    .end local v0           #arr$:[Landroid/hardware/display/WifiDisplay;
    .end local v1           #availableDisplays:[Landroid/hardware/display/WifiDisplay;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #pairedDisplays:[Landroid/hardware/display/WifiDisplay;
    :goto_6
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 271
    return-void

    .line 262
    .restart local v0       #arr$:[Landroid/hardware/display/WifiDisplay;
    .restart local v1       #availableDisplays:[Landroid/hardware/display/WifiDisplay;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #pairedDisplays:[Landroid/hardware/display/WifiDisplay;
    :cond_8
    iget-object v8, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v8, v10}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    goto :goto_6

    .line 265
    .end local v0           #arr$:[Landroid/hardware/display/WifiDisplay;
    .end local v1           #availableDisplays:[Landroid/hardware/display/WifiDisplay;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #pairedDisplays:[Landroid/hardware/display/WifiDisplay;
    :cond_9
    iget-object v9, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    if-ne v3, v14, :cond_a

    const v8, 0x7f0804de

    :goto_7
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    :cond_a
    const v8, 0x7f0804df

    goto :goto_7
.end method

.method private static contains([Landroid/hardware/display/WifiDisplay;Ljava/lang/String;)Z
    .locals 5
    .parameter "displays"
    .parameter "address"

    .prologue
    .line 348
    move-object v0, p0

    .local v0, arr$:[Landroid/hardware/display/WifiDisplay;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 349
    .local v1, d:Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 350
    const/4 v4, 0x1

    .line 353
    .end local v1           #d:Landroid/hardware/display/WifiDisplay;
    :goto_1
    return v4

    .line 348
    .restart local v1       #d:Landroid/hardware/display/WifiDisplay;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 353
    .end local v1           #d:Landroid/hardware/display/WifiDisplay;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private createWifiDisplayPreference(Landroid/hardware/display/WifiDisplay;Z)Landroid/preference/Preference;
    .locals 3
    .parameter "d"
    .parameter "paired"

    .prologue
    .line 274
    new-instance v0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings$WifiDisplayPreference;-><init>(Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/WifiDisplay;)V

    .line 275
    .local v0, p:Lcom/android/OriginalSettings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 276
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 288
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 289
    const v1, 0x7f0400be

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setWidgetLayoutResource(I)V

    .line 291
    :cond_1
    return-object v0

    .line 278
    :pswitch_0
    const v1, 0x7f0804e6

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setSummary(I)V

    goto :goto_0

    .line 281
    :pswitch_1
    const v1, 0x7f0804e5

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setSummary(I)V

    goto :goto_0

    .line 284
    :cond_2
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getAvailableDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->contains([Landroid/hardware/display/WifiDisplay;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    const v1, 0x7f0804e7

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings$WifiDisplayPreference;->setSummary(I)V

    goto :goto_0

    .line 276
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showDisconnectDialog(Landroid/hardware/display/WifiDisplay;)V
    .locals 8
    .parameter "display"

    .prologue
    const/4 v5, 0x1

    .line 295
    new-instance v1, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings$1;

    invoke-direct {v1, p0, p1}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings$1;-><init>(Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    .line 304
    .local v1, ok:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0804e9

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0804ea

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 312
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 313
    return-void
.end method

.method private showOptionsDialog(Landroid/hardware/display/WifiDisplay;)V
    .locals 8
    .parameter "display"

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0400bd

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 317
    .local v4, view:Landroid/view/View;
    const v5, 0x7f0d0077

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 318
    .local v3, nameEditText:Landroid/widget/EditText;
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 320
    new-instance v1, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings$2;

    invoke-direct {v1, p0, v3, p1}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings$2;-><init>(Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/hardware/display/WifiDisplay;)V

    .line 330
    .local v1, done:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings$3;

    invoke-direct {v2, p0, p1}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings$3;-><init>(Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    .line 337
    .local v2, forget:Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0804eb

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0804ed

    invoke-virtual {v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0804ec

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 344
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 345
    return-void
.end method

.method private update()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 204
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 206
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->applyState()V

    .line 207
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 97
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 100
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 101
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 102
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 103
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 104
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 106
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 107
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 109
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const v6, 0x800015

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 117
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mSwitchOnCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    .line 120
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 122
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->update()V

    .line 124
    iget-object v3, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v3

    if-nez v3, :cond_2

    .line 125
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 127
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 91
    const v0, 0x7f050055

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->addPreferencesFromResource(I)V

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->setHasOptionsMenu(Z)V

    .line 93
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 158
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v1

    if-ne v1, v2, :cond_0

    const v1, 0x7f0804e1

    :goto_0
    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 162
    .local v0, item:Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 164
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 165
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 166
    return-void

    .line 158
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_0
    const v1, 0x7f0804e0

    goto :goto_0

    .restart local v0       #item:Landroid/view/MenuItem;
    :cond_1
    move v1, v3

    .line 162
    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 170
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 177
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 172
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->scanWifiDisplays()V

    .line 175
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 170
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 148
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 150
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 151
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 154
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 183
    instance-of v2, p2, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    if-eqz v2, :cond_2

    move-object v1, p2

    .line 184
    check-cast v1, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    .line 185
    .local v1, p:Lcom/android/OriginalSettings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    invoke-virtual {v1}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings$WifiDisplayPreference;->getDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 187
    .local v0, display:Landroid/hardware/display/WifiDisplay;
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->showDisconnectDialog(Landroid/hardware/display/WifiDisplay;)V

    .line 198
    .end local v0           #display:Landroid/hardware/display/WifiDisplay;
    .end local v1           #p:Lcom/android/OriginalSettings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    :goto_1
    return v2

    .line 190
    .restart local v0       #display:Landroid/hardware/display/WifiDisplay;
    .restart local v1       #p:Lcom/android/OriginalSettings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    .end local v0           #display:Landroid/hardware/display/WifiDisplay;
    .end local v1           #p:Lcom/android/OriginalSettings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mDisableHDCP:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_0

    .line 194
    const-string v3, "persist.sys.wfd.nohdcp"

    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mDisableHDCP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "1"

    :goto_2
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const/4 v2, 0x1

    goto :goto_1

    .line 194
    :cond_3
    const-string v2, "0"

    goto :goto_2
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 131
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 133
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 134
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 135
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_on"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 141
    iget-object v2, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->scanWifiDisplays()V

    .line 143
    invoke-direct {p0}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->update()V

    .line 144
    return-void
.end method
