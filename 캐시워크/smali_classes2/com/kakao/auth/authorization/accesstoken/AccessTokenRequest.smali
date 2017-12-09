.class public Lcom/kakao/auth/authorization/accesstoken/AccessTokenRequest;
.super Lcom/kakao/auth/network/request/AuthRequest;
.source "AccessTokenRequest.java"

# interfaces
.implements Lcom/kakao/network/IRequest;


# instance fields
.field private final approvalType:Ljava/lang/String;

.field private final authCode:Ljava/lang/String;

.field private final keyHash:Ljava/lang/String;

.field private final refreshToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "redirectURI"    # Ljava/lang/String;
    .param p4, "authCode"    # Ljava/lang/String;
    .param p5, "refreshToken"    # Ljava/lang/String;
    .param p6, "approvalType"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-direct {p0, p2, p3}, Lcom/kakao/auth/network/request/AuthRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {p1}, Lcom/kakao/util/helper/Utility;->getKeyHash(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/auth/authorization/accesstoken/AccessTokenRequest;->keyHash:Ljava/lang/String;

    .line 124
    iput-object p4, p0, Lcom/kakao/auth/authorization/accesstoken/AccessTokenRequest;->authCode:Ljava/lang/String;

    .line 125
    iput-object p5, p0, Lcom/kakao/auth/authorization/accesstoken/AccessTokenRequest;->refreshToken:Ljava/lang/String;

    .line 126
    iput-object p6, p0, Lcom/kakao/auth/authorization/accesstoken/AccessTokenRequest;->approvalType:Ljava/lang/String;

    .line 127
    return-void
.end method

.method private isAccessTokenRequestWithAuthCode()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/kakao/auth/authorization/accesstoken/AccessTokenRequest;->authCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAuthCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/kakao/auth/authorization/accesstoken/AccessTokenRequest;->authCode:Ljava/lang/String;

    return-object v0
.end method

.method public getBodyEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 85
    .local v1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "KA"

    invoke-static {}, Lcom/kakao/util/helper/SystemInfo;->getKAHeader()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v4, "Content-Type"

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 88
    const-string v4, "Content-Type"

    const-string v5, "application/x-www-form-urlencoded"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_0
    const-string v4, "Accept"

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 92
    const-string v4, "Accept"

    const-string v5, "*/*"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/kakao/auth/authorization/accesstoken/AccessTokenRequest;->getExtraHeaders()Landroid/os/Bundle;

    move-result-object v0

    .line 96
    .local v0, "extraHeaders":Landroid/os/Bundle;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 97
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 98
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 100
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 104
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method public getKeyHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/kakao/auth/authorization/accesstoken/AccessTokenRequest;->keyHash:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "POST"

    return-object v0
.end method

.method public getMultiPartList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kakao/network/multipart/Part;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/kakao/auth/authorization/accesstoken/AccessTokenRequest;->isAccessTokenRequestWithAuthCode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 55
    const-string v4, "grant_type"

    const-string v5, "authorization_code"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v4, "code"

    invoke-virtual {p0}, Lcom/kakao/auth/authorization/accesstoken/AccessTokenRequest;->getAuthCode()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v4, "redirect_uri"

    invoke-virtual {p0}, Lcom/kakao/auth/authorization/accesstoken/AccessTokenRequest;->getRedirectURI()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :goto_0
    const-string v4, "client_id"

    invoke-virtual {p0}, Lcom/kakao/auth/authorization/accesstoken/AccessTokenRequest;->getAppKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v4, "android_key_hash"

    invoke-virtual {p0}, Lcom/kakao/auth/authorization/accesstoken/AccessTokenRequest;->getKeyHash()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v4, p0, Lcom/kakao/auth/authorization/accesstoken/AccessTokenRequest;->approvalType:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/kakao/auth/authorization/accesstoken/AccessTokenRequest;->approvalType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 67
    const-string v4, "approval_type"

    iget-object v5, p0, Lcom/kakao/auth/authorization/accesstoken/AccessTokenRequest;->approvalType:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/kakao/auth/authorization/accesstoken/AccessTokenRequest;->getExtraParams()Landroid/os/Bundle;

    move-result-object v0

    .line 71
    .local v0, "extraParams":Landroid/os/Bundle;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 72
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 75
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 59
    .end local v0    # "extraParams":Landroid/os/Bundle;
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    const-string v4, "grant_type"

    const-string v5, "refresh_token"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v4, "refresh_token"

    invoke-virtual {p0}, Lcom/kakao/auth/authorization/accesstoken/AccessTokenRequest;->getRefreshToken()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 79
    .restart local v0    # "extraParams":Landroid/os/Bundle;
    :cond_3
    return-object v2
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/kakao/auth/authorization/accesstoken/AccessTokenRequest;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x2

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lcom/kakao/network/ServerProtocol;->AUTH_AUTHORITY:Ljava/lang/String;

    const-string v1, "oauth/token"

    invoke-static {v0, v1}, Lcom/kakao/auth/network/request/ApiRequest;->createBaseURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
