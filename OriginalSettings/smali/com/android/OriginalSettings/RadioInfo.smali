.class public Lcom/android/OriginalSettings/RadioInfo;
.super Landroid/app/Activity;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/RadioInfo$23;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private attempts:Landroid/widget/TextView;

.field private callState:Landroid/widget/TextView;

.field private dBm:Landroid/widget/TextView;

.field private disconnects:Landroid/widget/TextView;

.field private dnsCheckState:Landroid/widget/TextView;

.field private dnsCheckToggleButton:Landroid/widget/Button;

.field private gprsState:Landroid/widget/TextView;

.field private gsmState:Landroid/widget/TextView;

.field private imsRegRequiredButton:Landroid/widget/Button;

.field private lteRamDumpButton:Landroid/widget/Button;

.field private mCellInfo:Landroid/widget/TextView;

.field private mCellInfoValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCfi:Landroid/widget/TextView;

.field private mCfiValue:Z

.field private mDeviceId:Landroid/widget/TextView;

.field mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

.field private mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mHttpClientTest:Landroid/widget/TextView;

.field private mHttpClientTestResult:Ljava/lang/String;

.field mImsRegRequiredHandler:Landroid/view/View$OnClickListener;

.field private mLocation:Landroid/widget/TextView;

.field mLteRamDumpHandler:Landroid/view/View$OnClickListener;

.field private mMwi:Landroid/widget/TextView;

.field private mMwiValue:Z

.field private mNeighboringCids:Landroid/widget/TextView;

.field mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field mPingButtonHandler:Landroid/view/View$OnClickListener;

.field private mPingHostname:Landroid/widget/TextView;

.field private mPingHostnameResult:Ljava/lang/String;

.field private mPingIpAddr:Landroid/widget/TextView;

.field private mPingIpAddrResult:Ljava/lang/String;

.field mPowerButtonHandler:Landroid/view/View$OnClickListener;

