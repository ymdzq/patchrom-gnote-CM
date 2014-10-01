.class Lcom/android/OriginalSettings/wfd/WifiDisplaySettings$6;
.super Landroid/database/ContentObserver;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;

    #calls: Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->update()V
    invoke-static {v0}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->access$500(Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;)V

    .line 383
    return-void
.end method
