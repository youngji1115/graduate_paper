.class public Lcom/kakao/auth/authorization/authcode/GetterAuthCode;
.super Lcom/kakao/auth/authorization/Authorizer;
.source "GetterAuthCode.java"


# static fields
.field private static final sHandler:Landroid/os/Handler;


# instance fields
.field private authCodeRequest:Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;

.field private final callerActivity:Landroid/app/Activity;

.field private final commandQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;Landroid/app/Activity;)V
    .locals 2
    .param p1, "authCodeRequest"    # Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;
    .param p2, "callerActivity"    # Landroid/app/Activity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/kakao/auth/authorization/Authorizer;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->commandQueue:Ljava/util/Queue;

    .line 49
    iput-object p1, p0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->authCodeRequest:Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;

    .line 50
    iget-object v0, p0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->commandQueue:Ljava/util/Queue;

    sget-object v1, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;->WEBVIEW_AUTH:Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 51
    iput-object p2, p0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->callerActivity:Landroid/app/Activity;

    .line 52
    return-void
.end method

.method private constructor <init>(Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;Lcom/kakao/auth/AuthType;Landroid/app/Activity;)V
    .locals 3
    .param p1, "authCodeRequest"    # Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;
    .param p2, "authType"    # Lcom/kakao/auth/AuthType;
    .param p3, "callerActivity"    # Landroid/app/Activity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/kakao/auth/authorization/Authorizer;-><init>()V

    .line 38
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->commandQueue:Ljava/util/Queue;

    .line 55
    iput-object p1, p0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->authCodeRequest:Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;

    .line 56
    if-nez p2, :cond_0

    sget-object v0, Lcom/kakao/auth/AuthType;->KAKAO_TALK:Lcom/kakao/auth/AuthType;

    .line 57
    .local v0, "type":Lcom/kakao/auth/AuthType;
    :goto_0
    iput-object p3, p0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->callerActivity:Landroid/app/Activity;

    .line 59
    sget-object v1, Lcom/kakao/auth/authorization/authcode/GetterAuthCode$2;->$SwitchMap$com$kakao$auth$AuthType:[I

    invoke-virtual {v0}, Lcom/kakao/auth/AuthType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 77
    :goto_1
    iget-object v1, p0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->commandQueue:Ljava/util/Queue;

    sget-object v2, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;->WEBVIEW_AUTH:Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 78
    return-void

    .end local v0    # "type":Lcom/kakao/auth/AuthType;
    :cond_0
    move-object v0, p2

    .line 56
    goto :goto_0

    .line 61
    .restart local v0    # "type":Lcom/kakao/auth/AuthType;
    :pswitch_0
    iget-object v1, p0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->commandQueue:Ljava/util/Queue;

    sget-object v2, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;->LOGGED_IN_TALK:Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v1, p0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->commandQueue:Ljava/util/Queue;

    sget-object v2, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;->LOGGED_OUT_TALK:Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 65
    :pswitch_1
    iget-object v1, p0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->commandQueue:Ljava/util/Queue;

    sget-object v2, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;->LOGGED_IN_STORY:Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68
    :pswitch_2
    iget-object v1, p0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->commandQueue:Ljava/util/Queue;

    sget-object v2, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;->LOGGED_IN_TALK:Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 71
    :pswitch_3
    iget-object v1, p0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->commandQueue:Ljava/util/Queue;

    sget-object v2, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;->LOGGED_IN_TALK:Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v1, p0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->commandQueue:Ljava/util/Queue;

    sget-object v2, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;->LOGGED_OUT_TALK:Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v1, p0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->commandQueue:Ljava/util/Queue;

    sget-object v2, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;->LOGGED_IN_STORY:Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleResultOk(Landroid/content/Intent;)Lcom/kakao/auth/authorization/AuthorizationResult;
    .locals 6
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 147
    .local v2, "extras":Landroid/os/Bundle;
    const-string v4, "com.kakao.sdk.talk.error.type"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "errorType":Ljava/lang/String;
    const-string v4, "com.kakao.sdk.talk.redirectUrl"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "rediretURL":Ljava/lang/String;
    if-nez v1, :cond_0

    if-eqz v3, :cond_0

    .line 150
    invoke-static {v3}, Lcom/kakao/auth/authorization/AuthorizationResult;->createSuccessAuthCodeResult(Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;

    move-result-object v4

    .line 155
    :goto_0
    return-object v4

    .line 152
    :cond_0
    if-eqz v1, :cond_1

    const-string v4, "NotSupportError"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 153
    invoke-static {}, Lcom/kakao/auth/authorization/AuthorizationResult;->createAuthCodePassResult()Lcom/kakao/auth/authorization/AuthorizationResult;

    move-result-object v4

    goto :goto_0

    .line 154
    :cond_1
    const-string v4, "com.kakao.sdk.talk.error.description"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "errorDes":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "redirectURL="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kakao/auth/authorization/AuthorizationResult;->createAuthCodeOAuthErrorResult(Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;

    move-result-object v4

    goto :goto_0
.end method

.method public static newInstance(Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;Lcom/kakao/auth/AuthType;Landroid/app/Activity;)Lcom/kakao/auth/authorization/authcode/GetterAuthCode;
    .locals 1
    .param p0, "authCodeRequest"    # Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;
    .param p1, "authType"    # Lcom/kakao/auth/AuthType;
    .param p2, "callerActivity"    # Landroid/app/Activity;

    .prologue
    .line 41
    new-instance v0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;

    invoke-direct {v0, p0, p1, p2}, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;-><init>(Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;Lcom/kakao/auth/AuthType;Landroid/app/Activity;)V

    return-object v0
.end method

.method public static newInstanceForScopesUpdate(Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;Landroid/app/Activity;)Lcom/kakao/auth/authorization/authcode/GetterAuthCode;
    .locals 1
    .param p0, "authCodeRequest"    # Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;
    .param p1, "callerActivity"    # Landroid/app/Activity;

    .prologue
    .line 45
    new-instance v0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;

    invoke-direct {v0, p0, p1}, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;-><init>(Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;Landroid/app/Activity;)V

    return-object v0
.end method

.method private requestWebviewAuth()Z
    .locals 10

    .prologue
    .line 181
    new-instance v4, Lcom/kakao/auth/authorization/authcode/GetterAuthCode$1;

    sget-object v8, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->sHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v8}, Lcom/kakao/auth/authorization/authcode/GetterAuthCode$1;-><init>(Lcom/kakao/auth/authorization/authcode/GetterAuthCode;Landroid/os/Handler;)V

    .line 199
    .local v4, "resultReceiver":Landroid/os/ResultReceiver;
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 200
    .local v3, "parameters":Landroid/os/Bundle;
    const-string v8, "client_id"

    iget-object v9, p0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->authCodeRequest:Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;

    invoke-virtual {v9}, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;->getAppKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v8, "redirect_uri"

    iget-object v9, p0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->authCodeRequest:Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;

    invoke-virtual {v9}, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;->getRedirectURI()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v8, "response_type"

    const-string v9, "code"

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v8, p0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->authCodeRequest:Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;

    invoke-virtual {v8}, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;->getExtraParams()Landroid/os/Bundle;

    move-result-object v0

    .line 205
    .local v0, "extraParams":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 206
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 207
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 208
    .local v7, "value":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 209
    invoke-virtual {v3, v2, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    .end local v0    # "extraParams":Landroid/os/Bundle;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "parameters":Landroid/os/Bundle;
    .end local v7    # "value":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 227
    .local v5, "t":Ljava/lang/Throwable;
    const-string v8, "WebViewAuthHandler is failed"

    invoke-static {v8, v5}, Lcom/kakao/util/helper/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    const/4 v8, 0x0

    .line 230
    .end local v5    # "t":Ljava/lang/Throwable;
    :goto_1
    return v8

    .line 214
    .restart local v0    # "extraParams":Landroid/os/Bundle;
    .restart local v3    # "parameters":Landroid/os/Bundle;
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->callerActivity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/kakao/auth/api/AuthApi;->synchronizeCookies(Landroid/content/Context;)V

    .line 216
    sget-object v8, Lcom/kakao/network/ServerProtocol;->AUTH_AUTHORITY:Ljava/lang/String;

    const-string v9, "oauth/authorize"

    invoke-static {v8, v9, v3}, Lcom/kakao/util/helper/Utility;->buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v6

    .line 218
    .local v6, "uri":Landroid/net/Uri;
    iget-object v8, p0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->callerActivity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/kakao/auth/authorization/authcode/KakaoWebViewActivity;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 219
    .local v1, "intent":Landroid/content/Intent;
    const-string v8, "key.url"

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v8, "key.extra.headers"

    iget-object v9, p0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->authCodeRequest:Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;

    invoke-virtual {v9}, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;->getExtraHeaders()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 221
    const-string v8, "key.use.webview.timers"

    invoke-static {}, Lcom/kakao/auth/KakaoSDK;->getAdapter()Lcom/kakao/auth/KakaoAdapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/kakao/auth/KakaoAdapter;->getSessionConfig()Lcom/kakao/auth/ISessionConfig;

    move-result-object v9

    invoke-interface {v9}, Lcom/kakao/auth/ISessionConfig;->isUsingWebviewTimer()Z

    move-result v9

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 222
    const-string v8, "key.result.receiver"

    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 224
    iget-object v8, p0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->callerActivity:Landroid/app/Activity;

    invoke-virtual {v8, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 230
    const/4 v8, 0x1

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->commandQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 96
    return-void
.end method

.method protected done(Lcom/kakao/auth/authorization/AuthorizationResult;)V
    .locals 0
    .param p1, "result"    # Lcom/kakao/auth/authorization/AuthorizationResult;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/kakao/auth/authorization/Authorizer;->done(Lcom/kakao/auth/authorization/AuthorizationResult;)V

    .line 91
    invoke-virtual {p0}, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->clear()V

    .line 92
    return-void
.end method

.method protected doneOnOAuthError(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetterAuthorizationCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kakao/util/helper/log/Logger;->e(Ljava/lang/String;)I

    .line 84
    invoke-static {p1}, Lcom/kakao/auth/authorization/AuthorizationResult;->createAuthCodeOAuthErrorResult(Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->done(Lcom/kakao/auth/authorization/AuthorizationResult;)V

    .line 85
    invoke-virtual {p0}, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->clear()V

    .line 86
    return-void
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 123
    if-nez p3, :cond_0

    .line 125
    const-string v1, "pressed back button or cancel button during requesting auth code."

    invoke-static {v1}, Lcom/kakao/auth/authorization/AuthorizationResult;->createAuthCodeCancelResult(Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;

    move-result-object v0

    .line 136
    .local v0, "outcome":Lcom/kakao/auth/authorization/AuthorizationResult;
    :goto_0
    invoke-virtual {v0}, Lcom/kakao/auth/authorization/AuthorizationResult;->isPass()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 137
    invoke-virtual {p0}, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->start()V

    .line 142
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 126
    .end local v0    # "outcome":Lcom/kakao/auth/authorization/AuthorizationResult;
    :cond_0
    invoke-static {p3}, Lcom/kakao/util/helper/KakaoServiceProtocol;->isCapriProtocolMatched(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    const-string v1, "TalkProtocol is mismatched during requesting auth code through KakaoTalk."

    invoke-static {v1}, Lcom/kakao/auth/authorization/AuthorizationResult;->createAuthCodeOAuthErrorResult(Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;

    move-result-object v0

    .restart local v0    # "outcome":Lcom/kakao/auth/authorization/AuthorizationResult;
    goto :goto_0

    .line 128
    .end local v0    # "outcome":Lcom/kakao/auth/authorization/AuthorizationResult;
    :cond_1
    if-nez p2, :cond_2

    .line 129
    const-string v1, "pressed cancel button during requesting auth code."

    invoke-static {v1}, Lcom/kakao/auth/authorization/AuthorizationResult;->createAuthCodeCancelResult(Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;

    move-result-object v0

    .restart local v0    # "outcome":Lcom/kakao/auth/authorization/AuthorizationResult;
    goto :goto_0

    .line 130
    .end local v0    # "outcome":Lcom/kakao/auth/authorization/AuthorizationResult;
    :cond_2
    const/4 v1, -0x1

    if-eq p2, v1, :cond_3

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got unexpected resultCode during requesting auth code. code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kakao/auth/authorization/AuthorizationResult;->createAuthCodeOAuthErrorResult(Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;

    move-result-object v0

    .restart local v0    # "outcome":Lcom/kakao/auth/authorization/AuthorizationResult;
    goto :goto_0

    .line 133
    .end local v0    # "outcome":Lcom/kakao/auth/authorization/AuthorizationResult;
    :cond_3
    invoke-direct {p0, p3}, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->handleResultOk(Landroid/content/Intent;)Lcom/kakao/auth/authorization/AuthorizationResult;

    move-result-object v0

    .restart local v0    # "outcome":Lcom/kakao/auth/authorization/AuthorizationResult;
    goto :goto_0

    .line 139
    :cond_4
    invoke-virtual {p0, v0}, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->done(Lcom/kakao/auth/authorization/AuthorizationResult;)V

    goto :goto_1
.end method

.method onWebViewCompleted(Ljava/lang/String;Lcom/kakao/util/exception/KakaoException;)V
    .locals 6
    .param p1, "redirectURL"    # Ljava/lang/String;
    .param p2, "exception"    # Lcom/kakao/util/exception/KakaoException;

    .prologue
    .line 235
    if-eqz p1, :cond_2

    .line 236
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 237
    .local v3, "redirectedUri":Landroid/net/Uri;
    const-string v5, "code"

    invoke-virtual {v3, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "code":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 239
    invoke-static {p1}, Lcom/kakao/auth/authorization/AuthorizationResult;->createSuccessAuthCodeResult(Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;

    move-result-object v4

    .line 256
    .end local v0    # "code":Ljava/lang/String;
    .end local v3    # "redirectedUri":Landroid/net/Uri;
    .local v4, "result":Lcom/kakao/auth/authorization/AuthorizationResult;
    :goto_0
    invoke-virtual {p0, v4}, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->done(Lcom/kakao/auth/authorization/AuthorizationResult;)V

    .line 257
    return-void

    .line 241
    .end local v4    # "result":Lcom/kakao/auth/authorization/AuthorizationResult;
    .restart local v0    # "code":Ljava/lang/String;
    .restart local v3    # "redirectedUri":Landroid/net/Uri;
    :cond_0
    const-string v5, "error"

    invoke-virtual {v3, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "error":Ljava/lang/String;
    const-string v5, "error_description"

    invoke-virtual {v3, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, "errorDescription":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v5, "access_denied"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 244
    const-string v5, "pressed back button or cancel button during requesting auth code."

    invoke-static {v5}, Lcom/kakao/auth/authorization/AuthorizationResult;->createAuthCodeCancelResult(Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;

    move-result-object v4

    .restart local v4    # "result":Lcom/kakao/auth/authorization/AuthorizationResult;
    goto :goto_0

    .line 246
    .end local v4    # "result":Lcom/kakao/auth/authorization/AuthorizationResult;
    :cond_1
    invoke-static {v2}, Lcom/kakao/auth/authorization/AuthorizationResult;->createAuthCodeOAuthErrorResult(Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;

    move-result-object v4

    .restart local v4    # "result":Lcom/kakao/auth/authorization/AuthorizationResult;
    goto :goto_0

    .line 250
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "error":Ljava/lang/String;
    .end local v2    # "errorDescription":Ljava/lang/String;
    .end local v3    # "redirectedUri":Landroid/net/Uri;
    .end local v4    # "result":Lcom/kakao/auth/authorization/AuthorizationResult;
    :cond_2
    invoke-virtual {p2}, Lcom/kakao/util/exception/KakaoException;->isCancledOperation()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 251
    invoke-virtual {p2}, Lcom/kakao/util/exception/KakaoException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kakao/auth/authorization/AuthorizationResult;->createAuthCodeCancelResult(Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;

    move-result-object v4

    .restart local v4    # "result":Lcom/kakao/auth/authorization/AuthorizationResult;
    goto :goto_0

    .line 253
    .end local v4    # "result":Lcom/kakao/auth/authorization/AuthorizationResult;
    :cond_3
    invoke-virtual {p2}, Lcom/kakao/util/exception/KakaoException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kakao/auth/authorization/AuthorizationResult;->createAuthCodeOAuthErrorResult(Ljava/lang/String;)Lcom/kakao/auth/authorization/AuthorizationResult;

    move-result-object v4

    .restart local v4    # "result":Lcom/kakao/auth/authorization/AuthorizationResult;
    goto :goto_0
.end method

.method public request(Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;)Z
    .locals 5
    .param p1, "command"    # Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

    .prologue
    const/4 v3, 0x0

    .line 160
    const/4 v2, 0x1

    .line 161
    .local v2, "result":Z
    sget-object v4, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;->WEBVIEW_AUTH:Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

    if-eq p1, v4, :cond_1

    .line 162
    iget-object v4, p0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->authCodeRequest:Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;

    invoke-virtual {v4, p1}, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;->getIntent(Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;)Landroid/content/Intent;

    move-result-object v1

    .line 163
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 177
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v3

    .line 168
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->authCodeRequest:Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;

    invoke-virtual {v4}, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;->getRequestCode()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    move v3, v2

    .line 177
    goto :goto_0

    .line 169
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {v0}, Lcom/kakao/util/helper/log/Logger;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 174
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-direct {p0}, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->requestWebviewAuth()Z

    move-result v2

    goto :goto_1
.end method

.method public start()V
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "command":Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;
    :cond_0
    iget-object v1, p0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->commandQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "command":Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;
    check-cast v0, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;

    .restart local v0    # "command":Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;
    if-eqz v0, :cond_2

    .line 101
    iget-object v1, p0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->authCodeRequest:Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;

    invoke-virtual {v1}, Lcom/kakao/auth/authorization/authcode/AuthCodeRequest;->needsInternetPermission()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->checkInternetPermission()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    :cond_1
    invoke-virtual {p0, v0}, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->request(Lcom/kakao/auth/authorization/authcode/AuthCodeRequest$Command;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 111
    :cond_2
    const-string v1, "Failed to get Authorization Code."

    invoke-virtual {p0, v1}, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->doneOnOAuthError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->callerActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/kakao/auth/authorization/authcode/GetterAuthCode;->callerActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 118
    :cond_0
    return-void
.end method
