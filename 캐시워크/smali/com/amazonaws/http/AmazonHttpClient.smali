.class public Lcom/amazonaws/http/AmazonHttpClient;
.super Ljava/lang/Object;
.source "AmazonHttpClient.java"


# static fields
.field private static final HEADER_SDK_RETRY_INFO:Ljava/lang/String; = "aws-sdk-retry"

.field private static final HEADER_SDK_TRANSACTION_ID:Ljava/lang/String; = "aws-sdk-invocation-id"

.field private static final HEADER_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field static final log:Lorg/apache/commons/logging/Log;

.field private static final requestLog:Lorg/apache/commons/logging/Log;


# instance fields
.field final config:Lcom/amazonaws/ClientConfiguration;

.field final httpClient:Lcom/amazonaws/http/HttpClient;

.field private final requestFactory:Lcom/amazonaws/http/HttpRequestFactory;

.field private final requestMetricCollector:Lcom/amazonaws/metrics/RequestMetricCollector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-string v0, "com.amazonaws.request"

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/AmazonHttpClient;->requestLog:Lorg/apache/commons/logging/Log;

    .line 75
    const-class v0, Lcom/amazonaws/http/AmazonHttpClient;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 1
    .param p1, "config"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 102
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p1}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/http/AmazonHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .locals 1
    .param p1, "config"    # Lcom/amazonaws/ClientConfiguration;
    .param p2, "httpClient"    # Lcom/amazonaws/http/HttpClient;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/amazonaws/http/HttpRequestFactory;

    invoke-direct {v0}, Lcom/amazonaws/http/HttpRequestFactory;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->requestFactory:Lcom/amazonaws/http/HttpRequestFactory;

    .line 132
    iput-object p1, p0, Lcom/amazonaws/http/AmazonHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    .line 133
    iput-object p2, p0, Lcom/amazonaws/http/AmazonHttpClient;->httpClient:Lcom/amazonaws/http/HttpClient;

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->requestMetricCollector:Lcom/amazonaws/metrics/RequestMetricCollector;

    .line 135
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 1
    .param p1, "config"    # Lcom/amazonaws/ClientConfiguration;
    .param p2, "httpClient"    # Lcom/amazonaws/http/HttpClient;
    .param p3, "requestMetricCollector"    # Lcom/amazonaws/metrics/RequestMetricCollector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/amazonaws/http/HttpRequestFactory;

    invoke-direct {v0}, Lcom/amazonaws/http/HttpRequestFactory;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->requestFactory:Lcom/amazonaws/http/HttpRequestFactory;

    .line 152
    iput-object p1, p0, Lcom/amazonaws/http/AmazonHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    .line 153
    iput-object p2, p0, Lcom/amazonaws/http/AmazonHttpClient;->httpClient:Lcom/amazonaws/http/HttpClient;

    .line 154
    iput-object p3, p0, Lcom/amazonaws/http/AmazonHttpClient;->requestMetricCollector:Lcom/amazonaws/metrics/RequestMetricCollector;

    .line 155
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 1
    .param p1, "config"    # Lcom/amazonaws/ClientConfiguration;
    .param p2, "requestMetricCollector"    # Lcom/amazonaws/metrics/RequestMetricCollector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 119
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p1}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/amazonaws/http/AmazonHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    .line 120
    return-void
.end method

.method static createUserAgentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "existingUserAgentString"    # Ljava/lang/String;
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 528
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    .end local p0    # "existingUserAgentString":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "existingUserAgentString":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private getServerDateFromException(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 765
    const-string v3, "("

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 766
    .local v2, "startPos":I
    const/4 v0, 0x0

    .line 767
    .local v0, "endPos":I
    const-string v3, " + 15"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 768
    const-string v3, " + 15"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 772
    :goto_0
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 773
    .local v1, "msg":Ljava/lang/String;
    return-object v1

    .line 770
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    const-string v3, " - 15"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private handleUnexpectedFailure(Ljava/lang/Throwable;Lcom/amazonaws/util/AWSRequestMetrics;)Ljava/lang/Throwable;
    .locals 1
    .param p2, "awsRequestMetrics"    # Lcom/amazonaws/util/AWSRequestMetrics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(TT;",
            "Lcom/amazonaws/util/AWSRequestMetrics;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 465
    .local p1, "t":Ljava/lang/Throwable;, "TT;"
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->Exception:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p2, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->incrementCounter(Lcom/amazonaws/metrics/MetricType;)V

    .line 466
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->Exception:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p2, v0, p1}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 467
    return-object p1
.end method

