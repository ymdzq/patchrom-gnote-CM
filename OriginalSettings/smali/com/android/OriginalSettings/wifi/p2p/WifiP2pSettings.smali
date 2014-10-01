.class public Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;
.implements Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;


# instance fields
.field private mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mConnectedDevices:I

.field private mConnectedGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mDeleteGroupListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDeviceNameText:Landroid/widget/EditText;

.field private mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mPeersGroup:Landroid/preference/PreferenceGroup;

.field private mPersistentGroup:Landroid/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRenameListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSavedDeviceName:Ljava/lang/String;

.field private mSelectedGroup:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPersistentGroup;

.field private mSelectedWifiPeer:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mThisDevicePref:Landroid/preference/Preference;

.field private mWifiP2pEnabled:Z

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiP2pSearching:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 76
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 105
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 109
    new-instance v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;-><init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->handleP2pStateChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->startSearch()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->updateDevicePref()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->updateSearchMenu(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPersistentGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPersistentGroup;

    return-object v0
.end method

.method private handleP2pStateChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 495
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->updateSearchMenu(Z)V

    .line 496
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    if-eqz v1, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 498
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 500
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 501
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 503
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 504
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 506
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPersistentGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 507
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPersistentGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 510
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 512
    .end local v0           #preferenceScreen:Landroid/preference/PreferenceScreen;
    :cond_0
    return-void
.end method

.method private startSearch()V
    .locals 3

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pSearching:Z

    if-nez v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$7;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$7;-><init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 530
    :cond_0
    return-void
.end method

.method private updateDevicePref()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 533
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 540
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 541
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 542
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 544
    :cond_0
    return-void

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSearchMenu(Z)V
    .locals 1
    .parameter "searching"

    .prologue
    .line 515
    iput-boolean p1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pSearching:Z

    .line 516
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 517
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 518
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 159
    const v3, 0x7f050056

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->addPreferencesFromResource(I)V

    .line 161
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.PERSISTENT_GROUPS_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 169
    .local v0, activity:Landroid/app/Activity;
    const-string v3, "wifip2p"

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 170
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v3, :cond_3

    .line 171
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v3, v0, v4, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 172
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v3, :cond_0

    .line 174
    const-string v3, "WifiP2pSettings"

    const-string v4, "Failed to set up connection with wifi p2p service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iput-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 181
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    const-string v3, "PEER_STATE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    const-string v3, "PEER_STATE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 183
    .local v1, device:Landroid/net/wifi/p2p/WifiP2pDevice;
    new-instance v3, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    .line 185
    .end local v1           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    if-eqz p1, :cond_2

    const-string v3, "DEV_NAME"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 186
    const-string v3, "DEV_NAME"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    .line 189
    :cond_2
    new-instance v3, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$2;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$2;-><init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mRenameListener:Landroid/content/DialogInterface$OnClickListener;

    .line 212
    new-instance v3, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$3;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$3;-><init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 231
    new-instance v3, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$4;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$4;-><init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 251
    new-instance v3, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$5;

    invoke-direct {v3, p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$5;-><init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mDeleteGroupListener:Landroid/content/DialogInterface$OnClickListener;

    .line 271
    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->setHasOptionsMenu(Z)V

    .line 273
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 274
    .local v2, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 276
    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 277
    new-instance v3, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    .line 278
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 280
    new-instance v3, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    .line 281
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    const v4, 0x7f08057d

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 283
    new-instance v3, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPersistentGroup:Landroid/preference/PreferenceGroup;

    .line 284
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPersistentGroup:Landroid/preference/PreferenceGroup;

    const v4, 0x7f08057e

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 286
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 287
    return-void

    .line 178
    .end local v2           #preferenceScreen:Landroid/preference/PreferenceScreen;
    :cond_3
    const-string v3, "WifiP2pSettings"

    const-string v4, "mWifiP2pManager is null !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .parameter "id"

    .prologue
    const v10, 0x7f080736

    const v9, 0x7f080735

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 395
    if-ne p1, v8, :cond_3

    .line 396
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 400
    .local v0, deviceName:Ljava/lang/String;
    :goto_0
    iget v4, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    if-le v4, v8, :cond_2

    .line 401
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f080583

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    iget v7, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 406
    .local v2, msg:Ljava/lang/String;
    :goto_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f080581

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 453
    .end local v0           #deviceName:Ljava/lang/String;
    .end local v2           #msg:Ljava/lang/String;
    :cond_0
    :goto_2
    return-object v1

    .line 396
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    goto :goto_0

    .line 404
    .restart local v0       #deviceName:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f080582

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #msg:Ljava/lang/String;
    goto :goto_1

    .line 413
    .end local v0           #deviceName:Ljava/lang/String;
    .end local v2           #msg:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x2

    if-ne p1, v4, :cond_5

    .line 414
    const v3, 0x7f080585

    .line 415
    .local v3, stringId:I
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 419
    .restart local v0       #deviceName:Ljava/lang/String;
    :goto_3
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f080584

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-virtual {v5, v3, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 425
    .local v1, dialog:Landroid/app/AlertDialog;
    goto :goto_2

    .line 415
    .end local v0           #deviceName:Ljava/lang/String;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :cond_4
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    goto :goto_3

    .line 426
    .end local v3           #stringId:I
    :cond_5
    const/4 v4, 0x3

    if-ne p1, v4, :cond_8

    .line 427
    new-instance v4, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    .line 428
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 429
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 435
    :cond_6
    :goto_4
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    .line 436
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f08057c

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mRenameListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 442
    .restart local v1       #dialog:Landroid/app/AlertDialog;
    goto/16 :goto_2

    .line 431
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :cond_7
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 432
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 433
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v7, v5}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_4

    .line 443
    :cond_8
    const/4 v4, 0x4

    if-ne p1, v4, :cond_0

    .line 444
    const v3, 0x7f080586

    .line 446
    .restart local v3       #stringId:I
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mDeleteGroupListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 451
    .restart local v1       #dialog:Landroid/app/AlertDialog;
    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 304
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pSearching:Z

    if-eqz v1, :cond_0

    const v0, 0x7f08057b

    .line 306
    .local v0, textId:I
    :goto_0
    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 309
    const/4 v1, 0x2

    const v2, 0x7f08057c

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 312
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 313
    return-void

    .line 304
    .end local v0           #textId:I
    :cond_0
    const v0, 0x7f08057a

    goto :goto_0
.end method

.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 0
    .parameter "group"

    .prologue
    .line 490
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mConnectedGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 491
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->updateDevicePref()V

    .line 492
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 336
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 344
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 338
    :pswitch_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->startSearch()V

    goto :goto_0

    .line 341
    :pswitch_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    goto :goto_0

    .line 336
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 297
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 298
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 299
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 300
    return-void
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 5
    .parameter "peers"

    .prologue
    .line 467
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 469
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 470
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    .line 471
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 473
    .local v1, peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    new-instance v3, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 474
    iget v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mConnectedDevices:I

    goto :goto_0

    .line 477
    .end local v1           #peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1
    return-void
.end method

.method public onPersistentGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroupList;)V
    .locals 5
    .parameter "groups"

    .prologue
    .line 480
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPersistentGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 482
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroupList;->getGroupList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 484
    .local v0, group:Landroid/net/wifi/p2p/WifiP2pGroup;
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPersistentGroup:Landroid/preference/PreferenceGroup;

    new-instance v3, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPersistentGroup;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPersistentGroup;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 486
    .end local v0           #group:Landroid/net/wifi/p2p/WifiP2pGroup;
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 349
    instance-of v2, p2, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    if-eqz v2, :cond_6

    move-object v2, p2

    .line 350
    check-cast v2, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    .line 351
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v2, :cond_1

    .line 352
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    .line 390
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 353
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ne v2, v3, :cond_2

    .line 354
    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    goto :goto_0

    .line 356
    :cond_2
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 357
    .local v0, config:Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 359
    const-string v2, "wifidirect.wps"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 361
    .local v1, forceWps:I
    if-eq v1, v4, :cond_3

    .line 362
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v1, v2, Landroid/net/wifi/WpsInfo;->setup:I

    .line 373
    :goto_1
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v4, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$6;

    invoke-direct {v4, p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$6;-><init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    .line 364
    :cond_3
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 365
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 366
    :cond_4
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 367
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v5, v2, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 369
    :cond_5
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v3, v2, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 386
    .end local v0           #config:Landroid/net/wifi/p2p/WifiP2pConfig;
    .end local v1           #forceWps:I
    :cond_6
    instance-of v2, p2, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPersistentGroup;

    if-eqz v2, :cond_0

    move-object v2, p2

    .line 387
    check-cast v2, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPersistentGroup;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSelectedGroup:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPersistentGroup;

    .line 388
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 317
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 318
    .local v1, searchMenu:Landroid/view/MenuItem;
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 319
    .local v0, renameMenu:Landroid/view/MenuItem;
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z

    if-eqz v2, :cond_0

    .line 320
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 321
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 327
    :goto_0
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pSearching:Z

    if-eqz v2, :cond_1

    .line 328
    const v2, 0x7f08057b

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 332
    :goto_1
    return-void

    .line 323
    :cond_0
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 324
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 330
    :cond_1
    const v2, 0x7f08057a

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 291
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 292
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 293
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    if-eqz v0, :cond_0

    .line 459
    const-string v0, "PEER_STATE"

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 462
    const-string v0, "DEV_NAME"

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mDeviceNameText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_1
    return-void
.end method
