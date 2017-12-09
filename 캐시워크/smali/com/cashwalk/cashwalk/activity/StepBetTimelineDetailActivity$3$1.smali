.class Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "StepBetTimelineDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const v5, 0x7f0902bb

    const/4 v4, 0x1

    .line 327
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$300(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 329
    :try_start_0
    const-string v1, "error"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    const v3, 0x7f0902bb

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 342
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$902(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;Z)Z

    .line 334
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$800(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$200(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 339
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-virtual {v2, v5}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
