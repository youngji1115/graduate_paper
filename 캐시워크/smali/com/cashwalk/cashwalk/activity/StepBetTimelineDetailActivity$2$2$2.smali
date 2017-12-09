.class Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2$2;
.super Ljava/lang/Object;
.source "StepBetTimelineDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2;->onSingleClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2$2;->this$2:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 241
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2$2;->this$2:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$000(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    move-result-object v1

    iget-object v1, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2$2;->this$2:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2;->val$commentItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;->dateString:Ljava/lang/String;

    new-instance v3, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2$2$1;

    invoke-direct {v3, p0, p1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2$2$1;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2$2;Landroid/content/DialogInterface;)V

    invoke-static {v1, v2, v3}, Lcom/cashwalk/cashwalk/util/network/RestClient;->postStepBetCommentReport(Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v0

    .line 259
    .local v0, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2$2;->this$2:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 261
    return-void
.end method
