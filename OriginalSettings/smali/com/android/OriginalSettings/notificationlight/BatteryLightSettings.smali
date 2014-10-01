.class public Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "BatteryLightSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mFullColorPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

.field private mLightEnabled:Z

.field private mLightPulse:Z

.field private mLowColorPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

.field private mMediumColorPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

.field private mMultiColorLed:Z

.field private mOptionsMenu:Landroid/view/Menu;

.field private mPulsePref:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private refreshDefault()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 83
    .local v7, resolver:Landroid/content/ContentResolver;
    const-string v8, "battery_light_low_color"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e001e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 86
    .local v4, lowColor:I
    const-string v8, "battery_light_medium_color"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e001f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 89
    .local v5, mediumColor:I
    const-string v8, "battery_light_full_color"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10e0020

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 93
    .local v2, fullColor:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 94
    .local v6, prefSet:Landroid/preference/PreferenceScreen;
    const-string v8, "general_section"

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 95
    .local v3, generalPrefs:Landroid/preference/PreferenceGroup;
    if-eqz v3, :cond_0

    .line 98
    const-string v8, "battery_light"

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 99
    .local v0, cPref:Landroid/preference/CheckBoxPreference;
    iget-boolean v8, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mLightEnabled:Z

    invoke-virtual {v0, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 100
    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 103
    const-string v8, "battery_low_pulse"

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mPulsePref:Landroid/preference/CheckBoxPreference;

    .line 104
    iget-object v8, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mPulsePref:Landroid/preference/CheckBoxPreference;

    iget-boolean v9, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mLightPulse:Z

    invoke-virtual {v8, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 105
    iget-object v8, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mPulsePref:Landroid/preference/CheckBoxPreference;

    iget-boolean v9, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mLightEnabled:Z

    invoke-virtual {v8, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 106
    iget-object v8, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mPulsePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 109
    .end local v0           #cPref:Landroid/preference/CheckBoxPreference;
    :cond_0
    const-string v8, "colors_list"

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 110
    .local v1, colorPrefs:Landroid/preference/PreferenceGroup;
    if-eqz v1, :cond_1

    .line 111
    iget-boolean v8, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mMultiColorLed:Z

    if-nez v8, :cond_2

    .line 112
    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 131
    :cond_1
    :goto_0
    return-void

    .line 115
    :cond_2
    const-string v8, "low_color"

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    iput-object v8, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mLowColorPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    .line 116
    iget-object v8, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mLowColorPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v8, v4, v11, v11, v11}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->setAllValues(IIIZ)V

    .line 117
    iget-object v8, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mLowColorPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    iget-boolean v9, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mLightEnabled:Z

    invoke-virtual {v8, v9}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->setEnabled(Z)V

    .line 118
    iget-object v8, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mLowColorPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v8, p0}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 120
    const-string v8, "medium_color"

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    iput-object v8, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mMediumColorPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    .line 121
    iget-object v8, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mMediumColorPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v8, v5, v11, v11, v11}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->setAllValues(IIIZ)V

    .line 122
    iget-object v8, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mMediumColorPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    iget-boolean v9, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mLightEnabled:Z

    invoke-virtual {v8, v9}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->setEnabled(Z)V

    .line 123
    iget-object v8, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mMediumColorPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v8, p0}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 125
    const-string v8, "full_color"

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    iput-object v8, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mFullColorPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    .line 126
    iget-object v8, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mFullColorPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v8, v2, v11, v11, v11}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->setAllValues(IIIZ)V

    .line 127
    iget-object v8, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mFullColorPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    iget-boolean v9, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mLightEnabled:Z

    invoke-virtual {v8, v9}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->setEnabled(Z)V

    .line 128
    iget-object v8, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mFullColorPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v8, p0}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 56
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v1, 0x7f05000a

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->addPreferencesFromResource(I)V

    .line 60
    invoke-virtual {p0}, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 61
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "battery_light_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mLightEnabled:Z

    .line 63
    const-string v1, "battery_light_pulse"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v3, v2

    :cond_0
    iput-boolean v3, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mLightPulse:Z

    .line 67
    invoke-virtual {p0}, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x111002a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mMultiColorLed:Z

    .line 69
    iget-boolean v1, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mMultiColorLed:Z

    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->setHasOptionsMenu(Z)V

    .line 73
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 61
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 159
    iput-object p1, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mOptionsMenu:Landroid/view/Menu;

    .line 161
    iget-object v0, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mOptionsMenu:Landroid/view/Menu;

    const/4 v1, 0x1

    const v2, 0x7f0800d8

    invoke-interface {v0, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020088

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 165
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 169
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 174
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 171
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->resetColors()V

    .line 172
    const/4 v0, 0x1

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 193
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, key:Ljava/lang/String;
    const-string v4, "battery_light"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 196
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mLightEnabled:Z

    .line 197
    invoke-virtual {p0}, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "battery_light_enabled"

    iget-boolean v6, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mLightEnabled:Z

    if-eqz v6, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 200
    iget-object v2, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mPulsePref:Landroid/preference/CheckBoxPreference;

    iget-boolean v4, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mLightEnabled:Z

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 201
    iget-boolean v2, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mMultiColorLed:Z

    if-eqz v2, :cond_1

    .line 202
    iget-object v2, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mLowColorPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    iget-boolean v4, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mLightEnabled:Z

    invoke-virtual {v2, v4}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->setEnabled(Z)V

    .line 203
    iget-object v2, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mMediumColorPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    iget-boolean v4, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mLightEnabled:Z

    invoke-virtual {v2, v4}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->setEnabled(Z)V

    .line 204
    iget-object v2, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mFullColorPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    iget-boolean v4, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mLightEnabled:Z

    invoke-virtual {v2, v4}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->setEnabled(Z)V

    .line 214
    :cond_1
    :goto_0
    return v3

    .line 206
    .restart local p2
    :cond_2
    const-string v4, "battery_low_pulse"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 207
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mLightPulse:Z

    .line 208
    invoke-virtual {p0}, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "battery_light_pulse"

    iget-boolean v6, p0, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->mLightPulse:Z

    if-eqz v6, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .restart local p2
    :cond_4
    move-object v1, p1

    .line 211
    check-cast v1, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    .line 212
    .local v1, tPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;
    invoke-virtual {v1}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->getColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->updateValues(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 78
    invoke-direct {p0}, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->refreshDefault()V

    .line 79
    return-void
.end method

.method protected resetColors()V
    .locals 4

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 180
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 183
    .local v0, res:Landroid/content/res/Resources;
    const-string v2, "battery_light_low_color"

    const v3, 0x10e001e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 185
    const-string v2, "battery_light_medium_color"

    const v3, 0x10e001f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 187
    const-string v2, "battery_light_full_color"

    const v3, 0x10e0020

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 189
    invoke-direct {p0}, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->refreshDefault()V

    .line 190
    return-void
.end method

.method protected updateValues(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3
    .parameter "key"
    .parameter "color"

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 142
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "low_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    const-string v1, "battery_light_low_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 144
    invoke-direct {p0}, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->refreshDefault()V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    const-string v1, "medium_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 147
    const-string v1, "battery_light_medium_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 148
    invoke-direct {p0}, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->refreshDefault()V

    goto :goto_0

    .line 150
    :cond_2
    const-string v1, "full_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    const-string v1, "battery_light_full_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 152
    invoke-direct {p0}, Lcom/android/OriginalSettings/notificationlight/BatteryLightSettings;->refreshDefault()V

    goto :goto_0
.end method
