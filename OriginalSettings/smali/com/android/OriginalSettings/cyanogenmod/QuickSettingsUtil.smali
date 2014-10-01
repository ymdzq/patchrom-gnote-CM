.class public Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;
.super Ljava/lang/Object;
.source "QuickSettingsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;
    }
.end annotation


# static fields
.field private static final DISABLED_TILES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENABLED_TILES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TILES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sUnsupportedRemoved:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->ENABLED_TILES:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->DISABLED_TILES:Ljava/util/Map;

    .line 72
    sget-object v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->ENABLED_TILES:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->TILES:Ljava/util/Map;

    .line 73
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleAirplane"

    const v2, 0x7f080264

    const-string v3, "com.android.systemui:drawable/ic_qs_airplane_off"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->registerTile(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;)V

    .line 76
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleBattery"

    const v2, 0x7f080265

    const-string v3, "com.android.systemui:drawable/ic_qs_battery_neutral"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->registerTile(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;)V

    .line 79
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleBluetooth"

    const v2, 0x7f080266

    const-string v3, "com.android.systemui:drawable/ic_qs_bluetooth_neutral"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->registerTile(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;)V

    .line 82
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleBrightness"

    const v2, 0x7f080267

    const-string v3, "com.android.systemui:drawable/ic_qs_brightness_auto_off"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->registerTile(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;)V

    .line 85
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleCamera"

    const v2, 0x7f080268

    const-string v3, "com.android.systemui:drawable/ic_qs_camera"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->registerTile(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;)V

    .line 88
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleExpandedDesktop"

    const v2, 0x7f08027e

    const-string v3, "com.android.systemui:drawable/ic_qs_expanded_desktop_off"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->registerTile(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;)V

    .line 91
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleSleepMode"

    const v2, 0x7f080269

    const-string v3, "com.android.systemui:drawable/ic_qs_sleep"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->registerTile(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;)V

    .line 94
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleGPS"

    const v2, 0x7f08026a

    const-string v3, "com.android.systemui:drawable/ic_qs_gps_neutral"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->registerTile(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;)V

    .line 97
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleLockScreen"

    const v2, 0x7f08026c

    const-string v3, "com.android.systemui:drawable/ic_qs_lock_screen_off"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->registerTile(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;)V

    .line 100
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleLte"

    const v2, 0x7f08026d

    const-string v3, "com.android.systemui:drawable/ic_qs_lte_off"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->registerTile(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;)V

    .line 103
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleMobileData"

    const v2, 0x7f08026e

    const-string v3, "com.android.systemui:drawable/ic_qs_signal_4"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->registerTile(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;)V

    .line 106
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleNetworkMode"

    const v2, 0x7f080278

    const-string v3, "com.android.systemui:drawable/ic_qs_2g3g_on"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->registerTile(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;)V

    .line 109
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleNfc"

    const v2, 0x7f080279

    const-string v3, "com.android.systemui:drawable/ic_qs_nfc_off"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->registerTile(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;)V

    .line 112
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleAutoRotate"

    const v2, 0x7f080270

    const-string v3, "com.android.systemui:drawable/ic_qs_auto_rotate"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->registerTile(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;)V

    .line 115
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleProfile"

    const v2, 0x7f08026f

    const-string v3, "com.android.systemui:drawable/ic_qs_profiles"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->registerTile(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;)V

    .line 118
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleQuietHours"

    const v2, 0x7f08027c

    const-string v3, "com.android.systemui:drawable/ic_qs_quiet_hours_off"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->registerTile(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;)V

    .line 121
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleScreenTimeout"

    const v2, 0x7f08027a

    const-string v3, "com.android.systemui:drawable/ic_qs_screen_timeout_off"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->registerTile(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;)V

    .line 124
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleSettings"

    const v2, 0x7f080271

    const-string v3, "com.android.systemui:drawable/ic_qs_settings"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->registerTile(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;)V

    .line 127
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleSound"

    const v2, 0x7f080272

    const-string v3, "com.android.systemui:drawable/ic_qs_ring_on"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->registerTile(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;)V

    .line 130
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleSync"

    const v2, 0x7f080273

    const-string v3, "com.android.systemui:drawable/ic_qs_sync_off"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->registerTile(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;)V

    .line 133
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleFlashlight"

    const v2, 0x7f08026b

    const-string v3, "com.android.systemui:drawable/ic_qs_torch_off"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->registerTile(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;)V

    .line 136
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleUser"

    const v2, 0x7f080277

    const-string v3, "com.android.systemui:drawable/ic_qs_default_user"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->registerTile(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;)V

    .line 139
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleVolume"

    const v2, 0x7f08027d

    const-string v3, "com.android.systemui:drawable/ic_qs_volume"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->registerTile(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;)V

    .line 142
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleWifi"

    const v2, 0x7f080275

    const-string v3, "com.android.systemui:drawable/ic_qs_wifi_4"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->registerTile(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;)V

    .line 145
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;

    const-string v1, "toggleWifiAp"

    const v2, 0x7f080274

    const-string v3, "com.android.systemui:drawable/ic_qs_wifi_ap_neutral"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->registerTile(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;)V

    .line 172
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->sUnsupportedRemoved:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    return-void
.end method

