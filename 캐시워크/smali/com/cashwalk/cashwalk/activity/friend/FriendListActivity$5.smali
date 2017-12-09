.class Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$5;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "FriendListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->onItemAdd(Landroid/view/View;ILcom/cashwalk/cashwalk/util/network/model/Friend;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

.field final synthetic val$postion:I


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    iput p2, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$5;->val$postion:I

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

    .line 288
    :try_start_0
    const-string v4, "result"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 289
    const-string v4, "result"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 290
    .local v3, "result":Z
    if-eqz v3, :cond_1

    .line 291
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    const v6, 0x7f09015a

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 292
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->access$300(Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;)Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$5;->val$postion:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    const/4 v5, 0x0

    iput v5, v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;->friend_status:I

    .line 293
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->access$300(Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;)Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$5;->val$postion:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    const/4 v5, 0x0

    iput v5, v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;->status:I

    .line 294
    sget-object v4, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->access$300(Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;)Ljava/util/List;

    move-result-object v5

    iget v6, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$5;->val$postion:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->access$400(Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;)Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/adapter/FriendListAdapter;->notifyDataSetChanged()V

    .line 333
    .end local v3    # "result":Z
    :cond_0
    :goto_0
    return-void

    .line 298
    .restart local v3    # "result":Z
    :cond_1
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    const v6, 0x7f090141

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 330
    .end local v3    # "result":Z
    :catch_0
    move-exception v1

    .line 331
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    invoke-virtual {v5, v8}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 300
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 301
    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 302
    .local v2, "error":Lorg/json/JSONObject;
    const-string v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xcd

    if-ne v4, v5, :cond_3

    .line 304
    const/4 v4, 0x0

    sput-object v4, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    .line 305
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->access$200(Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;ZI)V

    .line 307
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    const v6, 0x7f09015b

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 308
    :cond_3
    const-string v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xe5

    if-ne v4, v5, :cond_4

    .line 309
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    invoke-direct {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 310
    .local v0, "ab":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090168

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 311
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090132

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$5$1;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$5$1;-><init>(Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$5;)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 317
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 319
    .end local v0    # "ab":Landroid/support/v7/app/AlertDialog$Builder;
    :cond_4
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    invoke-direct {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 320
    .restart local v0    # "ab":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090143

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 321
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090132

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$5$2;

    invoke-direct {v5, p0}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$5$2;-><init>(Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$5;)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 327
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
