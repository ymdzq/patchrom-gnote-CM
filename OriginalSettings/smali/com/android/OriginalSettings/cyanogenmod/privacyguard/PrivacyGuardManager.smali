.class public Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;
.super Landroid/app/Fragment;
.source "PrivacyGuardManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$HelpDialogFragment;,
        Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;
    }
.end annotation


# static fields
.field private static final PERMISSION_FILTER:[Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;

.field private mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppsList:Landroid/widget/ListView;

.field private mNoUserAppsInstalled:Landroid/widget/TextView;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 73
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.browser.permission.READ_HISTORY_BOOKMARKS"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.android.browser.permission.WRITE_HISTORY_BOOKMARKS"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android.permission.READ_CALENDAR"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.permission.WRITE_CALENDAR"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.permission.READ_CONTACTS"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "android.permission.WRITE_CONTACTS"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "android.permission.READ_CALL_LOG"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "android.permission.WRITE_CALL_LOG"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.android.voicemail.permission.READ_WRITE_ALL_VOICEMAIL"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "android.permission.READ_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "android.permission.RECEIVE_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "android.permission.SEND_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "android.permission.WRITE_SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "android.permission.BROADCAST_SMS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->PERMISSION_FILTER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 287
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private filterAppPermissions([Ljava/lang/String;)Z
    .locals 9
    .parameter "requestedPermissions"

    .prologue
    .line 269
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v7, v0, v4

    .line 270
    .local v7, requested:Ljava/lang/String;
    sget-object v1, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->PERMISSION_FILTER:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_1
    if-ge v3, v6, :cond_1

    aget-object v2, v1, v3

    .line 271
    .local v2, filtered:Ljava/lang/String;
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 272
    const/4 v8, 0x1

    .line 276
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #filtered:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v7           #requested:Ljava/lang/String;
    :goto_2
    return v8

    .line 270
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #filtered:Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v6       #len$:I
    .restart local v7       #requested:Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 269
    .end local v2           #filtered:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_0

    .line 276
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #requested:Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private loadApps()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 143
    invoke-direct {p0}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->loadInstalledApps()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    .line 147
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->shouldFilterByPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mNoUserAppsInstalled:Landroid/widget/TextView;

    const v1, 0x7f080324

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 153
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mNoUserAppsInstalled:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 161
    :goto_1
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mNoUserAppsInstalled:Landroid/widget/TextView;

    const v1, 0x7f080323

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mNoUserAppsInstalled:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 158
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;

    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mAdapter:Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;

    .line 159
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mAdapter:Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1
.end method

.method private loadInstalledApps()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v2, apps:Ljava/util/List;,"Ljava/util/List<Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;>;"
    iget-object v12, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mPm:Landroid/content/pm/PackageManager;

    const/16 v13, 0x1040

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v7

    .line 213
    .local v7, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-direct {p0}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->shouldShowSystemApps()Z

    move-result v10

    .line 214
    .local v10, showSystemApps:Z
    invoke-direct {p0}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->shouldFilterByPermission()Z

    move-result v4

    .line 218
    .local v4, filterByPermission:Z
    :try_start_0
    iget-object v12, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mPm:Landroid/content/pm/PackageManager;

    const-string v13, "android"

    const/16 v14, 0x40

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 219
    .local v11, sysInfo:Landroid/content/pm/PackageInfo;
    iget-object v12, v11, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v13, 0x0

    aget-object v8, v12, v13
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v11           #sysInfo:Landroid/content/pm/PackageInfo;
    .local v8, platformCert:Landroid/content/pm/Signature;
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 225
    .local v6, info:Landroid/content/pm/PackageInfo;
    iget-object v1, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 229
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v8, :cond_1

    iget-object v12, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v12, :cond_1

    iget-object v12, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v8, v12}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 235
    :cond_1
    if-nez v10, :cond_2

    iget v12, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_0

    .line 239
    :cond_2
    if-eqz v4, :cond_3

    .line 240
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 241
    .local v9, requestedPermissions:[Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->filterAppPermissions([Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 246
    .end local v9           #requestedPermissions:[Ljava/lang/String;
    :cond_3
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;

    invoke-direct {v0}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;-><init>()V

    .line 247
    .local v0, app:Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;
    iget-object v12, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;->title:Ljava/lang/String;

    .line 248
    iget-object v12, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v12, v0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;->packageName:Ljava/lang/String;

    .line 249
    iget-boolean v12, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iput-boolean v12, v0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;->enabled:Z

    .line 250
    iget-object v12, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mPm:Landroid/content/pm/PackageManager;

    iget-object v13, v0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->getPrivacyGuardSetting(Ljava/lang/String;)Z

    move-result v12

    iput-boolean v12, v0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;->privacyGuardEnabled:Z

    .line 251
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 220
    .end local v0           #app:Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;
    .end local v1           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #info:Landroid/content/pm/PackageInfo;
    .end local v8           #platformCert:Landroid/content/pm/Signature;
    :catch_0
    move-exception v3

    .line 221
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v8, 0x0

    .restart local v8       #platformCert:Landroid/content/pm/Signature;
    goto :goto_0

    .line 255
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_4
    new-instance v12, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$1;

    invoke-direct {v12, p0}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$1;-><init>(Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;)V

    invoke-static {v2, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 265
    return-object v2
.end method

.method private resetPrivacyGuard()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 164
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;

    .line 169
    .local v0, app:Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;
    iget-boolean v2, v0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;->privacyGuardEnabled:Z

    if-eqz v2, :cond_2

    .line 170
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, v0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->setPrivacyGuardSetting(Ljava/lang/String;Z)V

    .line 171
    iput-boolean v4, v0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;->privacyGuardEnabled:Z

    goto :goto_1

    .line 174
    .end local v0           #app:Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;
    :cond_3
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mAdapter:Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private shouldFilterByPermission()Z
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "filter_by_permission"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private shouldShowSystemApps()Z
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "show_system_apps"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private showHelp()V
    .locals 3

    .prologue
    .line 309
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$HelpDialogFragment;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$HelpDialogFragment;-><init>(Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$1;)V

    .line 310
    .local v0, fragment:Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$HelpDialogFragment;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "help_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$HelpDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 311
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 125
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0d0037

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mNoUserAppsInstalled:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0d0142

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    .line 128
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mAppsList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    const-string v1, "privacy_guard_manager"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mPreferences:Landroid/content/SharedPreferences;

    .line 133
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "first_help_shown"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->showHelp()V

    .line 138
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->loadApps()V

    .line 139
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->setHasOptionsMenu(Z)V

    .line 140
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 315
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 316
    const v0, 0x7f100006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 317
    const v0, 0x7f0d0275

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->shouldShowSystemApps()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 318
    const v0, 0x7f0d0274

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->shouldFilterByPermission()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 319
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    .line 106
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mPm:Landroid/content/pm/PackageManager;

    .line 108
    const v0, 0x7f04008a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 114
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 115
    .local v1, fm:Landroid/app/FragmentManager;
    const v2, 0x7f0d0141

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 116
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 119
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;

    .line 182
    .local v0, app:Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;
    iget-boolean v1, v0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;->privacyGuardEnabled:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;->privacyGuardEnabled:Z

    .line 183
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, v0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;->packageName:Ljava/lang/String;

    iget-boolean v3, v0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;->privacyGuardEnabled:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->setPrivacyGuardSetting(Ljava/lang/String;Z)V

    .line 185
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mAdapter:Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;->notifyDataSetChanged()V

    .line 186
    return-void

    .line 182
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;

    .line 194
    .local v0, app:Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "PrivacyGuardManager"

    const-string v3, "Couldn\'t open app details activity"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 323
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 341
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 325
    :pswitch_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->showHelp()V

    goto :goto_0

    .line 328
    :pswitch_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->resetPrivacyGuard()V

    goto :goto_0

    .line 332
    :pswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v3, 0x7f0d0274

    if-ne v1, v3, :cond_0

    const-string v0, "filter_by_permission"

    .line 336
    .local v0, prefName:Ljava/lang/String;
    :goto_1
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_2
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 337
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v3

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 338
    invoke-direct {p0}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->loadApps()V

    goto :goto_0

    .line 332
    .end local v0           #prefName:Ljava/lang/String;
    :cond_0
    const-string v0, "show_system_apps"

    goto :goto_1

    .line 336
    .restart local v0       #prefName:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 323
    :pswitch_data_0
    .packed-switch 0x7f0d0272
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 347
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 349
    invoke-direct {p0}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager;->loadApps()V

    .line 350
    return-void
.end method
