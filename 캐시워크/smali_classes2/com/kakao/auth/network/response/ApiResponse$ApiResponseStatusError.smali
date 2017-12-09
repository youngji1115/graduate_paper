.class public Lcom/kakao/auth/network/response/ApiResponse$ApiResponseStatusError;
.super Lcom/kakao/network/exception/ResponseStatusError;
.source "ApiResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/auth/network/response/ApiResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApiResponseStatusError"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x33624439a358dc7bL


# instance fields
.field private final errorCode:I

.field private final errorMsg:Ljava/lang/String;

.field private final httpStatusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "httpStatusCode"    # I

    .prologue
    .line 68
    invoke-direct {p0, p2}, Lcom/kakao/network/exception/ResponseStatusError;-><init>(Ljava/lang/String;)V

    .line 69
    iput p1, p0, Lcom/kakao/auth/network/response/ApiResponse$ApiResponseStatusError;->errorCode:I

    .line 70
    iput-object p2, p0, Lcom/kakao/auth/network/response/ApiResponse$ApiResponseStatusError;->errorMsg:Ljava/lang/String;

    .line 71
    iput p3, p0, Lcom/kakao/auth/network/response/ApiResponse$ApiResponseStatusError;->httpStatusCode:I

    .line 72
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/kakao/auth/network/response/ApiResponse$ApiResponseStatusError;->errorCode:I

    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kakao/auth/network/response/ApiResponse$ApiResponseStatusError;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpStatusCode()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/kakao/auth/network/response/ApiResponse$ApiResponseStatusError;->httpStatusCode:I

    return v0
.end method
