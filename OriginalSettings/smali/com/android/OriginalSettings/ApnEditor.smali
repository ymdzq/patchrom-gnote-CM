.class public Lcom/android/OriginalSettings/ApnEditor;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sNotSet:Ljava/lang/String;

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private mApn:Landroid/preference/EditTextPreference;

.field private mApnType:Landroid/preference/EditTextPreference;

.field private mAuthType:Landroid/preference/ListPreference;

.field private mBearer:Landroid/preference/ListPreference;

.field private mCarrierEnabled:Landroid/preference/CheckBoxPreference;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mFirstTime:Z

.field private mMcc:Landroid/preference/EditTextPreference;

.field private mMmsPort:Landroid/preference/EditTextPreference;

.field private mMmsProxy:Landroid/preference/EditTextPreference;

.field private mMmsc:Landroid/preference/EditTextPreference;

.field private mMnc:Landroid/preference/EditTextPreference;

.field private mName:Landroid/preference/EditTextPreference;

.field private mNewApn:Z

.field private mPassword:Landroid/preference/EditTextPreference;

.field private mPort:Landroid/preference/EditTextPreference;

.field private mProtocol:Landroid/preference/ListPreference;

.field private mProxy:Landroid/preference/EditTextPreference;

.field private mRes:Landroid/content/res/Resources;

.field private mRoamingProtocol:Landroid/preference/ListPreference;

.field private mServer:Landroid/preference/EditTextPreference;

.field private mUri:Landroid/net/Uri;

