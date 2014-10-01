.class public Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder;
.super Landroid/app/ListFragment;
.source "NotificationDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PowerWidgetOrder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder$ButtonAdapter;
    }
.end annotation


# instance fields
.field private mButtonAdapter:Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder$ButtonAdapter;

.field private mButtonList:Landroid/widget/ListView;

.field mContentView:Landroid/view/View;

.field mContext:Landroid/content/Context;

.field private mDropListener:Lcom/android/OriginalSettings/cyanogenmod/TouchInterceptor$DropListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 443
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder;->mContentView:Landroid/view/View;

    .line 488
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder$1;-><init>(Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder;->mDropListener:Lcom/android/OriginalSettings/cyanogenmod/TouchInterceptor$DropListener;

    .line 513
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder;)Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder$ButtonAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder;->mButtonAdapter:Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder$ButtonAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder;->mButtonList:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 464
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 465
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder;->mContext:Landroid/content/Context;

    .line 467
    invoke-virtual {p0}, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder;->mButtonList:Landroid/widget/ListView;

    .line 468
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder;->mButtonList:Landroid/widget/ListView;

    check-cast v0, Lcom/android/OriginalSettings/cyanogenmod/TouchInterceptor;

    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder;->mDropListener:Lcom/android/OriginalSettings/cyanogenmod/TouchInterceptor$DropListener;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/cyanogenmod/TouchInterceptor;->setDropListener(Lcom/android/OriginalSettings/cyanogenmod/TouchInterceptor$DropListener;)V

    .line 469
    new-instance v0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder$ButtonAdapter;

    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder$ButtonAdapter;-><init>(Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder;->mButtonAdapter:Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder$ButtonAdapter;

    .line 470
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder;->mButtonAdapter:Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder$ButtonAdapter;

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 471
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 455
    const v0, 0x7f040061

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder;->mContentView:Landroid/view/View;

    .line 456
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 475
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder;->mButtonList:Landroid/widget/ListView;

    check-cast v0, Lcom/android/OriginalSettings/cyanogenmod/TouchInterceptor;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/cyanogenmod/TouchInterceptor;->setDropListener(Lcom/android/OriginalSettings/cyanogenmod/TouchInterceptor$DropListener;)V

    .line 476
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 477
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 478
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 482
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 484
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder;->mButtonAdapter:Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder$ButtonAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder$ButtonAdapter;->reloadButtons()V

    .line 485
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/NotificationDrawer$PowerWidgetOrder;->mButtonList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 486
    return-void
.end method
