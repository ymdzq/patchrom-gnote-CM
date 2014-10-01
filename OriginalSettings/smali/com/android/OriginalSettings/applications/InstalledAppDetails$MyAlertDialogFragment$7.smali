.class Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment$7;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1191
    iput-object p1, p0, Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment$7;->this$0:Lcom/android/OriginalSettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1193
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1194
    return-void
.end method
