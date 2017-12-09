.class Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$13;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "MyFriendListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->findFriend(Ljava/lang/String;)V
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
    .line 1318
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 12
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 1322
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1200(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1325
    :try_start_0
    const-string v4, "result"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1326
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$3100(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1327
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$3200(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1329
    invoke-static {p1}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseFriend(Lorg/json/JSONObject;)Lcom/cashwalk/cashwalk/util/network/model/Friend;

    move-result-object v3

    .line 1331
    .local v3, "resultObject":Lcom/cashwalk/cashwalk/util/network/model/Friend;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v4, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mMyFriendList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1332
    iget-object v4, v3, Lcom/cashwalk/cashwalk/util/network/model/Friend;->fb_id:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v5, v3, Lcom/cashwalk/cashwalk/util/network/model/Friend;->fb_id:Ljava/lang/String;

    sget-object v4, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mMyFriendList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;->fb_id:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1333
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/cashwalk/cashwalk/util/network/model/Friend;->isFriend:Z

    .line 1341
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$3302(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;Ljava/util/List;)Ljava/util/List;

    .line 1342
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$3300(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1343
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-direct {v2, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 1344
    .local v2, "mLayoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$3400(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1345
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    new-instance v5, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;

    iget-object v6, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    iget-object v7, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$3300(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ZZ)V

    invoke-static {v4, v5}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$3502(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;)Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;

    .line 1346
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$3500(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->setOnItemClickListener(Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter$OnItemClickListener;)V

    .line 1347
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$3400(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$3500(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1348
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$3500(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->notifyDataSetChanged()V

    .line 1360
    .end local v1    # "i":I
    .end local v2    # "mLayoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .end local v3    # "resultObject":Lcom/cashwalk/cashwalk/util/network/model/Friend;
    :goto_2
    return-void

    .line 1335
    .restart local v1    # "i":I
    .restart local v3    # "resultObject":Lcom/cashwalk/cashwalk/util/network/model/Friend;
    :cond_1
    iget-object v4, v3, Lcom/cashwalk/cashwalk/util/network/model/Friend;->owner:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v5, v3, Lcom/cashwalk/cashwalk/util/network/model/Friend;->owner:Ljava/lang/String;

    sget-object v4, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mMyFriendList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;->friend:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1336
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/cashwalk/cashwalk/util/network/model/Friend;->isFriend:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1355
    .end local v1    # "i":I
    .end local v3    # "resultObject":Lcom/cashwalk/cashwalk/util/network/model/Friend;
    :catch_0
    move-exception v0

    .line 1356
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1357
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$3100(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1358
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$3200(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    .line 1331
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v3    # "resultObject":Lcom/cashwalk/cashwalk/util/network/model/Friend;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1352
    .end local v1    # "i":I
    .end local v3    # "resultObject":Lcom/cashwalk/cashwalk/util/network/model/Friend;
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$3100(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1353
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$13;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$3200(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
