.class public Lcom/android/OriginalSettings/cyanogenmod/LockscreenButtons;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "LockscreenButtons.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mActions:[Landroid/preference/ListPreference;

.field private mLongBackAction:Landroid/preference/ListPreference;

.field private mLongHomeAction:Landroid/preference/ListPreference;

.field private mLongMenuAction:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private findEntryForValue(Landroid/preference/ListPreference;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "pref"
    .parameter "value"

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 147
    .local v0, entries:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 148
    aget-object v2, v0, v1

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v1

    .line 152
    :goto_1
    return-object v2

    .line 147
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private torchSupported()Z
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenButtons;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private updateEntry(Landroid/preference/ListPreference;)V
    .locals 4
    .parameter "pref"

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenButtons;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 134
    const-string v1, ""

    .line 137
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenButtons;->findEntryForValue(Landroid/preference/ListPreference;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 138
    .local v0, entry:Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 143
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 18
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super/range {p0 .. p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenButtons;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x10e003b

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 68
    .local v2, deviceKeys:I
    and-int/lit8 v15, v2, 0x1

    if-eqz v15, :cond_0

    const/4 v4, 0x1

    .line 69
    .local v4, hasHomeKey:Z
    :goto_0
    and-int/lit8 v15, v2, 0x2

    if-eqz v15, :cond_1

    const/4 v3, 0x1

    .line 70
    .local v3, hasBackKey:Z
    :goto_1
    and-int/lit8 v15, v2, 0x4

    if-eqz v15, :cond_2

    const/4 v5, 0x1

    .line 72
    .local v5, hasMenuKey:Z
    :goto_2
    const v15, 0x7f05001d

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenButtons;->addPreferencesFromResource(I)V

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenButtons;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v14

    .line 76
    .local v14, prefSet:Landroid/preference/PreferenceScreen;
    const-string v15, "lockscreen_long_press_back"

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenButtons;->mLongBackAction:Landroid/preference/ListPreference;

    .line 77
    if-eqz v3, :cond_3

    .line 78
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenButtons;->mLongBackAction:Landroid/preference/ListPreference;

    const-string v16, "lockscreen_long_back_action"

    invoke-virtual/range {v15 .. v16}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 83
    :goto_3
    const-string v15, "lockscreen_long_press_home"

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenButtons;->mLongHomeAction:Landroid/preference/ListPreference;

    .line 84
    if-eqz v4, :cond_4

    .line 85
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenButtons;->mLongHomeAction:Landroid/preference/ListPreference;

    const-string v16, "lockscreen_long_home_action"

    invoke-virtual/range {v15 .. v16}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 90
    :goto_4
    const-string v15, "lockscreen_long_press_menu"

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenButtons;->mLongMenuAction:Landroid/preference/ListPreference;

    .line 91
    if-eqz v5, :cond_5

    .line 92
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenButtons;->mLongMenuAction:Landroid/preference/ListPreference;

    const-string v16, "lockscreen_long_menu_action"

    invoke-virtual/range {v15 .. v16}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 97
    :goto_5
    const/4 v15, 0x3

    new-array v15, v15, [Landroid/preference/ListPreference;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenButtons;->mLongBackAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenButtons;->mLongHomeAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenButtons;->mLongMenuAction:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenButtons;->mActions:[Landroid/preference/ListPreference;

    .line 100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenButtons;->mActions:[Landroid/preference/ListPreference;

    .local v1, arr$:[Landroid/preference/ListPreference;
    array-length v8, v1

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_6
    if-ge v7, v8, :cond_8

    aget-object v13, v1, v7

    .line 101
    .local v13, pref:Landroid/preference/ListPreference;
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenButtons;->torchSupported()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 102
    invoke-virtual {v13}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v11

    .line 103
    .local v11, oldEntries:[Ljava/lang/CharSequence;
    invoke-virtual {v13}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v12

    .line 104
    .local v12, oldValues:[Ljava/lang/CharSequence;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v9, newEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v10, newValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_7
    array-length v15, v11

    if-ge v6, v15, :cond_6

    .line 107
    aget-object v15, v11, v6

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    aget-object v15, v12, v6

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 68
    .end local v1           #arr$:[Landroid/preference/ListPreference;
    .end local v3           #hasBackKey:Z
    .end local v4           #hasHomeKey:Z
    .end local v5           #hasMenuKey:Z
    .end local v6           #i:I
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v9           #newEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v10           #newValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v11           #oldEntries:[Ljava/lang/CharSequence;
    .end local v12           #oldValues:[Ljava/lang/CharSequence;
    .end local v13           #pref:Landroid/preference/ListPreference;
    .end local v14           #prefSet:Landroid/preference/PreferenceScreen;
    :cond_0
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 69
    .restart local v4       #hasHomeKey:Z
    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 70
    .restart local v3       #hasBackKey:Z
    :cond_2
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 80
    .restart local v5       #hasMenuKey:Z
    .restart local v14       #prefSet:Landroid/preference/PreferenceScreen;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenButtons;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenButtons;->mLongBackAction:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 87
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenButtons;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenButtons;->mLongHomeAction:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 94
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenButtons;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenButtons;->mLongMenuAction:Landroid/preference/ListPreference;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    .line 110
    .restart local v1       #arr$:[Landroid/preference/ListPreference;
    .restart local v6       #i:I
    .restart local v7       #i$:I
    .restart local v8       #len$:I
    .restart local v9       #newEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v10       #newValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v11       #oldEntries:[Ljava/lang/CharSequence;
    .restart local v12       #oldValues:[Ljava/lang/CharSequence;
    .restart local v13       #pref:Landroid/preference/ListPreference;
    :cond_6
    const v15, 0x7f080259

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenButtons;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    const-string v15, "FLASHLIGHT"

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v15, v15, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/CharSequence;

    invoke-virtual {v13, v15}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v15, v15, [Ljava/lang/CharSequence;

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/CharSequence;

    invoke-virtual {v13, v15}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 117
    .end local v6           #i:I
    .end local v9           #newEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v10           #newValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v11           #oldEntries:[Ljava/lang/CharSequence;
    .end local v12           #oldValues:[Ljava/lang/CharSequence;
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 100
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_6

    .line 119
    .end local v13           #pref:Landroid/preference/ListPreference;
    :cond_8
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 158
    move-object v0, p1

    check-cast v0, Landroid/preference/ListPreference;

    .local v0, list:Landroid/preference/ListPreference;
    move-object v1, p2

    .line 159
    check-cast v1, Ljava/lang/String;

    .line 161
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenButtons;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenButtons;->findEntryForValue(Landroid/preference/ListPreference;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 165
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 124
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 126
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenButtons;->mActions:[Landroid/preference/ListPreference;

    .local v0, arr$:[Landroid/preference/ListPreference;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 127
    .local v3, pref:Landroid/preference/ListPreference;
    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenButtons;->updateEntry(Landroid/preference/ListPreference;)V

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v3           #pref:Landroid/preference/ListPreference;
    :cond_0
    return-void
.end method
