.class public Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;
.super Landroid/app/Fragment;
.source "LockscreenTargets.java"

# interfaces
.implements Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;
.implements Lcom/android/OriginalSettings/cyanogenmod/IconPicker$OnIconPickListener;
.implements Lcom/android/OriginalSettings/cyanogenmod/ShortcutPickHelper$OnPickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;
    }
.end annotation


# static fields
.field private static EMPTY_LABEL:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContainer:Landroid/view/ViewGroup;

.field private mDialogIcon:Landroid/widget/ImageButton;

.field private mDialogLabel:Landroid/widget/Button;

.field private mIconPicker:Lcom/android/OriginalSettings/cyanogenmod/IconPicker;

.field private mImageTmp:Ljava/io/File;

.field private mIsLandscape:Z

.field private mIsScreenLarge:Z

.field private mPicker:Lcom/android/OriginalSettings/cyanogenmod/ShortcutPickHelper;

.field private mResources:Landroid/content/res/Resources;

.field private mTargetIndex:I

.field private mTargetInset:I

.field private mTargetOffset:I

.field private mTargetStore:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWaveView:Lcom/android/internal/widget/multiwaveview/GlowPadView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mTargetIndex:I

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->initializeView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;ILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 71
    invoke-direct/range {p0 .. p6}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->setTarget(ILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->EMPTY_LABEL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mDialogLabel:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mImageTmp:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;)Lcom/android/OriginalSettings/cyanogenmod/IconPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mIconPicker:Lcom/android/OriginalSettings/cyanogenmod/IconPicker;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;)Lcom/android/OriginalSettings/cyanogenmod/ShortcutPickHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mPicker:Lcom/android/OriginalSettings/cyanogenmod/ShortcutPickHelper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mDialogIcon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mTargetInset:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mTargetIndex:I

    return v0
.end method

