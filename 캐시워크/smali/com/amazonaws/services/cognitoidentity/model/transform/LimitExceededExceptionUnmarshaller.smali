.class public Lcom/amazonaws/services/cognitoidentity/model/transform/LimitExceededExceptionUnmarshaller;
.super Lcom/amazonaws/transform/JsonErrorUnmarshaller;
.source "LimitExceededExceptionUnmarshaller.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/amazonaws/services/cognitoidentity/model/LimitExceededException;

    invoke-direct {p0, v0}, Lcom/amazonaws/transform/JsonErrorUnmarshaller;-><init>(Ljava/lang/Class;)V

    .line 28
    return-void
.end method


# virtual methods
.method public match(Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;)Z
    .locals 2
    .param p1, "error"    # Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LimitExceededException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public unmarshall(Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;)Lcom/amazonaws/AmazonServiceException;
    .locals 2
    .param p1, "error"    # Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/amazonaws/transform/JsonErrorUnmarshaller;->unmarshall(Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;)Lcom/amazonaws/AmazonServiceException;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/cognitoidentity/model/LimitExceededException;

    .line 38
    .local v0, "e":Lcom/amazonaws/services/cognitoidentity/model/LimitExceededException;
    const-string v1, "LimitExceededException"

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/cognitoidentity/model/LimitExceededException;->setErrorCode(Ljava/lang/String;)V

    .line 40
    return-object v0
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 24
    check-cast p1, Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/LimitExceededExceptionUnmarshaller;->unmarshall(Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;)Lcom/amazonaws/AmazonServiceException;

    move-result-object v0

    return-object v0
.end method
