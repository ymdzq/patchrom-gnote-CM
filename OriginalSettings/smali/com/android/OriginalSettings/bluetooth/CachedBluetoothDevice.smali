.class final Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
.super Ljava/lang/Object;
.source "CachedBluetoothDevice.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;",
        ">;"
    }
.end annotation


# instance fields
.field private mBtClass:Landroid/bluetooth/BluetoothClass;

.field private final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectAfterPairing:Z

.field private mConnectAttempted:J

.field private final mContext:Landroid/content/Context;

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mIsConnectingErrorPossible:Z

.field private final mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

.field private mLocalNapRoleConnected:Z

.field private mMessagePermissionChoice:I

.field private mName:Ljava/lang/String;

.field private mPhonebookPermissionChoice:I

.field private mProfileConnectionState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

.field private final mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovedProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mRssi:S

.field private mVisible:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .parameter "context"
    .parameter "adapter"
    .parameter "profileManager"
    .parameter "device"

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    .line 154
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 155
    iput-object p2, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    .line 156
    iput-object p3, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    .line 157
    iput-object p4, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    .line 159
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->fillData()V

    .line 160
    return-void
.end method

.method private connectAutoConnectableProfiles()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 233
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v2

    if-nez v2, :cond_1

    .line 245
    :cond_0
    return-void

    .line 237
    :cond_1
    iput-boolean v3, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 239
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    .line 240
    .local v1, profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    invoke-interface {v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->isAutoConnectable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 241
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v2, v3}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 242
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0
.end method

.method private connectWithoutResettingTimer(Z)V
    .locals 5
    .parameter "connectAllProfiles"

    .prologue
    .line 201
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    const-string v3, "CachedBluetoothDevice"

    const-string v4, "No profiles. Maybe we will connect later"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 216
    const/4 v1, 0x0

    .line 217
    .local v1, preferredProfiles:I
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    .line 218
    .local v2, profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    if-eqz p1, :cond_3

    invoke-interface {v2}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 219
    :goto_2
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v2, v3}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 220
    add-int/lit8 v1, v1, 0x1

    .line 221
    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1

    .line 218
    :cond_3
    invoke-interface {v2}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->isAutoConnectable()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 227
    .end local v2           #profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    :cond_4
    if-nez v1, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->connectAutoConnectableProfiles()V

    goto :goto_0
.end method

