.class final Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager$TabInfo;
.super Ljava/lang/Object;
.source "ProfilesSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TabInfo"
.end annotation


# instance fields
.field private final args:Landroid/os/Bundle;

.field private final clss:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private fragment:Landroid/app/Fragment;

.field private final tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .parameter "_tag"
    .parameter
    .parameter "_args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 390
    .local p2, _class:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput-object p1, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager$TabInfo;->tag:Ljava/lang/String;

    .line 392
    iput-object p2, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager$TabInfo;->clss:Ljava/lang/Class;

    .line 393
    iput-object p3, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager$TabInfo;->args:Landroid/os/Bundle;

    .line 394
    return-void
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager$TabInfo;)Landroid/app/Fragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager$TabInfo;->fragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager$TabInfo;->fragment:Landroid/app/Fragment;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager$TabInfo;)Ljava/lang/Class;
    .locals 1
    .parameter "x0"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager$TabInfo;->clss:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager$TabInfo;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager$TabInfo;->args:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager$TabInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager$TabInfo;->tag:Ljava/lang/String;

    return-object v0
.end method
