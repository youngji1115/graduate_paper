.class Lcom/cashwalk/cashwalk/activity/LottoAdActivity$7;
.super Landroid/os/Handler;
.source "LottoAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->showVideoFreeLotto()V
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
    .line 527
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 532
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->access$200(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->access$202(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;Z)Z

    .line 534
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->access$1502(Lcom/cashwalk/cashwalk/activity/LottoAdActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 538
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 539
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    const-class v3, Lcom/cashwalk/cashwalk/activity/CouponActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->startActivity(Landroid/content/Intent;)V

    .line 540
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoAdActivity$7;->this$0:Lcom/cashwalk/cashwalk/activity/LottoAdActivity;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/activity/LottoAdActivity;->finish()V

    .line 542
    :cond_1
    return-void
.end method
