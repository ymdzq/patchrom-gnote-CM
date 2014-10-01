.class Lcom/android/OriginalSettings/profiles/ProfilesSettings$3;
.super Ljava/lang/Object;
.source "ProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/profiles/ProfilesSettings;->resetAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/profiles/ProfilesSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/profiles/ProfilesSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings$3;->this$0:Lcom/android/OriginalSettings/profiles/ProfilesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings$3;->this$0:Lcom/android/OriginalSettings/profiles/ProfilesSettings;

    #getter for: Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mProfileManager:Landroid/app/ProfileManager;
    invoke-static {v0}, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->access$100(Lcom/android/OriginalSettings/profiles/ProfilesSettings;)Landroid/app/ProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProfileManager;->resetAll()V

    .line 326
    iget-object v0, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings$3;->this$0:Lcom/android/OriginalSettings/profiles/ProfilesSettings;

    iget-object v0, v0, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->mTabManager:Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager;

    invoke-static {}, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->access$200()Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/profiles/ProfilesSettings$TabManager;->refreshTab(Ljava/lang/String;)V

    .line 327
    return-void
.end method
