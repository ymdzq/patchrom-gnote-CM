.class Lcom/android/OriginalSettings/BrightnessPreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "BrightnessPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/BrightnessPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/OriginalSettings/BrightnessPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field autoSensitivitySelection:I

.field automatic:Z

.field curBrightness:I

.field customizeDialogShown:Z

.field customizeDialogState:Landroid/os/Bundle;

.field oldAutomatic:Z

.field oldProgress:I

.field progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 458
    new-instance v0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState$1;

    invoke-direct {v0}, Lcom/android/OriginalSettings/BrightnessPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "source"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 430
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->automatic:Z

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->progress:I

    .line 433
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->oldAutomatic:Z

    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->oldProgress:I

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->curBrightness:I

    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->autoSensitivitySelection:I

    .line 437
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->customizeDialogShown:Z

    .line 438
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->customizeDialogState:Landroid/os/Bundle;

    .line 439
    return-void

    :cond_0
    move v0, v2

    .line 431
    goto :goto_0

    :cond_1
    move v0, v2

    .line 433
    goto :goto_1

    :cond_2
    move v1, v2

    .line 437
    goto :goto_2
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 455
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 456
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 443
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 444
    iget-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->automatic:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    iget v0, p0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->progress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    iget-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->oldAutomatic:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    iget v0, p0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->oldProgress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    iget v0, p0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->curBrightness:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    iget v0, p0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->autoSensitivitySelection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    iget-boolean v0, p0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->customizeDialogShown:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    iget-object v0, p0, Lcom/android/OriginalSettings/BrightnessPreference$SavedState;->customizeDialogState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 452
    return-void

    :cond_0
    move v0, v2

    .line 444
    goto :goto_0

    :cond_1
    move v0, v2

    .line 446
    goto :goto_1

    :cond_2
    move v1, v2

    .line 450
    goto :goto_2
.end method
