.class Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference$1;
.super Ljava/lang/Object;
.source "UsageBarPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference$1;->this$0:Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference$1;->this$0:Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;

    #getter for: Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mOnRequestMediaRescanListener:Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference$OnRequestMediaRescanListener;
    invoke-static {v0}, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->access$000(Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;)Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference$OnRequestMediaRescanListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference$1;->this$0:Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;

    #getter for: Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mRescanMedia:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->access$100(Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference$1;->this$0:Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;

    #getter for: Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mRescanMediaWaiting:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->access$200(Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference$1;->this$0:Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;

    #getter for: Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->access$300(Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference$1$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference$1$1;-><init>(Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    :cond_0
    return-void
.end method
