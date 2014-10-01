.class public Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "NotificationLightSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$ViewHolder;,
        Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$PackageAdapter;,
        Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$PackageItem;,
        Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$Package;
    }
.end annotation


# instance fields
.field private mApplicationPrefList:Landroid/preference/PreferenceGroup;

.field private mCallPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

.field private mCustomEnabled:Z

.field private mCustomEnabledPref:Landroid/preference/CheckBoxPreference;

.field private mDefaultColor:I

.field private mDefaultLedOff:I

.field private mDefaultLedOn:I

.field private mDefaultPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

.field private mLightEnabled:Z

.field private mMenu:Landroid/view/Menu;

.field private mPackageAdapter:Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$PackageAdapter;

.field private mPackageList:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$Package;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceCapable:Z

.field private mVoicemailPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 631
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->removeCustomApplicationPref(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->addCustomApplicationPref(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private addCustomApplicationPref(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 252
    iget-object v1, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$Package;

    .line 253
    .local v0, pkg:Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$Package;
    if-nez v0, :cond_0

    .line 254
    new-instance v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$Package;

    .end local v0           #pkg:Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$Package;
    iget v1, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$Package;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 255
    .restart local v0       #pkg:Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$Package;
    iget-object v1, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->savePackageList(Z)V

    .line 257
    invoke-direct {p0}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->refreshCustomApplicationPrefs()V

    .line 259
    :cond_0
    return-void
.end method

.method private parsePackageList()Z
    .locals 9

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "notification_light_pulse_custom_values"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, baseString:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mPackageList:Ljava/lang/String;

    invoke-static {v7, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 273
    const/4 v7, 0x0

    .line 292
    :goto_0
    return v7

    .line 276
    :cond_0
    iput-object v2, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mPackageList:Ljava/lang/String;

    .line 277
    iget-object v7, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 279
    if-eqz v2, :cond_3

    .line 280
    const-string v7, "\\|"

    invoke-static {v2, v7}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, array:[Ljava/lang/String;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v4, v0, v3

    .line 282
    .local v4, item:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 281
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 285
    :cond_2
    invoke-static {v4}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$Package;->fromString(Ljava/lang/String;)Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$Package;

    move-result-object v6

    .line 286
    .local v6, pkg:Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$Package;
    if-eqz v6, :cond_1

    .line 287
    iget-object v7, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    iget-object v8, v6, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$Package;->name:Ljava/lang/String;

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 292
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #array:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #item:Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #pkg:Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$Package;
    :cond_3
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private refreshCustomApplicationPrefs()V
    .locals 8

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 206
    .local v0, context:Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->parsePackageList()Z

    move-result v5

    if-nez v5, :cond_1

    .line 233
    :cond_0
    return-void

    .line 211
    :cond_1
    iget-object v5, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    if-eqz v5, :cond_0

    .line 212
    iget-object v5, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 214
    iget-object v5, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$Package;

    .line 216
    .local v3, pkg:Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$Package;
    :try_start_0
    iget-object v5, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, v3, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$Package;->name:Ljava/lang/String;

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 218
    .local v2, info:Landroid/content/pm/PackageInfo;
    new-instance v4, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    iget-object v5, v3, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$Package;->color:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v3, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$Package;->timeon:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v3, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$Package;->timeoff:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v4, v0, v5, v6, v7}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;-><init>(Landroid/content/Context;III)V

    .line 221
    .local v4, pref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;
    iget-object v5, v3, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$Package;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->setKey(Ljava/lang/String;)V

    .line 222
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 224
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->setPersistent(Z)V

    .line 225
    invoke-virtual {v4, p0}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 227
    iget-object v5, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    .end local v4           #pref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private refreshDefault()V
    .locals 17

    .prologue
    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 143
    .local v9, resolver:Landroid/content/ContentResolver;
    const-string v15, "notification_light_pulse_default_color"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 144
    .local v5, color:I
    const-string v15, "notification_light_pulse_default_led_on"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 145
    .local v11, timeOn:I
    const-string v15, "notification_light_pulse_default_led_off"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 146
    .local v10, timeOff:I
    const-string v15, "notification_light_pulse"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/4 v15, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mLightEnabled:Z

    .line 147
    const-string v15, "notification_light_pulse_custom_enable"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    const/4 v15, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mCustomEnabled:Z

    .line 150
    const-string v15, "notification_light_pulse_call_color"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 151
    .local v2, callColor:I
    const-string v15, "notification_light_pulse_call_led_on"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 152
    .local v4, callTimeOn:I
    const-string v15, "notification_light_pulse_call_led_off"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 153
    .local v3, callTimeOff:I
    const-string v15, "notification_light_pulse_vmail_color"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 154
    .local v12, vmailColor:I
    const-string v15, "notification_light_pulse_vmail_led_on"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 155
    .local v14, vmailTimeOn:I
    const-string v15, "notification_light_pulse_vmail_led_off"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v9, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 157
    .local v13, vmailTimeOff:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 158
    .local v8, prefSet:Landroid/preference/PreferenceScreen;
    const-string v15, "general_section"

    invoke-virtual {v8, v15}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceGroup;

    .line 159
    .local v6, generalPrefs:Landroid/preference/PreferenceGroup;
    if-eqz v6, :cond_0

    .line 162
    const-string v15, "pulse_enabled"

    invoke-virtual {v8, v15}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 163
    .local v1, cPref:Landroid/preference/CheckBoxPreference;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mLightEnabled:Z

    invoke-virtual {v1, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 164
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 167
    const-string v15, "default"

    invoke-virtual {v8, v15}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mDefaultPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    .line 168
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mDefaultPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v15, v5, v11, v10}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->setAllValues(III)V

    .line 169
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mDefaultPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mLightEnabled:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->setEnabled(Z)V

    .line 170
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mDefaultPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 173
    const-string v15, "custom_enabled"

    invoke-virtual {v8, v15}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Landroid/preference/CheckBoxPreference;

    .line 174
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mCustomEnabled:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 175
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mLightEnabled:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 176
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 179
    .end local v1           #cPref:Landroid/preference/CheckBoxPreference;
    :cond_0
    const-string v15, "phone_list"

    invoke-virtual {v8, v15}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceGroup;

    .line 180
    .local v7, phonePrefs:Landroid/preference/PreferenceGroup;
    if-eqz v7, :cond_1

    .line 184
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mVoiceCapable:Z

    if-nez v15, :cond_4

    .line 185
    invoke-virtual {v8, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 199
    :cond_1
    :goto_2
    const-string v15, "applications_list"

    invoke-virtual {v8, v15}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    .line 200
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 201
    return-void

    .line 146
    .end local v2           #callColor:I
    .end local v3           #callTimeOff:I
    .end local v4           #callTimeOn:I
    .end local v6           #generalPrefs:Landroid/preference/PreferenceGroup;
    .end local v7           #phonePrefs:Landroid/preference/PreferenceGroup;
    .end local v8           #prefSet:Landroid/preference/PreferenceScreen;
    .end local v12           #vmailColor:I
    .end local v13           #vmailTimeOff:I
    .end local v14           #vmailTimeOn:I
    :cond_2
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 147
    :cond_3
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 187
    .restart local v2       #callColor:I
    .restart local v3       #callTimeOff:I
    .restart local v4       #callTimeOn:I
    .restart local v6       #generalPrefs:Landroid/preference/PreferenceGroup;
    .restart local v7       #phonePrefs:Landroid/preference/PreferenceGroup;
    .restart local v8       #prefSet:Landroid/preference/PreferenceScreen;
    .restart local v12       #vmailColor:I
    .restart local v13       #vmailTimeOff:I
    .restart local v14       #vmailTimeOn:I
    :cond_4
    const-string v15, "missed_call"

    invoke-virtual {v8, v15}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mCallPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    .line 188
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mCallPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v15, v2, v4, v3}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->setAllValues(III)V

    .line 189
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mCallPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mCustomEnabled:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->setEnabled(Z)V

    .line 190
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mCallPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 192
    const-string v15, "voicemail"

    invoke-virtual {v8, v15}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mVoicemailPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    .line 193
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mVoicemailPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v15, v12, v14, v13}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->setAllValues(III)V

    .line 194
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mVoicemailPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mCustomEnabled:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->setEnabled(Z)V

    .line 195
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mVoicemailPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_2
.end method

.method private removeCustomApplicationPref(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->savePackageList(Z)V

    .line 264
    invoke-direct {p0}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->refreshCustomApplicationPrefs()V

    .line 266
    :cond_0
    return-void
.end method

.method private savePackageList(Z)V
    .locals 6
    .parameter "preferencesUpdated"

    .prologue
    .line 296
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v2, settings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$Package;

    .line 298
    .local v0, app:Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$Package;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$Package;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 300
    .end local v0           #app:Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$Package;
    :cond_0
    const-string v4, "|"

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, value:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 302
    iput-object v3, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mPackageList:Ljava/lang/String;

    .line 304
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_light_pulse_custom_values"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 306
    return-void
.end method

.method private setCustomEnabled()V
    .locals 2

    .prologue
    .line 236
    iget-boolean v1, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mCustomEnabled:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mLightEnabled:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 239
    .local v0, enabled:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mVoiceCapable:Z

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mCallPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->setEnabled(Z)V

    .line 241
    iget-object v1, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mVoicemailPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->setEnabled(Z)V

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_1

    .line 246
    iget-object v1, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 247
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->setHasOptionsMenu(Z)V

    .line 249
    :cond_1
    return-void

    .line 236
    .end local v0           #enabled:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 108
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const v2, 0x7f050022

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->addPreferencesFromResource(I)V

    .line 111
    invoke-virtual {p0}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 112
    .local v0, resources:Landroid/content/res/Resources;
    const v2, 0x106006b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mDefaultColor:I

    .line 114
    const v2, 0x10e001c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mDefaultLedOn:I

    .line 116
    const v2, 0x10e001d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mDefaultLedOff:I

    .line 120
    invoke-virtual {p0}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 121
    new-instance v2, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$PackageAdapter;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$PackageAdapter;-><init>(Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;)V

    iput-object v2, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mPackageAdapter:Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$PackageAdapter;

    .line 123
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    .line 126
    invoke-virtual {p0}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v4, "phone"

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 127
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mVoiceCapable:Z

    .line 129
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->setHasOptionsMenu(Z)V

    .line 130
    return-void

    .line 127
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 418
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 420
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 440
    const/4 v1, 0x0

    .line 442
    .local v1, dialog:Landroid/app/Dialog;
    :goto_0
    return-object v1

    .line 422
    .end local v1           #dialog:Landroid/app/Dialog;
    :pswitch_0
    new-instance v2, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 423
    .local v2, list:Landroid/widget/ListView;
    iget-object v3, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mPackageAdapter:Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$PackageAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 425
    const v3, 0x7f080103

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 426
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 427
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 429
    .restart local v1       #dialog:Landroid/app/Dialog;
    new-instance v3, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$2;

    invoke-direct {v3, p0, v1}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$2;-><init>(Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 420
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 397
    iput-object p1, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mMenu:Landroid/view/Menu;

    .line 398
    iget-object v0, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0800ca

    invoke-interface {v0, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02006b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 401
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 350
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 352
    .local v1, pref:Landroid/preference/Preference;
    iget-object v2, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mApplicationPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eq v2, v1, :cond_0

    .line 353
    const/4 v2, 0x0

    .line 369
    :goto_0
    return v2

    .line 356
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0801b1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0801b2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$1;

    invoke-direct {v4, p0, v1}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$1;-><init>(Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;Landroid/preference/Preference;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 368
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 369
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    .line 405
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 410
    :goto_0
    return v0

    .line 407
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->showDialog(I)V

    .line 408
    const/4 v0, 0x1

    goto :goto_0

    .line 405
    :pswitch_data_0
    .packed-switch 0x0
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

    .line 373
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, key:Ljava/lang/String;
    const-string v4, "pulse_enabled"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 376
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mLightEnabled:Z

    .line 377
    invoke-virtual {p0}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_light_pulse"

    iget-boolean v6, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mLightEnabled:Z

    if-eqz v6, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 379
    iget-object v2, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mDefaultPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    iget-boolean v4, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mLightEnabled:Z

    invoke-virtual {v2, v4}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->setEnabled(Z)V

    .line 380
    iget-object v2, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mCustomEnabledPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v4, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mLightEnabled:Z

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 381
    invoke-direct {p0}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->setCustomEnabled()V

    .line 392
    :goto_0
    return v3

    .line 382
    .restart local p2
    :cond_1
    const-string v4, "custom_enabled"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 383
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mCustomEnabled:Z

    .line 384
    invoke-virtual {p0}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_light_pulse_custom_enable"

    iget-boolean v6, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mCustomEnabled:Z

    if-eqz v6, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 386
    invoke-direct {p0}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->setCustomEnabled()V

    goto :goto_0

    .restart local p2
    :cond_3
    move-object v1, p1

    .line 388
    check-cast v1, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    .line 389
    .local v1, tPref:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;
    invoke-virtual {v1}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->getColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->getOnValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->getOffValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->updateValues(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 135
    invoke-direct {p0}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->refreshDefault()V

    .line 136
    invoke-direct {p0}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->refreshCustomApplicationPrefs()V

    .line 137
    invoke-direct {p0}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->setCustomEnabled()V

    .line 138
    invoke-virtual {p0}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 139
    return-void
.end method

.method protected updateValues(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 4
    .parameter "packageName"
    .parameter "color"
    .parameter "timeon"
    .parameter "timeoff"

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 319
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "default"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 320
    const-string v2, "notification_light_pulse_default_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 321
    const-string v2, "notification_light_pulse_default_led_on"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 322
    const-string v2, "notification_light_pulse_default_led_off"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 323
    invoke-direct {p0}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->refreshDefault()V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    const-string v2, "missed_call"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 326
    const-string v2, "notification_light_pulse_call_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 327
    const-string v2, "notification_light_pulse_call_led_on"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 328
    const-string v2, "notification_light_pulse_call_led_off"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 329
    invoke-direct {p0}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->refreshDefault()V

    goto :goto_0

    .line 331
    :cond_2
    const-string v2, "voicemail"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 332
    const-string v2, "notification_light_pulse_vmail_color"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 333
    const-string v2, "notification_light_pulse_vmail_led_on"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 334
    const-string v2, "notification_light_pulse_vmail_led_off"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 335
    invoke-direct {p0}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->refreshDefault()V

    goto :goto_0

    .line 340
    :cond_3
    iget-object v2, p0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->mPackages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$Package;

    .line 341
    .local v0, app:Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$Package;
    if-eqz v0, :cond_0

    .line 342
    iput-object p2, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$Package;->color:Ljava/lang/Integer;

    .line 343
    iput-object p3, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$Package;->timeon:Ljava/lang/Integer;

    .line 344
    iput-object p4, v0, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings$Package;->timeoff:Ljava/lang/Integer;

    .line 345
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/notificationlight/NotificationLightSettings;->savePackageList(Z)V

    goto :goto_0
.end method
