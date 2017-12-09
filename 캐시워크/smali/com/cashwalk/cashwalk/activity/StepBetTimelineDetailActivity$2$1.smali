.class Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$1;
.super Ljava/lang/Object;
.source "StepBetTimelineDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;->handleResponse(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;

.field final synthetic val$commentItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$1;->val$commentItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 218
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    const-class v2, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .local v0, "startFeed":Landroid/content/Intent;
    const-string v1, "id"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$1;->val$commentItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v1, "name"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$1;->val$commentItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-virtual {v1, v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 222
    return-void
.end method
