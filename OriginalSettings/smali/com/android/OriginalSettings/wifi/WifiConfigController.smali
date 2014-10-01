.class public Lcom/android/OriginalSettings/wifi/WifiConfigController;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private final mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

.field private mAccessPointSecurity:I

.field private final mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field private mEdit:Z

.field private mGatewayView:Landroid/widget/TextView;

.field private mIbssFreqSpinner:Landroid/widget/Spinner;

.field private mIbssSupported:Z

.field private mIbssView:Landroid/widget/CheckBox;

.field private final mInXlSetupWizard:Z

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mPasswordView:Landroid/widget/TextView;

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field private mSelectedIbssChannelPos:I

.field private mSsidView:Landroid/widget/TextView;

.field private mSupportedIbssChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextViewChangedHandler:Landroid/os/Handler;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/OriginalSettings/wifi/AccessPoint;ZZLjava/util/List;)V
    .locals 22
    .parameter "parent"
    .parameter "view"
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "ibssSupported"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;",
            "Landroid/view/View;",
            "Lcom/android/OriginalSettings/wifi/AccessPoint;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p6, chans:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 127
    sget-object v18, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 128
    sget-object v18, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 129
    new-instance v18, Landroid/net/LinkProperties;

    invoke-direct/range {v18 .. v18}, Landroid/net/LinkProperties;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    .line 155
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    .line 156
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigUiForSetupWizardXL;

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    .line 158
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    .line 159
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    .line 160
    if-nez p3, :cond_1

    const/16 v18, 0x0

    :goto_0
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 162
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEdit:Z

    .line 163
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIbssSupported:Z

    .line 165
    new-instance v18, Landroid/os/Handler;

    invoke-direct/range {v18 .. v18}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 167
    .local v7, context:Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 169
    .local v14, resources:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0d0207

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0d0200

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0d0218

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIbssView:Landroid/widget/CheckBox;

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIbssView:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0d021b

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIbssFreqSpinner:Landroid/widget/Spinner;

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-object/from16 v18, v0

    if-nez v18, :cond_7

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    const v19, 0x7f080510

    invoke-interface/range {v18 .. v19}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->setTitle(I)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0d01e8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0d01e9

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 184
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0d01ef

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0d01f5

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 189
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v18, 0x7f0400c2

    const v19, 0x1020014

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0c0013

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v4, v7, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 192
    .local v4, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 197
    .end local v4           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 198
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->showProxyFields()V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0d0214

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0d0215

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIbssSupported:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0d0217

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 205
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSupportedIbssChannels:Ljava/util/List;

    .line 206
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v9, freqSpinnerList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiChannel;

    .line 209
    .local v5, c:Landroid/net/wifi/WifiChannel;
    iget-boolean v0, v5, Landroid/net/wifi/WifiChannel;->ibssAllowed:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSupportedIbssChannels:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const v19, 0x7f080310

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v5, Landroid/net/wifi/WifiChannel;->channel:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v5, Landroid/net/wifi/WifiChannel;->frequency:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f080311

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 160
    .end local v5           #c:Landroid/net/wifi/WifiChannel;
    .end local v7           #context:Landroid/content/Context;
    .end local v9           #freqSpinnerList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v14           #resources:Landroid/content/res/Resources;
    :cond_1
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->security:I

    move/from16 v18, v0

    goto/16 :goto_0

    .line 194
    .restart local v7       #context:Landroid/content/Context;
    .restart local v14       #resources:Landroid/content/res/Resources;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0d01c2

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 218
    .restart local v9       #freqSpinnerList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_3
    new-instance v8, Landroid/widget/ArrayAdapter;

    const v18, 0x1090008

    move/from16 v0, v18

    invoke-direct {v8, v7, v0, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 220
    .local v8, freqAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v18, 0x1090009

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIbssFreqSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIbssFreqSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 225
    .end local v8           #freqAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v9           #freqSpinnerList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    const v19, 0x7f08055a

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 307
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    const v19, 0x7f08055c

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v18

    if-eqz v18, :cond_6

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 311
    :cond_6
    return-void

    .line 227
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0d01e7

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 231
    .local v10, group:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->isIBSS:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 232
    const v18, 0x7f08005f

    const v19, 0x7f080060

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v10, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 233
    const v18, 0x7f08030f

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->frequency:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f080311

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v10, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 238
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    .line 239
    .local v17, state:Landroid/net/NetworkInfo$DetailedState;
    if-eqz v17, :cond_9

    .line 240
    const v18, 0x7f080531

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/OriginalSettings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v10, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 243
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getLevel()I

    move-result v13

    .line 244
    .local v13, level:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_a

    .line 245
    const v18, 0x7f0c0019

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 246
    .local v16, signal:[Ljava/lang/String;
    const v18, 0x7f080530

    aget-object v19, v16, v13

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v10, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 249
    .end local v16           #signal:[Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v12

    .line 250
    .local v12, info:Landroid/net/wifi/WifiInfo;
    if-eqz v12, :cond_b

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    .line 251
    const v18, 0x7f080532

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "Mbps"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v10, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 254
    :cond_b
    const v18, 0x7f08052f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v10, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v15, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->isIBSS:Z

    .line 258
    .local v15, showAdvancedFields:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 260
    .local v6, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v18, v0

    sget-object v19, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    .line 262
    const/4 v15, 0x1

    .line 267
    :goto_4
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 268
    .local v3, a:Ljava/net/InetAddress;
    const v18, 0x7f080533

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v10, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_5

    .line 264
    .end local v3           #a:Ljava/net/InetAddress;
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    .line 272
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_d
    iget-object v0, v6, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v18, v0

    sget-object v19, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    .line 274
    const/4 v15, 0x1

    .line 280
    .end local v6           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_e
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v18, v0

    if-eqz v18, :cond_10

    .line 281
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->showSecurityFields()V

    .line 282
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 283
    invoke-direct/range {p0 .. p0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->showProxyFields()V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0d0214

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0d0215

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    if-eqz v15, :cond_10

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0d0215

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0d0216

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 292
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v18, v0

    if-eqz v18, :cond_12

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    const v19, 0x7f08055a

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 276
    .restart local v6       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_6

    .line 295
    .end local v6           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v11           #i$:Ljava/util/Iterator;
    :cond_12
    if-nez v17, :cond_14

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->isIBSS:Z

    move/from16 v18, v0

    if-eqz v18, :cond_14

    .line 296
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    const v19, 0x7f080556

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 300
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    move-object/from16 v18, v0

    const v19, 0x7f080558

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 298
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0d0206

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .parameter "group"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 314
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400bc

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 315
    .local v0, row:Landroid/view/View;
    const v1, 0x7f0d0077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 316
    const v1, 0x7f0d00fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 318
    return-void
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 451
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->clear()V

    .line 452
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    if-ne v7, v9, :cond_0

    sget-object v7, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_0
    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 456
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v10, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v7, v10, :cond_1

    .line 457
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->validateIpConfigFields(Landroid/net/LinkProperties;)I

    move-result v6

    .line 458
    .local v6, result:I
    if-eqz v6, :cond_1

    move v7, v8

    .line 486
    .end local v6           #result:I
    :goto_1
    return v7

    .line 452
    :cond_0
    sget-object v7, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_0

    .line 463
    :cond_1
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    if-ne v7, v9, :cond_3

    sget-object v7, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    :goto_2
    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 467
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v10, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v7, v10, :cond_2

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v7, :cond_2

    .line 468
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 469
    .local v2, host:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 470
    .local v4, portStr:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, exclusionList:Ljava/lang/String;
    const/4 v3, 0x0

    .line 472
    .local v3, port:I
    const/4 v6, 0x0

    .line 474
    .restart local v6       #result:I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 475
    invoke-static {v2, v4, v1}, Lcom/android/OriginalSettings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 479
    :goto_3
    if-nez v6, :cond_4

    .line 480
    new-instance v5, Landroid/net/ProxyProperties;

    invoke-direct {v5, v2, v3, v1}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 481
    .local v5, proxyProperties:Landroid/net/ProxyProperties;
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7, v5}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .end local v1           #exclusionList:Ljava/lang/String;
    .end local v2           #host:Ljava/lang/String;
    .end local v3           #port:I
    .end local v4           #portStr:Ljava/lang/String;
    .end local v5           #proxyProperties:Landroid/net/ProxyProperties;
    .end local v6           #result:I
    :cond_2
    move v7, v9

    .line 486
    goto :goto_1

    .line 463
    :cond_3
    sget-object v7, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto :goto_2

    .line 476
    .restart local v1       #exclusionList:Ljava/lang/String;
    .restart local v2       #host:Ljava/lang/String;
    .restart local v3       #port:I
    .restart local v4       #portStr:Ljava/lang/String;
    .restart local v6       #result:I
    :catch_0
    move-exception v0

    .line 477
    .local v0, e:Ljava/lang/NumberFormatException;
    const v6, 0x7f0803dc

    goto :goto_3

    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_4
    move v7, v8

    .line 483
    goto :goto_1
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 742
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 743
    const v0, 0x7f08053f

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 745
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 746
    if-eqz v3, :cond_0

    array-length v0, v3

    if-nez v0, :cond_1

    .line 747
    :cond_0
    new-array v0, v5, [Ljava/lang/String;

    aput-object v2, v0, v4

    .line 755
    :goto_0
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v2, v1, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 757
    const v0, 0x1090009

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 758
    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 759
    return-void

    .line 749
    :cond_1
    array-length v0, v3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 750
    aput-object v2, v0, v4

    .line 751
    array-length v2, v3

    invoke-static {v3, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private numericToInet4Address(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 3
    .parameter "addrString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 492
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 493
    .local v0, inetAddr:Ljava/net/InetAddress;
    instance-of v1, v0, Ljava/net/Inet6Address;

    if-eqz v1, :cond_0

    .line 494
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Sorry, IPv4 only"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 496
    :cond_0
    return-object v0
.end method

.method static requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 8
    .parameter "config"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 137
    if-nez p0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v5

    .line 140
    :cond_1
    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->key_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    move v5, v6

    .line 141
    goto :goto_0

    .line 143
    :cond_2
    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/String;

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    iget-object v7, p0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 144
    .local v4, values:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 145
    .local v3, value:Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v7, "keystore://"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v5, v6

    .line 146
    goto :goto_0

    .line 144
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "spinner"
    .parameter "prefix"
    .parameter "cert"

    .prologue
    .line 762
    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 765
    :cond_0
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .parameter "spinner"
    .parameter "value"

    .prologue
    .line 768
    if-eqz p2, :cond_0

    .line 770
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 771
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 772
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 773
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 778
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #i:I
    :cond_0
    return-void

    .line 771
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private showIpConfigFields()V
    .locals 5

    .prologue
    const v4, 0x7f0d0208

    const/4 v3, 0x0

    .line 652
    const/4 v0, 0x0

    .line 654
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0d0206

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 656
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    .line 657
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 660
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 661
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 662
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0d0209

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    .line 664
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 665
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0d020a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    .line 666
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 667
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0d020b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 669
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 670
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0d020c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    .line 671
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 672
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0d020d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    .line 673
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 675
    :cond_0
    if-eqz v1, :cond_5

    .line 676
    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 677
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 678
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 679
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 680
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    :cond_1
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 686
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 687
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    :cond_3
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 693
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 694
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 697
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 703
    :cond_5
    :goto_1
    return-void

    .line 701
    :cond_6
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_7
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private showProxyFields()V
    .locals 7

    .prologue
    const v6, 0x7f0d0202

    const v5, 0x7f0d0201

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 706
    const/4 v0, 0x0

    .line 708
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0d01fe

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 710
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 711
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 714
    :goto_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 715
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 716
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 717
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0d0203

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    .line 719
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 720
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0d0204

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    .line 721
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 722
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0d0205

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 723
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 725
    :cond_0
    if-eqz v1, :cond_1

    .line 726
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v0

    .line 727
    if-eqz v0, :cond_1

    .line 728
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    :cond_1
    :goto_1
    return-void

    .line 734
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 735
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private showSecurityFields()V
    .locals 8

    .prologue
    const v7, 0x7f0d01f2

    const/4 v6, 0x3

    const/4 v3, -0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 574
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    iget v2, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    invoke-virtual {v0, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiSettingsForSetupWizardXL;->initSecurityFields(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 649
    :goto_0
    return-void

    .line 581
    :cond_0
    iget v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 587
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 588
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d00ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    .line 589
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 590
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d01eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    if-eq v0, v3, :cond_2

    .line 593
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const v1, 0x7f08053e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 597
    :cond_2
    iget v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-eq v0, v6, :cond_3

    .line 598
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d01f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 601
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d01f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 603
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_4

    .line 604
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d01f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 605
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 606
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d01f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 607
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d01fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 608
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d01fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 609
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d01fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    .line 610
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d01fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    .line 612
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v1, "CACERT_"

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v1, "USRPKEY_"

    invoke-direct {p0, v0, v1}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    if-eq v0, v3, :cond_4

    .line 616
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 617
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 619
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    .line 620
    if-eqz v1, :cond_5

    const-string v2, "auth="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 621
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const-string v3, "auth="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 626
    :goto_1
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v2, "keystore://CACERT_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v2, "USRPKEY_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->key_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d020e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 636
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d0212

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 638
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v6, :cond_6

    .line 639
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d020f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 640
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d0210

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 641
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d0211

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 642
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d0213

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 623
    :cond_5
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-direct {p0, v2, v1}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 644
    :cond_6
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d020f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 645
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d0210

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 646
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d0211

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 647
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d0213

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private validateIpConfigFields(Landroid/net/LinkProperties;)I
    .locals 13
    .parameter "linkProperties"

    .prologue
    .line 500
    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v10, :cond_0

    const/4 v10, 0x0

    .line 570
    :goto_0
    return v10

    .line 502
    :cond_0
    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 503
    .local v7, ipAddr:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    const v10, 0x7f08056b

    goto :goto_0

    .line 505
    :cond_1
    const/4 v6, 0x0

    .line 507
    .local v6, inetAddr:Ljava/net/InetAddress;
    :try_start_0
    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->numericToInet4Address(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 512
    const/4 v9, -0x1

    .line 514
    .local v9, networkPrefixLength:I
    :try_start_1
    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 515
    if-ltz v9, :cond_2

    const/16 v10, 0x20

    if-le v9, v10, :cond_3

    .line 516
    :cond_2
    const v10, 0x7f08056e

    goto :goto_0

    .line 508
    .end local v9           #networkPrefixLength:I
    :catch_0
    move-exception v3

    .line 509
    .local v3, e:Ljava/lang/IllegalArgumentException;
    const v10, 0x7f08056b

    goto :goto_0

    .line 518
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    .restart local v9       #networkPrefixLength:I
    :cond_3
    new-instance v10, Landroid/net/LinkAddress;

    invoke-direct {v10, v6, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v10}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 525
    :goto_1
    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 526
    .local v4, gateway:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 529
    :try_start_2
    invoke-static {v6, v9}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v8

    .line 530
    .local v8, netPart:Ljava/net/InetAddress;
    invoke-virtual {v8}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 531
    .local v0, addr:[B
    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x1

    aput-byte v11, v0, v10

    .line 532
    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_5

    .line 546
    .end local v0           #addr:[B
    .end local v8           #netPart:Ljava/net/InetAddress;
    :goto_2
    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 547
    .local v1, dns:Ljava/lang/String;
    const/4 v2, 0x0

    .line 549
    .local v2, dnsAddr:Ljava/net/InetAddress;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 551
    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    invoke-interface {v11}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f080570

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    :goto_3
    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 562
    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 564
    :try_start_3
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->numericToInet4Address(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v2

    .line 568
    invoke-virtual {p1, v2}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 570
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 519
    .end local v1           #dns:Ljava/lang/String;
    .end local v2           #dnsAddr:Ljava/net/InetAddress;
    .end local v4           #gateway:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 521
    .local v3, e:Ljava/lang/NumberFormatException;
    iget-object v10, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    invoke-interface {v11}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f080576

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 537
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .restart local v4       #gateway:Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    .line 539
    .local v5, gatewayAddr:Ljava/net/InetAddress;
    :try_start_4
    invoke-direct {p0, v4}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->numericToInet4Address(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v5

    .line 543
    new-instance v10, Landroid/net/RouteInfo;

    invoke-direct {v10, v5}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {p1, v10}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_2

    .line 540
    :catch_2
    move-exception v3

    .line 541
    .local v3, e:Ljava/lang/IllegalArgumentException;
    const v10, 0x7f08056c

    goto/16 :goto_0

    .line 554
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    .end local v5           #gatewayAddr:Ljava/net/InetAddress;
    .restart local v1       #dns:Ljava/lang/String;
    .restart local v2       #dnsAddr:Ljava/net/InetAddress;
    :cond_6
    :try_start_5
    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->numericToInet4Address(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v2

    .line 558
    invoke-virtual {p1, v2}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_3

    .line 555
    :catch_3
    move-exception v3

    .line 556
    .restart local v3       #e:Ljava/lang/IllegalArgumentException;
    const v10, 0x7f08056d

    goto/16 :goto_0

    .line 565
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v3

    .line 566
    .restart local v3       #e:Ljava/lang/IllegalArgumentException;
    const v10, 0x7f08056d

    goto/16 :goto_0

    .line 534
    .end local v1           #dns:Ljava/lang/String;
    .end local v2           #dnsAddr:Ljava/net/InetAddress;
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v10

    goto :goto_2

    .line 533
    :catch_6
    move-exception v10

    goto :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/OriginalSettings/wifi/WifiConfigController$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/wifi/WifiConfigController$1;-><init>(Lcom/android/OriginalSettings/wifi/WifiConfigController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 791
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 796
    return-void
.end method

.method enableSubmitIfAppropriate()V
    .locals 5

    .prologue
    .line 322
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    invoke-interface {v3}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v2

    .line 323
    .local v2, submit:Landroid/widget/Button;
    if-nez v2, :cond_0

    .line 346
    :goto_0
    return-void

    .line 325
    :cond_0
    const/4 v0, 0x0

    .line 326
    .local v0, enabled:Z
    const/4 v1, 0x0

    .line 328
    .local v1, passwordInvalid:Z
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget v3, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_3

    .line 331
    :cond_2
    const/4 v1, 0x1

    .line 334
    :cond_3
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7

    :cond_5
    if-eqz v1, :cond_7

    .line 337
    :cond_6
    const/4 v0, 0x0

    .line 345
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 339
    :cond_7
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 340
    const/4 v0, 0x1

    goto :goto_1

    .line 342
    :cond_8
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x1

    const/16 v8, 0x22

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 349
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    if-eq v4, v7, :cond_0

    iget-boolean v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEdit:Z

    if-nez v4, :cond_0

    move-object v0, v6

    .line 447
    :goto_0
    return-object v0

    .line 353
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 355
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    if-nez v4, :cond_2

    .line 356
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/OriginalSettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 359
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIbssView:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 360
    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->isIBSS:Z

    .line 361
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSupportedIbssChannels:Ljava/util/List;

    iget v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSelectedIbssChannelPos:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiChannel;

    iget v4, v4, Landroid/net/wifi/WifiChannel;->frequency:I

    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->frequency:I

    .line 377
    :goto_1
    iget v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    packed-switch v4, :pswitch_data_0

    move-object v0, v6

    .line 440
    goto :goto_0

    .line 364
    :cond_1
    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto :goto_1

    .line 366
    :cond_2
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    if-ne v4, v7, :cond_3

    .line 367
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/OriginalSettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/OriginalSettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 369
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget-boolean v4, v4, Lcom/android/OriginalSettings/wifi/AccessPoint;->isIBSS:Z

    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->isIBSS:Z

    .line 370
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/OriginalSettings/wifi/AccessPoint;->frequency:I

    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->frequency:I

    goto :goto_1

    .line 372
    :cond_3
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/OriginalSettings/wifi/AccessPoint;->networkId:I

    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 373
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget-boolean v4, v4, Lcom/android/OriginalSettings/wifi/AccessPoint;->isIBSS:Z

    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->isIBSS:Z

    .line 374
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/OriginalSettings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/OriginalSettings/wifi/AccessPoint;->frequency:I

    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->frequency:I

    goto :goto_1

    .line 379
    :pswitch_0
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 443
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 444
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 445
    new-instance v4, Landroid/net/LinkProperties;

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v4, v5}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    goto/16 :goto_0

    .line 383
    :pswitch_1
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 384
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 385
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    .line 386
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-eqz v4, :cond_4

    .line 387
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v2

    .line 388
    .local v2, length:I
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 390
    .local v3, password:Ljava/lang/String;
    const/16 v4, 0xa

    if-eq v2, v4, :cond_5

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_5

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_6

    :cond_5
    const-string v4, "[0-9A-Fa-f]*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 392
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v3, v4, v5

    goto :goto_2

    .line 394
    :cond_6
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_2

    .line 400
    .end local v2           #length:I
    .end local v3           #password:Ljava/lang/String;
    :pswitch_2
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    .line 401
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-eqz v4, :cond_4

    .line 402
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 403
    .restart local v3       #password:Ljava/lang/String;
    const-string v4, "[0-9A-Fa-f]{64}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 404
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 406
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 412
    .end local v3           #password:Ljava/lang/String;
    :pswitch_3
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->set(I)V

    .line 413
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->set(I)V

    .line 414
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 416
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_8

    const-string v4, ""

    :goto_3
    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 418
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_9

    const-string v4, ""

    :goto_4
    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 421
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_a

    const-string v4, ""

    :goto_5
    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 424
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_b

    .line 425
    .local v1, isEmptyKeyId:Z
    :goto_6
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->key_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v1, :cond_c

    const-string v4, ""

    :goto_7
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 427
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->engine:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v1, :cond_d

    const-string v4, "0"

    :goto_8
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 429
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->engine_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eqz v1, :cond_e

    const-string v4, ""

    :goto_9
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 430
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-nez v4, :cond_f

    const-string v4, ""

    :goto_a
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 432
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-nez v4, :cond_10

    const-string v4, ""

    :goto_b
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 434
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-eqz v4, :cond_4

    .line 435
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 416
    .end local v1           #isEmptyKeyId:Z
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "auth="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 418
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keystore://CACERT_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 421
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keystore://USRCERT_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    :cond_b
    move v1, v5

    .line 424
    goto/16 :goto_6

    .line 425
    .restart local v1       #isEmptyKeyId:Z
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRPKEY_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_7

    .line 427
    :cond_d
    const-string v4, "1"

    goto/16 :goto_8

    .line 429
    :cond_e
    const-string v4, "keystore"

    goto/16 :goto_9

    .line 430
    :cond_f
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_a

    .line 432
    :cond_10
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_b

    .line 377
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isEdit()Z
    .locals 1

    .prologue
    .line 781
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEdit:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0d0219

    const v4, 0x7f0d0216

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 805
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d01eb

    if-ne v0, v1, :cond_2

    .line 806
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 807
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 811
    if-ltz v1, :cond_0

    .line 812
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 827
    :cond_0
    :goto_1
    return-void

    .line 807
    :cond_1
    const/16 v0, 0x80

    goto :goto_0

    .line 814
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d0215

    if-ne v0, v1, :cond_4

    .line 815
    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 816
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 818
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 820
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d0218

    if-ne v0, v1, :cond_0

    .line 821
    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 822
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 824
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 831
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 832
    iput p3, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 833
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->showSecurityFields()V

    .line 843
    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 844
    return-void

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 835
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->showSecurityFields()V

    goto :goto_0

    .line 836
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_2

    .line 837
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->showProxyFields()V

    goto :goto_0

    .line 838
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mIbssFreqSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_3

    .line 839
    iput p3, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mSelectedIbssChannelPos:I

    goto :goto_0

    .line 841
    :cond_3
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->showIpConfigFields()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 849
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 801
    return-void
.end method
