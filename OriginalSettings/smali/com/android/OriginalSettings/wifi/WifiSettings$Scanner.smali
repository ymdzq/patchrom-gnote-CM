.class Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;
.super Landroid/os/Handler;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# instance fields
.field private mRetry:I

.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;


# direct methods
.method private constructor <init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 924
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 925
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->mRetry:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/wifi/WifiSettings;Lcom/android/OriginalSettings/wifi/WifiSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 924
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    return-void
.end method


# virtual methods
.method forceScan()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 934
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->removeMessages(I)V

    .line 935
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->sendEmptyMessage(I)Z

    .line 936
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x0

    .line 945
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->access$200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScanActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 946
    iput v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->mRetry:I

    .line 956
    :cond_0
    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->sendEmptyMessageDelayed(IJ)Z

    .line 957
    :cond_1
    :goto_0
    return-void

    .line 947
    :cond_2
    iget v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->mRetry:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->mRetry:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 948
    iput v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->mRetry:I

    .line 949
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->this$0:Lcom/android/OriginalSettings/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 950
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 951
    const v1, 0x7f080507

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method pause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 939
    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->mRetry:I

    .line 940
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->removeMessages(I)V

    .line 941
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 928
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 929
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->sendEmptyMessage(I)Z

    .line 931
    :cond_0
    return-void
.end method
