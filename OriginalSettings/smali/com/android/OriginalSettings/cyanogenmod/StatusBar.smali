.class public Lcom/android/OriginalSettings/cyanogenmod/StatusBar;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "StatusBar.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mStatusBarAmPm:Landroid/preference/ListPreference;

.field private mStatusBarBattery:Landroid/preference/ListPreference;

.field private mStatusBarBrightnessControl:Landroid/preference/CheckBoxPreference;

.field private mStatusBarClock:Landroid/preference/CheckBoxPreference;

.field private mStatusBarCmSignal:Landroid/preference/ListPreference;

.field private mStatusBarNotifCount:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 56
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v6, 0x7f050045

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->addPreferencesFromResource(I)V

    .line 60
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 61
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 63
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v6, "status_bar_show_clock"

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarClock:Landroid/preference/CheckBoxPreference;

    .line 64
    const-string v6, "status_bar_brightness_control"

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarBrightnessControl:Landroid/preference/CheckBoxPreference;

    .line 65
    const-string v6, "status_bar_am_pm"

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarAmPm:Landroid/preference/ListPreference;

    .line 66
    const-string v6, "status_bar_battery"

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarBattery:Landroid/preference/ListPreference;

    .line 67
    const-string v6, "status_bar_signal"

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarCmSignal:Landroid/preference/ListPreference;

    .line 69
    iget-object v9, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarClock:Landroid/preference/CheckBoxPreference;

    const-string v6, "status_bar_clock"

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_3

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 70
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 73
    const-string v6, "status_bar_clock"

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    const-string v9, "status_bar_am_pm"

    invoke-virtual {v1, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 85
    :goto_1
    iget-object v9, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarBrightnessControl:Landroid/preference/CheckBoxPreference;

    const-string v6, "status_bar_brightness_control"

    invoke-static {v2, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_5

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 87
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarBrightnessControl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 90
    :try_start_0
    const-string v6, "screen_brightness_mode"

    invoke-static {v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_0

    .line 92
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarBrightnessControl:Landroid/preference/CheckBoxPreference;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 93
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarBrightnessControl:Landroid/preference/CheckBoxPreference;

    const v9, 0x7f08023a

    invoke-virtual {v6, v9}, Landroid/preference/CheckBoxPreference;->setSummary(I)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    :goto_3
    const-string v6, "status_bar_battery"

    invoke-static {v2, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 99
    .local v5, statusBarBattery:I
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarBattery:Landroid/preference/ListPreference;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 100
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarBattery:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarBattery:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarBattery:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 103
    const-string v6, "status_bar_signal"

    invoke-static {v2, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 104
    .local v3, signalStyle:I
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarCmSignal:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 105
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarCmSignal:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarCmSignal:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarCmSignal:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    const-string v6, "status_bar_notif_count"

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarNotifCount:Landroid/preference/CheckBoxPreference;

    .line 109
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarNotifCount:Landroid/preference/CheckBoxPreference;

    const-string v9, "status_bar_notif_count"

    invoke-static {v2, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_6

    :goto_4
    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 111
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarNotifCount:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 113
    const-string v6, "status_bar_general"

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 116
    .local v0, generalCategory:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 117
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarCmSignal:Landroid/preference/ListPreference;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 121
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarBrightnessControl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 123
    :cond_2
    return-void

    .end local v0           #generalCategory:Landroid/preference/PreferenceCategory;
    .end local v3           #signalStyle:I
    .end local v5           #statusBarBattery:I
    :cond_3
    move v6, v8

    .line 69
    goto/16 :goto_0

    .line 76
    :cond_4
    const-string v6, "status_bar_am_pm"

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarAmPm:Landroid/preference/ListPreference;

    .line 77
    const-string v6, "status_bar_am_pm"

    const/4 v9, 0x2

    invoke-static {v2, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 80
    .local v4, statusBarAmPm:I
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarAmPm:Landroid/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 81
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarAmPm:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarAmPm:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarAmPm:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1

    .end local v4           #statusBarAmPm:I
    :cond_5
    move v6, v8

    .line 85
    goto/16 :goto_2

    .restart local v3       #signalStyle:I
    .restart local v5       #statusBarBattery:I
    :cond_6
    move v7, v8

    .line 109
    goto :goto_4

    .line 95
    .end local v3           #signalStyle:I
    .end local v5           #statusBarBattery:I
    :catch_0
    move-exception v6

    goto/16 :goto_3
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 127
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 128
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v8, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarAmPm:Landroid/preference/ListPreference;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarAmPm:Landroid/preference/ListPreference;

    if-ne p1, v8, :cond_0

    move-object v6, p2

    .line 129
    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 130
    .local v3, statusBarAmPm:I
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarAmPm:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 131
    .local v0, index:I
    const-string v6, "status_bar_am_pm"

    invoke-static {v1, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarAmPm:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarAmPm:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v8, v8, v0

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 161
    .end local v0           #index:I
    .end local v3           #statusBarAmPm:I
    :goto_0
    return v7

    .line 134
    .restart local p2
    :cond_0
    iget-object v8, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarBattery:Landroid/preference/ListPreference;

    if-ne p1, v8, :cond_1

    move-object v6, p2

    .line 135
    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 136
    .local v4, statusBarBattery:I
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarBattery:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 137
    .restart local v0       #index:I
    const-string v6, "status_bar_battery"

    invoke-static {v1, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarBattery:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarBattery:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v8, v8, v0

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 140
    .end local v0           #index:I
    .end local v4           #statusBarBattery:I
    .restart local p2
    :cond_1
    iget-object v8, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarCmSignal:Landroid/preference/ListPreference;

    if-ne p1, v8, :cond_2

    move-object v6, p2

    .line 141
    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 142
    .local v2, signalStyle:I
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarCmSignal:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 143
    .restart local v0       #index:I
    const-string v6, "status_bar_signal"

    invoke-static {v1, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 144
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarCmSignal:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarCmSignal:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v8, v8, v0

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 146
    .end local v0           #index:I
    .end local v2           #signalStyle:I
    .restart local p2
    :cond_2
    iget-object v8, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarClock:Landroid/preference/CheckBoxPreference;

    if-ne p1, v8, :cond_4

    .line 147
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 148
    .local v5, value:Z
    const-string v8, "status_bar_clock"

    if-eqz v5, :cond_3

    move v6, v7

    :cond_3
    invoke-static {v1, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 150
    .end local v5           #value:Z
    .restart local p2
    :cond_4
    iget-object v8, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarBrightnessControl:Landroid/preference/CheckBoxPreference;

    if-ne p1, v8, :cond_6

    .line 151
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 152
    .restart local v5       #value:Z
    const-string v8, "status_bar_brightness_control"

    if-eqz v5, :cond_5

    move v6, v7

    :cond_5
    invoke-static {v1, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 155
    .end local v5           #value:Z
    .restart local p2
    :cond_6
    iget-object v8, p0, Lcom/android/OriginalSettings/cyanogenmod/StatusBar;->mStatusBarNotifCount:Landroid/preference/CheckBoxPreference;

    if-ne p1, v8, :cond_8

    .line 156
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 157
    .restart local v5       #value:Z
    const-string v8, "status_bar_notif_count"

    if-eqz v5, :cond_7

    move v6, v7

    :cond_7
    invoke-static {v1, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .end local v5           #value:Z
    .restart local p2
    :cond_8
    move v7, v6

    .line 161
    goto/16 :goto_0
.end method