.field private mUser:Landroid/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const-class v0, Lcom/android/OriginalSettings/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/OriginalSettings/ApnEditor;->TAG:Ljava/lang/String;

    .line 102
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "authtype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "carrier_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bearer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "roaming_protocol"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/OriginalSettings/ApnEditor;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/ApnEditor;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/OriginalSettings/ApnEditor;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method private bearerDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "raw"

    .prologue
    const/4 v3, 0x0

    .line 344
    iget-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v4, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 345
    .local v1, mBearerIndex:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 352
    :goto_0
    return-object v3

    .line 348
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0c002c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, values:[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 586
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/OriginalSettings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    :cond_0
    const-string p1, ""

    .line 589
    .end local p1
    :cond_1
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 578
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 579
    :cond_0
    sget-object p1, Lcom/android/OriginalSettings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 581
    .end local p1
    :cond_1
    return-object p1
.end method

.method private deleteApn()V
    .locals 3

    .prologue
    .line 552
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08031a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080012

    new-instance v2, Lcom/android/OriginalSettings/ApnEditor$1;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/ApnEditor$1;-><init>(Lcom/android/OriginalSettings/ApnEditor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080418

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 563
    return-void
.end method

.method private fillUi()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 246
    iget-boolean v8, p0, Lcom/android/OriginalSettings/ApnEditor;->mFirstTime:Z

    if-eqz v8, :cond_1

    .line 247
    iput-boolean v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mFirstTime:Z

    .line 249
    iget-object v8, p0, Lcom/android/OriginalSettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 250
    iget-object v8, p0, Lcom/android/OriginalSettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 251
    iget-object v8, p0, Lcom/android/OriginalSettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 252
    iget-object v8, p0, Lcom/android/OriginalSettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 253
    iget-object v8, p0, Lcom/android/OriginalSettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x5

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 254
    iget-object v8, p0, Lcom/android/OriginalSettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x6

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 255
    iget-object v8, p0, Lcom/android/OriginalSettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x7

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 256
    iget-object v8, p0, Lcom/android/OriginalSettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xc

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 257
    iget-object v8, p0, Lcom/android/OriginalSettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xd

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 258
    iget-object v8, p0, Lcom/android/OriginalSettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x8

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 259
    iget-object v8, p0, Lcom/android/OriginalSettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x9

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 260
    iget-object v8, p0, Lcom/android/OriginalSettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xa

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 261
    iget-object v8, p0, Lcom/android/OriginalSettings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xf

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 262
    iget-boolean v8, p0, Lcom/android/OriginalSettings/ApnEditor;->mNewApn:Z

    if-eqz v8, :cond_0

    .line 263
    const-string v8, "gsm.sim.operator.numeric"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 266
    .local v4, numeric:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v12, :cond_0

    .line 268
    invoke-virtual {v4, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, mcc:Ljava/lang/String;
    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, mnc:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/OriginalSettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 273
    iget-object v8, p0, Lcom/android/OriginalSettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 274
    iput-object v3, p0, Lcom/android/OriginalSettings/ApnEditor;->mCurMnc:Ljava/lang/String;

    .line 275
    iput-object v2, p0, Lcom/android/OriginalSettings/ApnEditor;->mCurMcc:Ljava/lang/String;

    .line 278
    .end local v2           #mcc:Ljava/lang/String;
    .end local v3           #mnc:Ljava/lang/String;
    .end local v4           #numeric:Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0xe

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 279
    .local v0, authVal:I
    const/4 v8, -0x1

    if-eq v0, v8, :cond_2

    .line 280
    iget-object v8, p0, Lcom/android/OriginalSettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 285
    :goto_0
    iget-object v8, p0, Lcom/android/OriginalSettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 286
    iget-object v8, p0, Lcom/android/OriginalSettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x13

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 287
    iget-object v8, p0, Lcom/android/OriginalSettings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x11

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v9, v6, :cond_3

    :goto_1
    invoke-virtual {v8, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 288
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v8, 0x12

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 291
    .end local v0           #authVal:I
    :cond_1
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, authVal:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 307
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 308
    .local v1, authValIndex:I
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v6, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 310
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0c0028

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 311
    .local v5, values:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v7, v5, v1

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 316
    .end local v1           #authValIndex:I
    .end local v5           #values:[Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/OriginalSettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v7, v8}, Lcom/android/OriginalSettings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/OriginalSettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v7, v8}, Lcom/android/OriginalSettings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 322
    return-void

    .line 282
    .local v0, authVal:I
    :cond_2
    iget-object v8, p0, Lcom/android/OriginalSettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move v6, v7

    .line 287
    goto/16 :goto_1

    .line 313
    .local v0, authVal:Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    sget-object v7, Lcom/android/OriginalSettings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 515
    const/4 v1, 0x0

    .line 517
    .local v1, errorMsg:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/OriginalSettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 518
    .local v4, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/OriginalSettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, apn:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/OriginalSettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 520
    .local v2, mcc:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/OriginalSettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 522
    .local v3, mnc:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_1

    .line 523
    iget-object v5, p0, Lcom/android/OriginalSettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f080677

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 532
    :cond_0
    :goto_0
    return-object v1

    .line 524
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_2

    .line 525
    iget-object v5, p0, Lcom/android/OriginalSettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f080678

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 526
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    .line 527
    iget-object v5, p0, Lcom/android/OriginalSettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f080679

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 528
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const v6, 0xfffe

    and-int/2addr v5, v6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 529
    iget-object v5, p0, Lcom/android/OriginalSettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f08067a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;
    .locals 6
    .parameter "raw"
    .parameter "protocol"

    .prologue
    const/4 v3, 0x0

    .line 330
    invoke-virtual {p2, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 331
    .local v1, protocolIndex:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 338
    :goto_0
    return-object v3

    .line 334
    :cond_0
    iget-object v4, p0, Lcom/android/OriginalSettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0c002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, values:[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 566
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 567
    :cond_0
    sget-object v2, Lcom/android/OriginalSettings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 573
    :goto_0
    return-object v2

    .line 569
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 570
    .local v1, password:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 571
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 573
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private validateAndSave(Z)Z
    .locals 12
    .parameter "force"

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 445
    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 446
    .local v5, name:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, apn:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 448
    .local v3, mcc:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 450
    .local v4, mnc:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/OriginalSettings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    if-nez p1, :cond_0

    .line 451
    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/ApnEditor;->showDialog(I)V

    .line 511
    .end local v5           #name:Ljava/lang/String;
    :goto_0
    return v7

    .line 455
    .restart local v5       #name:Ljava/lang/String;
    :cond_0
    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-nez v9, :cond_1

    .line 456
    sget-object v8, Lcom/android/OriginalSettings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v9, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 462
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mNewApn:Z

    if-eqz v9, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v8, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v8, :cond_2

    .line 463
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9, v11, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 467
    :cond_2
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 471
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "name"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v8, :cond_3

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0808d0

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .end local v5           #name:Ljava/lang/String;
    :cond_3
    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v7, "apn"

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v7, "proxy"

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v7, "port"

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v7, "mmsproxy"

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v7, "mmsport"

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v7, "user"

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v7, "server"

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v7, "password"

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v7, "mmsc"

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 484
    .local v1, authVal:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 485
    const-string v7, "authtype"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 488
    :cond_4
    const-string v7, "protocol"

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string v7, "roaming_protocol"

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v7, "type"

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/OriginalSettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string v7, "mcc"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v7, "mnc"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v7, "numeric"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 499
    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 500
    const-string v7, "current"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 504
    :cond_5
    iget-object v7, p0, Lcom/android/OriginalSettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 505
    .local v2, bearerVal:Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 506
    const-string v7, "bearer"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 509
    :cond_6
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v9, p0, Lcom/android/OriginalSettings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v9, v6, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v7, v8

    .line 511
    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    .line 148
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 150
    const v1, 0x7f050004

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/ApnEditor;->addPreferencesFromResource(I)V

    .line 152
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080659

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/OriginalSettings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 153
    const-string v1, "apn_name"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    .line 154
    const-string v1, "apn_apn"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    .line 155
    const-string v1, "apn_http_proxy"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    .line 156
    const-string v1, "apn_http_port"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    .line 157
    const-string v1, "apn_user"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    .line 158
    const-string v1, "apn_server"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    .line 159
    const-string v1, "apn_password"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    .line 160
    const-string v1, "apn_mms_proxy"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    .line 161
    const-string v1, "apn_mms_port"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    .line 162
    const-string v1, "apn_mmsc"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    .line 163
    const-string v1, "apn_mcc"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    .line 164
    const-string v1, "apn_mnc"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    .line 165
    const-string v1, "apn_type"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    .line 167
    const-string v1, "auth_type"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    .line 168
    iget-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 170
    const-string v1, "apn_protocol"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    .line 171
    iget-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 173
    const-string v1, "apn_roaming_protocol"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    .line 174
    iget-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 176
    const-string v1, "carrier_enabled"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    .line 178
    const-string v1, "bearer"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    .line 179
    iget-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    .line 183
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 184
    .local v9, intent:Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 185
    .local v7, action:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    .line 187
    .local v8, fragArgs:Landroid/os/Bundle;
    if-eqz v8, :cond_1

    const-string v1, "edit_action"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    const-string v1, "edit_data"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 189
    const-string v1, "edit_action"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 194
    :goto_0
    if-nez p1, :cond_2

    move v1, v10

    :goto_1
    iput-boolean v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mFirstTime:Z

    .line 196
    const-string v1, "android.intent.action.INSERT"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 197
    iget-boolean v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mFirstTime:Z

    if-nez v1, :cond_0

    const-string v1, "pos"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/ApnEditor;->mUri:Landroid/net/Uri;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 203
    :goto_2
    iput-boolean v10, p0, Lcom/android/OriginalSettings/ApnEditor;->mNewApn:Z

    .line 207
    iget-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_4

    .line 208
    sget-object v1, Lcom/android/OriginalSettings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to insert new telephony provider into "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->finish()V

    .line 229
    :goto_3
    return-void

    .line 191
    :cond_1
    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mUri:Landroid/net/Uri;

    goto :goto_0

    .line 194
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 200
    :cond_3
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "pos"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mUri:Landroid/net/Uri;

    goto :goto_2

    .line 216
    :cond_4
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v5, p0, Lcom/android/OriginalSettings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 223
    :cond_5
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/ApnEditor;->mUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/OriginalSettings/ApnEditor;->sProjection:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .local v0, qCursor:Landroid/content/CursorLoader;
    invoke-virtual {v0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    .line 225
    iget-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 227
    invoke-direct {p0}, Lcom/android/OriginalSettings/ApnEditor;->fillUi()V

    .line 228
    invoke-virtual {p0, v10}, Lcom/android/OriginalSettings/ApnEditor;->setHasOptionsMenu(Z)V

    goto :goto_3

    .line 218
    .end local v0           #qCursor:Landroid/content/CursorLoader;
    :cond_6
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 219
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->finish()V

    goto :goto_3
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 538
    if-nez p1, :cond_0

    .line 539
    invoke-direct {p0}, Lcom/android/OriginalSettings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 541
    .local v0, msg:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080676

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 548
    .end local v0           #msg:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 397
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 399
    iget-boolean v0, p0, Lcom/android/OriginalSettings/ApnEditor;->mNewApn:Z

    if-nez v0, :cond_0

    .line 400
    const/4 v0, 0x1

    const v1, 0x7f080672

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02006c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 403
    :cond_0
    const/4 v0, 0x2

    const v1, 0x7f080674

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 405
    const/4 v0, 0x3

    const v1, 0x7f080675

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 407
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 411
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 427
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 413
    :pswitch_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/ApnEditor;->deleteApn()V

    goto :goto_0

    .line 416
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/ApnEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->finish()V

    goto :goto_0

    .line 421
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mNewApn:Z

    if-eqz v1, :cond_1

    .line 422
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 424
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->finish()V

    goto :goto_0

    .line 411
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 242
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 243
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v7, 0x0

    .line 358
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 359
    .local v3, key:Ljava/lang/String;
    const-string v6, "auth_type"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 361
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 362
    .local v2, index:I
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v6, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 364
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f0c0028

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 365
    .local v5, values:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v8, v5, v2

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    .end local v2           #index:I
    .end local v5           #values:[Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v6, 0x1

    :goto_1
    return v6

    .line 366
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/NumberFormatException;
    move v6, v7

    .line 367
    goto :goto_1

    .line 369
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_1
    const-string v6, "apn_protocol"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, p2

    .line 370
    check-cast v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/OriginalSettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v6, v8}, Lcom/android/OriginalSettings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v4

    .line 371
    .local v4, protocol:Ljava/lang/String;
    if-nez v4, :cond_2

    move v6, v7

    .line 372
    goto :goto_1

    .line 374
    :cond_2
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 376
    .end local v4           #protocol:Ljava/lang/String;
    .restart local p2
    :cond_3
    const-string v6, "apn_roaming_protocol"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, p2

    .line 377
    check-cast v6, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/OriginalSettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v6, v8}, Lcom/android/OriginalSettings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v4

    .line 378
    .restart local v4       #protocol:Ljava/lang/String;
    if-nez v4, :cond_4

    move v6, v7

    .line 379
    goto :goto_1

    .line 381
    :cond_4
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 383
    .end local v4           #protocol:Ljava/lang/String;
    .restart local p2
    :cond_5
    const-string v6, "bearer"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, p2

    .line 384
    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, bearer:Ljava/lang/String;
    if-nez v0, :cond_6

    move v6, v7

    .line 386
    goto :goto_1

    .line 388
    :cond_6
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v6, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 389
    iget-object v6, p0, Lcom/android/OriginalSettings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v6, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 233
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 234
    invoke-virtual {p0}, Lcom/android/OriginalSettings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 236
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 432
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 433
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    const-string v0, "pos"

    iget-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 436
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 594
    invoke-virtual {p0, p2}, Lcom/android/OriginalSettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 595
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 596
    iget-object v1, p0, Lcom/android/OriginalSettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 597
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
