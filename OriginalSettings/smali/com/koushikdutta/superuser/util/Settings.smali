.class public Lcom/koushikdutta/superuser/util/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyDarkThemeSetting(Landroid/app/Activity;I)V
    .locals 2
    .parameter "activity"
    .parameter "dark"

    .prologue
    .line 364
    const-string v0, "com.koushikdutta.superuser"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/koushikdutta/superuser/util/Settings;->getTheme(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 368
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 370
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static checkPin(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "pin"

    .prologue
    .line 169
    invoke-static {p1}, Lcom/koushikdutta/superuser/util/Settings;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 170
    const-string v1, "pin"

    invoke-static {p0, v1}, Lcom/koushikdutta/superuser/util/Settings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, hashed:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 173
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private static digest(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "value"

    .prologue
    .line 153
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    const/4 p0, 0x0

    .line 160
    .end local p0
    :goto_0
    return-object p0

    .line 156
    .restart local p0
    :cond_0
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 157
    .local v0, digester:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 159
    .end local v0           #digester:Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 160
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static getAutomaticResponse(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 191
    const-string v1, "automatic_response"

    invoke-static {p0, v1, v0}, Lcom/koushikdutta/superuser/util/Settings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 199
    :goto_0
    :pswitch_0
    return v0

    .line 193
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 197
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 93
    :try_start_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/koushikdutta/superuser/util/Settings;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 97
    .end local p2
    :goto_0
    return p2

    .line 95
    .restart local p2
    :catch_0
    move-exception v0

    .line 96
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static final getCheckSuQuietCounter(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 353
    const-string v0, "check_su_quiet"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/koushikdutta/superuser/util/Settings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 67
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/koushikdutta/superuser/util/Settings;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 70
    .end local p2
    :goto_0
    return p2

    .line 69
    .restart local p2
    :catch_0
    move-exception v0

    .line 70
    .local v0, ex:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static getLogging(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 103
    const-string v0, "logging"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/koushikdutta/superuser/util/Settings;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static final getMultiuserMode(Landroid/content/Context;)I
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 259
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-ge v5, v6, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v3

    .line 262
    :cond_1
    invoke-static {p0}, Lcom/koushikdutta/superuser/Helper;->supportsMultipleUsers(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 267
    :try_start_0
    invoke-static {p0}, Lcom/koushikdutta/superuser/Helper;->isAdminUser(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 268
    const-string v3, "multiuser_mode"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 269
    .local v0, file:Ljava/io/File;
    invoke-static {v0}, Lcom/koushikdutta/superuser/util/Settings;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 276
    .end local v0           #file:Ljava/io/File;
    .local v1, mode:Ljava/lang/String;
    :goto_1
    const-string v3, "managed"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 277
    const/4 v3, 0x1

    goto :goto_0

    .line 272
    .end local v1           #mode:Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v5, "su -u"

    invoke-virtual {v3, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 273
    .local v2, p:Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/koushikdutta/superuser/util/Settings;->readToEnd(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #mode:Ljava/lang/String;
    goto :goto_1

    .line 278
    .end local v2           #p:Ljava/lang/Process;
    :cond_3
    const-string v3, "user"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 279
    const/4 v3, 0x2

    goto :goto_0

    .line 280
    :cond_4
    const-string v3, "owner"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    .line 281
    goto :goto_0

    .line 283
    .end local v1           #mode:Ljava/lang/String;
    :catch_0
    move-exception v3

    :cond_5
    move v3, v4

    .line 285
    goto :goto_0
.end method

.method public static getNotificationType(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 126
    const-string v1, "notification"

    invoke-static {p0, v1, v0}, Lcom/koushikdutta/superuser/util/Settings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 134
    :goto_0
    :pswitch_0
    return v0

    .line 128
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getRequestTimeout(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 113
    const-string v0, "timeout"

    const/16 v1, 0x1e

    invoke-static {p0, v0, v1}, Lcom/koushikdutta/superuser/util/Settings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getRequirePermission(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 178
    const-string v0, "require_permission"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/koushikdutta/superuser/util/Settings;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "name"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/koushikdutta/superuser/util/Settings;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 48
    new-instance v1, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 49
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "settings"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "value"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 51
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p2

    .line 55
    .end local p2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 56
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 58
    :goto_0
    return-object p2

    .line 55
    .restart local p2
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 56
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 56
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v1
.end method

.method public static getSuperuserAccess()I
    .locals 6

    .prologue
    const/4 v1, 0x3

    .line 319
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 320
    const-string v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 321
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "persist.sys.root_access"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 322
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 323
    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 334
    :goto_0
    :pswitch_0
    return v0

    .line 333
    :catch_0
    move-exception v0

    move v0, v1

    .line 334
    goto :goto_0

    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final getTheme(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 375
    const-string v0, "theme"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/koushikdutta/superuser/util/Settings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static final isPinProtected(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 144
    const-string v0, "pin"

    invoke-static {p0, v0}, Lcom/koushikdutta/superuser/util/Settings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v0, v2, [B

    .line 214
    .local v0, buffer:[B
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 215
    .local v1, input:Ljava/io/DataInputStream;
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 216
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 217
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method public static readToEnd(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/koushikdutta/superuser/util/Settings;->readToEndAsArray(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static readToEndAsArray(Ljava/io/InputStream;)[B
    .locals 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 234
    .local v1, dis:Ljava/io/DataInputStream;
    const/16 v4, 0x400

    new-array v3, v4, [B

    .line 235
    .local v3, stuff:[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 236
    .local v0, buff:Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 237
    .local v2, read:I
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/DataInputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 239
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 242
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method

.method public static setAutomaticResponse(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "response"

    .prologue
    .line 204
    const-string v0, "automatic_response"

    invoke-static {p0, v0, p1}, Lcom/koushikdutta/superuser/util/Settings;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 205
    return-void
.end method

.method public static setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 88
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/koushikdutta/superuser/util/Settings;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static final setCheckSuQuietCounter(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "counter"

    .prologue
    .line 357
    const-string v0, "check_su_quiet"

    invoke-static {p0, v0, p1}, Lcom/koushikdutta/superuser/util/Settings;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 358
    return-void
.end method

.method public static setInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 62
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/koushikdutta/superuser/util/Settings;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static setLogging(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "logging"

    .prologue
    .line 107
    const-string v0, "logging"

    invoke-static {p0, v0, p1}, Lcom/koushikdutta/superuser/util/Settings;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 108
    return-void
.end method

.method public static setMultiuserMode(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 289
    invoke-static {p0}, Lcom/koushikdutta/superuser/Helper;->isAdminUser(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    :goto_0
    return-void

    .line 292
    :cond_0
    :try_start_0
    const-string v1, "multiuser_mode"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 293
    .local v0, file:Ljava/io/File;
    packed-switch p1, :pswitch_data_0

    .line 304
    const-string v1, "owner"

    invoke-static {v0, v1}, Lcom/koushikdutta/superuser/util/Settings;->writeFile(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 308
    .end local v0           #file:Ljava/io/File;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 295
    .restart local v0       #file:Ljava/io/File;
    :pswitch_0
    const-string v1, "managed"

    invoke-static {v0, v1}, Lcom/koushikdutta/superuser/util/Settings;->writeFile(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :pswitch_1
    const-string v1, "user"

    invoke-static {v0, v1}, Lcom/koushikdutta/superuser/util/Settings;->writeFile(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 301
    :pswitch_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setNotificationType(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "notification"

    .prologue
    .line 139
    const-string v0, "notification"

    invoke-static {p0, v0, p1}, Lcom/koushikdutta/superuser/util/Settings;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 140
    return-void
.end method

.method public static setPin(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "pin"

    .prologue
    .line 165
    const-string v0, "pin"

    invoke-static {p1}, Lcom/koushikdutta/superuser/util/Settings;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/koushikdutta/superuser/util/Settings;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public static setRequirePermission(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "require"

    .prologue
    .line 182
    const-string v0, "require_permission"

    invoke-static {p0, v0, p1}, Lcom/koushikdutta/superuser/util/Settings;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 183
    return-void
.end method

.method public static setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 31
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 32
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "key"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v2, "value"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v2, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;

    invoke-direct {v2, p0}, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/koushikdutta/superuser/db/SuperuserDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 36
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v2, "settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 41
    return-void

    .line 39
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v2
.end method

.method public static setSuperuserAccess(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 341
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setprop persist.sys.root_access "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, command:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "su"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 343
    .local v1, p:Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 344
    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 345
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .end local v0           #command:Ljava/lang/String;
    .end local v1           #p:Ljava/lang/Process;
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static final setTheme(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 379
    const-string v0, "theme"

    invoke-static {p0, v0, p1}, Lcom/koushikdutta/superuser/util/Settings;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 380
    return-void
.end method

.method public static setTimeout(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "timeout"

    .prologue
    .line 117
    const-string v0, "timeout"

    invoke-static {p0, v0, p1}, Lcom/koushikdutta/superuser/util/Settings;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 118
    return-void
.end method

.method public static writeFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .parameter "file"
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/koushikdutta/superuser/util/Settings;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public static writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "file"
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 227
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 228
    .local v0, dout:Ljava/io/DataOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 229
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 230
    return-void
.end method
