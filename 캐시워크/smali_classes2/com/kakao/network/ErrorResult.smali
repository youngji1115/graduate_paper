.class public Lcom/kakao/network/ErrorResult;
.super Ljava/lang/Object;
.source "ErrorResult.java"


# instance fields
.field private final CLIENT_ERROR_CODE:I

.field private final errorCode:I

.field private final errorMessage:Ljava/lang/String;

.field private final httpStatus:I


# direct methods
.method public constructor <init>(Lcom/kakao/network/exception/ResponseStatusError;)V
    .locals 1
    .param p1, "e"    # Lcom/kakao/network/exception/ResponseStatusError;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, -0x309

    iput v0, p0, Lcom/kakao/network/ErrorResult;->CLIENT_ERROR_CODE:I

    .line 41
    invoke-virtual {p1}, Lcom/kakao/network/exception/ResponseStatusError;->getErrorCode()I

    move-result v0

    iput v0, p0, Lcom/kakao/network/ErrorResult;->errorCode:I

    .line 42
    invoke-virtual {p1}, Lcom/kakao/network/exception/ResponseStatusError;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/network/ErrorResult;->errorMessage:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Lcom/kakao/network/exception/ResponseStatusError;->getHttpStatusCode()I

    move-result v0

    iput v0, p0, Lcom/kakao/network/ErrorResult;->httpStatus:I

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const/16 v0, -0x309

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v0, p0, Lcom/kakao/network/ErrorResult;->CLIENT_ERROR_CODE:I

    .line 35
    iput v0, p0, Lcom/kakao/network/ErrorResult;->errorCode:I

    .line 36
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/network/ErrorResult;->errorMessage:Ljava/lang/String;

    .line 37
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/kakao/network/ErrorResult;->httpStatus:I

    .line 38
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/kakao/network/ErrorResult;->errorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kakao/network/ErrorResult;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpStatus()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/kakao/network/ErrorResult;->httpStatus:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ErrorResult{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kakao/network/ErrorResult;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, ", errorMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kakao/network/ErrorResult;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
