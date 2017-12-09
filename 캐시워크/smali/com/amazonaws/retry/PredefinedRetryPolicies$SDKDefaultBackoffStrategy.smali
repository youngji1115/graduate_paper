.class Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;
.super Ljava/lang/Object;
.source "PredefinedRetryPolicies.java"

# interfaces
.implements Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/retry/PredefinedRetryPolicies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SDKDefaultBackoffStrategy"
.end annotation


# instance fields
.field private final baseDelayMs:I

.field private final maxDelayMs:I

.field private final random:Ljava/util/Random;


# direct methods
.method private constructor <init>(II)V
    .locals 1
    .param p1, "baseDelayMs"    # I
    .param p2, "maxDelayMs"    # I

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;->random:Ljava/util/Random;

    .line 206
    iput p1, p0, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;->baseDelayMs:I

    .line 207
    iput p2, p0, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;->maxDelayMs:I

    .line 208
    return-void
.end method

.method synthetic constructor <init>(IILcom/amazonaws/retry/PredefinedRetryPolicies$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/amazonaws/retry/PredefinedRetryPolicies$1;

    .prologue
    .line 197
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final delayBeforeNextRetry(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;I)J
    .locals 4
    .param p1, "originalRequest"    # Lcom/amazonaws/AmazonWebServiceRequest;
    .param p2, "exception"    # Lcom/amazonaws/AmazonClientException;
    .param p3, "retries"    # I

    .prologue
    .line 215
    if-gtz p3, :cond_0

    .line 216
    const-wide/16 v0, 0x0

    .line 220
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;->random:Ljava/util/Random;

    iget v1, p0, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;->maxDelayMs:I

    const/4 v2, 0x1

    shl-int/2addr v2, p3

    iget v3, p0, Lcom/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;->baseDelayMs:I

    mul-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method
