.class public Lcom/kakao/auth/network/response/PrimitiveTypeResponse;
.super Lcom/kakao/auth/network/response/ApiResponse;
.source "PrimitiveTypeResponse.java"


# direct methods
.method protected constructor <init>(Lcom/kakao/network/response/ResponseData;)V
    .locals 0
    .param p1, "responseData"    # Lcom/kakao/network/response/ResponseData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/network/response/ResponseBody$ResponseBodyException;,
            Lcom/kakao/auth/network/response/ApiResponse$ApiResponseStatusError;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/kakao/auth/network/response/ApiResponse;-><init>(Lcom/kakao/network/response/ResponseData;)V

    .line 27
    return-void
.end method
