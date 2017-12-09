.class Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$5;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "FriendRankFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->refreshList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 13
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x0

    .line 203
    :try_start_0
    const-string v7, "result"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseFriendRank(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v6

    .line 204
    .local v6, "totalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/FriendRank;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_7

    .line 206
    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$400(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)I

    move-result v7

    if-lez v7, :cond_0

    .line 207
    new-instance v3, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;

    invoke-direct {v3}, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;-><init>()V

    .line 208
    .local v3, "recommendItem":Lcom/cashwalk/cashwalk/util/network/model/FriendRank;
    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$400(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)I

    move-result v7

    iput v7, v3, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->recommendCount:I

    .line 209
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .end local v3    # "recommendItem":Lcom/cashwalk/cashwalk/util/network/model/FriendRank;
    :cond_0
    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$500(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Landroid/widget/RelativeLayout;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 212
    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$600(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Landroid/widget/TextView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 217
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;

    iget-object v7, v7, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->owner:Ljava/lang/String;

    if-eqz v7, :cond_3

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;

    iget-object v7, v7, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->owner:Ljava/lang/String;

    iget-object v8, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v8}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "USER_ID"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 218
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;

    iget-object v8, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v8}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string/jumbo v9, "steps"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->step:I

    .line 224
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v4, "removeDuplicate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/FriendRank;>;"
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 226
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;

    iget-object v7, v7, Lcom/cashwalk/cashwalk/util/network/model/FriendRank;->owner:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 227
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 216
    .end local v4    # "removeDuplicate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/FriendRank;>;"
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    .restart local v4    # "removeDuplicate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/FriendRank;>;"
    :cond_4
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 231
    .local v2, "listSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/cashwalk/cashwalk/util/network/model/FriendRank;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 234
    .local v5, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/FriendRank;>;"
    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$700(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Landroid/widget/ListView;

    move-result-object v7

    new-instance v8, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;

    iget-object v9, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-direct {v8, v9, v6}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;-><init>(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 236
    sget-object v7, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->actionItemShare:Landroid/view/MenuItem;

    if-eqz v7, :cond_5

    .line 237
    sget-object v7, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->actionItemShare:Landroid/view/MenuItem;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 239
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    sput v7, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->MY_FRIEND_TOTAL_SIZE:I

    .line 251
    .end local v1    # "i":I
    .end local v2    # "listSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/cashwalk/cashwalk/util/network/model/FriendRank;>;"
    .end local v4    # "removeDuplicate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/FriendRank;>;"
    .end local v5    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/FriendRank;>;"
    :goto_2
    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$800(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 252
    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$800(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 259
    .end local v6    # "totalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/FriendRank;>;"
    :cond_6
    :goto_3
    return-void

    .line 242
    .restart local v6    # "totalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/FriendRank;>;"
    :cond_7
    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$600(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Landroid/widget/TextView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$500(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Landroid/widget/RelativeLayout;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 245
    sget-object v7, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->actionItemShare:Landroid/view/MenuItem;

    if-eqz v7, :cond_8

    .line 246
    sget-object v7, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->actionItemShare:Landroid/view/MenuItem;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 248
    :cond_8
    const/4 v7, 0x0

    sput v7, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->MY_FRIEND_TOTAL_SIZE:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 254
    .end local v6    # "totalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/cashwalk/cashwalk/util/network/model/FriendRank;>;"
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$600(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object v7, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$5;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$500(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Landroid/widget/RelativeLayout;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 257
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method
