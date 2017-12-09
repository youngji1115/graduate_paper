.class Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$4;
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
    .line 355
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$902(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;Z)Z

    .line 360
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$1000(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$000(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    move-result-object v1

    iget-object v1, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$1200(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :goto_0
    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$000(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    move-result-object v1

    iget-object v1, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$000(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    move-result-object v2

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->stepBetId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$1200(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
