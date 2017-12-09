.class Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$6;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "FriendRankFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->getRecommendPhoneList()V
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
    .line 321
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$6;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, -0x1

    .line 327
    :try_start_0
    const-string v3, "result"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 328
    invoke-static {p1}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseRecommendList(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v2

    .line 331
    .local v2, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Friend;>;"
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$6;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$902(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;Ljava/util/List;)Ljava/util/List;

    .line 332
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 334
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 335
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    iget v3, v3, Lcom/cashwalk/cashwalk/util/network/model/Friend;->status:I

    if-ne v3, v5, :cond_0

    .line 336
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$6;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$900(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$6;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$1000(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$6;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$900(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 343
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$6;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 344
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$6;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$1100(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)V

    .line 364
    .end local v2    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Friend;>;"
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$6;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$300(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)V

    .line 368
    :goto_2
    return-void

    .line 347
    .restart local v2    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Friend;>;"
    :cond_3
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$6;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$6;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$900(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$402(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;I)I

    .line 348
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$6;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$400(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)I

    move-result v3

    if-lez v3, :cond_2

    .line 349
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$6;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "FRIEND_RECOMMEND_TOTAL_COUNT"

    iget-object v5, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$6;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$400(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 365
    .end local v2    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Friend;>;"
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$6;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$300(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)V

    goto :goto_2

    .line 355
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$6;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 356
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$6;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$1100(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)V

    goto :goto_1

    .line 359
    :cond_5
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$6;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "FRIEND_RECOMMEND_TOTAL_COUNT"

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 360
    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$6;->this$0:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;->access$402(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
