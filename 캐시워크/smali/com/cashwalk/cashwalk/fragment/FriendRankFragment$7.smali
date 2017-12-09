.class Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$7;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "FriendRankFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->getFacebookFriendList()V
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
    .line 391
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$7;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    .line 396
    :try_start_0
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 397
    invoke-static {p1}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseRecommendList(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    .line 399
    .local v1, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Friend;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$7;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$1202(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;Ljava/util/List;)Ljava/util/List;

    .line 401
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$7;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$1200(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 402
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$7;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$1000(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$7;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$1200(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 404
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$7;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$7;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$900(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$7;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$1200(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$402(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;I)I

    .line 405
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$7;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$400(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)I

    move-result v2

    if-lez v2, :cond_0

    .line 406
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$7;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "FRIEND_RECOMMEND_TOTAL_COUNT"

    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$7;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$400(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 411
    .end local v1    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Friend;>;"
    :cond_0
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$7;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$300(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :goto_0
    return-void

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 414
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$7;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$300(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)V

    goto :goto_0
.end method
