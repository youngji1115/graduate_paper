.class Lcom/cashwalk/cashwalk/activity/LoginActivity$SessionCallback$1;
.super Lcom/kakao/usermgmt/callback/MeResponseCallback;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/LoginActivity$SessionCallback;->requestMe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/LoginActivity$SessionCallback;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/LoginActivity$SessionCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/LoginActivity$SessionCallback;

    .prologue
    .line 536
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$SessionCallback$1;->this$1:Lcom/cashwalk/cashwalk/activity/LoginActivity$SessionCallback;

    invoke-direct {p0}, Lcom/kakao/usermgmt/callback/MeResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/kakao/network/ErrorResult;)V
    .locals 0
    .param p1, "errorResult"    # Lcom/kakao/network/ErrorResult;

    .prologue
    .line 539
    return-void
.end method

.method public onNotSignedUp()V
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$SessionCallback$1;->this$1:Lcom/cashwalk/cashwalk/activity/LoginActivity$SessionCallback;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/LoginActivity$SessionCallback;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->access$700(Lcom/cashwalk/cashwalk/activity/LoginActivity;Lcom/cashwalk/cashwalk/util/network/model/User;)V

    .line 562
    return-void
.end method

.method public onSessionClosed(Lcom/kakao/network/ErrorResult;)V
    .locals 0
    .param p1, "errorResult"    # Lcom/kakao/network/ErrorResult;

    .prologue
    .line 543
    return-void
.end method

.method public onSuccess(Lcom/kakao/usermgmt/response/model/UserProfile;)V
    .locals 4
    .param p1, "userProfile"    # Lcom/kakao/usermgmt/response/model/UserProfile;

    .prologue
    .line 547
    new-instance v0, Lcom/cashwalk/cashwalk/util/network/model/User;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/util/network/model/User;-><init>()V

    .line 548
    .local v0, "user":Lcom/cashwalk/cashwalk/util/network/model/User;
    invoke-virtual {p1}, Lcom/kakao/usermgmt/response/model/UserProfile;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cashwalk/cashwalk/util/network/model/User;->kakaoUid:Ljava/lang/String;

    .line 549
    invoke-virtual {p1}, Lcom/kakao/usermgmt/response/model/UserProfile;->getNickname()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    .line 550
    invoke-virtual {p1}, Lcom/kakao/usermgmt/response/model/UserProfile;->getProfileImagePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cashwalk/cashwalk/util/network/model/User;->profileUrl:Ljava/lang/String;

    .line 552
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$SessionCallback$1;->this$1:Lcom/cashwalk/cashwalk/activity/LoginActivity$SessionCallback;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/LoginActivity$SessionCallback;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->access$200(Lcom/cashwalk/cashwalk/activity/LoginActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "IS_LOGIN"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### \uce74\uce74\uc624\ud1a0\ud070 => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/kakao/auth/Session;->getCurrentSession()Lcom/kakao/auth/Session;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kakao/auth/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 555
    invoke-static {}, Lcom/kakao/auth/Session;->getCurrentSession()Lcom/kakao/auth/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakao/auth/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cashwalk/cashwalk/util/network/model/User;->token:Ljava/lang/String;

    .line 556
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LoginActivity$SessionCallback$1;->this$1:Lcom/cashwalk/cashwalk/activity/LoginActivity$SessionCallback;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/LoginActivity$SessionCallback;->this$0:Lcom/cashwalk/cashwalk/activity/LoginActivity;

    invoke-static {v1, v0}, Lcom/cashwalk/cashwalk/activity/LoginActivity;->access$300(Lcom/cashwalk/cashwalk/activity/LoginActivity;Lcom/cashwalk/cashwalk/util/network/model/User;)V

    .line 557
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 536
    check-cast p1, Lcom/kakao/usermgmt/response/model/UserProfile;

    invoke-virtual {p0, p1}, Lcom/cashwalk/cashwalk/activity/LoginActivity$SessionCallback$1;->onSuccess(Lcom/kakao/usermgmt/response/model/UserProfile;)V

    return-void
.end method
