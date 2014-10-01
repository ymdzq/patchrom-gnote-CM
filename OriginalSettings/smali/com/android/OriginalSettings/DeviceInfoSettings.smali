.class public Lcom/android/OriginalSettings/DeviceInfoSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "DeviceInfoSettings.java"


# instance fields
.field mDevHitCountdown:I

.field mDevHitToast:Landroid/widget/Toast;

.field mHits:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mHits:[J

    return-void
.end method

.method public static formatKernelVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "rawKernelVersion"

    .prologue
    const/4 v4, 0x4

    .line 351
    const-string v0, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    .line 359
    .local v0, PROC_VERSION_REGEX:Ljava/lang/String;
    const-string v2, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 360
    .local v1, m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 361
    const-string v2, "DeviceInfoSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Regex did not match on /proc/version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-string v2, "Unavailable"

    .line 368
    :goto_0
    return-object v2

    .line 363
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-ge v2, v4, :cond_1

    .line 364
    const-string v2, "DeviceInfoSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Regex match on /proc/version only returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " groups"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const-string v2, "Unavailable"

    goto :goto_0

    .line 368
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getCPUInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 418
    const/4 v1, 0x0

    .line 425
    .local v1, result:Ljava/lang/String;
    :try_start_0
    const-string v2, "/proc/cpuinfo"

    invoke-static {v2}, Lcom/android/OriginalSettings/DeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, firstLine:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 427
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 431
    .end local v0           #firstLine:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 429
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getFormattedKernelVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 334
    :try_start_0
    const-string v1, "/proc/version"

    invoke-static {v1}, Lcom/android/OriginalSettings/DeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/OriginalSettings/DeviceInfoSettings;->formatKernelVersion(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 341
    .local v0, e:Ljava/io/IOException;
    :goto_0
    return-object v1

    .line 336
    .end local v0           #e:Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 337
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "DeviceInfoSettings"

    const-string v2, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    const-string v1, "Unavailable"

    goto :goto_0
.end method

.method private getMemInfo()Ljava/lang/String;
    .locals 9

    .prologue
    .line 395
    const/4 v3, 0x0

    .line 396
    .local v3, result:Ljava/lang/String;
    const/4 v2, 0x0

    .line 405
    .local v2, reader:Ljava/io/BufferedReader;
    :try_start_0
    const-string v4, "/proc/meminfo"

    invoke-static {v4}, Lcom/android/OriginalSettings/DeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, firstLine:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 407
    const-string v4, "\\s+"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, parts:[Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 409
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x400

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " MB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 414
    .end local v0           #firstLine:Ljava/lang/String;
    .end local v1           #parts:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 412
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private getMsvSuffix()Ljava/lang/String;
    .locals 5

    .prologue
    .line 381
    :try_start_0
    const-string v1, "/sys/board_properties/soc/msv"

    invoke-static {v1}, Lcom/android/OriginalSettings/DeviceInfoSettings;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, msv:Ljava/lang/String;
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 384
    const-string v1, " (ENGINEERING)"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    .end local v0           #msv:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 388
    :catch_0
    move-exception v1

    .line 391
    :cond_0
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 386
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 326
    .local v0, reader:Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 328
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1
.end method

.method private removePreferenceIfBoolFalse(Ljava/lang/String;I)V
    .locals 2
    .parameter "preference"
    .parameter "resId"

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 292
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 296
    .end local v0           #pref:Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "preferenceGroup"
    .parameter "preference"
    .parameter "property"

    .prologue
    .line 278
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/OriginalSettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' missing and no \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' preference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 300
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08033d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setValueSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "preference"
    .parameter "property"

    .prologue
    .line 309
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08033d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x1

    .line 81
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const v5, 0x7f050012

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/DeviceInfoSettings;->addPreferencesFromResource(I)V

    .line 85
    const-string v5, "firmware_version"

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/OriginalSettings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v5, "firmware_version"

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 87
    const-string v5, "baseband_version"

    const-string v6, "gsm.version.baseband"

    invoke-direct {p0, v5, v6}, Lcom/android/OriginalSettings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v5, "device_model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/OriginalSettings/DeviceInfoSettings;->getMsvSuffix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/OriginalSettings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v5, "fcc_equipment_id"

    const-string v6, "ro.ril.fccid"

    invoke-direct {p0, v5, v6}, Lcom/android/OriginalSettings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v5, "device_model"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/OriginalSettings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v5, "build_number"

    sget-object v6, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/OriginalSettings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v5, "build_number"

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 93
    const-string v5, "kernel_version"

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-static {}, Lcom/android/OriginalSettings/DeviceInfoSettings;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 94
    const-string v5, "mod_version"

    const-string v6, "ro.cm.version"

    invoke-direct {p0, v5, v6}, Lcom/android/OriginalSettings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v5, "mod_version"

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 96
    const-string v5, "build_date"

    const-string v6, "ro.build.date"

    invoke-direct {p0, v5, v6}, Lcom/android/OriginalSettings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0809ce

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, status:Ljava/lang/String;
    const-string v5, "selinux_status"

    invoke-direct {p0, v5, v4}, Lcom/android/OriginalSettings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .end local v4           #status:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v5, "selinux_status"

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "selinux_status"

    const-string v7, "ro.build.selinux"

    invoke-direct {p0, v5, v6, v7}, Lcom/android/OriginalSettings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/android/OriginalSettings/DeviceInfoSettings;->getCPUInfo()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, cpuInfo:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/OriginalSettings/DeviceInfoSettings;->getMemInfo()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, memInfo:Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-nez v5, :cond_3

    .line 116
    const-string v5, "cm_updates"

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/DeviceInfoSettings;->removePreferenceIfPackageNotInstalled(Landroid/preference/Preference;)Z

    .line 121
    :goto_1
    if-eqz v1, :cond_4

    .line 122
    const-string v5, "device_cpu"

    invoke-direct {p0, v5, v1}, Lcom/android/OriginalSettings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_2
    if-eqz v2, :cond_5

    .line 128
    const-string v5, "device_memory"

    invoke-direct {p0, v5, v2}, Lcom/android/OriginalSettings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "safetylegal"

    const-string v7, "ro.url.safetylegal"

    invoke-direct {p0, v5, v6, v7}, Lcom/android/OriginalSettings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "fcc_equipment_id"

    const-string v7, "ro.ril.fccid"

    invoke-direct {p0, v5, v6, v7}, Lcom/android/OriginalSettings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/OriginalSettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "baseband_version"

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 152
    .local v0, act:Landroid/app/Activity;
    const-string v5, "container"

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 153
    .local v3, parentPreference:Landroid/preference/PreferenceGroup;
    const-string v5, "terms"

    invoke-static {v0, v3, v5, v8}, Lcom/android/OriginalSettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 155
    const-string v5, "license"

    invoke-static {v0, v3, v5, v8}, Lcom/android/OriginalSettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 157
    const-string v5, "copyright"

    invoke-static {v0, v3, v5, v8}, Lcom/android/OriginalSettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 159
    const-string v5, "team"

    invoke-static {v0, v3, v5, v8}, Lcom/android/OriginalSettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 163
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 164
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-nez v5, :cond_6

    .line 165
    const-string v5, "system_update_settings"

    invoke-static {v0, v3, v5, v8}, Lcom/android/OriginalSettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 172
    :goto_4
    const-string v5, "contributors"

    invoke-static {v0, v3, v5, v8}, Lcom/android/OriginalSettings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 176
    const-string v5, "additional_system_update_settings"

    const v6, 0x7f0b0005

    invoke-direct {p0, v5, v6}, Lcom/android/OriginalSettings/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;I)V

    .line 180
    const-string v5, "regulatory_info"

    const v6, 0x7f0b0007

    invoke-direct {p0, v5, v6}, Lcom/android/OriginalSettings/DeviceInfoSettings;->removePreferenceIfBoolFalse(Ljava/lang/String;I)V

    .line 182
    return-void

    .line 101
    .end local v0           #act:Landroid/app/Activity;
    .end local v1           #cpuInfo:Ljava/lang/String;
    .end local v2           #memInfo:Ljava/lang/String;
    .end local v3           #parentPreference:Landroid/preference/PreferenceGroup;
    :cond_2
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v5

    if-nez v5, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0809cf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 103
    .restart local v4       #status:Ljava/lang/String;
    const-string v5, "selinux_status"

    invoke-direct {p0, v5, v4}, Lcom/android/OriginalSettings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 118
    .end local v4           #status:Ljava/lang/String;
    .restart local v1       #cpuInfo:Ljava/lang/String;
    .restart local v2       #memInfo:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "cm_updates"

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 124
    :cond_4
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "device_cpu"

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 130
    :cond_5
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "device_memory"

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 170
    .restart local v0       #act:Landroid/app/Activity;
    .restart local v3       #parentPreference:Landroid/preference/PreferenceGroup;
    :cond_6
    const-string v5, "system_update_settings"

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x1f4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 195
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "firmware_version"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    iget-object v2, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mHits:[J

    iget-object v3, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mHits:[J

    iget-object v4, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mHits:[J

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v0, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    iget-object v0, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mHits:[J

    iget-object v2, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mHits:[J

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 198
    iget-object v0, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mHits:[J

    aget-wide v0, v0, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    const-string v1, "android"

    const-class v2, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 204
    :catch_0
    move-exception v1

    .line 205
    const-string v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to start activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "build_number"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 210
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_0

    .line 211
    iget v2, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v2, :cond_5

    .line 212
    iget v2, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mDevHitCountdown:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mDevHitCountdown:I

    .line 213
    iget v2, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mDevHitCountdown:I

    if-nez v2, :cond_3

    .line 214
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "development"

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 217
    iget-object v1, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v1, :cond_2

    .line 218
    iget-object v1, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 220
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08033e

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 222
    iget-object v0, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 223
    :cond_3
    iget v2, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mDevHitCountdown:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 225
    iget-object v2, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v2, :cond_4

    .line 226
    iget-object v2, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 228
    :cond_4
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/OriginalSettings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0f

    iget v5, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mDevHitCountdown:I

    new-array v0, v0, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mDevHitCountdown:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v1

    invoke-virtual {v3, v4, v5, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 231
    iget-object v0, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 233
    :cond_5
    iget v1, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mDevHitCountdown:I

    if-gez v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v1, :cond_6

    .line 235
    iget-object v1, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 237
    :cond_6
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08033f

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 239
    iget-object v0, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 242
    :cond_7
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mod_version"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 243
    iget-object v2, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mHits:[J

    iget-object v3, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mHits:[J

    iget-object v4, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mHits:[J

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v0, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    iget-object v2, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mHits:[J

    iget-object v3, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mHits:[J

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 245
    iget-object v2, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mHits:[J

    aget-wide v1, v2, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v6

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 246
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    const-string v2, "is_cid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 248
    const-string v0, "android"

    const-class v2, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 252
    :catch_1
    move-exception v0

    .line 253
    const-string v0, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to start activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 256
    :cond_8
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "selinux_status"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    iget-object v2, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mHits:[J

    iget-object v3, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mHits:[J

    iget-object v4, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mHits:[J

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v0, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    iget-object v2, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mHits:[J

    iget-object v3, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mHits:[J

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 259
    iget-object v2, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mHits:[J

    aget-wide v2, v2, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 260
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v2

    if-nez v2, :cond_9

    :goto_1
    invoke-static {v0}, Landroid/os/SELinux;->setSELinuxEnforce(Z)Z

    .line 261
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 262
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0809ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 263
    const-string v1, "selinux_status"

    invoke-direct {p0, v1, v0}, Lcom/android/OriginalSettings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    move v0, v1

    .line 260
    goto :goto_1

    .line 264
    :cond_a
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v0

    if-nez v0, :cond_b

    .line 265
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0809cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 266
    const-string v1, "selinux_status"

    invoke-direct {p0, v1, v0}, Lcom/android/OriginalSettings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 267
    :cond_b
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0809d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 269
    const-string v1, "selinux_status"

    invoke-direct {p0, v1, v0}, Lcom/android/OriginalSettings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 186
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 187
    invoke-virtual {p0}, Lcom/android/OriginalSettings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "development"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "show"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mDevHitCountdown:I

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    .line 191
    return-void

    .line 187
    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method
