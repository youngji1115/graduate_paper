.class Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$14;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "MyFriendListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->refreshRecommendList()V
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
    .line 1367
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$14;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const/16 v4, 0x8

    const/4 v6, 0x0

    .line 1371
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$14;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1200(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1372
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$14;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$700(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$14;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$700(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1373
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$14;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$700(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 1377
    :cond_0
    :try_start_0
    const-string v3, "result"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1378
    const/4 v3, -0x1

    invoke-static {p1, v3}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseFriendList(Lorg/json/JSONObject;I)Ljava/util/List;

    move-result-object v2

    .line 1379
    .local v2, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Friend;>;"
    sput-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    .line 1382
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mMyAddRequestList:Ljava/util/List;

    .line 1383
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1384
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    iget v3, v3, Lcom/cashwalk/cashwalk/util/network/model/Friend;->status:I

    if-nez v3, :cond_1

    .line 1385
    sget-object v3, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mMyAddRequestList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1383
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1388
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mMyFriendList:Ljava/util/List;

    .line 1389
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 1390
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    iget v3, v3, Lcom/cashwalk/cashwalk/util/network/model/Friend;->status:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 1391
    sget-object v3, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mMyFriendList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1389
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1394
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRequestList:Ljava/util/List;

    .line 1395
    const/4 v1, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 1396
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    iget v3, v3, Lcom/cashwalk/cashwalk/util/network/model/Friend;->status:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 1397
    sget-object v3, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRequestList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1395
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1401
    :cond_6
    sget-object v3, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRequestList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_8

    .line 1402
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$14;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$2400(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1408
    :goto_3
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$14;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getRecommendFriendList()V

    .line 1414
    .end local v1    # "i":I
    .end local v2    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Friend;>;"
    :cond_7
    :goto_4
    return-void

    .line 1404
    .restart local v1    # "i":I
    .restart local v2    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Friend;>;"
    :cond_8
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$14;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$2400(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1410
    .end local v1    # "i":I
    .end local v2    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Friend;>;"
    :catch_0
    move-exception v0

    .line 1411
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1412
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$14;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$14;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    const v5, 0x7f090141

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_4
.end method
