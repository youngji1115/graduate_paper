.class public Lcom/kakao/auth/network/response/ApiResponse$SessionClosedException;
.super Lcom/kakao/auth/network/response/ApiResponse$ApiResponseStatusError;
.source "ApiResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/auth/network/response/ApiResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionClosedException"
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "httpStatusCode"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/kakao/auth/network/response/ApiResponse$ApiResponseStatusError;-><init>(ILjava/lang/String;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 53
    sget-object v0, Lcom/kakao/auth/ErrorCode;->INVALID_TOKEN_CODE:Lcom/kakao/auth/ErrorCode;

    invoke-virtual {v0}, Lcom/kakao/auth/ErrorCode;->getErrorCode()I

    move-result v0

    const/16 v1, 0x191

    invoke-direct {p0, v0, p1, v1}, Lcom/kakao/auth/network/response/ApiResponse$SessionClosedException;-><init>(ILjava/lang/String;I)V

    .line 54
    return-void
.end method
