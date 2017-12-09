.class public abstract Lcom/kakao/usermgmt/callback/LogoutResponseCallback;
.super Lcom/kakao/auth/ApiResponseCallback;
.source "LogoutResponseCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kakao/auth/ApiResponseCallback",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/kakao/auth/ApiResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onCompleteLogout()V
.end method

.method public onDidEnd()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/kakao/auth/Session;->getCurrentSession()Lcom/kakao/auth/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kakao/auth/Session;->close()V

    .line 47
    invoke-virtual {p0}, Lcom/kakao/usermgmt/callback/LogoutResponseCallback;->onCompleteLogout()V

    .line 48
    return-void
.end method

.method public onFailure(Lcom/kakao/network/ErrorResult;)V
    .locals 0
    .param p1, "errorResult"    # Lcom/kakao/network/ErrorResult;

    .prologue
    .line 30
    return-void
.end method

.method public onNotSignedUp()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public onSessionClosed(Lcom/kakao/network/ErrorResult;)V
    .locals 0
    .param p1, "errorResult"    # Lcom/kakao/network/ErrorResult;

    .prologue
    .line 34
    return-void
.end method

.method public onSuccess(Ljava/lang/Long;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Long;

    .prologue
    .line 42
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/kakao/usermgmt/callback/LogoutResponseCallback;->onSuccess(Ljava/lang/Long;)V

    return-void
.end method
