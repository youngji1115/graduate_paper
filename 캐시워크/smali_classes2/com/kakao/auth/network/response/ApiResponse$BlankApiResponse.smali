.class public final Lcom/kakao/auth/network/response/ApiResponse$BlankApiResponse;
.super Lcom/kakao/auth/network/response/ApiResponse;
.source "ApiResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/auth/network/response/ApiResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BlankApiResponse"
.end annotation


# direct methods
.method public constructor <init>(Lcom/kakao/network/response/ResponseData;)V
    .locals 5
    .param p1, "responseData"    # Lcom/kakao/network/response/ResponseData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;,
            Lcom/kakao/auth/network/response/ApiResponse$ApiResponseStatusError;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/kakao/auth/network/response/ApiResponse;-><init>(Lcom/kakao/auth/network/response/ApiResponse$1;)V

    .line 89
    invoke-virtual {p1}, Lcom/kakao/network/response/ResponseData;->getHttpStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    .line 90
    new-instance v0, Lcom/kakao/network/response/ResponseBody;

    invoke-virtual {p1}, Lcom/kakao/network/response/ResponseData;->getHttpStatusCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/kakao/network/response/ResponseData;->getData()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kakao/network/response/ResponseBody;-><init>(I[B)V

    .line 91
    .local v0, "errResponseBody":Lcom/kakao/network/response/ResponseBody;
    new-instance v1, Lcom/kakao/auth/network/response/ApiResponse$ApiResponseStatusError;

    const-string v2, "code"

    invoke-virtual {v0, v2}, Lcom/kakao/network/response/ResponseBody;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "msg"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/kakao/network/response/ResponseBody;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/kakao/network/response/ResponseData;->getHttpStatusCode()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/kakao/auth/network/response/ApiResponse$ApiResponseStatusError;-><init>(ILjava/lang/String;I)V

    throw v1

    .line 93
    .end local v0    # "errResponseBody":Lcom/kakao/network/response/ResponseBody;
    :cond_0
    return-void
.end method
