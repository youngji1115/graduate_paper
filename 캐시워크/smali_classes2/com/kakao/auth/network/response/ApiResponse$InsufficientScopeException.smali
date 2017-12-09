.class public Lcom/kakao/auth/network/response/ApiResponse$InsufficientScopeException;
.super Lcom/kakao/auth/network/response/ApiResponse$ApiResponseStatusError;
.source "ApiResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/auth/network/response/ApiResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InsufficientScopeException"
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "httpStatusCode"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/kakao/auth/network/response/ApiResponse$ApiResponseStatusError;-><init>(ILjava/lang/String;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/kakao/network/response/ResponseBody;)V
    .locals 3
    .param p1, "body"    # Lcom/kakao/network/response/ResponseBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;
        }
    .end annotation

    .prologue
    .line 44
    const-string v0, "code"

    invoke-virtual {p1, v0}, Lcom/kakao/network/response/ResponseBody;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "msg"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lcom/kakao/network/response/ResponseBody;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/kakao/network/response/ResponseBody;->getStatusCode()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/kakao/auth/network/response/ApiResponse$InsufficientScopeException;-><init>(ILjava/lang/String;I)V

    .line 45
    return-void
.end method
