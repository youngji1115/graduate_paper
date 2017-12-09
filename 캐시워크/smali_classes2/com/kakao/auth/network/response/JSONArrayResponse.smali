.class public Lcom/kakao/auth/network/response/JSONArrayResponse;
.super Lcom/kakao/auth/network/response/ApiResponse;
.source "JSONArrayResponse.java"


# instance fields
.field protected final bodyArray:Lcom/kakao/network/response/ResponseBodyArray;


# direct methods
.method protected constructor <init>(Lcom/kakao/network/response/ResponseData;)V
    .locals 3
    .param p1, "responseData"    # Lcom/kakao/network/response/ResponseData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;,
            Lcom/kakao/auth/network/response/ApiResponse$ApiResponseStatusError;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/kakao/auth/network/response/ApiResponse;-><init>(Lcom/kakao/network/response/ResponseData;)V

    .line 30
    new-instance v0, Lcom/kakao/network/response/ResponseBodyArray;

    invoke-virtual {p1}, Lcom/kakao/network/response/ResponseData;->getHttpStatusCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/kakao/network/response/ResponseData;->getData()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kakao/network/response/ResponseBodyArray;-><init>(I[B)V

    iput-object v0, p0, Lcom/kakao/auth/network/response/JSONArrayResponse;->bodyArray:Lcom/kakao/network/response/ResponseBodyArray;

    .line 31
    return-void
.end method