.method private getLayeredDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/StateListDrawable;
    .locals 14
    .parameter "back"
    .parameter "front"
    .parameter "inset"
    .parameter "frontBlank"

    .prologue
    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 147
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 148
    const/4 v0, 0x2

    new-array v12, v0, [Landroid/graphics/drawable/InsetDrawable;

    .line 149
    .local v12, inactivelayer:[Landroid/graphics/drawable/InsetDrawable;
    const/4 v0, 0x2

    new-array v10, v0, [Landroid/graphics/drawable/InsetDrawable;

    .line 150
    .local v10, activelayer:[Landroid/graphics/drawable/InsetDrawable;
    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const v2, 0x106000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 151
    .local v8, activeFront:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const v2, 0x1080317

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 152
    .local v1, inactiveBack:Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    aput-object v0, v12, v6

    .line 153
    const/4 v0, 0x1

    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p3

    move/from16 v6, p3

    move/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    aput-object v2, v12, v0

    .line 154
    const/4 v0, 0x0

    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    aput-object v2, v10, v0

    .line 155
    const/4 v0, 0x1

    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    move-object v3, v8

    move/from16 v4, p3

    move/from16 v5, p3

    move/from16 v6, p3

    move/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    aput-object v2, v10, v0

    .line 156
    new-instance v13, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 157
    .local v13, states:Landroid/graphics/drawable/StateListDrawable;
    new-instance v11, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v11, v12}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 158
    .local v11, inactiveLayerDrawable:Landroid/graphics/drawable/LayerDrawable;
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v11, v0, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 159
    const/4 v0, 0x1

    const/4 v2, 0x1

    invoke-virtual {v11, v0, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 160
    new-instance v9, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v9, v10}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 161
    .local v9, activeLayerDrawable:Landroid/graphics/drawable/LayerDrawable;
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v9, v0, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 162
    const/4 v0, 0x1

    const/4 v2, 0x1

    invoke-virtual {v9, v0, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 163
    sget-object v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v13, v0, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 164
    sget-object v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v13, v0, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 165
    sget-object v0, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    invoke-virtual {v13, v0, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 166
    return-object v13

    .end local v1           #inactiveBack:Landroid/graphics/drawable/Drawable;
    .end local v8           #activeFront:Landroid/graphics/drawable/Drawable;
    .end local v9           #activeLayerDrawable:Landroid/graphics/drawable/LayerDrawable;
    .end local v11           #inactiveLayerDrawable:Landroid/graphics/drawable/LayerDrawable;
    .end local v13           #states:Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    move-object/from16 v8, p2

    .line 150
    goto :goto_0
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "bitmap"

    .prologue
    const/high16 v11, 0x41c0

    const/4 v10, 0x0

    .line 271
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 273
    .local v2, output:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 275
    .local v0, canvas:Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .line 276
    .local v1, color:I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 277
    .local v3, paint:Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v4, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 278
    .local v4, rect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 279
    .local v5, rectF:Landroid/graphics/RectF;
    const/high16 v6, 0x41c0

    .line 280
    .local v6, roundPx:F
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 281
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 282
    const v7, -0xbdbdbe

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 283
    invoke-virtual {v0, v5, v11, v11, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 284
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 285
    invoke-virtual {v0, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 286
    return-object v2
.end method

.method private initializeView(Ljava/lang/String;)V
    .locals 36
    .parameter "input"

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 171
    const-string p1, "empty"

    .line 173
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 174
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mIsScreenLarge:Z

    if-eqz v4, :cond_6

    const/16 v25, 0x7

    .line 175
    .local v25, maxTargets:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    .line 176
    .local v26, packMan:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const v5, 0x1080335

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 177
    .local v12, activeBack:Landroid/graphics/drawable/Drawable;
    const-string v4, "\\|"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 179
    .local v31, targetStore:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mIsLandscape:Z

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mIsScreenLarge:Z

    if-nez v4, :cond_1

    .line 180
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v7}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;-><init>(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;Landroid/graphics/drawable/StateListDrawable;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v7}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;-><init>(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;Landroid/graphics/drawable/StateListDrawable;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const v5, 0x108033a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v34

    .line 185
    .local v34, unlockFront:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const v5, 0x1080339

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v33

    .line 186
    .local v33, unlockBack:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;

    const/4 v7, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2, v7, v10}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->getLayeredDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v7}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;-><init>(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;Landroid/graphics/drawable/StateListDrawable;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    const/4 v14, 0x0

    .local v14, cc:I
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mTargetOffset:I

    rsub-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, -0x1

    if-ge v14, v4, :cond_b

    .line 188
    const-string v6, "empty"

    .line 189
    .local v6, uri:Ljava/lang/String;
    const/16 v18, 0x0

    .line 190
    .local v18, front:Landroid/graphics/drawable/Drawable;
    move-object v13, v12

    .line 191
    .local v13, back:Landroid/graphics/drawable/Drawable;
    const/16 v20, 0x0

    .line 192
    .local v20, frontBlank:Z
    const/4 v8, 0x0

    .line 193
    .local v8, iconType:Ljava/lang/String;
    const/4 v9, 0x0

    .line 194
    .local v9, iconSource:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mTargetInset:I

    move/from16 v32, v0

    .line 195
    .local v32, tmpInset:I
    move-object/from16 v0, v31

    array-length v4, v0

    if-ge v14, v4, :cond_a

    move/from16 v0, v25

    if-ge v14, v0, :cond_a

    .line 196
    aget-object v6, v31, v14

    .line 197
    const-string v4, "empty"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 199
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v6, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v24

    .line 200
    .local v24, in:Landroid/content/Intent;
    const-string v4, "icon_file"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 201
    const-string v4, "icon_file"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 202
    .local v29, rSource:Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    .local v17, fPath:Ljava/io/File;
    if-eqz v17, :cond_2

    .line 204
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 205
    new-instance v19, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static/range {v29 .. v29}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 206
    .end local v18           #front:Landroid/graphics/drawable/Drawable;
    .local v19, front:Landroid/graphics/drawable/Drawable;
    add-int/lit8 v32, v32, 0x5

    move-object/from16 v18, v19

    .line 237
    .end local v17           #fPath:Ljava/io/File;
    .end local v19           #front:Landroid/graphics/drawable/Drawable;
    .end local v29           #rSource:Ljava/lang/String;
    .restart local v18       #front:Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_2
    if-nez v18, :cond_3

    .line 238
    const/4 v4, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v11

    .line 239
    .local v11, aInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v11, :cond_9

    .line 240
    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v18

    .line 252
    .end local v11           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v24           #in:Landroid/content/Intent;
    :cond_3
    :goto_3
    if-eqz v13, :cond_4

    if-nez v18, :cond_5

    .line 253
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f020060

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 254
    .local v16, emptyIcon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v18, v16

    .line 256
    .end local v16           #emptyIcon:Landroid/graphics/drawable/Drawable;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    new-instance v4, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v32

    move/from16 v3, v20

    invoke-direct {v0, v13, v1, v2, v3}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->getLayeredDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;-><init>(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;Ljava/lang/String;Landroid/graphics/drawable/StateListDrawable;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 174
    .end local v6           #uri:Ljava/lang/String;
    .end local v8           #iconType:Ljava/lang/String;
    .end local v9           #iconSource:Ljava/lang/String;
    .end local v12           #activeBack:Landroid/graphics/drawable/Drawable;
    .end local v13           #back:Landroid/graphics/drawable/Drawable;
    .end local v14           #cc:I
    .end local v18           #front:Landroid/graphics/drawable/Drawable;
    .end local v20           #frontBlank:Z
    .end local v25           #maxTargets:I
    .end local v26           #packMan:Landroid/content/pm/PackageManager;
    .end local v31           #targetStore:[Ljava/lang/String;
    .end local v32           #tmpInset:I
    .end local v33           #unlockBack:Landroid/graphics/drawable/Drawable;
    .end local v34           #unlockFront:Landroid/graphics/drawable/Drawable;
    :cond_6
    const/16 v25, 0x4

    goto/16 :goto_0

    .line 209
    .restart local v6       #uri:Ljava/lang/String;
    .restart local v8       #iconType:Ljava/lang/String;
    .restart local v9       #iconSource:Ljava/lang/String;
    .restart local v12       #activeBack:Landroid/graphics/drawable/Drawable;
    .restart local v13       #back:Landroid/graphics/drawable/Drawable;
    .restart local v14       #cc:I
    .restart local v18       #front:Landroid/graphics/drawable/Drawable;
    .restart local v20       #frontBlank:Z
    .restart local v24       #in:Landroid/content/Intent;
    .restart local v25       #maxTargets:I
    .restart local v26       #packMan:Landroid/content/pm/PackageManager;
    .restart local v31       #targetStore:[Ljava/lang/String;
    .restart local v32       #tmpInset:I
    .restart local v33       #unlockBack:Landroid/graphics/drawable/Drawable;
    .restart local v34       #unlockFront:Landroid/graphics/drawable/Drawable;
    :cond_7
    :try_start_1
    const-string v4, "icon_resource"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 210
    const-string v4, "icon_resource"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 211
    .restart local v29       #rSource:Ljava/lang/String;
    const-string v4, "icon_package"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v28

    .line 212
    .local v28, rPackage:Ljava/lang/String;
    if-eqz v29, :cond_2

    .line 213
    if-eqz v28, :cond_8

    .line 215
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v4, v0, v5}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v27

    .line 216
    .local v27, rContext:Landroid/content/Context;
    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "drawable"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v4, v0, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    .line 217
    .local v23, id:I
    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 218
    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "_normal"

    const-string v7, "_activated"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "drawable"

    move-object/from16 v0, v28

    invoke-virtual {v4, v5, v7, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v23

    .line 220
    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v13

    .line 221
    const/16 v32, 0x0

    .line 222
    const/16 v20, 0x1

    goto/16 :goto_2

    .line 223
    .end local v23           #id:I
    .end local v27           #rContext:Landroid/content/Context;
    :catch_0
    move-exception v15

    .line 224
    .local v15, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    invoke-virtual {v15}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_2

    .line 245
    .end local v15           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v24           #in:Landroid/content/Intent;
    .end local v28           #rPackage:Ljava/lang/String;
    .end local v29           #rSource:Ljava/lang/String;
    :catch_1
    move-exception v4

    goto/16 :goto_3

    .line 225
    .restart local v24       #in:Landroid/content/Intent;
    .restart local v28       #rPackage:Ljava/lang/String;
    .restart local v29       #rSource:Ljava/lang/String;
    :catch_2
    move-exception v15

    .line 226
    .local v15, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v15}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto/16 :goto_2

    .line 229
    .end local v15           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const-string v7, "drawable"

    const-string v10, "android"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0, v7, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 230
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const-string v7, "_normal"

    const-string v10, "_activated"

    move-object/from16 v0, v29

    invoke-virtual {v0, v7, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "drawable"

    const-string v35, "android"

    move-object/from16 v0, v35

    invoke-virtual {v5, v7, v10, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 232
    const/16 v32, 0x0

    .line 233
    const/16 v20, 0x1

    goto/16 :goto_2

    .line 242
    .end local v28           #rPackage:Ljava/lang/String;
    .end local v29           #rSource:Ljava/lang/String;
    .restart local v11       #aInfo:Landroid/content/pm/ActivityInfo;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const v5, 0x1080093

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v18

    goto/16 :goto_3

    .line 248
    .end local v11           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v24           #in:Landroid/content/Intent;
    :cond_a
    move/from16 v0, v25

    if-lt v14, v0, :cond_3

    .line 249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v7}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;-><init>(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;Landroid/graphics/drawable/StateListDrawable;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 259
    .end local v6           #uri:Ljava/lang/String;
    .end local v8           #iconType:Ljava/lang/String;
    .end local v9           #iconSource:Ljava/lang/String;
    .end local v13           #back:Landroid/graphics/drawable/Drawable;
    .end local v18           #front:Landroid/graphics/drawable/Drawable;
    .end local v20           #frontBlank:Z
    .end local v32           #tmpInset:I
    :cond_b
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v30, tDraw:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;

    .line 261
    .local v21, i:Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;
    if-eqz v21, :cond_c

    .line 262
    new-instance v4, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->icon:Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4, v5, v7}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 264
    :cond_c
    new-instance v4, Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 267
    .end local v21           #i:Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mWaveView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetResources(Ljava/util/ArrayList;)V

    .line 268
    return-void
.end method

.method private resetAll()V
    .locals 3

    .prologue
    .line 331
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800be

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800bf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080074

    new-instance v2, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$1;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$1;-><init>(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080418

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 343
    return-void
.end method

.method private resizeForDialog(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "image"

    .prologue
    .line 438
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const/high16 v4, 0x105

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 439
    .local v2, size:I
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 440
    .local v1, d:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    invoke-static {v1, v2, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 441
    .local v0, bitmapOrig:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v3
.end method

.method private saveAll()V
    .locals 17

    .prologue
    .line 349
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .local v11, targetLayout:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v2, existingImages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mIsScreenLarge:Z

    if-eqz v14, :cond_1

    const/4 v7, 0x7

    .line 352
    .local v7, maxTargets:I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mTargetOffset:I

    add-int/lit8 v3, v14, 0x1

    .local v3, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mTargetOffset:I

    add-int/2addr v14, v7

    if-gt v3, v14, :cond_3

    .line 353
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;

    iget-object v13, v14, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->uri:Ljava/lang/String;

    .line 354
    .local v13, uri:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;

    iget-object v12, v14, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->iconType:Ljava/lang/String;

    .line 355
    .local v12, type:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;

    iget-object v10, v14, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->iconSource:Ljava/lang/String;

    .line 356
    .local v10, source:Ljava/lang/String;
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    const-string v14, "empty"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    if-eqz v12, :cond_0

    .line 359
    const/4 v14, 0x0

    :try_start_0
    invoke-static {v13, v14}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    .line 360
    .local v5, in:Landroid/content/Intent;
    invoke-virtual {v5, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;

    iget-object v9, v14, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->pkgName:Ljava/lang/String;

    .line 362
    .local v9, pkgName:Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 363
    const-string v15, "icon_package"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;

    iget-object v14, v14, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    :goto_2
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 371
    .end local v5           #in:Landroid/content/Intent;
    .end local v9           #pkgName:Ljava/lang/String;
    :cond_0
    :goto_3
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const-string v14, "|"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 351
    .end local v3           #i:I
    .end local v7           #maxTargets:I
    .end local v10           #source:Ljava/lang/String;
    .end local v12           #type:Ljava/lang/String;
    .end local v13           #uri:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x4

    goto :goto_0

    .line 365
    .restart local v3       #i:I
    .restart local v5       #in:Landroid/content/Intent;
    .restart local v7       #maxTargets:I
    .restart local v9       #pkgName:Ljava/lang/String;
    .restart local v10       #source:Ljava/lang/String;
    .restart local v12       #type:Ljava/lang/String;
    .restart local v13       #uri:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v14, "icon_package"

    invoke-virtual {v5, v14}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 368
    .end local v5           #in:Landroid/content/Intent;
    .end local v9           #pkgName:Ljava/lang/String;
    :catch_0
    move-exception v14

    goto :goto_3

    .line 374
    .end local v10           #source:Ljava/lang/String;
    .end local v12           #type:Ljava/lang/String;
    .end local v13           #uri:Ljava/lang/String;
    :cond_3
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 375
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "lockscreen_targets"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 376
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .local v1, arr$:[Ljava/io/File;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_4
    if-ge v4, v6, :cond_5

    aget-object v8, v1, v4

    .line 377
    .local v8, pic:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "lockscreen_"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 378
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 376
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 381
    .end local v8           #pic:Ljava/io/File;
    :cond_5
    return-void
.end method

.method private setTarget(ILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .parameter "position"
    .parameter "uri"
    .parameter "draw"
    .parameter "iconType"
    .parameter "iconSource"
    .parameter "pkgName"

    .prologue
    .line 387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;

    .line 388
    .local v15, item:Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;
    iget-object v0, v15, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->icon:Landroid/graphics/drawable/StateListDrawable;

    move-object/from16 v16, v0

    .line 389
    .local v16, state:Landroid/graphics/drawable/StateListDrawable;
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    check-cast v13, Landroid/graphics/drawable/LayerDrawable;

    .line 390
    .local v13, inActiveLayer:Landroid/graphics/drawable/LayerDrawable;
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/LayerDrawable;

    .line 391
    .local v11, activeLayer:Landroid/graphics/drawable/LayerDrawable;
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 392
    if-eqz p4, :cond_0

    const-string v1, "icon_resource"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v14, 0x1

    .line 393
    .local v14, isSystem:Z
    :goto_0
    if-nez v14, :cond_1

    .line 394
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const v4, 0x1080335

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 395
    .local v2, activeBack:Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v11, v7, v1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 396
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v11, v1, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 410
    .end local v2           #activeBack:Landroid/graphics/drawable/Drawable;
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mDialogIcon:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v15, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->defaultIcon:Landroid/graphics/drawable/Drawable;

    .line 411
    move-object/from16 v0, p2

    iput-object v0, v15, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->uri:Ljava/lang/String;

    .line 412
    move-object/from16 v0, p4

    iput-object v0, v15, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->iconType:Ljava/lang/String;

    .line 413
    move-object/from16 v0, p5

    iput-object v0, v15, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->iconSource:Ljava/lang/String;

    .line 414
    move-object/from16 v0, p6

    iput-object v0, v15, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->pkgName:Ljava/lang/String;

    .line 415
    return-void

    .line 392
    .end local v14           #isSystem:Z
    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    .line 398
    .restart local v14       #isSystem:Z
    :cond_1
    new-instance v3, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const v4, 0x106000d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 399
    .local v3, empty:Landroid/graphics/drawable/InsetDrawable;
    const/4 v1, 0x1

    invoke-virtual {v11, v1, v3}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 400
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const-string v4, "_normal"

    const-string v5, "_activated"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "drawable"

    const-string v6, "android"

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 401
    .local v10, activeId:I
    const/4 v12, 0x0

    .line 402
    .local v12, back:Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_2

    .line 403
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 404
    const/4 v1, 0x0

    invoke-virtual {v11, v1, v12}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    goto :goto_1

    .line 406
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const v4, 0x1080335

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 407
    .restart local v2       #activeBack:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    new-instance v4, Landroid/graphics/drawable/InsetDrawable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v2

    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v11, v1, v4}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    goto :goto_1
.end method


# virtual methods
.method public iconPicked(IILandroid/content/Intent;)V
    .locals 15
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "in"

    .prologue
    .line 548
    const/4 v2, 0x0

    .line 549
    .local v2, ic:Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 550
    .local v4, iconType:Ljava/lang/String;
    const/4 v7, 0x0

    .line 551
    .local v7, pkgName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 552
    .local v3, iconSource:Ljava/lang/String;
    const/4 v11, 0x1

    move/from16 v0, p1

    if-ne v0, v11, :cond_3

    .line 553
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_2

    .line 554
    new-instance v6, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/lockscreen_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".png"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 555
    .local v6, mImage:Ljava/io/File;
    iget-object v11, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mImageTmp:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 556
    iget-object v11, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mImageTmp:Ljava/io/File;

    invoke-virtual {v11, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 558
    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->setReadOnly()Z

    .line 559
    const-string v4, "icon_file"

    .line 560
    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 561
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2           #ic:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-direct {v2, v11, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 588
    .end local v6           #mImage:Ljava/io/File;
    .restart local v2       #ic:Landroid/graphics/drawable/Drawable;
    :goto_0
    new-instance v10, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;-><init>(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;Landroid/graphics/drawable/StateListDrawable;)V

    .line 589
    .local v10, tmpIcon:Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;
    iput-object v4, v10, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->iconType:Ljava/lang/String;

    .line 590
    iput-object v3, v10, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->iconSource:Ljava/lang/String;

    .line 591
    iput-object v7, v10, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->pkgName:Ljava/lang/String;

    .line 592
    iget-object v11, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mDialogIcon:Landroid/widget/ImageButton;

    invoke-virtual {v11, v10}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 593
    iget-object v11, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mDialogIcon:Landroid/widget/ImageButton;

    invoke-virtual {v11, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 594
    .end local v10           #tmpIcon:Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;
    :cond_1
    :goto_1
    return-void

    .line 563
    :cond_2
    iget-object v11, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mImageTmp:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 564
    iget-object v11, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mImageTmp:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 568
    :cond_3
    if-nez p1, :cond_4

    .line 569
    const-string v11, "resource_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 570
    .local v9, resourceName:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    iget-object v12, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const-string v13, "drawable"

    const-string v14, "android"

    invoke-virtual {v12, v9, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 571
    const-string v4, "icon_resource"

    .line 572
    move-object v3, v9

    .line 573
    goto :goto_0

    .end local v9           #resourceName:Ljava/lang/String;
    :cond_4
    const/4 v11, 0x2

    move/from16 v0, p1

    if-ne v0, v11, :cond_1

    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_1

    .line 574
    const-string v11, "resource_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 575
    .restart local v9       #resourceName:Ljava/lang/String;
    const-string v11, "package_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 577
    :try_start_0
    iget-object v11, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    const/4 v12, 0x0

    invoke-virtual {v11, v7, v12}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v8

    .line 578
    .local v8, rContext:Landroid/content/Context;
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "drawable"

    invoke-virtual {v11, v9, v12, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 579
    .local v5, id:I
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 583
    .end local v5           #id:I
    .end local v8           #rContext:Landroid/content/Context;
    :goto_2
    const-string v4, "icon_resource"

    .line 584
    move-object v3, v9

    .line 585
    goto :goto_0

    .line 580
    :catch_0
    move-exception v1

    .line 581
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 132
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0d00c2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iput-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mWaveView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .line 133
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mWaveView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 134
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_targets"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->initializeView(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, shortcut_name:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 448
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 450
    :cond_0
    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->EMPTY_LABEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 451
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mDialogLabel:Landroid/widget/Button;

    sget-object v2, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->EMPTY_LABEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mDialogLabel:Landroid/widget/Button;

    const-string v2, "empty"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 453
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mDialogIcon:Landroid/widget/ImageButton;

    const v2, 0x7f020060

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 460
    :cond_1
    :goto_0
    return-void

    .line 454
    :cond_2
    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 456
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mIconPicker:Lcom/android/OriginalSettings/cyanogenmod/IconPicker;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/OriginalSettings/cyanogenmod/IconPicker;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 457
    :cond_4
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 458
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mPicker:Lcom/android/OriginalSettings/cyanogenmod/ShortcutPickHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/OriginalSettings/cyanogenmod/ShortcutPickHelper;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 300
    const/4 v0, 0x1

    const v1, 0x7f0800d8

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020088

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 305
    const/4 v0, 0x2

    const v1, 0x7f08055a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020070

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x73

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 310
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 114
    iput-object p2, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mContainer:Landroid/view/ViewGroup;

    .line 115
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->setHasOptionsMenu(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    .line 117
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isPhone(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mIsScreenLarge:Z

    .line 118
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    .line 119
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mIsLandscape:Z

    .line 120
    iget-boolean v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mIsLandscape:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mIsScreenLarge:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_2
    iput v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mTargetOffset:I

    .line 121
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const v1, 0x1050058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mTargetInset:I

    .line 122
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker;

    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/OriginalSettings/cyanogenmod/IconPicker;-><init>(Landroid/app/Activity;Lcom/android/OriginalSettings/cyanogenmod/IconPicker$OnIconPickListener;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mIconPicker:Lcom/android/OriginalSettings/cyanogenmod/IconPicker;

    .line 123
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/ShortcutPickHelper;

    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/android/OriginalSettings/cyanogenmod/ShortcutPickHelper;-><init>(Landroid/app/Activity;Lcom/android/OriginalSettings/cyanogenmod/ShortcutPickHelper$OnPickListener;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mPicker:Lcom/android/OriginalSettings/cyanogenmod/ShortcutPickHelper;

    .line 124
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/target.tmp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mImageTmp:Ljava/io/File;

    .line 125
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->EMPTY_LABEL:Ljava/lang/String;

    .line 126
    const v0, 0x7f04004c

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 117
    goto :goto_0

    :cond_1
    move v1, v2

    .line 119
    goto :goto_1

    :cond_2
    move v0, v2

    .line 120
    goto :goto_2
.end method

.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    .line 598
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 464
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 544
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 314
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 323
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 316
    :pswitch_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->resetAll()V

    goto :goto_0

    .line 319
    :pswitch_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->saveAll()V

    .line 320
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0800bd

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 314
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 468
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 291
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 293
    iget-boolean v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mIsScreenLarge:Z

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 296
    :cond_0
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 10
    .parameter "v"
    .parameter "target"

    .prologue
    const v9, 0x7f0d00b5

    const v7, 0x7f0d0027

    const/4 v8, 0x0

    .line 472
    iput p2, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mTargetIndex:I

    .line 473
    if-eqz p2, :cond_0

    iget-boolean v5, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mIsScreenLarge:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mIsLandscape:Z

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x2

    if-eq p2, v5, :cond_2

    iget-boolean v5, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mIsScreenLarge:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mIsLandscape:Z

    if-eqz v5, :cond_2

    .line 474
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 475
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0800c1

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 476
    const v5, 0x7f0800c2

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 477
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    const v6, 0x7f04004b

    invoke-static {v5, v6, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 478
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$2;

    invoke-direct {v6, p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$2;-><init>(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$3;

    invoke-direct {v6, p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$3;-><init>(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mDialogIcon:Landroid/widget/ImageButton;

    .line 499
    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mDialogLabel:Landroid/widget/Button;

    .line 500
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;

    .line 501
    .local v2, item:Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mDialogIcon:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;

    iget-object v5, v5, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->defaultIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 502
    new-instance v3, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;

    invoke-direct {v3, p0, v8}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;-><init>(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;Landroid/graphics/drawable/StateListDrawable;)V

    .line 503
    .local v3, tmpIcon:Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;
    iget-object v5, v2, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->iconType:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->iconType:Ljava/lang/String;

    .line 504
    iget-object v5, v2, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->iconSource:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->iconSource:Ljava/lang/String;

    .line 505
    iget-object v5, v2, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->pkgName:Ljava/lang/String;

    iput-object v5, v3, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->pkgName:Ljava/lang/String;

    .line 506
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mDialogIcon:Landroid/widget/ImageButton;

    invoke-virtual {v5, v3}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 507
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;

    iget-object v5, v5, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->uri:Ljava/lang/String;

    const-string v6, "empty"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 508
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mDialogLabel:Landroid/widget/Button;

    sget-object v6, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->EMPTY_LABEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 512
    :goto_0
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mDialogLabel:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;

    iget-object v5, v5, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->uri:Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 513
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 514
    const v5, 0x7f080074

    new-instance v6, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$4;

    invoke-direct {v6, p0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$4;-><init>(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 533
    const v5, 0x7f080418

    invoke-virtual {v0, v5, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 534
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 535
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 536
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 537
    const v5, 0x102000b

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    const v7, 0x10301b3

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 540
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #item:Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;
    .end local v3           #tmpIcon:Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;
    .end local v4           #view:Landroid/view/View;
    :cond_2
    return-void

    .line 510
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    .restart local v2       #item:Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;
    .restart local v3       #tmpIcon:Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;
    .restart local v4       #view:Landroid/view/View;
    :cond_3
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mDialogLabel:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mPicker:Lcom/android/OriginalSettings/cyanogenmod/ShortcutPickHelper;

    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mTargetStore:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;

    iget-object v5, v5, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->uri:Ljava/lang/String;

    invoke-virtual {v7, v5}, Lcom/android/OriginalSettings/cyanogenmod/ShortcutPickHelper;->getFriendlyNameForUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public shortcutPicked(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter "uri"
    .parameter "friendlyName"
    .parameter "isApplication"

    .prologue
    .line 420
    const/4 v4, 0x0

    :try_start_0
    invoke-static {p1, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 421
    .local v1, i:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 422
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 423
    .local v0, aInfo:Landroid/content/pm/ActivityInfo;
    const/4 v2, 0x0

    .line 424
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {v0, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 429
    :goto_0
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mDialogLabel:Landroid/widget/Button;

    invoke-virtual {v4, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mDialogLabel:Landroid/widget/Button;

    invoke-virtual {v4, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 431
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mDialogIcon:Landroid/widget/ImageButton;

    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->resizeForDialog(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 432
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mDialogIcon:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 435
    .end local v0           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :goto_1
    return-void

    .line 427
    .restart local v0       #aInfo:Landroid/content/pm/ActivityInfo;
    .restart local v1       #i:Landroid/content/Intent;
    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v3       #pm:Landroid/content/pm/PackageManager;
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mResources:Landroid/content/res/Resources;

    const v5, 0x1080093

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 433
    .end local v0           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v4

    goto :goto_1
.end method
