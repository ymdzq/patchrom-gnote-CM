.class Lcom/android/OriginalSettings/DisplaySettings$3;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/DisplaySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/DisplaySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/OriginalSettings/DisplaySettings$3;->this$0:Lcom/android/OriginalSettings/DisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/OriginalSettings/DisplaySettings$3;->this$0:Lcom/android/OriginalSettings/DisplaySettings;

    #getter for: Lcom/android/OriginalSettings/DisplaySettings;->mFontSizePref:Lcom/android/OriginalSettings/WarnedListPreference;
    invoke-static {v0}, Lcom/android/OriginalSettings/DisplaySettings;->access$100(Lcom/android/OriginalSettings/DisplaySettings;)Lcom/android/OriginalSettings/WarnedListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/OriginalSettings/WarnedListPreference;->click()V

    .line 384
    return-void
.end method