.method private isRequestSuccessful(Lcom/amazonaws/http/HttpResponse;)Z
    .locals 2
    .param p1, "response"    # Lcom/amazonaws/http/HttpResponse;

    .prologue
    .line 600
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v0

    .line 601
    .local v0, "statusCode":I
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isTemporaryRedirect(Lcom/amazonaws/http/HttpResponse;)Z
    .locals 4
    .param p0, "response"    # Lcom/amazonaws/http/HttpResponse;

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v1

    .line 594
    .local v1, "statusCode":I
    invoke-virtual {p0}, Lcom/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Location"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 595
    .local v0, "location":Ljava/lang/String;
    const/16 v2, 0x133

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 596
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 595
    :goto_0
    return v2

    .line 596
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private pauseBeforeNextRetry(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;ILcom/amazonaws/retry/RetryPolicy;)J
    .locals 7
    .param p1, "originalRequest"    # Lcom/amazonaws/AmazonWebServiceRequest;
    .param p2, "previousException"    # Lcom/amazonaws/AmazonClientException;
    .param p3, "requestCount"    # I
    .param p4, "retryPolicy"    # Lcom/amazonaws/retry/RetryPolicy;

    .prologue
    .line 732
    add-int/lit8 v4, p3, -0x1

    add-int/lit8 v3, v4, -0x1

    .line 736
    .local v3, "retries":I
    invoke-virtual {p4}, Lcom/amazonaws/retry/RetryPolicy;->getBackoffStrategy()Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

    move-result-object v4

    invoke-interface {v4, p1, p2, v3}, Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;->delayBeforeNextRetry(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;I)J

    move-result-wide v0

    .line 739
    .local v0, "delay":J
    sget-object v4, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 740
    sget-object v4, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retriable error detected, will retry in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms, attempt number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 745
    :cond_0
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    return-wide v0

    .line 747
    :catch_0
    move-exception v2

    .line 748
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 749
    new-instance v4, Lcom/amazonaws/AmazonClientException;

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private shouldRetry(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/io/InputStream;Lcom/amazonaws/AmazonClientException;ILcom/amazonaws/retry/RetryPolicy;)Z
    .locals 5
    .param p1, "originalRequest"    # Lcom/amazonaws/AmazonWebServiceRequest;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "exception"    # Lcom/amazonaws/AmazonClientException;
    .param p4, "requestCount"    # I
    .param p5, "retryPolicy"    # Lcom/amazonaws/retry/RetryPolicy;

    .prologue
    const/4 v2, 0x0

    .line 561
    add-int/lit8 v1, p4, -0x1

    .line 563
    .local v1, "retries":I
    iget-object v3, p0, Lcom/amazonaws/http/AmazonHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v3}, Lcom/amazonaws/ClientConfiguration;->getMaxErrorRetry()I

    move-result v0

    .line 568
    .local v0, "maxErrorRetry":I
    if-ltz v0, :cond_0

    .line 569
    invoke-virtual {p5}, Lcom/amazonaws/retry/RetryPolicy;->isMaxErrorRetryInClientConfigHonored()Z

    move-result v3

    if-nez v3, :cond_1

    .line 570
    :cond_0
    invoke-virtual {p5}, Lcom/amazonaws/retry/RetryPolicy;->getMaxErrorRetry()I

    move-result v0

    .line 574
    :cond_1
    if-lt v1, v0, :cond_3

    .line 587
    :cond_2
    :goto_0
    return v2

    .line 578
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-nez v3, :cond_4

    .line 579
    sget-object v3, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 580
    sget-object v3, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Content not repeatable"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 587
    :cond_4
    invoke-virtual {p5}, Lcom/amazonaws/retry/RetryPolicy;->getRetryCondition()Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    move-result-object v2

    invoke-interface {v2, p1, p3, v1}, Lcom/amazonaws/retry/RetryPolicy$RetryCondition;->shouldRetry(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;I)Z

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method afterError(Lcom/amazonaws/Request;Lcom/amazonaws/Response;Ljava/util/List;Lcom/amazonaws/AmazonClientException;)V
    .locals 3
    .param p4, "e"    # Lcom/amazonaws/AmazonClientException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/Response",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/handlers/RequestHandler2;",
            ">;",
            "Lcom/amazonaws/AmazonClientException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    .local p2, "response":Lcom/amazonaws/Response;, "Lcom/amazonaws/Response<*>;"
    .local p3, "requestHandler2s":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/handlers/RequestHandler2;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/handlers/RequestHandler2;

    .line 213
    .local v0, "handler2":Lcom/amazonaws/handlers/RequestHandler2;
    invoke-virtual {v0, p1, p2, p4}, Lcom/amazonaws/handlers/RequestHandler2;->afterError(Lcom/amazonaws/Request;Lcom/amazonaws/Response;Ljava/lang/Exception;)V

    goto :goto_0

    .line 215
    .end local v0    # "handler2":Lcom/amazonaws/handlers/RequestHandler2;
    :cond_0
    return-void
.end method

