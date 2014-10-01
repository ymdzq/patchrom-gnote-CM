.class public Lcom/android/OriginalSettings/wifi/WifiSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/wifi/WifiSettings$ProportionalOuterFrame;,
        Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;,
        Lcom/android/OriginalSettings/wifi/WifiSettings$Multimap;
    }
.end annotation


# instance fields
.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mAutoFinishOnConnection:Z

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

.field private mDlgAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

.field private mDlgEdit:Z

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableNextOnConnection:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mIbssSupported:Z

.field private mKeyStoreNetworkId:I

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private mP2pSupported:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

.field private mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

.field private mSetupWizardMode:Z

.field mSupportedChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 139
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 181
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 182
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$1;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 198
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;Lcom/android/OriginalSettings/wifi/WifiSettings$1;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    .line 199
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wifi/WifiSettings;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/wifi/WifiSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/wifi/WifiSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->isPhone()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/wifi/WifiSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/wifi/WifiSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDialog(I)V

    return-void
.end method

.method private addMessagePreference(I)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 756
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 757
    return-void
.end method

.method private changeNextButtonState(Z)V
    .locals 1
    .parameter "connected"

    .prologue
    .line 967
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 970
    :cond_0
    return-void
.end method

.method private constructAccessPoints()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/OriginalSettings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 761
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 764
    new-instance v4, Lcom/android/OriginalSettings/wifi/WifiSettings$Multimap;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Multimap;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;Lcom/android/OriginalSettings/wifi/WifiSettings$1;)V

    .line 766
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 767
    if-eqz v0, :cond_0

    .line 768
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 769
    new-instance v2, Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 770
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2, v0, v5}, Lcom/android/OriginalSettings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 771
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    iget-object v0, v2, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 777
    if-eqz v0, :cond_4

    .line 778
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 780
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 785
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mIbssSupported:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "[IBSS]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 789
    :cond_2
    const/4 v1, 0x0

    .line 790
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v1

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 791
    invoke-virtual {v1, v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 792
    const/4 v1, 0x1

    :goto_3
    move v2, v1

    goto :goto_2

    .line 794
    :cond_3
    if-nez v2, :cond_1

    .line 795
    new-instance v1, Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 796
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    iget-object v0, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 803
    :cond_4
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 804
    return-object v3

    :cond_5
    move v1, v2

    goto :goto_3
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 827
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 828
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 829
    const-string v0, "wifi_state"

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateWifiState(I)V

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 831
    :cond_1
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 834
    :cond_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateAccessPoints()V

    goto :goto_0

    .line 835
    :cond_3
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 842
    const-string v0, "newState"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SupplicantState;

    .line 844
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/net/wifi/SupplicantState;->isHandshakeState(Landroid/net/wifi/SupplicantState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 845
    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 847
    :cond_4
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 848
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 850
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 851
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 852
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 853
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 854
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 856
    if-eqz v0, :cond_0

    .line 857
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 858
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 862
    :cond_5
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0
.end method

.method private isPhone()Z
    .locals 2

    .prologue
    .line 688
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 690
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    .line 708
    invoke-static {p1}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_0

    .line 710
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 711
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 712
    const/4 v0, 0x1

    .line 714
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V
    .locals 2
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    const/4 v1, 0x1

    .line 612
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->removeDialog(I)V

    .line 614
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    .line 618
    :cond_0
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 619
    iput-boolean p2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgEdit:Z

    .line 621
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDialog(I)V

    .line 622
    return-void
.end method

.method private updateAccessPoints()V
    .locals 5

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_1

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    .line 727
    .local v3, wifiState:I
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 745
    :pswitch_0
    const v4, 0x7f080504

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 730
    :pswitch_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->constructAccessPoints()Ljava/util/List;

    move-result-object v1

    .line 731
    .local v1, accessPoints:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/OriginalSettings/wifi/AccessPoint;>;"
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 732
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 733
    const v4, 0x7f08051c

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 735
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 736
    .local v0, accessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 741
    .end local v0           #accessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    .end local v1           #accessPoints:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/OriginalSettings/wifi/AccessPoint;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto :goto_0

    .line 749
    :pswitch_3
    const v4, 0x7f08051b

    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 727
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 869
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 870
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->pause()V

    .line 893
    :cond_0
    return-void

    .line 874
    :cond_1
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v3, :cond_4

    .line 875
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->pause()V

    .line 880
    :goto_0
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 881
    if-eqz p1, :cond_2

    .line 882
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 885
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_0

    .line 887
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 888
    .local v2, preference:Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v3, :cond_3

    move-object v0, v2

    .line 889
    check-cast v0, Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 890
    .local v0, accessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v3, v4}, Lcom/android/OriginalSettings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 885
    .end local v0           #accessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 877
    .end local v1           #i:I
    .end local v2           #preference:Landroid/preference/Preference;
    :cond_4
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_0
.end method

.method private updateWifiState(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 896
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 897
    if-eqz v0, :cond_0

    .line 898
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 901
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 919
    :goto_0
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 920
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 921
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->pause()V

    .line 922
    :goto_1
    return-void

    .line 904
    :pswitch_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isIbssSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mIbssSupported:Z

    .line 905
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getSupportedChannels()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSupportedChannels:Ljava/util/List;

    .line 907
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_1

    .line 911
    :pswitch_1
    const v0, 0x7f080503

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 915
    :pswitch_2
    const v0, 0x7f08051b

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 901
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method forget()V
    .locals 3

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1012
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :goto_0
    return-void

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1018
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1019
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->resume()V

    .line 1021
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 1024
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->changeNextButtonState(Z)V

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 1076
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v0, :cond_0

    .line 1077
    const/4 v0, 0x0

    .line 1079
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0809f0

    goto :goto_0
.end method

.method protected hasSimProblem()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 699
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 701
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/16 v12, 0x10

    const/4 v11, -0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 280
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 282
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.wifi.direct"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mP2pSupported:Z

    .line 283
    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 285
    new-instance v7, Lcom/android/OriginalSettings/wifi/WifiSettings$5;

    invoke-direct {v7, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$5;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 298
    new-instance v7, Lcom/android/OriginalSettings/wifi/WifiSettings$6;

    invoke-direct {v7, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$6;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 311
    new-instance v7, Lcom/android/OriginalSettings/wifi/WifiSettings$7;

    invoke-direct {v7, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$7;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 324
    if-eqz p1, :cond_0

    const-string v7, "wifi_ap_state"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 326
    const-string v7, "edit_mode"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgEdit:Z

    .line 327
    const-string v7, "wifi_ap_state"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 330
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 331
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 334
    .local v4, intent:Landroid/content/Intent;
    const-string v7, "wifi_auto_finish_on_connect"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    .line 336
    iget-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    if-eqz v7, :cond_2

    .line 338
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->hasNextButton()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 339
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 342
    :cond_1
    const-string v7, "connectivity"

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 344
    .local v2, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_2

    invoke-virtual {v2, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 346
    const/4 v7, -0x1

    invoke-virtual {v1, v7}, Landroid/app/Activity;->setResult(I)V

    .line 347
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 408
    .end local v2           #connectivity:Landroid/net/ConnectivityManager;
    :goto_0
    return-void

    .line 354
    :cond_2
    const-string v7, "wifi_enable_next_on_connect"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    .line 356
    iget-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v7, :cond_3

    .line 357
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->hasNextButton()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 358
    const-string v7, "connectivity"

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 360
    .restart local v2       #connectivity:Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_3

    .line 361
    invoke-virtual {v2, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 363
    .local v3, info:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 368
    .end local v2           #connectivity:Landroid/net/ConnectivityManager;
    .end local v3           #info:Landroid/net/NetworkInfo;
    :cond_3
    const v7, 0x7f050057

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 370
    iget-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v7, :cond_4

    .line 371
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v7

    const/high16 v8, 0x1e4

    invoke-virtual {v7, v8}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 380
    :cond_4
    iget-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v7, :cond_7

    .line 381
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 383
    .local v0, actionBarSwitch:Landroid/widget/Switch;
    instance-of v7, v1, Landroid/preference/PreferenceActivity;

    if-eqz v7, :cond_6

    move-object v6, v1

    .line 384
    check-cast v6, Landroid/preference/PreferenceActivity;

    .line 385
    .local v6, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v7

    if-nez v7, :cond_6

    .line 386
    :cond_5
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070016

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 388
    .local v5, padding:I
    invoke-virtual {v0, v9, v9, v5, v9}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 389
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v12, v12}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 391
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const v9, 0x800015

    invoke-direct {v8, v11, v11, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v7, v0, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 398
    .end local v5           #padding:I
    .end local v6           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_6
    new-instance v7, Lcom/android/OriginalSettings/wifi/WifiEnabler;

    invoke-direct {v7, v1, v0}, Lcom/android/OriginalSettings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    .line 401
    .end local v0           #actionBarSwitch:Landroid/widget/Switch;
    :cond_7
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x1020004

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    .line 402
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 404
    iget-boolean v7, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v7, :cond_8

    .line 405
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 407
    :cond_8
    invoke-virtual {p0, v10}, Lcom/android/OriginalSettings/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    goto/16 :goto_0
.end method

.method onAddNetworkPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1043
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 1044
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V

    .line 1045
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    .line 973
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 974
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->forget()V

    .line 978
    :cond_0
    :goto_0
    return-void

    .line 975
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiDialog;->getController()Lcom/android/OriginalSettings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->submit(Lcom/android/OriginalSettings/wifi/WifiConfigController;)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 560
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-nez v1, :cond_1

    .line 561
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 589
    :cond_0
    :goto_0
    return v0

    .line 563
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 589
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 565
    :pswitch_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 566
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 567
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 570
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    if-nez v1, :cond_3

    .line 572
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 573
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 576
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 581
    :pswitch_1
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 585
    :pswitch_2
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 563
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "firstRun"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSetupWizardMode:Z

    .line 206
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 207
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 539
    instance-of v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v1, :cond_1

    .line 540
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 543
    .local v0, preference:Landroid/preference/Preference;
    instance-of v1, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v1, :cond_1

    .line 544
    check-cast v0, Lcom/android/OriginalSettings/wifi/AccessPoint;

    .end local v0           #preference:Landroid/preference/Preference;
    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 545
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 546
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getLevel()I

    move-result v1

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    if-nez v1, :cond_0

    .line 548
    const/4 v1, 0x7

    const v2, 0x7f080518

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 550
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    if-eq v1, v4, :cond_1

    .line 551
    const/16 v1, 0x8

    const v2, 0x7f080519

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 552
    const/16 v1, 0x9

    const v2, 0x7f08051a

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 556
    :cond_1
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "dialogId"

    .prologue
    const v5, 0x7f08055e

    const v4, 0x7f08055d

    const/4 v2, 0x0

    .line 626
    packed-switch p1, :pswitch_data_0

    .line 684
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 628
    :pswitch_0
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 629
    .local v3, ap:Lcom/android/OriginalSettings/wifi/AccessPoint;
    if-nez v3, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 631
    new-instance v3, Lcom/android/OriginalSettings/wifi/AccessPoint;

    .end local v3           #ap:Lcom/android/OriginalSettings/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v3, v0, v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 633
    .restart local v3       #ap:Lcom/android/OriginalSettings/wifi/AccessPoint;
    iput-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 637
    :cond_0
    iput-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 638
    new-instance v0, Lcom/android/OriginalSettings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgEdit:Z

    iget-boolean v5, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mIbssSupported:Z

    iget-object v6, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSupportedChannels:Ljava/util/List;

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/OriginalSettings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/OriginalSettings/wifi/AccessPoint;ZZLjava/util/List;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    .line 639
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    goto :goto_0

    .line 641
    .end local v3           #ap:Lcom/android/OriginalSettings/wifi/AccessPoint;
    :pswitch_1
    new-instance v0, Lcom/android/OriginalSettings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/android/OriginalSettings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 643
    :pswitch_2
    new-instance v0, Lcom/android/OriginalSettings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/OriginalSettings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 645
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08055f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/OriginalSettings/wifi/WifiSettings$9;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$9;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/OriginalSettings/wifi/WifiSettings$8;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$8;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 664
    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080560

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/OriginalSettings/wifi/WifiSettings$11;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$11;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/OriginalSettings/wifi/WifiSettings$10;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$10;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 626
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const v6, 0x7f0200c9

    const/4 v2, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 439
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 440
    .local v0, wifiIsEnabled:Z
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v1, :cond_0

    .line 442
    const v1, 0x7f080512

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 446
    const v1, 0x7f080510

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 474
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 475
    return-void

    .line 450
    :cond_0
    const v1, 0x7f080512

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 454
    const v1, 0x7f080510

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02006b

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 458
    const/4 v1, 0x6

    const v2, 0x7f080516

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 462
    const v1, 0x7f080514

    invoke-interface {p1, v3, v5, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 465
    iget-boolean v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mP2pSupported:Z

    if-eqz v1, :cond_1

    .line 466
    const/4 v1, 0x3

    const v2, 0x7f080515

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 470
    :cond_1
    const/4 v1, 0x5

    const v2, 0x7f080517

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 212
    iget-boolean v5, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v5, :cond_3

    .line 213
    const v5, 0x7f0400a4

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 214
    .local v4, view:Landroid/view/View;
    const v5, 0x7f0d0193

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 215
    .local v3, other:Landroid/view/View;
    new-instance v5, Lcom/android/OriginalSettings/wifi/WifiSettings$2;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$2;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    const v5, 0x7f0d007c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 224
    .local v0, b:Landroid/widget/ImageButton;
    if-eqz v0, :cond_0

    .line 225
    new-instance v5, Lcom/android/OriginalSettings/wifi/WifiSettings$3;

    invoke-direct {v5, p0, p1, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$3;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;Landroid/view/LayoutInflater;Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 248
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "wifi_show_custom_button"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 249
    const v5, 0x7f0d0196

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 250
    const v5, 0x7f0d0197

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 251
    const v5, 0x7f0d0199

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 252
    const v5, 0x7f0d002d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 254
    const v5, 0x7f0d0198

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 255
    .local v1, customButton:Landroid/widget/Button;
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 256
    new-instance v5, Lcom/android/OriginalSettings/wifi/WifiSettings$4;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/wifi/WifiSettings$4;-><init>(Lcom/android/OriginalSettings/wifi/WifiSettings;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    .end local v1           #customButton:Landroid/widget/Button;
    :cond_1
    const-string v5, "wifi_show_wifi_required_info"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 269
    const v5, 0x7f0d0192

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 274
    .end local v0           #b:Landroid/widget/ImageButton;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #other:Landroid/view/View;
    .end local v4           #view:Landroid/view/View;
    :cond_2
    :goto_0
    return-object v4

    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 494
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 534
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 496
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDialog(I)V

    move v0, v7

    .line 497
    goto :goto_0

    .line 499
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f080577

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    move v0, v7

    .line 508
    goto :goto_0

    .line 506
    :cond_0
    const-class v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 510
    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDialog(I)V

    move v0, v7

    .line 511
    goto :goto_0

    .line 513
    :pswitch_3
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->forceScan()V

    :cond_1
    move v0, v7

    .line 516
    goto :goto_0

    .line 518
    :pswitch_4
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 519
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->onAddNetworkPressed()V

    :cond_2
    move v0, v7

    .line 521
    goto :goto_0

    .line 523
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_3

    .line 524
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f080562

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_2
    move v0, v7

    .line 532
    goto :goto_0

    .line 530
    :cond_3
    const-class v0, Lcom/android/OriginalSettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_2

    .line 494
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 429
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 430
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->pause()V

    .line 433
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 434
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->pause()V

    .line 435
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "screen"
    .parameter "preference"

    .prologue
    .line 594
    instance-of v0, p2, Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 595
    check-cast p2, Lcom/android/OriginalSettings/wifi/AccessPoint;

    .end local p2
    iput-object p2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 597
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget-boolean v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->isIBSS:Z

    if-nez v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 601
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 608
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->showDialog(Lcom/android/OriginalSettings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 606
    .restart local p2
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 412
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 413
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/OriginalSettings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiEnabler;->resume()V

    .line 417
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 418
    iget v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    if-eq v0, v3, :cond_1

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v0, v1, :cond_1

    .line 420
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 422
    :cond_1
    iput v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 424
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 425
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 479
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 482
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDialog:Lcom/android/OriginalSettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    const-string v0, "edit_mode"

    iget-boolean v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgEdit:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 484
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 485
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 486
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 487
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 490
    :cond_0
    return-void
.end method

.method refreshAccessPoints()V
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->resume()V

    .line 1035
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1036
    return-void
.end method

.method resumeWifiScan()V
    .locals 1

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->resume()V

    .line 1072
    :cond_0
    return-void
.end method

.method submit(Lcom/android/OriginalSettings/wifi/WifiConfigController;)V
    .locals 4
    .parameter "configController"

    .prologue
    const/4 v2, -0x1

    .line 982
    invoke-virtual {p1}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 984
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_2

    .line 985
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    if-eq v1, v2, :cond_0

    .line 988
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1003
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1004
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mScanner:Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/wifi/WifiSettings$Scanner;->resume()V

    .line 1006
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 1007
    return-void

    .line 991
    :cond_2
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v1, v2, :cond_3

    .line 992
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 993
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 996
    :cond_3
    invoke-virtual {p1}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->isEdit()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 997
    :cond_4
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 999
    :cond_5
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method
