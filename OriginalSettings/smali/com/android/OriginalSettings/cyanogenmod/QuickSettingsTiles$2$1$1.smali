.class Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$2$1$1;
.super Ljava/lang/Object;
.source "QuickSettingsTiles.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$2$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$2$1;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$2$1;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$2$1$1;->this$2:Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$2$1;

    iput p2, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$2$1$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 201
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$2$1$1;->this$2:Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$2$1;

    iget-object v1, v1, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$2$1;->this$1:Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$2;

    iget-object v1, v1, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$2;->this$0:Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->getCurrentTiles(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->getTileListFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 202
    .local v0, curr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$2$1$1;->this$2:Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$2$1;

    iget-object v1, v1, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$2$1;->this$1:Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$2;

    iget-object v1, v1, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$2;->this$0:Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;

    iget-object v1, v1, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->mTileAdapter:Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter;

    iget v2, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$2$1$1;->val$position:I

    invoke-virtual {v1, v2}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter;->getTileId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$2$1$1;->this$2:Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$2$1;

    iget-object v1, v1, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$2$1;->this$1:Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$2;

    iget-object v1, v1, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$2;->this$0:Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->getTileStringFromList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->saveCurrentTiles(Landroid/content/Context;Ljava/lang/String;)V

    .line 204
    return-void
.end method
