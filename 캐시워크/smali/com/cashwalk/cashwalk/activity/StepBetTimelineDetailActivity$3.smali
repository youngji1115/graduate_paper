.class Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3;
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
    .line 305
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 308
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$800(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "body":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$300(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 316
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$902(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;Z)Z

    .line 318
    const/4 v2, 0x0

    .line 319
    .local v2, "stId":Ljava/lang/String;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$1000(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 320
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$000(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    move-result-object v3

    iget-object v2, v3, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->stepBetId:Ljava/lang/String;

    .line 324
    :goto_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$000(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    move-result-object v3

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    new-instance v4, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3$1;

    invoke-direct {v4, p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3$1;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3;)V

    invoke-static {v2, v3, v0, v4}, Lcom/cashwalk/cashwalk/util/network/RestClient;->postStepBetTimelineComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cashwalk/cashwalk/util/network/ResponseHandler;)Lcom/android/volley/toolbox/JsonObjectRequest;

    move-result-object v1

    .line 344
    .local v1, "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/CashWalkApp;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/CashWalkApp;->requestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0

    .line 322
    .end local v1    # "request":Lcom/android/volley/toolbox/JsonObjectRequest;
    :cond_2
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$1100(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "STEPBET_ID"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