.method private describe(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;
    .locals 3
    .parameter "profile"

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "Address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    if-eqz p1, :cond_0

    .line 113
    const-string v1, " Profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private dispatchAttributesChanged()V
    .locals 4

    .prologue
    .line 577
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v3

    .line 578
    :try_start_0
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice$Callback;

    .line 579
    .local v0, callback:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice$Callback;
    invoke-interface {v0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice$Callback;->onDeviceAttributesChanged()V

    goto :goto_0

    .line 581
    .end local v0           #callback:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice$Callback;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 582
    return-void
.end method

.method private ensurePaired()Z
    .locals 2

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->startPairing()Z

    .line 277
    const/4 v0, 0x0

    .line 279
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private fetchBtClass()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 458
    return-void
.end method

.method private fetchName()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 388
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 392
    :cond_0
    return-void
.end method

.method private fetchPermissionChoice(Ljava/lang/String;)I
    .locals 3
    .parameter "prefsName"

    .prologue
    const/4 v2, 0x0

    .line 661
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 663
    .local v0, preference:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private fillData()V
    .locals 1

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 351
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 352
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 353
    const-string v0, "bluetooth_phonebook_permission"

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->fetchPermissionChoice(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mPhonebookPermissionChoice:I

    .line 354
    const-string v0, "bluetooth_message_permissions"

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->fetchPermissionChoice(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mMessagePermissionChoice:I

    .line 355
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 356
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 357
    return-void
.end method

.method private savePermissionChoice(Ljava/lang/String;I)V
    .locals 3
    .parameter "prefsName"
    .parameter "permissionChoice"

    .prologue
    .line 650
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 652
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-nez p2, :cond_0

    .line 653
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 657
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 658
    return-void

    .line 655
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private updateProfiles()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 461
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 462
    .local v1, uuids:[Landroid/os/ParcelUuid;
    if-nez v1, :cond_1

    .line 479
    :cond_0
    :goto_0
    return v0

    .line 464
    :cond_1
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    .line 465
    .local v2, localUuids:[Landroid/os/ParcelUuid;
    if-eqz v2, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    iget-boolean v5, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    invoke-virtual/range {v0 .. v5}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->updateProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;Z)V

    .line 479
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clearProfileConnectionState()V
    .locals 5

    .prologue
    .line 341
    const-string v2, "CachedBluetoothDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Clearing all connection state for dev:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    .line 344
    .local v1, profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 346
    .end local v1           #profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    :cond_0
    return-void
.end method

.method public compareTo(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;)I
    .locals 6
    .parameter "another"

    .prologue
    const/16 v5, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 607
    invoke-virtual {p1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    :goto_1
    sub-int v0, v1, v4

    .line 608
    .local v0, comparison:I
    if-eqz v0, :cond_2

    move v1, v0

    .line 624
    :goto_2
    return v1

    .end local v0           #comparison:I
    :cond_0
    move v1, v3

    .line 607
    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_1

    .line 611
    .restart local v0       #comparison:I
    :cond_2
    invoke-virtual {p1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    if-ne v1, v5, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    if-ne v4, v5, :cond_4

    move v4, v2

    :goto_4
    sub-int v0, v1, v4

    .line 613
    if-eqz v0, :cond_5

    move v1, v0

    goto :goto_2

    :cond_3
    move v1, v3

    .line 611
    goto :goto_3

    :cond_4
    move v4, v3

    goto :goto_4

    .line 616
    :cond_5
    iget-boolean v1, p1, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eqz v1, :cond_6

    move v1, v2

    :goto_5
    iget-boolean v4, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eqz v4, :cond_7

    :goto_6
    sub-int v0, v1, v2

    .line 617
    if-eqz v0, :cond_8

    move v1, v0

    goto :goto_2

    :cond_6
    move v1, v3

    .line 616
    goto :goto_5

    :cond_7
    move v2, v3

    goto :goto_6

    .line 620
    :cond_8
    iget-short v1, p1, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mRssi:S

    iget-short v2, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mRssi:S

    sub-int v0, v1, v2

    .line 621
    if-eqz v0, :cond_9

    move v1, v0

    goto :goto_2

    .line 624
    :cond_9
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    check-cast p1, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    return v0
.end method

.method connect(Z)V
    .locals 2
    .parameter "connectAllProfiles"

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 190
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer(Z)V

    goto :goto_0
.end method

.method declared-synchronized connectInt(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V
    .locals 3
    .parameter "profile"

    .prologue
    .line 262
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->ensurePaired()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 272
    :goto_0
    monitor-exit p0

    return-void

    .line 265
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command sent successfully:CONNECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 271
    :cond_1
    :try_start_2
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to connect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method connectProfile(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 253
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 256
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 259
    return-void
.end method

.method disconnect()V
    .locals 5

    .prologue
    .line 163
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    .line 164
    .local v2, profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 169
    .end local v2           #profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/OriginalSettings/bluetooth/PbapServerProfile;

    move-result-object v0

    .line 170
    .local v0, PbapProfile:Lcom/android/OriginalSettings/bluetooth/PbapServerProfile;
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Lcom/android/OriginalSettings/bluetooth/PbapServerProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 172
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Lcom/android/OriginalSettings/bluetooth/PbapServerProfile;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 174
    :cond_1
    return-void
.end method

.method disconnect(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V
    .locals 3
    .parameter "profile"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command sent successfully:DISCONNECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 591
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_1

    .line 592
    :cond_0
    const/4 v0, 0x0

    .line 594
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    .end local p1
    iget-object v1, p1, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method getBondState()I
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    return v0
.end method

.method getBtClass()Landroid/bluetooth/BluetoothClass;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    return-object v0
.end method

.method getConnectableProfiles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 552
    .local v0, connectableProfiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;>;"
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    .line 553
    .local v2, profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    invoke-interface {v2}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 554
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 557
    .end local v2           #profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    :cond_1
    return-object v0
.end method

.method getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method getMessagePermissionChoice()I
    .locals 1

    .prologue
    .line 636
    iget v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mMessagePermissionChoice:I

    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getPhonebookPermissionChoice()I
    .locals 1

    .prologue
    .line 632
    iget v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mPhonebookPermissionChoice:I

    return v0
.end method

.method getProfileConnectionState(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)I
    .locals 3
    .parameter "profile"

    .prologue
    .line 329
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 333
    .local v0, state:I
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .end local v0           #state:I
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method getProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getRemovedProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method isBusy()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 443
    iget-object v4, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    .line 444
    .local v1, profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    .line 445
    .local v2, status:I
    if-eq v2, v3, :cond_1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 450
    .end local v1           #profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    .end local v2           #status:I
    :cond_1
    :goto_0
    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    const/16 v5, 0xb

    if-eq v4, v5, :cond_1

    const/4 v3, 0x0

    goto :goto_0
.end method

.method isConnected()Z
    .locals 4

    .prologue
    .line 426
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    .line 427
    .local v1, profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    .line 428
    .local v2, status:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 429
    const/4 v3, 0x1

    .line 433
    .end local v1           #profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    .end local v2           #status:I
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method onBondingDockConnect()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->connect(Z)V

    .line 197
    return-void
.end method

.method onBondingStateChanged(I)V
    .locals 2
    .parameter "bondState"

    .prologue
    const/4 v1, 0x0

    .line 515
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 517
    iput-boolean v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 518
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 519
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 522
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 524
    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    .line 525
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 526
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->onBondingDockConnect()V

    .line 530
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    .line 532
    :cond_2
    return-void

    .line 527
    :cond_3
    iget-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    if-eqz v0, :cond_1

    .line 528
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto :goto_0
.end method

.method onProfileStateChanged(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;I)V
    .locals 3
    .parameter "profile"
    .parameter "newProfileState"

    .prologue
    .line 121
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProfileStateChanged: profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newProfileState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 126
    const-string v0, "CachedBluetoothDevice"

    const-string v1, " BT Turninig Off...Profile conn state change ignored..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 129
    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    instance-of v0, p1, Lcom/android/OriginalSettings/bluetooth/PanProfile;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/OriginalSettings/bluetooth/PanProfile;

    .end local p1
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Lcom/android/OriginalSettings/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    goto :goto_0

    .line 140
    .restart local p1
    :cond_2
    iget-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/OriginalSettings/bluetooth/PanProfile;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/OriginalSettings/bluetooth/PanProfile;

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 143
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "Removing PanProfile from device after NAP disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    goto :goto_0
.end method

.method onUuidChanged()V
    .locals 4

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 506
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 509
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer(Z)V

    .line 511
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 512
    return-void
.end method

.method refresh()V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 396
    return-void
.end method

.method refreshBtClass()V
    .locals 0

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 488
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 489
    return-void
.end method

.method refreshName()V
    .locals 0

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 382
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 383
    return-void
.end method

.method registerCallback(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 565
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 566
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 567
    monitor-exit v1

    .line 568
    return-void

    .line 567
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setBtClass(Landroid/bluetooth/BluetoothClass;)V
    .locals 1
    .parameter "btClass"

    .prologue
    .line 535
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eq v0, p1, :cond_0

    .line 536
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 537
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 539
    :cond_0
    return-void
.end method

.method setMessagePermissionChoice(I)V
    .locals 1
    .parameter "permissionChoice"

    .prologue
    .line 645
    const-string v0, "bluetooth_message_permissions"

    invoke-direct {p0, v0, p1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->savePermissionChoice(Ljava/lang/String;I)V

    .line 646
    iput p1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mMessagePermissionChoice:I

    .line 647
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 376
    :goto_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 378
    :cond_0
    return-void

    .line 373
    :cond_1
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 374
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method setPhonebookPermissionChoice(I)V
    .locals 1
    .parameter "permissionChoice"

    .prologue
    .line 640
    const-string v0, "bluetooth_phonebook_permission"

    invoke-direct {p0, v0, p1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->savePermissionChoice(Ljava/lang/String;I)V

    .line 641
    iput p1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mPhonebookPermissionChoice:I

    .line 642
    return-void
.end method

.method setRssi(S)V
    .locals 1
    .parameter "rssi"

    .prologue
    .line 414
    iget-short v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mRssi:S

    if-eq v0, p1, :cond_0

    .line 415
    iput-short p1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 416
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 418
    :cond_0
    return-void
.end method

.method setVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 404
    iput-boolean p1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mVisible:Z

    .line 405
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 407
    :cond_0
    return-void
.end method

.method startPairing()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 285
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->cancelDiscovery()V

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v1

    if-nez v1, :cond_1

    .line 290
    const/4 v0, 0x0

    .line 294
    :goto_0
    return v0

    .line 293
    :cond_1
    iput-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mConnectAfterPairing:Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unpair()V
    .locals 6

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    .line 308
    .local v1, state:I
    const/16 v3, 0xb

    if-ne v1, v3, :cond_0

    .line 309
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    .line 312
    :cond_0
    const/16 v3, 0xa

    if-eq v1, v3, :cond_1

    .line 313
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 314
    .local v0, dev:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    .line 315
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result v2

    .line 316
    .local v2, successful:Z
    if-eqz v2, :cond_1

    .line 318
    const-string v3, "CachedBluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Command sent successfully:REMOVE_BOND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .end local v0           #dev:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #successful:Z
    :cond_1
    return-void
.end method

.method unregisterCallback(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 571
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 572
    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 573
    monitor-exit v1

    .line 574
    return-void

    .line 573
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
