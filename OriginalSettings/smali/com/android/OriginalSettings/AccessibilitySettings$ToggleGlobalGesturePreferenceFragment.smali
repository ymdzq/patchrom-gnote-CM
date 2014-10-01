.class public Lcom/android/OriginalSettings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment;
.super Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToggleGlobalGesturePreferenceFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 950
    invoke-direct {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected onInstallActionBarToggleSwitch()V
    .locals 2

    .prologue
    .line 960
    invoke-super {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onInstallActionBarToggleSwitch()V

    .line 961
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment;->mToggleSwitch:Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;

    new-instance v1, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment$1;-><init>(Lcom/android/OriginalSettings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 970
    return-void
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 3
    .parameter "preferenceKey"
    .parameter "enabled"

    .prologue
    .line 954
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleGlobalGesturePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_accessibility_global_gesture_enabled"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 956
    return-void

    .line 954
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
