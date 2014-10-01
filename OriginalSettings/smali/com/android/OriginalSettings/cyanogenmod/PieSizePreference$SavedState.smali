.class Lcom/android/OriginalSettings/cyanogenmod/PieSizePreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "PieSizePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/cyanogenmod/PieSizePreference;
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
            "Lcom/android/OriginalSettings/cyanogenmod/PieSizePreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field oldSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/PieSizePreference$SavedState$1;

    invoke-direct {v0}, Lcom/android/OriginalSettings/cyanogenmod/PieSizePreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/OriginalSettings/cyanogenmod/PieSizePreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/android/OriginalSettings/cyanogenmod/PieSizePreference$SavedState;->oldSize:F

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 123
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 117
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 118
    iget v0, p0, Lcom/android/OriginalSettings/cyanogenmod/PieSizePreference$SavedState;->oldSize:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 119
    return-void
.end method
