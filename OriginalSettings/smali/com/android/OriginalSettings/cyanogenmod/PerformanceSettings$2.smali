.class Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings$2;
.super Ljava/lang/Object;
.source "PerformanceSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings$2;->this$0:Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings$2;->this$0:Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->finish()V

    .line 88
    return-void
.end method
