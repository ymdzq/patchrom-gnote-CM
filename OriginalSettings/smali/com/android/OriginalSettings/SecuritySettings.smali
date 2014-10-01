.class public Lcom/android/OriginalSettings/SecuritySettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

.field private mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mHomeUnlock:Landroid/preference/CheckBoxPreference;

.field private mIsPrimary:Z

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMenuUnlock:Landroid/preference/CheckBoxPreference;

.field private mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

.field private mQuickUnlockScreen:Landroid/preference/CheckBoxPreference;

.field private mResetCredentials:Landroid/preference/Preference;

.field private mShowPassword:Landroid/preference/CheckBoxPreference;

.field private mSlideLockDelayToggle:Landroid/preference/CheckBoxPreference;

.field private mSlideLockScreenOffDelay:Landroid/preference/ListPreference;

.field private mSlideLockTimeoutDelay:Landroid/preference/ListPreference;

.field private mSmsSecurityCheck:Landroid/preference/ListPreference;

.field private mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

.field private mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

.field private mVibratePref:Landroid/preference/CheckBoxPreference;

.field private mVisibleDots:Landroid/preference/CheckBoxPreference;

.field private mVisibleErrorPattern:Landroid/preference/CheckBoxPreference;

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private checkPowerInstantLockDependency()V
    .locals 6

    .prologue
    .line 547
    iget-object v2, p0, Lcom/android/OriginalSettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 548
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_lock_after_timeout"

    const-wide/16 v4, 0x1388

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 550
    .local v0, timeout:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 551
    iget-object v2, p0, Lcom/android/OriginalSettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 556
    .end local v0           #timeout:J
    :cond_0
    :goto_0
    return-void

    .line 553
    .restart local v0       #timeout:J
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 23

    .prologue
    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    .line 144
    .local v12, root:Landroid/preference/PreferenceScreen;
    if-eqz v12, :cond_0

    .line 145
    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 147
    :cond_0
    const v20, 0x7f050032

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    .line 151
    const/4 v6, 0x0

    .line 152
    .local v6, isCmSecurity:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SecuritySettings;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 153
    .local v3, args:Landroid/os/Bundle;
    if-eqz v3, :cond_1

    .line 154
    const-string v20, "cm_security"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 156
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 159
    .local v11, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 162
    .local v9, pm:Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    .line 163
    .local v10, resid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v20

    if-nez v20, :cond_f

    .line 165
    const-string v20, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    .line 166
    .local v7, mUm:Landroid/os/UserManager;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v19

    .line 167
    .local v19, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    const/4 v14, 0x1

    .line 169
    .local v14, singleUser:Z
    :goto_0
    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v20

    if-eqz v20, :cond_e

    .line 170
    const v10, 0x7f050038

    .line 192
    .end local v7           #mUm:Landroid/os/UserManager;
    .end local v14           #singleUser:Z
    .end local v19           #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/OriginalSettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 196
    const-string v20, "device_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    .line 199
    .local v5, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v20

    if-nez v20, :cond_11

    const/16 v20, 0x1

    :goto_2
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/OriginalSettings/SecuritySettings;->mIsPrimary:Z

    .line 201
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mIsPrimary:Z

    move/from16 v20, v0

    if-nez v20, :cond_2

    .line 203
    const-string v20, "owner_info_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 204
    .local v8, ownerInfoPref:Landroid/preference/Preference;
    if-eqz v8, :cond_2

    .line 205
    const v20, 0x7f080446

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 209
    .end local v8           #ownerInfoPref:Landroid/preference/Preference;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mIsPrimary:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    if-nez v6, :cond_3

    .line 210
    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v20

    packed-switch v20, :pswitch_data_0

    .line 223
    :cond_3
    :goto_3
    :pswitch_0
    const-string v20, "lock_after_timeout"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/ListPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    if-eqz v20, :cond_12

    .line 225
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/SecuritySettings;->setupLockAfterPreference()V

    .line 226
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 252
    :cond_4
    :goto_4
    if-eqz v6, :cond_8

    .line 254
    const-string v20, "power_button_instantly_locks"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    .line 256
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/SecuritySettings;->checkPowerInstantLockDependency()V

    .line 259
    const v20, 0x7f050036

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 262
    const-string v20, "quick_unlock_control"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SecuritySettings;->mQuickUnlockScreen:Landroid/preference/CheckBoxPreference;

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mQuickUnlockScreen:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    const-string v20, "lockscreen_quick_unlock_control"

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_14

    const/16 v20, 0x1

    :goto_5
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 268
    const-string v20, "menu_unlock"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SecuritySettings;->mMenuUnlock:Landroid/preference/CheckBoxPreference;

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mMenuUnlock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    const-string v20, "menu_unlock_screen"

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_15

    const/16 v20, 0x1

    :goto_6
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 273
    const-string v20, "home_unlock"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SecuritySettings;->mHomeUnlock:Landroid/preference/CheckBoxPreference;

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mHomeUnlock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    const-string v20, "home_unlock_screen"

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_16

    const/16 v20, 0x1

    :goto_7
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 278
    const-string v20, "lockscreen_vibrate"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SecuritySettings;->mVibratePref:Landroid/preference/CheckBoxPreference;

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mVibratePref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    const-string v20, "lockscreen.vibrate_enabled"

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_17

    const/16 v20, 0x1

    :goto_8
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v20

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v20

    if-nez v20, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v20

    if-eqz v20, :cond_18

    .line 287
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mQuickUnlockScreen:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mMenuUnlock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mHomeUnlock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mVibratePref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 305
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1110042

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mMenuUnlock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 310
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1110058

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mHomeUnlock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 317
    :cond_8
    const-string v20, "biometric_weak_liveliness"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    .line 321
    const-string v20, "visiblepattern"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    .line 324
    const-string v20, "visible_error_pattern"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SecuritySettings;->mVisibleErrorPattern:Landroid/preference/CheckBoxPreference;

    .line 327
    const-string v20, "visibledots"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SecuritySettings;->mVisibleDots:Landroid/preference/CheckBoxPreference;

    .line 330
    const-string v20, "power_button_instantly_locks"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    .line 334
    const v20, 0x7f050034

    move/from16 v0, v20

    if-ne v10, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v20

    const/high16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    .line 337
    const-string v20, "security_category"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceGroup;

    .line 339
    .local v13, securityCategory:Landroid/preference/PreferenceGroup;
    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mVisibleErrorPattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mVisibleDots:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mVisibleErrorPattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mVisibleDots:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 348
    .end local v13           #securityCategory:Landroid/preference/PreferenceGroup;
    :cond_9
    if-nez v6, :cond_c

    .line 349
    const v20, 0x7f050039

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 352
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    .line 353
    .local v18, tm:Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mIsPrimary:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v20

    if-nez v20, :cond_1a

    .line 354
    :cond_a
    const-string v20, "sim_lock"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 366
    :cond_b
    :goto_a
    const-string v20, "show_password"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    .line 369
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mIsPrimary:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1c

    .line 370
    const-string v20, "reset_credentials"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    .line 375
    :goto_b
    const-string v20, "toggle_install_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 380
    const-string v20, "toggle_verify_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    .line 381
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mIsPrimary:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1e

    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/SecuritySettings;->showVerifierSetting()Z

    move-result v20

    if-eqz v20, :cond_1e

    .line 382
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/SecuritySettings;->isVerifierInstalled()Z

    move-result v20

    if-eqz v20, :cond_1d

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/SecuritySettings;->isVerifyAppsEnabled()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 399
    :goto_c
    const v20, 0x7f050033

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 400
    const-string v20, "sms_security_check_limit"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/ListPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    .line 401
    const-string v20, "android.hardware.telephony"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_20

    .line 402
    const-string v20, "sms_security_check_limit"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/ListPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 405
    .local v17, smsSecurityCheck:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/SecuritySettings;->updateSmsSecuritySummary(I)V

    .line 413
    .end local v17           #smsSecurityCheck:I
    .end local v18           #tm:Landroid/telephony/TelephonyManager;
    :cond_c
    :goto_d
    return-object v12

    .line 167
    .end local v5           #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v7       #mUm:Landroid/os/UserManager;
    .restart local v19       #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_d
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 172
    .restart local v14       #singleUser:Z
    :cond_e
    const v10, 0x7f050035

    goto/16 :goto_1

    .line 174
    .end local v7           #mUm:Landroid/os/UserManager;
    .end local v14           #singleUser:Z
    .end local v19           #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v20

    if-eqz v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v20

    if-eqz v20, :cond_10

    .line 176
    const v10, 0x7f050034

    goto/16 :goto_1

    .line 178
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v20

    sparse-switch v20, :sswitch_data_0

    goto/16 :goto_1

    .line 180
    :sswitch_0
    const v10, 0x7f05003b

    .line 181
    goto/16 :goto_1

    .line 183
    :sswitch_1
    const v10, 0x7f05003e

    .line 184
    goto/16 :goto_1

    .line 188
    :sswitch_2
    const v10, 0x7f05003a

    goto/16 :goto_1

    .line 199
    .restart local v5       #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_11
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 213
    :pswitch_1
    const v20, 0x7f050037

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_3

    .line 217
    :pswitch_2
    const v20, 0x7f050040

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_3

    .line 227
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v20

    if-nez v20, :cond_4

    if-eqz v6, :cond_4

    .line 228
    const v20, 0x7f05003f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 230
    const-string v20, "slide_lock_delay_toggle"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SecuritySettings;->mSlideLockDelayToggle:Landroid/preference/CheckBoxPreference;

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mSlideLockDelayToggle:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    const-string v20, "screen_lock_slide_delay_toggle"

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    const/16 v20, 0x1

    :goto_e
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 235
    const-string v20, "slide_lock_timeout_delay"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/ListPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SecuritySettings;->mSlideLockTimeoutDelay:Landroid/preference/ListPreference;

    .line 237
    const-string v20, "screen_lock_slide_timeout_delay"

    const/16 v21, 0x1388

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 239
    .local v16, slideTimeoutDelay:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mSlideLockTimeoutDelay:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 240
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/SecuritySettings;->updateSlideAfterTimeoutSummary()V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mSlideLockTimeoutDelay:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 243
    const-string v20, "slide_lock_screenoff_delay"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/ListPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SecuritySettings;->mSlideLockScreenOffDelay:Landroid/preference/ListPreference;

    .line 245
    const-string v20, "screen_lock_slide_screenoff_delay"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 247
    .local v15, slideScreenOffDelay:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mSlideLockScreenOffDelay:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 248
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/SecuritySettings;->updateSlideAfterScreenOffSummary()V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mSlideLockScreenOffDelay:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_4

    .line 232
    .end local v15           #slideScreenOffDelay:I
    .end local v16           #slideTimeoutDelay:I
    :cond_13
    const/16 v20, 0x0

    goto :goto_e

    .line 264
    :cond_14
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 269
    :cond_15
    const/16 v20, 0x0

    goto/16 :goto_6

    .line 274
    :cond_16
    const/16 v20, 0x0

    goto/16 :goto_7

    .line 279
    :cond_17
    const/16 v20, 0x0

    goto/16 :goto_8

    .line 294
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v20

    if-eqz v20, :cond_19

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mQuickUnlockScreen:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mMenuUnlock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mHomeUnlock:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mVibratePref:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_9

    .line 302
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mQuickUnlockScreen:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_9

    .line 357
    .restart local v18       #tm:Landroid/telephony/TelephonyManager;
    :cond_1a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1b

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v20

    if-nez v20, :cond_b

    .line 361
    :cond_1b
    const-string v20, "sim_lock"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_a

    .line 372
    :cond_1c
    const-string v20, "credentials_management"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SecuritySettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 385
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_c

    .line 389
    :cond_1e
    const-string v20, "device_admin_category"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    .line 391
    .local v4, deviceAdminCategory:Landroid/preference/PreferenceGroup;
    if-eqz v4, :cond_1f

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_c

    .line 394
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_c

    .line 407
    .end local v4           #deviceAdminCategory:Landroid/preference/PreferenceGroup;
    :cond_20
    const-string v20, "app_security"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 409
    .local v2, appCategory:Landroid/preference/PreferenceGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_d

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 178
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private disableUnusableTimeouts(J)V
    .locals 10
    .parameter "maxTimeout"

    .prologue
    .line 559
    iget-object v8, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 560
    .local v0, entries:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 561
    .local v7, values:[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 562
    .local v2, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .local v3, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v8, v7

    if-ge v1, v8, :cond_1

    .line 564
    aget-object v8, v7, v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 565
    .local v4, timeout:J
    cmp-long v8, v4, p1

    if-gtz v8, :cond_0

    .line 566
    aget-object v8, v0, v1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    aget-object v8, v7, v1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 570
    .end local v4           #timeout:J
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v0

    if-ne v8, v9, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v7

    if-eq v8, v9, :cond_3

    .line 571
    :cond_2
    iget-object v9, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 573
    iget-object v9, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 575
    iget-object v8, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 576
    .local v6, userPreference:I
    int-to-long v8, v6

    cmp-long v8, v8, p1

    if-gtz v8, :cond_3

    .line 577
    iget-object v8, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 584
    .end local v6           #userPreference:I
    :cond_3
    iget-object v9, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 585
    return-void

    .line 584
    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 417
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isToggled(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "pref"

    .prologue
    .line 710
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private isVerifierInstalled()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 433
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 434
    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    .local v2, verification:Landroid/content/Intent;
    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 437
    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 438
    .local v1, receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private isVerifyAppsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 428
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "package_verifier_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 425
    return-void

    .line 423
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupLockAfterPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    .line 515
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 517
    .local v2, currentTimeout:J
    iget-object v8, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 518
    iget-object v8, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 519
    iget-object v8, p0, Lcom/android/OriginalSettings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/OriginalSettings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 520
    .local v0, adminTimeout:J
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    .line 522
    .local v4, displayTimeout:J
    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    .line 526
    sub-long v8, v0, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/OriginalSettings/SecuritySettings;->disableUnusableTimeouts(J)V

    .line 528
    :cond_0
    return-void

    .end local v0           #adminTimeout:J
    .end local v4           #displayTimeout:J
    :cond_1
    move-wide v0, v6

    .line 519
    goto :goto_0
.end method

.method private showVerifierSetting()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 442
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_setting_visible"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 13

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 534
    .local v1, currentTimeout:J
    iget-object v8, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 535
    .local v3, entries:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 536
    .local v7, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 537
    .local v0, best:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v8, v7

    if-ge v4, v8, :cond_1

    .line 538
    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 539
    .local v5, timeout:J
    cmp-long v8, v1, v5

    if-ltz v8, :cond_0

    .line 540
    move v0, v4

    .line 537
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 543
    .end local v5           #timeout:J
    :cond_1
    iget-object v8, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v9, 0x7f080440

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v12, v3, v0

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/OriginalSettings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 544
    return-void
.end method

.method private updateSlideAfterScreenOffSummary()V
    .locals 11

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_lock_slide_screenoff_delay"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    int-to-long v1, v8

    .line 501
    .local v1, currentTimeout:J
    iget-object v8, p0, Lcom/android/OriginalSettings/SecuritySettings;->mSlideLockScreenOffDelay:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 502
    .local v3, entries:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/OriginalSettings/SecuritySettings;->mSlideLockScreenOffDelay:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 503
    .local v7, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 504
    .local v0, best:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v8, v7

    if-ge v4, v8, :cond_1

    .line 505
    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 506
    .local v5, timeout:J
    cmp-long v8, v1, v5

    if-ltz v8, :cond_0

    .line 507
    move v0, v4

    .line 504
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 510
    .end local v5           #timeout:J
    :cond_1
    iget-object v8, p0, Lcom/android/OriginalSettings/SecuritySettings;->mSlideLockScreenOffDelay:Landroid/preference/ListPreference;

    aget-object v9, v3, v0

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 511
    return-void
.end method

.method private updateSlideAfterTimeoutSummary()V
    .locals 11

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_lock_slide_timeout_delay"

    const/16 v10, 0x1388

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    int-to-long v1, v8

    .line 479
    .local v1, currentTimeout:J
    iget-object v8, p0, Lcom/android/OriginalSettings/SecuritySettings;->mSlideLockTimeoutDelay:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 480
    .local v3, entries:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/OriginalSettings/SecuritySettings;->mSlideLockTimeoutDelay:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 481
    .local v7, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 482
    .local v0, best:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v8, v7

    if-ge v4, v8, :cond_1

    .line 483
    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 484
    .local v5, timeout:J
    cmp-long v8, v1, v5

    if-ltz v8, :cond_0

    .line 485
    move v0, v4

    .line 482
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 488
    .end local v5           #timeout:J
    :cond_1
    iget-object v8, p0, Lcom/android/OriginalSettings/SecuritySettings;->mSlideLockTimeoutDelay:Landroid/preference/ListPreference;

    aget-object v9, v3, v0

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 489
    return-void
.end method

.method private updateSmsSecuritySummary(I)V
    .locals 5
    .parameter "i"

    .prologue
    .line 492
    const v1, 0x7f08029c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/OriginalSettings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/OriginalSettings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 494
    return-void
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 448
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080676

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0806fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 455
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 768
    const v0, 0x7f0809fe

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 718
    invoke-super {p0, p1, p2, p3}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 719
    const/16 v1, 0x7c

    if-ne p1, v1, :cond_0

    if-ne p2, v2, :cond_0

    .line 721
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->startBiometricWeakImprove()V

    .line 733
    :goto_0
    return-void

    .line 723
    :cond_0
    const/16 v1, 0x7d

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    .line 725
    iget-object v1, p0, Lcom/android/OriginalSettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 726
    .local v0, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_0

    .line 732
    .end local v0           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 458
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 459
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 460
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 464
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 135
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 137
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 139
    new-instance v0, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    .line 140
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 468
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onDestroy()V

    .line 469
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/OriginalSettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 472
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 736
    iget-object v5, p0, Lcom/android/OriginalSettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_1

    .line 737
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 739
    .local v4, timeout:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_lock_after_timeout"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    :goto_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 745
    invoke-direct {p0}, Lcom/android/OriginalSettings/SecuritySettings;->checkPowerInstantLockDependency()V

    .line 763
    .end local v4           #timeout:I
    :cond_0
    :goto_1
    const/4 v5, 0x1

    return v5

    .line 741
    .restart local v4       #timeout:I
    :catch_0
    move-exception v0

    .line 742
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v5, "SecuritySettings"

    const-string v6, "could not persist lockAfter timeout setting"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 746
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v4           #timeout:I
    .restart local p2
    :cond_1
    iget-object v5, p0, Lcom/android/OriginalSettings/SecuritySettings;->mSlideLockTimeoutDelay:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_2

    .line 747
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 748
    .local v2, slideTimeoutDelay:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_lock_slide_timeout_delay"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 751
    invoke-direct {p0}, Lcom/android/OriginalSettings/SecuritySettings;->updateSlideAfterTimeoutSummary()V

    goto :goto_1

    .line 752
    .end local v2           #slideTimeoutDelay:I
    .restart local p2
    :cond_2
    iget-object v5, p0, Lcom/android/OriginalSettings/SecuritySettings;->mSlideLockScreenOffDelay:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_3

    .line 753
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 754
    .local v1, slideScreenOffDelay:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_lock_slide_screenoff_delay"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 756
    invoke-direct {p0}, Lcom/android/OriginalSettings/SecuritySettings;->updateSlideAfterScreenOffSummary()V

    goto :goto_1

    .line 757
    .end local v1           #slideScreenOffDelay:I
    .restart local p2
    :cond_3
    iget-object v5, p0, Lcom/android/OriginalSettings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_0

    .line 758
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 759
    .local v3, smsSecurityCheck:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sms_outgoing_check_max_count"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 761
    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/SecuritySettings;->updateSmsSecuritySummary(I)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 626
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 628
    .local v1, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/OriginalSettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    .line 629
    .local v2, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const-string v3, "unlock_set_or_change"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 630
    const-string v3, "com.android.OriginalSettings.ChooseLockGeneric$ChooseLockGenericFragment"

    const/16 v6, 0x7b

    invoke-virtual {p0, p0, v3, v6, v7}, Lcom/android/OriginalSettings/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 676
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/OriginalSettings/SecuritySettings;->mQuickUnlockScreen:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_c

    .line 677
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "lockscreen_quick_unlock_control"

    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v5, v4

    :cond_1
    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 706
    :goto_1
    return v4

    .line 632
    :cond_2
    const-string v3, "biometric_weak_improve_matching"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 633
    new-instance v0, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 635
    .local v0, helper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;
    const/16 v3, 0x7c

    invoke-virtual {v0, v3, v7, v7}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 641
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->startBiometricWeakImprove()V

    goto :goto_0

    .line 643
    .end local v0           #helper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;
    :cond_3
    const-string v3, "biometric_weak_liveliness"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 644
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 645
    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_0

    .line 650
    :cond_4
    iget-object v3, p0, Lcom/android/OriginalSettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 651
    new-instance v0, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 653
    .restart local v0       #helper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;
    const/16 v3, 0x7d

    invoke-virtual {v0, v3, v7, v7}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 659
    invoke-virtual {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 660
    iget-object v3, p0, Lcom/android/OriginalSettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 663
    .end local v0           #helper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;
    :cond_5
    const-string v3, "lockenabled"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 664
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_0

    .line 665
    :cond_6
    const-string v3, "visiblepattern"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 666
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto/16 :goto_0

    .line 667
    :cond_7
    const-string v3, "visible_error_pattern"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 668
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setShowErrorPath(Z)V

    goto/16 :goto_0

    .line 669
    :cond_8
    const-string v3, "visibledots"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 670
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisibleDotsEnabled(Z)V

    goto/16 :goto_0

    .line 671
    :cond_9
    const-string v3, "power_button_instantly_locks"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 672
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(Z)V

    goto/16 :goto_0

    .line 673
    :cond_a
    iget-object v3, p0, Lcom/android/OriginalSettings/SecuritySettings;->mSlideLockDelayToggle:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_0

    .line 674
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_lock_slide_delay_toggle"

    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v4

    :goto_2
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_b
    move v3, v5

    goto :goto_2

    .line 679
    :cond_c
    iget-object v3, p0, Lcom/android/OriginalSettings/SecuritySettings;->mMenuUnlock:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_e

    .line 680
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "menu_unlock_screen"

    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v7

    if-eqz v7, :cond_d

    move v5, v4

    :cond_d
    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 682
    :cond_e
    iget-object v3, p0, Lcom/android/OriginalSettings/SecuritySettings;->mHomeUnlock:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_10

    .line 683
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "home_unlock_screen"

    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v7

    if-eqz v7, :cond_f

    move v5, v4

    :cond_f
    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 685
    :cond_10
    iget-object v3, p0, Lcom/android/OriginalSettings/SecuritySettings;->mVibratePref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_12

    .line 686
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "lockscreen.vibrate_enabled"

    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v7

    if-eqz v7, :cond_11

    move v5, v4

    :cond_11
    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 688
    :cond_12
    iget-object v3, p0, Lcom/android/OriginalSettings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_14

    .line 689
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "show_password"

    iget-object v7, p0, Lcom/android/OriginalSettings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_13

    move v5, v4

    :cond_13
    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 691
    :cond_14
    iget-object v3, p0, Lcom/android/OriginalSettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_16

    .line 692
    iget-object v3, p0, Lcom/android/OriginalSettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 693
    iget-object v3, p0, Lcom/android/OriginalSettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 694
    invoke-direct {p0}, Lcom/android/OriginalSettings/SecuritySettings;->warnAppInstallation()V

    goto/16 :goto_1

    .line 696
    :cond_15
    invoke-direct {p0, v5}, Lcom/android/OriginalSettings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto/16 :goto_1

    .line 698
    :cond_16
    const-string v3, "toggle_verify_applications"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 699
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "package_verifier_enable"

    iget-object v7, p0, Lcom/android/OriginalSettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_17

    move v5, v4

    :cond_17
    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 703
    :cond_18
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 589
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 593
    invoke-direct {p0}, Lcom/android/OriginalSettings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 595
    iget-object v2, p0, Lcom/android/OriginalSettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/OriginalSettings/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 596
    .local v0, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    iget-object v2, p0, Lcom/android/OriginalSettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 597
    iget-object v2, p0, Lcom/android/OriginalSettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 600
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 601
    iget-object v2, p0, Lcom/android/OriginalSettings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 603
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/SecuritySettings;->mVisibleErrorPattern:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    .line 604
    iget-object v2, p0, Lcom/android/OriginalSettings/SecuritySettings;->mVisibleErrorPattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isShowErrorPath()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 606
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/SecuritySettings;->mVisibleDots:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    .line 607
    iget-object v2, p0, Lcom/android/OriginalSettings/SecuritySettings;->mVisibleDots:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisibleDotsEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 609
    :cond_3
    iget-object v2, p0, Lcom/android/OriginalSettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_4

    .line 610
    iget-object v2, p0, Lcom/android/OriginalSettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 613
    :cond_4
    iget-object v2, p0, Lcom/android/OriginalSettings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_5

    .line 614
    iget-object v5, p0, Lcom/android/OriginalSettings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "show_password"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 618
    :cond_5
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    .line 619
    .local v1, state:Landroid/security/KeyStore$State;
    iget-object v2, p0, Lcom/android/OriginalSettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    if-eqz v2, :cond_6

    .line 620
    iget-object v2, p0, Lcom/android/OriginalSettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    sget-object v5, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    if-eq v1, v5, :cond_8

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 622
    :cond_6
    return-void

    .end local v1           #state:Landroid/security/KeyStore$State;
    :cond_7
    move v2, v4

    .line 614
    goto :goto_0

    .restart local v1       #state:Landroid/security/KeyStore$State;
    :cond_8
    move v3, v4

    .line 620
    goto :goto_1
.end method

.method public startBiometricWeakImprove()V
    .locals 3

    .prologue
    .line 772
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 773
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 774
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 775
    return-void
.end method
