.class public Lcom/cyanogenmod/settings/device/CABC;
.super Landroid/preference/CheckBoxPreference;
.source "CABC.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-virtual {p0, p0}, Lcom/cyanogenmod/settings/device/CABC;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 32
    return-void
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 37
    const-string v0, "/sys/class/lcd/panel/power_reduce"

    invoke-static {v0}, Lcom/cyanogenmod/settings/device/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 45
    invoke-static {}, Lcom/cyanogenmod/settings/device/CABC;->isSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 50
    .local v0, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v2, "/sys/class/lcd/panel/power_reduce"

    const-string v1, "cabc"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1"

    :goto_1
    invoke-static {v2, v1}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "0"

    goto :goto_1
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 54
    const-string v1, "/sys/class/lcd/panel/power_reduce"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v0}, Lcom/cyanogenmod/settings/device/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x1

    return v0

    .line 54
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method
