.class public Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "SystemSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBatteryPulse:Landroid/preference/PreferenceScreen;

.field private mExpandedDesktopNoNavbarPref:Landroid/preference/CheckBoxPreference;

.field private mExpandedDesktopPref:Landroid/preference/ListPreference;

.field private mIsPrimary:Z

.field private mNotificationPulse:Landroid/preference/PreferenceScreen;

.field private mPieControl:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateBatteryPulseDescription()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 210
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_light_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0801a6

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0801a7

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateExpandedDesktop(I)V
    .locals 6
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 228
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 229
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 230
    .local v1, res:Landroid/content/res/Resources;
    const/4 v2, -0x1

    .line 232
    .local v2, summary:I
    const-string v3, "expanded_desktop_style"

    invoke-static {v0, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 234
    if-nez p1, :cond_2

    .line 236
    const-string v3, "power_menu_expanded_desktop_enabled"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 237
    const-string v3, "expanded_desktop_state"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 238
    const v2, 0x7f080225

    .line 247
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mExpandedDesktopPref:Landroid/preference/ListPreference;

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 248
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mExpandedDesktopPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 250
    :cond_1
    return-void

    .line 239
    :cond_2
    if-ne p1, v4, :cond_3

    .line 240
    const-string v3, "power_menu_expanded_desktop_enabled"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 241
    const v2, 0x7f080226

    goto :goto_0

    .line 242
    :cond_3
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 243
    const-string v3, "power_menu_expanded_desktop_enabled"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 244
    const v2, 0x7f080227

    goto :goto_0
.end method

.method private updateLightPulseDescription()V
    .locals 3

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_pulse"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0801a6

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0801a7

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updatePieControlDescription()V
    .locals 3

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pie_controls"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mPieControl:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0802e8

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mPieControl:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0802e9

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 68
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v7, 0x7f050047

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->addPreferencesFromResource(I)V

    .line 71
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 75
    .local v3, prefScreen:Landroid/preference/PreferenceScreen;
    const/4 v4, 0x0

    .line 76
    .local v4, removeKeys:Z
    const/4 v5, 0x0

    .line 78
    .local v5, removeNavbar:Z
    const-string v7, "navigation_bar_category"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 81
    .local v2, navbarCategory:Landroid/preference/PreferenceCategory;
    const-string v7, "window"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v6

    .line 84
    .local v6, windowManager:Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v6}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-eqz v7, :cond_5

    .line 85
    const/4 v4, 0x1

    .line 93
    :goto_0
    if-eqz v4, :cond_0

    .line 94
    const-string v7, "hardware_keys"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 96
    :cond_0
    if-eqz v5, :cond_1

    .line 97
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 101
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-nez v7, :cond_6

    move v7, v8

    :goto_1
    iput-boolean v7, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mIsPrimary:Z

    .line 102
    iget-boolean v7, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mIsPrimary:Z

    if-eqz v7, :cond_7

    .line 105
    const-string v7, "battery_light"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    .line 106
    iget-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    if-eqz v7, :cond_2

    .line 107
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x1110029

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 109
    iget-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 110
    iput-object v11, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    .line 120
    :cond_2
    :goto_2
    const-string v7, "notification_pulse"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    .line 121
    iget-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    if-eqz v7, :cond_3

    .line 122
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x1110028

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 123
    iget-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 124
    iput-object v11, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    .line 129
    :cond_3
    const-string v7, "pie_control"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mPieControl:Landroid/preference/PreferenceScreen;

    .line 130
    iget-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mPieControl:Landroid/preference/PreferenceScreen;

    if-eqz v7, :cond_4

    if-eqz v5, :cond_4

    .line 132
    iget-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mPieControl:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 133
    iput-object v11, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mPieControl:Landroid/preference/PreferenceScreen;

    .line 137
    :cond_4
    const-string v7, "expanded_desktop"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mExpandedDesktopPref:Landroid/preference/ListPreference;

    .line 138
    const-string v7, "expanded_desktop_no_navbar"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mExpandedDesktopNoNavbarPref:Landroid/preference/CheckBoxPreference;

    .line 140
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "expanded_desktop_style"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 145
    .local v1, expandedDesktopValue:I
    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 146
    iget-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mExpandedDesktopPref:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 147
    iget-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mExpandedDesktopPref:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 148
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->updateExpandedDesktop(I)V

    .line 149
    iget-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mExpandedDesktopNoNavbarPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 160
    :goto_3
    const-string v7, "lock_clock"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->removePreferenceIfPackageNotInstalled(Landroid/preference/Preference;)Z

    .line 161
    return-void

    .line 87
    .end local v1           #expandedDesktopValue:I
    :cond_5
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_6
    move v7, v9

    .line 101
    goto/16 :goto_1

    .line 115
    :cond_7
    const-string v7, "battery_light"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 151
    .restart local v1       #expandedDesktopValue:I
    :cond_8
    :try_start_2
    iget-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mExpandedDesktopNoNavbarPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 152
    iget-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mExpandedDesktopNoNavbarPref:Landroid/preference/CheckBoxPreference;

    if-lez v1, :cond_9

    :goto_4
    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 153
    iget-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mExpandedDesktopPref:Landroid/preference/ListPreference;

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Landroid/os/RemoteException;
    const-string v7, "SystemSettings"

    const-string v8, "Error getting navigation bar status"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_9
    move v8, v9

    .line 152
    goto :goto_4

    .line 89
    .end local v1           #expandedDesktopValue:I
    :catch_1
    move-exception v7

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 183
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 184
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 187
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mExpandedDesktopPref:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_1

    .line 188
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 189
    .local v0, expandedDesktopValue:I
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->updateExpandedDesktop(I)V

    move v2, v3

    .line 197
    .end local v0           #expandedDesktopValue:I
    :cond_0
    :goto_0
    return v2

    .line 191
    .restart local p2
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mExpandedDesktopNoNavbarPref:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_0

    .line 192
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 193
    .local v1, value:Z
    if-eqz v1, :cond_2

    const/4 v2, 0x2

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->updateExpandedDesktop(I)V

    move v2, v3

    .line 194
    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 168
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mNotificationPulse:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->updateLightPulseDescription()V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mPieControl:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 172
    invoke-direct {p0}, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->updatePieControlDescription()V

    .line 176
    :cond_1
    iget-boolean v0, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mIsPrimary:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->mBatteryPulse:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    .line 177
    invoke-direct {p0}, Lcom/android/OriginalSettings/cyanogenmod/SystemSettings;->updateBatteryPulseDescription()V

    .line 179
    :cond_2
    return-void
.end method
