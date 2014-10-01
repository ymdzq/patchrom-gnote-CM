.class Lcom/android/OriginalSettings/KeyguardAppWidgetPickActivity$1;
.super Ljava/lang/Object;
.source "KeyguardAppWidgetPickActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/KeyguardAppWidgetPickActivity;->finishDelayedAndShowLockScreen(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/KeyguardAppWidgetPickActivity;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/KeyguardAppWidgetPickActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/OriginalSettings/KeyguardAppWidgetPickActivity$1;->this$0:Lcom/android/OriginalSettings/KeyguardAppWidgetPickActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/OriginalSettings/KeyguardAppWidgetPickActivity$1;->this$0:Lcom/android/OriginalSettings/KeyguardAppWidgetPickActivity;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/KeyguardAppWidgetPickActivity;->finish()V

    .line 613
    return-void
.end method
