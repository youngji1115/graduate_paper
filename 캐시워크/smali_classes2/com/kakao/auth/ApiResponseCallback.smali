.class public abstract Lcom/kakao/auth/ApiResponseCallback;
.super Lcom/kakao/network/callback/ResponseCallback;
.source "ApiResponseCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/kakao/network/callback/ResponseCallback",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    .local p0, "this":Lcom/kakao/auth/ApiResponseCallback;, "Lcom/kakao/auth/ApiResponseCallback<TT;>;"
    invoke-direct {p0}, Lcom/kakao/network/callback/ResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/kakao/network/ErrorResult;)V
    .locals 0
    .param p1, "errorResult"    # Lcom/kakao/network/ErrorResult;

    .prologue
    .line 44
    .local p0, "this":Lcom/kakao/auth/ApiResponseCallback;, "Lcom/kakao/auth/ApiResponseCallback<TT;>;"
    return-void
.end method

.method public onFailureForUiThread(Lcom/kakao/network/ErrorResult;)V
    .locals 2
    .param p1, "errorResult"    # Lcom/kakao/network/ErrorResult;

    .prologue
    .line 47
    .local p0, "this":Lcom/kakao/auth/ApiResponseCallback;, "Lcom/kakao/auth/ApiResponseCallback<TT;>;"
    invoke-virtual {p1}, Lcom/kakao/network/ErrorResult;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/kakao/auth/ErrorCode;->valueOf(Ljava/lang/Integer;)Lcom/kakao/auth/ErrorCode;

    move-result-object v0

    .line 48
    .local v0, "result":Lcom/kakao/auth/ErrorCode;
    sget-object v1, Lcom/kakao/auth/ErrorCode;->NOT_REGISTERED_USER_CODE:Lcom/kakao/auth/ErrorCode;

    if-ne v0, v1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/kakao/auth/ApiResponseCallback;->onNotSignedUp()V

    .line 56
    :goto_0
    return-void

    .line 50
    :cond_0
    sget-object v1, Lcom/kakao/auth/ErrorCode;->INVALID_TOKEN_CODE:Lcom/kakao/auth/ErrorCode;

    if-ne v0, v1, :cond_1

    .line 51
    invoke-static {}, Lcom/kakao/auth/Session;->getCurrentSession()Lcom/kakao/auth/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kakao/auth/Session;->close()V

    .line 52
    invoke-virtual {p0, p1}, Lcom/kakao/auth/ApiResponseCallback;->onSessionClosed(Lcom/kakao/network/ErrorResult;)V

    goto :goto_0

    .line 54
    :cond_1
    invoke-super {p0, p1}, Lcom/kakao/network/callback/ResponseCallback;->onFailureForUiThread(Lcom/kakao/network/ErrorResult;)V

    goto :goto_0
.end method

.method public abstract onNotSignedUp()V
.end method

.method public abstract onSessionClosed(Lcom/kakao/network/ErrorResult;)V
.end method
