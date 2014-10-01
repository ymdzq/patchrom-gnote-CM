.class public abstract Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ToggleFeaturePreferenceFragment"
.end annotation


# instance fields
.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field protected mPreferenceKey:Ljava/lang/String;

.field protected mSettingsIntent:Landroid/content/Intent;

.field protected mSettingsTitle:Ljava/lang/CharSequence;

.field protected mSummaryPreference:Landroid/preference/Preference;

.field protected mToggleSwitch:Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 973
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;
    .locals 7
    .parameter "activity"

    .prologue
    const/16 v6, 0x10

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 1058
    new-instance v1, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;

    invoke-direct {v1, p1}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;-><init>(Landroid/content/Context;)V

    .line 1059
    .local v1, toggleSwitch:Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1061
    .local v0, padding:I
    invoke-virtual {v1, v4, v4, v0, v4}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;->setPaddingRelative(IIII)V

    .line 1062
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 1064
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const v4, 0x800015

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 1068
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 990
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 991
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 993
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 994
    new-instance v1, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment$1;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment$1;-><init>(Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    .line 1018
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 1019
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    const v2, 0x7f0400a6

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 1020
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1021
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 1047
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1048
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 1049
    .local v0, menuItem:Landroid/view/MenuItem;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1050
    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1051
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1035
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 1036
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 1037
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1039
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v0, v2}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 1040
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onDestroyView()V

    .line 1041
    return-void
.end method

.method protected onInstallActionBarToggleSwitch()V
    .locals 1

    .prologue
    .line 1054
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;

    .line 1055
    return-void
.end method

.method protected onProcessArguments(Landroid/os/Bundle;)V
    .locals 5
    .parameter "arguments"

    .prologue
    .line 1073
    const-string v4, "preference_key"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    .line 1075
    const-string v4, "checked"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1076
    .local v1, enabled:Z
    iget-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v4, v1}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 1078
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 1079
    .local v0, activity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1080
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    .line 1081
    const-string v4, "title"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1082
    .local v3, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1085
    .end local v3           #title:Ljava/lang/String;
    :cond_1
    const-string v4, "summary"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1086
    .local v2, summary:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1087
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 1025
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1026
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onInstallActionBarToggleSwitch()V

    .line 1027
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onProcessArguments(Landroid/os/Bundle;)V

    .line 1028
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1029
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 1030
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 1031
    return-void
.end method
