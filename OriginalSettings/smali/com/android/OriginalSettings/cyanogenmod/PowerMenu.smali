.class public Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "PowerMenu.java"


# instance fields
.field private mAirplanePref:Landroid/preference/CheckBoxPreference;

.field private mExpandedDesktopPref:Landroid/preference/CheckBoxPreference;

.field private mProfilesPref:Landroid/preference/CheckBoxPreference;

.field private mRebootPref:Landroid/preference/CheckBoxPreference;

.field private mScreenshotPref:Landroid/preference/CheckBoxPreference;

.field private mSoundPref:Landroid/preference/CheckBoxPreference;

.field private mUserPref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 51
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v1, 0x7f050025

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->addPreferencesFromResource(I)V

    .line 55
    const-string v1, "power_menu_reboot"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->mRebootPref:Landroid/preference/CheckBoxPreference;

    .line 56
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->mRebootPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "power_menu_reboot_enabled"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 59
    const-string v1, "power_menu_screenshot"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->mScreenshotPref:Landroid/preference/CheckBoxPreference;

    .line 60
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->mScreenshotPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "power_menu_screenshot_enabled"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 63
    const-string v1, "power_menu_expanded_desktop"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->mExpandedDesktopPref:Landroid/preference/CheckBoxPreference;

    .line 64
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->mExpandedDesktopPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "power_menu_expanded_desktop_enabled"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "expanded_desktop_style"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    move v0, v2

    .line 69
    .local v0, enabled:Z
    :goto_3
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->mExpandedDesktopPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 71
    const-string v1, "power_menu_profiles"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->mProfilesPref:Landroid/preference/CheckBoxPreference;

    .line 72
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->mProfilesPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "power_menu_profiles_enabled"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "system_profiles_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_5

    move v0, v2

    .line 77
    :goto_5
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->mProfilesPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 79
    const-string v1, "power_menu_airplane"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->mAirplanePref:Landroid/preference/CheckBoxPreference;

    .line 80
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->mAirplanePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "power_menu_airplane_enabled"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_6

    move v1, v2

    :goto_6
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 83
    const-string v1, "power_menu_user"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->mUserPref:Landroid/preference/CheckBoxPreference;

    .line 84
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v1

    if-nez v1, :cond_7

    .line 86
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->mUserPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 92
    :goto_7
    const-string v1, "power_menu_sound"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->mSoundPref:Landroid/preference/CheckBoxPreference;

    .line 93
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->mSoundPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "power_menu_silent_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_9

    :goto_8
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 96
    return-void

    .end local v0           #enabled:Z
    :cond_0
    move v1, v3

    .line 56
    goto/16 :goto_0

    :cond_1
    move v1, v3

    .line 60
    goto/16 :goto_1

    :cond_2
    move v1, v3

    .line 64
    goto/16 :goto_2

    :cond_3
    move v0, v3

    .line 67
    goto/16 :goto_3

    .restart local v0       #enabled:Z
    :cond_4
    move v1, v3

    .line 72
    goto :goto_4

    :cond_5
    move v0, v3

    .line 75
    goto :goto_5

    :cond_6
    move v1, v3

    .line 80
    goto :goto_6

    .line 88
    :cond_7
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->mUserPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "power_menu_user_enabled"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_8

    move v1, v2

    :goto_9
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    :cond_8
    move v1, v3

    goto :goto_9

    :cond_9
    move v2, v3

    .line 93
    goto :goto_8
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 102
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->mScreenshotPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_1

    .line 103
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->mScreenshotPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 104
    .local v0, value:Z
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_menu_screenshot_enabled"

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 141
    .end local v0           #value:Z
    :goto_0
    return v2

    .line 107
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->mExpandedDesktopPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_3

    .line 108
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->mExpandedDesktopPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 109
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_menu_expanded_desktop_enabled"

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 112
    .end local v0           #value:Z
    :cond_3
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->mRebootPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_5

    .line 113
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->mRebootPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 114
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_menu_reboot_enabled"

    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 117
    .end local v0           #value:Z
    :cond_5
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->mProfilesPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_7

    .line 118
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->mProfilesPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 119
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_menu_profiles_enabled"

    if-eqz v0, :cond_6

    move v1, v2

    :cond_6
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 122
    .end local v0           #value:Z
    :cond_7
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->mAirplanePref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_9

    .line 123
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->mAirplanePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 124
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_menu_airplane_enabled"

    if-eqz v0, :cond_8

    move v1, v2

    :cond_8
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 127
    .end local v0           #value:Z
    :cond_9
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->mUserPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_b

    .line 128
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->mUserPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 129
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_menu_user_enabled"

    if-eqz v0, :cond_a

    move v1, v2

    :cond_a
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 132
    .end local v0           #value:Z
    :cond_b
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->mSoundPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_d

    .line 133
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->mSoundPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 134
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/PowerMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_menu_silent_enabled"

    if-eqz v0, :cond_c

    move v1, v2

    :cond_c
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 138
    .end local v0           #value:Z
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_0
.end method
