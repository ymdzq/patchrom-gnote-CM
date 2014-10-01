.class Lcom/android/OriginalSettings/profiles/ProfilesSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ProfilesSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/profiles/ProfilesSettings;-><init>()V
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
    .line 88
    iput-object p1, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings$1;->this$0:Lcom/android/OriginalSettings/profiles/ProfilesSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/OriginalSettings/profiles/ProfilesSettings$1;->this$0:Lcom/android/OriginalSettings/profiles/ProfilesSettings;

    #calls: Lcom/android/OriginalSettings/profiles/ProfilesSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, p1, p2}, Lcom/android/OriginalSettings/profiles/ProfilesSettings;->access$000(Lcom/android/OriginalSettings/profiles/ProfilesSettings;Landroid/content/Context;Landroid/content/Intent;)V

    .line 92
    return-void
.end method
