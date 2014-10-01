.class public Lcom/android/OriginalSettings/deviceinfo/Memory;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/deviceinfo/Memory$ConfirmClearCacheFragment;,
        Lcom/android/OriginalSettings/deviceinfo/Memory$ClearCacheObserver;
    }
.end annotation


# static fields
.field private static sClickedMountPoint:Ljava/lang/String;

.field private static sLastClickedMountToggle:Landroid/preference/Preference;


# instance fields
.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

.field private mMountService:Landroid/os/storage/IMountService;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 80
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Lcom/android/OriginalSettings/deviceinfo/Memory$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/deviceinfo/Memory$1;-><init>(Lcom/android/OriginalSettings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 245
    new-instance v0, Lcom/android/OriginalSettings/deviceinfo/Memory$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/deviceinfo/Memory$2;-><init>(Lcom/android/OriginalSettings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    .line 383
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/deviceinfo/Memory;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/deviceinfo/Memory;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/deviceinfo/Memory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->doUnmount()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/deviceinfo/Memory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->onCacheCleared()V

    return-void
.end method

.method private addCategory(Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 1
    .parameter "category"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 110
    invoke-virtual {p1}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 111
    return-void
.end method

.method private doUnmount()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 288
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f080647

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 289
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 291
    .local v1, mountService:Landroid/os/storage/IMountService;
    :try_start_0
    sget-object v2, Lcom/android/OriginalSettings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 292
    sget-object v2, Lcom/android/OriginalSettings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    const v3, 0x7f080648

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 293
    sget-object v2, Lcom/android/OriginalSettings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    const v3, 0x7f080649

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 294
    sget-object v2, Lcom/android/OriginalSettings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 297
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_0
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 200
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 201
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 202
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .line 207
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 204
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "MemorySettings"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 199
    .end local v0           #service:Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private hasAppsAccessingStorage()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 307
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 308
    .local v0, mountService:Landroid/os/storage/IMountService;
    sget-object v2, Lcom/android/OriginalSettings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v1

    .line 309
    .local v1, stUsers:[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 323
    :cond_0
    return v3
.end method

.method private mount()V
    .locals 3

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 345
    .local v0, mountService:Landroid/os/storage/IMountService;
    if-eqz v0, :cond_0

    .line 346
    :try_start_0
    sget-object v1, Lcom/android/OriginalSettings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 353
    :goto_0
    return-void

    .line 348
    :cond_0
    const-string v1, "MemorySettings"

    const-string v2, "Mount service is null, can\'t mount"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private onCacheCleared()V
    .locals 3

    .prologue
    .line 356
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 357
    .local v0, category:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->onCacheCleared()V

    goto :goto_0

    .line 359
    .end local v0           #category:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    return-void
.end method

.method private showDialogInner(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/deviceinfo/Memory;->removeDialog(I)V

    .line 303
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/deviceinfo/Memory;->showDialog(I)V

    .line 304
    return-void
.end method

.method private unmount()V
    .locals 3

    .prologue
    .line 329
    :try_start_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->hasAppsAccessingStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/deviceinfo/Memory;->showDialogInner(I)V

    .line 340
    :goto_0
    return-void

    .line 333
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->doUnmount()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 337
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MemorySettings"

    const-string v2, "Is MountService running?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 88
    .local v1, context:Landroid/content/Context;
    const-string v6, "usb"

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/usb/UsbManager;

    iput-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 90
    invoke-static {v1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 91
    iget-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v7, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v6, v7}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 93
    const v6, 0x7f050011

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/deviceinfo/Memory;->addPreferencesFromResource(I)V

    .line 95
    invoke-static {v1}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->buildForInternal(Landroid/content/Context;)Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/deviceinfo/Memory;->addCategory(Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;)V

    .line 97
    iget-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 98
    .local v4, storageVolumes:[Landroid/os/storage/StorageVolume;
    move-object v0, v4

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 99
    .local v5, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v6

    if-nez v6, :cond_0

    .line 100
    invoke-static {v1, v5}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->buildForPhysical(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/OriginalSettings/deviceinfo/Memory;->addCategory(Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;)V

    .line 98
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v5           #volume:Landroid/os/storage/StorageVolume;
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/OriginalSettings/deviceinfo/Memory;->setHasOptionsMenu(Z)V

    .line 105
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const v3, 0x7f080735

    const/4 v0, 0x0

    .line 265
    packed-switch p1, :pswitch_data_0

    .line 283
    :goto_0
    return-object v0

    .line 267
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080643

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/OriginalSettings/deviceinfo/Memory$3;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/deviceinfo/Memory$3;-><init>(Lcom/android/OriginalSettings/deviceinfo/Memory;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080418

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080644

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 277
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080645

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080646

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 171
    const v0, 0x7f100007

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 172
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 166
    :cond_0
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onDestroy()V

    .line 167
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 182
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 195
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 184
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f08064d

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 193
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 191
    :cond_0
    const-class v0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/OriginalSettings/deviceinfo/Memory;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0276
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 154
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 155
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 156
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 157
    .local v0, category:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->onPause()V

    goto :goto_0

    .line 159
    .end local v0           #category:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    .line 212
    const-string v6, "cache"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 213
    invoke-static {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory$ConfirmClearCacheFragment;->show(Lcom/android/OriginalSettings/deviceinfo/Memory;)V

    .line 242
    :cond_0
    :goto_0
    return v5

    .line 217
    :cond_1
    iget-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 218
    .local v0, category:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0, p2}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;

    move-result-object v2

    .line 219
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_3

    .line 221
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isMonkeyRunning()Z

    move-result v6

    if-nez v6, :cond_0

    .line 222
    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 227
    :cond_3
    invoke-virtual {v0}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 228
    .local v4, volume:Landroid/os/storage/StorageVolume;
    if-eqz v4, :cond_2

    invoke-virtual {v0, p2}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mountToggleClicked(Landroid/preference/Preference;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 229
    sput-object p2, Lcom/android/OriginalSettings/deviceinfo/Memory;->sLastClickedMountToggle:Landroid/preference/Preference;

    .line 230
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/OriginalSettings/deviceinfo/Memory;->sClickedMountPoint:Ljava/lang/String;

    .line 231
    iget-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, state:Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "mounted_ro"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 234
    :cond_4
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->unmount()V

    goto :goto_0

    .line 236
    :cond_5
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->mount()V

    goto :goto_0

    .line 242
    .end local v0           #category:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #state:Ljava/lang/String;
    .end local v4           #volume:Landroid/os/storage/StorageVolume;
    :cond_6
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 176
    const v1, 0x7f0d0276

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 177
    .local v0, usb:Landroid/view/MenuItem;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 178
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 122
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 123
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 124
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    .restart local v2       #intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 133
    .local v0, category:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->onResume()V

    goto :goto_0

    .line 135
    .end local v0           #category:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    return-void
.end method
