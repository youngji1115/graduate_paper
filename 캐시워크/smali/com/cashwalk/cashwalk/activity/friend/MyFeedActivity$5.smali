.class Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$5;
.super Lcom/cashwalk/cashwalk/util/network/ResponseHandler;
.source "MyFeedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getFeed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

.field final synthetic val$_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$5;->val$_id:Ljava/lang/String;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/network/ResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "jo"    # Lorg/json/JSONObject;

    .prologue
    const/4 v10, 0x0

    .line 229
    :try_start_0
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$700(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)V

    .line 230
    const-string v4, "profile"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "bgUrl":Ljava/lang/String;
    const-string v4, "profile"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "bgImageUrl"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 233
    const-string v4, "profile"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "bgImageUrl"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    :cond_0
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$5;->val$_id:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$102(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 237
    const-string v4, "profile"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 238
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    const-string v5, "profile"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$102(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    :cond_1
    const/4 v3, 0x0

    .line 242
    .local v3, "profileImage":Ljava/lang/String;
    const-string v4, "profile"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "profileUrl"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 243
    const-string v4, "profile"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "profileUrl"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 246
    :cond_2
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$100(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 247
    sget-object v4, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    if-nez v4, :cond_3

    .line 249
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$800(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)V

    .line 282
    .end local v0    # "bgUrl":Ljava/lang/String;
    .end local v3    # "profileImage":Ljava/lang/String;
    :goto_0
    return-void

    .line 252
    .restart local v0    # "bgUrl":Ljava/lang/String;
    .restart local v3    # "profileImage":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v4, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 253
    sget-object v4, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    iget-object v4, v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;->friend:Ljava/lang/String;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$100(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 254
    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    sget-object v4, Lcom/cashwalk/cashwalk/CashWalkApp;->MY_FRIEND_LIST:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;

    iget v4, v4, Lcom/cashwalk/cashwalk/util/network/model/Friend;->status:I

    invoke-static {v5, v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$002(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;I)I

    .line 259
    :cond_4
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    const-string v5, "profile"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "nickname"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$900(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 277
    .end local v0    # "bgUrl":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "profileImage":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 279
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    const v6, 0x7f090141

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 280
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-virtual {v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->finish()V

    goto :goto_0

    .line 252
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bgUrl":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "profileImage":Ljava/lang/String;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 262
    .end local v2    # "i":I
    :cond_6
    :try_start_1
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    const-string v5, "profile"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "nickname"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3, v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$900(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    .end local v0    # "bgUrl":Ljava/lang/String;
    .end local v3    # "profileImage":Ljava/lang/String;
    :cond_7
    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 265
    const-string v4, "error"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x67

    if-ne v4, v5, :cond_8

    .line 267
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    const v6, 0x7f09013e

    invoke-virtual {v5, v6}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 268
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$1000(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)V

    goto/16 :goto_0

    .line 270
    :cond_8
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$1100(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "NICKNAME"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$1100(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "PROFILE_URL"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$1100(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "LOCKSCREEN_BACKGROUND_PATH"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$900(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 274
    :cond_9
    iget-object v4, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    iget-object v5, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-static {v5}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$1100(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "NICKNAME"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-static {v6}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$1100(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "PROFILE_URL"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-static {v7}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$1100(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "LOCKSCREEN_BACKGROUND_PATH"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;->access$900(Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
