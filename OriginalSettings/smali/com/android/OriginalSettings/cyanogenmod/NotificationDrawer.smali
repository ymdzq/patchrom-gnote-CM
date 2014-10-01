.class public Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "NotificationDrawer.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder;,
        Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetChooser;
    }
.end annotation


# instance fields
.field private mCollapseOnDismiss:Landroid/preference/ListPreference;

.field private mPowerWidget:Landroid/preference/CheckBoxPreference;

.field private mPowerWidgetHapticFeedback:Landroid/preference/ListPreference;

.field private mPowerWidgetHideOnChange:Landroid/preference/CheckBoxPreference;

.field private mPowerWidgetHideScrollBar:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 443
    return-void
.end method

.method private updateCollapseBehaviourSummary(I)V
    .locals 3
    .parameter "setting"

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0090

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, summaries:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;->mCollapseOnDismiss:Landroid/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 122
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 77
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 80
    const v3, 0x7f050021

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;->addPreferencesFromResource(I)V

    .line 82
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 83
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 85
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v3, "status_bar_collapse_on_dismiss"

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 88
    .local v0, collapseBehaviour:I
    const-string v3, "notification_drawer_collapse_on_dismiss"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;->mCollapseOnDismiss:Landroid/preference/ListPreference;

    .line 89
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;->mCollapseOnDismiss:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 90
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;->mCollapseOnDismiss:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 91
    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;->updateCollapseBehaviourSummary(I)V

    .line 93
    const-string v3, "expanded_widget"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;->mPowerWidget:Landroid/preference/CheckBoxPreference;

    .line 94
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;->mPowerWidget:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    const-string v3, "expanded_hide_onchange"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;->mPowerWidgetHideOnChange:Landroid/preference/CheckBoxPreference;

    .line 97
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;->mPowerWidgetHideOnChange:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 98
    const-string v3, "expanded_hide_scrollbar"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;->mPowerWidgetHideScrollBar:Landroid/preference/CheckBoxPreference;

    .line 100
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;->mPowerWidgetHideScrollBar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 102
    const-string v3, "expanded_haptic_feedback"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;->mPowerWidgetHapticFeedback:Landroid/preference/ListPreference;

    .line 104
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;->mPowerWidgetHapticFeedback:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 105
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;->mPowerWidgetHapticFeedback:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;->mPowerWidgetHapticFeedback:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;->mPowerWidget:Landroid/preference/CheckBoxPreference;

    const-string v3, "expanded_view_widget"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 109
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;->mPowerWidgetHideOnChange:Landroid/preference/CheckBoxPreference;

    const-string v3, "expanded_hide_onchange"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 111
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;->mPowerWidgetHideScrollBar:Landroid/preference/CheckBoxPreference;

    const-string v6, "expanded_hide_scrollbar"

    invoke-static {v2, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_3

    :goto_2
    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 113
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;->mPowerWidgetHapticFeedback:Landroid/preference/ListPreference;

    const-string v4, "expanded_haptic_feedback"

    invoke-static {v2, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 116
    .end local v0           #collapseBehaviour:I
    .end local v1           #prefSet:Landroid/preference/PreferenceScreen;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :cond_0
    return-void

    .restart local v0       #collapseBehaviour:I
    .restart local v1       #prefSet:Landroid/preference/PreferenceScreen;
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    :cond_1
    move v3, v5

    .line 107
    goto :goto_0

    :cond_2
    move v3, v5

    .line 109
    goto :goto_1

    :cond_3
    move v4, v5

    .line 111
    goto :goto_2
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 126
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 128
    .local v2, resolver:Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;->mCollapseOnDismiss:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_0

    .line 129
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 130
    .local v3, value:I
    const-string v4, "status_bar_collapse_on_dismiss"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    invoke-direct {p0, v3}, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;->updateCollapseBehaviourSummary(I)V

    .line 158
    .end local v3           #value:I
    :goto_0
    return v5

    .line 134
    .restart local p2
    :cond_0
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;->mPowerWidget:Landroid/preference/CheckBoxPreference;

    if-ne p1, v6, :cond_2

    .line 135
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 136
    .local v3, value:Z
    const-string v6, "expanded_view_widget"

    if-eqz v3, :cond_1

    move v4, v5

    :cond_1
    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 139
    .end local v3           #value:Z
    .restart local p2
    :cond_2
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;->mPowerWidgetHideOnChange:Landroid/preference/CheckBoxPreference;

    if-ne p1, v6, :cond_4

    .line 140
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 141
    .restart local v3       #value:Z
    const-string v6, "expanded_hide_onchange"

    if-eqz v3, :cond_3

    move v4, v5

    :cond_3
    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 144
    .end local v3           #value:Z
    .restart local p2
    :cond_4
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;->mPowerWidgetHideScrollBar:Landroid/preference/CheckBoxPreference;

    if-ne p1, v6, :cond_6

    .line 145
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 146
    .restart local v3       #value:Z
    const-string v6, "expanded_hide_scrollbar"

    if-eqz v3, :cond_5

    move v4, v5

    :cond_5
    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 149
    .end local v3           #value:Z
    .restart local p2
    :cond_6
    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;->mPowerWidgetHapticFeedback:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_7

    move-object v4, p2

    .line 150
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 151
    .local v1, intValue:I
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;->mPowerWidgetHapticFeedback:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v4, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 152
    .local v0, index:I
    const-string v4, "expanded_haptic_feedback"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 154
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;->mPowerWidgetHapticFeedback:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;->mPowerWidgetHapticFeedback:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v0           #index:I
    .end local v1           #intValue:I
    .restart local p2
    :cond_7
    move v5, v4

    .line 158
    goto :goto_0
.end method
