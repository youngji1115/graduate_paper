.class final Lcom/kakao/usermgmt/UserManagement$7;
.super Lcom/kakao/network/tasks/KakaoResultTask;
.source "UserManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/usermgmt/UserManagement;->requestAgeAuthInfo(Lcom/kakao/network/callback/ResponseCallback;Lcom/kakao/auth/AuthService$AgeLimit;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kakao/network/tasks/KakaoResultTask",
        "<",
        "Lcom/kakao/usermgmt/response/AgeAuthResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$ageLimit:Lcom/kakao/auth/AuthService$AgeLimit;

.field final synthetic val$propertyKeyList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/kakao/network/callback/ResponseCallback;Ljava/util/List;Lcom/kakao/auth/AuthService$AgeLimit;)V
    .locals 0

    .prologue
    .line 165
    .local p1, "x0":Lcom/kakao/network/callback/ResponseCallback;, "Lcom/kakao/network/callback/ResponseCallback<Lcom/kakao/usermgmt/response/AgeAuthResponse;>;"
    iput-object p2, p0, Lcom/kakao/usermgmt/UserManagement$7;->val$propertyKeyList:Ljava/util/List;

    iput-object p3, p0, Lcom/kakao/usermgmt/UserManagement$7;->val$ageLimit:Lcom/kakao/auth/AuthService$AgeLimit;

    invoke-direct {p0, p1}, Lcom/kakao/network/tasks/KakaoResultTask;-><init>(Lcom/kakao/network/callback/ResponseCallback;)V

    return-void
.end method


# virtual methods
.method public call()Lcom/kakao/usermgmt/response/AgeAuthResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 168
    const/4 v1, 0x0

    .line 169
    .local v1, "propertyKes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/kakao/usermgmt/UserManagement$7;->val$propertyKeyList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kakao/usermgmt/UserManagement$7;->val$propertyKeyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "propertyKes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .restart local v1    # "propertyKes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/kakao/usermgmt/UserManagement$7;->val$propertyKeyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/usermgmt/UserManagement$AgeAuthProperty;

    .line 172
    .local v0, "property":Lcom/kakao/usermgmt/UserManagement$AgeAuthProperty;
    invoke-virtual {v0}, Lcom/kakao/usermgmt/UserManagement$AgeAuthProperty;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    .end local v0    # "property":Lcom/kakao/usermgmt/UserManagement$AgeAuthProperty;
    :cond_0
    iget-object v2, p0, Lcom/kakao/usermgmt/UserManagement$7;->val$ageLimit:Lcom/kakao/auth/AuthService$AgeLimit;

    invoke-static {v2, v1}, Lcom/kakao/usermgmt/api/UserApi;->requestAgeAuthInfo(Lcom/kakao/auth/AuthService$AgeLimit;Ljava/util/List;)Lcom/kakao/usermgmt/response/AgeAuthResponse;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/kakao/usermgmt/UserManagement$7;->call()Lcom/kakao/usermgmt/response/AgeAuthResponse;

    move-result-object v0

    return-object v0
.end method
