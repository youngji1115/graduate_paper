.class Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$2;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "FriendListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->getFriendList(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

.field final synthetic val$isMyFriend:Z

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    iput p2, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$2;->val$status:I

    iput-boolean p3, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$2;->val$isMyFriend:Z

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 154
    :try_start_0
    const-string v4, "result"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 155
    iget v4, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$2;->val$status:I

    invoke-static {p1, v4}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseFriendList(Lorg/json/JSONObject;I)Ljava/util/List;

    move-result-object v3

    .line 156
    .local v3, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Friend;>;"
    iget-boolean v4, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$2;->val$isMyFriend:Z

    if-nez v4, :cond_7

    .line 157
    sget-object v4, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_6

    .line 158
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 159
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    sget-object v4, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 160
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    iget-object v5, v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;->friend:Ljava/lang/String;

    sget-object v4, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;->friend:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 162
    sget-object v4, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    iget v4, v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;->status:I

    if-nez v4, :cond_1

    .line 163
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    const/4 v5, 0x0

    iput v5, v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;->friend_status:I

    .line 159
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 164
    :cond_1
    sget-object v4, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    iget v4, v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;->status:I

    if-ne v4, v8, :cond_3

    .line 165
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    const/4 v5, 0x2

    iput v5, v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;->friend_status:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 184
    .end local v1    # "i":I
    .end local v2    # "k":I
    .end local v3    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Friend;>;"
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 186
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    const v6, 0x7f090141

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 187
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->finish()V

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    return-void

    .line 166
    .restart local v1    # "i":I
    .restart local v2    # "k":I
    .restart local v3    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/cashwalk/cashwalk/util/network/model/Friend;>;"
    :cond_3
    :try_start_1
    sget-object v4, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    iget v4, v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;->status:I

    if-ne v4, v10, :cond_0

    .line 167
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    const/4 v5, 0x1

    iput v5, v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;->friend_status:I

    goto :goto_2

    .line 170
    :cond_4
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;->friend:Ljava/lang/String;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->access$000(Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "USER_ID"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 171
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    const/4 v5, 0x2

    iput v5, v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;->friend_status:I

    goto :goto_2

    .line 158
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 177
    .end local v1    # "i":I
    .end local v2    # "k":I
    :cond_6
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    invoke-static {v4, v3}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->access$100(Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;Ljava/util/List;)V

    goto :goto_3

    .line 179
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    .line 180
    sput-object v3, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    .line 181
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;->access$200(Lcom/cashwalk/cashwalk/activity/friend/FriendListActivity;ZI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
