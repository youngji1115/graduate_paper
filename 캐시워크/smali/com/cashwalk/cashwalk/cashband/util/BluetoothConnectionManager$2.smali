.class Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$2;
.super Ljava/lang/Object;
.source "BluetoothConnectionManager.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnDeviceConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->readyToBand(Lcom/zeroner/android_zeroner_ble/model/WristBand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$2;->this$0:Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$2;->this$0:Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->access$100(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConnect: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$2;->this$0:Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->access$200(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;)V

    .line 144
    return-void
.end method
