.class Lcom/android/OriginalSettings/DreamSettings$2;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/DreamSettings;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/DreamSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/DreamSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/OriginalSettings/DreamSettings$2;->this$0:Lcom/android/OriginalSettings/DreamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/OriginalSettings/DreamSettings$2;->this$0:Lcom/android/OriginalSettings/DreamSettings;

    #getter for: Lcom/android/OriginalSettings/DreamSettings;->mBackend:Lcom/android/OriginalSettings/DreamBackend;
    invoke-static {v0}, Lcom/android/OriginalSettings/DreamSettings;->access$200(Lcom/android/OriginalSettings/DreamSettings;)Lcom/android/OriginalSettings/DreamBackend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/OriginalSettings/DreamBackend;->startDreaming()V

    .line 147
    return-void
.end method
