.class Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$3;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "StepBetTimelineFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->fetchData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 192
    if-eqz p1, :cond_0

    :try_start_0
    const-string v7, "result"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 193
    const-string v7, "result"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseStepBetTimelineList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 195
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 196
    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->access$002(Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;Z)Z

    .line 197
    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;)Landroid/widget/RelativeLayout;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;>;"
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->access$600(Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 240
    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->access$600(Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 243
    :cond_1
    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->access$700(Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;)Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 244
    return-void

    .line 199
    .restart local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;>;"
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->access$002(Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;Z)Z

    .line 202
    const-string v7, "likes"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 203
    const-string v7, "likes"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 204
    .local v4, "ja":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 205
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 206
    .local v5, "likeId":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 207
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v7, v7, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 208
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v7, v7, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 209
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->isLike:Z

    .line 204
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 206
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 220
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "ja":Lorg/json/JSONArray;
    .end local v5    # "likeId":Ljava/lang/String;
    :cond_5
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v7, v7, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 221
    iget-object v8, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v7, v7, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->access$202(Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    :cond_6
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 225
    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->access$300(Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 226
    .local v6, "oldSize":I
    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->access$300(Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 227
    if-nez v6, :cond_7

    .line 228
    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->access$400(Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;)V

    .line 232
    :goto_3
    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;)Landroid/widget/RelativeLayout;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 235
    .end local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;>;"
    .end local v6    # "oldSize":I
    :catch_0
    move-exception v1

    .line 236
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 230
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;>;"
    .restart local v6    # "oldSize":I
    :cond_7
    :try_start_2
    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->access$500(Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method
