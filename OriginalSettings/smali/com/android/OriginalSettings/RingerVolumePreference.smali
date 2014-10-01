.class public Lcom/android/OriginalSettings/RingerVolumePreference;
.super Landroid/preference/VolumePreference;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;
    }
.end annotation


# static fields
.field private static final CHECKBOX_VIEW_ID:[I

.field private static final SEEKBAR_ID:[I

.field private static final SEEKBAR_MUTED_RES_ID:[I

.field private static final SEEKBAR_TYPE:[I

.field private static final SEEKBAR_UNMUTED_RES_ID:[I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCheckBoxes:[Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

.field private mSeekBars:[Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 62
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_ID:[I

    .line 69
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    .line 76
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->CHECKBOX_VIEW_ID:[I

    .line 83
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    .line 90
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    return-void

    .line 62
    nop

    :array_0
    .array-data 0x4
        0x10t 0x1t 0xdt 0x7ft
        0x14t 0x1t 0xdt 0x7ft
        0x18t 0x1t 0xdt 0x7ft
        0x1et 0x1t 0xdt 0x7ft
    .end array-data

    .line 69
    :array_1
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 76
    :array_2
    .array-data 0x4
        0xft 0x1t 0xdt 0x7ft
        0x13t 0x1t 0xdt 0x7ft
        0x17t 0x1t 0xdt 0x7ft
        0x1dt 0x1t 0xdt 0x7ft
    .end array-data

    .line 83
    :array_3
    .array-data 0x4
        0xa6t 0x2t 0x8t 0x1t
        0xa3t 0x2t 0x8t 0x1t
        0xa0t 0x2t 0x8t 0x1t
        0x9ct 0x2t 0x8t 0x1t
    .end array-data

    .line 90
    :array_4
    .array-data 0x4
        0xa5t 0x2t 0x8t 0x1t
        0xa2t 0x2t 0x8t 0x1t
        0x9ft 0x2t 0x8t 0x1t
        0x9bt 0x2t 0x8t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Landroid/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    sget-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    .line 98
    sget-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    .line 100
    new-instance v0, Lcom/android/OriginalSettings/RingerVolumePreference$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RingerVolumePreference$1;-><init>(Lcom/android/OriginalSettings/RingerVolumePreference;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mHandler:Landroid/os/Handler;

    .line 149
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/RingerVolumePreference;->setStreamType(I)V

    .line 151
    const v0, 0x7f040074

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/RingerVolumePreference;->setDialogLayoutResource(I)V

    .line 154
    sget-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/preference/VolumePreference$SeekBarVolumizer;

    iput-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .line 156
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/RingerVolumePreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->updateSlidersAndMutedStates()V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-static {p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->getCurrentMutableStreams(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/RingerVolumePreference;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/RingerVolumePreference;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_ID:[I

    return-object v0
.end method

.method private cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 352
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 353
    iget-object v2, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 354
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 355
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    iget-object v2, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 359
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stop()V

    .line 360
    iget-object v2, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aput-object v4, v2, v1

    .line 352
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_3

    .line 364
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 365
    iput-object v4, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 367
    :cond_3
    return-void
.end method

.method private static getCurrentMutableStreams(Landroid/content/Context;)I
    .locals 4
    .parameter "c"

    .prologue
    .line 160
    const/16 v0, 0xa6

    .line 162
    .local v0, defaultMuteStreams:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mode_ringer_streams_affected"

    const/16 v3, 0xa6

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getMediaVolumeUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2
    .parameter "context"

    .prologue
    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private updateSlidersAndMutedStates()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 113
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v4, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 114
    sget-object v4, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v2, v4, v0

    .line 115
    .local v2, streamType:I
    iget-object v4, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    .line 117
    .local v1, muted:Z
    iget-object v4, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    if-eqz v4, :cond_0

    .line 118
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    iget-object v4, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 120
    iget-object v4, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    const v5, 0x10802a4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    if-eqz v4, :cond_1

    .line 128
    iget-object v4, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 129
    .local v3, volume:I
    iget-object v4, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 130
    iget-object v4, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v4

    if-eq v2, v4, :cond_4

    if-eqz v1, :cond_4

    .line 131
    iget-object v4, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 113
    .end local v3           #volume:I
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aget-object v5, v4, v0

    if-eqz v1, :cond_3

    sget-object v4, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_MUTED_RES_ID:[I

    aget v4, v4, v0

    :goto_3
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_UNMUTED_RES_ID:[I

    aget v4, v4, v0

    goto :goto_3

    .line 133
    .restart local v3       #volume:I
    :cond_4
    iget-object v4, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    invoke-virtual {v4, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_2

    .line 137
    .end local v1           #muted:Z
    .end local v2           #streamType:I
    .end local v3           #volume:I
    :cond_5
    return-void
.end method


# virtual methods
.method public createActionButtons()V
    .locals 1

    .prologue
    .line 108
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/RingerVolumePreference;->setPositiveButtonText(I)V

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/RingerVolumePreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 110
    return-void
.end method

.method public onActivityStop()V
    .locals 4

    .prologue
    .line 323
    invoke-super {p0}, Landroid/preference/VolumePreference;->onActivityStop()V

    .line 325
    iget-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 326
    .local v3, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 325
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    .end local v3           #vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_1
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 18
    .parameter "view"

    .prologue
    .line 168
    invoke-super/range {p0 .. p1}, Landroid/preference/VolumePreference;->onBindDialogView(Landroid/view/View;)V

    .line 170
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    sget-object v1, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v1, v1

    if-ge v9, v1, :cond_1

    .line 171
    sget-object v1, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_ID:[I

    aget v1, v1, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    .line 172
    .local v4, seekBar:Landroid/widget/SeekBar;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBars:[Landroid/widget/SeekBar;

    aput-object v4, v1, v9

    .line 173
    sget-object v1, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v1, v1, v9

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    move-object/from16 v17, v0

    new-instance v1, Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v2, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v2, v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/OriginalSettings/RingerVolumePreference;->getMediaVolumeUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    aput-object v1, v17, v9

    .line 170
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 177
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    new-instance v2, Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v5, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_TYPE:[I

    aget v5, v5, v9

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    aput-object v2, v1, v9

    goto :goto_1

    .line 183
    .end local v4           #seekBar:Landroid/widget/SeekBar;
    :cond_1
    const/4 v9, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v9, v1, :cond_2

    .line 184
    sget-object v1, Lcom/android/OriginalSettings/RingerVolumePreference;->CHECKBOX_VIEW_ID:[I

    aget v1, v1, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 185
    .local v7, checkbox:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/RingerVolumePreference;->mCheckBoxes:[Landroid/widget/ImageView;

    aput-object v7, v1, v9

    .line 183
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 188
    .end local v7           #checkbox:Landroid/widget/ImageView;
    :cond_2
    const v1, 0x7f0d011a

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    .line 189
    .local v10, linkCheckBox:Landroid/widget/CheckBox;
    const v1, 0x7f0d011b

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    .line 190
    .local v11, linkMuteStates:Landroid/widget/CheckBox;
    const v1, 0x7f0d011c

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/CheckBox;

    .line 192
    .local v16, volumeKeysControlRingStream:Landroid/widget/CheckBox;
    const v1, 0x7f0d0111

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 193
    .local v15, ringerSection:Landroid/view/View;
    const v1, 0x7f0d0115

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 194
    .local v13, notificationSection:Landroid/view/View;
    const v1, 0x7f0d0119

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 195
    .local v12, linkVolumesSection:Landroid/view/View;
    const v1, 0x7f0d0112

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 198
    .local v14, ringerDesc:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/OriginalSettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/OriginalSettings/RingerVolumePreference;->getCurrentMutableStreams(Landroid/content/Context;)I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_4

    .line 200
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 205
    :goto_3
    new-instance v1, Lcom/android/OriginalSettings/RingerVolumePreference$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/OriginalSettings/RingerVolumePreference$2;-><init>(Lcom/android/OriginalSettings/RingerVolumePreference;)V

    invoke-virtual {v11, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volume_link_notification"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 226
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 227
    const/16 v1, 0x8

    invoke-virtual {v13, v1}, Landroid/view/View;->setVisibility(I)V

    .line 228
    const v1, 0x7f0805c2

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(I)V

    .line 229
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 237
    :goto_4
    new-instance v1, Lcom/android/OriginalSettings/RingerVolumePreference$3;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v13, v14, v11}, Lcom/android/OriginalSettings/RingerVolumePreference$3;-><init>(Lcom/android/OriginalSettings/RingerVolumePreference;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/CheckBox;)V

    invoke-virtual {v10, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volume_keys_control_ring_stream"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 263
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 268
    :goto_5
    new-instance v1, Lcom/android/OriginalSettings/RingerVolumePreference$4;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/OriginalSettings/RingerVolumePreference$4;-><init>(Lcom/android/OriginalSettings/RingerVolumePreference;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 284
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->updateSlidersAndMutedStates()V

    .line 287
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_3

    .line 288
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 289
    .local v8, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    new-instance v1, Lcom/android/OriginalSettings/RingerVolumePreference$5;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/OriginalSettings/RingerVolumePreference$5;-><init>(Lcom/android/OriginalSettings/RingerVolumePreference;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/OriginalSettings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/OriginalSettings/RingerVolumePreference;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 301
    .end local v8           #filter:Landroid/content/IntentFilter;
    :cond_3
    return-void

    .line 202
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_3

    .line 231
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 232
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    const v1, 0x7f0801c9

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(I)V

    .line 234
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_4

    .line 265
    :cond_6
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_5

    .line 279
    :cond_7
    const/16 v1, 0x8

    invoke-virtual {v15, v1}, Landroid/view/View;->setVisibility(I)V

    .line 280
    const/16 v1, 0x8

    invoke-virtual {v12, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    .line 311
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onDialogClosed(Z)V

    .line 313
    if-nez p1, :cond_1

    .line 314
    iget-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 315
    .local v3, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 314
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    .end local v0           #arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->cleanup()V

    .line 319
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 332
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 333
    .local v0, isdown:Z
    :goto_0
    sparse-switch p2, :sswitch_data_0

    move v1, v2

    .line 339
    :sswitch_0
    return v1

    .end local v0           #isdown:Z
    :cond_0
    move v0, v2

    .line 332
    goto :goto_0

    .line 333
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter

    .prologue
    .line 390
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 392
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 405
    :cond_1
    return-void

    .line 396
    :cond_2
    check-cast p1, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;

    .line 397
    invoke-virtual {p1}, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/VolumePreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 398
    sget-object v0, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;->getVolumeStore(I)[Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v1

    .line 399
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 400
    iget-object v2, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v2, v2, v0

    .line 401
    if-eqz v2, :cond_3

    .line 402
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    .line 399
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V
    .locals 4
    .parameter "volumizer"

    .prologue
    .line 345
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V

    .line 346
    iget-object v0, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    .local v0, arr$:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 347
    .local v3, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_0

    if-eq v3, p1, :cond_0

    invoke-virtual {v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 346
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 349
    .end local v3           #vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 371
    invoke-super {p0}, Landroid/preference/VolumePreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 372
    .local v2, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RingerVolumePreference;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 385
    .end local v2           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v2

    .line 377
    .restart local v2       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v1, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;

    invoke-direct {v1, v2}, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 378
    .local v1, myState:Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;
    sget-object v5, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    invoke-virtual {v1, v5}, Lcom/android/OriginalSettings/RingerVolumePreference$SavedState;->getVolumeStore(I)[Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v4

    .line 379
    .local v4, volumeStore:[Landroid/preference/VolumePreference$VolumeStore;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v5, Lcom/android/OriginalSettings/RingerVolumePreference;->SEEKBAR_ID:[I

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 380
    iget-object v5, p0, Lcom/android/OriginalSettings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;

    aget-object v3, v5, v0

    .line 381
    .local v3, vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    if-eqz v3, :cond_1

    .line 382
    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    .line 379
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v3           #vol:Landroid/preference/VolumePreference$SeekBarVolumizer;
    :cond_2
    move-object v2, v1

    .line 385
    goto :goto_0
.end method
