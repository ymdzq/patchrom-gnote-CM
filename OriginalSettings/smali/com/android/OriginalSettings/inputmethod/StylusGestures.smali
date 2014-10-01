.class public Lcom/android/OriginalSettings/inputmethod/StylusGestures;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "StylusGestures.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mActionNames:[Ljava/lang/String;

.field private mActionValues:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEnableGestures:Landroid/preference/CheckBoxPreference;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSwipeDouble:Landroid/preference/ListPreference;

.field private mSwipeDown:Landroid/preference/ListPreference;

.field private mSwipeLeft:Landroid/preference/ListPreference;

.field private mSwipeLong:Landroid/preference/ListPreference;

.field private mSwipeRight:Landroid/preference/ListPreference;

.field private mSwipeUp:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private addApplicationEntries(Landroid/preference/ListPreference;Ljava/lang/String;)V
    .locals 11
    .parameter "pref"
    .parameter "packageName"

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 172
    .local v7, pm:Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    const/4 v10, 0x0

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 173
    .local v4, intent:Landroid/content/Intent;
    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const/4 v9, 0x0

    invoke-virtual {v7, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 177
    .local v6, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v9, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v9, v7}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v6, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 179
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    iget-object v10, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mActionValues:[Ljava/lang/String;

    array-length v10, v10

    add-int v0, v9, v10

    .line 180
    .local v0, count:I
    new-array v1, v0, [Ljava/lang/CharSequence;

    .line 181
    .local v1, entries:[Ljava/lang/CharSequence;
    new-array v8, v0, [Ljava/lang/CharSequence;

    .line 184
    .local v8, values:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v9, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mActionValues:[Ljava/lang/String;

    array-length v9, v9

    if-ge v2, v9, :cond_0

    .line 185
    iget-object v9, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mActionNames:[Ljava/lang/String;

    aget-object v9, v9, v2

    aput-object v9, v1, v2

    .line 186
    iget-object v9, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mActionValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    aput-object v9, v8, v2

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    :cond_0
    iget-object v9, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mActionValues:[Ljava/lang/String;

    array-length v2, v9

    :goto_1
    if-ge v2, v0, :cond_2

    .line 191
    iget-object v9, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mActionValues:[Ljava/lang/String;

    array-length v9, v9

    sub-int v9, v2, v9

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 192
    .local v3, info:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v3, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 193
    .local v5, label:Ljava/lang/CharSequence;
    if-nez v5, :cond_1

    .line 194
    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 197
    :cond_1
    aput-object v5, v1, v2

    .line 198
    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v9, v8, v2

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 201
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    .end local v5           #label:Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 202
    invoke-virtual {p1, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->setPrefValue(Landroid/preference/ListPreference;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "packageName"

    .prologue
    .line 207
    iget-object v3, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 211
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 216
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 219
    :goto_1
    return-object v3

    .line 212
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 213
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 219
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private mapUpdateValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "time"

    .prologue
    .line 139
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mActionValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mActionValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mActionNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 144
    :goto_1
    return-object v1

    .line 139
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setPrefValue(Landroid/preference/ListPreference;Ljava/lang/String;)V
    .locals 6
    .parameter "pref"
    .parameter "packageName"

    .prologue
    .line 148
    if-nez p2, :cond_0

    .line 149
    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 152
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mapUpdateValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, text:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 154
    invoke-virtual {p1, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 167
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->getAppName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 158
    .local v0, appName:Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 159
    invoke-virtual {p1, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 162
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mContext:Landroid/content/Context;

    const v3, 0x7f08030e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setupGesturePref(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;
    .locals 3
    .parameter "key"
    .parameter "settingName"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 94
    .local v0, pref:Landroid/preference/ListPreference;
    iget-object v2, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, setting:Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->addApplicationEntries(Landroid/preference/ListPreference;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 97
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 69
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v1, 0x7f050017

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->addPreferencesFromResource(I)V

    .line 71
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {p0}, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mResolver:Landroid/content/ContentResolver;

    .line 74
    iget-object v1, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0c008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mActionNames:[Ljava/lang/String;

    .line 76
    const v1, 0x7f0c008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mActionValues:[Ljava/lang/String;

    .line 79
    const-string v1, "enable_spen"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mEnableGestures:Landroid/preference/CheckBoxPreference;

    .line 80
    iget-object v4, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mEnableGestures:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "enable_stylus_gestures"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 84
    const-string v1, "gestures_left"

    const-string v2, "gestures_left_swipe"

    invoke-direct {p0, v1, v2}, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->setupGesturePref(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mSwipeLeft:Landroid/preference/ListPreference;

    .line 85
    const-string v1, "gestures_right"

    const-string v2, "gestures_right_swipe"

    invoke-direct {p0, v1, v2}, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->setupGesturePref(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mSwipeRight:Landroid/preference/ListPreference;

    .line 86
    const-string v1, "gestures_up"

    const-string v2, "gestures_up_swipe"

    invoke-direct {p0, v1, v2}, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->setupGesturePref(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mSwipeUp:Landroid/preference/ListPreference;

    .line 87
    const-string v1, "gestures_down"

    const-string v2, "gestures_down_swipe"

    invoke-direct {p0, v1, v2}, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->setupGesturePref(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mSwipeDown:Landroid/preference/ListPreference;

    .line 88
    const-string v1, "gestures_long"

    const-string v2, "gestures_long_press"

    invoke-direct {p0, v1, v2}, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->setupGesturePref(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mSwipeLong:Landroid/preference/ListPreference;

    .line 89
    const-string v1, "gestures_double"

    const-string v2, "gestures_double_tap"

    invoke-direct {p0, v1, v2}, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->setupGesturePref(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mSwipeDouble:Landroid/preference/ListPreference;

    .line 90
    return-void

    :cond_0
    move v1, v3

    .line 80
    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 114
    const/4 v1, 0x0

    .line 116
    .local v1, settingName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mSwipeLeft:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_0

    .line 117
    const-string v1, "gestures_left_swipe"

    .line 132
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, packageName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 134
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-direct {p0, p1, v0}, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->setPrefValue(Landroid/preference/ListPreference;Ljava/lang/String;)V

    .line 135
    const/4 v2, 0x1

    .end local v0           #packageName:Ljava/lang/String;
    :goto_1
    return v2

    .line 118
    .restart local p1
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mSwipeRight:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_1

    .line 119
    const-string v1, "gestures_right_swipe"

    goto :goto_0

    .line 120
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mSwipeUp:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_2

    .line 121
    const-string v1, "gestures_up_swipe"

    goto :goto_0

    .line 122
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mSwipeDown:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_3

    .line 123
    const-string v1, "gestures_down_swipe"

    goto :goto_0

    .line 124
    :cond_3
    iget-object v2, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mSwipeLong:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_4

    .line 125
    const-string v1, "gestures_long_press"

    goto :goto_0

    .line 126
    :cond_4
    iget-object v2, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mSwipeDouble:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_5

    .line 127
    const-string v1, "gestures_double_tap"

    goto :goto_0

    .line 129
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 103
    iget-object v0, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mEnableGestures:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 104
    iget-object v2, p0, Lcom/android/OriginalSettings/inputmethod/StylusGestures;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "enable_stylus_gestures"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    :goto_1
    return v1

    .line 104
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 109
    .restart local p2
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_1
.end method
