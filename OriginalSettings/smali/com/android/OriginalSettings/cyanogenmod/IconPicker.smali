.class public Lcom/android/OriginalSettings/cyanogenmod/IconPicker;
.super Ljava/lang/Object;
.source "IconPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/cyanogenmod/IconPicker$IconAdapter;,
        Lcom/android/OriginalSettings/cyanogenmod/IconPicker$OnIconPickListener;
    }
.end annotation


# instance fields
.field private mIconListener:Lcom/android/OriginalSettings/cyanogenmod/IconPicker$OnIconPickListener;

.field private mParent:Landroid/app/Activity;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/OriginalSettings/cyanogenmod/IconPicker$OnIconPickListener;)V
    .locals 1
    .parameter "parent"
    .parameter "listener"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker;->mParent:Landroid/app/Activity;

    .line 64
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker;->mResources:Landroid/content/res/Resources;

    .line 65
    iput-object p2, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker;->mIconListener:Lcom/android/OriginalSettings/cyanogenmod/IconPicker$OnIconPickListener;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/cyanogenmod/IconPicker;ILjava/io/File;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/OriginalSettings/cyanogenmod/IconPicker;->showChosen(ILjava/io/File;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/cyanogenmod/IconPicker;)Lcom/android/OriginalSettings/cyanogenmod/IconPicker$OnIconPickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker;->mIconListener:Lcom/android/OriginalSettings/cyanogenmod/IconPicker$OnIconPickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/cyanogenmod/IconPicker;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/cyanogenmod/IconPicker;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker;->mParent:Landroid/app/Activity;

    return-object v0
.end method

.method private showChosen(ILjava/io/File;I)V
    .locals 10
    .parameter "type"
    .parameter "image"
    .parameter "fragmentId"

    .prologue
    const/16 v9, 0xa2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 102
    if-nez p1, :cond_1

    .line 103
    new-instance v4, Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker;->mParent:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 104
    .local v4, listie:Landroid/widget/ListView;
    new-instance v5, Lcom/android/OriginalSettings/cyanogenmod/IconPicker$IconAdapter;

    invoke-direct {v5, p0}, Lcom/android/OriginalSettings/cyanogenmod/IconPicker$IconAdapter;-><init>(Lcom/android/OriginalSettings/cyanogenmod/IconPicker;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    new-instance v0, Landroid/app/Dialog;

    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker;->mParent:Landroid/app/Activity;

    invoke-direct {v0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 106
    .local v0, dialog:Landroid/app/Dialog;
    const v5, 0x7f080168

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setTitle(I)V

    .line 107
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 108
    new-instance v5, Lcom/android/OriginalSettings/cyanogenmod/IconPicker$2;

    invoke-direct {v5, p0, p1, v0}, Lcom/android/OriginalSettings/cyanogenmod/IconPicker$2;-><init>(Lcom/android/OriginalSettings/cyanogenmod/IconPicker;ILandroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 118
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 141
    .end local v0           #dialog:Landroid/app/Dialog;
    .end local v4           #listie:Landroid/widget/ListView;
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    if-ne p1, v7, :cond_2

    .line 120
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.GET_CONTENT"

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 121
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "image/*"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v5, "crop"

    const-string v6, "true"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v5, "scale"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 124
    const-string v5, "scaleUpIfNeeded"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    const-string v5, "outputFormat"

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v6}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v5, "aspectX"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    const-string v5, "aspectY"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    const-string v5, "outputX"

    invoke-virtual {v3, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    const-string v5, "outputY"

    invoke-virtual {v3, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    :try_start_0
    const-string v5, "output"

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 132
    const-string v5, "return-data"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 133
    invoke-direct {p0, v3, p1, p3}, Lcom/android/OriginalSettings/cyanogenmod/IconPicker;->startFragmentOrActivityForResult(Landroid/content/Intent;II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 137
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v5, 0x2

    if-ne p1, v5, :cond_0

    .line 138
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.cyanogenmod.ACTION_PICK_ICON"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v2, iconPack:Landroid/content/Intent;
    invoke-direct {p0, v2, p1, p3}, Lcom/android/OriginalSettings/cyanogenmod/IconPicker;->startFragmentOrActivityForResult(Landroid/content/Intent;II)V

    goto :goto_0
.end method

.method private startFragmentOrActivityForResult(Landroid/content/Intent;II)V
    .locals 2
    .parameter "pickIntent"
    .parameter "requestCode"
    .parameter "fragmentId"

    .prologue
    .line 91
    if-nez p3, :cond_1

    .line 92
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker;->mParent:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 95
    .local v0, cFrag:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 96
    iget-object v1, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker;->mParent:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1, p2}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker;->mIconListener:Lcom/android/OriginalSettings/cyanogenmod/IconPicker$OnIconPickListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/OriginalSettings/cyanogenmod/IconPicker$OnIconPickListener;->iconPicked(IILandroid/content/Intent;)V

    .line 70
    return-void
.end method

.method public pickIcon(ILjava/io/File;)V
    .locals 6
    .parameter "fragmentId"
    .parameter "image"

    .prologue
    .line 73
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.cyanogenmod.ACTION_PICK_ICON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v1, iconPack:Landroid/content/Intent;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f080181

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f080182

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker;->mParent:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 78
    .local v0, aInfo:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 79
    iget-object v3, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f080183

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/OriginalSettings/cyanogenmod/IconPicker;->mParent:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080180

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    new-instance v5, Lcom/android/OriginalSettings/cyanogenmod/IconPicker$1;

    invoke-direct {v5, p0, p2, p1}, Lcom/android/OriginalSettings/cyanogenmod/IconPicker$1;-><init>(Lcom/android/OriginalSettings/cyanogenmod/IconPicker;Ljava/io/File;I)V

    invoke-virtual {v4, v3, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 88
    return-void
.end method
