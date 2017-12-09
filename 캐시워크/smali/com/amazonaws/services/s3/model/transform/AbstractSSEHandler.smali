.class abstract Lcom/amazonaws/services/s3/model/transform/AbstractSSEHandler;
.super Lcom/amazonaws/services/s3/model/transform/AbstractHandler;
.source "AbstractSSEHandler.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSSEAlgorithm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractSSEHandler;->sseResult()Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;

    move-result-object v0

    .line 34
    .local v0, "result":Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;->getSSEAlgorithm()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final getSSECustomerAlgorithm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractSSEHandler;->sseResult()Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;

    move-result-object v0

    .line 61
    .local v0, "result":Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;->getSSECustomerAlgorithm()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final getSSECustomerKeyMd5()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractSSEHandler;->sseResult()Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;

    move-result-object v0

    .line 75
    .local v0, "result":Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;->getSSECustomerKeyMd5()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSSEKMSKeyId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractSSEHandler;->sseResult()Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;

    move-result-object v0

    .line 55
    .local v0, "result":Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;->getSSEKMSKeyId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final setSSEAlgorithm(Ljava/lang/String;)V
    .locals 1
    .param p1, "serverSideEncryption"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractSSEHandler;->sseResult()Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;

    move-result-object v0

    .line 40
    .local v0, "result":Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;
    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0, p1}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;->setSSEAlgorithm(Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method public final setSSECustomerAlgorithm(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractSSEHandler;->sseResult()Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;

    move-result-object v0

    .line 67
    .local v0, "result":Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;
    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0, p1}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;->setSSECustomerAlgorithm(Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method

.method public final setSSECustomerKeyMd5(Ljava/lang/String;)V
    .locals 1
    .param p1, "md5Digest"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractSSEHandler;->sseResult()Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;

    move-result-object v0

    .line 81
    .local v0, "result":Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;
    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0, p1}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;->setSSECustomerKeyMd5(Ljava/lang/String;)V

    .line 84
    :cond_0
    return-void
.end method

.method public setSSEKMSKeyId(Ljava/lang/String;)V
    .locals 1
    .param p1, "kmsKeyId"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/transform/AbstractSSEHandler;->sseResult()Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;

    move-result-object v0

    .line 47
    .local v0, "result":Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;
    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0, p1}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;->setSSEKMSKeyId(Ljava/lang/String;)V

    .line 50
    :cond_0
    return-void
.end method

.method protected abstract sseResult()Lcom/amazonaws/services/s3/internal/ServerSideEncryptionResult;
.end method
