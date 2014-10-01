.class public Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "DisplayRotation.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAccelerometer:Landroid/preference/CheckBoxPreference;

.field private mAccelerometerRotationObserver:Landroid/database/ContentObserver;

.field private mLockScreenRotationPref:Landroid/preference/CheckBoxPreference;

.field private mRotation0Pref:Landroid/preference/CheckBoxPreference;

.field private mRotation180Pref:Landroid/preference/CheckBoxPreference;

.field private mRotation270Pref:Landroid/preference/CheckBoxPreference;

.field private mRotation90Pref:Landroid/preference/CheckBoxPreference;

.field private mSwapVolumeButtons:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 58
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation$1;-><init>(Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->updateAccelerometerRotationCheckbox()V

    return-void
.end method

.method private updateAccelerometerRotationCheckbox()V
    .locals 2

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 144
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateState()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->updateAccelerometerRotationCheckbox()V

    .line 140
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 67
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x1110054

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 70
    .local v0, hasRotationLock:Z
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v4, 0x7f050015

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->addPreferencesFromResource(I)V

    .line 74
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 76
    .local v2, prefSet:Landroid/preference/PreferenceScreen;
    const-string v4, "accelerometer"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    .line 77
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 79
    const-string v4, "lockscreen_rotation"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mLockScreenRotationPref:Landroid/preference/CheckBoxPreference;

    .line 80
    const-string v4, "display_rotation_0"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    .line 81
    const-string v4, "display_rotation_90"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mRotation90Pref:Landroid/preference/CheckBoxPreference;

    .line 82
    const-string v4, "display_rotation_180"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mRotation180Pref:Landroid/preference/CheckBoxPreference;

    .line 83
    const-string v4, "display_rotation_270"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mRotation270Pref:Landroid/preference/CheckBoxPreference;

    .line 85
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "accelerometer_rotation_angles"

    const/16 v8, 0xb

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 89
    .local v1, mode:I
    iget-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_3

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 90
    iget-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mRotation90Pref:Landroid/preference/CheckBoxPreference;

    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_4

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 91
    iget-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mRotation180Pref:Landroid/preference/CheckBoxPreference;

    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 92
    iget-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mRotation270Pref:Landroid/preference/CheckBoxPreference;

    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_6

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 94
    const-string v4, "swap_volume_buttons"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mSwapVolumeButtons:Landroid/preference/CheckBoxPreference;

    .line 95
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mSwapVolumeButtons:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/OriginalSettings/Utils;->hasVolumeRocker(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 97
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mSwapVolumeButtons:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 105
    :cond_0
    :goto_4
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mLockScreenRotationPref:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_1

    .line 106
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mLockScreenRotationPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lockscreen_rotation"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_9

    :goto_5
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 110
    :cond_1
    if-eqz v0, :cond_2

    .line 112
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 113
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mSwapVolumeButtons:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v9}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 114
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v9}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 115
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mRotation90Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v9}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 116
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mRotation180Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v9}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 117
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mRotation270Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v9}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 119
    :cond_2
    return-void

    :cond_3
    move v4, v6

    .line 89
    goto :goto_0

    :cond_4
    move v4, v6

    .line 90
    goto :goto_1

    :cond_5
    move v4, v6

    .line 91
    goto :goto_2

    :cond_6
    move v4, v6

    .line 92
    goto :goto_3

    .line 99
    :cond_7
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "swap_volume_keys_on_rotation"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 101
    .local v3, swapVolumeKeys:I
    iget-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mSwapVolumeButtons:Landroid/preference/CheckBoxPreference;

    if-lez v3, :cond_8

    move v4, v5

    :goto_6
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_4

    :cond_8
    move v4, v6

    goto :goto_6

    .end local v3           #swapVolumeKeys:I
    :cond_9
    move v5, v6

    .line 106
    goto :goto_5
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 135
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 136
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 151
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_2

    .line 152
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_1

    :goto_0
    invoke-static {v4, v2}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 184
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    :goto_2
    return v2

    :cond_1
    move v2, v3

    .line 152
    goto :goto_0

    .line 153
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    if-eq p2, v4, :cond_3

    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mRotation90Pref:Landroid/preference/CheckBoxPreference;

    if-eq p2, v4, :cond_3

    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mRotation180Pref:Landroid/preference/CheckBoxPreference;

    if-eq p2, v4, :cond_3

    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mRotation270Pref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_9

    .line 157
    :cond_3
    const/4 v0, 0x0

    .line 158
    .local v0, mode:I
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 159
    or-int/lit8 v0, v0, 0x1

    .line 160
    :cond_4
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mRotation90Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 161
    or-int/lit8 v0, v0, 0x2

    .line 162
    :cond_5
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mRotation180Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 163
    or-int/lit8 v0, v0, 0x4

    .line 164
    :cond_6
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mRotation270Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 165
    or-int/lit8 v0, v0, 0x8

    .line 166
    :cond_7
    if-nez v0, :cond_8

    .line 167
    or-int/lit8 v0, v0, 0x1

    .line 168
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mRotation0Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 170
    :cond_8
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accelerometer_rotation_angles"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 173
    .end local v0           #mode:I
    :cond_9
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mLockScreenRotationPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_b

    .line 174
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mLockScreenRotationPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 175
    .local v1, value:Z
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_rotation"

    if-eqz v1, :cond_a

    move v3, v2

    :cond_a
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 178
    .end local v1           #value:Z
    :cond_b
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mSwapVolumeButtons:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_0

    .line 179
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mSwapVolumeButtons:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/OriginalSettings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v1, 0x2

    .line 180
    .local v1, value:I
    :goto_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "swap_volume_keys_on_rotation"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .end local v1           #value:I
    :cond_c
    move v1, v2

    .line 179
    goto :goto_3

    :cond_d
    move v1, v3

    goto :goto_3
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 123
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 125
    invoke-direct {p0}, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->updateState()V

    .line 126
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/DisplayRotation;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 129
    return-void
.end method
