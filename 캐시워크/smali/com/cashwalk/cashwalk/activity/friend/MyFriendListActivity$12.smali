.class Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$12;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "MyFriendListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getFacebookFriendList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 1261
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$12;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, 0x0

    .line 1265
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$12;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1200(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1266
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$12;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$700(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$12;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$700(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1267
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$12;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$700(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 1271
    :cond_0
    :try_start_0
    const-string v3, "result"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1272
    invoke-static {p1}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseRecommendList(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v2

    .line 1274
    .local v2, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Friend;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1275
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$12;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$800(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1276
    sget-object v3, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendResultList:Ljava/util/List;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$12;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$800(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1279
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1280
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$12;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1600(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "FRIEND_RECOMMEND_TOTAL_COUNT"

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$12;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$900(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$12;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$800(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v5, v6

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1285
    .end local v2    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Friend;>;"
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mMyAddRequestList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 1286
    sget-object v3, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mMyAddRequestList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/cashwalk/cashwalk/util/network/model/Friend;->isConnectIcon:Z

    .line 1287
    sget-object v3, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendResultList:Ljava/util/List;

    sget-object v4, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mMyAddRequestList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1285
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1290
    :cond_3
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$12;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$500(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->instent:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    sget-object v4, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendResultList:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->setList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1294
    .end local v1    # "i":I
    :goto_1
    return-void

    .line 1291
    :catch_0
    move-exception v0

    .line 1292
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
