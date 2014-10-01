.class Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog$2$1;
.super Ljava/lang/Object;
.source "AutoBrightnessCustomizeDialog.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog$2;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog$2;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog$2$1;->this$1:Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 134
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 142
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 136
    :pswitch_0
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog$2$1;->this$1:Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog$2;

    iget-object v1, v1, Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog$2;->this$0:Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;

    #calls: Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;->showPreview()V
    invoke-static {v1}, Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;->access$100(Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;)V

    goto :goto_0

    .line 139
    :pswitch_1
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog$2$1;->this$1:Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog$2;

    iget-object v1, v1, Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog$2;->this$0:Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;

    #calls: Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;->showHelp()V
    invoke-static {v1}, Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;->access$200(Lcom/android/OriginalSettings/cyanogenmod/AutoBrightnessCustomizeDialog;)V

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x7f0d0263
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
