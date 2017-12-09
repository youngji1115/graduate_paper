.class Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$6;
.super Ljava/lang/Object;
.source "StepBetTimelineDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 393
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    const-class v3, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "item"

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$000(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "type"

    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$6;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$1000(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "winner_list"

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 394
    return-void

    .line 393
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