.method afterResponse(Lcom/amazonaws/Request;Ljava/util/List;Lcom/amazonaws/Response;Lcom/amazonaws/util/TimingInfo;)V
    .locals 3
    .param p4, "timingInfo"    # Lcom/amazonaws/util/TimingInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/handlers/RequestHandler2;",
            ">;",
            "Lcom/amazonaws/Response",
            "<TT;>;",
            "Lcom/amazonaws/util/TimingInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    .local p2, "requestHandler2s":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/handlers/RequestHandler2;>;"
    .local p3, "response":Lcom/amazonaws/Response;, "Lcom/amazonaws/Response<TT;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/handlers/RequestHandler2;

    .line 222
    .local v0, "handler2":Lcom/amazonaws/handlers/RequestHandler2;
    invoke-virtual {v0, p1, p3}, Lcom/amazonaws/handlers/RequestHandler2;->afterResponse(Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    goto :goto_0

    .line 224
    .end local v0    # "handler2":Lcom/amazonaws/handlers/RequestHandler2;
    :cond_0
    return-void
.end method

.method public execute(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    .locals 7
    .param p4, "executionContext"    # Lcom/amazonaws/http/ExecutionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/http/HttpResponseHandler",
            "<",
            "Lcom/amazonaws/AmazonWebServiceResponse",
            "<TT;>;>;",
            "Lcom/amazonaws/http/HttpResponseHandler",
            "<",
            "Lcom/amazonaws/AmazonServiceException;",
            ">;",
            "Lcom/amazonaws/http/ExecutionContext;",
            ")",
            "Lcom/amazonaws/Response",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    .local p2, "responseHandler":Lcom/amazonaws/http/HttpResponseHandler;, "Lcom/amazonaws/http/HttpResponseHandler<Lcom/amazonaws/AmazonWebServiceResponse<TT;>;>;"
    .local p3, "errorResponseHandler":Lcom/amazonaws/http/HttpResponseHandler;, "Lcom/amazonaws/http/HttpResponseHandler<Lcom/amazonaws/AmazonServiceException;>;"
    if-nez p4, :cond_0

    .line 193
    new-instance v5, Lcom/amazonaws/AmazonClientException;

    const-string v6, "Internal SDK Error: No execution context parameter specified."

    invoke-direct {v5, v6}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 195
    :cond_0
    invoke-virtual {p0, p1, p4}, Lcom/amazonaws/http/AmazonHttpClient;->requestHandler2s(Lcom/amazonaws/Request;Lcom/amazonaws/http/ExecutionContext;)Ljava/util/List;

    move-result-object v2

    .line 196
    .local v2, "requestHandler2s":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/handlers/RequestHandler2;>;"
    invoke-virtual {p4}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v0

    .line 197
    .local v0, "awsRequestMetrics":Lcom/amazonaws/util/AWSRequestMetrics;
    const/4 v3, 0x0

    .line 199
    .local v3, "response":Lcom/amazonaws/Response;, "Lcom/amazonaws/Response<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazonaws/http/AmazonHttpClient;->executeHelper(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v3

    .line 201
    invoke-virtual {v0}, Lcom/amazonaws/util/AWSRequestMetrics;->getTimingInfo()Lcom/amazonaws/util/TimingInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazonaws/util/TimingInfo;->endTiming()Lcom/amazonaws/util/TimingInfo;

    move-result-object v4

    .line 202
    .local v4, "timingInfo":Lcom/amazonaws/util/TimingInfo;
    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/amazonaws/http/AmazonHttpClient;->afterResponse(Lcom/amazonaws/Request;Ljava/util/List;Lcom/amazonaws/Response;Lcom/amazonaws/util/TimingInfo;)V
    :try_end_0
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    return-object v3

    .line 204
    .end local v4    # "timingInfo":Lcom/amazonaws/util/TimingInfo;
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Lcom/amazonaws/AmazonClientException;
    invoke-virtual {p0, p1, v3, v2, v1}, Lcom/amazonaws/http/AmazonHttpClient;->afterError(Lcom/amazonaws/Request;Lcom/amazonaws/Response;Ljava/util/List;Lcom/amazonaws/AmazonClientException;)V

    .line 206
    throw v1
.end method

.method executeHelper(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    .locals 36
    .param p4, "executionContext"    # Lcom/amazonaws/http/ExecutionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/http/HttpResponseHandler",
            "<",
            "Lcom/amazonaws/AmazonWebServiceResponse",
            "<TT;>;>;",
            "Lcom/amazonaws/http/HttpResponseHandler",
            "<",
            "Lcom/amazonaws/AmazonServiceException;",
            ">;",
            "Lcom/amazonaws/http/ExecutionContext;",
            ")",
            "Lcom/amazonaws/Response",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    .local p2, "responseHandler":Lcom/amazonaws/http/HttpResponseHandler;, "Lcom/amazonaws/http/HttpResponseHandler<Lcom/amazonaws/AmazonWebServiceResponse<TT;>;>;"
    .local p3, "errorResponseHandler":Lcom/amazonaws/http/HttpResponseHandler;, "Lcom/amazonaws/http/HttpResponseHandler<Lcom/amazonaws/AmazonServiceException;>;"
    const/16 v26, 0x0

    .line 268
    .local v26, "leaveHttpConnectionOpen":Z
    invoke-virtual/range {p4 .. p4}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v17

    .line 273
    .local v17, "awsRequestMetrics":Lcom/amazonaws/util/AWSRequestMetrics;
    sget-object v6, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ServiceName:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getServiceName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 274
    sget-object v6, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ServiceEndpoint:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 278
    invoke-virtual/range {p0 .. p1}, Lcom/amazonaws/http/AmazonHttpClient;->setUserAgent(Lcom/amazonaws/Request;)V

    .line 279
    const-string v6, "aws-sdk-invocation-id"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v7}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const/4 v10, 0x0

    .line 281
    .local v10, "requestCount":I
    const-wide/16 v24, 0x0

    .line 282
    .local v24, "lastBackoffDelay":J
    const/16 v31, 0x0

    .line 283
    .local v31, "redirectedURI":Ljava/net/URI;
    const/16 v33, 0x0

    .line 287
    .local v33, "retriedException":Lcom/amazonaws/AmazonClientException;
    new-instance v29, Ljava/util/LinkedHashMap;

    .line 288
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getParameters()Ljava/util/Map;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-direct {v0, v6}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 289
    .local v29, "originalParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v28, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 291
    .local v28, "originalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v27

    .line 292
    .local v27, "originalContent":Ljava/io/InputStream;
    if-eqz v27, :cond_0

    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->markSupported()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 293
    const/4 v6, -0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/io/InputStream;->mark(I)V

    .line 296
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/amazonaws/http/ExecutionContext;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v19

    .line 297
    .local v19, "credentials":Lcom/amazonaws/auth/AWSCredentials;
    const/16 v34, 0x0

    .line 298
    .local v34, "signer":Lcom/amazonaws/auth/Signer;
    const/16 v22, 0x0

    .line 299
    .local v22, "httpResponse":Lcom/amazonaws/http/HttpResponse;
    const/16 v21, 0x0

    .line 302
    .local v21, "httpRequest":Lcom/amazonaws/http/HttpRequest;
    :cond_1
    :goto_0
    add-int/lit8 v10, v10, 0x1

    .line 303
    sget-object v6, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestCount:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    int-to-long v12, v10

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v12, v13}, Lcom/amazonaws/util/AWSRequestMetrics;->setCounter(Lcom/amazonaws/metrics/MetricType;J)V

    .line 304
    const/4 v6, 0x1

    if-le v10, v6, :cond_2

    .line 305
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setParameters(Ljava/util/Map;)V

    .line 306
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setHeaders(Ljava/util/Map;)V

    .line 307
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 309
    :cond_2
    if-eqz v31, :cond_3

    .line 310
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    invoke-virtual/range {v31 .. v31}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v31 .. v31}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 310
    invoke-static {v6}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Lcom/amazonaws/Request;->setEndpoint(Ljava/net/URI;)V

    .line 312
    invoke-virtual/range {v31 .. v31}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Lcom/amazonaws/Request;->setResourcePath(Ljava/lang/String;)V

    .line 316
    :cond_3
    const/4 v6, 0x1

    if-le v10, v6, :cond_4

    .line 317
    :try_start_0
    sget-object v6, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RetryPauseTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 319
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/amazonaws/http/AmazonHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    .line 322
    invoke-virtual {v7}, Lcom/amazonaws/ClientConfiguration;->getRetryPolicy()Lcom/amazonaws/retry/RetryPolicy;

    move-result-object v7

    .line 319
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v6, v1, v10, v7}, Lcom/amazonaws/http/AmazonHttpClient;->pauseBeforeNextRetry(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;ILcom/amazonaws/retry/RetryPolicy;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v24

    .line 324
    :try_start_2
    sget-object v6, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RetryPauseTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    .line 326
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v18

    .line 327
    .local v18, "content":Ljava/io/InputStream;
    if-eqz v18, :cond_4

    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->markSupported()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 328
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->reset()V

    .line 331
    .end local v18    # "content":Ljava/io/InputStream;
    :cond_4
    const-string v6, "aws-sdk-retry"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v8, v10, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v24

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v7}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    if-nez v34, :cond_5

    .line 336
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getEndpoint()Ljava/net/URI;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/amazonaws/http/ExecutionContext;->getSignerByURI(Ljava/net/URI;)Lcom/amazonaws/auth/Signer;

    move-result-object v34

    .line 337
    :cond_5
    if-eqz v34, :cond_6

    if-eqz v19, :cond_6

    .line 338
    sget-object v6, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestSigningTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 340
    :try_start_3
    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/auth/Signer;->sign(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSCredentials;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 342
    :try_start_4
    sget-object v6, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestSigningTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    .line 346
    :cond_6
    sget-object v6, Lcom/amazonaws/http/AmazonHttpClient;->requestLog:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 347
    sget-object v6, Lcom/amazonaws/http/AmazonHttpClient;->requestLog:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending Request: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 350
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amazonaws/http/AmazonHttpClient;->requestFactory:Lcom/amazonaws/http/HttpRequestFactory;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/amazonaws/http/AmazonHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v6, v0, v7, v1}, Lcom/amazonaws/http/HttpRequestFactory;->createHttpRequest(Lcom/amazonaws/Request;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/http/HttpRequest;

    move-result-object v21

    .line 353
    const/16 v33, 0x0

    .line 354
    sget-object v6, Lcom/amazonaws/util/AWSRequestMetrics$Field;->HttpRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 356
    :try_start_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amazonaws/http/AmazonHttpClient;->httpClient:Lcom/amazonaws/http/HttpClient;

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lcom/amazonaws/http/HttpClient;->execute(Lcom/amazonaws/http/HttpRequest;)Lcom/amazonaws/http/HttpResponse;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result-object v22

    .line 358
    :try_start_6
    sget-object v6, Lcom/amazonaws/util/AWSRequestMetrics$Field;->HttpRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    .line 361
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/amazonaws/http/AmazonHttpClient;->isRequestSuccessful(Lcom/amazonaws/http/HttpResponse;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 362
    sget-object v6, Lcom/amazonaws/util/AWSRequestMetrics$Field;->StatusCode:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual/range {v22 .. v22}, Lcom/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 367
    invoke-interface/range {p2 .. p2}, Lcom/amazonaws/http/HttpResponseHandler;->needsConnectionLeftOpen()Z

    move-result v26

    .line 368
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazonaws/http/AmazonHttpClient;->handleResponse(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v32

    .line 371
    .local v32, "response":Ljava/lang/Object;, "TT;"
    new-instance v6, Lcom/amazonaws/Response;

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-direct {v6, v0, v1}, Lcom/amazonaws/Response;-><init>(Ljava/lang/Object;Lcom/amazonaws/http/HttpResponse;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 448
    if-nez v26, :cond_8

    if-eqz v22, :cond_8

    .line 450
    :try_start_7
    invoke-virtual/range {v22 .. v22}, Lcom/amazonaws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 451
    invoke-virtual/range {v22 .. v22}, Lcom/amazonaws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 371
    :cond_8
    :goto_1
    return-object v6

    .line 324
    .end local v32    # "response":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v6

    :try_start_8
    sget-object v7, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RetryPauseTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    throw v6
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 415
    :catch_0
    move-exception v23

    .line 416
    .local v23, "ioe":Ljava/io/IOException;
    :try_start_9
    sget-object v6, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 417
    sget-object v6, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to execute HTTP request: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v23 .. v23}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-interface {v6, v7, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 419
    :cond_9
    sget-object v6, Lcom/amazonaws/util/AWSRequestMetrics$Field;->Exception:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/amazonaws/util/AWSRequestMetrics;->incrementCounter(Lcom/amazonaws/metrics/MetricType;)V

    .line 420
    sget-object v6, Lcom/amazonaws/util/AWSRequestMetrics$Field;->Exception:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 421
    sget-object v6, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 423
    new-instance v14, Lcom/amazonaws/AmazonClientException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to execute HTTP request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 424
    invoke-virtual/range {v23 .. v23}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-direct {v14, v6, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 425
    .local v14, "ace":Lcom/amazonaws/AmazonClientException;
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v12

    .line 426
    invoke-virtual/range {v21 .. v21}, Lcom/amazonaws/http/HttpRequest;->getContent()Ljava/io/InputStream;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amazonaws/http/AmazonHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    .line 429
    invoke-virtual {v6}, Lcom/amazonaws/ClientConfiguration;->getRetryPolicy()Lcom/amazonaws/retry/RetryPolicy;

    move-result-object v16

    move-object/from16 v11, p0

    move v15, v10

    .line 425
    invoke-direct/range {v11 .. v16}, Lcom/amazonaws/http/AmazonHttpClient;->shouldRetry(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/io/InputStream;Lcom/amazonaws/AmazonClientException;ILcom/amazonaws/retry/RetryPolicy;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 430
    throw v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 448
    .end local v14    # "ace":Lcom/amazonaws/AmazonClientException;
    .end local v23    # "ioe":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    if-nez v26, :cond_a

    if-eqz v22, :cond_a

    .line 450
    :try_start_a
    invoke-virtual/range {v22 .. v22}, Lcom/amazonaws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 451
    invoke-virtual/range {v22 .. v22}, Lcom/amazonaws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 455
    :cond_a
    :goto_2
    throw v6

    .line 342
    :catchall_2
    move-exception v6

    :try_start_b
    sget-object v7, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestSigningTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    throw v6
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 436
    :catch_1
    move-exception v20

    .line 437
    .local v20, "e":Ljava/lang/RuntimeException;
    :try_start_c
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/http/AmazonHttpClient;->handleUnexpectedFailure(Ljava/lang/Throwable;Lcom/amazonaws/util/AWSRequestMetrics;)Ljava/lang/Throwable;

    move-result-object v6

    check-cast v6, Ljava/lang/RuntimeException;

    throw v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 358
    .end local v20    # "e":Ljava/lang/RuntimeException;
    :catchall_3
    move-exception v6

    :try_start_d
    sget-object v7, Lcom/amazonaws/util/AWSRequestMetrics$Field;->HttpRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    throw v6
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 438
    :catch_2
    move-exception v20

    .line 439
    .local v20, "e":Ljava/lang/Error;
    :try_start_e
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/http/AmazonHttpClient;->handleUnexpectedFailure(Ljava/lang/Throwable;Lcom/amazonaws/util/AWSRequestMetrics;)Ljava/lang/Throwable;

    move-result-object v6

    check-cast v6, Ljava/lang/Error;

    throw v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 453
    .end local v20    # "e":Ljava/lang/Error;
    .restart local v32    # "response":Ljava/lang/Object;, "TT;"
    :catch_3
    move-exception v20

    .line 454
    .local v20, "e":Ljava/io/IOException;
    sget-object v7, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    const-string v8, "Cannot close the response content."

    move-object/from16 v0, v20

    invoke-interface {v7, v8, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 372
    .end local v20    # "e":Ljava/io/IOException;
    .end local v32    # "response":Ljava/lang/Object;, "TT;"
    :cond_b
    :try_start_f
    invoke-static/range {v22 .. v22}, Lcom/amazonaws/http/AmazonHttpClient;->isTemporaryRedirect(Lcom/amazonaws/http/HttpResponse;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 379
    invoke-virtual/range {v22 .. v22}, Lcom/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v6

    const-string v7, "Location"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 380
    .local v30, "redirectedLocation":Ljava/lang/String;
    sget-object v6, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Redirecting to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 382
    invoke-static/range {v30 .. v30}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v31

    .line 383
    sget-object v6, Lcom/amazonaws/util/AWSRequestMetrics$Field;->StatusCode:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual/range {v22 .. v22}, Lcom/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 384
    sget-object v6, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RedirectLocation:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v6, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 385
    sget-object v6, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/Error; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 448
    .end local v30    # "redirectedLocation":Ljava/lang/String;
    :goto_3
    if-nez v26, :cond_1

    if-eqz v22, :cond_1

    .line 450
    :try_start_10
    invoke-virtual/range {v22 .. v22}, Lcom/amazonaws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 451
    invoke-virtual/range {v22 .. v22}, Lcom/amazonaws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4

    goto/16 :goto_0

    .line 453
    :catch_4
    move-exception v20

    .line 454
    .restart local v20    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "Cannot close the response content."

    move-object/from16 v0, v20

    invoke-interface {v6, v7, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 387
    .end local v20    # "e":Ljava/io/IOException;
    :cond_c
    :try_start_11
    invoke-interface/range {p3 .. p3}, Lcom/amazonaws/http/HttpResponseHandler;->needsConnectionLeftOpen()Z

    move-result v26

    .line 388
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazonaws/http/AmazonHttpClient;->handleErrorResponse(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;

    move-result-object v9

    .line 390
    .local v9, "ase":Lcom/amazonaws/AmazonServiceException;
    sget-object v6, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v9}, Lcom/amazonaws/AmazonServiceException;->getRequestId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 391
    sget-object v6, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSErrorCode:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v9}, Lcom/amazonaws/AmazonServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 392
    sget-object v6, Lcom/amazonaws/util/AWSRequestMetrics$Field;->StatusCode:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v9}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 394
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v7

    .line 395
    invoke-virtual/range {v21 .. v21}, Lcom/amazonaws/http/HttpRequest;->getContent()Ljava/io/InputStream;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/amazonaws/http/AmazonHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    .line 398
    invoke-virtual {v6}, Lcom/amazonaws/ClientConfiguration;->getRetryPolicy()Lcom/amazonaws/retry/RetryPolicy;

    move-result-object v11

    move-object/from16 v6, p0

    .line 394
    invoke-direct/range {v6 .. v11}, Lcom/amazonaws/http/AmazonHttpClient;->shouldRetry(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/io/InputStream;Lcom/amazonaws/AmazonClientException;ILcom/amazonaws/retry/RetryPolicy;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 399
    throw v9

    .line 403
    :cond_d
    move-object/from16 v33, v9

    .line 409
    invoke-static {v9}, Lcom/amazonaws/retry/RetryUtils;->isClockSkewError(Lcom/amazonaws/AmazonServiceException;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 410
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Lcom/amazonaws/http/AmazonHttpClient;->parseClockSkewOffset(Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/AmazonServiceException;)I

    move-result v35

    .line 411
    .local v35, "timeOffset":I
    invoke-static/range {v35 .. v35}, Lcom/amazonaws/SDKGlobalConfiguration;->setGlobalTimeOffset(I)V

    .line 413
    .end local v35    # "timeOffset":I
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/amazonaws/http/AmazonHttpClient;->resetRequestAfterError(Lcom/amazonaws/Request;Ljava/lang/Exception;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/lang/Error; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_3

    .line 434
    .end local v9    # "ase":Lcom/amazonaws/AmazonServiceException;
    .restart local v14    # "ace":Lcom/amazonaws/AmazonClientException;
    .restart local v23    # "ioe":Ljava/io/IOException;
    :cond_f
    move-object/from16 v33, v14

    .line 435
    :try_start_12
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/http/AmazonHttpClient;->resetRequestAfterError(Lcom/amazonaws/Request;Ljava/lang/Exception;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 448
    if-nez v26, :cond_1

    if-eqz v22, :cond_1

    .line 450
    :try_start_13
    invoke-virtual/range {v22 .. v22}, Lcom/amazonaws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 451
    invoke-virtual/range {v22 .. v22}, Lcom/amazonaws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_5

    goto/16 :goto_0

    .line 453
    :catch_5
    move-exception v20

    .line 454
    .restart local v20    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "Cannot close the response content."

    move-object/from16 v0, v20

    invoke-interface {v6, v7, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 453
    .end local v14    # "ace":Lcom/amazonaws/AmazonClientException;
    .end local v20    # "e":Ljava/io/IOException;
    .end local v23    # "ioe":Ljava/io/IOException;
    :catch_6
    move-exception v20

    .line 454
    .restart local v20    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    const-string v8, "Cannot close the response content."

    move-object/from16 v0, v20

    invoke-interface {v7, v8, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 805
    invoke-virtual {p0}, Lcom/amazonaws/http/AmazonHttpClient;->shutdown()V

    .line 806
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 807
    return-void
.end method

.method public getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->requestMetricCollector:Lcom/amazonaws/metrics/RequestMetricCollector;

    return-object v0
.end method

.method public getResponseMetadataForRequest(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;
    .locals 1
    .param p1, "request"    # Lcom/amazonaws/AmazonWebServiceRequest;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 174
    const/4 v0, 0x0

    return-object v0
.end method

.method handleErrorResponse(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;
    .locals 10
    .param p3, "response"    # Lcom/amazonaws/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/http/HttpResponseHandler",
            "<",
            "Lcom/amazonaws/AmazonServiceException;",
            ">;",
            "Lcom/amazonaws/http/HttpResponse;",
            ")",
            "Lcom/amazonaws/AmazonServiceException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    .local p2, "errorResponseHandler":Lcom/amazonaws/http/HttpResponseHandler;, "Lcom/amazonaws/http/HttpResponseHandler<Lcom/amazonaws/AmazonServiceException;>;"
    const/16 v9, 0x1f7

    const/16 v8, 0x19d

    .line 678
    invoke-virtual {p3}, Lcom/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v4

    .line 680
    .local v4, "status":I
    const/4 v3, 0x0

    .line 682
    .local v3, "exception":Lcom/amazonaws/AmazonServiceException;
    :try_start_0
    invoke-interface {p2, p3}, Lcom/amazonaws/http/HttpResponseHandler;->handle(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/amazonaws/AmazonServiceException;

    move-object v3, v0

    .line 683
    sget-object v5, Lcom/amazonaws/http/AmazonHttpClient;->requestLog:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received error response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/amazonaws/AmazonServiceException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    :goto_0
    invoke-virtual {v3, v4}, Lcom/amazonaws/AmazonServiceException;->setStatusCode(I)V

    .line 711
    invoke-interface {p1}, Lcom/amazonaws/Request;->getServiceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amazonaws/AmazonServiceException;->setServiceName(Ljava/lang/String;)V

    .line 712
    invoke-virtual {v3}, Lcom/amazonaws/AmazonServiceException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 713
    return-object v3

    .line 684
    :catch_0
    move-exception v1

    .line 687
    .local v1, "e":Ljava/lang/Exception;
    if-ne v4, v8, :cond_0

    .line 688
    new-instance v3, Lcom/amazonaws/AmazonServiceException;

    .end local v3    # "exception":Lcom/amazonaws/AmazonServiceException;
    const-string v5, "Request entity too large"

    invoke-direct {v3, v5}, Lcom/amazonaws/AmazonServiceException;-><init>(Ljava/lang/String;)V

    .line 689
    .restart local v3    # "exception":Lcom/amazonaws/AmazonServiceException;
    invoke-interface {p1}, Lcom/amazonaws/Request;->getServiceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amazonaws/AmazonServiceException;->setServiceName(Ljava/lang/String;)V

    .line 690
    invoke-virtual {v3, v8}, Lcom/amazonaws/AmazonServiceException;->setStatusCode(I)V

    .line 691
    sget-object v5, Lcom/amazonaws/AmazonServiceException$ErrorType;->Client:Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {v3, v5}, Lcom/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    .line 692
    const-string v5, "Request entity too large"

    invoke-virtual {v3, v5}, Lcom/amazonaws/AmazonServiceException;->setErrorCode(Ljava/lang/String;)V

    goto :goto_0

    .line 693
    :cond_0
    if-ne v4, v9, :cond_1

    const-string v5, "Service Unavailable"

    .line 694
    invoke-virtual {p3}, Lcom/amazonaws/http/HttpResponse;->getStatusText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 695
    new-instance v3, Lcom/amazonaws/AmazonServiceException;

    .end local v3    # "exception":Lcom/amazonaws/AmazonServiceException;
    const-string v5, "Service unavailable"

    invoke-direct {v3, v5}, Lcom/amazonaws/AmazonServiceException;-><init>(Ljava/lang/String;)V

    .line 696
    .restart local v3    # "exception":Lcom/amazonaws/AmazonServiceException;
    invoke-interface {p1}, Lcom/amazonaws/Request;->getServiceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amazonaws/AmazonServiceException;->setServiceName(Ljava/lang/String;)V

    .line 697
    invoke-virtual {v3, v9}, Lcom/amazonaws/AmazonServiceException;->setStatusCode(I)V

    .line 698
    sget-object v5, Lcom/amazonaws/AmazonServiceException$ErrorType;->Service:Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {v3, v5}, Lcom/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    .line 699
    const-string v5, "Service unavailable"

    invoke-virtual {v3, v5}, Lcom/amazonaws/AmazonServiceException;->setErrorCode(Ljava/lang/String;)V

    goto :goto_0

    .line 700
    :cond_1
    instance-of v5, v1, Ljava/io/IOException;

    if-eqz v5, :cond_2

    .line 701
    check-cast v1, Ljava/io/IOException;

    .end local v1    # "e":Ljava/lang/Exception;
    throw v1

    .line 703
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to unmarshall error response ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "). Response Code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Response Text: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 705
    invoke-virtual {p3}, Lcom/amazonaws/http/HttpResponse;->getStatusText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 706
    .local v2, "errorMessage":Ljava/lang/String;
    new-instance v5, Lcom/amazonaws/AmazonClientException;

    invoke-direct {v5, v2, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method handleResponse(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;
    .locals 7
    .param p3, "response"    # Lcom/amazonaws/http/HttpResponse;
    .param p4, "executionContext"    # Lcom/amazonaws/http/ExecutionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/http/HttpResponseHandler",
            "<",
            "Lcom/amazonaws/AmazonWebServiceResponse",
            "<TT;>;>;",
            "Lcom/amazonaws/http/HttpResponse;",
            "Lcom/amazonaws/http/ExecutionContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 628
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    .local p2, "responseHandler":Lcom/amazonaws/http/HttpResponseHandler;, "Lcom/amazonaws/http/HttpResponseHandler<Lcom/amazonaws/AmazonWebServiceResponse<TT;>;>;"
    :try_start_0
    invoke-virtual {p4}, Lcom/amazonaws/http/ExecutionContext;->getAwsRequestMetrics()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v0

    .line 630
    .local v0, "awsRequestMetrics":Lcom/amazonaws/util/AWSRequestMetrics;
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ResponseProcessingTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->startEvent(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catch Lcom/amazonaws/internal/CRC32MismatchException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 632
    :try_start_1
    invoke-interface {p2, p3}, Lcom/amazonaws/http/HttpResponseHandler;->handle(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/AmazonWebServiceResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 634
    .local v1, "awsResponse":Lcom/amazonaws/AmazonWebServiceResponse;, "Lcom/amazonaws/AmazonWebServiceResponse<+TT;>;"
    :try_start_2
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ResponseProcessingTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    .line 637
    if-nez v1, :cond_0

    .line 638
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to unmarshall response metadata. Response Code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 640
    invoke-virtual {p3}, Lcom/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Response Text: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 641
    invoke-virtual {p3}, Lcom/amazonaws/http/HttpResponse;->getStatusText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Lcom/amazonaws/internal/CRC32MismatchException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 650
    .end local v0    # "awsRequestMetrics":Lcom/amazonaws/util/AWSRequestMetrics;
    .end local v1    # "awsResponse":Lcom/amazonaws/AmazonWebServiceResponse;, "Lcom/amazonaws/AmazonWebServiceResponse<+TT;>;"
    :catch_0
    move-exception v2

    .line 651
    .local v2, "e":Lcom/amazonaws/internal/CRC32MismatchException;
    throw v2

    .line 634
    .end local v2    # "e":Lcom/amazonaws/internal/CRC32MismatchException;
    .restart local v0    # "awsRequestMetrics":Lcom/amazonaws/util/AWSRequestMetrics;
    :catchall_0
    move-exception v4

    :try_start_3
    sget-object v5, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ResponseProcessingTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    throw v4
    :try_end_3
    .catch Lcom/amazonaws/internal/CRC32MismatchException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 652
    .end local v0    # "awsRequestMetrics":Lcom/amazonaws/util/AWSRequestMetrics;
    :catch_1
    move-exception v2

    .line 653
    .local v2, "e":Ljava/io/IOException;
    throw v2

    .line 643
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "awsRequestMetrics":Lcom/amazonaws/util/AWSRequestMetrics;
    .restart local v1    # "awsResponse":Lcom/amazonaws/AmazonWebServiceResponse;, "Lcom/amazonaws/AmazonWebServiceResponse<+TT;>;"
    :cond_0
    :try_start_4
    sget-object v4, Lcom/amazonaws/http/AmazonHttpClient;->requestLog:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 644
    sget-object v4, Lcom/amazonaws/http/AmazonHttpClient;->requestLog:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received successful response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Lcom/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", AWS Request ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 645
    invoke-virtual {v1}, Lcom/amazonaws/AmazonWebServiceResponse;->getRequestId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 644
    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 647
    :cond_1
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1}, Lcom/amazonaws/AmazonWebServiceResponse;->getRequestId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/amazonaws/util/AWSRequestMetrics;->addProperty(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 649
    invoke-virtual {v1}, Lcom/amazonaws/AmazonWebServiceResponse;->getResult()Ljava/lang/Object;
    :try_end_4
    .catch Lcom/amazonaws/internal/CRC32MismatchException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v4

    return-object v4

    .line 654
    .end local v0    # "awsRequestMetrics":Lcom/amazonaws/util/AWSRequestMetrics;
    .end local v1    # "awsResponse":Lcom/amazonaws/AmazonWebServiceResponse;, "Lcom/amazonaws/AmazonWebServiceResponse<+TT;>;"
    :catch_2
    move-exception v2

    .line 655
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to unmarshall response ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "). Response Code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 657
    invoke-virtual {p3}, Lcom/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Response Text: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Lcom/amazonaws/http/HttpResponse;->getStatusText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 658
    .local v3, "errorMessage":Ljava/lang/String;
    new-instance v4, Lcom/amazonaws/AmazonClientException;

    invoke-direct {v4, v3, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method parseClockSkewOffset(Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/AmazonServiceException;)I
    .locals 12
    .param p1, "response"    # Lcom/amazonaws/http/HttpResponse;
    .param p2, "exception"    # Lcom/amazonaws/AmazonServiceException;

    .prologue
    .line 777
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 778
    .local v0, "deviceDate":Ljava/util/Date;
    const/4 v5, 0x0

    .line 779
    .local v5, "serverDate":Ljava/util/Date;
    const/4 v6, 0x0

    .line 780
    .local v6, "serverDateStr":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v7

    const-string v8, "Date"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 784
    .local v4, "responseDateHeader":Ljava/lang/String;
    if-eqz v4, :cond_0

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 786
    :cond_0
    invoke-virtual {p2}, Lcom/amazonaws/AmazonServiceException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/amazonaws/http/AmazonHttpClient;->getServerDateFromException(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 787
    invoke-static {v6}, Lcom/amazonaws/util/DateUtils;->parseCompressedISO8601Date(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 799
    :goto_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long v2, v8, v10

    .line 800
    .local v2, "diff":J
    const-wide/16 v8, 0x3e8

    div-long v8, v2, v8

    long-to-int v7, v8

    .end local v2    # "diff":J
    :goto_1
    return v7

    .line 789
    :cond_1
    move-object v6, v4

    .line 790
    :try_start_1
    invoke-static {v6}, Lcom/amazonaws/util/DateUtils;->parseRFC822Date(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_0

    .line 792
    :catch_0
    move-exception v1

    .line 793
    .local v1, "e":Ljava/lang/RuntimeException;
    sget-object v7, Lcom/amazonaws/http/AmazonHttpClient;->log:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to parse clock skew offset from response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 796
    const/4 v7, 0x0

    goto :goto_1
.end method

.method requestHandler2s(Lcom/amazonaws/Request;Lcom/amazonaws/http/ExecutionContext;)Ljava/util/List;
    .locals 5
    .param p2, "executionContext"    # Lcom/amazonaws/http/ExecutionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/http/ExecutionContext;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/handlers/RequestHandler2;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    .line 229
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    invoke-virtual {p2}, Lcom/amazonaws/http/ExecutionContext;->getRequestHandler2s()Ljava/util/List;

    move-result-object v1

    .line 230
    .local v1, "requestHandler2s":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/handlers/RequestHandler2;>;"
    if-nez v1, :cond_1

    .line 231
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 243
    .end local v1    # "requestHandler2s":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/handlers/RequestHandler2;>;"
    :cond_0
    return-object v1

    .line 235
    .restart local v1    # "requestHandler2s":Ljava/util/List;, "Ljava/util/List<Lcom/amazonaws/handlers/RequestHandler2;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/handlers/RequestHandler2;

    .line 238
    .local v0, "requestHandler2":Lcom/amazonaws/handlers/RequestHandler2;
    instance-of v2, v0, Lcom/amazonaws/handlers/CredentialsRequestHandler;

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 239
    check-cast v2, Lcom/amazonaws/handlers/CredentialsRequestHandler;

    .line 240
    invoke-virtual {p2}, Lcom/amazonaws/http/ExecutionContext;->getCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amazonaws/handlers/CredentialsRequestHandler;->setCredentials(Lcom/amazonaws/auth/AWSCredentials;)V

    .line 241
    :cond_2
    invoke-virtual {v0, p1}, Lcom/amazonaws/handlers/RequestHandler2;->beforeRequest(Lcom/amazonaws/Request;)V

    goto :goto_0
.end method

.method resetRequestAfterError(Lcom/amazonaws/Request;Ljava/lang/Exception;)V
    .locals 3
    .param p2, "cause"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 483
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    invoke-interface {p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_0

    .line 498
    :goto_0
    return-void

    .line 486
    :cond_0
    invoke-interface {p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 487
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    const-string v2, "Encountered an exception and stream is not resettable"

    invoke-direct {v1, v2, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 491
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 492
    :catch_0
    move-exception v0

    .line 495
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    const-string v2, "Encountered an exception and couldn\'t reset the stream to retry"

    invoke-direct {v1, v2, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method setUserAgent(Lcom/amazonaws/Request;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 505
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    sget-object v2, Lcom/amazonaws/ClientConfiguration;->DEFAULT_USER_AGENT:Ljava/lang/String;

    .line 507
    .local v2, "userAgent":Ljava/lang/String;
    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    .line 508
    .local v0, "awsreq":Lcom/amazonaws/AmazonWebServiceRequest;
    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;

    move-result-object v1

    .line 510
    .local v1, "opts":Lcom/amazonaws/RequestClientOptions;
    if-eqz v1, :cond_0

    .line 511
    sget-object v4, Lcom/amazonaws/RequestClientOptions$Marker;->USER_AGENT:Lcom/amazonaws/RequestClientOptions$Marker;

    invoke-virtual {v1, v4}, Lcom/amazonaws/RequestClientOptions;->getClientMarker(Lcom/amazonaws/RequestClientOptions$Marker;)Ljava/lang/String;

    move-result-object v3

    .line 512
    .local v3, "userAgentMarker":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 513
    invoke-static {v2, v3}, Lcom/amazonaws/http/AmazonHttpClient;->createUserAgentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 518
    .end local v1    # "opts":Lcom/amazonaws/RequestClientOptions;
    .end local v3    # "userAgentMarker":Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/amazonaws/ClientConfiguration;->DEFAULT_USER_AGENT:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazonaws/http/AmazonHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v5}, Lcom/amazonaws/ClientConfiguration;->getUserAgent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 519
    iget-object v4, p0, Lcom/amazonaws/http/AmazonHttpClient;->config:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v4}, Lcom/amazonaws/ClientConfiguration;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/amazonaws/http/AmazonHttpClient;->createUserAgentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 521
    :cond_1
    const-string v4, "User-Agent"

    invoke-interface {p1, v4, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->httpClient:Lcom/amazonaws/http/HttpClient;

    invoke-interface {v0}, Lcom/amazonaws/http/HttpClient;->shutdown()V

    .line 543
    return-void
.end method
