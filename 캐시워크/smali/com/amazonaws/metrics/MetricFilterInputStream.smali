.class public Lcom/amazonaws/metrics/MetricFilterInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;
.source "MetricFilterInputStream.java"


# instance fields
.field private final helper:Lcom/amazonaws/metrics/ByteThroughputHelper;


# direct methods
.method public constructor <init>(Lcom/amazonaws/metrics/ThroughputMetricType;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "type"    # Lcom/amazonaws/metrics/ThroughputMetricType;
    .param p2, "in"    # Ljava/io/InputStream;

    .prologue
    .line 34
    invoke-direct {p0, p2}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 35
    new-instance v0, Lcom/amazonaws/metrics/ByteThroughputHelper;

    invoke-direct {v0, p1}, Lcom/amazonaws/metrics/ByteThroughputHelper;-><init>(Lcom/amazonaws/metrics/ThroughputMetricType;)V

    iput-object v0, p0, Lcom/amazonaws/metrics/MetricFilterInputStream;->helper:Lcom/amazonaws/metrics/ByteThroughputHelper;

    .line 36
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/amazonaws/metrics/MetricFilterInputStream;->helper:Lcom/amazonaws/metrics/ByteThroughputHelper;

    invoke-virtual {v0}, Lcom/amazonaws/metrics/ByteThroughputHelper;->reportMetrics()V

    .line 52
    iget-object v0, p0, Lcom/amazonaws/metrics/MetricFilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 53
    invoke-virtual {p0}, Lcom/amazonaws/metrics/MetricFilterInputStream;->abortIfNeeded()V

    .line 54
    return-void
.end method

.method public final isMetricActivated()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/amazonaws/metrics/MetricFilterInputStream;->abortIfNeeded()V

    .line 41
    iget-object v1, p0, Lcom/amazonaws/metrics/MetricFilterInputStream;->helper:Lcom/amazonaws/metrics/ByteThroughputHelper;

    invoke-virtual {v1}, Lcom/amazonaws/metrics/ByteThroughputHelper;->startTiming()J

    move-result-wide v2

    .line 42
    .local v2, "startNano":J
    iget-object v1, p0, Lcom/amazonaws/metrics/MetricFilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 43
    .local v0, "bytesRead":I
    if-lez v0, :cond_0

    .line 44
    iget-object v1, p0, Lcom/amazonaws/metrics/MetricFilterInputStream;->helper:Lcom/amazonaws/metrics/ByteThroughputHelper;

    invoke-virtual {v1, v0, v2, v3}, Lcom/amazonaws/metrics/ByteThroughputHelper;->increment(IJ)V

    .line 46
    :cond_0
    return v0
.end method
