.class Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "RecommendFriendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7$1;->this$1:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const v6, 0x7f090141

    const/4 v5, 0x0

    .line 417
    :try_start_0
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 418
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 419
    .local v1, "result":Z
    if-eqz v1, :cond_1

    .line 420
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7$1;->this$1:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7$1;->this$1:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09015c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 422
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7$1;->this$1:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->access$600(Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7$1;->this$1:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;

    iget v3, v3, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;->val$postion:I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 423
    sget-object v2, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRecommendResultList:Ljava/util/List;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7$1;->this$1:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;

    iget v3, v3, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;->val$postion:I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 424
    const/4 v2, 0x1

    sput-boolean v2, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->isRefresh:Z

    .line 425
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7$1;->this$1:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->mRecommendFriendListAdapter:Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/adapter/RecommendFriendListAdapter;->notifyDataSetChanged()V

    .line 433
    .end local v1    # "result":Z
    :cond_0
    :goto_0
    return-void

    .line 427
    .restart local v1    # "result":Z
    :cond_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7$1;->this$1:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7$1;->this$1:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    const v4, 0x7f090141

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 430
    .end local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7$1;->this$1:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7$1;->this$1:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment$7;->this$0:Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;

    invoke-virtual {v3, v6}, Lcom/cashwalk/cashwalk/fragment/RecommendFriendFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
