.class Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16;
.super Ljava/lang/Object;
.source "MyFriendListActivity.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->isLoginFacebook()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback",
        "<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    .prologue
    .line 1465
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1492
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$3702(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1493
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$3602(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1494
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v0, v2}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1402(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;Z)Z

    .line 1495
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1600(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "IS_FACEBOOK_CONNECT"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1496
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 3
    .param p1, "e"    # Lcom/facebook/FacebookException;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1500
    invoke-virtual {p1}, Lcom/facebook/FacebookException;->printStackTrace()V

    .line 1502
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$3702(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1503
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$3602(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1504
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v0, v2}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1402(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;Z)Z

    .line 1505
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16;->this$0:Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;->access$1600(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "IS_FACEBOOK_CONNECT"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1507
    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 4
    .param p1, "loginResult"    # Lcom/facebook/login/LoginResult;

    .prologue
    .line 1469
    .line 1470
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    new-instance v3, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16$1;

    invoke-direct {v3, p0, p1}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16$1;-><init>(Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16;Lcom/facebook/login/LoginResult;)V

    .line 1469
    invoke-static {v2, v3}, Lcom/facebook/GraphRequest;->newMeRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)Lcom/facebook/GraphRequest;

    move-result-object v1

    .line 1484
    .local v1, "request":Lcom/facebook/GraphRequest;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1485
    .local v0, "parameters":Landroid/os/Bundle;
    const-string v2, "fields"

    const-string v3, "id,name"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    invoke-virtual {v1, v0}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 1487
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 1488
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1465
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/cashwalk/cashwalk/activity/friend/MyFriendListActivity$16;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
