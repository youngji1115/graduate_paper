.class Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "StepBetTimelineDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 123
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x0

    .line 127
    :try_start_0
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    const-string v5, "result"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseStepBetTimelineItem(Lorg/json/JSONObject;)Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$002(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;)Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    .line 128
    const-string v4, "likes"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 130
    const-string v4, "likes"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 131
    .local v2, "ja":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 132
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 134
    .local v3, "likeId":Ljava/lang/String;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$000(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    move-result-object v4

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 135
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$000(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    move-result-object v4

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$000(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    move-result-object v4

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->isLike:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v1    # "i":I
    .end local v2    # "ja":Lorg/json/JSONArray;
    .end local v3    # "likeId":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$100(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)V

    .line 148
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-static {v4, v6}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$200(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;Z)V

    .line 149
    return-void

    .line 139
    .restart local v1    # "i":I
    .restart local v2    # "ja":Lorg/json/JSONArray;
    .restart local v3    # "likeId":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$000(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    move-result-object v4

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->isLike:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v1    # "i":I
    .end local v2    # "ja":Lorg/json/JSONArray;
    .end local v3    # "likeId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
