.class Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface$2;
.super Ljava/lang/Object;
.source "LockscreenInterface.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->handleBackgroundSelection(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;

.field final synthetic val$colorView:Lcom/android/OriginalSettings/notificationlight/ColorPickerView;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;Lcom/android/OriginalSettings/notificationlight/ColorPickerView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface$2;->this$0:Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;

    iput-object p2, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface$2;->val$colorView:Lcom/android/OriginalSettings/notificationlight/ColorPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface$2;->this$0:Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;

    #calls: Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->access$000(Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_background"

    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface$2;->val$colorView:Lcom/android/OriginalSettings/notificationlight/ColorPickerView;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/notificationlight/ColorPickerView;->getColor()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 292
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface$2;->this$0:Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;

    #calls: Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->updateCustomBackgroundSummary()V
    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;->access$100(Lcom/android/OriginalSettings/cyanogenmod/LockscreenInterface;)V

    .line 293
    return-void
.end method
