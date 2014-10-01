.class public Lcom/android/OriginalSettings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;
.super Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToggleScreenMagnificationPreferenceFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 927
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected onInstallActionBarToggleSwitch()V
    .locals 2

    .prologue
    .line 937
    invoke-super {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onInstallActionBarToggleSwitch()V

    .line 938
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->mToggleSwitch:Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;

    new-instance v1, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$1;-><init>(Lcom/android/OriginalSettings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 947
    return-void
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 3
    .parameter "preferenceKey"
    .parameter "enabled"

    .prologue
    .line 931
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_magnification_enabled"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 933
    return-void

    .line 931
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
