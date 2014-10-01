.class Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$4;
.super Ljava/lang/Object;
.source "LockscreenTargets.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->onTrigger(Landroid/view/View;I)V
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
    .line 514
    iput-object p1, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$4;->this$0:Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 517
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$4;->this$0:Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;

    #getter for: Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mDialogIcon:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->access$700(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;

    .line 518
    .local v10, vObject:Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;
    const/4 v7, 0x0

    .local v7, type:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, source:Ljava/lang/String;
    const/4 v9, 0x0

    .line 519
    .local v9, pkgName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$4;->this$0:Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;

    #getter for: Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mTargetInset:I
    invoke-static {v1}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->access$800(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;)I

    move-result v2

    .line 520
    .local v2, targetInset:I
    if-eqz v10, :cond_0

    .line 521
    iget-object v7, v10, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->iconType:Ljava/lang/String;

    .line 522
    iget-object v8, v10, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->iconSource:Ljava/lang/String;

    .line 523
    iget-object v9, v10, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->pkgName:Ljava/lang/String;

    .line 525
    :cond_0
    if-eqz v7, :cond_1

    const-string v1, "icon_resource"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 526
    const/4 v2, 0x0

    .line 528
    :cond_1
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$4;->this$0:Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;

    #getter for: Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mDialogIcon:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->access$700(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 530
    .local v0, pD:Landroid/graphics/drawable/InsetDrawable;
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$4;->this$0:Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;

    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$4;->this$0:Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;

    #getter for: Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mTargetIndex:I
    invoke-static {v1}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->access$900(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;)I

    move-result v4

    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$4;->this$0:Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;

    #getter for: Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mDialogLabel:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->access$300(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    #calls: Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->setTarget(ILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v3 .. v9}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->access$1000(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;ILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    return-void
.end method
