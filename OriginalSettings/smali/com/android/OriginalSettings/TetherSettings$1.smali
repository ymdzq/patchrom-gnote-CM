.class Lcom/android/OriginalSettings/TetherSettings$1;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/TetherSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/OriginalSettings/TetherSettings$1;->this$0:Lcom/android/OriginalSettings/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings$1;->this$0:Lcom/android/OriginalSettings/TetherSettings;

    #getter for: Lcom/android/OriginalSettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/android/OriginalSettings/TetherSettings;->access$000(Lcom/android/OriginalSettings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 194
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/OriginalSettings/TetherSettings$1;->this$0:Lcom/android/OriginalSettings/TetherSettings;

    #getter for: Lcom/android/OriginalSettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/android/OriginalSettings/TetherSettings;->access$000(Lcom/android/OriginalSettings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 197
    return-void
.end method
