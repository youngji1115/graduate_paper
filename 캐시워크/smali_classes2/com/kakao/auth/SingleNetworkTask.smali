.class public Lcom/kakao/auth/SingleNetworkTask;
.super Lcom/kakao/network/NetworkTask;
.source "SingleNetworkTask.java"


# instance fields
.field private final network:Lcom/kakao/network/INetwork;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/kakao/network/NetworkTask;-><init>()V

    .line 54
    new-instance v0, Lcom/kakao/network/KakaoNetworkImpl;

    invoke-direct {v0}, Lcom/kakao/network/KakaoNetworkImpl;-><init>()V

    iput-object v0, p0, Lcom/kakao/auth/SingleNetworkTask;->network:Lcom/kakao/network/INetwork;

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/kakao/network/INetwork;)V
    .locals 0
    .param p1, "network"    # Lcom/kakao/network/INetwork;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/kakao/network/NetworkTask;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/kakao/auth/SingleNetworkTask;->network:Lcom/kakao/network/INetwork;

    .line 59
    return-void
.end method

.method private static checkApiSession()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 73
    invoke-static {}, Lcom/kakao/auth/Session;->getCurrentSession()Lcom/kakao/auth/Session;

    move-result-object v2

    .line 75
    .local v2, "session":Lcom/kakao/auth/Session;
    invoke-virtual {v2}, Lcom/kakao/auth/Session;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 76
    const/4 v3, 0x1

    .line 90
    :cond_0
    :goto_0
    return v3

    .line 81
    :cond_1
    invoke-virtual {v2}, Lcom/kakao/auth/Session;->isAvailableOpenByRefreshToken()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    :try_start_0
    sget-object v4, Lcom/kakao/auth/Session$RequestType;->REFRESHING_ACCESS_TOKEN:Lcom/kakao/auth/Session$RequestType;

    invoke-virtual {v2, v4}, Lcom/kakao/auth/Session;->requestAccessToken(Lcom/kakao/auth/Session$RequestType;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakao/auth/authorization/AuthorizationResult;

    .line 84
    .local v1, "result":Lcom/kakao/auth/authorization/AuthorizationResult;
    invoke-virtual {v1}, Lcom/kakao/auth/authorization/AuthorizationResult;->isSuccess()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 85
    .end local v1    # "result":Lcom/kakao/auth/authorization/AuthorizationResult;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static createAuthCodeRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "redirectUri"    # Ljava/lang/String;
    .param p3, "refreshToken"    # Ljava/lang/String;
    .param p4, "scopeParam"    # Ljava/lang/String;

    .prologue
    .line 62
    new-instance v0, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;

    invoke-direct {v0, p0, p1, p2}, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .local v0, "request":Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;
    const-string v1, "RT"

    invoke-virtual {v0, v1, p3}, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;->putExtraHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v1, "scope"

    invoke-virtual {v0, v1, p4}, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;->putExtraParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-object v0
.end method

.method private static getErrorCode(Lcom/kakao/network/response/ResponseBody;)Lcom/kakao/auth/ErrorCode;
    .locals 1
    .param p0, "responseBody"    # Lcom/kakao/network/response/ResponseBody;

    .prologue
    .line 188
    :try_start_0
    const-string v0, "code"

    invoke-virtual {p0, v0}, Lcom/kakao/network/response/ResponseBody;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const-string v0, "code"

    invoke-virtual {p0, v0}, Lcom/kakao/network/response/ResponseBody;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/kakao/auth/ErrorCode;->valueOf(Ljava/lang/Integer;)Lcom/kakao/auth/ErrorCode;
    :try_end_0
    .catch Lcom/kakao/network/response/ResponseBody$ResponseBodyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    .line 191
    :catch_0
    move-exception v0

    .line 193
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getTopActivity()Landroid/app/Activity;
    .locals 4

    .prologue
    .line 197
    invoke-static {}, Lcom/kakao/auth/KakaoSDK;->getAdapter()Lcom/kakao/auth/KakaoAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kakao/auth/KakaoAdapter;->getApplicationConfig()Lcom/kakao/auth/IApplicationConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/kakao/auth/IApplicationConfig;->getTopActivity()Landroid/app/Activity;

    move-result-object v1

    .line 198
    .local v1, "topActivity":Landroid/app/Activity;
    if-nez v1, :cond_0

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "retryCount":I
    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 203
    add-int/lit8 v0, v0, 0x1

    .line 204
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 205
    invoke-static {}, Lcom/kakao/auth/KakaoSDK;->getAdapter()Lcom/kakao/auth/KakaoAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kakao/auth/KakaoAdapter;->getApplicationConfig()Lcom/kakao/auth/IApplicationConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/kakao/auth/IApplicationConfig;->getTopActivity()Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 210
    .end local v0    # "retryCount":I
    :cond_0
    return-object v1

    .line 206
    .restart local v0    # "retryCount":I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private handleApiError(Lcom/kakao/network/response/ResponseData;)Z
    .locals 9
    .param p1, "result"    # Lcom/kakao/network/response/ResponseData;

    .prologue
    .line 214
    const/4 v3, 0x0

    .line 216
    .local v3, "retry":Z
    :try_start_0
    new-instance v0, Lcom/kakao/network/response/ResponseBody;

    invoke-virtual {p1}, Lcom/kakao/network/response/ResponseData;->getHttpStatusCode()I

    move-result v7

    invoke-virtual {p1}, Lcom/kakao/network/response/ResponseData;->getData()[B

    move-result-object v8

    invoke-direct {v0, v7, v8}, Lcom/kakao/network/response/ResponseBody;-><init>(I[B)V

    .line 217
    .local v0, "errResponseBody":Lcom/kakao/network/response/ResponseBody;
    invoke-static {v0}, Lcom/kakao/auth/SingleNetworkTask;->getErrorCode(Lcom/kakao/network/response/ResponseBody;)Lcom/kakao/auth/ErrorCode;

    move-result-object v7

    sget-object v8, Lcom/kakao/auth/ErrorCode;->INVALID_TOKEN_CODE:Lcom/kakao/auth/ErrorCode;

    if-ne v7, v8, :cond_1

    .line 218
    invoke-static {}, Lcom/kakao/auth/Session;->getCurrentSession()Lcom/kakao/auth/Session;

    move-result-object v4

    .line 219
    .local v4, "session":Lcom/kakao/auth/Session;
    invoke-virtual {v4}, Lcom/kakao/auth/Session;->removeAccessToken()V

    .line 221
    invoke-virtual {v4}, Lcom/kakao/auth/Session;->isAvailableOpenByRefreshToken()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 222
    sget-object v7, Lcom/kakao/auth/Session$RequestType;->REFRESHING_ACCESS_TOKEN:Lcom/kakao/auth/Session$RequestType;

    invoke-virtual {v4, v7}, Lcom/kakao/auth/Session;->requestAccessToken(Lcom/kakao/auth/Session$RequestType;)Ljava/util/concurrent/Future;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kakao/auth/authorization/AuthorizationResult;

    .line 223
    .local v2, "refreshAccessTokenResult":Lcom/kakao/auth/authorization/AuthorizationResult;
    invoke-virtual {v2}, Lcom/kakao/auth/authorization/AuthorizationResult;->isSuccess()Z

    move-result v3

    .line 240
    .end local v0    # "errResponseBody":Lcom/kakao/network/response/ResponseBody;
    .end local v2    # "refreshAccessTokenResult":Lcom/kakao/auth/authorization/AuthorizationResult;
    .end local v4    # "session":Lcom/kakao/auth/Session;
    :cond_0
    :goto_0
    return v3

    .line 225
    .restart local v0    # "errResponseBody":Lcom/kakao/network/response/ResponseBody;
    :cond_1
    invoke-static {v0}, Lcom/kakao/auth/SingleNetworkTask;->getErrorCode(Lcom/kakao/network/response/ResponseBody;)Lcom/kakao/auth/ErrorCode;

    move-result-object v7

    sget-object v8, Lcom/kakao/auth/ErrorCode;->INVALID_SCOPE_CODE:Lcom/kakao/auth/ErrorCode;

    if-ne v7, v8, :cond_2

    .line 226
    invoke-static {}, Lcom/kakao/auth/SingleNetworkTask;->getTopActivity()Landroid/app/Activity;

    move-result-object v6

    .line 227
    .local v6, "topActivity":Landroid/app/Activity;
    if-eqz v6, :cond_0

    .line 228
    invoke-static {v6, v0}, Lcom/kakao/auth/SingleNetworkTask;->requestScopesUpdateBlocking(Landroid/app/Activity;Lcom/kakao/network/response/ResponseBody;)Lcom/kakao/auth/authorization/AuthorizationResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kakao/auth/authorization/AuthorizationResult;->isSuccess()Z

    move-result v3

    goto :goto_0

    .line 230
    .end local v6    # "topActivity":Landroid/app/Activity;
    :cond_2
    invoke-static {v0}, Lcom/kakao/auth/SingleNetworkTask;->getErrorCode(Lcom/kakao/network/response/ResponseBody;)Lcom/kakao/auth/ErrorCode;

    move-result-object v7

    sget-object v8, Lcom/kakao/auth/ErrorCode;->NEED_TO_AGE_AUTHENTICATION:Lcom/kakao/auth/ErrorCode;

    if-ne v7, v8, :cond_0

    .line 231
    invoke-static {}, Lcom/kakao/auth/SingleNetworkTask;->getTopActivity()Landroid/app/Activity;

    move-result-object v6

    .line 232
    .restart local v6    # "topActivity":Landroid/app/Activity;
    if-eqz v6, :cond_0

    .line 233
    invoke-static {v6}, Lcom/kakao/auth/api/AuthApi;->requestShowAgeAuthDialog(Landroid/content/Context;)I

    move-result v5

    .line 234
    .local v5, "state":I
    sget-object v7, Lcom/kakao/auth/AuthService$AgeAuthStatus;->SUCCESS:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    invoke-virtual {v7}, Lcom/kakao/auth/AuthService$AgeAuthStatus;->getValue()I

    move-result v7

    if-eq v5, v7, :cond_3

    sget-object v7, Lcom/kakao/auth/AuthService$AgeAuthStatus;->ALREADY_AGE_AUTHORIZED:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    invoke-virtual {v7}, Lcom/kakao/auth/AuthService$AgeAuthStatus;->getValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-ne v5, v7, :cond_4

    :cond_3
    const/4 v3, 0x1

    :goto_1
    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 237
    .end local v0    # "errResponseBody":Lcom/kakao/network/response/ResponseBody;
    .end local v5    # "state":I
    .end local v6    # "topActivity":Landroid/app/Activity;
    :catch_0
    move-exception v1

    .line 238
    .local v1, "ignore":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/kakao/util/helper/log/Logger;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static requestScopesUpdate(Landroid/app/Activity;Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;
    .locals 17
    .param p0, "topActivity"    # Landroid/app/Activity;
    .param p1, "scopeParam"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 121
    invoke-static {}, Lcom/kakao/auth/Session;->getCurrentSession()Lcom/kakao/auth/Session;

    move-result-object v14

    .line 122
    .local v14, "session":Lcom/kakao/auth/Session;
    invoke-virtual {v14}, Lcom/kakao/auth/Session;->getRefreshToken()Ljava/lang/String;

    move-result-object v12

    .line 123
    .local v12, "refreshToken":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/kakao/auth/Session;->getAppKey()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "appKey":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/kakao/auth/Session;->getRedirectUri()Ljava/lang/String;

    move-result-object v11

    .line 125
    .local v11, "redirectUri":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v2, v11, v12, v1}, Lcom/kakao/auth/SingleNetworkTask;->createAuthCodeRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;

    move-result-object v4

    .line 126
    .local v4, "authCodeRequest":Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;
    move-object/from16 v0, p0

    invoke-static {v4, v0}, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->newInstanceForScopesUpdate(Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;Landroid/app/Activity;)Lcom/kakao/auth/authorization/authcode/GetterAuthCode;

    move-result-object v9

    .line 127
    .local v9, "getter":Lcom/kakao/auth/authorization/authcode/GetterAuthCode;
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 128
    .local v7, "authorizationResult":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/kakao/auth/authorization/AuthorizationResult;>;"
    new-instance v10, Ljava/util/concurrent/CountDownLatch;

    const/4 v15, 0x1

    invoke-direct {v10, v15}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 129
    .local v10, "lock":Ljava/util/concurrent/CountDownLatch;
    new-instance v15, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v16, Lcom/kakao/auth/SingleNetworkTask$1;

    move-object/from16 v0, v16

    invoke-direct {v0, v9, v7, v10}, Lcom/kakao/auth/SingleNetworkTask$1;-><init>(Lcom/kakao/auth/authorization/authcode/GetterAuthCode;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    :try_start_0
    invoke-virtual {v10}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 156
    :goto_0
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kakao/auth/authorization/AuthorizationResult;

    .line 157
    .local v5, "authResult":Lcom/kakao/auth/authorization/AuthorizationResult;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/kakao/auth/authorization/AuthorizationResult;->isSuccess()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 159
    invoke-virtual {v5}, Lcom/kakao/auth/authorization/AuthorizationResult;->getRedirectURL()Ljava/lang/String;

    move-result-object v13

    .line 160
    .local v13, "resultRedirectURL":Ljava/lang/String;
    if-eqz v13, :cond_1

    invoke-virtual {v4}, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;->getRedirectURI()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 161
    invoke-virtual {v5}, Lcom/kakao/auth/authorization/AuthorizationResult;->getRedirectUri()Landroid/net/Uri;

    move-result-object v15

    invoke-static {v15}, Lcom/kakao/auth/authorization/authcode/AuthorizationCode;->createFromRedirectedUri(Landroid/net/Uri;)Lcom/kakao/auth/authorization/authcode/AuthorizationCode;

    move-result-object v3

    .line 163
    .local v3, "authCode":Lcom/kakao/auth/authorization/authcode/AuthorizationCode;
    invoke-virtual {v3}, Lcom/kakao/auth/authorization/authcode/AuthorizationCode;->hasAuthorizationCode()Z

    move-result v15

    if-nez v15, :cond_0

    .line 164
    const-string v15, "the result of authorization code request does not have authorization code."

    invoke-static {v15}, Lcom/kakao/util/helper/log/Logger;->e(Ljava/lang/String;)I

    move-object v6, v5

    .line 182
    .end local v3    # "authCode":Lcom/kakao/auth/authorization/authcode/AuthorizationCode;
    .end local v5    # "authResult":Lcom/kakao/auth/authorization/AuthorizationResult;
    .end local v13    # "resultRedirectURL":Ljava/lang/String;
    .local v6, "authResult":Lcom/kakao/auth/authorization/AuthorizationResult;
    :goto_1
    return-object v6

    .line 170
    .end local v6    # "authResult":Lcom/kakao/auth/authorization/AuthorizationResult;
    .restart local v3    # "authCode":Lcom/kakao/auth/authorization/authcode/AuthorizationCode;
    .restart local v5    # "authResult":Lcom/kakao/auth/authorization/AuthorizationResult;
    .restart local v13    # "resultRedirectURL":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v14, v3}, Lcom/kakao/auth/Session;->requestAccessTokenByAuthCode(Lcom/kakao/auth/authorization/authcode/AuthorizationCode;)Lcom/kakao/auth/authorization/AuthorizationResult;

    move-result-object v5

    .line 171
    invoke-virtual {v14, v5}, Lcom/kakao/auth/Session;->onAccessTokenCompleted(Lcom/kakao/auth/authorization/AuthorizationResult;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 178
    .end local v3    # "authCode":Lcom/kakao/auth/authorization/authcode/AuthorizationCode;
    .end local v13    # "resultRedirectURL":Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-virtual {v5}, Lcom/kakao/auth/authorization/AuthorizationResult;->getException()Ljava/lang/Exception;

    move-result-object v15

    if-eqz v15, :cond_2

    .line 179
    invoke-virtual {v5}, Lcom/kakao/auth/authorization/AuthorizationResult;->getException()Ljava/lang/Exception;

    move-result-object v15

    throw v15

    .line 172
    .restart local v3    # "authCode":Lcom/kakao/auth/authorization/authcode/AuthorizationCode;
    .restart local v13    # "resultRedirectURL":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 173
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {v8}, Lcom/kakao/util/helper/log/Logger;->e(Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v3    # "authCode":Lcom/kakao/auth/authorization/authcode/AuthorizationCode;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v13    # "resultRedirectURL":Ljava/lang/String;
    :cond_2
    move-object v6, v5

    .line 182
    .end local v5    # "authResult":Lcom/kakao/auth/authorization/AuthorizationResult;
    .restart local v6    # "authResult":Lcom/kakao/auth/authorization/AuthorizationResult;
    goto :goto_1

    .line 153
    .end local v6    # "authResult":Lcom/kakao/auth/authorization/AuthorizationResult;
    :catch_1
    move-exception v15

    goto :goto_0
.end method

.method private static requestScopesUpdateBlocking(Landroid/app/Activity;Lcom/kakao/network/response/ResponseBody;)Lcom/kakao/auth/authorization/AuthorizationResult;
    .locals 8
    .param p0, "topActivity"    # Landroid/app/Activity;
    .param p1, "result"    # Lcom/kakao/network/response/ResponseBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v4, 0x0

    .line 95
    .local v4, "scopeParam":Ljava/lang/String;
    const-string v5, "required_scopes"

    invoke-virtual {p1, v5}, Lcom/kakao/network/response/ResponseBody;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 97
    :try_start_0
    const-string v5, "required_scopes"

    sget-object v6, Lcom/kakao/network/response/ResponseBody;->STRING_CONVERTER:Lcom/kakao/network/response/ResponseBody$PrimitiveConverter;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/kakao/network/response/ResponseBody;->optConvertedList(Ljava/lang/String;Lcom/kakao/network/response/ResponseBody$Converter;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 98
    .local v2, "requiredScopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 99
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 100
    .local v3, "scope":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 101
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lcom/kakao/network/response/ResponseBody$ResponseBodyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "requiredScopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "scope":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
    new-instance v5, Lcom/kakao/auth/network/response/ApiResponse$InsufficientScopeException;

    invoke-direct {v5, p1}, Lcom/kakao/auth/network/response/ApiResponse$InsufficientScopeException;-><init>(Lcom/kakao/network/response/ResponseBody;)V

    throw v5

    .line 103
    .end local v1    # "e":Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v2    # "requiredScopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "scope":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    const-string v6, ""

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 109
    .end local v3    # "scope":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lcom/kakao/network/response/ResponseBody$ResponseBodyException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 117
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "requiredScopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-static {p0, v4}, Lcom/kakao/auth/SingleNetworkTask;->requestScopesUpdate(Landroid/app/Activity;Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public declared-synchronized requestApi(Lcom/kakao/network/IRequest;)Lcom/kakao/network/response/ResponseData;
    .locals 5
    .param p1, "request"    # Lcom/kakao/network/IRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/kakao/auth/SingleNetworkTask;->checkApiSession()Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    new-instance v1, Lcom/kakao/auth/network/response/ApiResponse$SessionClosedException;

    const-string v2, "Application Session is Closed."

    invoke-direct {v1, v2}, Lcom/kakao/auth/network/response/ApiResponse$SessionClosedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 268
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/kakao/auth/SingleNetworkTask;->request(Lcom/kakao/network/IRequest;)Lcom/kakao/network/response/ResponseData;

    move-result-object v0

    .line 269
    .local v0, "result":Lcom/kakao/network/response/ResponseData;
    const-string v1, "++ [%s]response : %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/kakao/network/response/ResponseData;->getHttpStatusCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/kakao/network/response/ResponseData;->getStringData()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 270
    invoke-virtual {v0}, Lcom/kakao/network/response/ResponseData;->getHttpStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    .line 271
    invoke-direct {p0, v0}, Lcom/kakao/auth/SingleNetworkTask;->handleApiError(Lcom/kakao/network/response/ResponseData;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    invoke-virtual {p0, p1}, Lcom/kakao/auth/SingleNetworkTask;->requestApi(Lcom/kakao/network/IRequest;)Lcom/kakao/network/response/ResponseData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 277
    .end local v0    # "result":Lcom/kakao/network/response/ResponseData;
    :cond_1
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized requestAuth(Lcom/kakao/network/IRequest;)Lcom/kakao/network/response/ResponseBody;
    .locals 5
    .param p1, "request"    # Lcom/kakao/network/IRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 281
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/kakao/auth/SingleNetworkTask;->request(Lcom/kakao/network/IRequest;)Lcom/kakao/network/response/ResponseData;

    move-result-object v0

    .line 282
    .local v0, "result":Lcom/kakao/network/response/ResponseData;
    const-string v1, "++ [%s]response : %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/kakao/network/response/ResponseData;->getHttpStatusCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/kakao/network/response/ResponseData;->getStringData()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 283
    new-instance v1, Lcom/kakao/network/response/ResponseBody;

    invoke-virtual {v0}, Lcom/kakao/network/response/ResponseData;->getHttpStatusCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/kakao/network/response/ResponseData;->getData()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/kakao/network/response/ResponseBody;-><init>(I[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 281
    .end local v0    # "result":Lcom/kakao/network/response/ResponseData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
