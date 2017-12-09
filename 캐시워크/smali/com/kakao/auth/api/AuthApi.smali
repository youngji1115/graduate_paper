.class public Lcom/kakao/auth/api/AuthApi;
.super Ljava/lang/Object;
.source "AuthApi.java"


# static fields
.field private static final sHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/kakao/auth/api/AuthApi;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/kakao/auth/api/AuthApi;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;Landroid/os/Bundle;ZLandroid/os/ResultReceiver;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Landroid/os/ResultReceiver;

    .prologue
    .line 52
    invoke-static {p0, p1, p2, p3}, Lcom/kakao/auth/api/AuthApi;->requestWebviewAuth(Landroid/content/Context;Landroid/os/Bundle;ZLandroid/os/ResultReceiver;)Z

    move-result v0

    return v0
.end method

.method public static requestAccessToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "redirectUri"    # Ljava/lang/String;
    .param p3, "authCode"    # Ljava/lang/String;
    .param p4, "refreshToken"    # Ljava/lang/String;
    .param p5, "approvalType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v8, Lcom/kakao/auth/SingleNetworkTask;

    invoke-direct {v8}, Lcom/kakao/auth/SingleNetworkTask;-><init>()V

    .line 63
    .local v8, "networkTask":Lcom/kakao/auth/SingleNetworkTask;
    new-instance v0, Lcom/kakao/auth/authorization/accesstoken/AccessTokenRequest;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/kakao/auth/authorization/accesstoken/AccessTokenRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/kakao/auth/SingleNetworkTask;->requestAuth(Lcom/kakao/network/IRequest;)Lcom/kakao/network/response/ResponseBody;

    move-result-object v9

    .line 64
    .local v9, "result":Lcom/kakao/network/response/ResponseBody;
    new-instance v7, Lcom/kakao/auth/authorization/accesstoken/AccessToken;

    invoke-direct {v7, v9}, Lcom/kakao/auth/authorization/accesstoken/AccessToken;-><init>(Lcom/kakao/network/response/ResponseBody;)V

    .line 65
    .local v7, "accessToken":Lcom/kakao/auth/authorization/accesstoken/AccessToken;
    invoke-static {v7}, Lcom/kakao/auth/authorization/AuthorizationResult;->createSuccessAccessTokenResult(Lcom/kakao/auth/authorization/accesstoken/AccessToken;)Lcom/kakao/auth/authorization/AuthorizationResult;

    move-result-object v0

    return-object v0
.end method

.method public static requestAccessTokenInfo()Lcom/kakao/auth/network/response/AccessTokenInfoResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Lcom/kakao/auth/SingleNetworkTask;

    invoke-direct {v0}, Lcom/kakao/auth/SingleNetworkTask;-><init>()V

    .line 167
    .local v0, "networkTask":Lcom/kakao/auth/SingleNetworkTask;
    new-instance v2, Lcom/kakao/auth/network/request/AccessTokenInfoRequest;

    invoke-direct {v2}, Lcom/kakao/auth/network/request/AccessTokenInfoRequest;-><init>()V

    invoke-virtual {v0, v2}, Lcom/kakao/auth/SingleNetworkTask;->requestApi(Lcom/kakao/network/IRequest;)Lcom/kakao/network/response/ResponseData;

    move-result-object v1

    .line 168
    .local v1, "result":Lcom/kakao/network/response/ResponseData;
    new-instance v2, Lcom/kakao/auth/network/response/AccessTokenInfoResponse;

    invoke-direct {v2, v1}, Lcom/kakao/auth/network/response/AccessTokenInfoResponse;-><init>(Lcom/kakao/network/response/ResponseData;)V

    return-object v2
.end method

