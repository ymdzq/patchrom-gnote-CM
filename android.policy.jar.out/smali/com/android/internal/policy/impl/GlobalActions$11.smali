.class Lcom/android/internal/policy/impl/GlobalActions$11;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$11;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$11;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v1, v0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v1

    .line 626
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$11;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$11;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$300(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$11;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v2, v2, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 628
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$11;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/internal/policy/impl/GlobalActions;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 630
    :cond_0
    monitor-exit v1

    .line 631
    return-void

    .line 630
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
