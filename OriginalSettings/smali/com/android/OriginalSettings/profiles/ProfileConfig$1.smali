.class Lcom/android/OriginalSettings/profiles/ProfileConfig$1;
.super Ljava/lang/Object;
.source "ProfileConfig.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/profiles/ProfileConfig;->deleteProfile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/profiles/ProfileConfig;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/profiles/ProfileConfig;)V
    .locals 0
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/OriginalSettings/profiles/ProfileConfig$1;->this$0:Lcom/android/OriginalSettings/profiles/ProfileConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/OriginalSettings/profiles/ProfileConfig$1;->this$0:Lcom/android/OriginalSettings/profiles/ProfileConfig;

    #calls: Lcom/android/OriginalSettings/profiles/ProfileConfig;->doDelete()V
    invoke-static {v0}, Lcom/android/OriginalSettings/profiles/ProfileConfig;->access$000(Lcom/android/OriginalSettings/profiles/ProfileConfig;)V

    .line 413
    return-void
.end method
