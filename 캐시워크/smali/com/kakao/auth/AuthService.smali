.class public Lcom/kakao/auth/AuthService;
.super Ljava/lang/Object;
.source "AuthService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/auth/AuthService$AgeAuthStatus;,
        Lcom/kakao/auth/AuthService$AgeLimit;,
        Lcom/kakao/auth/AuthService$AgeAuthLevel;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestAccessTokenInfo(Lcom/kakao/auth/ApiResponseCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/auth/ApiResponseCallback",
            "<",
            "Lcom/kakao/auth/network/response/AccessTokenInfoResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "callback":Lcom/kakao/auth/ApiResponseCallback;, "Lcom/kakao/auth/ApiResponseCallback<Lcom/kakao/auth/network/response/AccessTokenInfoResponse;>;"
    invoke-static {}, Lcom/kakao/network/tasks/KakaoTaskQueue;->getInstance()Lcom/kakao/network/tasks/KakaoTaskQueue;

    move-result-object v0

    new-instance v1, Lcom/kakao/auth/AuthService$3;

    invoke-direct {v1, p0}, Lcom/kakao/auth/AuthService$3;-><init>(Lcom/kakao/network/callback/ResponseCallback;)V

    invoke-virtual {v0, v1}, Lcom/kakao/network/tasks/KakaoTaskQueue;->addTask(Lcom/kakao/network/tasks/KakaoResultTask;)Ljava/util/concurrent/Future;

    .line 224
    return-void
.end method

.method static requestAccessTokenInfo(Lcom/kakao/network/callback/ResponseCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/network/callback/ResponseCallback",
            "<",
            "Lcom/kakao/auth/network/response/AccessTokenInfoResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "callback":Lcom/kakao/network/callback/ResponseCallback;, "Lcom/kakao/network/callback/ResponseCallback<Lcom/kakao/auth/network/response/AccessTokenInfoResponse;>;"
    invoke-static {}, Lcom/kakao/network/tasks/KakaoTaskQueue;->getInstance()Lcom/kakao/network/tasks/KakaoTaskQueue;

    move-result-object v0

    new-instance v1, Lcom/kakao/auth/AuthService$4;

    invoke-direct {v1, p0}, Lcom/kakao/auth/AuthService$4;-><init>(Lcom/kakao/network/callback/ResponseCallback;)V

    invoke-virtual {v0, v1}, Lcom/kakao/network/tasks/KakaoTaskQueue;->addTask(Lcom/kakao/network/tasks/KakaoResultTask;)Ljava/util/concurrent/Future;

    .line 233
    return-void
.end method

.method public static requestShowAgeAuthDialog(Lcom/kakao/auth/callback/AccountResponseCallback;Landroid/os/Bundle;Z)Ljava/util/concurrent/Future;
    .locals 2
    .param p0, "callback"    # Lcom/kakao/auth/callback/AccountResponseCallback;
    .param p1, "ageAuthParams"    # Landroid/os/Bundle;
    .param p2, "useSmsReceiver"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/auth/callback/AccountResponseCallback;",
            "Landroid/os/Bundle;",
            "Z)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    invoke-static {}, Lcom/kakao/network/tasks/KakaoTaskQueue;->getInstance()Lcom/kakao/network/tasks/KakaoTaskQueue;

    move-result-object v0

    new-instance v1, Lcom/kakao/auth/AuthService$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/kakao/auth/AuthService$1;-><init>(Lcom/kakao/network/callback/ResponseCallback;Landroid/os/Bundle;Z)V

    invoke-virtual {v0, v1}, Lcom/kakao/network/tasks/KakaoTaskQueue;->addTask(Lcom/kakao/network/tasks/KakaoResultTask;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static requestShowAgeAuthDialog(Lcom/kakao/auth/callback/AccountResponseCallback;Lcom/kakao/auth/AgeAuthParamBuilder;Z)Ljava/util/concurrent/Future;
    .locals 2
    .param p0, "callback"    # Lcom/kakao/auth/callback/AccountResponseCallback;
    .param p1, "builder"    # Lcom/kakao/auth/AgeAuthParamBuilder;
    .param p2, "useSmsReceiver"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kakao/auth/callback/AccountResponseCallback;",
            "Lcom/kakao/auth/AgeAuthParamBuilder;",
            "Z)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 202
    invoke-static {}, Lcom/kakao/network/tasks/KakaoTaskQueue;->getInstance()Lcom/kakao/network/tasks/KakaoTaskQueue;

    move-result-object v0

    new-instance v1, Lcom/kakao/auth/AuthService$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/kakao/auth/AuthService$2;-><init>(Lcom/kakao/network/callback/ResponseCallback;Lcom/kakao/auth/AgeAuthParamBuilder;Z)V

    invoke-virtual {v0, v1}, Lcom/kakao/network/tasks/KakaoTaskQueue;->addTask(Lcom/kakao/network/tasks/KakaoResultTask;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
