.class Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$1;
.super Lcom/android/OriginalSettings/AccessibilitySettings$SettingsContentObserver;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 736
    iput-object p1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$1;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/AccessibilitySettings$SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 739
    iget-object v2, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$1;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 741
    .local v1, settingValue:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$1;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    #getter for: Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mComponentName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->access$500(Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 742
    .local v0, enabled:Z
    iget-object v2, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$1;->this$0:Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    iget-object v2, v2, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v2, v0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 743
    return-void
.end method
