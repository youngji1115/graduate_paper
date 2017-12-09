.class Lcom/cashwalk/cashwalk/cashband/service/IncomingSMSBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "IncomingSMSBroadcastReceiver.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/service/IncomingSMSBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/service/IncomingSMSBroadcastReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$pdusObj:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/service/IncomingSMSBroadcastReceiver;[Ljava/lang/Object;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/service/IncomingSMSBroadcastReceiver;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/service/IncomingSMSBroadcastReceiver$1;->this$0:Lcom/cashwalk/cashwalk/cashband/service/IncomingSMSBroadcastReceiver;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/cashband/service/IncomingSMSBroadcastReceiver$1;->val$pdusObj:[Ljava/lang/Object;

    iput-object p3, p0, Lcom/cashwalk/cashwalk/cashband/service/IncomingSMSBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 0
    .param p1, "err"    # I

    .prologue
    .line 59
    return-void
.end method

.method public onSuccess(Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;)V
    .locals 3
    .param p1, "cashBandManager"    # Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/service/IncomingSMSBroadcastReceiver$1;->this$0:Lcom/cashwalk/cashwalk/cashband/service/IncomingSMSBroadcastReceiver;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/service/IncomingSMSBroadcastReceiver$1;->val$pdusObj:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/service/IncomingSMSBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/cashwalk/cashwalk/cashband/service/IncomingSMSBroadcastReceiver;->access$000(Lcom/cashwalk/cashwalk/cashband/service/IncomingSMSBroadcastReceiver;[Ljava/lang/Object;Landroid/content/Context;)V

    .line 54
    return-void
.end method
