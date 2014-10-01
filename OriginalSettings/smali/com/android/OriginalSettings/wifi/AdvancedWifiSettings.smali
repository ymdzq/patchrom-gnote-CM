.class public Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initPreferences()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 75
    const-string v9, "notify_open_networks"

    invoke-virtual {p0, v9}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 77
    .local v2, notifyOpenNetworks:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "wifi_networks_available_notification_on"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_5

    move v9, v10

    :goto_0
    invoke-virtual {v2, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 79
    iget-object v9, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    invoke-virtual {v2, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 81
    const-string v9, "wifi_poor_network_detection"

    invoke-virtual {p0, v9}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 83
    .local v3, poorNetworkDetection:Landroid/preference/CheckBoxPreference;
    if-eqz v3, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 85
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 94
    :cond_0
    :goto_1
    const-string v9, "suspend_optimizations"

    invoke-virtual {p0, v9}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 96
    .local v6, suspendOptimizations:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "wifi_suspend_optimizations_enabled"

    invoke-static {v9, v12, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_8

    :goto_2
    invoke-virtual {v6, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 99
    const-string v9, "frequency_band"

    invoke-virtual {p0, v9}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 101
    .local v1, frequencyPref:Landroid/preference/ListPreference;
    iget-object v9, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 102
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 103
    iget-object v9, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I

    move-result v7

    .line 104
    .local v7, value:I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_9

    .line 105
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 116
    .end local v7           #value:I
    :cond_1
    :goto_3
    const-string v9, "wifi_countrycode"

    invoke-virtual {p0, v9}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 117
    .local v0, ccodePref:Landroid/preference/ListPreference;
    if-eqz v0, :cond_2

    .line 118
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 119
    iget-object v9, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v7

    .line 120
    .local v7, value:Ljava/lang/String;
    if-eqz v7, :cond_b

    .line 121
    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 127
    .end local v7           #value:Ljava/lang/String;
    :cond_2
    :goto_4
    const-string v9, "sleep_policy"

    invoke-virtual {p0, v9}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 128
    .local v4, sleepPolicyPref:Landroid/preference/ListPreference;
    if-eqz v4, :cond_4

    .line 129
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 130
    const v9, 0x7f0c001b

    invoke-virtual {v4, v9}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 132
    :cond_3
    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_sleep_policy"

    const/4 v11, 0x2

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 136
    .local v7, value:I
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, stringValue:Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 138
    invoke-direct {p0, v4, v5}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 141
    .end local v5           #stringValue:Ljava/lang/String;
    .end local v7           #value:I
    :cond_4
    const-string v9, "wifi_priority"

    invoke-virtual {p0, v9}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 142
    .local v8, wifiPriority:Landroid/preference/Preference;
    iget-object v9, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 143
    return-void

    .end local v0           #ccodePref:Landroid/preference/ListPreference;
    .end local v1           #frequencyPref:Landroid/preference/ListPreference;
    .end local v3           #poorNetworkDetection:Landroid/preference/CheckBoxPreference;
    .end local v4           #sleepPolicyPref:Landroid/preference/ListPreference;
    .end local v6           #suspendOptimizations:Landroid/preference/CheckBoxPreference;
    .end local v8           #wifiPriority:Landroid/preference/Preference;
    :cond_5
    move v9, v11

    .line 77
    goto/16 :goto_0

    .line 87
    .restart local v3       #poorNetworkDetection:Landroid/preference/CheckBoxPreference;
    :cond_6
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_7

    move v9, v10

    :goto_5
    invoke-virtual {v3, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_7
    move v9, v11

    goto :goto_5

    .restart local v6       #suspendOptimizations:Landroid/preference/CheckBoxPreference;
    :cond_8
    move v10, v11

    .line 96
    goto/16 :goto_2

    .line 107
    .restart local v1       #frequencyPref:Landroid/preference/ListPreference;
    .restart local v7       #value:I
    :cond_9
    const-string v9, "AdvancedWifiSettings"

    const-string v10, "Failed to fetch frequency band"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 110
    .end local v7           #value:I
    :cond_a
    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 123
    .restart local v0       #ccodePref:Landroid/preference/ListPreference;
    .local v7, value:Ljava/lang/String;
    :cond_b
    const-string v9, "AdvancedWifiSettings"

    const-string v10, "Failed to fetch country code"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private refreshWifiInfo()V
    .locals 7

    .prologue
    const v6, 0x7f080629

    .line 228
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 230
    .local v2, wifiInfo:Landroid/net/wifi/WifiInfo;
    const-string v5, "mac_address"

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 231
    .local v4, wifiMacAddressPref:Landroid/preference/Preference;
    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 232
    .local v1, macAddress:Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .end local v1           #macAddress:Ljava/lang/String;
    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 235
    const-string v5, "current_ip_address"

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 236
    .local v3, wifiIpAddressPref:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/OriginalSettings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, ipAddress:Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .end local v0           #ipAddress:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 239
    return-void

    .line 231
    .end local v3           #wifiIpAddressPref:Landroid/preference/Preference;
    :cond_1
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 232
    .restart local v1       #macAddress:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 7
    .parameter "sleepPolicyPref"
    .parameter "value"

    .prologue
    .line 146
    if-eqz p2, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c001c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, values:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v2, 0x7f0c001b

    .line 150
    .local v2, summaryArrayResId:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, summaries:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 152
    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 153
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 154
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 163
    .end local v0           #i:I
    .end local v1           #summaries:[Ljava/lang/String;
    .end local v2           #summaryArrayResId:I
    .end local v3           #values:[Ljava/lang/String;
    :goto_2
    return-void

    .line 148
    .restart local v3       #values:[Ljava/lang/String;
    :cond_0
    const v2, 0x7f0c001a

    goto :goto_0

    .line 151
    .restart local v0       #i:I
    .restart local v1       #summaries:[Ljava/lang/String;
    .restart local v2       #summaryArrayResId:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 161
    .end local v0           #i:I
    .end local v1           #summaries:[Ljava/lang/String;
    .end local v2           #summaryArrayResId:I
    .end local v3           #values:[Ljava/lang/String;
    :cond_2
    const-string v4, ""

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 162
    const-string v4, "AdvancedWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid sleep policy value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 64
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 65
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f050054

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->addPreferencesFromResource(I)V

    .line 59
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 189
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, key:Ljava/lang/String;
    const-string v4, "frequency_band"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 193
    :try_start_0
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v8, 0x1

    invoke-virtual {v7, v4, v8}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_0
    const-string v4, "wifi_countrycode"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 203
    :try_start_1
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    const/4 v8, 0x1

    invoke-virtual {v7, v4, v8}, Landroid/net/wifi/WifiManager;->setCountryCode(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 211
    :cond_1
    const-string v4, "sleep_policy"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 213
    :try_start_2
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 214
    .local v3, stringValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "wifi_sleep_policy"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 216
    invoke-direct {p0, p1, v3}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v3           #stringValue:Ljava/lang/String;
    :cond_2
    move v4, v6

    .line 224
    :goto_0
    return v4

    .line 194
    :catch_0
    move-exception v1

    .line 195
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f080565

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 197
    goto :goto_0

    .line 204
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 205
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f080064

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 207
    goto :goto_0

    .line 217
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 218
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f08050d

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 220
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 167
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, key:Ljava/lang/String;
    const-string v3, "notify_open_networks"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_networks_available_notification_on"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 184
    :goto_0
    return v2

    .line 173
    .restart local p2
    :cond_1
    const-string v3, "wifi_poor_network_detection"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 174
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_watchdog_poor_network_test_enabled"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 177
    .restart local p2
    :cond_3
    const-string v3, "suspend_optimizations"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 178
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_suspend_optimizations_enabled"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 182
    .restart local p2
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 70
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->initPreferences()V

    .line 71
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;->refreshWifiInfo()V

    .line 72
    return-void
.end method
