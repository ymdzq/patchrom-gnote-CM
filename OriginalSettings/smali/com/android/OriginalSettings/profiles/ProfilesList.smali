.class public Lcom/android/OriginalSettings/profiles/ProfilesList;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "ProfilesList.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mProfileManager:Landroid/app/ProfileManager;

.field private mSelectedKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private setSelectedProfile(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 125
    :try_start_0
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    .line 126
    .local v1, selectedUuid:Ljava/util/UUID;
    iget-object v2, p0, Lcom/android/OriginalSettings/profiles/ProfilesList;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v2, v1}, Landroid/app/ProfileManager;->setActiveProfile(Ljava/util/UUID;)V

    .line 127
    iput-object p1, p0, Lcom/android/OriginalSettings/profiles/ProfilesList;->mSelectedKey:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v1           #selectedUuid:Ljava/util/UUID;
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/OriginalSettings/profiles/ProfilesList;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    const v0, 0x7f05002e

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/profiles/ProfilesList;->addPreferencesFromResource(I)V

    .line 51
    invoke-virtual {p0}, Lcom/android/OriginalSettings/profiles/ProfilesList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/profiles/ProfilesList;->mProfileManager:Landroid/app/ProfileManager;

    .line 54
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 116
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 117
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/profiles/ProfilesList;->setSelectedProfile(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/OriginalSettings/profiles/ProfilesList;->refreshList()V

    .line 120
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 59
    invoke-virtual {p0}, Lcom/android/OriginalSettings/profiles/ProfilesList;->refreshList()V

    .line 62
    invoke-virtual {p0}, Lcom/android/OriginalSettings/profiles/ProfilesList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/OriginalSettings/profiles/ProfilesList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 65
    :cond_0
    return-void
.end method

.method public refreshList()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 69
    invoke-virtual {p0}, Lcom/android/OriginalSettings/profiles/ProfilesList;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "system_profiles_enabled"

    invoke-static {v12, v13, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v10, :cond_1

    move v2, v10

    .line 72
    .local v2, enabled:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/profiles/ProfilesList;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 73
    .local v6, plist:Landroid/preference/PreferenceScreen;
    if-eqz v6, :cond_4

    .line 74
    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 76
    if-eqz v2, :cond_3

    iget-object v12, p0, Lcom/android/OriginalSettings/profiles/ProfilesList;->mProfileManager:Landroid/app/ProfileManager;

    if-eqz v12, :cond_3

    .line 78
    iget-object v12, p0, Lcom/android/OriginalSettings/profiles/ProfilesList;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v12}, Landroid/app/ProfileManager;->getActiveProfile()Landroid/app/Profile;

    move-result-object v8

    .line 79
    .local v8, prof:Landroid/app/Profile;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_1
    iput-object v12, p0, Lcom/android/OriginalSettings/profiles/ProfilesList;->mSelectedKey:Ljava/lang/String;

    .line 81
    iget-object v12, p0, Lcom/android/OriginalSettings/profiles/ProfilesList;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v12}, Landroid/app/ProfileManager;->getProfiles()[Landroid/app/Profile;

    move-result-object v1

    .local v1, arr$:[Landroid/app/Profile;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v4, :cond_4

    aget-object v9, v1, v3

    .line 82
    .local v9, profile:Landroid/app/Profile;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    .local v0, args:Landroid/os/Bundle;
    const-string v12, "Profile"

    invoke-virtual {v0, v12, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 85
    new-instance v7, Lcom/android/OriginalSettings/profiles/ProfilesPreference;

    invoke-direct {v7, p0, v0}, Lcom/android/OriginalSettings/profiles/ProfilesPreference;-><init>(Lcom/android/OriginalSettings/SettingsPreferenceFragment;Landroid/os/Bundle;)V

    .line 86
    .local v7, ppref:Lcom/android/OriginalSettings/profiles/ProfilesPreference;
    invoke-virtual {v9}, Landroid/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/android/OriginalSettings/profiles/ProfilesPreference;->setKey(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v9}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/android/OriginalSettings/profiles/ProfilesPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {v7, v11}, Lcom/android/OriginalSettings/profiles/ProfilesPreference;->setPersistent(Z)V

    .line 89
    invoke-virtual {v7, p0}, Lcom/android/OriginalSettings/profiles/ProfilesPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 90
    invoke-virtual {v7, v10}, Lcom/android/OriginalSettings/profiles/ProfilesPreference;->setSelectable(Z)V

    .line 91
    invoke-virtual {v7, v10}, Lcom/android/OriginalSettings/profiles/ProfilesPreference;->setEnabled(Z)V

    .line 93
    iget-object v12, p0, Lcom/android/OriginalSettings/profiles/ProfilesList;->mSelectedKey:Ljava/lang/String;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/android/OriginalSettings/profiles/ProfilesList;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/android/OriginalSettings/profiles/ProfilesPreference;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 94
    invoke-virtual {v7, v10}, Lcom/android/OriginalSettings/profiles/ProfilesPreference;->setChecked(Z)V

    .line 97
    :cond_0
    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 81
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #arr$:[Landroid/app/Profile;
    .end local v2           #enabled:Z
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #plist:Landroid/preference/PreferenceScreen;
    .end local v7           #ppref:Lcom/android/OriginalSettings/profiles/ProfilesPreference;
    .end local v8           #prof:Landroid/app/Profile;
    .end local v9           #profile:Landroid/app/Profile;
    :cond_1
    move v2, v11

    .line 69
    goto :goto_0

    .line 79
    .restart local v2       #enabled:Z
    .restart local v6       #plist:Landroid/preference/PreferenceScreen;
    .restart local v8       #prof:Landroid/app/Profile;
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 101
    .end local v8           #prof:Landroid/app/Profile;
    :cond_3
    new-instance v5, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/profiles/ProfilesList;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v5, v10}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 102
    .local v5, npref:Landroid/preference/Preference;
    const v10, 0x7f040075

    invoke-virtual {v5, v10}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 103
    const v10, 0x7f0800cd

    invoke-virtual {v5, v10}, Landroid/preference/Preference;->setTitle(I)V

    .line 104
    invoke-virtual {v5, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 106
    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 109
    .end local v5           #npref:Landroid/preference/Preference;
    :cond_4
    return-void
.end method
