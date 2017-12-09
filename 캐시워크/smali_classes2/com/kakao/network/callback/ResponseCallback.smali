.class public abstract Lcom/kakao/network/callback/ResponseCallback;
.super Ljava/lang/Object;
.source "ResponseCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    .local p0, "this":Lcom/kakao/network/callback/ResponseCallback;, "Lcom/kakao/network/callback/ResponseCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDidEnd()V
    .locals 0

    .prologue
    .line 49
    .local p0, "this":Lcom/kakao/network/callback/ResponseCallback;, "Lcom/kakao/network/callback/ResponseCallback<TT;>;"
    return-void
.end method

.method public onDidStart()V
    .locals 0

    .prologue
    .line 42
    .local p0, "this":Lcom/kakao/network/callback/ResponseCallback;, "Lcom/kakao/network/callback/ResponseCallback<TT;>;"
    return-void
.end method

.method public abstract onFailure(Lcom/kakao/network/ErrorResult;)V
.end method

.method public onFailureForUiThread(Lcom/kakao/network/ErrorResult;)V
    .locals 0
    .param p1, "errorResult"    # Lcom/kakao/network/ErrorResult;

    .prologue
    .line 57
    .local p0, "this":Lcom/kakao/network/callback/ResponseCallback;, "Lcom/kakao/network/callback/ResponseCallback<TT;>;"
    invoke-virtual {p0, p1}, Lcom/kakao/network/callback/ResponseCallback;->onFailure(Lcom/kakao/network/ErrorResult;)V

    .line 58
    return-void
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public onSuccessForUiThread(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/kakao/network/callback/ResponseCallback;, "Lcom/kakao/network/callback/ResponseCallback<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/kakao/network/callback/ResponseCallback;->onSuccess(Ljava/lang/Object;)V

    .line 67
    return-void
.end method
