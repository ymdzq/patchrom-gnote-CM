.class Lcom/android/OriginalSettings/profiles/ProfileConfig$2;
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
    .line 415
    iput-object p1, p0, Lcom/android/OriginalSettings/profiles/ProfileConfig$2;->this$0:Lcom/android/OriginalSettings/profiles/ProfileConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 417
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 418
    return-void
.end method
