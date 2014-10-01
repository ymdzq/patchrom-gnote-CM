.class public Lcom/android/OriginalSettings/ApnSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "ApnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/ApnSettings$2;,
        Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/OriginalSettings/ApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field private static final DEFAULTAPN_URI:Landroid/net/Uri;

.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field private static mRestoreDefaultApnMode:Z


# instance fields
.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mRestoreApnProcessHandler:Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/OriginalSettings/ApnSettings$RestoreApnUiHandler;

.field private mRestoreDefaultApnThread:Landroid/os/HandlerThread;

.field private mSelectedKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/OriginalSettings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 79
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/OriginalSettings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 91
    new-instance v0, Lcom/android/OriginalSettings/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/ApnSettings$1;-><init>(Lcom/android/OriginalSettings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 332
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-static {p0}, Lcom/android/OriginalSettings/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreDefaultApnMode:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    sput-boolean p0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/ApnSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/OriginalSettings/ApnSettings;->fillList()V

    return-void
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/OriginalSettings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private addNewApn()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 233
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 234
    const-string v0, "edit_action"

    const-string v1, "android.intent.action.INSERT"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v0, "edit_data"

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/OriginalSettings/ApnEditor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f080658

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 238
    return-void
.end method

.method private fillList()V
    .locals 18

    .prologue
    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numeric=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, where:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "name"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "apn"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "type"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const-string v6, "name ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 166
    .local v9, cursor:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "apn_list"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceGroup;

    .line 167
    .local v8, apnList:Landroid/preference/PreferenceGroup;
    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 169
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v12, mmsApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/OriginalSettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 172
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 173
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_4

    .line 174
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 175
    .local v13, name:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 176
    .local v7, apn:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 177
    .local v11, key:Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 179
    .local v17, type:Ljava/lang/String;
    new-instance v14, Lcom/android/OriginalSettings/ApnPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v14, v1}, Lcom/android/OriginalSettings/ApnPreference;-><init>(Landroid/content/Context;)V

    .line 181
    .local v14, pref:Lcom/android/OriginalSettings/ApnPreference;
    invoke-virtual {v14, v11}, Lcom/android/OriginalSettings/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v14, v13}, Lcom/android/OriginalSettings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {v14, v7}, Lcom/android/OriginalSettings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 184
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Lcom/android/OriginalSettings/ApnPreference;->setPersistent(Z)V

    .line 185
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/OriginalSettings/ApnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 187
    if-eqz v17, :cond_0

    const-string v1, "mms"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/16 v16, 0x1

    .line 188
    .local v16, selectable:Z
    :goto_1
    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/OriginalSettings/ApnPreference;->setSelectable(Z)V

    .line 189
    if-eqz v16, :cond_3

    .line 190
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/OriginalSettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    invoke-virtual {v14}, Lcom/android/OriginalSettings/ApnPreference;->setChecked()V

    .line 193
    :cond_1
    invoke-virtual {v8, v14}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 197
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 187
    .end local v16           #selectable:Z
    :cond_2
    const/16 v16, 0x0

    goto :goto_1

    .line 195
    .restart local v16       #selectable:Z
    :cond_3
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 199
    .end local v7           #apn:Ljava/lang/String;
    .end local v11           #key:Ljava/lang/String;
    .end local v13           #name:Ljava/lang/String;
    .end local v14           #pref:Lcom/android/OriginalSettings/ApnPreference;
    .end local v16           #selectable:Z
    .end local v17           #type:Ljava/lang/String;
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 201
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/preference/Preference;

    .line 202
    .local v15, preference:Landroid/preference/Preference;
    invoke-virtual {v8, v15}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 204
    .end local v15           #preference:Landroid/preference/Preference;
    :cond_5
    return-void
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .parameter

    .prologue
    .line 111
    const-string v0, "state"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 115
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 273
    const/4 v7, 0x0

    .line 275
    .local v7, key:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/OriginalSettings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 277
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 278
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 279
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 281
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 282
    return-object v7
.end method

.method private restoreDefaultApn()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 292
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/ApnSettings;->showDialog(I)V

    .line 293
    sput-boolean v3, Lcom/android/OriginalSettings/ApnSettings;->mRestoreDefaultApnMode:Z

    .line 295
    iget-object v0, p0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/OriginalSettings/ApnSettings$RestoreApnUiHandler;

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Lcom/android/OriginalSettings/ApnSettings$RestoreApnUiHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/OriginalSettings/ApnSettings;Lcom/android/OriginalSettings/ApnSettings$1;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/OriginalSettings/ApnSettings$RestoreApnUiHandler;

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    .line 301
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Restore default APN Handler: Process Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 303
    iget-object v0, p0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 304
    new-instance v0, Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;

    iget-object v1, p0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/OriginalSettings/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/OriginalSettings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v0, v3}, Lcom/android/OriginalSettings/ApnSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    .line 310
    return v3
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 264
    iput-object p1, p0, Lcom/android/OriginalSettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 265
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 267
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 268
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/android/OriginalSettings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    sget-object v2, Lcom/android/OriginalSettings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 270
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/ApnSettings;->addPreferencesFromResource(I)V

    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 126
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/ApnSettings;->setHasOptionsMenu(Z)V

    .line 127
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 355
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 356
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 357
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08067b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 358
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 359
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 360
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 363
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 208
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080673

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v2, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 213
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08067c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 216
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onDestroy()V

    .line 152
    iget-object v0, p0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 155
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 220
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 229
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 222
    :pswitch_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/ApnSettings;->addNewApn()V

    goto :goto_0

    .line 226
    :pswitch_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/ApnSettings;->restoreDefaultApn()Z

    goto :goto_0

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 145
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 146
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 253
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 257
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/OriginalSettings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 260
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 242
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 243
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 244
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 245
    const-string v1, "edit_action"

    const-string v3, "android.intent.action.EDIT"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v1, "edit_data"

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/OriginalSettings/ApnEditor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f080658

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 131
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 133
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/OriginalSettings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    sget-boolean v0, Lcom/android/OriginalSettings/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/android/OriginalSettings/ApnSettings;->fillList()V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/ApnSettings;->showDialog(I)V

    goto :goto_0
.end method

.method protected showDialog(I)V
    .locals 0
    .parameter "dialogId"

    .prologue
    .line 287
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/ApnSettings;->removeDialog(I)V

    .line 288
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->showDialog(I)V

    .line 289
    return-void
.end method
