.class public Lcom/android/OriginalSettings/BrightnessPreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "BrightnessPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/BrightnessPreference$SavedState;
    }
.end annotation


# static fields
.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z


# instance fields
.field private mAutoSensitivity:Landroid/widget/Spinner;

.field private mAutoSensitivityTitle:Landroid/widget/TextView;

.field private mAutomaticAvailable:Z

.field private mAutomaticMode:Z

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCurBrightness:I

.field private mCustomizeDialog:Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;

.field private mOldAutomatic:I

.field private mOldBrightness:I

.field private mRestoredOldState:Z

.field private final mScreenBrightnessMaximum:I

.field private final mScreenBrightnessMinimum:I

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Landroid/os/PowerManager;->useScreenAutoBrightnessAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/OriginalSettings/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCurBrightness:I

    .line 76
    new-instance v1, Lcom/android/OriginalSettings/BrightnessPreference$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/OriginalSettings/BrightnessPreference$1;-><init>(Lcom/android/OriginalSettings/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 84
    new-instance v1, Lcom/android/OriginalSettings/BrightnessPreference$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/OriginalSettings/BrightnessPreference$2;-><init>(Lcom/android/OriginalSettings/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 94
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 95
    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mScreenBrightnessMinimum:I

    .line 96
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mScreenBrightnessMaximum:I

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticAvailable:Z

    .line 101
    const v1, 0x7f040072

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/BrightnessPreference;->setDialogLayoutResource(I)V

    .line 102
    const v1, 0x7f020091

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/BrightnessPreference;->setDialogIcon(I)V

    .line 103
    return-void
.end method

.method static synthetic access$002(Lcom/android/OriginalSettings/BrightnessPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCurBrightness:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->onBrightnessChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->onBrightnessModeChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/BrightnessPreference;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/BrightnessPreference;->showCustomizeDialog(Landroid/os/Bundle;)V

    return-void
.end method

.method private getBrightness()I
    .locals 5

    .prologue
    .line 228
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v1

    .line 229
    .local v1, mode:I
    const/4 v0, 0x0

    .line 230
    .local v0, brightness:F
    sget-boolean v2, Lcom/android/OriginalSettings/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_auto_brightness_adj"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 234
    const/high16 v2, 0x3f80

    add-float/2addr v2, v0

    const/high16 v3, 0x4000

    div-float v0, v2, v3

    .line 245
    :goto_0
    const v2, 0x461c4000

    mul-float/2addr v2, v0

    float-to-int v2, v2

    return v2

    .line 236
    :cond_0
    iget v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCurBrightness:I

    if-gez v2, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-float v0, v2

    .line 242
    :goto_1
    iget v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mScreenBrightnessMinimum:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mScreenBrightnessMaximum:I

    iget v4, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v0, v2, v3

    goto :goto_0

    .line 240
    :cond_1
    iget v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCurBrightness:I

    int-to-float v0, v2

    goto :goto_1
.end method

.method private getBrightnessMode(I)I
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 249
    move v0, p1

    .line 251
    .local v0, brightnessMode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 255
    :goto_0
    return v0

    .line 253
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private onBrightnessChanged()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getBrightness()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 260
    return-void
.end method

.method private onBrightnessModeChanged()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 263
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v3

    if-ne v3, v1, :cond_2

    move v0, v1

    .line 265
    .local v0, checked:Z
    :goto_0
    iget-object v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 266
    iget-object v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getBrightness()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 267
    iget-object v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    sget-boolean v4, Lcom/android/OriginalSettings/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v4, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 268
    return-void

    .end local v0           #checked:Z
    :cond_2
    move v0, v2

    .line 263
    goto :goto_0
.end method

.method private restoreOldState()V
    .locals 2

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mRestoredOldState:Z

    if-eqz v0, :cond_0

    .line 305
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_1

    .line 300
    iget v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldAutomatic:I

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/BrightnessPreference;->setMode(I)V

    .line 302
    :cond_1
    iget v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldBrightness:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/BrightnessPreference;->setBrightness(IZ)V

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mRestoredOldState:Z

    .line 304
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCurBrightness:I

    goto :goto_0
.end method

.method private setBrightness(IZ)V
    .locals 6
    .parameter "brightness"
    .parameter "write"

    .prologue
    .line 308
    iget-boolean v4, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticMode:Z

    if-eqz v4, :cond_2

    .line 309
    sget-boolean v4, Lcom/android/OriginalSettings/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v4, :cond_1

    .line 310
    int-to-float v4, p1

    const/high16 v5, 0x4000

    mul-float/2addr v4, v5

    const v5, 0x461c4000

    div-float/2addr v4, v5

    const/high16 v5, 0x3f80

    sub-float v3, v4, v5

    .line 312
    .local v3, valf:F
    :try_start_0
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 314
    .local v0, power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 315
    invoke-interface {v0, v3}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    .line 317
    :cond_0
    if-eqz p2, :cond_1

    .line 318
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 319
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v4, "screen_auto_brightness_adj"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 345
    .end local v0           #power:Landroid/os/IPowerManager;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #valf:F
    :cond_1
    :goto_0
    return-void

    .line 326
    :cond_2
    iget v4, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mScreenBrightnessMaximum:I

    iget v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mScreenBrightnessMinimum:I

    sub-int v1, v4, v5

    .line 327
    .local v1, range:I
    mul-int v4, p1, v1

    div-int/lit16 v4, v4, 0x2710

    iget v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mScreenBrightnessMinimum:I

    add-int p1, v4, v5

    .line 329
    :try_start_1
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 331
    .restart local v0       #power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_3

    .line 332
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    .line 334
    :cond_3
    if-eqz p2, :cond_4

    .line 335
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCurBrightness:I

    .line 336
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 337
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    const-string v4, "screen_brightness"

    invoke-static {v2, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 342
    .end local v0           #power:Landroid/os/IPowerManager;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 340
    .restart local v0       #power:Landroid/os/IPowerManager;
    :cond_4
    iput p1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCurBrightness:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 322
    .end local v0           #power:Landroid/os/IPowerManager;
    .end local v1           #range:I
    .restart local v3       #valf:F
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v0, 0x1

    .line 348
    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticMode:Z

    .line 349
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 351
    return-void

    .line 348
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showCustomizeDialog(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCustomizeDialog:Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCustomizeDialog:Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    :goto_0
    return-void

    .line 358
    :cond_0
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCustomizeDialog:Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;

    .line 359
    if-eqz p1, :cond_1

    .line 360
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCustomizeDialog:Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;

    invoke-virtual {v0, p1}, Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCustomizeDialog:Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;->show()V

    goto :goto_0
.end method

.method private updateAutoBrightnessCustomizeButton()V
    .locals 3

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 221
    .local v0, d:Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v1, :cond_0

    .line 222
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 225
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityDestroy()V
    .locals 1

    .prologue
    .line 367
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onActivityDestroy()V

    .line 368
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCustomizeDialog:Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCustomizeDialog:Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;->dismiss()V

    .line 371
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    const/16 v9, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 148
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 150
    invoke-static {p1}, Lcom/android/OriginalSettings/BrightnessPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v5

    iput-object v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 151
    iget-object v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v8, 0x2710

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 152
    invoke-direct {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getBrightness()I

    move-result v5

    iput v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldBrightness:I

    .line 153
    iget-object v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v8, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldBrightness:I

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 155
    const v5, 0x7f0d0107

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 156
    const v5, 0x7f0d0108

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutoSensitivityTitle:Landroid/widget/TextView;

    .line 157
    const v5, 0x7f0d0109

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutoSensitivity:Landroid/widget/Spinner;

    .line 159
    iget-boolean v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v5, :cond_5

    .line 160
    iget-object v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 161
    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v5

    iput v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldAutomatic:I

    .line 162
    iget v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldAutomatic:I

    if-ne v5, v6, :cond_3

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticMode:Z

    .line 163
    iget-object v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v8, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticMode:Z

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 164
    iget-object v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v8, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticMode:Z

    if-eqz v8, :cond_0

    sget-boolean v8, Lcom/android/OriginalSettings/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v8, :cond_1

    :cond_0
    move v7, v6

    :cond_1
    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 165
    iget-object v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutoSensitivityTitle:Landroid/widget/TextView;

    iget-boolean v6, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticMode:Z

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 166
    iget-object v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutoSensitivity:Landroid/widget/Spinner;

    iget-boolean v6, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticMode:Z

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 168
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c008d

    const v7, 0x1090008

    invoke-static {v5, v6, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 171
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v5, 0x1090009

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 172
    iget-object v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutoSensitivity:Landroid/widget/Spinner;

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_brightness_responsiveness"

    const/high16 v7, 0x3f80

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    .line 176
    .local v1, currentSensitivity:F
    const/high16 v5, 0x42c8

    mul-float/2addr v5, v1

    float-to-int v2, v5

    .line 177
    .local v2, currentSensitivityInt:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c008e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    .line 180
    .local v4, sensitivityValues:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 181
    aget v5, v4, v3

    if-ne v5, v2, :cond_4

    .line 182
    iget-object v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutoSensitivity:Landroid/widget/Spinner;

    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 192
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v1           #currentSensitivity:F
    .end local v2           #currentSensitivityInt:I
    .end local v3           #i:I
    .end local v4           #sensitivityValues:[I
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 193
    return-void

    :cond_3
    move v5, v7

    .line 162
    goto :goto_0

    .line 180
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .restart local v1       #currentSensitivity:F
    .restart local v2       #currentSensitivityInt:I
    .restart local v3       #i:I
    .restart local v4       #sensitivityValues:[I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 187
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v1           #currentSensitivity:F
    .end local v2           #currentSensitivityInt:I
    .end local v3           #i:I
    .end local v4           #sensitivityValues:[I
    :cond_5
    iget-object v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 188
    iget-object v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 189
    iget-object v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutoSensitivityTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    iget-object v5, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutoSensitivity:Landroid/widget/Spinner;

    invoke-virtual {v5, v9}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 209
    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/BrightnessPreference;->setMode(I)V

    .line 211
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getBrightness()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 212
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v3, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticMode:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/OriginalSettings/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v3, :cond_2

    :cond_0
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 213
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutoSensitivityTitle:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticMode:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 214
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutoSensitivity:Landroid/widget/Spinner;

    iget-boolean v1, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticMode:Z

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 215
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/android/OriginalSettings/BrightnessPreference;->setBrightness(IZ)V

    .line 216
    invoke-direct {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->updateAutoBrightnessCustomizeButton()V

    .line 217
    return-void

    :cond_1
    move v0, v2

    .line 209
    goto :goto_0

    :cond_2
    move v1, v2

    .line 212
    goto :goto_1
.end method

.method protected onDialogClosed(Z)V
    .locals 6
    .parameter "positiveResult"

    .prologue
    .line 272
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 274
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 276
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz p1, :cond_1

    .line 277
    iget-object v4, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/OriginalSettings/BrightnessPreference;->setBrightness(IZ)V

    .line 279
    iget-object v4, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutoSensitivity:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 280
    .local v1, selection:I
    if-ltz v1, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c008e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 283
    .local v3, sensitivityValues:[I
    const v4, 0x3c23d70a

    aget v5, v3, v1

    int-to-float v5, v5

    mul-float v2, v4, v5

    .line 285
    .local v2, sensitivity:F
    const-string v4, "auto_brightness_responsiveness"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 292
    .end local v1           #selection:I
    .end local v2           #sensitivity:F
    .end local v3           #sensitivityValues:[I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 293
    iget-object v4, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 294
    return-void

    .line 289
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->restoreOldState()V

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_0

    .line 108
    const v0, 0x7f0802bd

    new-instance v1, Lcom/android/OriginalSettings/BrightnessPreference$3;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/BrightnessPreference$3;-><init>(Lcom/android/OriginalSettings/BrightnessPreference;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 115
    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/OriginalSettings/BrightnessPreference;->setBrightness(IZ)V

    .line 198
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 398
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 400
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 416
    :cond_1
    :goto_0
    return-void

    .line 404
    :cond_2
    check-cast p1, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;

    .line 405
    invoke-virtual {p1}, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 406
    iget v0, p1, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->oldProgress:I

    iput v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldBrightness:I

    .line 407
    iget-boolean v0, p1, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->oldAutomatic:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldAutomatic:I

    .line 408
    iget-boolean v0, p1, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->automatic:Z

    if-eqz v0, :cond_4

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/BrightnessPreference;->setMode(I)V

    .line 409
    iget v0, p1, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->progress:I

    invoke-direct {p0, v0, v2}, Lcom/android/OriginalSettings/BrightnessPreference;->setBrightness(IZ)V

    .line 410
    iget v0, p1, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->curBrightness:I

    iput v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCurBrightness:I

    .line 411
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutoSensitivity:Landroid/widget/Spinner;

    iget v1, p1, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->autoSensitivitySelection:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 413
    iget-boolean v0, p1, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->customizeDialogShown:Z

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p1, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->customizeDialogState:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/BrightnessPreference;->showCustomizeDialog(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 407
    goto :goto_1

    :cond_4
    move v1, v2

    .line 408
    goto :goto_2
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 375
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 376
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 393
    :goto_0
    return-object v0

    .line 379
    :cond_1
    new-instance v0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 380
    .local v0, myState:Lcom/android/OriginalSettings/BrightnessPreference$SavedState;
    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->automatic:Z

    .line 381
    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iput v2, v0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->progress:I

    .line 382
    iget v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldAutomatic:I

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_1
    iput-boolean v2, v0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->oldAutomatic:Z

    .line 383
    iget v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mOldBrightness:I

    iput v2, v0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->oldProgress:I

    .line 384
    iget v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCurBrightness:I

    iput v2, v0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->curBrightness:I

    .line 385
    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutoSensitivity:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->autoSensitivitySelection:I

    .line 386
    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCustomizeDialog:Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCustomizeDialog:Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_2
    iput-boolean v3, v0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->customizeDialogShown:Z

    .line 387
    iget-boolean v2, v0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->customizeDialogShown:Z

    if-eqz v2, :cond_2

    .line 388
    iget-object v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mCustomizeDialog:Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->customizeDialogState:Landroid/os/Bundle;

    .line 392
    :cond_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->restoreOldState()V

    goto :goto_0

    :cond_3
    move v2, v4

    .line 382
    goto :goto_1

    :cond_4
    move v3, v4

    .line 386
    goto :goto_2
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 202
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 206
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    .line 119
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 121
    iget-boolean v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 125
    .local v1, d:Landroid/app/AlertDialog;
    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 126
    .local v0, adjustButton:Landroid/widget/Button;
    new-instance v2, Lcom/android/OriginalSettings/BrightnessPreference$4;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/BrightnessPreference$4;-><init>(Lcom/android/OriginalSettings/BrightnessPreference;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    .end local v0           #adjustButton:Landroid/widget/Button;
    .end local v1           #d:Landroid/app/AlertDialog;
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->updateAutoBrightnessCustomizeButton()V

    .line 136
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 140
    invoke-virtual {p0}, Lcom/android/OriginalSettings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 143
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/OriginalSettings/BrightnessPreference;->mRestoredOldState:Z

    .line 144
    return-void
.end method
