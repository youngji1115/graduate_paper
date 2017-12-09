.class Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "IncomingCallBroadcastReceiver.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver$1;->this$0:Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 0
    .param p1, "err"    # I

    .prologue
    .line 80
    return-void
.end method

.method public onSuccess(Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;)V
    .locals 3
    .param p1, "cashBandManager"    # Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver$1;->this$0:Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver$1;->this$0:Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver;->access$000(Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver;->access$100(Lcom/cashwalk/cashwalk/cashband/service/IncomingCallBroadcastReceiver;Ljava/lang/String;Landroid/content/Context;)V

    .line 75
    return-void
.end method
