.class public Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultRetryCondition;
.super Ljava/lang/Object;
.source "PredefinedRetryPolicies.java"

# interfaces
.implements Lcom/amazonaws/retry/RetryPolicy$RetryCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/retry/PredefinedRetryPolicies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SDKDefaultRetryCondition"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldRetry(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;I)Z
    .locals 4
    .param p1, "originalRequest"    # Lcom/amazonaws/AmazonWebServiceRequest;
    .param p2, "exception"    # Lcom/amazonaws/AmazonClientException;
    .param p3, "retriesAttempted"    # I

    .prologue
    const/4 v2, 0x1

    .line 151
    invoke-virtual {p2}, Lcom/amazonaws/AmazonClientException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/io/IOException;

    if-eqz v3, :cond_1

    .line 152
    invoke-virtual {p2}, Lcom/amazonaws/AmazonClientException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/io/InterruptedIOException;

    if-nez v3, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v2

    .line 156
    :cond_1
    instance-of v3, p2, Lcom/amazonaws/AmazonServiceException;

    if-eqz v3, :cond_2

    move-object v0, p2

    .line 157
    check-cast v0, Lcom/amazonaws/AmazonServiceException;

    .line 165
    .local v0, "ase":Lcom/amazonaws/AmazonServiceException;
    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v1

    .line 166
    .local v1, "statusCode":I
    const/16 v3, 0x1f4

    if-eq v1, v3, :cond_0

    const/16 v3, 0x1f7

    if-eq v1, v3, :cond_0

    const/16 v3, 0x1f6

    if-eq v1, v3, :cond_0

    const/16 v3, 0x1f8

    if-eq v1, v3, :cond_0

    .line 179
    invoke-static {v0}, Lcom/amazonaws/retry/RetryUtils;->isThrottlingException(Lcom/amazonaws/AmazonServiceException;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 187
    invoke-static {v0}, Lcom/amazonaws/retry/RetryUtils;->isClockSkewError(Lcom/amazonaws/AmazonServiceException;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 191
    .end local v0    # "ase":Lcom/amazonaws/AmazonServiceException;
    .end local v1    # "statusCode":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
