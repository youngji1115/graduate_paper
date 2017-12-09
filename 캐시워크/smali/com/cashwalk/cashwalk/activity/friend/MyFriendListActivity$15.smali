.class Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$15;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "MyFriendListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->onItemAdd(Landroid/view/View;ILcom/cashwalk/cashwalk/util/network/model/Friend;)V
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
    .line 1421
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$15;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

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

    .line 1425
    :try_start_0
    const-string v3, "result"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1426
    const-string v3, "result"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1427
    .local v2, "result":Z
    if-eqz v2, :cond_1

    .line 1428
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$15;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->et_input_search_text:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1429
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$15;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$15;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    const v5, 0x7f09015a

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1430
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$15;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-virtual {v3}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getRecommendFriendList()V

    .line 1443
    .end local v2    # "result":Z
    :cond_0
    :goto_0
    return-void

    .line 1432
    .restart local v2    # "result":Z
    :cond_1
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$15;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$15;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    const v5, 0x7f090141

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1440
    .end local v2    # "result":Z
    :catch_0
    move-exception v0

    .line 1441
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$15;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$15;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-virtual {v4, v7}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1434
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v3, "error"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1435
    const-string v3, "error"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1436
    .local v1, "error":Lorg/json/JSONObject;
    const-string v3, "code"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xcd

    if-ne v3, v4, :cond_0

    .line 1437
    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$15;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$15;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    const v5, 0x7f09015b

    invoke-virtual {v4, v5}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
