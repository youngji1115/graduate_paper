.class final Lcom/kakao/auth/AuthService$3;
.super Lcom/kakao/network/tasks/KakaoResultTask;
.source "AuthService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/auth/AuthService;->requestAccessTokenInfo(Lcom/kakao/auth/ApiResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kakao/network/tasks/KakaoResultTask",
        "<",
        "Lcom/kakao/auth/network/response/AccessTokenInfoResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/kakao/network/callback/ResponseCallback;)V
    .locals 0

    .prologue
    .line 218
    .local p1, "x0":Lcom/kakao/network/callback/ResponseCallback;, "Lcom/kakao/network/callback/ResponseCallback<Lcom/kakao/auth/network/response/AccessTokenInfoResponse;>;"
    invoke-direct {p0, p1}, Lcom/kakao/network/tasks/KakaoResultTask;-><init>(Lcom/kakao/network/callback/ResponseCallback;)V

    return-void
.end method


# virtual methods
.method public call()Lcom/kakao/auth/network/response/AccessTokenInfoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {}, Lcom/kakao/auth/api/AuthApi;->requestAccessTokenInfo()Lcom/kakao/auth/network/response/AccessTokenInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/kakao/auth/AuthService$3;->call()Lcom/kakao/auth/network/response/AccessTokenInfoResponse;

    move-result-object v0

    return-object v0
.end method
