.class public Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "HardwareKeys.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAppSwitchLongPressAction:Landroid/preference/ListPreference;

.field private mAppSwitchPressAction:Landroid/preference/ListPreference;

.field private mAssistLongPressAction:Landroid/preference/ListPreference;

.field private mAssistPressAction:Landroid/preference/ListPreference;

.field private mEnableCustomBindings:Landroid/preference/CheckBoxPreference;

.field private mHomeLongPressAction:Landroid/preference/ListPreference;

.field private mMenuLongPressAction:Landroid/preference/ListPreference;

.field private mMenuPressAction:Landroid/preference/ListPreference;

.field private mShowActionOverflow:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 21
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super/range {p0 .. p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x10e003b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 79
    .local v8, deviceKeys:I
    and-int/lit8 v17, v8, 0x1

    if-eqz v17, :cond_0

    const/4 v11, 0x1

    .line 80
    .local v11, hasHomeKey:Z
    :goto_0
    and-int/lit8 v17, v8, 0x4

    if-eqz v17, :cond_1

    const/4 v12, 0x1

    .line 81
    .local v12, hasMenuKey:Z
    :goto_1
    and-int/lit8 v17, v8, 0x8

    if-eqz v17, :cond_2

    const/4 v10, 0x1

    .line 82
    .local v10, hasAssistKey:Z
    :goto_2
    and-int/lit8 v17, v8, 0x10

    if-eqz v17, :cond_3

    const/4 v9, 0x1

    .line 84
    .local v9, hasAppSwitchKey:Z
    :goto_3
    const v17, 0x7f050018

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->addPreferencesFromResource(I)V

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    .line 87
    .local v16, prefSet:Landroid/preference/PreferenceScreen;
    const-string v17, "hardware_keys_enable_custom"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mEnableCustomBindings:Landroid/preference/CheckBoxPreference;

    .line 89
    const-string v17, "hardware_keys_home_long_press"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mHomeLongPressAction:Landroid/preference/ListPreference;

    .line 91
    const-string v17, "hardware_keys_menu_press"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mMenuPressAction:Landroid/preference/ListPreference;

    .line 93
    const-string v17, "hardware_keys_menu_long_press"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mMenuLongPressAction:Landroid/preference/ListPreference;

    .line 95
    const-string v17, "hardware_keys_assist_press"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAssistPressAction:Landroid/preference/ListPreference;

    .line 97
    const-string v17, "hardware_keys_assist_long_press"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAssistLongPressAction:Landroid/preference/ListPreference;

    .line 99
    const-string v17, "hardware_keys_app_switch_press"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAppSwitchPressAction:Landroid/preference/ListPreference;

    .line 101
    const-string v17, "hardware_keys_app_switch_long_press"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAppSwitchLongPressAction:Landroid/preference/ListPreference;

    .line 103
    const-string v17, "hardware_keys_show_overflow"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mShowActionOverflow:Landroid/preference/CheckBoxPreference;

    .line 105
    const-string v17, "hardware_keys_bindings"

    invoke-virtual/range {v16 .. v17}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    .line 108
    .local v7, bindingsCategory:Landroid/preference/PreferenceCategory;
    if-eqz v11, :cond_5

    .line 110
    if-eqz v9, :cond_4

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "key_home_long_press_action"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 117
    .local v13, homeLongPressAction:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mHomeLongPressAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mHomeLongPressAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mHomeLongPressAction:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mHomeLongPressAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 124
    .end local v13           #homeLongPressAction:I
    :goto_5
    if-eqz v12, :cond_7

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "key_menu_action"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 127
    .local v15, menuPressAction:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mMenuPressAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mMenuPressAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mMenuPressAction:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mMenuPressAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 132
    if-eqz v10, :cond_6

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "key_menu_long_press_action"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 139
    .local v14, menuLongPressAction:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mMenuLongPressAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mMenuLongPressAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mMenuLongPressAction:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mMenuLongPressAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 147
    .end local v14           #menuLongPressAction:I
    .end local v15           #menuPressAction:I
    :goto_7
    if-eqz v10, :cond_8

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "key_assist_action"

    const/16 v19, 0x3

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 150
    .local v6, assistPressAction:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAssistPressAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAssistPressAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAssistPressAction:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAssistPressAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "key_assist_long_press_action"

    const/16 v19, 0x4

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 156
    .local v5, assistLongPressAction:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAssistLongPressAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAssistLongPressAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAssistLongPressAction:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAssistLongPressAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 164
    .end local v5           #assistLongPressAction:I
    .end local v6           #assistPressAction:I
    :goto_8
    if-eqz v9, :cond_9

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "key_app_switch_action"

    const/16 v19, 0x2

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 167
    .local v4, appSwitchPressAction:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAppSwitchPressAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAppSwitchPressAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAppSwitchPressAction:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAppSwitchPressAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "key_app_switch_long_press_action"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 173
    .local v3, appSwitchLongPressAction:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAppSwitchLongPressAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAppSwitchLongPressAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAppSwitchLongPressAction:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAppSwitchLongPressAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 181
    .end local v3           #appSwitchLongPressAction:I
    .end local v4           #appSwitchPressAction:I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mEnableCustomBindings:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v19, "hardware_key_rebinding"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    const/16 v17, 0x1

    :goto_a
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mShowActionOverflow:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v19, "ui_force_overflow_button"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    const/16 v17, 0x1

    :goto_b
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 187
    return-void

    .line 79
    .end local v7           #bindingsCategory:Landroid/preference/PreferenceCategory;
    .end local v9           #hasAppSwitchKey:Z
    .end local v10           #hasAssistKey:Z
    .end local v11           #hasHomeKey:Z
    .end local v12           #hasMenuKey:Z
    .end local v16           #prefSet:Landroid/preference/PreferenceScreen;
    :cond_0
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 80
    .restart local v11       #hasHomeKey:Z
    :cond_1
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 81
    .restart local v12       #hasMenuKey:Z
    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 82
    .restart local v10       #hasAssistKey:Z
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 114
    .restart local v7       #bindingsCategory:Landroid/preference/PreferenceCategory;
    .restart local v9       #hasAppSwitchKey:Z
    .restart local v16       #prefSet:Landroid/preference/PreferenceScreen;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "key_home_long_press_action"

    const/16 v19, 0x2

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .restart local v13       #homeLongPressAction:I
    goto/16 :goto_4

    .line 121
    .end local v13           #homeLongPressAction:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mHomeLongPressAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    .line 136
    .restart local v15       #menuPressAction:I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "key_menu_long_press_action"

    const/16 v19, 0x3

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .restart local v14       #menuLongPressAction:I
    goto/16 :goto_6

    .line 143
    .end local v14           #menuLongPressAction:I
    .end local v15           #menuPressAction:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mMenuPressAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mMenuLongPressAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 160
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAssistPressAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAssistLongPressAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_8

    .line 177
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAppSwitchPressAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAppSwitchLongPressAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_9

    .line 181
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_a

    .line 184
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_b
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v3, 0x1

    .line 190
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mHomeLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_0

    move-object v2, p2

    .line 191
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 192
    .local v1, value:I
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mHomeLongPressAction:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v2, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 193
    .local v0, index:I
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mHomeLongPressAction:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mHomeLongPressAction:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "key_home_long_press_action"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v2, v3

    .line 247
    .end local v0           #index:I
    .end local v1           #value:I
    :goto_0
    return v2

    .line 198
    .restart local p2
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mMenuPressAction:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_1

    move-object v2, p2

    .line 199
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 200
    .restart local v1       #value:I
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mMenuPressAction:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v2, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 201
    .restart local v0       #index:I
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mMenuPressAction:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mMenuPressAction:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "key_menu_action"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v2, v3

    .line 205
    goto :goto_0

    .line 206
    .end local v0           #index:I
    .end local v1           #value:I
    .restart local p2
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mMenuLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_2

    move-object v2, p2

    .line 207
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 208
    .restart local v1       #value:I
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mMenuLongPressAction:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v2, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 209
    .restart local v0       #index:I
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mMenuLongPressAction:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mMenuLongPressAction:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "key_menu_long_press_action"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v2, v3

    .line 213
    goto :goto_0

    .line 214
    .end local v0           #index:I
    .end local v1           #value:I
    .restart local p2
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAssistPressAction:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_3

    move-object v2, p2

    .line 215
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 216
    .restart local v1       #value:I
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAssistPressAction:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v2, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 217
    .restart local v0       #index:I
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAssistPressAction:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAssistPressAction:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "key_assist_action"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v2, v3

    .line 221
    goto/16 :goto_0

    .line 222
    .end local v0           #index:I
    .end local v1           #value:I
    .restart local p2
    :cond_3
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAssistLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_4

    move-object v2, p2

    .line 223
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 224
    .restart local v1       #value:I
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAssistLongPressAction:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v2, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 225
    .restart local v0       #index:I
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAssistLongPressAction:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAssistLongPressAction:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 227
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "key_assist_long_press_action"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v2, v3

    .line 229
    goto/16 :goto_0

    .line 230
    .end local v0           #index:I
    .end local v1           #value:I
    .restart local p2
    :cond_4
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAppSwitchPressAction:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_5

    move-object v2, p2

    .line 231
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 232
    .restart local v1       #value:I
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAppSwitchPressAction:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v2, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 233
    .restart local v0       #index:I
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAppSwitchPressAction:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAppSwitchPressAction:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 235
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "key_app_switch_action"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v2, v3

    .line 237
    goto/16 :goto_0

    .line 238
    .end local v0           #index:I
    .end local v1           #value:I
    .restart local p2
    :cond_5
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAppSwitchLongPressAction:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_6

    move-object v2, p2

    .line 239
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 240
    .restart local v1       #value:I
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAppSwitchLongPressAction:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v2, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 241
    .restart local v0       #index:I
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAppSwitchLongPressAction:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mAppSwitchLongPressAction:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 243
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "key_app_switch_long_press_action"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v2, v3

    .line 245
    goto/16 :goto_0

    .line 247
    .end local v0           #index:I
    .end local v1           #value:I
    .restart local p2
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 251
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mEnableCustomBindings:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_1

    .line 252
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hardware_key_rebinding"

    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mEnableCustomBindings:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 269
    :goto_0
    return v2

    .line 255
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mShowActionOverflow:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_4

    .line 256
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->mShowActionOverflow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 257
    .local v0, enabled:Z
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ui_force_overflow_button"

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 260
    if-eqz v0, :cond_3

    .line 261
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0801da

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 264
    :cond_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/HardwareKeys;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0801db

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .end local v0           #enabled:Z
    :cond_4
    move v2, v1

    .line 269
    goto :goto_0
.end method
