.class Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog$3;
.super Ljava/lang/Object;
.source "AutoBrightnessCustomizeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog$3;->this$0:Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog$3;->this$0:Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;

    #calls: Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;->showResetConfirmation()V
    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;->access$300(Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;)V

    .line 171
    return-void
.end method
