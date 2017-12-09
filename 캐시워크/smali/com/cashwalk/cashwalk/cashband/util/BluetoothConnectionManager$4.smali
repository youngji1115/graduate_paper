.class Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$4;
.super Ljava/lang/Object;
.source "BluetoothConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->requestData()V
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
    .line 187
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$4;->this$0:Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$4;->this$0:Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->access$500(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;)Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$4;->this$0:Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->access$800(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;)Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;->onSuccess(Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;)V

    .line 191
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$4;->this$0:Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->access$902(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;Z)Z

    .line 192
    return-void
.end method
