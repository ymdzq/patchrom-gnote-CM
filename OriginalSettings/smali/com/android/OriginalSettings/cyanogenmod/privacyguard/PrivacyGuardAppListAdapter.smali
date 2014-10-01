.class public Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PrivacyGuardAppListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter$1;,
        Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter$PrivacyGuardAppViewHolder;,
        Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;
    }
.end annotation


# instance fields
.field private mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDefaultImg:Landroid/graphics/drawable/Drawable;

.field private mIcons:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, apps:Ljava/util/List;,"Ljava/util/List<Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;->mContext:Landroid/content/Context;

    .line 50
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;->mPm:Landroid/content/pm/PackageManager;

    .line 52
    iput-object p2, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;->mApps:Ljava/util/List;

    .line 55
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;->mDefaultImg:Landroid/graphics/drawable/Drawable;

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;->mIcons:Ljava/util/concurrent/ConcurrentHashMap;

    .line 58
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;-><init>(Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 59
    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;->mIcons:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;->mApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;->mApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 73
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 80
    if-nez p2, :cond_0

    .line 81
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04008b

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 84
    new-instance v1, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter$PrivacyGuardAppViewHolder;

    invoke-direct {v1}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter$PrivacyGuardAppViewHolder;-><init>()V

    .line 85
    .local v1, appHolder:Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter$PrivacyGuardAppViewHolder;
    const v4, 0x7f0d0143

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter$PrivacyGuardAppViewHolder;->title:Landroid/widget/TextView;

    .line 86
    const v4, 0x7f0d0054

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter$PrivacyGuardAppViewHolder;->icon:Landroid/widget/ImageView;

    .line 87
    const v4, 0x7f0d0144

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter$PrivacyGuardAppViewHolder;->privacyGuardIcon:Landroid/widget/ImageView;

    .line 88
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 93
    :goto_0
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;->mApps:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;

    .line 95
    .local v0, app:Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;
    iget-object v4, v1, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter$PrivacyGuardAppViewHolder;->title:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;->mIcons:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, v0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 98
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    iget-object v4, v1, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter$PrivacyGuardAppViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-boolean v4, v0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;->privacyGuardEnabled:Z

    if-eqz v4, :cond_2

    const v3, 0x7f020080

    .line 102
    .local v3, privacyGuardDrawableResId:I
    :goto_2
    iget-object v4, v1, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter$PrivacyGuardAppViewHolder;->privacyGuardIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    return-object p2

    .line 90
    .end local v0           #app:Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;
    .end local v1           #appHolder:Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter$PrivacyGuardAppViewHolder;
    .end local v3           #privacyGuardDrawableResId:I
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter$PrivacyGuardAppViewHolder;

    .restart local v1       #appHolder:Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter$PrivacyGuardAppViewHolder;
    goto :goto_0

    .line 98
    .restart local v0       #app:Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;
    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v2, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;->mDefaultImg:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 100
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    :cond_2
    const v3, 0x7f020081

    goto :goto_2
.end method
