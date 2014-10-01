.class public Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "PerformanceSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private alertDialog:Landroid/app/AlertDialog;

.field private mUse16bppAlphaPref:Landroid/preference/CheckBoxPreference;

.field private mUseDitheringPref:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 60
    const v3, 0x7f050023

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->addPreferencesFromResource(I)V

    .line 62
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 64
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v3, "persist.sys.use_dithering"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, useDithering:Ljava/lang/String;
    const-string v3, "pref_use_dithering"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->mUseDitheringPref:Landroid/preference/ListPreference;

    .line 66
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->mUseDitheringPref:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 67
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->mUseDitheringPref:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 68
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->mUseDitheringPref:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->mUseDitheringPref:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 70
    const-string v3, "pref_use_16bpp_alpha"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->mUse16bppAlphaPref:Landroid/preference/CheckBoxPreference;

    .line 71
    const-string v3, "persist.sys.use_16bpp_alpha"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, use16bppAlpha:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->mUse16bppAlphaPref:Landroid/preference/CheckBoxPreference;

    const-string v4, "1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 75
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->alertDialog:Landroid/app/AlertDialog;

    .line 76
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->alertDialog:Landroid/app/AlertDialog;

    const v4, 0x7f08013b

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 77
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08013c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->alertDialog:Landroid/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings$1;

    invoke-direct {v6, p0}, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings$1;-><init>(Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;)V

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 85
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->alertDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings$2;

    invoke-direct {v4, p0}, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings$2;-><init>(Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 90
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 92
    .end local v0           #prefSet:Landroid/preference/PreferenceScreen;
    .end local v1           #use16bppAlpha:Ljava/lang/String;
    .end local v2           #useDithering:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 108
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->mUseDitheringPref:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_0

    move-object v1, p2

    .line 109
    check-cast v1, Ljava/lang/String;

    .line 110
    .local v1, newVal:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->mUseDitheringPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 111
    .local v0, index:I
    const-string v2, "persist.sys.use_dithering"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->mUseDitheringPref:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->mUseDitheringPref:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 114
    .end local v0           #index:I
    .end local v1           #newVal:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->mUse16bppAlphaPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 97
    const-string v1, "persist.sys.use_16bpp_alpha"

    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/PerformanceSettings;->mUse16bppAlphaPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 97
    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 101
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method
