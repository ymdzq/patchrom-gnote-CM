.class Lcom/android/OriginalSettings/deviceinfo/Memory$1;
.super Landroid/os/storage/StorageEventListener;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/deviceinfo/Memory;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory$1;->this$0:Lcom/android/OriginalSettings/deviceinfo/Memory;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 140
    const-string v3, "MemorySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received storage state changed notification that "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " changed state from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Memory$1;->this$0:Lcom/android/OriginalSettings/deviceinfo/Memory;

    #getter for: Lcom/android/OriginalSettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/OriginalSettings/deviceinfo/Memory;->access$000(Lcom/android/OriginalSettings/deviceinfo/Memory;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 143
    .local v0, category:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 144
    .local v2, volume:Landroid/os/storage/StorageVolume;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->onStorageStateChanged()V

    .line 149
    .end local v0           #category:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    .end local v2           #volume:Landroid/os/storage/StorageVolume;
    :cond_1
    return-void
.end method
