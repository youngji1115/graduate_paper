.class public Lcom/amazonaws/metrics/MetricInputStreamEntity;
.super Lorg/apache/http/entity/InputStreamEntity;
.source "MetricInputStreamEntity.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x800


# instance fields
.field private final helper:Lcom/amazonaws/metrics/ByteThroughputHelper;


# direct methods
.method public constructor <init>(Lcom/amazonaws/metrics/ThroughputMetricType;Ljava/io/InputStream;J)V
    .locals 1
    .param p1, "metricType"    # Lcom/amazonaws/metrics/ThroughputMetricType;
    .param p2, "instream"    # Ljava/io/InputStream;
    .param p3, "length"    # J

    .prologue
    .line 38
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 39
    new-instance v0, Lcom/amazonaws/metrics/ByteThroughputHelper;

    invoke-direct {v0, p1}, Lcom/amazonaws/metrics/ByteThroughputHelper;-><init>(Lcom/amazonaws/metrics/ThroughputMetricType;)V

    iput-object v0, p0, Lcom/amazonaws/metrics/MetricInputStreamEntity;->helper:Lcom/amazonaws/metrics/ByteThroughputHelper;

    .line 40
    return-void
.end method

.method private writeToWithMetrics(Ljava/io/OutputStream;)V
    .locals 14
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 64
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Output stream may not be null"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/metrics/MetricInputStreamEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 67
    .local v1, "content":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/amazonaws/metrics/MetricInputStreamEntity;->getContentLength()J

    move-result-wide v4

    .line 68
    .local v4, "length":J
    move-object v2, v1

    .line 70
    .local v2, "instream":Ljava/io/InputStream;
    const/16 v10, 0x800

    :try_start_0
    new-array v0, v10, [B

    .line 72
    .local v0, "buffer":[B
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-gez v10, :cond_1

    .line 74
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "l":I
    const/4 v10, -0x1

    if-eq v3, v10, :cond_2

    .line 75
    iget-object v10, p0, Lcom/amazonaws/metrics/MetricInputStreamEntity;->helper:Lcom/amazonaws/metrics/ByteThroughputHelper;

    invoke-virtual {v10}, Lcom/amazonaws/metrics/ByteThroughputHelper;->startTiming()J

    move-result-wide v8

    .line 76
    .local v8, "startNano":J
    const/4 v10, 0x0

    invoke-virtual {p1, v0, v10, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 77
    iget-object v10, p0, Lcom/amazonaws/metrics/MetricInputStreamEntity;->helper:Lcom/amazonaws/metrics/ByteThroughputHelper;

    invoke-virtual {v10, v3, v8, v9}, Lcom/amazonaws/metrics/ByteThroughputHelper;->increment(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 94
    .end local v0    # "buffer":[B
    .end local v3    # "l":I
    .end local v8    # "startNano":J
    :catchall_0
    move-exception v10

    iget-object v11, p0, Lcom/amazonaws/metrics/MetricInputStreamEntity;->helper:Lcom/amazonaws/metrics/ByteThroughputHelper;

    invoke-virtual {v11}, Lcom/amazonaws/metrics/ByteThroughputHelper;->reportMetrics()V

    .line 95
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v10

    .line 81
    .restart local v0    # "buffer":[B
    :cond_1
    move-wide v6, v4

    .line 82
    .local v6, "remaining":J
    :goto_1
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_2

    .line 83
    const/4 v10, 0x0

    const-wide/16 v12, 0x800

    :try_start_1
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v11, v12

    invoke-virtual {v2, v0, v10, v11}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 84
    .restart local v3    # "l":I
    const/4 v10, -0x1

    if-ne v3, v10, :cond_3

    .line 94
    .end local v3    # "l":I
    .end local v6    # "remaining":J
    :cond_2
    iget-object v10, p0, Lcom/amazonaws/metrics/MetricInputStreamEntity;->helper:Lcom/amazonaws/metrics/ByteThroughputHelper;

    invoke-virtual {v10}, Lcom/amazonaws/metrics/ByteThroughputHelper;->reportMetrics()V

    .line 95
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 97
    return-void

    .line 87
    .restart local v3    # "l":I
    .restart local v6    # "remaining":J
    :cond_3
    :try_start_2
    iget-object v10, p0, Lcom/amazonaws/metrics/MetricInputStreamEntity;->helper:Lcom/amazonaws/metrics/ByteThroughputHelper;

    invoke-virtual {v10}, Lcom/amazonaws/metrics/ByteThroughputHelper;->startTiming()J

    move-result-wide v8

    .line 88
    .restart local v8    # "startNano":J
    const/4 v10, 0x0

    invoke-virtual {p1, v0, v10, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 89
    iget-object v10, p0, Lcom/amazonaws/metrics/MetricInputStreamEntity;->helper:Lcom/amazonaws/metrics/ByteThroughputHelper;

    invoke-virtual {v10, v3, v8, v9}, Lcom/amazonaws/metrics/ByteThroughputHelper;->increment(IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    int-to-long v10, v3

    sub-long/2addr v6, v10

    .line 91
    goto :goto_1
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    instance-of v1, p1, Lcom/amazonaws/internal/MetricAware;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 48
    check-cast v0, Lcom/amazonaws/internal/MetricAware;

    .line 49
    .local v0, "aware":Lcom/amazonaws/internal/MetricAware;
    invoke-interface {v0}, Lcom/amazonaws/internal/MetricAware;->isMetricActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-super {p0, p1}, Lorg/apache/http/entity/InputStreamEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 56
    .end local v0    # "aware":Lcom/amazonaws/internal/MetricAware;
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazonaws/metrics/MetricInputStreamEntity;->writeToWithMetrics(Ljava/io/OutputStream;)V

    goto :goto_0
.end method
