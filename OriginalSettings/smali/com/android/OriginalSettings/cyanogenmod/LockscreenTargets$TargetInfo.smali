.class Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;
.super Ljava/lang/Object;
.source "LockscreenTargets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TargetInfo"
.end annotation


# instance fields
.field defaultIcon:Landroid/graphics/drawable/Drawable;

.field icon:Landroid/graphics/drawable/StateListDrawable;

.field iconSource:Ljava/lang/String;

.field iconType:Ljava/lang/String;

.field pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;

.field uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;Landroid/graphics/drawable/StateListDrawable;)V
    .locals 0
    .parameter
    .parameter "target"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->this$0:Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p2, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->icon:Landroid/graphics/drawable/StateListDrawable;

    .line 101
    return-void
.end method

.method constructor <init>(Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;Ljava/lang/String;Landroid/graphics/drawable/StateListDrawable;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter "in"
    .parameter "target"
    .parameter "iType"
    .parameter "iSource"
    .parameter "dI"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->this$0:Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p2, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->uri:Ljava/lang/String;

    .line 104
    iput-object p3, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->icon:Landroid/graphics/drawable/StateListDrawable;

    .line 105
    iput-object p6, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->defaultIcon:Landroid/graphics/drawable/Drawable;

    .line 106
    iput-object p4, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->iconType:Ljava/lang/String;

    .line 107
    iput-object p5, p0, Lcom/android/OriginalSettings/cyanogenmod/LockscreenTargets$TargetInfo;->iconSource:Ljava/lang/String;

    .line 108
    return-void
.end method
