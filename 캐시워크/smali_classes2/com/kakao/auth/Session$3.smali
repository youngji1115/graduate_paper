.class Lcom/kakao/auth/Session$3;
.super Lcom/kakao/network/callback/ResponseCallback;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kakao/auth/Session;->requestAccessTokenInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kakao/network/callback/ResponseCallback",
        "<",
        "Lcom/kakao/auth/network/response/AccessTokenInfoResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kakao/auth/Session;


# direct methods
.method constructor <init>(Lcom/kakao/auth/Session;)V
    .locals 0
    .param p1, "this$0"    # Lcom/kakao/auth/Session;

    .prologue
    .line 778
    iput-object p1, p0, Lcom/kakao/auth/Session$3;->this$0:Lcom/kakao/auth/Session;

    invoke-direct {p0}, Lcom/kakao/network/callback/ResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/kakao/network/ErrorResult;)V
    .locals 4
    .param p1, "errorResult"    # Lcom/kakao/network/ErrorResult;

    .prologue
    .line 781
    iget-object v0, p0, Lcom/kakao/auth/Session$3;->this$0:Lcom/kakao/auth/Session;

    const-wide/32 v2, 0x493e0

    invoke-static {v0, v2, v3}, Lcom/kakao/auth/Session;->access$1100(Lcom/kakao/auth/Session;J)V

    .line 782
    return-void
.end method

.method public onFailureForUiThread(Lcom/kakao/network/ErrorResult;)V
    .locals 2
    .param p1, "errorResult"    # Lcom/kakao/network/ErrorResult;

    .prologue
    .line 792
    invoke-virtual {p1}, Lcom/kakao/network/ErrorResult;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/kakao/auth/ErrorCode;->valueOf(Ljava/lang/Integer;)Lcom/kakao/auth/ErrorCode;

    move-result-object v0

    .line 793
    .local v0, "result":Lcom/kakao/auth/ErrorCode;
    sget-object v1, Lcom/kakao/auth/ErrorCode;->INVALID_TOKEN_CODE:Lcom/kakao/auth/ErrorCode;

    if-ne v0, v1, :cond_0

    .line 794
    iget-object v1, p0, Lcom/kakao/auth/Session$3;->this$0:Lcom/kakao/auth/Session;

    invoke-virtual {v1}, Lcom/kakao/auth/Session;->isOpenable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 795
    iget-object v1, p0, Lcom/kakao/auth/Session$3;->this$0:Lcom/kakao/auth/Session;

    invoke-virtual {v1}, Lcom/kakao/auth/Session;->implicitOpen()Z

    .line 798
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/kakao/auth/network/response/AccessTokenInfoResponse;)V
    .locals 6
    .param p1, "accessTokenInfoResponse"    # Lcom/kakao/auth/network/response/AccessTokenInfoResponse;

    .prologue
    .line 786
    const-wide/32 v2, 0xa4cb80

    invoke-virtual {p1}, Lcom/kakao/auth/network/response/AccessTokenInfoResponse;->getExpiresInMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 787
    .local v0, "interval":J
    iget-object v2, p0, Lcom/kakao/auth/Session$3;->this$0:Lcom/kakao/auth/Session;

    invoke-static {v2, v0, v1}, Lcom/kakao/auth/Session;->access$1100(Lcom/kakao/auth/Session;J)V

    .line 788
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 778
    check-cast p1, Lcom/kakao/auth/network/response/AccessTokenInfoResponse;

    invoke-virtual {p0, p1}, Lcom/kakao/auth/Session$3;->onSuccess(Lcom/kakao/auth/network/response/AccessTokenInfoResponse;)V

    return-void
.end method
