.class Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$8;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "MyFriendListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getRecommendPhoneList()V
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
    .line 558
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 562
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1100(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1100(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 563
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1100(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 568
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1200(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1200(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 569
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1200(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    :cond_1
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$700(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$700(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 577
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$700(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 580
    :cond_2
    if-eqz p1, :cond_b

    .line 581
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1302(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;I)I

    .line 582
    const-string v3, "result"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 583
    invoke-static {p1}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseRecommendList(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v2

    .line 586
    .local v2, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Friend;>;"
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_4

    .line 588
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 589
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    iget v3, v3, Lcom/cashwalk/cashwalk/util/network/model/Friend;->status:I

    if-ne v3, v5, :cond_3

    .line 590
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$900(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 588
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 571
    .end local v1    # "i":I
    .end local v2    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Friend;>;"
    :catch_0
    move-exception v0

    .line 572
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 594
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Friend;>;"
    :cond_4
    :try_start_2
    sget-object v3, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendResultList:Ljava/util/List;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$900(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 597
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1400(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 598
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1500(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)V

    .line 631
    .end local v2    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Friend;>;"
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1800(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 637
    :goto_3
    return-void

    .line 600
    .restart local v2    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Friend;>;"
    :cond_6
    sget-object v3, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendResultList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 601
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1600(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "FRIEND_RECOMMEND_TOTAL_COUNT"

    sget-object v5, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendResultList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 605
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    sget-object v3, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mMyAddRequestList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 606
    sget-object v3, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mMyAddRequestList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/cashwalk/cashwalk/util/network/model/Friend;->isConnectIcon:Z

    .line 607
    sget-object v3, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendResultList:Ljava/util/List;

    sget-object v4, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mMyAddRequestList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 610
    :cond_8
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$500(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->instent:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    sget-object v4, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendResultList:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->setList(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 632
    .end local v1    # "i":I
    .end local v2    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Friend;>;"
    :catch_1
    move-exception v0

    .line 633
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 635
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1800(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3

    .line 616
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9
    :try_start_3
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1400(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 617
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1500(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)V

    goto :goto_2

    .line 619
    :cond_a
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1600(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "FRIEND_RECOMMEND_TOTAL_COUNT"

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 620
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$500(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->instent:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    sget-object v4, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendResultList:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->setList(Ljava/util/List;)V

    goto/16 :goto_2

    .line 625
    :cond_b
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1300(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_5

    .line 626
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#### \uacb0\uacfc\uac12 null \uc7ac\uc2dc\ub3c4 => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1300(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 627
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1308(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)I

    .line 628
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1700(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2
.end method
