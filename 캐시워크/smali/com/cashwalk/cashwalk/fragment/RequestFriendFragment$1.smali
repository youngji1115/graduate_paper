.class Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "RequestFriendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->onItemAdd(Landroid/view/View;ILcom/cashwalk/cashwalk/util/network/model/Friend;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

.field final synthetic val$postion:I


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    iput p2, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1;->val$postion:I

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const v8, 0x7f090141

    const/4 v7, 0x0

    .line 123
    :try_start_0
    const-string v4, "result"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 124
    const-string v4, "result"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 125
    .local v3, "result":Z
    if-eqz v3, :cond_1

    .line 126
    const/4 v4, 0x0

    sput-object v4, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    .line 127
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    const v6, 0x7f090175

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 130
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;)Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1;->val$postion:I

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 131
    sget-object v4, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->mRequestList:Ljava/util/List;

    iget v5, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1;->val$postion:I

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 132
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->access$200(Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;)Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/adapter/RequestFriendListAdapter;->notifyDataSetChanged()V

    .line 134
    const/4 v4, 0x1

    sput-boolean v4, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->isRefresh:Z

    .line 135
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->access$100(Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 136
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->access$300(Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 137
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->access$400(Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;)Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->setViewPagerPostion(I)V

    .line 171
    .end local v3    # "result":Z
    :cond_0
    :goto_0
    return-void

    .line 140
    .restart local v3    # "result":Z
    :cond_1
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    const v6, 0x7f090141

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    .end local v3    # "result":Z
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    invoke-virtual {v5, v8}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 142
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 143
    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 144
    .local v2, "error":Lorg/json/JSONObject;
    const-string v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xcd

    if-ne v4, v5, :cond_3

    .line 145
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    const v6, 0x7f09015b

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 146
    :cond_3
    const-string v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xe5

    if-ne v4, v5, :cond_4

    .line 147
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 148
    .local v0, "ab":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090168

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 149
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090132

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1$1;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1$1;-><init>(Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1;)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 155
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 157
    .end local v0    # "ab":Landroid/support/v7/app/AlertDialog$Builder;
    :cond_4
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 158
    .restart local v0    # "ab":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090143

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 159
    iget-object v4, p0, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090132

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1$2;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1$2;-><init>(Lcom/cashwalk/cashwalk/fragment/RequestFriendFragment$1;)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 165
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
