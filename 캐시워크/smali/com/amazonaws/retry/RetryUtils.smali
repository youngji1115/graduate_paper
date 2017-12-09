.class public Lcom/amazonaws/retry/RetryUtils;
.super Ljava/lang/Object;
.source "RetryUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isClockSkewError(Lcom/amazonaws/AmazonServiceException;)Z
    .locals 3
    .param p0, "ase"    # Lcom/amazonaws/AmazonServiceException;

    .prologue
    const/4 v1, 0x0

    .line 65
    if-nez p0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v1

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/AmazonServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "errorCode":Ljava/lang/String;
    const-string v2, "RequestTimeTooSkewed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "RequestExpired"

    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "InvalidSignatureException"

    .line 71
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "SignatureDoesNotMatch"

    .line 72
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isInterrupted(Ljava/lang/Throwable;)Z
    .locals 3
    .param p0, "error"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x1

    .line 82
    instance-of v2, p0, Lcom/amazonaws/AbortedException;

    if-eqz v2, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v1

    .line 85
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 86
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 93
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v2, v0, Ljava/lang/InterruptedException;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_2

    instance-of v2, v0, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_0

    .line 99
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isRequestEntityTooLargeException(Lcom/amazonaws/AmazonServiceException;)Z
    .locals 2
    .param p0, "ase"    # Lcom/amazonaws/AmazonServiceException;

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    :cond_0
    const-string v0, "Request entity too large"

    invoke-virtual {p0}, Lcom/amazonaws/AmazonServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isThrottlingException(Lcom/amazonaws/AmazonServiceException;)Z
    .locals 3
    .param p0, "ase"    # Lcom/amazonaws/AmazonServiceException;

    .prologue
    const/4 v1, 0x0

    .line 34
    if-nez p0, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v1

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/AmazonServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "errorCode":Ljava/lang/String;
    const-string v2, "Throttling"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ThrottlingException"

    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ProvisionedThroughputExceededException"

    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
