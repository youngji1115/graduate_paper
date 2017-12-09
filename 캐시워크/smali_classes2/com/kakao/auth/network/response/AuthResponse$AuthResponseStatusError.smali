.class public Lcom/kakao/auth/network/response/AuthResponse$AuthResponseStatusError;
.super Lcom/kakao/network/exception/ResponseStatusError;
.source "AuthResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/auth/network/response/AuthResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthResponseStatusError"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x33624439a358dc7bL


# instance fields
.field private final error:Ljava/lang/String;

.field private final errorDescription:Ljava/lang/String;

.field private final responseBody:Lcom/kakao/network/response/ResponseBody;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/kakao/network/response/ResponseBody;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "errorDescription"    # Ljava/lang/String;
    .param p3, "responseBody"    # Lcom/kakao/network/response/ResponseBody;

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kakao/network/exception/ResponseStatusError;-><init>(Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/kakao/auth/network/response/AuthResponse$AuthResponseStatusError;->error:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/kakao/auth/network/response/AuthResponse$AuthResponseStatusError;->errorDescription:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/kakao/auth/network/response/AuthResponse$AuthResponseStatusError;->responseBody:Lcom/kakao/network/response/ResponseBody;

    .line 53
    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kakao/auth/network/response/AuthResponse$AuthResponseStatusError;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/kakao/auth/ErrorCode;->AUTH_ERROR_CODE:Lcom/kakao/auth/ErrorCode;

    invoke-virtual {v0}, Lcom/kakao/auth/ErrorCode;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kakao/auth/network/response/AuthResponse$AuthResponseStatusError;->errorDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpStatusCode()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kakao/auth/network/response/AuthResponse$AuthResponseStatusError;->responseBody:Lcom/kakao/network/response/ResponseBody;

    invoke-virtual {v0}, Lcom/kakao/network/response/ResponseBody;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public getResponseBody()Lcom/kakao/network/response/ResponseBody;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kakao/auth/network/response/AuthResponse$AuthResponseStatusError;->responseBody:Lcom/kakao/network/response/ResponseBody;

    return-object v0
.end method
