.class Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$1;
.super Ljava/lang/Object;
.source "LockscreenTargets.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->resetAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;)V
    .locals 0
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$1;->this$0:Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 337
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$1;->this$0:Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;

    #calls: Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->initializeView(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->access$000(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$1;->this$0:Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;

    #getter for: Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->access$100(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_targets"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 339
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$1;->this$0:Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;

    #getter for: Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->access$100(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0800bc

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 340
    return-void
.end method
