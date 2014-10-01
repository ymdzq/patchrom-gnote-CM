.class Lcom/android/OriginalSettings/cyanogenmod/NavRing$1;
.super Ljava/lang/Object;
.source "NavRing.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/cyanogenmod/NavRing;->resetAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/cyanogenmod/NavRing;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/cyanogenmod/NavRing;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/OriginalSettings/cyanogenmod/NavRing$1;->this$0:Lcom/android/OriginalSettings/cyanogenmod/NavRing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/NavRing$1;->this$0:Lcom/android/OriginalSettings/cyanogenmod/NavRing;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/cyanogenmod/NavRing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/cm/NavigationRingHelpers;->resetActionsToDefaults(Landroid/content/Context;)V

    .line 228
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/NavRing$1;->this$0:Lcom/android/OriginalSettings/cyanogenmod/NavRing;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/cyanogenmod/NavRing;->updateDrawables()V

    .line 229
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/NavRing$1;->this$0:Lcom/android/OriginalSettings/cyanogenmod/NavRing;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/cyanogenmod/NavRing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0802da

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 232
    return-void
.end method
