.class Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$6;
.super Landroid/os/Handler;
.source "LottoWinnerListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 551
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 553
    :pswitch_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->access$1800(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->access$1900(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->access$1702(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;I)I

    .line 555
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->access$1800(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 556
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->access$1800(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 558
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->access$1000(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->access$1000(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->access$1000(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->access$1100(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->access$2000(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)V

    goto :goto_0

    .line 551
    nop

    :pswitch_data_0
    .packed-switch 0x2328
        :pswitch_0
    .end packed-switch
.end method
