.class public Lcom/android/OriginalSettings/WirelessSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "WirelessSettings.java"


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/OriginalSettings/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

.field private mNsdEnabler:Lcom/android/OriginalSettings/NsdEnabler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 85
    invoke-static {p0}, Lcom/android/OriginalSettings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v1

    .line 89
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, toggleable:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 245
    const v0, 0x7f0809f3

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 235
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 236
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 238
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/OriginalSettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/OriginalSettings/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/OriginalSettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/OriginalSettings/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 241
    .end local v0           #isChoiceYes:Ljava/lang/Boolean;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 21
    .parameter "savedInstanceState"

    .prologue
    .line 96
    invoke-super/range {p0 .. p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v19, 0x7f050058

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->addPreferencesFromResource(I)V

    .line 100
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    if-eqz v19, :cond_e

    const/4 v8, 0x1

    .line 102
    .local v8, isSecondaryUser:Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 103
    .local v2, activity:Landroid/app/Activity;
    const-string v19, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    .line 104
    const-string v19, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    .line 105
    .local v12, nfc:Landroid/preference/CheckBoxPreference;
    const-string v19, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 106
    .local v3, androidBeam:Landroid/preference/PreferenceScreen;
    const-string v19, "toggle_nsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/CheckBoxPreference;

    .line 108
    .local v13, nsd:Landroid/preference/CheckBoxPreference;
    new-instance v19, Lcom/android/OriginalSettings/AirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v2, v1}, Lcom/android/OriginalSettings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/OriginalSettings/AirplaneModeEnabler;

    .line 109
    new-instance v19, Lcom/android/OriginalSettings/nfc/NfcEnabler;

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v12, v3}, Lcom/android/OriginalSettings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/WirelessSettings;->mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 115
    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "airplane_mode_toggleable_radios"

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 119
    .local v18, toggleable:Ljava/lang/String;
    if-nez v8, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x1110045

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    if-eqz v19, :cond_f

    const/4 v9, 0x1

    .line 121
    .local v9, isWimaxEnabled:Z
    :goto_1
    if-nez v9, :cond_10

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    .line 123
    .local v17, root:Landroid/preference/PreferenceScreen;
    const-string v19, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 124
    .local v16, ps:Landroid/preference/Preference;
    if-eqz v16, :cond_0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 133
    .end local v16           #ps:Landroid/preference/Preference;
    .end local v17           #root:Landroid/preference/PreferenceScreen;
    :cond_0
    :goto_2
    if-eqz v18, :cond_1

    const-string v19, "wifi"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 134
    :cond_1
    const-string v19, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    const-string v20, "toggle_airplane"

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 136
    :cond_2
    if-eqz v8, :cond_3

    .line 137
    const-string v19, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 141
    :cond_3
    if-eqz v18, :cond_4

    const-string v19, "bluetooth"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 146
    :cond_4
    if-eqz v18, :cond_5

    const-string v19, "nfc"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 147
    :cond_5
    const-string v19, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    const-string v20, "toggle_airplane"

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 148
    const-string v19, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    const-string v20, "toggle_airplane"

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 152
    :cond_6
    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v19, v0

    if-nez v19, :cond_7

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 156
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/WirelessSettings;->mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    .line 160
    :cond_7
    if-nez v8, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 161
    :cond_8
    const-string v19, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->removePreference(Ljava/lang/String;)V

    .line 165
    :cond_9
    const-string v19, "proxy_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 166
    .local v11, mGlobalProxy:Landroid/preference/Preference;
    const-string v19, "device_policy"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/admin/DevicePolicyManager;

    .line 169
    .local v10, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 170
    invoke-virtual {v10}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v19

    if-nez v19, :cond_12

    const/16 v19, 0x1

    :goto_3
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 173
    const-string v19, "connectivity"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 175
    .local v4, cm:Landroid/net/ConnectivityManager;
    if-nez v8, :cond_a

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v19

    if-nez v19, :cond_13

    .line 176
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    const-string v20, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 183
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 184
    .local v15, pm:Landroid/content/pm/PackageManager;
    const-string v19, "android.hardware.telephony"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    .line 185
    .local v5, hasPhoneFeatures:Z
    const/4 v7, 0x0

    .line 186
    .local v7, isCellBroadcastAppLinkEnabled:Z
    if-eqz v5, :cond_b

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x111004a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 190
    if-eqz v7, :cond_b

    .line 191
    :try_start_0
    const-string v19, "com.android.cellbroadcastreceiver"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 193
    const/4 v7, 0x0

    .line 200
    :cond_b
    :goto_5
    if-nez v8, :cond_c

    if-nez v7, :cond_d

    .line 201
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    .line 202
    .restart local v17       #root:Landroid/preference/PreferenceScreen;
    const-string v19, "cell_broadcast_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 203
    .restart local v16       #ps:Landroid/preference/Preference;
    if-eqz v16, :cond_d

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 205
    .end local v16           #ps:Landroid/preference/Preference;
    .end local v17           #root:Landroid/preference/PreferenceScreen;
    :cond_d
    return-void

    .line 100
    .end local v2           #activity:Landroid/app/Activity;
    .end local v3           #androidBeam:Landroid/preference/PreferenceScreen;
    .end local v4           #cm:Landroid/net/ConnectivityManager;
    .end local v5           #hasPhoneFeatures:Z
    .end local v7           #isCellBroadcastAppLinkEnabled:Z
    .end local v8           #isSecondaryUser:Z
    .end local v9           #isWimaxEnabled:Z
    .end local v10           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v11           #mGlobalProxy:Landroid/preference/Preference;
    .end local v12           #nfc:Landroid/preference/CheckBoxPreference;
    .end local v13           #nsd:Landroid/preference/CheckBoxPreference;
    .end local v15           #pm:Landroid/content/pm/PackageManager;
    .end local v18           #toggleable:Ljava/lang/String;
    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 119
    .restart local v2       #activity:Landroid/app/Activity;
    .restart local v3       #androidBeam:Landroid/preference/PreferenceScreen;
    .restart local v8       #isSecondaryUser:Z
    .restart local v12       #nfc:Landroid/preference/CheckBoxPreference;
    .restart local v13       #nsd:Landroid/preference/CheckBoxPreference;
    .restart local v18       #toggleable:Ljava/lang/String;
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 126
    .restart local v9       #isWimaxEnabled:Z
    :cond_10
    if-eqz v18, :cond_11

    const-string v19, "wimax"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    if-eqz v9, :cond_0

    .line 128
    :cond_11
    const-string v19, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 129
    .restart local v16       #ps:Landroid/preference/Preference;
    const-string v19, "toggle_airplane"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 170
    .end local v16           #ps:Landroid/preference/Preference;
    .restart local v10       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v11       #mGlobalProxy:Landroid/preference/Preference;
    :cond_12
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 178
    .restart local v4       #cm:Landroid/net/ConnectivityManager;
    :cond_13
    const-string v19, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 179
    .local v14, p:Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/OriginalSettings/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_4

    .line 196
    .end local v14           #p:Landroid/preference/Preference;
    .restart local v5       #hasPhoneFeatures:Z
    .restart local v7       #isCellBroadcastAppLinkEnabled:Z
    .restart local v15       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v6

    .line 197
    .local v6, ignored:Ljava/lang/IllegalArgumentException;
    const/4 v7, 0x0

    goto :goto_5
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 222
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 224
    iget-object v0, p0, Lcom/android/OriginalSettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/OriginalSettings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/AirplaneModeEnabler;->pause()V

    .line 225
    iget-object v0, p0, Lcom/android/OriginalSettings/WirelessSettings;->mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/OriginalSettings/WirelessSettings;->mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->pause()V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/WirelessSettings;->mNsdEnabler:Lcom/android/OriginalSettings/NsdEnabler;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/android/OriginalSettings/WirelessSettings;->mNsdEnabler:Lcom/android/OriginalSettings/NsdEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/NsdEnabler;->pause()V

    .line 231
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 72
    iget-object v1, p0, Lcom/android/OriginalSettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/OriginalSettings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 81
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 209
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 211
    iget-object v0, p0, Lcom/android/OriginalSettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/OriginalSettings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/AirplaneModeEnabler;->resume()V

    .line 212
    iget-object v0, p0, Lcom/android/OriginalSettings/WirelessSettings;->mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/OriginalSettings/WirelessSettings;->mNfcEnabler:Lcom/android/OriginalSettings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/nfc/NfcEnabler;->resume()V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/WirelessSettings;->mNsdEnabler:Lcom/android/OriginalSettings/NsdEnabler;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/android/OriginalSettings/WirelessSettings;->mNsdEnabler:Lcom/android/OriginalSettings/NsdEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/NsdEnabler;->resume()V

    .line 218
    :cond_1
    return-void
.end method
