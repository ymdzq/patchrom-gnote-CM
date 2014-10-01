.class public Lcom/android/OriginalSettings/DisplaySettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mAccelerometerRotationObserver:Landroid/database/ContentObserver;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayRotationPreference:Landroid/preference/PreferenceScreen;

.field private mFontSizePref:Lcom/android/OriginalSettings/WarnedListPreference;

.field private mHomeWake:Landroid/preference/CheckBoxPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenOffAnimation:Landroid/preference/CheckBoxPreference;

.field private mScreenSaverPreference:Landroid/preference/Preference;

.field private mScreenTimeoutPreference:Landroid/preference/ListPreference;

.field private mVolumeWake:Landroid/preference/CheckBoxPreference;

.field private mWifiDisplayPreference:Landroid/preference/Preference;

.field private mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 85
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 95
    new-instance v0, Lcom/android/OriginalSettings/DisplaySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/DisplaySettings$1;-><init>(Lcom/android/OriginalSettings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DisplaySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    .line 103
    new-instance v0, Lcom/android/OriginalSettings/DisplaySettings$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DisplaySettings$2;-><init>(Lcom/android/OriginalSettings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 466
    new-instance v0, Lcom/android/OriginalSettings/DisplaySettings$4;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/DisplaySettings$4;-><init>(Lcom/android/OriginalSettings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/DisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/OriginalSettings/DisplaySettings;->updateDisplayRotationPreferenceDescription()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/DisplaySettings;)Lcom/android/OriginalSettings/WarnedListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/OriginalSettings/DisplaySettings;->mFontSizePref:Lcom/android/OriginalSettings/WarnedListPreference;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/OriginalSettings/DisplaySettings;Landroid/hardware/display/WifiDisplayStatus;)Landroid/hardware/display/WifiDisplayStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/OriginalSettings/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/OriginalSettings/DisplaySettings;->updateWifiDisplaySummary()V

    return-void
.end method

.method private disableUnusableTimeouts(Landroid/preference/ListPreference;)V
    .locals 13
    .parameter "screenTimeoutPreference"

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "device_policy"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 276
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v3

    .line 277
    .local v3, maxTimeout:J
    :goto_0
    const-wide/16 v11, 0x0

    cmp-long v11, v3, v11

    if-nez v11, :cond_1

    .line 306
    :goto_1
    return-void

    .line 276
    .end local v3           #maxTimeout:J
    :cond_0
    const-wide/16 v3, 0x0

    goto :goto_0

    .line 280
    .restart local v3       #maxTimeout:J
    :cond_1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 281
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 282
    .local v10, values:[Ljava/lang/CharSequence;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v5, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v6, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v11, v10

    if-ge v2, v11, :cond_3

    .line 285
    aget-object v11, v10, v2

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 286
    .local v7, timeout:J
    cmp-long v11, v7, v3

    if-gtz v11, :cond_2

    .line 287
    aget-object v11, v1, v2

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    aget-object v11, v10, v2

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 291
    .end local v7           #timeout:J
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v1

    if-ne v11, v12, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v10

    if-eq v11, v12, :cond_5

    .line 292
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 294
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 296
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 297
    .local v9, userPreference:I
    int-to-long v11, v9

    cmp-long v11, v11, v3

    if-gtz v11, :cond_5

    .line 298
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 305
    .end local v9           #userPreference:I
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    const/4 v11, 0x0

    goto :goto_3
.end method

.method private updateDisplayRotationPreferenceDescription()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 203
    iget-object v7, p0, Lcom/android/OriginalSettings/DisplaySettings;->mDisplayRotationPreference:Landroid/preference/PreferenceScreen;

    if-nez v7, :cond_0

    .line 244
    :goto_0
    return-void

    .line 209
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .local v5, summary:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "accelerometer_rotation"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x1

    :cond_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 212
    .local v3, rotationEnabled:Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "accelerometer_rotation_angles"

    const/16 v8, 0xb

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 216
    .local v2, mode:I
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_2

    .line 217
    const v6, 0x7f08015d

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :goto_1
    iget-object v6, p0, Lcom/android/OriginalSettings/DisplaySettings;->mDisplayRotationPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 219
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v4, rotationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, ""

    .line 221
    .local v0, delim:Ljava/lang/String;
    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_3

    .line 222
    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_3
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_4

    .line 225
    const-string v6, "90"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_4
    and-int/lit8 v6, v2, 0x4

    if-eqz v6, :cond_5

    .line 228
    const-string v6, "180"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_5
    and-int/lit8 v6, v2, 0x8

    if-eqz v6, :cond_6

    .line 231
    const-string v6, "270"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_6
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_8

    .line 234
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v1

    const/4 v7, 0x2

    if-le v6, v7, :cond_7

    .line 236
    const-string v0, ", "

    .line 233
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 238
    :cond_7
    const-string v0, " & "

    goto :goto_3

    .line 241
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f08015e

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private updateScreenSaverSummary()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/OriginalSettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/OriginalSettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/OriginalSettings/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 401
    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/OriginalSettings/DisplaySettings;->mFontSizePref:Lcom/android/OriginalSettings/WarnedListPreference;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DisplaySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 392
    invoke-direct {p0}, Lcom/android/OriginalSettings/DisplaySettings;->updateScreenSaverSummary()V

    .line 393
    invoke-direct {p0}, Lcom/android/OriginalSettings/DisplaySettings;->updateWifiDisplaySummary()V

    .line 394
    return-void
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 13
    .parameter "currentTimeout"

    .prologue
    .line 247
    iget-object v3, p0, Lcom/android/OriginalSettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 249
    .local v3, preference:Landroid/preference/ListPreference;
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gez v8, :cond_0

    .line 251
    const-string v4, ""

    .line 269
    .local v4, summary:Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 270
    return-void

    .line 253
    .end local v4           #summary:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 254
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 255
    .local v7, values:[Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    array-length v8, v1

    if-nez v8, :cond_2

    .line 256
    :cond_1
    const-string v4, ""

    .restart local v4       #summary:Ljava/lang/String;
    goto :goto_0

    .line 258
    .end local v4           #summary:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 259
    .local v0, best:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v8, v7

    if-ge v2, v8, :cond_4

    .line 260
    aget-object v8, v7, v2

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 261
    .local v5, timeout:J
    cmp-long v8, p1, v5

    if-ltz v8, :cond_3

    .line 262
    move v0, v2

    .line 259
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 265
    .end local v5           #timeout:J
    :cond_4
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0805e0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v12, v1, v0

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #summary:Ljava/lang/String;
    goto :goto_0
.end method

.method private updateWifiDisplaySummary()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/OriginalSettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/OriginalSettings/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 414
    iget-object v0, p0, Lcom/android/OriginalSettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    const v1, 0x7f0804f1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 407
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    const v1, 0x7f0804f0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 410
    :pswitch_1
    iget-object v0, p0, Lcom/android/OriginalSettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    const v1, 0x7f0804ef

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 405
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method floatToIndex(F)I
    .locals 6
    .parameter "val"

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, indices:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 311
    .local v2, lastVal:F
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 312
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 313
    .local v3, thisVal:F
    sub-float v4, v3, v2

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 314
    add-int/lit8 v4, v0, -0x1

    .line 318
    .end local v3           #thisVal:F
    :goto_1
    return v4

    .line 316
    .restart local v3       #thisVal:F
    :cond_0
    move v2, v3

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    .end local v3           #thisVal:F
    :cond_1
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 113
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 115
    .local v5, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 117
    .local v4, res:Landroid/content/res/Resources;
    const v7, 0x7f050016

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/DisplaySettings;->addPreferencesFromResource(I)V

    .line 119
    const-string v7, "display_rotation"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/android/OriginalSettings/DisplaySettings;->mDisplayRotationPreference:Landroid/preference/PreferenceScreen;

    .line 121
    const-string v7, "lockscreen_rotation"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 123
    .local v2, lockScreenRotation:Landroid/preference/CheckBoxPreference;
    if-eqz v2, :cond_0

    .line 124
    const v7, 0x111002d

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 129
    :cond_0
    const-string v7, "screensaver"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/OriginalSettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    .line 130
    iget-object v7, p0, Lcom/android/OriginalSettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    if-eqz v7, :cond_1

    .line 131
    const v7, 0x1110046

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/OriginalSettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 136
    :cond_1
    const-string v7, "screen_timeout"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/OriginalSettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 137
    const-string v7, "screen_off_timeout"

    const-wide/16 v10, 0x7530

    invoke-static {v5, v7, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 139
    .local v0, currentTimeout:J
    iget-object v7, p0, Lcom/android/OriginalSettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 140
    iget-object v7, p0, Lcom/android/OriginalSettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 141
    iget-object v7, p0, Lcom/android/OriginalSettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 142
    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 143
    invoke-direct {p0}, Lcom/android/OriginalSettings/DisplaySettings;->updateDisplayRotationPreferenceDescription()V

    .line 145
    const-string v7, "font_size"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/OriginalSettings/WarnedListPreference;

    iput-object v7, p0, Lcom/android/OriginalSettings/DisplaySettings;->mFontSizePref:Lcom/android/OriginalSettings/WarnedListPreference;

    .line 146
    iget-object v7, p0, Lcom/android/OriginalSettings/DisplaySettings;->mFontSizePref:Lcom/android/OriginalSettings/WarnedListPreference;

    invoke-virtual {v7, p0}, Lcom/android/OriginalSettings/WarnedListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 147
    iget-object v7, p0, Lcom/android/OriginalSettings/DisplaySettings;->mFontSizePref:Lcom/android/OriginalSettings/WarnedListPreference;

    invoke-virtual {v7, p0}, Lcom/android/OriginalSettings/WarnedListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v10, "display"

    invoke-virtual {v7, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/display/DisplayManager;

    iput-object v7, p0, Lcom/android/OriginalSettings/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 151
    iget-object v7, p0, Lcom/android/OriginalSettings/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v7}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v7

    iput-object v7, p0, Lcom/android/OriginalSettings/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 152
    const-string v7, "wifi_display"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/OriginalSettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    .line 153
    iget-object v7, p0, Lcom/android/OriginalSettings/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v7

    if-nez v7, :cond_2

    .line 155
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/OriginalSettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 156
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/OriginalSettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    .line 160
    :cond_2
    const/4 v3, 0x1

    .line 161
    .local v3, removeWakeupCategory:Z
    const-string v7, "category_wakeup_options"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 164
    .local v6, wakeupCategory:Landroid/preference/PreferenceCategory;
    const-string v7, "pref_home_wake"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/OriginalSettings/DisplaySettings;->mHomeWake:Landroid/preference/CheckBoxPreference;

    .line 165
    iget-object v7, p0, Lcom/android/OriginalSettings/DisplaySettings;->mHomeWake:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_3

    .line 166
    const v7, 0x7f0b000a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-nez v7, :cond_7

    .line 167
    iget-object v7, p0, Lcom/android/OriginalSettings/DisplaySettings;->mHomeWake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 176
    :cond_3
    :goto_0
    const-string v7, "pref_volume_wake"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/OriginalSettings/DisplaySettings;->mVolumeWake:Landroid/preference/CheckBoxPreference;

    .line 177
    iget-object v7, p0, Lcom/android/OriginalSettings/DisplaySettings;->mVolumeWake:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_5

    .line 178
    const v7, 0x7f0b000b

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/OriginalSettings/Utils;->hasVolumeRocker(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 180
    :cond_4
    iget-object v7, p0, Lcom/android/OriginalSettings/DisplaySettings;->mVolumeWake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 189
    :cond_5
    :goto_1
    if-eqz v3, :cond_6

    .line 190
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 193
    :cond_6
    const-string v7, "screen_off_animation"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/OriginalSettings/DisplaySettings;->mScreenOffAnimation:Landroid/preference/CheckBoxPreference;

    .line 194
    const v7, 0x1110053

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 195
    iget-object v7, p0, Lcom/android/OriginalSettings/DisplaySettings;->mScreenOffAnimation:Landroid/preference/CheckBoxPreference;

    const-string v10, "screen_off_animation"

    invoke-static {v5, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_b

    :goto_2
    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 200
    :goto_3
    return-void

    .line 169
    :cond_7
    iget-object v10, p0, Lcom/android/OriginalSettings/DisplaySettings;->mHomeWake:Landroid/preference/CheckBoxPreference;

    const-string v7, "home_wake_screen"

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_8

    move v7, v8

    :goto_4
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 171
    const/4 v3, 0x0

    goto :goto_0

    :cond_8
    move v7, v9

    .line 169
    goto :goto_4

    .line 182
    :cond_9
    iget-object v10, p0, Lcom/android/OriginalSettings/DisplaySettings;->mVolumeWake:Landroid/preference/CheckBoxPreference;

    const-string v7, "volume_wake_screen"

    invoke-static {v5, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_a

    move v7, v8

    :goto_5
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 184
    const/4 v3, 0x0

    goto :goto_1

    :cond_a
    move v7, v9

    .line 182
    goto :goto_5

    :cond_b
    move v8, v9

    .line 195
    goto :goto_2

    .line 198
    :cond_c
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/OriginalSettings/DisplaySettings;->mScreenOffAnimation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 378
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0809ed

    new-instance v2, Lcom/android/OriginalSettings/DisplaySettings$3;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/DisplaySettings$3;-><init>(Lcom/android/OriginalSettings/DisplaySettings;)V

    invoke-static {v0, v1, v2}, Lcom/android/OriginalSettings/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 387
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 363
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 365
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 369
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/DisplaySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 371
    iget-object v0, p0, Lcom/android/OriginalSettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/DisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 374
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 449
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, key:Ljava/lang/String;
    const-string v3, "screen_timeout"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p2

    .line 451
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 453
    .local v2, value:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 454
    int-to-long v3, v2

    invoke-direct {p0, v3, v4}, Lcom/android/OriginalSettings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    .end local v2           #value:I
    :cond_0
    :goto_0
    const-string v3, "font_size"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 460
    invoke-virtual {p0, p2}, Lcom/android/OriginalSettings/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 463
    :cond_1
    const/4 v3, 0x1

    return v3

    .line 455
    .restart local v2       #value:I
    :catch_0
    move-exception v0

    .line 456
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "DisplaySettings"

    const-string v4, "could not persist screen timeout setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 479
    iget-object v1, p0, Lcom/android/OriginalSettings/DisplaySettings;->mFontSizePref:Lcom/android/OriginalSettings/WarnedListPreference;

    if-ne p1, v1, :cond_1

    .line 480
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/OriginalSettings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DisplaySettings;->showDialog(I)V

    .line 487
    :goto_0
    return v0

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/DisplaySettings;->mFontSizePref:Lcom/android/OriginalSettings/WarnedListPreference;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/WarnedListPreference;->click()V

    .line 487
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 431
    iget-object v2, p0, Lcom/android/OriginalSettings/DisplaySettings;->mHomeWake:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 432
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "home_wake_screen"

    iget-object v4, p0, Lcom/android/OriginalSettings/DisplaySettings;->mHomeWake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 445
    :goto_0
    return v1

    .line 435
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/DisplaySettings;->mVolumeWake:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_3

    .line 436
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "volume_wake_screen"

    iget-object v4, p0, Lcom/android/OriginalSettings/DisplaySettings;->mVolumeWake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 439
    :cond_3
    iget-object v2, p0, Lcom/android/OriginalSettings/DisplaySettings;->mScreenOffAnimation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_5

    .line 440
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_animation"

    iget-object v4, p0, Lcom/android/OriginalSettings/DisplaySettings;->mScreenOffAnimation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 445
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 341
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 342
    invoke-direct {p0}, Lcom/android/OriginalSettings/DisplaySettings;->updateDisplayRotationPreferenceDescription()V

    .line 344
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 348
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/OriginalSettings/DisplaySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 352
    iget-object v0, p0, Lcom/android/OriginalSettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/DisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 355
    iget-object v0, p0, Lcom/android/OriginalSettings/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 358
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/DisplaySettings;->updateState()V

    .line 359
    return-void
.end method

.method public readFontSizePreference(Landroid/preference/ListPreference;)V
    .locals 8
    .parameter "pref"

    .prologue
    .line 323
    :try_start_0
    iget-object v4, p0, Lcom/android/OriginalSettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :goto_0
    iget-object v4, p0, Lcom/android/OriginalSettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/DisplaySettings;->floatToIndex(F)I

    move-result v2

    .line 330
    .local v2, index:I
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 333
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 334
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f0c0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, fontSizeNames:[Ljava/lang/String;
    const v4, 0x7f0805ef

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v7, v1, v2

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 337
    return-void

    .line 324
    .end local v1           #fontSizeNames:[Ljava/lang/String;
    .end local v2           #index:I
    .end local v3           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 325
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "DisplaySettings"

    const-string v5, "Unable to retrieve font size"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 3
    .parameter "objValue"

    .prologue
    .line 422
    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 423
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_0
    return-void

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DisplaySettings"

    const-string v2, "Unable to save font size"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
