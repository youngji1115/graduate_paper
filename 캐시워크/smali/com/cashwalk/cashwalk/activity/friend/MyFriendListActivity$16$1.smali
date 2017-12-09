.class Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16$1;
.super Ljava/lang/Object;
.source "MyFriendListActivity.java"

# interfaces
.implements Lcom/facebook/GraphRequest$GraphJSONObjectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16;->onSuccess(Lcom/facebook/login/LoginResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16;

.field final synthetic val$loginResult:Lcom/facebook/login/LoginResult;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16;Lcom/facebook/login/LoginResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16;

    .prologue
    .line 1471
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16$1;->this$1:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16$1;->val$loginResult:Lcom/facebook/login/LoginResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lorg/json/JSONObject;Lcom/facebook/GraphResponse;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 1475
    :try_start_0
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16$1;->this$1:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16$1;->val$loginResult:Lcom/facebook/login/LoginResult;

    invoke-virtual {v2}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$3602(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1476
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16$1;->this$1:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16$1;->val$loginResult:Lcom/facebook/login/LoginResult;

    invoke-virtual {v2}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$3702(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1477
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16$1;->this$1:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1500(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1482
    :goto_0
    return-void

    .line 1479
    :catch_0
    move-exception v0

    .line 1480
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