.method public static requestShowAgeAuthDialog(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, v0}, Lcom/kakao/auth/api/AuthApi;->requestShowAgeAuthDialog(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public static requestShowAgeAuthDialog(Landroid/content/Context;Landroid/os/Bundle;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ageAuthParams"    # Landroid/os/Bundle;

    .prologue
    .line 93
    const-string v0, "android.permission.RECEIVE_SMS"

    invoke-static {p0, v0}, Lcom/kakao/util/helper/Utility;->isUsablePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/kakao/auth/api/AuthApi;->requestShowAgeAuthDialog(Landroid/os/Bundle;Z)I

    move-result v0

    return v0
.end method

.method public static requestShowAgeAuthDialog(Landroid/content/Context;Lcom/kakao/auth/AgeAuthParamBuilder;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "builder"    # Lcom/kakao/auth/AgeAuthParamBuilder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 154
    const-string v0, "android.permission.RECEIVE_SMS"

    invoke-static {p0, v0}, Lcom/kakao/util/helper/Utility;->isUsablePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/kakao/auth/api/AuthApi;->requestShowAgeAuthDialog(Lcom/kakao/auth/AgeAuthParamBuilder;Z)I

    move-result v0

    return v0
.end method

.method public static requestShowAgeAuthDialog(Landroid/os/Bundle;Z)I
    .locals 7
    .param p0, "ageAuthParams"    # Landroid/os/Bundle;
    .param p1, "useSmsReceiver"    # Z

    .prologue
    .line 101
    invoke-static {}, Lcom/kakao/auth/KakaoSDK;->getAdapter()Lcom/kakao/auth/KakaoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakao/auth/KakaoAdapter;->getApplicationConfig()Lcom/kakao/auth/IApplicationConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/kakao/auth/IApplicationConfig;->getTopActivity()Landroid/app/Activity;

    move-result-object v3

    .line 102
    .local v3, "context":Landroid/content/Context;
    if-eqz p1, :cond_0

    const-string v0, "android.permission.RECEIVE_SMS"

    invoke-static {v3, v0}, Lcom/kakao/util/helper/Utility;->isUsablePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/SecurityException;

    const-string v4, "Don\'t have permission RECEIVE_SMS"

    invoke-direct {v0, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 107
    .local v1, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 108
    .local v2, "lock":Ljava/util/concurrent/CountDownLatch;
    sget-object v6, Lcom/kakao/auth/api/AuthApi;->sHandler:Landroid/os/Handler;

    new-instance v0, Lcom/kakao/auth/api/AuthApi$1;

    move-object v4, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/kakao/auth/api/AuthApi$1;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Landroid/content/Context;Landroid/os/Bundle;Z)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0

    .line 143
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static requestShowAgeAuthDialog(Lcom/kakao/auth/AgeAuthParamBuilder;Z)I
    .locals 1
    .param p0, "builder"    # Lcom/kakao/auth/AgeAuthParamBuilder;
    .param p1, "useSmsReceiver"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/kakao/auth/AgeAuthParamBuilder;->build()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/kakao/auth/api/AuthApi;->requestShowAgeAuthDialog(Landroid/os/Bundle;Z)I

    move-result v0

    return v0
.end method

.method private static requestWebviewAuth(Landroid/content/Context;Landroid/os/Bundle;ZLandroid/os/ResultReceiver;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ageAuthParams"    # Landroid/os/Bundle;
    .param p2, "useSmsReceiver"    # Z
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 69
    invoke-static {p0}, Lcom/kakao/auth/api/AuthApi;->synchronizeCookies(Landroid/content/Context;)V

    .line 71
    invoke-static {}, Lcom/kakao/auth/KakaoSDK;->getAdapter()Lcom/kakao/auth/KakaoAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kakao/auth/KakaoAdapter;->getSessionConfig()Lcom/kakao/auth/ISessionConfig;

    move-result-object v3

    invoke-interface {v3}, Lcom/kakao/auth/ISessionConfig;->isUsingWebviewTimer()Z

    move-result v1

    .line 72
    .local v1, "isUsingTimer":Z
    sget-object v3, Lcom/kakao/network/ServerProtocol;->AGE_AUTH_AUTHORITY:Ljava/lang/String;

    const-string v4, "ageauths/main.html"

    invoke-static {v3, v4, p1}, Lcom/kakao/util/helper/Utility;->buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v2

    .line 73
    .local v2, "uri":Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AgeAuth request Url : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kakao/util/helper/log/Logger;->d(Ljava/lang/String;)I

    .line 75
    invoke-static {p0}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "key.url"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v3, "key.use.webview.timers"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    const-string v3, "key.use.sms.receiver"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 79
    const-string v3, "key.result.receiver"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 82
    const/4 v3, 0x1

    return v3
.end method

.method public static synchronizeCookies(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    .line 58
    .local v0, "syncManager":Landroid/webkit/CookieSyncManager;
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 59
    return-void
.end method
