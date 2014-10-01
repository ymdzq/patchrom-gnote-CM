.class public Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;
.super Landroid/app/Fragment;
.source "QuickSettingsTiles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$OnRearrangeListener;,
        Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter;
    }
.end annotation


# instance fields
.field private mContainer:Landroid/view/ViewGroup;

.field mDragView:Lcom/android/OriginalSettings/cyanogenmod/DraggableGridView;

.field mInflater:Landroid/view/LayoutInflater;

.field mSystemUiResources:Landroid/content/res/Resources;

.field mTileAdapter:Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 313
    return-void
.end method

.method private getItemFromSystemUi(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "name"
    .parameter "type"

    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->mSystemUiResources:Landroid/content/res/Resources;

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->mSystemUiResources:Landroid/content/res/Resources;

    const-string v2, "com.android.systemui"

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 102
    .local v0, resId:I
    if-lez v0, :cond_1

    .line 104
    :try_start_0
    const-string v1, "dimen"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->mSystemUiResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 113
    .end local v0           #resId:I
    :goto_0
    return v1

    .line 107
    .restart local v0       #resId:I
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->mSystemUiResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    .line 113
    .end local v0           #resId:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resetTiles()V
    .locals 3

    .prologue
    .line 247
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 248
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080292

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 249
    const v1, 0x7f080293

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 250
    const v1, 0x7f080074

    new-instance v2, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$3;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$3;-><init>(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 256
    const v1, 0x7f080418

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 257
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 258
    return-void
.end method


# virtual methods
.method addTile(ILjava/lang/String;IZ)V
    .locals 12
    .parameter "titleId"
    .parameter "iconSysId"
    .parameter "iconRegId"
    .parameter "newTile"

    .prologue
    .line 136
    const/4 v6, 0x0

    .line 137
    .local v6, tileView:Landroid/view/View;
    if-eqz p3, :cond_1

    .line 138
    iget-object v8, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040090

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 139
    const v8, 0x7f0d014c

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 140
    .local v4, name:Landroid/widget/TextView;
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(I)V

    .line 141
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v8, p3, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 168
    .end local v4           #name:Landroid/widget/TextView;
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->mDragView:Lcom/android/OriginalSettings/cyanogenmod/DraggableGridView;

    if-eqz p4, :cond_4

    iget-object v8, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->mDragView:Lcom/android/OriginalSettings/cyanogenmod/DraggableGridView;

    invoke-virtual {v8}, Lcom/android/OriginalSettings/cyanogenmod/DraggableGridView;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    :goto_1
    invoke-virtual {v9, v6, v8}, Lcom/android/OriginalSettings/cyanogenmod/DraggableGridView;->addView(Landroid/view/View;I)V

    .line 169
    return-void

    .line 143
    :cond_1
    sget-object v8, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/Map;

    const-string v9, "toggleUser"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;

    invoke-virtual {v8}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;->getTitleResId()I

    move-result v8

    if-ne p1, v8, :cond_2

    const/4 v2, 0x1

    .line 144
    .local v2, isUserTile:Z
    :goto_2
    iget-object v8, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->mSystemUiResources:Landroid/content/res/Resources;

    if-eqz v8, :cond_0

    if-eqz p2, :cond_0

    .line 145
    iget-object v8, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->mSystemUiResources:Landroid/content/res/Resources;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, p2, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 146
    .local v5, resId:I
    if-lez v5, :cond_0

    .line 148
    :try_start_0
    iget-object v8, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->mSystemUiResources:Landroid/content/res/Resources;

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 149
    .local v0, d:Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    .line 150
    if-eqz v2, :cond_3

    .line 151
    iget-object v8, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040091

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 152
    const v8, 0x7f0d014d

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 153
    .local v3, iv:Landroid/widget/ImageView;
    const v8, 0x7f0d014c

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 154
    .local v7, tv:Landroid/widget/TextView;
    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setText(I)V

    .line 155
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #iv:Landroid/widget/ImageView;
    .end local v7           #tv:Landroid/widget/TextView;
    :catch_0
    move-exception v1

    .line 163
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 143
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #isUserTile:Z
    .end local v5           #resId:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 157
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    .restart local v2       #isUserTile:Z
    .restart local v5       #resId:I
    :cond_3
    :try_start_1
    iget-object v8, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040090

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 158
    const v8, 0x7f0d014c

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 159
    .restart local v4       #name:Landroid/widget/TextView;
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(I)V

    .line 160
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v8, v0, v9, v10}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 168
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v2           #isUserTile:Z
    .end local v4           #name:Landroid/widget/TextView;
    .end local v5           #resId:I
    :cond_4
    iget-object v8, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->mDragView:Lcom/android/OriginalSettings/cyanogenmod/DraggableGridView;

    invoke-virtual {v8}, Lcom/android/OriginalSettings/cyanogenmod/DraggableGridView;->getChildCount()I

    move-result v8

    goto :goto_1
.end method

.method genTiles()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 117
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->mDragView:Lcom/android/OriginalSettings/cyanogenmod/DraggableGridView;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/cyanogenmod/DraggableGridView;->removeAllViews()V

    .line 118
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->getCurrentTiles(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->getTileListFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 119
    .local v3, tiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 120
    .local v2, tileindex:Ljava/lang/String;
    sget-object v4, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;

    .line 121
    .local v1, tile:Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;
    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v1}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;->getTitleResId()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;->getIcon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v7, v7}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->addTile(ILjava/lang/String;IZ)V

    goto :goto_0

    .line 125
    .end local v1           #tile:Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;
    .end local v2           #tileindex:Ljava/lang/String;
    :cond_1
    const v4, 0x7f0800ca

    const/4 v5, 0x0

    const v6, 0x7f02006b

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->addTile(ILjava/lang/String;IZ)V

    .line 126
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->genTiles()V

    .line 175
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->mDragView:Lcom/android/OriginalSettings/cyanogenmod/DraggableGridView;

    new-instance v1, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$1;-><init>(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;)V

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/cyanogenmod/DraggableGridView;->setOnRearrangeListener(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$OnRearrangeListener;)V

    .line 190
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->mDragView:Lcom/android/OriginalSettings/cyanogenmod/DraggableGridView;

    new-instance v1, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$2;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$2;-><init>(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;)V

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/cyanogenmod/DraggableGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 214
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->setHasOptionsMenu(Z)V

    .line 215
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 228
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

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 233
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    .line 64
    new-instance v7, Lcom/android/OriginalSettings/cyanogenmod/DraggableGridView;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/OriginalSettings/cyanogenmod/DraggableGridView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->mDragView:Lcom/android/OriginalSettings/cyanogenmod/DraggableGridView;

    .line 65
    iput-object p2, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->mContainer:Landroid/view/ViewGroup;

    .line 66
    iget-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 67
    iget-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 68
    iput-object p1, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->mInflater:Landroid/view/LayoutInflater;

    .line 69
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 70
    .local v6, pm:Landroid/content/pm/PackageManager;
    if-eqz v6, :cond_0

    .line 72
    :try_start_0
    const-string v7, "com.android.systemui"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    iput-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->mSystemUiResources:Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_0
    :goto_0
    const-string v7, "notification_panel_width"

    const-string v8, "dimen"

    invoke-direct {p0, v7, v8}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->getItemFromSystemUi(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 78
    .local v4, panelWidth:I
    if-eqz v4, :cond_1

    .line 79
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-direct {v5, v4, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 81
    .local v5, params:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->mDragView:Lcom/android/OriginalSettings/cyanogenmod/DraggableGridView;

    invoke-virtual {v7, v5}, Lcom/android/OriginalSettings/cyanogenmod/DraggableGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    .end local v5           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    const-string v7, "quick_settings_cell_height"

    const-string v8, "dimen"

    invoke-direct {p0, v7, v8}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->getItemFromSystemUi(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 84
    .local v1, cellHeight:I
    if-eqz v1, :cond_2

    .line 85
    iget-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->mDragView:Lcom/android/OriginalSettings/cyanogenmod/DraggableGridView;

    invoke-virtual {v7, v1}, Lcom/android/OriginalSettings/cyanogenmod/DraggableGridView;->setCellHeight(I)V

    .line 87
    :cond_2
    const-string v7, "quick_settings_cell_gap"

    const-string v8, "dimen"

    invoke-direct {p0, v7, v8}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->getItemFromSystemUi(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 88
    .local v0, cellGap:I
    if-eqz v0, :cond_3

    .line 89
    iget-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->mDragView:Lcom/android/OriginalSettings/cyanogenmod/DraggableGridView;

    invoke-virtual {v7, v0}, Lcom/android/OriginalSettings/cyanogenmod/DraggableGridView;->setCellGap(I)V

    .line 91
    :cond_3
    const-string v7, "quick_settings_num_columns"

    const-string v8, "integer"

    invoke-direct {p0, v7, v8}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->getItemFromSystemUi(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 92
    .local v2, columnCount:I
    if-eqz v2, :cond_4

    .line 93
    iget-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->mDragView:Lcom/android/OriginalSettings/cyanogenmod/DraggableGridView;

    invoke-virtual {v7, v2}, Lcom/android/OriginalSettings/cyanogenmod/DraggableGridView;->setColumnCount(I)V

    .line 95
    :cond_4
    new-instance v7, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->mTileAdapter:Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter;

    .line 96
    iget-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->mDragView:Lcom/android/OriginalSettings/cyanogenmod/DraggableGridView;

    return-object v7

    .line 73
    .end local v0           #cellGap:I
    .end local v1           #cellHeight:I
    .end local v2           #columnCount:I
    .end local v4           #panelWidth:I
    :catch_0
    move-exception v3

    .line 74
    .local v3, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->mSystemUiResources:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 237
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 242
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 239
    :pswitch_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->resetTiles()V

    .line 240
    const/4 v0, 0x1

    goto :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/16 v2, 0x14

    const/4 v1, 0x0

    .line 219
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 220
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/Utils;->isPhone(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 223
    :cond_0
    return-void
.end method
