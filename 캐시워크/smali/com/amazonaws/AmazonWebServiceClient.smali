.class public abstract Lcom/amazonaws/AmazonWebServiceClient;
.super Ljava/lang/Object;
.source "AmazonWebServiceClient.java"


# static fields
.field private static final AMAZON:Ljava/lang/String; = "Amazon"

.field private static final AWS:Ljava/lang/String; = "AWS"

.field public static final LOGGING_AWS_REQUEST_METRIC:Z = true

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field protected client:Lcom/amazonaws/http/AmazonHttpClient;

.field protected clientConfiguration:Lcom/amazonaws/ClientConfiguration;

.field protected volatile endpoint:Ljava/net/URI;

.field protected final requestHandler2s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazonaws/handlers/RequestHandler2;",
            ">;"
        }
    .end annotation
.end field

.field private volatile serviceName:Ljava/lang/String;

.field private volatile signer:Lcom/amazonaws/auth/Signer;

.field private volatile signerRegionOverride:Ljava/lang/String;

.field protected timeOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/amazonaws/AmazonWebServiceClient;

    .line 58
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/AmazonWebServiceClient;->log:Lorg/apache/commons/logging/Log;

    .line 57
    return-void
.end method

.method protected constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 1
    .param p1, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;

    .prologue
    .line 103
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p1}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    .line 104
    return-void
.end method

.method protected constructor <init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .locals 1
    .param p1, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;
    .param p2, "httpClient"    # Lcom/amazonaws/http/HttpClient;

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->clientConfiguration:Lcom/amazonaws/ClientConfiguration;

    .line 129
    new-instance v0, Lcom/amazonaws/http/AmazonHttpClient;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/http/AmazonHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    .line 130
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    .line 131
    return-void
.end method

.method protected constructor <init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 1
    .param p1, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;
    .param p2, "httpClient"    # Lcom/amazonaws/http/HttpClient;
    .param p3, "requestMetricCollector"    # Lcom/amazonaws/metrics/RequestMetricCollector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->clientConfiguration:Lcom/amazonaws/ClientConfiguration;

    .line 143
    new-instance v0, Lcom/amazonaws/http/AmazonHttpClient;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazonaws/http/AmazonHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    .line 144
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    .line 145
    return-void
.end method

.method protected constructor <init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 2
    .param p1, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;
    .param p2, "requestMetricCollector"    # Lcom/amazonaws/metrics/RequestMetricCollector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 117
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p1}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    .line 118
    return-void
.end method

