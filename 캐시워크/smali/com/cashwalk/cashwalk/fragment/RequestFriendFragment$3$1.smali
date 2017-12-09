.class Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "RequestFriendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3$1;->this$1:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3;

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

    .line 199
    :try_start_0
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 200
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 201
    .local v1, "result":Z
    if-eqz v1, :cond_2

    .line 202
    const/4 v2, 0x0

    sput-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    .line 203
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3$1;->this$1:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3$1;->this$1:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    const v4, 0x7f090174

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 204
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3$1;->this$1:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3$1;->this$1:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3;

    iget v3, v3, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3;->val$postion:I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 205
    sget-object v2, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRequestList:Ljava/util/List;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3$1;->this$1:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3;

    iget v3, v3, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3;->val$postion:I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 206
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3$1;->this$1:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;)Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;->notifyDataSetChanged()V

    .line 208
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3$1;->this$1:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3$1;->this$1:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->access$300(Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;)Landroid/widget/RelativeLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 212
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->isRefresh:Z

    .line 220
    .end local v1    # "result":Z
    :cond_1
    :goto_0
    return-void

    .line 214
    .restart local v1    # "result":Z
    :cond_2
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3$1;->this$1:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3$1;->this$1:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    const v4, 0x7f090141

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    .end local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3$1;->this$1:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3$1;->this$1:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$3;->this$0:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    invoke-virtual {v3, v6}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
