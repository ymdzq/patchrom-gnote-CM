.class Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter;
.super Landroid/widget/ArrayAdapter;
.source "QuickSettingsTiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TileAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mTiles:[Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter$Entry;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 273
    const v0, 0x1090003

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 274
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter;->getCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter$Entry;

    iput-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter;->mTiles:[Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter$Entry;

    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter;->loadItems(Landroid/content/res/Resources;)V

    .line 276
    invoke-direct {p0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter;->sortItems()V

    .line 277
    return-void
.end method

.method private loadItems(Landroid/content/res/Resources;)V
    .locals 7
    .parameter "resources"

    .prologue
    .line 280
    const/4 v1, 0x0

    .line 281
    .local v1, index:I
    sget-object v4, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;

    .line 282
    .local v3, t:Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter;->mTiles:[Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter$Entry;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    new-instance v5, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter$Entry;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;->getTitleResId()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter$Entry;-><init>(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;Ljava/lang/String;)V

    aput-object v5, v4, v1

    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_0

    .line 284
    .end local v3           #t:Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;
    :cond_0
    return-void
.end method

.method private sortItems()V
    .locals 3

    .prologue
    .line 287
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    .line 288
    .local v0, collator:Ljava/text/Collator;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setDecomposition(I)V

    .line 289
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 290
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter;->mTiles:[Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter$Entry;

    new-instance v2, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter$1;-><init>(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter;Ljava/text/Collator;)V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 296
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter;->mTiles:[Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter$Entry;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter$Entry;->tileTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTileId(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter;->mTiles:[Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter$Entry;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter$Entry;->tile:Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
