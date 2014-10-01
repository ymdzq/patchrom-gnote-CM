.class public Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "QuickSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/cyanogenmod/QuickSettings$MultiSelectListPreferenceComparator;
    }
.end annotation


# instance fields
.field mCollapsePanel:Landroid/preference/CheckBoxPreference;

.field mDynamicAlarm:Landroid/preference/CheckBoxPreference;

.field mDynamicBugReport:Landroid/preference/CheckBoxPreference;

.field mDynamicDockBattery:Landroid/preference/CheckBoxPreference;

.field mDynamicIme:Landroid/preference/CheckBoxPreference;

.field mDynamicTiles:Landroid/preference/PreferenceCategory;

.field mDynamicUsbTether:Landroid/preference/CheckBoxPreference;

.field mDynamicWifi:Landroid/preference/CheckBoxPreference;

.field mGeneralSettings:Landroid/preference/PreferenceCategory;

.field mNetworkMode:Landroid/preference/ListPreference;

.field mQuickPulldown:Landroid/preference/ListPreference;

.field mRingMode:Landroid/preference/MultiSelectListPreference;

.field mScreenTimeoutMode:Landroid/preference/ListPreference;

.field mStaticTiles:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 222
    return-void
.end method

.method public static parseStoredValue(Ljava/lang/CharSequence;)[Ljava/lang/String;
    .locals 2
    .parameter "val"

    .prologue
    .line 305
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    const/4 v0, 0x0

    .line 308
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OV=I=XseparatorX=I=VO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updatePulldownSummary(I)V
    .locals 6
    .parameter "value"

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 293
    .local v1, res:Landroid/content/res/Resources;
    if-nez p1, :cond_0

    .line 295
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    const v3, 0x7f08028d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 302
    :goto_0
    return-void

    .line 297
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const v2, 0x7f08028b

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, direction:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    const v3, 0x7f08028a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 297
    .end local v0           #direction:Ljava/lang/String;
    :cond_1
    const v2, 0x7f08028c

    goto :goto_1
.end method

.method private updateSummary(Ljava/lang/String;Landroid/preference/MultiSelectListPreference;I)V
    .locals 8
    .parameter "val"
    .parameter "pref"
    .parameter "defSummary"

    .prologue
    .line 271
    invoke-static {p1}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->parseStoredValue(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, values:[Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 273
    array-length v3, v5

    .line 274
    .local v3, length:I
    invoke-virtual {p2}, Landroid/preference/MultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 275
    .local v0, entries:[Ljava/lang/CharSequence;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .local v4, summary:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 277
    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v1, v0, v6

    .line 278
    .local v1, entry:Ljava/lang/CharSequence;
    sub-int v6, v3, v2

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    .line 279
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 284
    .end local v1           #entry:Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p2, v4}, Landroid/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 288
    .end local v0           #entries:[Ljava/lang/CharSequence;
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v4           #summary:Ljava/lang/StringBuilder;
    :goto_2
    return-void

    .line 286
    :cond_2
    invoke-virtual {p2, p3}, Landroid/preference/MultiSelectListPreference;->setSummary(I)V

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 87
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 90
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 91
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v5, "pref_general_settings"

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mGeneralSettings:Landroid/preference/PreferenceCategory;

    .line 92
    const-string v5, "static_tiles"

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mStaticTiles:Landroid/preference/PreferenceCategory;

    .line 93
    const-string v5, "pref_dynamic_tiles"

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicTiles:Landroid/preference/PreferenceCategory;

    .line 94
    const-string v5, "quick_pulldown"

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    .line 95
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/OriginalSettings/Utils;->isPhone(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 96
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    if-eqz v5, :cond_0

    .line 97
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mGeneralSettings:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 105
    :cond_0
    :goto_0
    const-string v5, "collapse_panel"

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mCollapsePanel:Landroid/preference/CheckBoxPreference;

    .line 106
    iget-object v8, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mCollapsePanel:Landroid/preference/CheckBoxPreference;

    const-string v5, "qs_collapse_panel"

    invoke-static {v2, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_8

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 109
    const-string v5, "pref_ring_mode"

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/MultiSelectListPreference;

    iput-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mRingMode:Landroid/preference/MultiSelectListPreference;

    .line 110
    const-string v5, "expanded_ring_mode"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, storedRingMode:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 113
    const-string v5, "OV=I=XseparatorX=I=VO"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, ringModeArray:[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mRingMode:Landroid/preference/MultiSelectListPreference;

    new-instance v8, Ljava/util/HashSet;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5, v8}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 115
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mRingMode:Landroid/preference/MultiSelectListPreference;

    const v8, 0x7f080213

    invoke-direct {p0, v4, v5, v8}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->updateSummary(Ljava/lang/String;Landroid/preference/MultiSelectListPreference;I)V

    .line 117
    .end local v3           #ringModeArray:[Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mRingMode:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 120
    const-string v5, "pref_network_mode"

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    .line 121
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    if-eqz v5, :cond_2

    .line 122
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 127
    :cond_2
    const-string v5, "pref_screentimeout_mode"

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mScreenTimeoutMode:Landroid/preference/ListPreference;

    .line 128
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mScreenTimeoutMode:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mScreenTimeoutMode:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mScreenTimeoutMode:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 132
    const-string v5, "dynamic_alarm"

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicAlarm:Landroid/preference/CheckBoxPreference;

    .line 133
    iget-object v8, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicAlarm:Landroid/preference/CheckBoxPreference;

    const-string v5, "qs_dyanmic_alarm"

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_9

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 134
    const-string v5, "dynamic_bugreport"

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicBugReport:Landroid/preference/CheckBoxPreference;

    .line 135
    iget-object v8, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicBugReport:Landroid/preference/CheckBoxPreference;

    const-string v5, "qs_dyanmic_bugreport"

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_a

    move v5, v6

    :goto_3
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 136
    const-string v5, "dynamic_dock_battery"

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicDockBattery:Landroid/preference/CheckBoxPreference;

    .line 137
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicDockBattery:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_3

    .line 138
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsDockBattery(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 139
    iget-object v8, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicDockBattery:Landroid/preference/CheckBoxPreference;

    const-string v5, "qs_dyanmic_dock_battery"

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_b

    move v5, v6

    :goto_4
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 145
    :cond_3
    :goto_5
    const-string v5, "dynamic_ime"

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicIme:Landroid/preference/CheckBoxPreference;

    .line 146
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicIme:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_4

    .line 147
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsImeSwitcher(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 148
    iget-object v8, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicIme:Landroid/preference/CheckBoxPreference;

    const-string v5, "qs_dyanmic_ime"

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_d

    move v5, v6

    :goto_6
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 154
    :cond_4
    :goto_7
    const-string v5, "dynamic_usbtether"

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicUsbTether:Landroid/preference/CheckBoxPreference;

    .line 155
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicUsbTether:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_5

    .line 156
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsUsbTether(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 157
    iget-object v8, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicUsbTether:Landroid/preference/CheckBoxPreference;

    const-string v5, "qs_dyanmic_usbtether"

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_f

    move v5, v6

    :goto_8
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 163
    :cond_5
    :goto_9
    const-string v5, "dynamic_wifi"

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicWifi:Landroid/preference/CheckBoxPreference;

    .line 164
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicWifi:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_6

    .line 165
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsWifiDisplay(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 166
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicWifi:Landroid/preference/CheckBoxPreference;

    const-string v8, "qs_dyanmic_wifi"

    invoke-static {v2, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_11

    :goto_a
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 172
    :cond_6
    :goto_b
    return-void

    .line 99
    .end local v4           #storedRingMode:Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 100
    const-string v5, "qs_quick_pulldown"

    invoke-static {v2, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 101
    .local v1, quickPulldownValue:I
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 102
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->updatePulldownSummary(I)V

    goto/16 :goto_0

    .end local v1           #quickPulldownValue:I
    :cond_8
    move v5, v7

    .line 106
    goto/16 :goto_1

    .restart local v4       #storedRingMode:Ljava/lang/String;
    :cond_9
    move v5, v7

    .line 133
    goto/16 :goto_2

    :cond_a
    move v5, v7

    .line 135
    goto/16 :goto_3

    :cond_b
    move v5, v7

    .line 139
    goto/16 :goto_4

    .line 141
    :cond_c
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicTiles:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicDockBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 142
    iput-object v10, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicDockBattery:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_5

    :cond_d
    move v5, v7

    .line 148
    goto :goto_6

    .line 150
    :cond_e
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicTiles:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicIme:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 151
    iput-object v10, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicIme:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_7

    :cond_f
    move v5, v7

    .line 157
    goto :goto_8

    .line 159
    :cond_10
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicTiles:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 160
    iput-object v10, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicUsbTether:Landroid/preference/CheckBoxPreference;

    goto :goto_9

    :cond_11
    move v6, v7

    .line 166
    goto :goto_a

    .line 168
    :cond_12
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicTiles:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 169
    iput-object v10, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicWifi:Landroid/preference/CheckBoxPreference;

    goto :goto_b
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v0, 0x7f050030

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->addPreferencesFromResource(I)V

    .line 83
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v6, 0x1

    .line 237
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 238
    .local v3, resolver:Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mRingMode:Landroid/preference/MultiSelectListPreference;

    if-ne p1, v5, :cond_0

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    check-cast p2, Ljava/util/Set;

    .end local p2
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 240
    .local v0, arrValue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings$MultiSelectListPreferenceComparator;

    iget-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mRingMode:Landroid/preference/MultiSelectListPreference;

    invoke-direct {v5, p0, v7}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings$MultiSelectListPreferenceComparator;-><init>(Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;Landroid/preference/MultiSelectListPreference;)V

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 241
    const-string v5, "expanded_ring_mode"

    const-string v7, "OV=I=XseparatorX=I=VO"

    invoke-static {v7, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v5, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 243
    const-string v5, "OV=I=XseparatorX=I=VO"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mRingMode:Landroid/preference/MultiSelectListPreference;

    const v8, 0x7f080213

    invoke-direct {p0, v5, v7, v8}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->updateSummary(Ljava/lang/String;Landroid/preference/MultiSelectListPreference;I)V

    move v5, v6

    .line 266
    .end local v0           #arrValue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return v5

    .line 245
    .restart local p2
    :cond_0
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_1

    move-object v5, p2

    .line 246
    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 247
    .local v4, value:I
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v5, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 248
    .local v1, index:I
    const-string v5, "expanded_network_mode"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 250
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move v5, v6

    .line 251
    goto :goto_0

    .line 252
    .end local v1           #index:I
    .end local v4           #value:I
    .restart local p2
    :cond_1
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mQuickPulldown:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_2

    .line 253
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 254
    .local v2, quickPulldownValue:I
    const-string v5, "qs_quick_pulldown"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 256
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->updatePulldownSummary(I)V

    move v5, v6

    .line 257
    goto :goto_0

    .line 258
    .end local v2           #quickPulldownValue:I
    .restart local p2
    :cond_2
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mScreenTimeoutMode:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_3

    move-object v5, p2

    .line 259
    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 260
    .restart local v4       #value:I
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mScreenTimeoutMode:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v5, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 261
    .restart local v1       #index:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "expanded_screentimeout_mode"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 263
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mScreenTimeoutMode:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mScreenTimeoutMode:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v7, v7, v1

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move v5, v6

    .line 264
    goto :goto_0

    .line 266
    .end local v1           #index:I
    .end local v4           #value:I
    .restart local p2
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 189
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 190
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicAlarm:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_1

    .line 191
    const-string v3, "qs_dyanmic_alarm"

    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 219
    :goto_0
    return v2

    .line 194
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicBugReport:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_3

    .line 195
    const-string v3, "qs_dyanmic_bugreport"

    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicBugReport:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 198
    :cond_3
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicDockBattery:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicDockBattery:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_5

    .line 199
    const-string v3, "qs_dyanmic_dock_battery"

    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicDockBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 202
    :cond_5
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicIme:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicIme:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_7

    .line 203
    const-string v3, "qs_dyanmic_ime"

    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicIme:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    move v1, v2

    :cond_6
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 206
    :cond_7
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicUsbTether:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicUsbTether:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_9

    .line 207
    const-string v3, "qs_dyanmic_usbtether"

    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    move v1, v2

    :cond_8
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 210
    :cond_9
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicWifi:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicWifi:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_b

    .line 211
    const-string v3, "qs_dyanmic_wifi"

    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mDynamicWifi:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    move v1, v2

    :cond_a
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 214
    :cond_b
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mCollapsePanel:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_d

    .line 215
    const-string v3, "qs_collapse_panel"

    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mCollapsePanel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_c

    move v1, v2

    :cond_c
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 219
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 176
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 177
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->updateAvailableTiles(Landroid/content/Context;)V

    .line 179
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 180
    const-string v0, "toggleNetworkMode"

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->isTileAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mStaticTiles:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mStaticTiles:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettings;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
