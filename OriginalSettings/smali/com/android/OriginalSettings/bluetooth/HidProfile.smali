.class final Lcom/android/OriginalSettings/bluetooth/HidProfile;
.super Ljava/lang/Object;
.source "HidProfile.java"

# interfaces
.implements Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/bluetooth/HidProfile$1;,
        Lcom/android/OriginalSettings/bluetooth/HidProfile$InputDeviceServiceListener;
    }
.end annotation


# static fields
.field private static V:Z


# instance fields
.field private mIsProfileReady:Z

.field private mService:Landroid/bluetooth/BluetoothInputDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/OriginalSettings/bluetooth/HidProfile;->V:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;)V
    .locals 2
    .parameter "context"
    .parameter "adapter"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/android/OriginalSettings/bluetooth/HidProfile$InputDeviceServiceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/bluetooth/HidProfile$InputDeviceServiceListener;-><init>(Lcom/android/OriginalSettings/bluetooth/HidProfile;Lcom/android/OriginalSettings/bluetooth/HidProfile$1;)V

    const/4 v1, 0x4

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    .line 69
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/android/OriginalSettings/bluetooth/HidProfile;->V:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/OriginalSettings/bluetooth/HidProfile;Landroid/bluetooth/BluetoothInputDevice;)Landroid/bluetooth/BluetoothInputDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/OriginalSettings/bluetooth/HidProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/OriginalSettings/bluetooth/HidProfile;->mIsProfileReady:Z

    return p1
.end method

.method static getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .parameter "btClass"

    .prologue
    .line 156
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 163
    const v0, 0x7f020055

    :goto_0
    return v0

    .line 159
    :sswitch_0
    const v0, 0x7f020053

    goto :goto_0

    .line 161
    :sswitch_1
    const v0, 0x7f020057

    goto :goto_0

    .line 156
    nop

    :sswitch_data_0
    .sparse-switch
        0x540 -> :sswitch_0
        0x580 -> :sswitch_1
        0x5c0 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothInputDevice;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 86
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothInputDevice;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 168
    sget-boolean v1, Lcom/android/OriginalSettings/bluetooth/HidProfile;->V:Z

    if-eqz v1, :cond_0

    const-string v1, "HidProfile"

    const-string v2, "finalize()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    if-eqz v1, :cond_1

    .line 171
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 173
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/OriginalSettings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :cond_1
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "HidProfile"

    const-string v2, "Error cleaning up HID proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 90
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v1, :cond_0

    .line 95
    :goto_0
    return v2

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothInputDevice;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 95
    .local v0, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothInputDevice;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .parameter "btClass"

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 150
    const v0, 0x7f020053

    .line 152
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/android/OriginalSettings/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result v0

    goto :goto_0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 131
    const v0, 0x7f0804be

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x3

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 107
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothInputDevice;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/bluetooth/HidProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 136
    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    .line 144
    :pswitch_0
    invoke-static {v0}, Lcom/android/OriginalSettings/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v1

    :goto_0
    return v1

    .line 138
    :pswitch_1
    const v1, 0x7f0804d6

    goto :goto_0

    .line 141
    :pswitch_2
    const v1, 0x7f0804d0

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isAutoConnectable()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    const/4 v0, 0x0

    .line 101
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothInputDevice;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isProfileReady()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/HidProfile;->mIsProfileReady:Z

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2
    .parameter "device"
    .parameter "preferred"

    .prologue
    const/16 v1, 0x64

    .line 111
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    if-nez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    if-eqz p2, :cond_2

    .line 113
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothInputDevice;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothInputDevice;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothInputDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothInputDevice;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string v0, "HID"

    return-object v0
.end method
