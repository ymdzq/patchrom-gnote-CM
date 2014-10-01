.class public Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Lcom/android/OriginalSettings/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;
    }
.end annotation


# instance fields
.field private mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mHelpUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 192
    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/SettingsPreferenceFragment;)Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/OriginalSettings/SettingsPreferenceFragment;Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object p1
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 300
    return-void
.end method

.method public final finishFragment()V
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 106
    return-void
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/ButtonBarHandler;

    invoke-interface {v0}, Lcom/android/OriginalSettings/ButtonBarHandler;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected hasNextButton()Z
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/ButtonBarHandler;

    invoke-interface {v0}, Lcom/android/OriginalSettings/ButtonBarHandler;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 72
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->setHasOptionsMenu(Z)V

    .line 75
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getHelpResource()I

    move-result v0

    .line 64
    .local v0, helpResource:I
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    .line 67
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "dialogId"

    .prologue
    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    .line 94
    iget-object v1, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 95
    const/16 v1, 0x65

    const v2, 0x7f0809ef

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 96
    .local v0, helpItem:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/android/OriginalSettings/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z

    .line 98
    .end local v0           #helpItem:Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 139
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDetach()V

    .line 140
    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method protected removeDialog(I)V
    .locals 1
    .parameter "dialogId"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 163
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 164
    return-void
.end method

.method protected removePreference(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 79
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 82
    :cond_0
    return-void
.end method

.method public removePreferenceIfPackageNotInstalled(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->removePreferenceIfPackageNotInstalled(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;)Z

    move-result v0

    return v0
.end method

.method public removePreferenceIfPackageNotInstalled(Landroid/preference/Preference;Landroid/preference/PreferenceGroup;)Z
    .locals 12
    .parameter "preference"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 322
    move-object v7, p1

    check-cast v7, Landroid/preference/PreferenceScreen;

    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, intentUri:Ljava/lang/String;
    const-string v7, "component=([^/]+)/"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 324
    .local v5, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 326
    .local v3, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 327
    .local v4, packageName:Ljava/lang/String;
    :goto_0
    const/4 v0, 0x1

    .line 329
    .local v0, available:Z
    if-eqz v4, :cond_0

    .line 331
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v7, v4, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 332
    .local v6, pi:Landroid/content/pm/PackageInfo;
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v7, v7, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v7, :cond_0

    .line 333
    const-string v7, "SettingsPreferenceFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " disabled, hiding preference."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    const/4 v0, 0x0

    .line 342
    .end local v6           #pi:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_1
    if-nez v0, :cond_2

    .line 343
    invoke-virtual {p2, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move v7, v8

    .line 347
    :goto_2
    return v7

    .line 326
    .end local v0           #available:Z
    .end local v4           #packageName:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 336
    .restart local v0       #available:Z
    .restart local v4       #packageName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 337
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "SettingsPreferenceFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " not installed, hiding preference."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v0, 0x0

    goto :goto_1

    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    move v7, v9

    .line 347
    goto :goto_2
.end method

.method protected setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    #setter for: Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->access$102(Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;

    .line 186
    :cond_0
    return-void
.end method

.method protected showDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 146
    const-string v0, "SettingsPreferenceFragment"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    new-instance v0, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/OriginalSettings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 149
    iget-object v0, p0, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->mDialogFragment:Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 7
    .parameter "caller"
    .parameter "fragmentClass"
    .parameter "requestCode"
    .parameter "extras"

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 306
    .local v0, preferenceActivity:Landroid/preference/PreferenceActivity;
    const v3, 0x7f08045f

    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p4

    move-object v5, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 308
    const/4 v1, 0x1

    .line 313
    .end local v0           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :goto_0
    return v1

    .line 310
    :cond_0
    const-string v1, "SettingsPreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parent isn\'t PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", requestCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v1, 0x0

    goto :goto_0
.end method
