.class Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$1;
.super Ljava/lang/Object;
.source "BluetoothConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->findParingDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

.field final synthetic val$myBandMacId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$1;->this$0:Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$1;->val$myBandMacId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$1;->this$0:Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$1;->val$myBandMacId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->access$000(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;Ljava/lang/String;)V

    .line 84
    return-void
.end method
