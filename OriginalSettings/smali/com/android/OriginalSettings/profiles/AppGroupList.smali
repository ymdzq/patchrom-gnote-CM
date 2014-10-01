.class public Lcom/android/OriginalSettings/profiles/AppGroupList;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "AppGroupList.java"


# instance fields
.field private mProfileManager:Landroid/app/ProfileManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private editGroup(Landroid/app/NotificationGroup;)V
    .locals 7
    .parameter

    .prologue
    .line 103
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 104
    const-string v0, "NotificationGroup"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/OriginalSettings/profiles/AppGroupList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 107
    const-class v1, Lcom/android/OriginalSettings/profiles/AppGroupConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0800ed

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 109
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/OriginalSettings/profiles/AppGroupList;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/profiles/AppGroupList;->addPreferencesFromResource(I)V

    .line 49
    invoke-virtual {p0}, Lcom/android/OriginalSettings/profiles/AppGroupList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/profiles/AppGroupList;->mProfileManager:Landroid/app/ProfileManager;

    .line 51
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 94
    instance-of v1, p2, Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/OriginalSettings/profiles/AppGroupList;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProfileManager;->getNotificationGroup(Ljava/util/UUID;)Landroid/app/NotificationGroup;

    move-result-object v0

    .line 97
    .local v0, group:Landroid/app/NotificationGroup;
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/profiles/AppGroupList;->editGroup(Landroid/app/NotificationGroup;)V

    .line 99
    .end local v0           #group:Landroid/app/NotificationGroup;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 56
    invoke-virtual {p0}, Lcom/android/OriginalSettings/profiles/AppGroupList;->refreshList()V

    .line 59
    invoke-virtual {p0}, Lcom/android/OriginalSettings/profiles/AppGroupList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/android/OriginalSettings/profiles/AppGroupList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 62
    :cond_0
    return-void
.end method

.method public refreshList()V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/android/OriginalSettings/profiles/AppGroupList;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "system_profiles_enabled"

    invoke-static {v9, v10, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v2, :cond_0

    .line 69
    .local v2, enabled:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/profiles/AppGroupList;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 70
    .local v0, appgroupList:Landroid/preference/PreferenceScreen;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 72
    if-eqz v2, :cond_1

    .line 74
    iget-object v9, p0, Lcom/android/OriginalSettings/profiles/AppGroupList;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v9}, Landroid/app/ProfileManager;->getNotificationGroups()[Landroid/app/NotificationGroup;

    move-result-object v1

    .local v1, arr$:[Landroid/app/NotificationGroup;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v3, v1, v4

    .line 75
    .local v3, group:Landroid/app/NotificationGroup;
    new-instance v7, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/profiles/AppGroupList;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v7, v9, v10}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    .local v7, pref:Landroid/preference/PreferenceScreen;
    invoke-virtual {v3}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v3}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 79
    invoke-virtual {v7, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 80
    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 74
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0           #appgroupList:Landroid/preference/PreferenceScreen;
    .end local v1           #arr$:[Landroid/app/NotificationGroup;
    .end local v2           #enabled:Z
    .end local v3           #group:Landroid/app/NotificationGroup;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #pref:Landroid/preference/PreferenceScreen;
    :cond_0
    move v2, v8

    .line 66
    goto :goto_0

    .line 84
    .restart local v0       #appgroupList:Landroid/preference/PreferenceScreen;
    .restart local v2       #enabled:Z
    :cond_1
    new-instance v6, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/profiles/AppGroupList;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 85
    .local v6, npref:Landroid/preference/Preference;
    const v9, 0x7f040075

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 86
    const v9, 0x7f0800cd

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setTitle(I)V

    .line 87
    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 88
    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 90
    .end local v6           #npref:Landroid/preference/Preference;
    :cond_2
    return-void
.end method
