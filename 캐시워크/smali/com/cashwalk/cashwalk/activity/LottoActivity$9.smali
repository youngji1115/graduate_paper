.class Lcom/cashwalk/cashwalk/activity/LottoActivity$9;
.super Landroid/os/Handler;
.source "LottoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/activity/LottoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/LottoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/LottoActivity;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 436
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 438
    :pswitch_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->access$1600(Lcom/cashwalk/cashwalk/activity/LottoActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->access$1700(Lcom/cashwalk/cashwalk/activity/LottoActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->access$1502(Lcom/cashwalk/cashwalk/activity/LottoActivity;I)I

    .line 440
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->access$1600(Lcom/cashwalk/cashwalk/activity/LottoActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 441
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->access$1600(Lcom/cashwalk/cashwalk/activity/LottoActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 443
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->access$800(Lcom/cashwalk/cashwalk/activity/LottoActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->access$800(Lcom/cashwalk/cashwalk/activity/LottoActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->access$800(Lcom/cashwalk/cashwalk/activity/LottoActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->access$900(Lcom/cashwalk/cashwalk/activity/LottoActivity;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/LottoActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/LottoActivity;->access$1800(Lcom/cashwalk/cashwalk/activity/LottoActivity;)V

    goto :goto_0

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x2328
        :pswitch_0
    .end packed-switch
.end method
