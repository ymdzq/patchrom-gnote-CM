.class Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$2;
.super Ljava/lang/Object;
.source "QuickSettingsTiles.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$2;->this$0:Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$2;->this$0:Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;

    iget-object v1, v1, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->mDragView:Lcom/android/OriginalSettings/cyanogenmod/DraggableGridView;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/cyanogenmod/DraggableGridView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p3, v1, :cond_0

    .line 211
    :goto_0
    return-void

    .line 194
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$2;->this$0:Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 195
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080263

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$2;->this$0:Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;

    iget-object v2, v2, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles;->mTileAdapter:Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$TileAdapter;

    new-instance v3, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$2$1;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$2$1;-><init>(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsTiles$2;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 210
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
