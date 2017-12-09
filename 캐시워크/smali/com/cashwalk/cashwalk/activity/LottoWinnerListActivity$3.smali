.class Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$3;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "LottoWinnerListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->fetchData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const/16 v6, 0x8

    .line 147
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->access$100(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Landroid/widget/ProgressBar;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 149
    :try_start_0
    const-string v5, "likes"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 150
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->access$200(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 151
    const-string v5, "likes"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 152
    .local v3, "ja":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 153
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 154
    .local v4, "likeId":Ljava/lang/String;
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->access$200(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    .end local v2    # "i":I
    .end local v3    # "ja":Lorg/json/JSONArray;
    .end local v4    # "likeId":Ljava/lang/String;
    :cond_0
    const-string v5, "result"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseStepBetTimelineList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 159
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;>;"
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->access$300(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Landroid/widget/ListView;

    move-result-object v5

    new-instance v6, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;

    iget-object v7, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-direct {v6, v7, v0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;-><init>(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 162
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->access$400(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 167
    :goto_1
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->access$500(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 168
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->access$500(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 171
    :cond_1
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->access$000(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)I

    move-result v5

    if-eqz v5, :cond_2

    .line 172
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->access$300(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Landroid/widget/ListView;

    move-result-object v5

    iget-object v6, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->access$000(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setSelection(I)V

    .line 177
    .end local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;>;"
    :cond_2
    :goto_2
    return-void

    .line 164
    .restart local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;>;"
    :cond_3
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->access$400(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 174
    .end local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;>;"
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
