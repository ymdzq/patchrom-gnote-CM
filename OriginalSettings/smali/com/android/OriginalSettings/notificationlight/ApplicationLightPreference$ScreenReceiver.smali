.class public Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationLightPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenReceiver"
.end annotation


# instance fields
.field protected color:I

.field final synthetic this$0:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

.field protected timeoff:I

.field protected timeon:I


# direct methods
.method public constructor <init>(Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;III)V
    .locals 0
    .parameter
    .parameter "color"
    .parameter "timeon"
    .parameter "timeoff"

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$ScreenReceiver;->this$0:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 289
    iput p3, p0, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$ScreenReceiver;->timeon:I

    .line 290
    iput p4, p0, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$ScreenReceiver;->timeoff:I

    .line 291
    iput p2, p0, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$ScreenReceiver;->color:I

    .line 292
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 296
    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 299
    .local v2, nm:Landroid/app/NotificationManager;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 300
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 301
    .local v0, builder:Landroid/app/Notification$Builder;
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 302
    iget v3, p0, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$ScreenReceiver;->color:I

    iget v4, p0, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$ScreenReceiver;->timeon:I

    iget v5, p0, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$ScreenReceiver;->timeoff:I

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 303
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 304
    .local v1, n:Landroid/app/Notification;
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 305
    invoke-virtual {v2, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 313
    .end local v0           #builder:Landroid/app/Notification$Builder;
    .end local v1           #n:Landroid/app/Notification;
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 307
    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 308
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$ScreenReceiver;->this$0:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    #getter for: Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->mReceiver:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$ScreenReceiver;
    invoke-static {v4}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->access$600(Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;)Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$ScreenReceiver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 309
    iget-object v3, p0, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$ScreenReceiver;->this$0:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    #setter for: Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->mReceiver:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$ScreenReceiver;
    invoke-static {v3, v5}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->access$602(Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$ScreenReceiver;)Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$ScreenReceiver;

    .line 310
    iget-object v3, p0, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$ScreenReceiver;->this$0:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    #getter for: Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->mTestDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->access$700(Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 311
    iget-object v3, p0, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference$ScreenReceiver;->this$0:Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;

    #setter for: Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->mTestDialog:Landroid/app/AlertDialog;
    invoke-static {v3, v5}, Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;->access$702(Lcom/android/OriginalSettings/notificationlight/ApplicationLightPreference;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0
.end method
