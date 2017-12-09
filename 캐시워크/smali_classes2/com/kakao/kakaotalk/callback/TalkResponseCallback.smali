.class public abstract Lcom/kakao/kakaotalk/callback/TalkResponseCallback;
.super Lcom/kakao/auth/ApiResponseCallback;
.source "TalkResponseCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/kakao/auth/ApiResponseCallback",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    .local p0, "this":Lcom/kakao/kakaotalk/callback/TalkResponseCallback;, "Lcom/kakao/kakaotalk/callback/TalkResponseCallback<TT;>;"
    invoke-direct {p0}, Lcom/kakao/auth/ApiResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailureForUiThread(Lcom/kakao/network/ErrorResult;)V
    .locals 2
    .param p1, "errorResult"    # Lcom/kakao/network/ErrorResult;

    .prologue
    .line 33
    .local p0, "this":Lcom/kakao/kakaotalk/callback/TalkResponseCallback;, "Lcom/kakao/kakaotalk/callback/TalkResponseCallback<TT;>;"
    invoke-virtual {p1}, Lcom/kakao/network/ErrorResult;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/kakao/auth/ErrorCode;->valueOf(Ljava/lang/Integer;)Lcom/kakao/auth/ErrorCode;

    move-result-object v0

    .line 34
    .local v0, "result":Lcom/kakao/auth/ErrorCode;
    sget-object v1, Lcom/kakao/auth/ErrorCode;->NOT_EXIST_KAKAOTALK_USER_CODE:Lcom/kakao/auth/ErrorCode;

    if-ne v0, v1, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/kakao/kakaotalk/callback/TalkResponseCallback;->onNotKakaoTalkUser()V

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-super {p0, p1}, Lcom/kakao/auth/ApiResponseCallback;->onFailureForUiThread(Lcom/kakao/network/ErrorResult;)V

    goto :goto_0
.end method

.method public abstract onNotKakaoTalkUser()V
.end method
