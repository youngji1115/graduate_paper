.class Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "StepBetTimelineAddActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13;->onLocationChanged(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13;

    .prologue
    .line 522
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 525
    if-eqz p1, :cond_1

    .line 527
    :try_start_0
    const-string v5, "results"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 528
    .local v4, "obj":Lorg/json/JSONObject;
    const-string v5, "address_components"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 530
    .local v0, "addr":Lorg/json/JSONArray;
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    const-string v6, "long_name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 531
    .local v1, "city":Ljava/lang/String;
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    const-string v6, "long_name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 532
    .local v3, "gu":Ljava/lang/String;
    const-string/jumbo v5, "\uc11c\uc6b8"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "Seoul"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 533
    :cond_0
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v5, v3}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$1002(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 538
    :goto_0
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$600(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/widget/ImageView;

    move-result-object v5

    const v6, 0x7f020199

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 539
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$800(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/widget/TextView;

    move-result-object v5

    const v6, -0x22c7c7c8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 540
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$800(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13;

    iget-object v6, v6, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$1000(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    .end local v0    # "addr":Lorg/json/JSONArray;
    .end local v1    # "city":Ljava/lang/String;
    .end local v3    # "gu":Ljava/lang/String;
    .end local v4    # "obj":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    return-void

    .line 535
    .restart local v0    # "addr":Lorg/json/JSONArray;
    .restart local v1    # "city":Ljava/lang/String;
    .restart local v3    # "gu":Ljava/lang/String;
    .restart local v4    # "obj":Lorg/json/JSONObject;
    :cond_2
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13$1;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13;

    iget-object v5, v5, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v5, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$1002(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 541
    .end local v0    # "addr":Lorg/json/JSONArray;
    .end local v1    # "city":Ljava/lang/String;
    .end local v3    # "gu":Ljava/lang/String;
    .end local v4    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 542
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
