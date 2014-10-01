.class Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;
.super Landroid/os/AsyncTask;
.source "PrivacyGuardAppListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadIconsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;


# direct methods
.method private constructor <init>(Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;->this$0:Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;-><init>(Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    check-cast p1, [Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;->doInBackground([Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;)Ljava/lang/Void;
    .locals 7
    .parameter "apps"

    .prologue
    .line 113
    move-object v1, p1

    .local v1, arr$:[Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v1, v2

    .line 115
    .local v0, app:Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;
    :try_start_0
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;->this$0:Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;

    #getter for: Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;->access$100(Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;)Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, v0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 116
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;->this$0:Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;

    #getter for: Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;->mIcons:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v5}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;->access$200(Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    iget-object v6, v0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {p0, v5}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    .end local v0           #app:Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;
    :cond_0
    const/4 v5, 0x0

    return-object v5

    .line 118
    .restart local v0       #app:Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardManager$AppInfo;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter$LoadIconsTask;->this$0:Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/cyanogenmod/privacyguard/PrivacyGuardAppListAdapter;->notifyDataSetChanged()V

    .line 129
    return-void
.end method
