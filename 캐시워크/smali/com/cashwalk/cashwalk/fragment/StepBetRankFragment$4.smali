.class Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$4;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "StepBetRankFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->refreshList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 201
    :try_start_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    const-string v4, "result"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "me"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->access$500(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;Lorg/json/JSONObject;)V

    .line 202
    const-string v3, "result"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "rank"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseStepBetRank(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    .line 203
    .local v1, "todayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Rank;>;"
    const-string v3, "result"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "totalRank"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseStepBetRank(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    .line 205
    .local v2, "totalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Rank;>;"
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->access$600(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)Landroid/widget/ListView;

    move-result-object v3

    new-instance v4, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-direct {v4, v5, v1}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;-><init>(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 211
    :goto_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->access$700(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->access$700(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 217
    .end local v1    # "todayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Rank;>;"
    .end local v2    # "totalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Rank;>;"
    :cond_0
    :goto_1
    return-void

    .line 208
    .restart local v1    # "todayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Rank;>;"
    .restart local v2    # "totalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Rank;>;"
    :cond_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->access$600(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)Landroid/widget/ListView;

    move-result-object v3

    new-instance v4, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$4;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-direct {v4, v5, v2}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;-><init>(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    .end local v1    # "todayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Rank;>;"
    .end local v2    # "totalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/Rank;>;"
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
