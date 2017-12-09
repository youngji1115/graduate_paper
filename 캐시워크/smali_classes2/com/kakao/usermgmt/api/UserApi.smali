.class public Lcom/kakao/usermgmt/api/UserApi;
.super Ljava/lang/Object;
.source "UserApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestAgeAuthInfo(Lcom/kakao/auth/AuthService$AgeLimit;Ljava/util/List;)Lcom/kakao/usermgmt/response/AgeAuthResponse;
    .locals 4
    .param p0, "ageLimit"    # Lcom/kakao/auth/AuthService$AgeLimit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/auth/AuthService$AgeLimit;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kakao/usermgmt/response/AgeAuthResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "propertyKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/kakao/auth/SingleNetworkTask;

    invoke-direct {v0}, Lcom/kakao/auth/SingleNetworkTask;-><init>()V

    .line 94
    .local v0, "networkTask":Lcom/kakao/auth/SingleNetworkTask;
    new-instance v3, Lcom/kakao/usermgmt/request/AgeAuthRequest;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/kakao/auth/AuthService$AgeLimit;->getValue()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {v3, v2, p1}, Lcom/kakao/usermgmt/request/AgeAuthRequest;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Lcom/kakao/auth/SingleNetworkTask;->requestApi(Lcom/kakao/network/IRequest;)Lcom/kakao/network/response/ResponseData;

    move-result-object v1

    .line 95
    .local v1, "result":Lcom/kakao/network/response/ResponseData;
    new-instance v2, Lcom/kakao/usermgmt/response/AgeAuthResponse;

    invoke-direct {v2, v1}, Lcom/kakao/usermgmt/response/AgeAuthResponse;-><init>(Lcom/kakao/network/response/ResponseData;)V

    return-object v2

    .line 94
    .end local v1    # "result":Lcom/kakao/network/response/ResponseData;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static requestLogout()Lcom/kakao/usermgmt/response/UserResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lcom/kakao/auth/SingleNetworkTask;

    invoke-direct {v0}, Lcom/kakao/auth/SingleNetworkTask;-><init>()V

    .line 55
    .local v0, "networkTask":Lcom/kakao/auth/SingleNetworkTask;
    new-instance v2, Lcom/kakao/usermgmt/request/LogoutRequest;

    invoke-direct {v2}, Lcom/kakao/usermgmt/request/LogoutRequest;-><init>()V

    invoke-virtual {v0, v2}, Lcom/kakao/auth/SingleNetworkTask;->requestApi(Lcom/kakao/network/IRequest;)Lcom/kakao/network/response/ResponseData;

    move-result-object v1

    .line 56
    .local v1, "result":Lcom/kakao/network/response/ResponseData;
    new-instance v2, Lcom/kakao/usermgmt/response/UserResponse;

    invoke-direct {v2, v1}, Lcom/kakao/usermgmt/response/UserResponse;-><init>(Lcom/kakao/network/response/ResponseData;)V

    return-object v2
.end method

.method public static requestMe(Ljava/util/List;Ljava/lang/Boolean;)Lcom/kakao/usermgmt/response/MeResponse;
    .locals 4
    .param p1, "secureResource"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/kakao/usermgmt/response/MeResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "propertyKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/kakao/auth/SingleNetworkTask;

    invoke-direct {v0}, Lcom/kakao/auth/SingleNetworkTask;-><init>()V

    .line 85
    .local v0, "networkTask":Lcom/kakao/auth/SingleNetworkTask;
    new-instance v2, Lcom/kakao/usermgmt/request/MeRequest;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {v2, p0, v3}, Lcom/kakao/usermgmt/request/MeRequest;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v0, v2}, Lcom/kakao/auth/SingleNetworkTask;->requestApi(Lcom/kakao/network/IRequest;)Lcom/kakao/network/response/ResponseData;

    move-result-object v1

    .line 86
    .local v1, "result":Lcom/kakao/network/response/ResponseData;
    new-instance v2, Lcom/kakao/usermgmt/response/MeResponse;

    invoke-direct {v2, v1}, Lcom/kakao/usermgmt/response/MeResponse;-><init>(Lcom/kakao/network/response/ResponseData;)V

    return-object v2
.end method

.method public static requestSignup(Ljava/util/Map;)Lcom/kakao/usermgmt/response/UserResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kakao/usermgmt/response/UserResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/kakao/auth/SingleNetworkTask;

    invoke-direct {v0}, Lcom/kakao/auth/SingleNetworkTask;-><init>()V

    .line 46
    .local v0, "networkTask":Lcom/kakao/auth/SingleNetworkTask;
    new-instance v2, Lcom/kakao/usermgmt/request/SignupRequest;

    invoke-direct {v2, p0}, Lcom/kakao/usermgmt/request/SignupRequest;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Lcom/kakao/auth/SingleNetworkTask;->requestApi(Lcom/kakao/network/IRequest;)Lcom/kakao/network/response/ResponseData;

    move-result-object v1

    .line 47
    .local v1, "result":Lcom/kakao/network/response/ResponseData;
    new-instance v2, Lcom/kakao/usermgmt/response/UserResponse;

    invoke-direct {v2, v1}, Lcom/kakao/usermgmt/response/UserResponse;-><init>(Lcom/kakao/network/response/ResponseData;)V

    return-object v2
.end method

.method public static requestUnlink()Lcom/kakao/usermgmt/response/UserResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lcom/kakao/auth/SingleNetworkTask;

    invoke-direct {v0}, Lcom/kakao/auth/SingleNetworkTask;-><init>()V

    .line 64
    .local v0, "networkTask":Lcom/kakao/auth/SingleNetworkTask;
    new-instance v2, Lcom/kakao/usermgmt/request/UnlinkRequest;

    invoke-direct {v2}, Lcom/kakao/usermgmt/request/UnlinkRequest;-><init>()V

    invoke-virtual {v0, v2}, Lcom/kakao/auth/SingleNetworkTask;->requestApi(Lcom/kakao/network/IRequest;)Lcom/kakao/network/response/ResponseData;

    move-result-object v1

    .line 65
    .local v1, "result":Lcom/kakao/network/response/ResponseData;
    new-instance v2, Lcom/kakao/usermgmt/response/UserResponse;

    invoke-direct {v2, v1}, Lcom/kakao/usermgmt/response/UserResponse;-><init>(Lcom/kakao/network/response/ResponseData;)V

    return-object v2
.end method

.method public static requestUpdateProfile(Ljava/util/Map;)Lcom/kakao/usermgmt/response/UserResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kakao/usermgmt/response/UserResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/kakao/auth/SingleNetworkTask;

    invoke-direct {v0}, Lcom/kakao/auth/SingleNetworkTask;-><init>()V

    .line 74
    .local v0, "networkTask":Lcom/kakao/auth/SingleNetworkTask;
    new-instance v2, Lcom/kakao/usermgmt/request/UpdateProfileRequest;

    invoke-direct {v2, p0}, Lcom/kakao/usermgmt/request/UpdateProfileRequest;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Lcom/kakao/auth/SingleNetworkTask;->requestApi(Lcom/kakao/network/IRequest;)Lcom/kakao/network/response/ResponseData;

    move-result-object v1

    .line 75
    .local v1, "result":Lcom/kakao/network/response/ResponseData;
    new-instance v2, Lcom/kakao/usermgmt/response/UserResponse;

    invoke-direct {v2, v1}, Lcom/kakao/usermgmt/response/UserResponse;-><init>(Lcom/kakao/network/response/ResponseData;)V

    return-object v2
.end method
