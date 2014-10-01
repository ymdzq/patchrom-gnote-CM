.class Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$2;
.super Ljava/lang/Object;
.source "LockscreenTargets.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 478
    iput-object p1, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$2;->this$0:Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$2;->this$0:Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;

    #getter for: Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mDialogLabel:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->access$300(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$2;->this$0:Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;

    #getter for: Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mImageTmp:Ljava/io/File;
    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->access$400(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 484
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$2;->this$0:Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;

    #getter for: Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mImageTmp:Ljava/io/File;
    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->access$400(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setWritable(ZZ)Z

    .line 485
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$2;->this$0:Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;

    #getter for: Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mIconPicker:Lcom/android/OriginalSettings/cyanogenmod/IconPicker;
    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->access$500(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;)Lcom/android/OriginalSettings/cyanogenmod/IconPicker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$2;->this$0:Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$2;->this$0:Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;

    #getter for: Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->mImageTmp:Ljava/io/File;
    invoke-static {v2}, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;->access$400(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/OriginalSettings/cyanogenmod/IconPicker;->pickIcon(ILjava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 486
    :catch_0
    move-exception v0

    goto :goto_0
.end method
