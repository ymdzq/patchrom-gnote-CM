.class public Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil;
.super Ljava/lang/Object;
.source "PowerWidgetUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;
    }
.end annotation


# static fields
.field public static final BUTTONS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    .line 61
    sget-object v0, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleAirplane"

    new-instance v2, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleAirplane"

    const v4, 0x7f080203

    const-string v5, "com.android.systemui:drawable/stat_airplane_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleAutoRotate"

    new-instance v2, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleAutoRotate"

    const v4, 0x7f080202

    const-string v5, "com.android.systemui:drawable/stat_orientation_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleBluetooth"

    new-instance v2, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleBluetooth"

    const v4, 0x7f0801f8

    const-string v5, "com.android.systemui:drawable/stat_bluetooth_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleBrightness"

    new-instance v2, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleBrightness"

    const v4, 0x7f0801fb

    const-string v5, "com.android.systemui:drawable/stat_brightness_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleFlashlight"

    new-instance v2, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleFlashlight"

    const v4, 0x7f080204

    const-string v5, "com.android.systemui:drawable/stat_flashlight_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleGPS"

    new-instance v2, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleGPS"

    const v4, 0x7f0801f9

    const-string v5, "com.android.systemui:drawable/stat_gps_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleLockScreen"

    new-instance v2, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleLockScreen"

    const v4, 0x7f080200

    const-string v5, "com.android.systemui:drawable/stat_lock_screen_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleMobileData"

    new-instance v2, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleMobileData"

    const v4, 0x7f0801ff

    const-string v5, "com.android.systemui:drawable/stat_data_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleNetworkMode"

    new-instance v2, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleNetworkMode"

    const v4, 0x7f080201

    const-string v5, "com.android.systemui:drawable/stat_2g3g_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleScreenTimeout"

    new-instance v2, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleScreenTimeout"

    const v4, 0x7f0801fe

    const-string v5, "com.android.systemui:drawable/stat_screen_timeout_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleSleepMode"

    new-instance v2, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleSleepMode"

    const v4, 0x7f080205

    const-string v5, "com.android.systemui:drawable/stat_sleep"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleSound"

    new-instance v2, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleSound"

    const v4, 0x7f0801fa

    const-string v5, "com.android.systemui:drawable/stat_ring_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleSync"

    new-instance v2, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleSync"

    const v4, 0x7f0801fc

    const-string v5, "com.android.systemui:drawable/stat_sync_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleWifi"

    new-instance v2, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleWifi"

    const v4, 0x7f0801f7

    const-string v5, "com.android.systemui:drawable/stat_wifi_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleWifiAp"

    new-instance v2, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleWifiAp"

    const v4, 0x7f0801fd

    const-string v5, "com.android.systemui:drawable/stat_wifi_ap_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleMediaPrevious"

    new-instance v2, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleMediaPrevious"

    const v4, 0x7f080207

    const-string v5, "com.android.systemui:drawable/stat_media_previous"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleMediaPlayPause"

    new-instance v2, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleMediaPlayPause"

    const v4, 0x7f080206

    const-string v5, "com.android.systemui:drawable/stat_media_play"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleMediaNext"

    new-instance v2, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleMediaNext"

    const v4, 0x7f080208

    const-string v5, "com.android.systemui:drawable/stat_media_next"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const/4 v0, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnGsmMode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    :cond_0
    sget-object v0, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleLte"

    new-instance v2, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleLte"

    const v4, 0x7f080209

    const-string v5, "com.android.systemui:drawable/stat_lte_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_1
    sget-object v0, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil;->BUTTONS:Ljava/util/HashMap;

    const-string v1, "toggleWimax"

    new-instance v2, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;

    const-string v3, "toggleWimax"

    const v4, 0x7f08020a

    const-string v5, "com.android.systemui:drawable/stat_wimax_on"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil$ButtonInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    return-void
.end method

.method public static getButtonListFromString(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .parameter "buttons"
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
    .line 174
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "\\|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getButtonStringFromList(Ljava/util/ArrayList;)Ljava/lang/String;
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
    .line 178
    .local p0, buttons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 179
    :cond_0
    const-string v1, ""

    .line 185
    :cond_1
    return-object v1

    .line 181
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 182
    .local v1, s:Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 183
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

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getCurrentButtons(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "expanded_widget_buttons"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, buttons:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 135
    const-string v0, "toggleWifi|toggleBluetooth|toggleGPS|toggleSound"

    .line 137
    invoke-static {p0}, Landroid/net/wimax/WimaxHelper;->isWimaxSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|toggleWimax"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    :cond_0
    return-object v0
.end method

.method public static mergeInNewButtonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "oldString"
    .parameter "newString"

    .prologue
    .line 150
    invoke-static {p0}, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil;->getButtonListFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 151
    .local v4, oldList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil;->getButtonListFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 152
    .local v3, newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v2, mergedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    .local v0, button:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 157
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    .end local v0           #button:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    .restart local v0       #button:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 165
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 170
    .end local v0           #button:Ljava/lang/String;
    :cond_3
    invoke-static {v2}, Lcom/android/OriginalSettings/cyanogenmod/PowerWidgetUtil;->getButtonStringFromList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static saveCurrentButtons(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "buttons"

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "expanded_widget_buttons"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 147
    return-void
.end method
