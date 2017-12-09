.class Lcom/cashwalk/cashwalk/activity/StepBetActivity$9;
.super Landroid/os/Handler;
.source "StepBetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/activity/StepBetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    .prologue
    .line 492
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 494
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 496
    :pswitch_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->access$1400(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->access$1500(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->access$1302(Lcom/cashwalk/cashwalk/activity/StepBetActivity;I)I

    .line 498
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->access$1400(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 499
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->access$1400(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 501
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->access$700(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->access$700(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->access$700(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->access$800(Lcom/cashwalk/cashwalk/activity/StepBetActivity;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$9;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->access$1600(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)V

    goto :goto_0

    .line 494
    nop

    :pswitch_data_0
    .packed-switch 0x2328
        :pswitch_0
    .end packed-switch
.end method
