.class public abstract Lcom/kakao/auth/callback/AccountResponseCallback;
.super Lcom/kakao/network/callback/ResponseCallback;
.source "AccountResponseCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kakao/network/callback/ResponseCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/kakao/network/callback/ResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAgeAuthFailure(Lcom/kakao/auth/callback/AccountErrorResult;)V
.end method

.method public onFailure(Lcom/kakao/network/ErrorResult;)V
    .locals 3
    .param p1, "errorResult"    # Lcom/kakao/network/ErrorResult;

    .prologue
    .line 30
    new-instance v0, Lcom/kakao/auth/callback/AccountErrorResult;

    invoke-virtual {p1}, Lcom/kakao/network/ErrorResult;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/kakao/network/ErrorResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kakao/auth/callback/AccountErrorResult;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/kakao/auth/callback/AccountResponseCallback;->onAgeAuthFailure(Lcom/kakao/auth/callback/AccountErrorResult;)V

    .line 31
    return-void
.end method

.method public onSuccessForUiThread(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "statusCode"    # Ljava/lang/Integer;

    .prologue
    .line 35
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/kakao/auth/AuthService$AgeAuthStatus;->valueOf(I)Lcom/kakao/auth/AuthService$AgeAuthStatus;

    move-result-object v0

    .line 36
    .local v0, "status":Lcom/kakao/auth/AuthService$AgeAuthStatus;
    sget-object v1, Lcom/kakao/auth/AuthService$AgeAuthStatus;->SUCCESS:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/kakao/auth/AuthService$AgeAuthStatus;->ALREADY_AGE_AUTHORIZED:Lcom/kakao/auth/AuthService$AgeAuthStatus;

    if-ne v0, v1, :cond_1

    .line 37
    :cond_0
    invoke-virtual {p0, p1}, Lcom/kakao/auth/callback/AccountResponseCallback;->onSuccess(Ljava/lang/Object;)V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_1
    new-instance v1, Lcom/kakao/auth/callback/AccountErrorResult;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/kakao/auth/callback/AccountErrorResult;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/kakao/auth/callback/AccountResponseCallback;->onAgeAuthFailure(Lcom/kakao/auth/callback/AccountErrorResult;)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccessForUiThread(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/kakao/auth/callback/AccountResponseCallback;->onSuccessForUiThread(Ljava/lang/Integer;)V

    return-void
.end method
