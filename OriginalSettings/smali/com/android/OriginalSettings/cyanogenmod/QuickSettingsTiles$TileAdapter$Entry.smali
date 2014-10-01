.class Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter$Entry;
.super Ljava/lang/Object;
.source "QuickSettingsTiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field public final tile:Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;

.field public final tileTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;Ljava/lang/String;)V
    .locals 0
    .parameter "tile"
    .parameter "tileTitle"

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter$Entry;->tile:Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;

    .line 266
    iput-object p2, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter$Entry;->tileTitle:Ljava/lang/String;

    .line 267
    return-void
.end method
