.class Lcom/android/OriginalSettings/AccessibilitySettings$2;
.super Lcom/android/OriginalSettings/AccessibilitySettings$SettingsContentObserver;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/AccessibilitySettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$2;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings;

    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/AccessibilitySettings$SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$2;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings;

    #calls: Lcom/android/OriginalSettings/AccessibilitySettings;->loadInstalledServices()V
    invoke-static {v0}, Lcom/android/OriginalSettings/AccessibilitySettings;->access$100(Lcom/android/OriginalSettings/AccessibilitySettings;)V

    .line 163
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$2;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings;

    #calls: Lcom/android/OriginalSettings/AccessibilitySettings;->updateServicesPreferences()V
    invoke-static {v0}, Lcom/android/OriginalSettings/AccessibilitySettings;->access$200(Lcom/android/OriginalSettings/AccessibilitySettings;)V

    .line 164
    return-void
.end method