.method private static disableTile(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 161
    sget-object v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->ENABLED_TILES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->DISABLED_TILES:Ljava/util/Map;

    sget-object v1, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->ENABLED_TILES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_0
    return-void
.end method

.method private static enableTile(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 167
    sget-object v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->DISABLED_TILES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    sget-object v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->ENABLED_TILES:Ljava/util/Map;

    sget-object v1, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->DISABLED_TILES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_0
    return-void
.end method

.method public static getCurrentTiles(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 260
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quick_settings_tiles"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, tiles:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 263
    invoke-static {p0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->getDefaultTiles(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 265
    :cond_0
    return-object v0
.end method

.method public static getDefaultTiles(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 320
    invoke-static {p0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->removeUnsupportedTiles(Landroid/content/Context;)V

    .line 321
    const-string v0, "|"

    sget-object v1, Lcom/android/internal/util/cm/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTileListFromString(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .parameter "tiles"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "\\|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getTileStringFromList(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 308
    .local p0, tiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 309
    :cond_0
    const-string v1, ""

    .line 315
    :cond_1
    return-object v1

    .line 311
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 312
    .local v1, s:Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isTileAvailable(Ljava/lang/String;)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 256
    sget-object v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->ENABLED_TILES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static declared-synchronized refreshAvailableTiles(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 210
    const-class v4, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 214
    .local v2, resolver:Landroid/content/ContentResolver;
    const/16 v1, -0x63

    .line 216
    .local v1, networkState:I
    :try_start_1
    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 222
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 231
    :try_start_2
    const-string v3, "toggleNetworkMode"

    invoke-static {v3}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->disableTile(Ljava/lang/String;)V

    .line 236
    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/cm/QSUtils;->systemProfilesEnabled(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 237
    const-string v3, "toggleProfile"

    invoke-static {v3}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->enableTile(Ljava/lang/String;)V

    .line 243
    :goto_2
    invoke-static {v2}, Lcom/android/internal/util/cm/QSUtils;->expandedDesktopEnabled(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 244
    const-string v3, "toggleExpandedDesktop"

    invoke-static {v3}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->enableTile(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    :goto_3
    monitor-exit v4

    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    :try_start_3
    const-string v3, "QuickSettingsUtil"

    const-string v5, "Unable to retrieve PREFERRED_NETWORK_MODE"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 210
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    .end local v1           #networkState:I
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 228
    .restart local v1       #networkState:I
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    :pswitch_0
    :try_start_4
    const-string v3, "toggleNetworkMode"

    invoke-static {v3}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->enableTile(Ljava/lang/String;)V

    goto :goto_1

    .line 239
    :cond_0
    const-string v3, "toggleProfile"

    invoke-static {v3}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->disableTile(Ljava/lang/String;)V

    goto :goto_2

    .line 246
    :cond_1
    const-string v3, "toggleExpandedDesktop"

    invoke-static {v3}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->disableTile(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static registerTile(Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 151
    sget-object v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->ENABLED_TILES:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil$TileInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method

.method private static removeTile(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 155
    sget-object v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->ENABLED_TILES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->DISABLED_TILES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/android/internal/util/cm/QSConstants;->TILES_DEFAULT:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method

.method private static declared-synchronized removeUnsupportedTiles(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 175
    const-class v1, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->sUnsupportedRemoved:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 207
    :goto_0
    monitor-exit v1

    return-void

    .line 180
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsMobileData(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    const-string v0, "toggleMobileData"

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->removeTile(Ljava/lang/String;)V

    .line 182
    const-string v0, "toggleWifiAp"

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->removeTile(Ljava/lang/String;)V

    .line 183
    const-string v0, "toggleNetworkMode"

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->removeTile(Ljava/lang/String;)V

    .line 187
    :cond_1
    invoke-static {}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsBluetooth()Z

    move-result v0

    if-nez v0, :cond_2

    .line 188
    const-string v0, "toggleBluetooth"

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->removeTile(Ljava/lang/String;)V

    .line 192
    :cond_2
    invoke-static {p0}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsNfc(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 193
    const-string v0, "toggleNfc"

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->removeTile(Ljava/lang/String;)V

    .line 197
    :cond_3
    invoke-static {p0}, Lcom/android/internal/util/cm/QSUtils;->deviceSupportsLte(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 198
    const-string v0, "toggleLte"

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->removeTile(Ljava/lang/String;)V

    .line 202
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 203
    const-string v0, "toggleFlashlight"

    invoke-static {v0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->removeTile(Ljava/lang/String;)V

    .line 206
    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->sUnsupportedRemoved:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static resetTiles(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 274
    invoke-static {p0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->getDefaultTiles(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, defaultTiles:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quick_settings_tiles"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 277
    return-void
.end method

.method public static saveCurrentTiles(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "tiles"

    .prologue
    .line 269
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quick_settings_tiles"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 271
    return-void
.end method

.method public static declared-synchronized updateAvailableTiles(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 251
    const-class v1, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->removeUnsupportedTiles(Landroid/content/Context;)V

    .line 252
    invoke-static {p0}, Lcom/android/OriginalSettings/cyanogenmod/QuickSettingsUtil;->refreshAvailableTiles(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    monitor-exit v1

    return-void

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
