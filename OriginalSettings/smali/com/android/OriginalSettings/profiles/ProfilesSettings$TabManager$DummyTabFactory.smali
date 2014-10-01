.class Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager$DummyTabFactory;
.super Ljava/lang/Object;
.source "ProfilesSettings.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DummyTabFactory"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput-object p1, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager$DummyTabFactory;->mContext:Landroid/content/Context;

    .line 402
    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .parameter "tag"

    .prologue
    const/4 v2, 0x0

    .line 406
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager$DummyTabFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 407
    .local v0, v:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 408
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 409
    return-object v0
.end method
