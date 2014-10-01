.class Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$3;
.super Ljava/lang/Object;
.source "ApplicationLightPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->showTestDialog(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$3;->this$0:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    iput-object p2, p0, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$3;->this$0:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    #getter for: Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->mReceiver:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$ScreenReceiver;
    invoke-static {v0}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->access$600(Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;)Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$ScreenReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$3;->this$0:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    #getter for: Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->mReceiver:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$ScreenReceiver;
    invoke-static {v1}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->access$600(Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;)Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$ScreenReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 214
    iget-object v0, p0, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$3;->this$0:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    const/4 v1, 0x0

    #setter for: Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->mReceiver:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$ScreenReceiver;
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->access$602(Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$ScreenReceiver;)Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$ScreenReceiver;

    .line 216
    :cond_0
    return-void
.end method
