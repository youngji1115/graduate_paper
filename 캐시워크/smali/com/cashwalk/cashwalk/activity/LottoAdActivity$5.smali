.class Lcom/cashwalk/cashwalk/activity/LottoAdActivity$5;
.super Landroid/os/Handler;
.source "LottoAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/activity/LottoAdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    .prologue
    .line 470
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 472
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 474
    :pswitch_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->access$1200(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->access$1300(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->access$1102(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;I)I

    .line 476
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->access$1200(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 477
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->access$1200(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 479
    sget-object v0, Lcom/cashwalk/cashwalk/CashWalkApp;->winnerArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/cashwalk/cashwalk/CashWalkApp;->winnerArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    sget-object v1, Lcom/cashwalk/cashwalk/CashWalkApp;->winnerArrayList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->access$500(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->access$1400(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)V

    goto :goto_0

    .line 472
    nop

    :pswitch_data_0
    .packed-switch 0x2328
        :pswitch_0
    .end packed-switch
.end method
