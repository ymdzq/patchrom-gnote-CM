.class Lcom/android/OriginalSettings/deviceinfo/Memory$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 245
    iput-object p1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory$2;->this$0:Lcom/android/OriginalSettings/deviceinfo/Memory;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 248
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 250
    const-string v5, "connected"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 251
    .local v3, isUsbConnected:Z
    iget-object v5, p0, Lcom/android/OriginalSettings/deviceinfo/Memory$2;->this$0:Lcom/android/OriginalSettings/deviceinfo/Memory;

    #getter for: Lcom/android/OriginalSettings/deviceinfo/Memory;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v5}, Lcom/android/OriginalSettings/deviceinfo/Memory;->access$100(Lcom/android/OriginalSettings/deviceinfo/Memory;)Landroid/hardware/usb/UsbManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v4

    .line 252
    .local v4, usbFunction:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/OriginalSettings/deviceinfo/Memory$2;->this$0:Lcom/android/OriginalSettings/deviceinfo/Memory;

    #getter for: Lcom/android/OriginalSettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/OriginalSettings/deviceinfo/Memory;->access$000(Lcom/android/OriginalSettings/deviceinfo/Memory;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 253
    .local v1, category:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v1, v3, v4}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->onUsbStateChanged(ZLjava/lang/String;)V

    goto :goto_0

    .line 255
    .end local v1           #category:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #isUsbConnected:Z
    .end local v4           #usbFunction:Ljava/lang/String;
    :cond_0
    const-string v5, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 256
    iget-object v5, p0, Lcom/android/OriginalSettings/deviceinfo/Memory$2;->this$0:Lcom/android/OriginalSettings/deviceinfo/Memory;

    #getter for: Lcom/android/OriginalSettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/OriginalSettings/deviceinfo/Memory;->access$000(Lcom/android/OriginalSettings/deviceinfo/Memory;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 257
    .restart local v1       #category:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v1}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->onMediaScannerFinished()V

    goto :goto_1

    .line 260
    .end local v1           #category:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method
