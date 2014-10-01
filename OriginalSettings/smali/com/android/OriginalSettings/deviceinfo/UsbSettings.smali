.class public Lcom/android/OriginalSettings/deviceinfo/UsbSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "UsbSettings.java"


# instance fields
.field private mMtp:Landroid/preference/CheckBoxPreference;

.field private mPtp:Landroid/preference/CheckBoxPreference;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mUms:Landroid/preference/CheckBoxPreference;

.field private mUsbAccessoryMode:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private storageManager:Landroid/os/storage/StorageManager;

.field private storageVolumes:[Landroid/os/storage/StorageVolume;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 60
    new-instance v0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/deviceinfo/UsbSettings$1;-><init>(Lcom/android/OriginalSettings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/deviceinfo/UsbSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/OriginalSettings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/deviceinfo/UsbSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 3

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 73
    .local v0, root:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 76
    :cond_0
    const v1, 0x7f05004e

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->addPreferencesFromResource(I)V

    .line 77
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 79
    const-string v1, "usb_mtp"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    .line 80
    const-string v1, "usb_ptp"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    .line 81
    const-string v1, "usb_mass_storage"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mUms:Landroid/preference/CheckBoxPreference;

    .line 82
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->storageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mUms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 86
    :cond_1
    return-object v0
.end method

.method private updateToggles(Ljava/lang/String;)V
    .locals 4
    .parameter "function"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    const-string v0, "mtp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mUms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 135
    :goto_0
    iget-boolean v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    if-nez v0, :cond_3

    .line 137
    const-string v0, "UsbSettings"

    const-string v1, "USB Normal Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 146
    :goto_1
    return-void

    .line 121
    :cond_0
    const-string v0, "ptp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 123
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mUms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 124
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 125
    :cond_1
    const-string v0, "mass_storage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 127
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 128
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mUms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 131
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mUms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 141
    :cond_3
    const-string v0, "UsbSettings"

    const-string v1, "USB Accessory Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 143
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 93
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->storageManager:Landroid/os/storage/StorageManager;

    .line 94
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->storageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->storageVolumes:[Landroid/os/storage/StorageVolume;

    .line 95
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 100
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 153
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v3

    .line 158
    :cond_1
    instance-of v1, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    move-object v0, p2

    .line 159
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 160
    .local v0, checkBox:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    .line 161
    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 165
    .end local v0           #checkBox:Landroid/preference/CheckBoxPreference;
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mMtp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_3

    .line 166
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "usb_mass_storage_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 167
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "mtp"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 168
    const-string v1, "mtp"

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_3
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mPtp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_4

    .line 170
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "usb_mass_storage_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 171
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "ptp"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 172
    const-string v1, "ptp"

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_4
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mUms:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "usb_mass_storage_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 175
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "mass_storage"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 176
    const-string v1, "mass_storage"

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 109
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 112
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    return-void
.end method
