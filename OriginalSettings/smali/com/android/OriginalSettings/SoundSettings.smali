.class public Lcom/android/OriginalSettings/SoundSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final NEED_VOICE_CAPABILITY:[Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mConvertSoundToVibration:Landroid/preference/CheckBoxPreference;

.field private mDialogClicked:Z

.field private mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

.field private mDockAudioSettings:Landroid/preference/Preference;

.field private mDockIntent:Landroid/content/Intent;

.field private mDockSounds:Landroid/preference/CheckBoxPreference;

.field private mDtmfTone:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mHeadsetConnectPlayer:Landroid/preference/CheckBoxPreference;

.field private mLockSounds:Landroid/preference/CheckBoxPreference;

.field private mMusicFx:Landroid/preference/Preference;

.field private mNotificationPreference:Landroid/preference/Preference;

.field private mPowerSounds:Landroid/preference/CheckBoxPreference;

.field private mPowerSoundsRingtone:Landroid/preference/Preference;

.field private mPowerSoundsVibrate:Landroid/preference/CheckBoxPreference;

.field private mQuietHours:Landroid/preference/PreferenceScreen;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingMode:Landroid/preference/ListPreference;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private mSafeHeadsetVolume:Landroid/preference/CheckBoxPreference;

.field private mSoundEffects:Landroid/preference/CheckBoxPreference;

.field private mSoundSettings:Landroid/preference/PreferenceGroup;

.field private mVibrateDuringCalls:Landroid/preference/CheckBoxPreference;

.field private mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

.field private mVolBtnMusicCtrl:Landroid/preference/CheckBoxPreference;

.field private mVolumeAdjustSounds:Landroid/preference/CheckBoxPreference;

.field private mVolumeOverlay:Landroid/preference/ListPreference;

.field private mWaiverDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 104
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "category_calls_and_notification"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "emergency_tone"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "increasing_ring"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "vibrate_when_ringing"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/OriginalSettings/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 153
    new-instance v0, Lcom/android/OriginalSettings/SoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/SoundSettings$1;-><init>(Lcom/android/OriginalSettings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mHandler:Landroid/os/Handler;

    .line 166
    new-instance v0, Lcom/android/OriginalSettings/SoundSettings$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/SoundSettings$2;-><init>(Lcom/android/OriginalSettings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/SoundSettings;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/SoundSettings;->handleDockChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/SoundSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/SoundSettings;->updateState(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/SoundSettings;ILandroid/preference/Preference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/OriginalSettings/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method private createUndockedMessage()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 766
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 767
    const v1, 0x7f0805d1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 768
    const v1, 0x7f0805d2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 769
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 770
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mWaiverDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mWaiverDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 776
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mWaiverDialog:Landroid/app/Dialog;

    .line 778
    :cond_0
    return-void
.end method

.method private getPhoneRingModeSettingValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 413
    const-string v0, "normal"

    :goto_0
    return-object v0

    .line 406
    :pswitch_0
    const-string v0, "normal"

    goto :goto_0

    .line 408
    :pswitch_1
    const-string v0, "vibrate"

    goto :goto_0

    .line 410
    :pswitch_2
    const-string v0, "mute"

    goto :goto_0

    .line 404
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleDockChange(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 660
    iget-object v3, p0, Lcom/android/OriginalSettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    if-eqz v3, :cond_0

    .line 661
    const-string v3, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 663
    .local v0, dockState:I
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_1

    move v1, v4

    .line 666
    .local v1, isBluetooth:Z
    :goto_0
    iput-object p1, p0, Lcom/android/OriginalSettings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    .line 668
    if-eqz v0, :cond_6

    .line 671
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/SoundSettings;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    :goto_1
    if-eqz v1, :cond_2

    .line 677
    iget-object v3, p0, Lcom/android/OriginalSettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 701
    .end local v0           #dockState:I
    .end local v1           #isBluetooth:Z
    :cond_0
    :goto_2
    return-void

    .restart local v0       #dockState:I
    :cond_1
    move v1, v5

    .line 663
    goto :goto_0

    .line 679
    .restart local v1       #isBluetooth:Z
    :cond_2
    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    .line 680
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 681
    .local v2, resolver:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/OriginalSettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 682
    const-string v3, "dock_audio_media_enabled"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 684
    const-string v3, "dock_audio_media_enabled"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 687
    :cond_3
    const-string v3, "dock_audio_media_enabled"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    .line 689
    iget-object v3, p0, Lcom/android/OriginalSettings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 690
    iget-object v3, p0, Lcom/android/OriginalSettings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    const-string v6, "dock_audio_media_enabled"

    invoke-static {v2, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    :goto_3
    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    :cond_4
    move v4, v5

    goto :goto_3

    .line 694
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :cond_5
    iget-object v3, p0, Lcom/android/OriginalSettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 698
    :cond_6
    iget-object v3, p0, Lcom/android/OriginalSettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 672
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private initDockSettings()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 642
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 644
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-direct {p0}, Lcom/android/OriginalSettings/SoundSettings;->needsDockSettings()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 645
    const-string v1, "dock_sounds"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    .line 646
    iget-object v1, p0, Lcom/android/OriginalSettings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 647
    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    const-string v1, "dock_sounds_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 649
    const-string v1, "dock_audio"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    .line 650
    iget-object v1, p0, Lcom/android/OriginalSettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 657
    :goto_1
    return-void

    :cond_0
    move v1, v3

    .line 647
    goto :goto_0

    .line 652
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "dock_category"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 653
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "dock_audio"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 654
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "dock_sounds"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 655
    const-string v1, "dock_audio_media_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private launchNotificationSoundPicker(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 704
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 706
    const-string v1, "android.intent.extra.ringtone.TITLE"

    const v2, 0x7f080316

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    const-string v1, "android.intent.extra.ringtone.TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 710
    const-string v1, "android.intent.extra.ringtone.DEFAULT_URI"

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 712
    if-eqz p2, :cond_0

    const-string v1, "silent"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 714
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 715
    if-eqz v1, :cond_0

    .line 716
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 719
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/android/OriginalSettings/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 720
    return-void
.end method

.method private lookupRingtoneNames()V
    .locals 2

    .prologue
    .line 463
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/OriginalSettings/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 464
    return-void
.end method

.method private needsDockSettings()Z
    .locals 2

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private returnTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "t"

    .prologue
    .line 617
    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 618
    :cond_0
    const-string v4, ""

    .line 629
    :goto_0
    return-object v4

    .line 620
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 621
    .local v2, hr:I
    move v3, v2

    .line 623
    .local v3, mn:I
    div-int/lit8 v2, v2, 0x3c

    .line 624
    rem-int/lit8 v3, v3, 0x3c

    .line 625
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 626
    .local v0, cal:Ljava/util/Calendar;
    const/16 v4, 0xb

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 627
    const/16 v4, 0xc

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 628
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 629
    .local v1, date:Ljava/util/Date;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private setPhoneRingModeValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 394
    const/4 v0, 0x2

    .line 395
    .local v0, ringerMode:I
    const-string v1, "mute"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 396
    const/4 v0, 0x0

    .line 400
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 401
    return-void

    .line 397
    :cond_1
    const-string v1, "vibrate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setPowerNotificationRingtone(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 723
    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 728
    if-eqz v0, :cond_0

    .line 729
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 730
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 731
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 738
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mPowerSoundsRingtone:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 739
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_notifications_ringtone"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 741
    return-void

    .line 734
    :cond_0
    const v0, 0x7f080317

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 735
    const-string v0, "silent"

    goto :goto_0
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 9
    .parameter "type"
    .parameter "preference"
    .parameter "msg"

    .prologue
    .line 436
    if-nez p2, :cond_1

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 438
    .local v6, context:Landroid/content/Context;
    if-eqz v6, :cond_0

    .line 439
    invoke-static {v6, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 440
    .local v1, ringtoneUri:Landroid/net/Uri;
    const v0, 0x1040475

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 442
    .local v8, summary:Ljava/lang/CharSequence;
    if-nez v1, :cond_3

    .line 443
    const v0, 0x1040473

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 459
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p3, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 447
    :cond_3
    :try_start_0
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 449
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 450
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 451
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 453
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 455
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private updateState(Z)V
    .locals 4
    .parameter "force"

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 433
    :goto_0
    return-void

    .line 419
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 421
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/OriginalSettings/SoundSettings;->mRingMode:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/OriginalSettings/SoundSettings;->getPhoneRingModeSettingValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 423
    const-string v1, "quiet_hours_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 424
    iget-object v1, p0, Lcom/android/OriginalSettings/SoundSettings;->mQuietHours:Landroid/preference/PreferenceScreen;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f08008c

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "quiet_hours_start"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/SoundSettings;->returnTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f08008d

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "quiet_hours_end"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/SoundSettings;->returnTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 432
    :goto_1
    iget-object v1, p0, Lcom/android/OriginalSettings/SoundSettings;->mRingMode:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mRingMode:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 429
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/SoundSettings;->mQuietHours:Landroid/preference/PreferenceScreen;

    const v2, 0x7f080076

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 634
    const v0, 0x7f0809f5

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 745
    packed-switch p1, :pswitch_data_0

    .line 752
    invoke-super {p0, p1, p2, p3}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 747
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 748
    invoke-direct {p0, p3}, Lcom/android/OriginalSettings/SoundSettings;->setPowerNotificationRingtone(Landroid/content/Intent;)V

    goto :goto_0

    .line 745
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mWaiverDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    .line 782
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 783
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mDialogClicked:Z

    .line 784
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "safe_headset_volume"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 787
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 21
    .parameter "savedInstanceState"

    .prologue
    .line 181
    invoke-super/range {p0 .. p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 183
    .local v12, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v2

    .line 185
    .local v2, activePhoneType:I
    const-string v18, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/media/AudioManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 187
    const v18, 0x7f050043

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->addPreferencesFromResource(I)V

    .line 189
    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v0, v2, :cond_0

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    const-string v19, "emergency_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 194
    :cond_0
    const-string v18, "volume_overlay"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/ListPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SoundSettings;->mVolumeOverlay:Landroid/preference/ListPreference;

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mVolumeOverlay:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "mode_volume_overlay"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 199
    .local v17, volumeOverlay:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mVolumeOverlay:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mVolumeOverlay:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mVolumeOverlay:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 202
    const-string v18, "ring_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/ListPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SoundSettings;->mRingMode:Landroid/preference/ListPreference;

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0b0003

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    if-nez v18, :cond_8

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mRingMode:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 205
    const-string v18, "ring_volume"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 210
    :goto_0
    const-string v18, "quiet_hours"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SoundSettings;->mQuietHours:Landroid/preference/PreferenceScreen;

    .line 211
    const-string v18, "quiet_hours_enabled"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mQuietHours:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const v20, 0x7f08008c

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "quiet_hours_start"

    move-object/from16 v0, v20

    invoke-static {v12, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->returnTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f08008d

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "quiet_hours_end"

    move-object/from16 v0, v20

    invoke-static {v12, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->returnTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 220
    :goto_1
    const-string v18, "safe_headset_volume"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SoundSettings;->mSafeHeadsetVolume:Landroid/preference/CheckBoxPreference;

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mSafeHeadsetVolume:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x111004e

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    .line 224
    .local v15, safeMediaVolumeEnabled:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mSafeHeadsetVolume:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const-string v20, "safe_headset_volume"

    if-eqz v15, :cond_a

    const/16 v18, 0x1

    :goto_2
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_b

    const/16 v18, 0x1

    :goto_3
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 227
    const-string v18, "vibrate_when_ringing"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const-string v18, "vibrate_when_ringing"

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_c

    const/16 v18, 0x1

    :goto_4
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 232
    const-string v18, "dtmf_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const-string v18, "dtmf_tone"

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_d

    const/16 v18, 0x1

    :goto_5
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 236
    const-string v18, "sound_effects"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const-string v18, "sound_effects_enabled"

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_e

    const/16 v18, 0x1

    :goto_6
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 240
    const-string v18, "haptic_feedback"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const-string v18, "haptic_feedback_enabled"

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_f

    const/16 v18, 0x1

    :goto_7
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 244
    const-string v18, "volume_adjust_sounds"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SoundSettings;->mVolumeAdjustSounds:Landroid/preference/CheckBoxPreference;

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mVolumeAdjustSounds:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/OriginalSettings/Utils;->hasVolumeRocker(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_10

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mVolumeAdjustSounds:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 253
    :cond_1
    :goto_8
    const-string v18, "lock_sounds"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const-string v18, "lockscreen_sounds_enabled"

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_12

    const/16 v18, 0x1

    :goto_9
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 258
    const-string v18, "volbtn_music_controls"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SoundSettings;->mVolBtnMusicCtrl:Landroid/preference/CheckBoxPreference;

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mVolBtnMusicCtrl:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/OriginalSettings/Utils;->hasVolumeRocker(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_13

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mVolBtnMusicCtrl:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 268
    :cond_2
    :goto_a
    const-string v18, "headset_connect_player"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SoundSettings;->mHeadsetConnectPlayer:Landroid/preference/CheckBoxPreference;

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mHeadsetConnectPlayer:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const-string v18, "headset_connect_player"

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_15

    const/16 v18, 0x1

    :goto_b
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 272
    const-string v18, "notification_convert_sound_to_vibration"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SoundSettings;->mConvertSoundToVibration:Landroid/preference/CheckBoxPreference;

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mConvertSoundToVibration:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mConvertSoundToVibration:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const-string v18, "convert_sound_to_vibration"

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_16

    const/16 v18, 0x1

    :goto_c
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 278
    const-string v18, "notification_vibrate_during_calls"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SoundSettings;->mVibrateDuringCalls:Landroid/preference/CheckBoxPreference;

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mVibrateDuringCalls:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const-string v18, "vibrate_while_no_alerts"

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_17

    const/16 v18, 0x1

    :goto_d
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 282
    const-string v18, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    .line 283
    const-string v18, "notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    .line 285
    const-string v18, "vibrator"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Vibrator;

    .line 286
    .local v16, vibrator:Landroid/os/Vibrator;
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v18

    if-nez v18, :cond_4

    .line 287
    :cond_3
    const-string v18, "vibrate_when_ringing"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 288
    const-string v18, "haptic_feedback"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 289
    const-string v18, "notification_convert_sound_to_vibration"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 290
    const-string v18, "notification_vibrate_during_calls"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 293
    :cond_4
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_5

    .line 294
    const-string v18, "emergency_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    .line 296
    .local v5, emergencyTonePreference:Landroid/preference/ListPreference;
    const-string v18, "emergency_tone"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 298
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 301
    .end local v5           #emergencyTonePreference:Landroid/preference/ListPreference;
    :cond_5
    const-string v18, "sound_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    move-object/from16 v18, v0

    const-string v19, "musicfx"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    .line 304
    new-instance v6, Landroid/content/Intent;

    const-string v18, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    .local v6, i:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 307
    .local v9, p:Landroid/content/pm/PackageManager;
    const/16 v18, 0x200

    move/from16 v0, v18

    invoke-virtual {v9, v6, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    .line 308
    .local v14, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v18

    if-nez v18, :cond_18

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 314
    :cond_6
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/OriginalSettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_19

    .line 315
    sget-object v3, Lcom/android/OriginalSettings/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    .local v3, arr$:[Ljava/lang/String;
    array-length v8, v3

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_f
    if-ge v7, v8, :cond_19

    aget-object v11, v3, v7

    .line 316
    .local v11, prefKey:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 317
    .local v10, pref:Landroid/preference/Preference;
    if-eqz v10, :cond_7

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 315
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 207
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v6           #i:Landroid/content/Intent;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v9           #p:Landroid/content/pm/PackageManager;
    .end local v10           #pref:Landroid/preference/Preference;
    .end local v11           #prefKey:Ljava/lang/String;
    .end local v14           #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v15           #safeMediaVolumeEnabled:Z
    .end local v16           #vibrator:Landroid/os/Vibrator;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mRingMode:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    .line 217
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mQuietHours:Landroid/preference/PreferenceScreen;

    move-object/from16 v18, v0

    const v19, 0x7f080076

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 224
    .restart local v15       #safeMediaVolumeEnabled:Z
    :cond_a
    const/16 v18, 0x0

    goto/16 :goto_2

    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 229
    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 234
    :cond_d
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 238
    :cond_e
    const/16 v18, 0x0

    goto/16 :goto_6

    .line 242
    :cond_f
    const/16 v18, 0x0

    goto/16 :goto_7

    .line 249
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mVolumeAdjustSounds:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const-string v18, "volume_adjust_sounds_enabled"

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_11

    const/16 v18, 0x1

    :goto_10
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_8

    :cond_11
    const/16 v18, 0x0

    goto :goto_10

    .line 255
    :cond_12
    const/16 v18, 0x0

    goto/16 :goto_9

    .line 263
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mVolBtnMusicCtrl:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const-string v18, "volbtn_music_controls"

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_14

    const/16 v18, 0x1

    :goto_11
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_a

    :cond_14
    const/16 v18, 0x0

    goto :goto_11

    .line 269
    :cond_15
    const/16 v18, 0x0

    goto/16 :goto_b

    .line 275
    :cond_16
    const/16 v18, 0x0

    goto/16 :goto_c

    .line 279
    :cond_17
    const/16 v18, 0x0

    goto/16 :goto_d

    .line 310
    .restart local v6       #i:Landroid/content/Intent;
    .restart local v9       #p:Landroid/content/pm/PackageManager;
    .restart local v14       #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v16       #vibrator:Landroid/os/Vibrator;
    :cond_18
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    move-object/from16 v19, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 323
    :cond_19
    new-instance v18, Lcom/android/OriginalSettings/SoundSettings$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/SoundSettings$3;-><init>(Lcom/android/OriginalSettings/SoundSettings;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 336
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/SoundSettings;->initDockSettings()V

    .line 339
    const-string v18, "power_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SoundSettings;->mPowerSounds:Landroid/preference/CheckBoxPreference;

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mPowerSounds:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const-string v18, "power_notifications_enabled"

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_1e

    const/16 v18, 0x1

    :goto_12
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 342
    const-string v18, "power_notifications_vibrate"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SoundSettings;->mPowerSoundsVibrate:Landroid/preference/CheckBoxPreference;

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mPowerSoundsVibrate:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const-string v18, "power_notifications_vibrate"

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_1f

    const/16 v18, 0x1

    :goto_13
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 345
    if-eqz v16, :cond_1a

    invoke-virtual/range {v16 .. v16}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v18

    if-nez v18, :cond_1b

    .line 346
    :cond_1a
    const-string v18, "power_notifications_vibrate"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 349
    :cond_1b
    const-string v18, "power_notifications_ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/SoundSettings;->mPowerSoundsRingtone:Landroid/preference/Preference;

    .line 350
    const-string v18, "power_notifications_ringtone"

    move-object/from16 v0, v18

    invoke-static {v12, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 354
    .local v4, currentPowerRingtonePath:Ljava/lang/String;
    if-nez v4, :cond_1c

    .line 355
    sget-object v18, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "power_notifications_ringtone"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 360
    :cond_1c
    const-string v18, "silent"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_20

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mPowerSoundsRingtone:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const v19, 0x7f080317

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 371
    :cond_1d
    :goto_14
    return-void

    .line 340
    .end local v4           #currentPowerRingtonePath:Ljava/lang/String;
    :cond_1e
    const/16 v18, 0x0

    goto/16 :goto_12

    .line 343
    :cond_1f
    const/16 v18, 0x0

    goto :goto_13

    .line 364
    .restart local v4       #currentPowerRingtonePath:Ljava/lang/String;
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v13

    .line 366
    .local v13, ringtone:Landroid/media/Ringtone;
    if-eqz v13, :cond_1d

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/SoundSettings;->mPowerSoundsRingtone:Landroid/preference/Preference;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_14
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 759
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 760
    invoke-direct {p0}, Lcom/android/OriginalSettings/SoundSettings;->createUndockedMessage()Landroid/app/Dialog;

    move-result-object v0

    .line 762
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 801
    invoke-direct {p0}, Lcom/android/OriginalSettings/SoundSettings;->dismissDialog()V

    .line 802
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onDestroy()V

    .line 803
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 791
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mWaiverDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    .line 792
    iget-boolean v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mDialogClicked:Z

    if-nez v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mSafeHeadsetVolume:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 795
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mWaiverDialog:Landroid/app/Dialog;

    .line 797
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 389
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 390
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 391
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 592
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 593
    .local v2, key:Ljava/lang/String;
    const-string v4, "emergency_tone"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 595
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 596
    .local v3, value:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "emergency_tone"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    .end local v3           #value:I
    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 598
    :catch_0
    move-exception v0

    .line 599
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "SoundSettings"

    const-string v5, "could not persist emergency tone setting"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 602
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mRingMode:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_2

    .line 603
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/SoundSettings;->setPhoneRingModeValue(Ljava/lang/String;)V

    goto :goto_0

    .line 605
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mVolumeOverlay:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_0

    move-object v4, p2

    .line 606
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 607
    .restart local v3       #value:I
    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mVolumeOverlay:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v4, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 608
    .local v1, index:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mode_volume_overlay"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 610
    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mVolumeOverlay:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/OriginalSettings/SoundSettings;->mVolumeOverlay:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 468
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 469
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vibrate_when_ringing"

    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    move v2, v1

    .line 588
    :cond_0
    :goto_2
    return v2

    :cond_1
    move v0, v2

    .line 469
    goto :goto_0

    .line 472
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    .line 473
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dtmf_tone"

    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v1

    :cond_3
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 476
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_7

    .line 477
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 478
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 482
    :goto_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "sound_effects_enabled"

    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v1

    :cond_5
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 480
    :cond_6
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_3

    .line 485
    :cond_7
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_9

    .line 486
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "haptic_feedback_enabled"

    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    move v2, v1

    :cond_8
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 489
    :cond_9
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mVolumeAdjustSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_b

    .line 490
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "volume_adjust_sounds_enabled"

    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mVolumeAdjustSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    move v2, v1

    :cond_a
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 493
    :cond_b
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_d

    .line 494
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lockscreen_sounds_enabled"

    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_c

    move v2, v1

    :cond_c
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 497
    :cond_d
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mConvertSoundToVibration:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_f

    .line 498
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "convert_sound_to_vibration"

    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mConvertSoundToVibration:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_e

    move v2, v1

    :cond_e
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 501
    :cond_f
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mVibrateDuringCalls:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_11

    .line 502
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "vibrate_while_no_alerts"

    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mVibrateDuringCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_10

    move v2, v1

    :cond_10
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 506
    :cond_11
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    if-eq p2, v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    if-ne p2, v0, :cond_17

    .line 511
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 515
    :goto_4
    if-nez v0, :cond_13

    .line 516
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/SoundSettings;->showDialog(I)V

    goto/16 :goto_1

    :cond_12
    move v0, v2

    .line 511
    goto :goto_4

    .line 518
    :cond_13
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_14

    move v0, v1

    .line 520
    :goto_5
    if-eqz v0, :cond_15

    .line 521
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 522
    const-string v2, "com.android.OriginalSettings.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/OriginalSettings/bluetooth/DockEventReceiver;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 524
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_14
    move v0, v2

    .line 518
    goto :goto_5

    .line 526
    :cond_15
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 527
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 528
    const-string v4, "checked"

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dock_audio_media_enabled"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_16

    move v2, v1

    :cond_16
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 531
    invoke-super {p0, v0, v0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 535
    :cond_17
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_19

    .line 536
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dock_sounds_enabled"

    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_18

    move v2, v1

    :cond_18
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 539
    :cond_19
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1b

    .line 540
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dock_audio_media_enabled"

    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1a

    move v2, v1

    :cond_1a
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 543
    :cond_1b
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mVolBtnMusicCtrl:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1d

    .line 544
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "volbtn_music_controls"

    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mVolBtnMusicCtrl:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1c

    move v2, v1

    :cond_1c
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 547
    :cond_1d
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mHeadsetConnectPlayer:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1f

    .line 548
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "headset_connect_player"

    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mHeadsetConnectPlayer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1e

    move v2, v1

    :cond_1e
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 551
    :cond_1f
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mSafeHeadsetVolume:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_22

    .line 552
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mSafeHeadsetVolume:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_21

    .line 554
    iput-boolean v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mDialogClicked:Z

    .line 555
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mWaiverDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_20

    .line 556
    invoke-direct {p0}, Lcom/android/OriginalSettings/SoundSettings;->dismissDialog()V

    .line 558
    :cond_20
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0802b7

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0802b6

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f080074

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f080418

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mWaiverDialog:Landroid/app/Dialog;

    .line 564
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mWaiverDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_1

    .line 566
    :cond_21
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "safe_headset_volume"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 569
    :cond_22
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mPowerSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_24

    .line 570
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "power_notifications_enabled"

    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mPowerSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_23

    move v2, v1

    :cond_23
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 574
    :cond_24
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mPowerSoundsVibrate:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_26

    .line 575
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "power_notifications_vibrate"

    iget-object v4, p0, Lcom/android/OriginalSettings/SoundSettings;->mPowerSoundsVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_25

    move v2, v1

    :cond_25
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 579
    :cond_26
    iget-object v0, p0, Lcom/android/OriginalSettings/SoundSettings;->mPowerSoundsRingtone:Landroid/preference/Preference;

    if-ne p2, v0, :cond_27

    .line 580
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "power_notifications_ringtone"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/OriginalSettings/SoundSettings;->launchNotificationSoundPicker(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 585
    :cond_27
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 375
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 377
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/SoundSettings;->updateState(Z)V

    .line 378
    invoke-direct {p0}, Lcom/android/OriginalSettings/SoundSettings;->lookupRingtoneNames()V

    .line 380
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 381
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 383
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 384
    .restart local v0       #filter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 385
    return-void
.end method
