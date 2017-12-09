.class public Lcom/amazonaws/http/impl/client/SdkHttpRequestRetryHandler;
.super Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
.source "SdkHttpRequestRetryHandler.java"


# static fields
.field public static final Singleton:Lcom/amazonaws/http/impl/client/SdkHttpRequestRetryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/amazonaws/http/impl/client/SdkHttpRequestRetryHandler;

    invoke-direct {v0}, Lcom/amazonaws/http/impl/client/SdkHttpRequestRetryHandler;-><init>()V

    sput-object v0, Lcom/amazonaws/http/impl/client/SdkHttpRequestRetryHandler;->Singleton:Lcom/amazonaws/http/impl/client/SdkHttpRequestRetryHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 3
    .param p1, "exception"    # Ljava/io/IOException;
    .param p2, "executionCount"    # I
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 37
    invoke-super {p0, p1, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    .line 38
    .local v1, "retry":Z
    if-eqz v1, :cond_0

    .line 39
    const-class v2, Lcom/amazonaws/util/AWSRequestMetrics;

    .line 40
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/util/AWSRequestMetrics;

    .line 41
    .local v0, "awsRequestMetrics":Lcom/amazonaws/util/AWSRequestMetrics;
    if-eqz v0, :cond_0

    .line 42
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->HttpClientRetryCount:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->incrementCounter(Lcom/amazonaws/metrics/MetricType;)V

    .line 45
    .end local v0    # "awsRequestMetrics":Lcom/amazonaws/util/AWSRequestMetrics;
    :cond_0
    return v1
.end method
