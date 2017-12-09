.class Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "FriendListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4$1;->this$1:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const v7, 0x7f090141

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 235
    :try_start_0
    const-string v3, "result"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 236
    const-string v3, "result"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 237
    .local v2, "result":Z
    if-eqz v2, :cond_3

    .line 238
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4$1;->this$1:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->access$300(Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4$1;->this$1:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;

    iget v4, v4, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;->val$postion:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    iget v3, v3, Lcom/cashwalk/cashwalk/util/network/model/Friend;->friend_status:I

    if-eq v3, v5, :cond_0

    .line 239
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 240
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4$1;->this$1:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->access$300(Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4$1;->this$1:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;

    iget v4, v4, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;->val$postion:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    iget-object v4, v3, Lcom/cashwalk/cashwalk/util/network/model/Friend;->friend:Ljava/lang/String;

    sget-object v3, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/util/network/model/Friend;->friend:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 241
    sget-object v3, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 246
    .end local v1    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4$1;->this$1:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->access$300(Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4$1;->this$1:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;

    iget v4, v4, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;->val$postion:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    const/4 v4, -0x1

    iput v4, v3, Lcom/cashwalk/cashwalk/util/network/model/Friend;->friend_status:I

    .line 247
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4$1;->this$1:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->access$400(Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;)Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->notifyDataSetChanged()V

    .line 255
    .end local v2    # "result":Z
    :cond_1
    :goto_1
    return-void

    .line 239
    .restart local v1    # "i":I
    .restart local v2    # "result":Z
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    .end local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4$1;->this$1:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4$1;->this$1:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    const v5, 0x7f090141

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 252
    .end local v2    # "result":Z
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4$1;->this$1:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4$1;->this$1:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    invoke-virtual {v4, v7}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
