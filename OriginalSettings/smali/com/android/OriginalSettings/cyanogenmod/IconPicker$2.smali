.class Lcom/android/OriginalSettings/cyanogenmod/IconPicker$2;
.super Ljava/lang/Object;
.source "IconPicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/cyanogenmod/IconPicker;->showChosen(ILjava/io/File;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/cyanogenmod/IconPicker;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/cyanogenmod/IconPicker;ILandroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker$2;->this$0:Lcom/android/OriginalSettings/cyanogenmod/IconPicker;

    iput p2, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker$2;->val$type:I

    iput-object p3, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 112
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 113
    .local v0, in:Landroid/content/Intent;
    const-string v2, "resource_name"

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/cyanogenmod/IconPicker$IconAdapter;

    invoke-virtual {v1, p3}, Lcom/android/OriginalSettings/cyanogenmod/IconPicker$IconAdapter;->getItemReference(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker$2;->this$0:Lcom/android/OriginalSettings/cyanogenmod/IconPicker;

    #getter for: Lcom/android/OriginalSettings/cyanogenmod/IconPicker;->mIconListener:Lcom/android/OriginalSettings/cyanogenmod/IconPicker$OnIconPickListener;
    invoke-static {v1}, Lcom/android/OriginalSettings/cyanogenmod/IconPicker;->access$100(Lcom/android/OriginalSettings/cyanogenmod/IconPicker;)Lcom/android/OriginalSettings/cyanogenmod/IconPicker$OnIconPickListener;

    move-result-object v1

    iget v2, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker$2;->val$type:I

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3, v0}, Lcom/android/OriginalSettings/cyanogenmod/IconPicker$OnIconPickListener;->iconPicked(IILandroid/content/Intent;)V

    .line 115
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 116
    return-void
.end method