.method private computeServiceName()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v8, -0x1

    .line 714
    const-class v7, Lcom/amazonaws/AmazonWebServiceClient;

    invoke-static {v7, p0}, Lcom/amazonaws/util/Classes;->childClassOf(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    .line 716
    .local v0, "httpClientClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 717
    .local v1, "httpClientName":Ljava/lang/String;
    invoke-static {v1}, Lcom/amazonaws/ServiceNameFactory;->getServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 718
    .local v5, "service":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 749
    .end local v5    # "service":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 722
    .restart local v5    # "service":Ljava/lang/String;
    :cond_0
    const-string v7, "JavaClient"

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 723
    .local v3, "j":I
    if-ne v3, v8, :cond_1

    .line 724
    const-string v7, "Client"

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 725
    if-ne v3, v8, :cond_1

    .line 726
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized suffix for the AWS http client class name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 731
    :cond_1
    const-string v7, "Amazon"

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 733
    .local v2, "i":I
    if-ne v2, v8, :cond_3

    .line 734
    const-string v7, "AWS"

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 735
    if-ne v2, v8, :cond_2

    .line 736
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized prefix for the AWS http client class name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 740
    :cond_2
    const-string v7, "AWS"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    .line 744
    .local v4, "len":I
    :goto_1
    if-lt v2, v3, :cond_4

    .line 745
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized AWS http client class name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 742
    .end local v4    # "len":I
    :cond_3
    const-string v7, "Amazon"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    .restart local v4    # "len":I
    goto :goto_1

    .line 748
    :cond_4
    add-int v7, v2, v4

    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 749
    .local v6, "serviceName":Ljava/lang/String;
    invoke-static {v6}, Lcom/amazonaws/util/StringUtils;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0
.end method

.method private computeSignerByServiceRegion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;
    .locals 4
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "regionId"    # Ljava/lang/String;
    .param p3, "signerRegionOverride"    # Ljava/lang/String;
    .param p4, "isRegionIdAsSignerParam"    # Z

    .prologue
    .line 336
    iget-object v3, p0, Lcom/amazonaws/AmazonWebServiceClient;->clientConfiguration:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v3}, Lcom/amazonaws/ClientConfiguration;->getSignerOverride()Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, "signerType":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 338
    invoke-static {p1, p2}, Lcom/amazonaws/auth/SignerFactory;->getSigner(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;

    move-result-object v1

    .line 340
    .local v1, "signer":Lcom/amazonaws/auth/Signer;
    :goto_0
    instance-of v3, v1, Lcom/amazonaws/auth/RegionAwareSigner;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 342
    check-cast v0, Lcom/amazonaws/auth/RegionAwareSigner;

    .line 346
    .local v0, "regionAwareSigner":Lcom/amazonaws/auth/RegionAwareSigner;
    if-eqz p3, :cond_2

    .line 347
    invoke-interface {v0, p3}, Lcom/amazonaws/auth/RegionAwareSigner;->setRegionName(Ljava/lang/String;)V

    .line 351
    .end local v0    # "regionAwareSigner":Lcom/amazonaws/auth/RegionAwareSigner;
    :cond_0
    :goto_1
    return-object v1

    .line 339
    .end local v1    # "signer":Lcom/amazonaws/auth/Signer;
    :cond_1
    invoke-static {v2, p1}, Lcom/amazonaws/auth/SignerFactory;->getSignerByTypeAndService(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;

    move-result-object v1

    goto :goto_0

    .line 348
    .restart local v0    # "regionAwareSigner":Lcom/amazonaws/auth/RegionAwareSigner;
    .restart local v1    # "signer":Lcom/amazonaws/auth/Signer;
    :cond_2
    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    .line 349
    invoke-interface {v0, p2}, Lcom/amazonaws/auth/RegionAwareSigner;->setRegionName(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private computeSignerByURI(Ljava/net/URI;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;
    .locals 4
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "signerRegionOverride"    # Ljava/lang/String;
    .param p3, "isRegionIdAsSignerParam"    # Z

    .prologue
    .line 305
    if-nez p1, :cond_0

    .line 306
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Endpoint is not set. Use setEndpoint to set an endpoint before performing any request."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->getServiceNameIntern()Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "service":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/amazonaws/util/AwsHostNameUtils;->parseRegionName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "region":Ljava/lang/String;
    invoke-direct {p0, v1, v0, p2, p3}, Lcom/amazonaws/AmazonWebServiceClient;->computeSignerByServiceRegion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;

    move-result-object v2

    return-object v2
.end method

.method protected static isProfilingEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 514
    const-string v0, "com.amazonaws.sdk.enableRuntimeProfiling"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRMCEnabledAtClientOrSdkLevel()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->requestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    .line 543
    .local v0, "c":Lcom/amazonaws/metrics/RequestMetricCollector;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazonaws/metrics/RequestMetricCollector;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private toURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 3
    .param p1, "endpoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 201
    const-string v1, "://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazonaws/AmazonWebServiceClient;->clientConfiguration:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v2}, Lcom/amazonaws/ClientConfiguration;->getProtocol()Lcom/amazonaws/Protocol;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/Protocol;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 206
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public addRequestHandler(Lcom/amazonaws/handlers/RequestHandler2;)V
    .locals 1
    .param p1, "requestHandler2"    # Lcom/amazonaws/handlers/RequestHandler2;

    .prologue
    .line 467
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    return-void
.end method

.method public addRequestHandler(Lcom/amazonaws/handlers/RequestHandler;)V
    .locals 2
    .param p1, "requestHandler"    # Lcom/amazonaws/handlers/RequestHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 456
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    invoke-static {p1}, Lcom/amazonaws/handlers/RequestHandler2;->adapt(Lcom/amazonaws/handlers/RequestHandler;)Lcom/amazonaws/handlers/RequestHandler2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    return-void
.end method

.method protected configSigner(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "regionId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 272
    return-void
.end method

.method protected configSigner(Ljava/net/URI;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 264
    return-void
.end method

.method protected final createExecutionContext()Lcom/amazonaws/http/ExecutionContext;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 507
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceClient;->isRMCEnabledAtClientOrSdkLevel()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/amazonaws/AmazonWebServiceClient;->isProfilingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 508
    .local v0, "isMetricsEnabled":Z
    :goto_0
    new-instance v1, Lcom/amazonaws/http/ExecutionContext;

    iget-object v2, p0, Lcom/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    invoke-direct {v1, v2, v0, p0}, Lcom/amazonaws/http/ExecutionContext;-><init>(Ljava/util/List;ZLcom/amazonaws/AmazonWebServiceClient;)V

    return-object v1

    .line 507
    .end local v0    # "isMetricsEnabled":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected createExecutionContext(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;
    .locals 3
    .param p1, "req"    # Lcom/amazonaws/AmazonWebServiceRequest;

    .prologue
    .line 487
    invoke-virtual {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->isRequestMetricsEnabled(Lcom/amazonaws/AmazonWebServiceRequest;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/amazonaws/AmazonWebServiceClient;->isProfilingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 488
    .local v0, "isMetricsEnabled":Z
    :goto_0
    new-instance v1, Lcom/amazonaws/http/ExecutionContext;

    iget-object v2, p0, Lcom/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    invoke-direct {v1, v2, v0, p0}, Lcom/amazonaws/http/ExecutionContext;-><init>(Ljava/util/List;ZLcom/amazonaws/AmazonWebServiceClient;)V

    return-object v1

    .line 487
    .end local v0    # "isMetricsEnabled":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final createExecutionContext(Lcom/amazonaws/Request;)Lcom/amazonaws/http/ExecutionContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)",
            "Lcom/amazonaws/http/ExecutionContext;"
        }
    .end annotation

    .prologue
    .line 492
    .local p1, "req":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/AmazonWebServiceClient;->createExecutionContext(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    return-object v0
.end method

.method protected final endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V
    .locals 1
    .param p1, "awsRequestMetrics"    # Lcom/amazonaws/util/AWSRequestMetrics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/util/AWSRequestMetrics;",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/Response",
            "<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 636
    .local p2, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    .local p3, "response":Lcom/amazonaws/Response;, "Lcom/amazonaws/Response<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazonaws/AmazonWebServiceClient;->endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    .line 638
    return-void
.end method

.method protected final endClientExecution(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V
    .locals 2
    .param p1, "awsRequestMetrics"    # Lcom/amazonaws/util/AWSRequestMetrics;
    .param p4, "loggingAwsRequestMetrics"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/util/AWSRequestMetrics;",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/Response",
            "<*>;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 654
    .local p2, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    .local p3, "response":Lcom/amazonaws/Response;, "Lcom/amazonaws/Response<*>;"
    if-eqz p2, :cond_0

    .line 655
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p1, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->endEvent(Lcom/amazonaws/metrics/MetricType;)V

    .line 656
    invoke-virtual {p1}, Lcom/amazonaws/util/AWSRequestMetrics;->getTimingInfo()Lcom/amazonaws/util/TimingInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/util/TimingInfo;->endTiming()Lcom/amazonaws/util/TimingInfo;

    .line 657
    invoke-virtual {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;->findRequestMetricCollector(Lcom/amazonaws/Request;)Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    .line 658
    .local v0, "c":Lcom/amazonaws/metrics/RequestMetricCollector;
    invoke-virtual {v0, p2, p3}, Lcom/amazonaws/metrics/RequestMetricCollector;->collectMetrics(Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    .line 660
    .end local v0    # "c":Lcom/amazonaws/metrics/RequestMetricCollector;
    :cond_0
    if-eqz p4, :cond_1

    .line 661
    invoke-virtual {p1}, Lcom/amazonaws/util/AWSRequestMetrics;->log()V

    .line 662
    :cond_1
    return-void
.end method

.method protected final findRequestMetricCollector(Lcom/amazonaws/Request;)Lcom/amazonaws/metrics/RequestMetricCollector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)",
            "Lcom/amazonaws/metrics/RequestMetricCollector;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 617
    .local p1, "req":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    invoke-interface {p1}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v1

    .line 618
    .local v1, "origReq":Lcom/amazonaws/AmazonWebServiceRequest;
    invoke-virtual {v1}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    .line 619
    .local v0, "mc":Lcom/amazonaws/metrics/RequestMetricCollector;
    if-eqz v0, :cond_0

    move-object v2, v0

    .line 623
    :goto_0
    return-object v2

    .line 622
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->getRequestMetricsCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    .line 623
    if-nez v0, :cond_1

    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    goto :goto_0
.end method

.method public getRequestMetricsCollector()Lcom/amazonaws/metrics/RequestMetricCollector;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 594
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0}, Lcom/amazonaws/http/AmazonHttpClient;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceAbbreviation()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->getServiceNameIntern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->getServiceNameIntern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceNameIntern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->serviceName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 688
    monitor-enter p0

    .line 689
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->serviceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 690
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceClient;->computeServiceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->serviceName:Ljava/lang/String;

    monitor-exit p0

    .line 694
    :goto_0
    return-object v0

    .line 692
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->serviceName:Ljava/lang/String;

    goto :goto_0

    .line 692
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected getSigner()Lcom/amazonaws/auth/Signer;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->signer:Lcom/amazonaws/auth/Signer;

    return-object v0
.end method

.method public getSignerByURI(Ljava/net/URI;)Lcom/amazonaws/auth/Signer;
    .locals 2
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->signerRegionOverride:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazonaws/AmazonWebServiceClient;->computeSignerByURI(Ljava/net/URI;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;

    move-result-object v0

    return-object v0
.end method

.method public final getSignerRegionOverride()Ljava/lang/String;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->signerRegionOverride:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeOffset()I
    .locals 1

    .prologue
    .line 583
    iget v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->timeOffset:I

    return v0
.end method

.method protected final isRequestMetricsEnabled(Lcom/amazonaws/AmazonWebServiceRequest;)Z
    .locals 2
    .param p1, "req"    # Lcom/amazonaws/AmazonWebServiceRequest;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 525
    invoke-virtual {p1}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    .line 528
    .local v0, "c":Lcom/amazonaws/metrics/RequestMetricCollector;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazonaws/metrics/RequestMetricCollector;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    const/4 v1, 0x1

    .line 531
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceClient;->isRMCEnabledAtClientOrSdkLevel()Z

    move-result v1

    goto :goto_0
.end method

.method public removeRequestHandler(Lcom/amazonaws/handlers/RequestHandler2;)V
    .locals 1
    .param p1, "requestHandler2"    # Lcom/amazonaws/handlers/RequestHandler2;

    .prologue
    .line 483
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 484
    return-void
.end method

.method public removeRequestHandler(Lcom/amazonaws/handlers/RequestHandler;)V
    .locals 2
    .param p1, "requestHandler"    # Lcom/amazonaws/handlers/RequestHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 479
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->requestHandler2s:Ljava/util/List;

    invoke-static {p1}, Lcom/amazonaws/handlers/RequestHandler2;->adapt(Lcom/amazonaws/handlers/RequestHandler;)Lcom/amazonaws/handlers/RequestHandler2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 480
    return-void
.end method

.method protected requestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 605
    iget-object v1, p0, Lcom/amazonaws/AmazonWebServiceClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v1}, Lcom/amazonaws/http/AmazonHttpClient;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    .line 606
    .local v0, "mc":Lcom/amazonaws/metrics/RequestMetricCollector;
    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    .end local v0    # "mc":Lcom/amazonaws/metrics/RequestMetricCollector;
    :cond_0
    return-object v0
.end method

.method public setConfiguration(Lcom/amazonaws/ClientConfiguration;)V
    .locals 3
    .param p1, "clientConfiguration"    # Lcom/amazonaws/ClientConfiguration;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 426
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    .line 427
    .local v0, "existingClient":Lcom/amazonaws/http/AmazonHttpClient;
    const/4 v1, 0x0

    .line 428
    .local v1, "requestMetricCollector":Lcom/amazonaws/metrics/RequestMetricCollector;
    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {v0}, Lcom/amazonaws/http/AmazonHttpClient;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v1

    .line 430
    invoke-virtual {v0}, Lcom/amazonaws/http/AmazonHttpClient;->shutdown()V

    .line 432
    :cond_0
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->clientConfiguration:Lcom/amazonaws/ClientConfiguration;

    .line 433
    new-instance v2, Lcom/amazonaws/http/AmazonHttpClient;

    invoke-direct {v2, p1, v1}, Lcom/amazonaws/http/AmazonHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    iput-object v2, p0, Lcom/amazonaws/AmazonWebServiceClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    .line 434
    return-void
.end method

.method public setEndpoint(Ljava/lang/String;)V
    .locals 4
    .param p1, "endpoint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->toURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 187
    .local v1, "uri":Ljava/net/URI;
    iget-object v2, p0, Lcom/amazonaws/AmazonWebServiceClient;->signerRegionOverride:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/amazonaws/AmazonWebServiceClient;->computeSignerByURI(Ljava/net/URI;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;

    move-result-object v0

    .line 188
    .local v0, "signer":Lcom/amazonaws/auth/Signer;
    monitor-enter p0

    .line 189
    :try_start_0
    iput-object v1, p0, Lcom/amazonaws/AmazonWebServiceClient;->endpoint:Ljava/net/URI;

    .line 190
    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->signer:Lcom/amazonaws/auth/Signer;

    .line 191
    monitor-exit p0

    .line 192
    return-void

    .line 191
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setEndpoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "endpoint"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "regionId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->toURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 249
    .local v1, "uri":Ljava/net/URI;
    const/4 v2, 0x1

    invoke-direct {p0, p2, p3, p3, v2}, Lcom/amazonaws/AmazonWebServiceClient;->computeSignerByServiceRegion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;

    move-result-object v0

    .line 251
    .local v0, "signer":Lcom/amazonaws/auth/Signer;
    monitor-enter p0

    .line 252
    :try_start_0
    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->signer:Lcom/amazonaws/auth/Signer;

    .line 253
    iput-object v1, p0, Lcom/amazonaws/AmazonWebServiceClient;->endpoint:Ljava/net/URI;

    .line 254
    iput-object p3, p0, Lcom/amazonaws/AmazonWebServiceClient;->signerRegionOverride:Ljava/lang/String;

    .line 255
    monitor-exit p0

    .line 256
    return-void

    .line 255
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setRegion(Lcom/amazonaws/regions/Region;)V
    .locals 10
    .param p1, "region"    # Lcom/amazonaws/regions/Region;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 379
    if-nez p1, :cond_0

    .line 380
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "No region provided"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->getServiceNameIntern()Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, "serviceName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/amazonaws/regions/Region;->isServiceSupported(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 388
    invoke-virtual {p1, v2}, Lcom/amazonaws/regions/Region;->getServiceEndpoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, "serviceEndpoint":Ljava/lang/String;
    const-string v5, "://"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 392
    .local v0, "protocolIdx":I
    if-ltz v0, :cond_1

    .line 393
    const-string v5, "://"

    .line 394
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 411
    .end local v0    # "protocolIdx":I
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lcom/amazonaws/AmazonWebServiceClient;->toURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    .line 413
    .local v4, "uri":Ljava/net/URI;
    invoke-virtual {p1}, Lcom/amazonaws/regions/Region;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/amazonaws/AmazonWebServiceClient;->signerRegionOverride:Ljava/lang/String;

    .line 412
    invoke-direct {p0, v2, v5, v6, v9}, Lcom/amazonaws/AmazonWebServiceClient;->computeSignerByServiceRegion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;

    move-result-object v3

    .line 414
    .local v3, "signer":Lcom/amazonaws/auth/Signer;
    monitor-enter p0

    .line 415
    :try_start_0
    iput-object v4, p0, Lcom/amazonaws/AmazonWebServiceClient;->endpoint:Ljava/net/URI;

    .line 416
    iput-object v3, p0, Lcom/amazonaws/AmazonWebServiceClient;->signer:Lcom/amazonaws/auth/Signer;

    .line 417
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    return-void

    .line 399
    .end local v1    # "serviceEndpoint":Ljava/lang/String;
    .end local v3    # "signer":Lcom/amazonaws/auth/Signer;
    .end local v4    # "uri":Ljava/net/URI;
    :cond_2
    const-string v5, "%s.%s.%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v9

    const/4 v7, 0x1

    .line 401
    invoke-virtual {p1}, Lcom/amazonaws/regions/Region;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    .line 402
    invoke-virtual {p1}, Lcom/amazonaws/regions/Region;->getDomain()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 399
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 404
    .restart local v1    # "serviceEndpoint":Ljava/lang/String;
    sget-object v5, Lcom/amazonaws/AmazonWebServiceClient;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/amazonaws/regions/Region;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "} was not found in region metadata, trying to construct an endpoint using the standard pattern for this region: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    .line 417
    .restart local v3    # "signer":Lcom/amazonaws/auth/Signer;
    .restart local v4    # "uri":Ljava/net/URI;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public final setServiceNameIntern(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->serviceName:Ljava/lang/String;

    .line 704
    return-void
.end method

.method public final setSignerRegionOverride(Ljava/lang/String;)V
    .locals 3
    .param p1, "signerRegionOverride"    # Ljava/lang/String;

    .prologue
    .line 767
    iget-object v1, p0, Lcom/amazonaws/AmazonWebServiceClient;->endpoint:Ljava/net/URI;

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/amazonaws/AmazonWebServiceClient;->computeSignerByURI(Ljava/net/URI;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;

    move-result-object v0

    .line 768
    .local v0, "signer":Lcom/amazonaws/auth/Signer;
    monitor-enter p0

    .line 769
    :try_start_0
    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->signer:Lcom/amazonaws/auth/Signer;

    .line 770
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->signerRegionOverride:Ljava/lang/String;

    .line 771
    monitor-exit p0

    .line 772
    return-void

    .line 771
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setTimeOffset(I)V
    .locals 0
    .param p1, "timeOffset"    # I

    .prologue
    .line 556
    iput p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->timeOffset:I

    .line 557
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->client:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0}, Lcom/amazonaws/http/AmazonHttpClient;->shutdown()V

    .line 445
    return-void
.end method

.method public withTimeOffset(I)Lcom/amazonaws/AmazonWebServiceClient;
    .locals 0
    .param p1, "timeOffset"    # I

    .prologue
    .line 570
    invoke-virtual {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->setTimeOffset(I)V

    .line 571
    return-object p0
.end method
