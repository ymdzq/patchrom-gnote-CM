.class Lcom/android/OriginalSettings/wfd/WifiDisplaySettings$4;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
.method constructor <init>(Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;

    #setter for: Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z
    invoke-static {v0, p2}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->access$202(Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;Z)Z

    .line 361
    iget-object v0, p0, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings$4;->this$0:Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;

    #calls: Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;->access$300(Lcom/android/OriginalSettings/wfd/WifiDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_on"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 363
    return-void

    .line 361
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