.field mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPreferredNetworkLabels:[Ljava/lang/String;

.field mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

.field private mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mSmsOverImsHandler:Landroid/view/View$OnClickListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

.field private mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private network:Landroid/widget/TextView;

.field private number:Landroid/widget/TextView;

.field private oemInfoButton:Landroid/widget/Button;

.field private operatorName:Landroid/widget/TextView;

.field private phone:Lcom/android/internal/telephony/Phone;

.field private pingTestButton:Landroid/widget/Button;

.field private preferredNetworkType:Landroid/widget/Spinner;

.field private radioPowerButton:Landroid/widget/Button;

.field private received:Landroid/widget/TextView;

.field private refreshSmscButton:Landroid/widget/Button;

.field private resets:Landroid/widget/TextView;

.field private roamingState:Landroid/widget/TextView;

.field private sent:Landroid/widget/TextView;

.field private sentSinceReceived:Landroid/widget/TextView;

.field private smsOverImsButton:Landroid/widget/Button;

.field private smsc:Landroid/widget/EditText;

.field private successes:Landroid/widget/TextView;

.field private updateSmscButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    const-string v0, "phone"

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->TAG:Ljava/lang/String;

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 143
    iput-boolean v2, p0, Lcom/android/OriginalSettings/RadioInfo;->mMwiValue:Z

    .line 144
    iput-boolean v2, p0, Lcom/android/OriginalSettings/RadioInfo;->mCfiValue:Z

    .line 147
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$1;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 186
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$2;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mHandler:Landroid/os/Handler;

    .line 842
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$7;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$7;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 857
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$8;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$8;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 872
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$9;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$9;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 888
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$10;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$10;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 895
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$11;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$11;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 904
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$12;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$12;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 924
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$13;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$13;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPowerButtonHandler:Landroid/view/View$OnClickListener;

    .line 933
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$14;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$14;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mImsRegRequiredHandler:Landroid/view/View$OnClickListener;

    .line 959
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$15;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$15;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mSmsOverImsHandler:Landroid/view/View$OnClickListener;

    .line 984
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$16;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$16;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mLteRamDumpHandler:Landroid/view/View$OnClickListener;

    .line 1007
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$17;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$17;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

    .line 1014
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$18;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$18;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

    .line 1027
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$19;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$19;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    .line 1033
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$20;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$20;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

    .line 1041
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$21;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$21;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

    .line 1047
    new-instance v0, Lcom/android/OriginalSettings/RadioInfo$22;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/RadioInfo$22;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1060
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "WCDMA preferred"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "GSM only"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "WCDMA only"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GSM auto (PRL)"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "CDMA only"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EvDo only"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GSM/CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "LTE/CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "LTE/GSM auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "LTE/GSM/CDMA auto (PRL)"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "LTE only"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateDataState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateDataStats()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/OriginalSettings/RadioInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/OriginalSettings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateCellInfoTv()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updatePhoneState()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateServiceState()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updatePowerState()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/OriginalSettings/RadioInfo;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/OriginalSettings/RadioInfo;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/OriginalSettings/RadioInfo;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/OriginalSettings/RadioInfo;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/RadioInfo;->updateNeighboringCids(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updatePdpList()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/OriginalSettings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/OriginalSettings/RadioInfo;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->smsc:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/OriginalSettings/RadioInfo;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/OriginalSettings/RadioInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/OriginalSettings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/OriginalSettings/RadioInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/OriginalSettings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/OriginalSettings/RadioInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/OriginalSettings/RadioInfo;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->pingIpAddr()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->pingHostname()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->httpClientTest()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/OriginalSettings/RadioInfo;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/OriginalSettings/RadioInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->isRadioOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/OriginalSettings/RadioInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->isImsRegRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateImsRegRequiredState()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/OriginalSettings/RadioInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->isSmsOverImsEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateSmsOverImsState()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/OriginalSettings/RadioInfo;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->isLteRamDumpEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateLteRamDumpState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateDataStats2()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateDnsCheckState()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updatePingState()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/OriginalSettings/RadioInfo;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->refreshSmsc()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/RadioInfo;Landroid/telephony/CellLocation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/OriginalSettings/RadioInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/OriginalSettings/RadioInfo;->mMwiValue:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateMessageWaiting()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/OriginalSettings/RadioInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/OriginalSettings/RadioInfo;->mCfiValue:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/RadioInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateCallRedirect()V

    return-void
.end method

.method private httpClientTest()V
    .locals 4

    .prologue
    .line 735
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 737
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    const-string v2, "http://www.google.com"

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 738
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 739
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 740
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    .line 744
    :goto_0
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 748
    :goto_1
    return-void

    .line 742
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail: Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 745
    :catch_0
    move-exception v0

    .line 746
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    goto :goto_1
.end method

.method private isImsRegRequired()Z
    .locals 2

    .prologue
    .line 946
    const-string v0, "persist.radio.imsregrequired"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isLteRamDumpEnabled()Z
    .locals 2

    .prologue
    .line 996
    const-string v0, "persist.radio.ramdump"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isRadioOn()Z
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSmsOverImsEnabled()Z
    .locals 2

    .prologue
    .line 971
    const-string v0, "persist.radio.imsallowmtsms"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private final pingHostname()V
    .locals 2

    .prologue
    .line 715
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "ping -c 1 www.google.com"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 716
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 717
    if-nez v0, :cond_0

    .line 718
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    .line 729
    :goto_0
    return-void

    .line 720
    :cond_0
    const-string v0, "Fail: Host unreachable"

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 722
    :catch_0
    move-exception v0

    .line 723
    const-string v0, "Fail: Unknown Host"

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0

    .line 724
    :catch_1
    move-exception v0

    .line 725
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0

    .line 726
    :catch_2
    move-exception v0

    .line 727
    const-string v0, "Fail: InterruptedException"

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private final pingIpAddr()V
    .locals 4

    .prologue
    .line 695
    :try_start_0
    const-string v0, "74.125.47.104"

    .line 696
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ping -c 1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 697
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 698
    if-nez v0, :cond_0

    .line 699
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    .line 708
    :goto_0
    return-void

    .line 701
    :cond_0
    const-string v0, "Fail: IP addr not reachable"

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 703
    :catch_0
    move-exception v0

    .line 704
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_0

    .line 705
    :catch_1
    move-exception v0

    .line 706
    const-string v0, "Fail: InterruptedException"

    iput-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private refreshSmsc()V
    .locals 3

    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 752
    return-void
.end method

.method private final updateCallRedirect()V
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mCfi:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mCfiValue:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    return-void
.end method

.method private final updateCellInfoTv()V
    .locals 5

    .prologue
    .line 528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 529
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 530
    const/4 v0, 0x0

    .line 531
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 532
    const/16 v4, 0x5b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 533
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 534
    const-string v4, "]="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    add-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 537
    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    move v1, v0

    goto :goto_0

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    return-void
.end method

.method private final updateDataState()V
    .locals 3

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 610
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 611
    const v0, 0x7f08035d

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 613
    packed-switch v1, :pswitch_data_0

    .line 628
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->gprsState:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    return-void

    .line 615
    :pswitch_0
    const v0, 0x7f08035b

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 618
    :pswitch_1
    const v0, 0x7f08035a

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 621
    :pswitch_2
    const v0, 0x7f080359

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 624
    :pswitch_3
    const v0, 0x7f08035c

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 613
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final updateDataStats()V
    .locals 2

    .prologue
    .line 657
    const-string v0, "net.gsm.radio-reset"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 658
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->resets:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    const-string v0, "net.gsm.attempt-gprs"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 661
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->attempts:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    const-string v0, "net.gsm.succeed-gprs"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 664
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->successes:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    const-string v0, "net.ppp.reset-by-timeout"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 670
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->sentSinceReceived:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    return-void
.end method

.method private final updateDataStats2()V
    .locals 12

    .prologue
    .line 674
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 676
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v1

    .line 677
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v3

    .line 678
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v5

    .line 679
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v7

    .line 681
    const v9, 0x7f08035e

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 682
    const v10, 0x7f08035f

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 684
    iget-object v10, p0, Lcom/android/OriginalSettings/RadioInfo;->sent:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->received:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    return-void
.end method

.method private updateDnsCheckState()V
    .locals 2

    .prologue
    .line 441
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->dnsCheckState:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0.0.0.0 allowed"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    return-void

    .line 441
    :cond_0
    const-string v0, "0.0.0.0 not allowed"

    goto :goto_0
.end method

.method private updateImsRegRequiredState()V
    .locals 3

    .prologue
    .line 950
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImsRegRequiredState isImsRegRequired()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->isImsRegRequired()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->isImsRegRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080349

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 954
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->imsRegRequiredButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 955
    return-void

    .line 951
    :cond_0
    const v0, 0x7f080348

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final updateLocation(Landroid/telephony/CellLocation;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, -0x1

    .line 472
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 473
    instance-of v0, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_2

    .line 474
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .line 475
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    .line 476
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    .line 477
    iget-object v3, p0, Lcom/android/OriginalSettings/RadioInfo;->mLocation:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f080362

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v0, v8, :cond_0

    const-string v0, "unknown"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "   "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v4, 0x7f080363

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v2, v8, :cond_1

    const-string v0, "unknown"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    :goto_2
    return-void

    .line 477
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 482
    :cond_2
    instance-of v0, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v0, :cond_8

    .line 483
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 484
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .line 485
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v1

    .line 486
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v2

    .line 487
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v3

    .line 488
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v4

    .line 489
    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mLocation:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v0, v8, :cond_3

    const-string v0, "unknown"

    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "   "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "SID = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v1, v8, :cond_4

    const-string v0, "unknown"

    :goto_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v2, v8, :cond_5

    const-string v0, "unknown"

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LAT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v3, v8, :cond_6

    const-string v0, "unknown"

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LONG = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v4, v8, :cond_7

    const-string v0, "unknown"

    :goto_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 504
    :cond_8
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mLocation:Landroid/widget/TextView;

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private updateLteRamDumpState()V
    .locals 3

    .prologue
    .line 1000
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLteRamDumpState isLteRamDumpEnabled()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->isLteRamDumpEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->isLteRamDumpEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f08034b

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1004
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->lteRamDumpButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1005
    return-void

    .line 1001
    :cond_0
    const v0, 0x7f08034a

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final updateMessageWaiting()V
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mMwi:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mMwiValue:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    return-void
.end method

.method private final updateNeighboringCids(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 513
    if-eqz p1, :cond_2

    .line 514
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    const-string v0, "no neighboring cells"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    return-void

    .line 517
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    .line 518
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 522
    :cond_2
    const-string v0, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private final updateNetworkType()V
    .locals 3

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 633
    const-string v1, "gsm.network.type"

    const v2, 0x7f08035d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 636
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->network:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    return-void
.end method

.method private final updatePdpList()V
    .locals 2

    .prologue
    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "========DATA=======\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 839
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->disconnects:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 840
    return-void
.end method

.method private final updatePhoneState()V
    .locals 4

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    .line 589
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 590
    const v0, 0x7f08035d

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 592
    sget-object v3, Lcom/android/OriginalSettings/RadioInfo$23;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 604
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->callState:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    return-void

    .line 594
    :pswitch_0
    const v0, 0x7f080356

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 597
    :pswitch_1
    const v0, 0x7f080357

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 600
    :pswitch_2
    const v0, 0x7f080358

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 592
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final updatePingState()V
    .locals 3

    .prologue
    const v2, 0x7f08035d

    .line 755
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 757
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    .line 758
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    .line 759
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    .line 761
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/OriginalSettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    new-instance v1, Lcom/android/OriginalSettings/RadioInfo$3;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/RadioInfo$3;-><init>(Lcom/android/OriginalSettings/RadioInfo;)V

    .line 772
    new-instance v2, Lcom/android/OriginalSettings/RadioInfo$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/OriginalSettings/RadioInfo$4;-><init>(Lcom/android/OriginalSettings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 779
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 781
    new-instance v2, Lcom/android/OriginalSettings/RadioInfo$5;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/OriginalSettings/RadioInfo$5;-><init>(Lcom/android/OriginalSettings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 788
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 790
    new-instance v2, Lcom/android/OriginalSettings/RadioInfo$6;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/OriginalSettings/RadioInfo$6;-><init>(Lcom/android/OriginalSettings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 797
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 798
    return-void
.end method

.method private updatePowerState()V
    .locals 2

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->isRadioOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f080345

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, buttonText:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 438
    return-void

    .line 434
    .end local v0           #buttonText:Ljava/lang/String;
    :cond_0
    const v1, 0x7f080344

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final updateProperties()V
    .locals 4

    .prologue
    const v3, 0x7f08035d

    .line 642
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 644
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 645
    if-nez v0, :cond_0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 646
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/RadioInfo;->mDeviceId:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 650
    if-nez v0, :cond_1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 651
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->number:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    return-void
.end method

.method private final updateServiceState()V
    .locals 4

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 558
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 559
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 560
    const v0, 0x7f08035d

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 562
    packed-switch v2, :pswitch_data_0

    .line 575
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/RadioInfo;->gsmState:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->roamingState:Landroid/widget/TextView;

    const v2, 0x7f080354

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 583
    :goto_1
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->operatorName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    return-void

    .line 564
    :pswitch_0
    const v0, 0x7f080350

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 568
    :pswitch_1
    const v0, 0x7f080352

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 571
    :pswitch_2
    const v0, 0x7f080353

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->roamingState:Landroid/widget/TextView;

    const v2, 0x7f080355

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 562
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final updateSignalStrength()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 449
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 450
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 452
    const/4 v2, 0x1

    if-eq v2, v0, :cond_0

    const/4 v2, 0x3

    if-ne v2, v0, :cond_1

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->dBm:Landroid/widget/TextView;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v0

    .line 459
    if-ne v4, v0, :cond_2

    move v0, v1

    .line 461
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v2

    .line 463
    if-ne v4, v2, :cond_3

    .line 465
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/RadioInfo;->dBm:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v4, 0x7f080360

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "   "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f080361

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    return-void

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private updateSmsOverImsState()V
    .locals 3

    .prologue
    .line 975
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSmsOverImsState isSmsOverImsEnabled()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->isSmsOverImsEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->isSmsOverImsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080347

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 979
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->smsOverImsButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 980
    return-void

    .line 976
    :cond_0
    const v0, 0x7f080346

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/RadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    .line 256
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 258
    const v4, 0x7f040092

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->setContentView(I)V

    .line 260
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 261
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 263
    const v4, 0x7f0d014e

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mDeviceId:Landroid/widget/TextView;

    .line 264
    const v4, 0x7f0d014f

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->number:Landroid/widget/TextView;

    .line 265
    const v4, 0x7f0d015f

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->callState:Landroid/widget/TextView;

    .line 266
    const v4, 0x7f0d0150

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->operatorName:Landroid/widget/TextView;

    .line 267
    const v4, 0x7f0d0159

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->roamingState:Landroid/widget/TextView;

    .line 268
    const v4, 0x7f0d015a

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->gsmState:Landroid/widget/TextView;

    .line 269
    const v4, 0x7f0d015b

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->gprsState:Landroid/widget/TextView;

    .line 270
    const v4, 0x7f0d015c

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->network:Landroid/widget/TextView;

    .line 271
    const v4, 0x7f0d0155

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->dBm:Landroid/widget/TextView;

    .line 272
    const v4, 0x7f0d015d

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mMwi:Landroid/widget/TextView;

    .line 273
    const v4, 0x7f0d015e

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mCfi:Landroid/widget/TextView;

    .line 274
    const v4, 0x7f0d0156

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mLocation:Landroid/widget/TextView;

    .line 275
    const v4, 0x7f0d0157

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    .line 276
    const v4, 0x7f0d0158

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    .line 278
    const v4, 0x7f0d0160

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->resets:Landroid/widget/TextView;

    .line 279
    const v4, 0x7f0d0161

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->attempts:Landroid/widget/TextView;

    .line 280
    const v4, 0x7f0d0162

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->successes:Landroid/widget/TextView;

    .line 281
    const v4, 0x7f0d0163

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->disconnects:Landroid/widget/TextView;

    .line 282
    const v4, 0x7f0d0166

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->sentSinceReceived:Landroid/widget/TextView;

    .line 283
    const v4, 0x7f0d0164

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->sent:Landroid/widget/TextView;

    .line 284
    const v4, 0x7f0d0165

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->received:Landroid/widget/TextView;

    .line 285
    const v4, 0x7f0d016f

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->smsc:Landroid/widget/EditText;

    .line 286
    const v4, 0x7f0d0171

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->dnsCheckState:Landroid/widget/TextView;

    .line 288
    const v4, 0x7f0d0152

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;

    .line 289
    const v4, 0x7f0d0153

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingHostname:Landroid/widget/TextView;

    .line 290
    const v4, 0x7f0d0154

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    .line 292
    const v4, 0x7f0d0167

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    .line 293
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    invoke-direct {v0, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 295
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 296
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 297
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 299
    const v4, 0x7f0d0168

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    .line 300
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->radioPowerButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mPowerButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    const v4, 0x7f0d0169

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->imsRegRequiredButton:Landroid/widget/Button;

    .line 303
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->imsRegRequiredButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mImsRegRequiredHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    const v4, 0x7f0d016a

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->smsOverImsButton:Landroid/widget/Button;

    .line 306
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->smsOverImsButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mSmsOverImsHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    const v4, 0x7f0d016b

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->lteRamDumpButton:Landroid/widget/Button;

    .line 309
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->lteRamDumpButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mLteRamDumpHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    const v4, 0x7f0d0151

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->pingTestButton:Landroid/widget/Button;

    .line 312
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->pingTestButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    const v4, 0x7f0d016d

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    .line 314
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    const v4, 0x7f0d016e

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->refreshSmscButton:Landroid/widget/Button;

    .line 316
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->refreshSmscButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    const v4, 0x7f0d0170

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->dnsCheckToggleButton:Landroid/widget/Button;

    .line 318
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->dnsCheckToggleButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    const v4, 0x7f0d0172

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    .line 321
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    invoke-virtual {p0}, Lcom/android/OriginalSettings/RadioInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 323
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.OriginalSettings.OEM_RADIO_INFO"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    .local v1, oemInfoIntent:Landroid/content/Intent;
    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 325
    .local v2, oemInfoIntentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 326
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 329
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 330
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 331
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v5, 0x12c

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 332
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyPhoneCallState(I)V

    .line 334
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 336
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/OriginalSettings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3ea

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    .line 339
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    .line 342
    iget-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/OriginalSettings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    .line 343
    const-string v4, "phone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[RadioInfo] onCreate: mCellInfoValue="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/OriginalSettings/RadioInfo;->mCellInfoValue:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 390
    const v0, 0x7f0803f2

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x62

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 393
    const v0, 0x7f08034c

    invoke-interface {p1, v3, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 395
    const/4 v0, 0x2

    const v1, 0x7f08034d

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 397
    const/4 v0, 0x3

    const v1, 0x7f08034e

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 399
    const/4 v0, 0x4

    const v1, 0x7f08034f

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mGetPdpList:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 401
    const/4 v0, 0x5

    const-string v1, "Disable data connection"

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 403
    return v3
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 380
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 382
    const-string v0, "phone"

    const-string v1, "[RadioInfo] onPause: unregister phone & data intents"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 385
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 386
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    .line 409
    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 410
    .local v0, item:Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/android/OriginalSettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 411
    .local v1, state:I
    const/4 v2, 0x1

    .line 413
    .local v2, visible:Z
    packed-switch v1, :pswitch_data_0

    .line 422
    :pswitch_0
    const/4 v2, 0x0

    .line 425
    :goto_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 426
    const/4 v3, 0x1

    return v3

    .line 416
    :pswitch_1
    const-string v3, "Disable data connection"

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 419
    :pswitch_2
    const-string v3, "Enable data connection"

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 413
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 348
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 350
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updatePhoneState()V

    .line 351
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateSignalStrength()V

    .line 352
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateMessageWaiting()V

    .line 353
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateCallRedirect()V

    .line 354
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateServiceState()V

    .line 355
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V

    .line 356
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateDataState()V

    .line 357
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateDataStats()V

    .line 358
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateDataStats2()V

    .line 359
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updatePowerState()V

    .line 360
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateImsRegRequiredState()V

    .line 361
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateSmsOverImsState()V

    .line 362
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateLteRamDumpState()V

    .line 363
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateProperties()V

    .line 364
    invoke-direct {p0}, Lcom/android/OriginalSettings/RadioInfo;->updateDnsCheckState()V

    .line 366
    const-string v0, "phone"

    const-string v1, "[RadioInfo] onResume: register phone & data intents"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 369
    iget-object v0, p0, Lcom/android/OriginalSettings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x4dc

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 376
    return-void
.end method
