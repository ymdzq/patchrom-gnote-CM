.class Lcom/android/OriginalSettings/profiles/ProfileConfig$ConnectionItem;
.super Ljava/lang/Object;
.source "ProfileConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/profiles/ProfileConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectionItem"
.end annotation


# instance fields
.field mCheckbox:Lcom/android/OriginalSettings/profiles/ProfileConnectionPreference;

.field mChoices:I

.field mConnectionId:I

.field mLabel:Ljava/lang/String;

.field mSettings:Landroid/app/ConnectionSettings;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "connectionId"
    .parameter "label"

    .prologue
    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput p1, p0, Lcom/android/OriginalSettings/profiles/ProfileConfig$ConnectionItem;->mConnectionId:I

    .line 451
    const v0, 0x7f0c0059

    iput v0, p0, Lcom/android/OriginalSettings/profiles/ProfileConfig$ConnectionItem;->mChoices:I

    .line 452
    iput-object p2, p0, Lcom/android/OriginalSettings/profiles/ProfileConfig$ConnectionItem;->mLabel:Ljava/lang/String;

    .line 453
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .parameter "connectionId"
    .parameter "label"
    .parameter "choices"

    .prologue
    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput p1, p0, Lcom/android/OriginalSettings/profiles/ProfileConfig$ConnectionItem;->mConnectionId:I

    .line 457
    iput-object p2, p0, Lcom/android/OriginalSettings/profiles/ProfileConfig$ConnectionItem;->mLabel:Ljava/lang/String;

    .line 458
    iput p3, p0, Lcom/android/OriginalSettings/profiles/ProfileConfig$ConnectionItem;->mChoices:I

    .line 459
    return-void
.end method
