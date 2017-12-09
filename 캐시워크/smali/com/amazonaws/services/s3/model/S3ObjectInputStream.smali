.class public Lcom/amazonaws/services/s3/model/S3ObjectInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;
.source "S3ObjectInputStream.java"


# instance fields
.field private final httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "httpRequest"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 48
    invoke-static {p1}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->wrapWithByteCounting(Ljava/io/InputStream;)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpRequestBase;Z)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpRequestBase;Z)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "httpRequest"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p3, "collectMetrics"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    if-eqz p3, :cond_0

    new-instance v0, Lcom/amazonaws/metrics/MetricFilterInputStream;

    sget-object v1, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->S3DownloadThroughput:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/metrics/MetricFilterInputStream;-><init>(Lcom/amazonaws/metrics/ThroughputMetricType;Ljava/io/InputStream;)V

    move-object p1, v0

    .end local p1    # "in":Ljava/io/InputStream;
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 61
    iput-object p2, p0, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 62
    return-void
.end method

.method private static wrapWithByteCounting(Ljava/io/InputStream;)Z
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->isMetricsEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 77
    :cond_0
    :goto_0
    return v1

    .line 71
    :cond_1
    instance-of v3, p0, Lcom/amazonaws/internal/MetricAware;

    if-eqz v3, :cond_0

    move-object v0, p0

    .line 72
    check-cast v0, Lcom/amazonaws/internal/MetricAware;

    .line 75
    .local v0, "aware":Lcom/amazonaws/internal/MetricAware;
    invoke-interface {v0}, Lcom/amazonaws/internal/MetricAware;->isMetricActivated()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    .line 99
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    const-string v2, "FYI"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    return-object v0
.end method
