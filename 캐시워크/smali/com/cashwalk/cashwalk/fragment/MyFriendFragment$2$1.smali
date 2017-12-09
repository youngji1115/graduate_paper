.class Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "MyFriendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2$1;->this$1:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2;

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

    .line 139
    :try_start_0
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 141
    .local v1, "result":Z
    if-eqz v1, :cond_2

    .line 142
    const/4 v2, 0x0

    sput-object v2, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    .line 143
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2$1;->this$1:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2$1;->this$1:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;

    const v4, 0x7f090166

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 144
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2$1;->this$1:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2$1;->this$1:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2;

    iget v3, v3, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2;->val$postion:I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 145
    sget-object v2, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mMyFriendList:Ljava/util/List;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2$1;->this$1:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2;

    iget v3, v3, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2;->val$postion:I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 146
    const/4 v2, 0x1

    sput-boolean v2, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->isRefresh:Z

    .line 147
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2$1;->this$1:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2$1;->this$1:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->mMyFriendListAdapter:Lcom/cashwalk/cashwalk/adapter/MyFriendListAdapter;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/adapter/MyFriendListAdapter;->notifyDataSetChanged()V

    .line 160
    .end local v1    # "result":Z
    :cond_0
    :goto_0
    return-void

    .line 150
    .restart local v1    # "result":Z
    :cond_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2$1;->this$1:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2$1;->this$1:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->setList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    .end local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2$1;->this$1:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2$1;->this$1:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;

    invoke-virtual {v3, v6}, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "result":Z
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2$1;->this$1:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2$1;->this$1:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;

    const v4, 0x7f090141

    invoke-virtual {v3, v4}, Lcom/cashwalk/cashwalk/fragment/MyFriendFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
