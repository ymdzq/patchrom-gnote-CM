.class Lcom/android/server/NetworkManagementService$IdleTimerParams;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdleTimerParams"
.end annotation


# instance fields
.field public final label:Ljava/lang/String;

.field public networkCount:I

.field public final timeout:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "timeout"    # I
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput p1, p0, Lcom/android/server/NetworkManagementService$IdleTimerParams;->timeout:I

    .line 195
    iput-object p2, p0, Lcom/android/server/NetworkManagementService$IdleTimerParams;->label:Ljava/lang/String;

    .line 196
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    .line 197
    return-void
.end method
