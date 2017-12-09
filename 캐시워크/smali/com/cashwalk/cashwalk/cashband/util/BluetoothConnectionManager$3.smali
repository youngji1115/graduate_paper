.class Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$3;
.super Ljava/lang/Object;
.source "BluetoothConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->delayedCheck(Lcom/zeroner/android_zeroner_ble/model/WristBand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

.field final synthetic val$wb:Lcom/zeroner/android_zeroner_ble/model/WristBand;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;Lcom/zeroner/android_zeroner_ble/model/WristBand;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$3;->this$0:Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$3;->val$wb:Lcom/zeroner/android_zeroner_ble/model/WristBand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$3;->this$0:Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->access$300(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;)I

    move-result v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$3;->this$0:Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->access$400(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 160
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$3;->this$0:Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->access$500(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;)Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;

    move-result-object v0

    const/16 v1, -0x3ec

    invoke-interface {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;->onFailed(I)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$3;->this$0:Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->access$600(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getInstance(Landroid/content/Context;)Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$3;->this$0:Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->access$600(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getInstance(Landroid/content/Context;)Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$3;->val$wb:Lcom/zeroner/android_zeroner_ble/model/WristBand;

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->connect(Lcom/zeroner/android_zeroner_ble/model/WristBand;)Z

    .line 166
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$3;->this$0:Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$3;->val$wb:Lcom/zeroner/android_zeroner_ble/model/WristBand;

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->access$700(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;Lcom/zeroner/android_zeroner_ble/model/WristBand;)V

    .line 167
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$3;->this$0:Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->access$100(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run: \ub51c\ub808\uc774 \uc5f0\uacb0 \uccb4\ud06c -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$3;->this$0:Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->access$300(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$3;->this$0:Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->access$308(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;)I

    goto :goto_0
.end method
