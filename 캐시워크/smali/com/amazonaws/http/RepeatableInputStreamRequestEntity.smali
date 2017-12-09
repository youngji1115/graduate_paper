.class Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;
.super Lorg/apache/http/entity/BasicHttpEntity;
.source "RepeatableInputStreamRequestEntity.java"


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private content:Ljava/io/InputStream;

.field private firstAttempt:Z

.field private inputStreamRequestEntity:Lorg/apache/http/entity/InputStreamEntity;

.field private originalException:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/amazonaws/http/AmazonHttpClient;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method constructor <init>(Lcom/amazonaws/Request;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    invoke-direct {p0}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    .line 43
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->firstAttempt:Z

    .line 72
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->setChunked(Z)V

    .line 82
    const-wide/16 v0, -0x1

    .line 84
    .local v0, "contentLength":J
    :try_start_0
    invoke-interface {p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v6

    const-string v7, "Content-Length"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 85
    .local v2, "contentLengthString":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 86
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 93
    .end local v2    # "contentLengthString":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v6

    const-string v7, "Content-Type"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 94
    .local v3, "contentType":Ljava/lang/String;
    const-string v6, "UploadThroughput"

    const-string v7, "UploadByteCount"

    .line 95
    invoke-static {p1, v6, v7}, Lcom/amazonaws/metrics/internal/ServiceMetricTypeGuesser;->guessThroughputMetricType(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/metrics/ThroughputMetricType;

    move-result-object v5

    .line 98
    .local v5, "type":Lcom/amazonaws/metrics/ThroughputMetricType;
    if-nez v5, :cond_1

    .line 99
    new-instance v6, Lorg/apache/http/entity/InputStreamEntity;

    .line 100
    invoke-interface {p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7, v0, v1}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    iput-object v6, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->inputStreamRequestEntity:Lorg/apache/http/entity/InputStreamEntity;

    .line 105
    :goto_1
    iget-object v6, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->inputStreamRequestEntity:Lorg/apache/http/entity/InputStreamEntity;

    invoke-virtual {v6, v3}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    .line 106
    invoke-interface {p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v6

    iput-object v6, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->content:Ljava/io/InputStream;

    .line 108
    iget-object v6, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->content:Ljava/io/InputStream;

    invoke-virtual {p0, v6}, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->setContent(Ljava/io/InputStream;)V

    .line 109
    invoke-virtual {p0, v3}, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->setContentType(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->setContentLength(J)V

    .line 111
    return-void

    .line 88
    .end local v3    # "contentType":Ljava/lang/String;
    .end local v5    # "type":Lcom/amazonaws/metrics/ThroughputMetricType;
    :catch_0
    move-exception v4

    .line 89
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "Unable to parse content length from request.  Buffering contents in memory."

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v3    # "contentType":Ljava/lang/String;
    .restart local v5    # "type":Lcom/amazonaws/metrics/ThroughputMetricType;
    :cond_1
    new-instance v6, Lcom/amazonaws/metrics/MetricInputStreamEntity;

    .line 103
    invoke-interface {p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v5, v7, v0, v1}, Lcom/amazonaws/metrics/MetricInputStreamEntity;-><init>(Lcom/amazonaws/metrics/ThroughputMetricType;Ljava/io/InputStream;J)V

    iput-object v6, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->inputStreamRequestEntity:Lorg/apache/http/entity/InputStreamEntity;

    goto :goto_1
.end method


# virtual methods
.method public isChunked()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->content:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->inputStreamRequestEntity:Lorg/apache/http/entity/InputStreamEntity;

    invoke-virtual {v0}, Lorg/apache/http/entity/InputStreamEntity;->isRepeatable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    :try_start_0
    iget-boolean v1, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->firstAttempt:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->isRepeatable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->content:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 150
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->firstAttempt:Z

    .line 151
    iget-object v1, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->inputStreamRequestEntity:Lorg/apache/http/entity/InputStreamEntity;

    invoke-virtual {v1, p1}, Lorg/apache/http/entity/InputStreamEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "ioe":Ljava/io/IOException;
    iget-object v1, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->originalException:Ljava/io/IOException;

    if-nez v1, :cond_1

    .line 154
    iput-object v0, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->originalException:Ljava/io/IOException;

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/http/RepeatableInputStreamRequestEntity;->originalException:Ljava/io/IOException;

    throw v1
.end method
