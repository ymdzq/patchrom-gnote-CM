.class public Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "LockscreenInterface.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface$DeviceAdminLockscreenReceiver;
    }
.end annotation


# instance fields
.field private mBatteryStatus:Landroid/preference/ListPreference;

.field private mCustomBackground:Landroid/preference/ListPreference;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEnableCamera:Landroid/preference/CheckBoxPreference;

.field private mEnableWidgets:Landroid/preference/CheckBoxPreference;

.field private mIsPrimary:Z

.field private mMaximizeWidgets:Landroid/preference/CheckBoxPreference;

.field private mMusicControls:Landroid/preference/CheckBoxPreference;

.field private mWallpaperImage:Ljava/io/File;

.field private mWallpaperTemporary:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 350
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->updateCustomBackgroundSummary()V

    return-void
.end method

.method private handleBackgroundSelection(I)Z
    .locals 16
    .parameter "selection"

    .prologue
    .line 275
    if-nez p1, :cond_2

    .line 276
    new-instance v1, Lcom/android/OriginalSettings/notificationlight/ColorPickerView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v1, v13}, Lcom/android/OriginalSettings/notificationlight/ColorPickerView;-><init>(Landroid/content/Context;)V

    .line 277
    .local v1, colorView:Lcom/android/OriginalSettings/notificationlight/ColorPickerView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "lockscreen_background"

    const/4 v15, -0x1

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 280
    .local v3, currentColor:I
    const/4 v13, -0x1

    if-eq v3, v13, :cond_0

    .line 281
    invoke-virtual {v1, v3}, Lcom/android/OriginalSettings/notificationlight/ColorPickerView;->setColor(I)V

    .line 283
    :cond_0
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Lcom/android/OriginalSettings/notificationlight/ColorPickerView;->setAlphaSliderVisible(Z)V

    .line 285
    new-instance v13, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f0802ac

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f080074

    new-instance v15, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v1}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface$2;-><init>(Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;Lcom/android/OriginalSettings/notificationlight/ColorPickerView;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f080418

    new-instance v15, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface$1;

    invoke-direct/range {v15 .. v16}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface$1;-><init>(Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 347
    .end local v1           #colorView:Lcom/android/OriginalSettings/notificationlight/ColorPickerView;
    .end local v3           #currentColor:I
    :cond_1
    :goto_0
    const/4 v13, 0x0

    :goto_1
    return v13

    .line 303
    :cond_2
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_6

    .line 304
    new-instance v6, Landroid/content/Intent;

    const-string v13, "android.intent.action.GET_CONTENT"

    const/4 v14, 0x0

    invoke-direct {v6, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 305
    .local v6, intent:Landroid/content/Intent;
    const-string v13, "image/*"

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const-string v13, "crop"

    const-string v14, "true"

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string v13, "scale"

    const/4 v14, 0x1

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 308
    const-string v13, "scaleUpIfNeeded"

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 309
    const-string v13, "outputFormat"

    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v14}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 312
    .local v4, display:Landroid/view/Display;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 313
    .local v8, rect:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v12

    .line 315
    .local v12, window:Landroid/view/Window;
    invoke-virtual {v12}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 317
    iget v9, v8, Landroid/graphics/Rect;->top:I

    .line 318
    .local v9, statusBarHeight:I
    const v13, 0x1020002

    invoke-virtual {v12, v13}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v2

    .line 319
    .local v2, contentViewTop:I
    sub-int v10, v2, v9

    .line 320
    .local v10, titleBarHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->orientation:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    const/4 v7, 0x1

    .line 323
    .local v7, isPortrait:Z
    :goto_2
    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v11

    .line 324
    .local v11, width:I
    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v13

    sub-int v5, v13, v10

    .line 326
    .local v5, height:I
    const-string v14, "aspectX"

    if-eqz v7, :cond_4

    move v13, v11

    :goto_3
    invoke-virtual {v6, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 327
    const-string v13, "aspectY"

    if-eqz v7, :cond_5

    .end local v5           #height:I
    :goto_4
    invoke-virtual {v6, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 330
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mWallpaperTemporary:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z

    .line 331
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mWallpaperTemporary:Ljava/io/File;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Ljava/io/File;->setWritable(ZZ)Z

    .line 332
    const-string v13, "output"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mWallpaperTemporary:Ljava/io/File;

    invoke-static {v14}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 333
    const-string v13, "return-data"

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/16 v14, 0x400

    move-object/from16 v0, p0

    invoke-virtual {v13, v0, v6, v14}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 335
    :catch_0
    move-exception v13

    goto/16 :goto_0

    .line 320
    .end local v7           #isPortrait:Z
    .end local v11           #width:I
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .restart local v5       #height:I
    .restart local v7       #isPortrait:Z
    .restart local v11       #width:I
    :cond_4
    move v13, v5

    .line 326
    goto :goto_3

    :cond_5
    move v5, v11

    .line 327
    goto :goto_4

    .line 340
    .end local v2           #contentViewTop:I
    .end local v4           #display:Landroid/view/Display;
    .end local v5           #height:I
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #isPortrait:Z
    .end local v8           #rect:Landroid/graphics/Rect;
    .end local v9           #statusBarHeight:I
    .end local v10           #titleBarHeight:I
    .end local v11           #width:I
    .end local v12           #window:Landroid/view/Window;
    :cond_6
    const/4 v13, 0x2

    move/from16 v0, p1

    if-ne v0, v13, :cond_1

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "lockscreen_background"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 343
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->updateCustomBackgroundSummary()V

    .line 344
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 337
    .restart local v2       #contentViewTop:I
    .restart local v4       #display:Landroid/view/Display;
    .restart local v6       #intent:Landroid/content/Intent;
    .restart local v7       #isPortrait:Z
    .restart local v8       #rect:Landroid/graphics/Rect;
    .restart local v9       #statusBarHeight:I
    .restart local v10       #titleBarHeight:I
    .restart local v11       #width:I
    .restart local v12       #window:Landroid/view/Window;
    :catch_1
    move-exception v13

    goto/16 :goto_0
.end method

.method private updateCustomBackgroundSummary()V
    .locals 4

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_background"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 168
    const v0, 0x7f0802b1

    .line 169
    .local v0, resId:I
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mCustomBackground:Landroid/preference/ListPreference;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 177
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mCustomBackground:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 178
    return-void

    .line 170
    .end local v0           #resId:I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    const v0, 0x7f0802b0

    .line 172
    .restart local v0       #resId:I
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mCustomBackground:Landroid/preference/ListPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0

    .line 174
    .end local v0           #resId:I
    :cond_1
    const v0, 0x7f0802af

    .line 175
    .restart local v0       #resId:I
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mCustomBackground:Landroid/preference/ListPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0
.end method

.method private updateKeyguardState(ZZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 262
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface$DeviceAdminLockscreenReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v1, v0}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    .line 265
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 268
    :cond_0
    if-nez p1, :cond_1

    .line 269
    or-int/lit8 v0, v0, 0x2

    .line 271
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v1, v0}, Landroid/app/admin/DevicePolicyManager;->setKeyguardDisabledFeatures(Landroid/content/ComponentName;I)V

    .line 272
    return-void
.end method


# virtual methods
.method public hasButtons()Z
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 206
    const/16 v1, 0x400

    if-ne p1, v1, :cond_1

    .line 209
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 210
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mWallpaperTemporary:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mWallpaperTemporary:Ljava/io/File;

    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mWallpaperImage:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mWallpaperImage:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->setReadOnly()Z

    .line 214
    const v0, 0x7f0802ad

    .line 215
    .local v0, hintId:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_background"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 217
    invoke-direct {p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->updateCustomBackgroundSummary()V

    .line 224
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 227
    .end local v0           #hintId:I
    :cond_1
    return-void

    .line 219
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mWallpaperTemporary:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 220
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mWallpaperTemporary:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 222
    :cond_3
    const v0, 0x7f0802ae

    .restart local v0       #hintId:I
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 97
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v4, 0x7f05001e

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->addPreferencesFromResource(I)V

    .line 100
    const-string v4, "lockscreen_general_category"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 101
    .local v1, generalCategory:Landroid/preference/PreferenceCategory;
    const-string v4, "lockscreen_widgets_category"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 104
    .local v3, widgetsCategory:Landroid/preference/PreferenceCategory;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mIsPrimary:Z

    .line 105
    iget-boolean v4, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mIsPrimary:Z

    if-eqz v4, :cond_5

    .line 107
    const-string v4, "lockscreen_battery_status"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    .line 108
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    if-eqz v4, :cond_0

    .line 109
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 112
    :cond_0
    const-string v4, "lockscreen_maximize_widgets"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mMaximizeWidgets:Landroid/preference/CheckBoxPreference;

    .line 113
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/OriginalSettings/Utils;->isPhone(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 114
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mMaximizeWidgets:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 115
    iput-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mMaximizeWidgets:Landroid/preference/CheckBoxPreference;

    .line 120
    :goto_1
    const-string v4, "lockscreen_music_controls"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mMusicControls:Landroid/preference/CheckBoxPreference;

    .line 121
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mMusicControls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 123
    const-string v4, "lockscreen_buttons"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 124
    .local v2, lockscreenButtons:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->hasButtons()Z

    move-result v4

    if-nez v4, :cond_1

    .line 125
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 136
    .end local v2           #lockscreenButtons:Landroid/preference/PreferenceScreen;
    :cond_1
    :goto_2
    const-string v4, "lockscreen_background"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mCustomBackground:Landroid/preference/ListPreference;

    .line 137
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mCustomBackground:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 138
    invoke-direct {p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->updateCustomBackgroundSummary()V

    .line 140
    const-string v4, "lockscreen_enable_widgets"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mEnableWidgets:Landroid/preference/CheckBoxPreference;

    .line 141
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mEnableWidgets:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 142
    const-string v4, "lockscreen_enable_camera"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mEnableCamera:Landroid/preference/CheckBoxPreference;

    .line 143
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mEnableCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 145
    const-string v4, "device_policy"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    iput-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 147
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4, v7}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v0

    .line 148
    .local v0, disabledFeatures:I
    iget-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mEnableWidgets:Landroid/preference/CheckBoxPreference;

    and-int/lit8 v4, v0, 0x1

    if-nez v4, :cond_6

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 149
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mEnableCamera:Landroid/preference/CheckBoxPreference;

    and-int/lit8 v7, v0, 0x2

    if-nez v7, :cond_7

    :goto_4
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 152
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.camera"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 153
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mEnableCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 156
    :cond_2
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/lockwallpaper"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mWallpaperImage:Ljava/io/File;

    .line 157
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/lockwallpaper.tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mWallpaperTemporary:Ljava/io/File;

    .line 160
    const-string v4, "lock_clock"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->removePreferenceIfPackageNotInstalled(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;)Z

    .line 161
    return-void

    .end local v0           #disabledFeatures:I
    :cond_3
    move v4, v6

    .line 104
    goto/16 :goto_0

    .line 117
    :cond_4
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mMaximizeWidgets:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1

    .line 129
    :cond_5
    const-string v4, "screen_security"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 130
    const-string v4, "lockscreen_maximize_widgets"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 131
    const-string v4, "lockscreen_battery_status"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 132
    const-string v4, "lockscreen_buttons"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .restart local v0       #disabledFeatures:I
    :cond_6
    move v4, v6

    .line 148
    goto/16 :goto_3

    :cond_7
    move v5, v6

    .line 149
    goto/16 :goto_4
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 231
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 233
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_0

    move-object v4, p2

    .line 234
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 235
    .local v3, value:I
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v4, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 236
    .local v1, index:I
    const-string v4, "lockscreen_always_show_battery"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 237
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 258
    .end local v1           #index:I
    .end local v3           #value:I
    :goto_0
    return v5

    .line 239
    .restart local p2
    :cond_0
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mMaximizeWidgets:Landroid/preference/CheckBoxPreference;

    if-ne p1, v6, :cond_2

    .line 240
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 241
    .local v3, value:Z
    const-string v6, "lockscreen_maximize_widgets"

    if-eqz v3, :cond_1

    move v4, v5

    :cond_1
    invoke-static {v0, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 243
    .end local v3           #value:Z
    .restart local p2
    :cond_2
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mMusicControls:Landroid/preference/CheckBoxPreference;

    if-ne p1, v6, :cond_4

    .line 244
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 245
    .restart local v3       #value:Z
    const-string v6, "lockscreen_music_controls"

    if-eqz v3, :cond_3

    move v4, v5

    :cond_3
    invoke-static {v0, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 247
    .end local v3           #value:Z
    .restart local p2
    :cond_4
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mCustomBackground:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_5

    .line 248
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mCustomBackground:Landroid/preference/ListPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 249
    .local v2, selection:I
    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->handleBackgroundSelection(I)Z

    move-result v5

    goto :goto_0

    .line 250
    .end local v2           #selection:I
    :cond_5
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mEnableCamera:Landroid/preference/CheckBoxPreference;

    if-ne p1, v6, :cond_6

    .line 251
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mEnableWidgets:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-direct {p0, v4, v6}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->updateKeyguardState(ZZ)V

    goto :goto_0

    .line 253
    .restart local p2
    :cond_6
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mEnableWidgets:Landroid/preference/CheckBoxPreference;

    if-ne p1, v6, :cond_7

    .line 254
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mEnableCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-direct {p0, v4, v6}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->updateKeyguardState(ZZ)V

    goto :goto_0

    .restart local p2
    :cond_7
    move v5, v4

    .line 258
    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 182
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 184
    iget-boolean v2, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mIsPrimary:Z

    if-eqz v2, :cond_2

    .line 185
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 186
    .local v1, cr:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    if-eqz v2, :cond_0

    .line 187
    const-string v2, "lockscreen_always_show_battery"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 189
    .local v0, batteryStatus:I
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 190
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mBatteryStatus:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 193
    .end local v0           #batteryStatus:I
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mMaximizeWidgets:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 194
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mMaximizeWidgets:Landroid/preference/CheckBoxPreference;

    const-string v2, "lockscreen_maximize_widgets"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 197
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mMusicControls:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    .line 198
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->mMusicControls:Landroid/preference/CheckBoxPreference;

    const-string v5, "lockscreen_music_controls"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 202
    .end local v1           #cr:Landroid/content/ContentResolver;
    :cond_2
    return-void

    .restart local v1       #cr:Landroid/content/ContentResolver;
    :cond_3
    move v2, v4

    .line 194
    goto :goto_0

    :cond_4
    move v3, v4

    .line 198
    goto :goto_1
.end method
