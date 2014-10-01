.class public Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;
.super Landroid/preference/Preference;
.source "UsageBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference$OnRequestMediaRescanListener;
    }
.end annotation


# instance fields
.field private mAllowMediaScan:Z

.field private mChart:Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;

.field private final mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mOnRequestMediaRescanListener:Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference$OnRequestMediaRescanListener;

.field private mRescanMedia:Landroid/widget/ImageView;

.field private mRescanMediaWaiting:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mRescanMedia:Landroid/widget/ImageView;

    .line 46
    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mRescanMediaWaiting:Landroid/widget/ProgressBar;

    .line 47
    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;

    .line 53
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    .line 64
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->init()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mRescanMedia:Landroid/widget/ImageView;

    .line 46
    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mRescanMediaWaiting:Landroid/widget/ProgressBar;

    .line 47
    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;

    .line 53
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    .line 69
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->init()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mRescanMedia:Landroid/widget/ImageView;

    .line 46
    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mRescanMediaWaiting:Landroid/widget/ProgressBar;

    .line 47
    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;

    .line 53
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    .line 59
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->init()V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;)Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference$OnRequestMediaRescanListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mOnRequestMediaRescanListener:Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference$OnRequestMediaRescanListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mRescanMedia:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mRescanMediaWaiting:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 73
    const v0, 0x7f04007b

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->setLayoutResource(I)V

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mHandler:Landroid/os/Handler;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mAllowMediaScan:Z

    .line 76
    return-void
.end method


# virtual methods
.method public addEntry(IFI)V
    .locals 2
    .parameter "order"
    .parameter "percentage"
    .parameter "color"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    invoke-static {p1, p2, p3}, Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;->createEntry(IFI)Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 81
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 136
    return-void
.end method

.method public commit()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;->invalidate()V

    .line 132
    :cond_0
    return-void
.end method

.method protected notifyScanCompleted()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mRescanMedia:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mRescanMedia:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mAllowMediaScan:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mRescanMediaWaiting:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 97
    :cond_0
    return-void

    .line 94
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 103
    const v0, 0x7f0d0124

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;

    .line 104
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mChart:Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;

    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/deviceinfo/PercentageBarChart;->setEntries(Ljava/util/Collection;)V

    .line 106
    const v0, 0x7f0d0123

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mRescanMediaWaiting:Landroid/widget/ProgressBar;

    .line 108
    const v0, 0x7f0d0122

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mRescanMedia:Landroid/widget/ImageView;

    .line 109
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mRescanMedia:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference$1;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference$1;-><init>(Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->notifyScanCompleted()V

    .line 126
    return-void
.end method

.method protected setAllowMediaScan(Z)V
    .locals 0
    .parameter "allow"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mAllowMediaScan:Z

    .line 89
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->notifyScanCompleted()V

    .line 90
    return-void
.end method

.method protected setOnRequestMediaRescanListener(Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference$OnRequestMediaRescanListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference;->mOnRequestMediaRescanListener:Lcom/android/OriginalSettings/deviceinfo/UsageBarPreference$OnRequestMediaRescanListener;

    .line 85
    return-void
.end method
