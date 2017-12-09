.class Lcom/amazonaws/metrics/ByteThroughputHelper;
.super Lcom/amazonaws/metrics/ByteThroughputProvider;
.source "ByteThroughputHelper.java"


# static fields
.field private static final REPORT_INTERVAL_SECS:I = 0xa


# direct methods
.method constructor <init>(Lcom/amazonaws/metrics/ThroughputMetricType;)V
    .locals 0
    .param p1, "type"    # Lcom/amazonaws/metrics/ThroughputMetricType;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/amazonaws/metrics/ByteThroughputProvider;-><init>(Lcom/amazonaws/metrics/ThroughputMetricType;)V

    .line 31
    return-void
.end method


# virtual methods
.method public increment(IJ)V
    .locals 0
    .param p1, "bytesDelta"    # I
    .param p2, "startTimeNano"    # J

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/metrics/ByteThroughputProvider;->increment(IJ)V

    .line 51
    return-void
.end method

.method reportMetrics()V
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/amazonaws/metrics/ByteThroughputHelper;->getByteCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 42
    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->getServiceMetricCollector()Lcom/amazonaws/metrics/ServiceMetricCollector;

    move-result-object v0

    .line 43
    .local v0, "col":Lcom/amazonaws/metrics/ServiceMetricCollector;
    invoke-virtual {v0, p0}, Lcom/amazonaws/metrics/ServiceMetricCollector;->collectByteThroughput(Lcom/amazonaws/metrics/ByteThroughputProvider;)V

    .line 44
    invoke-virtual {p0}, Lcom/amazonaws/metrics/ByteThroughputHelper;->reset()V

    .line 46
    .end local v0    # "col":Lcom/amazonaws/metrics/ServiceMetricCollector;
    :cond_0
    return-void
.end method

.method startTiming()J
    .locals 4

    .prologue
    .line 34
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lcom/amazonaws/metrics/ByteThroughputHelper;->getDurationNano()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/amazonaws/metrics/ByteThroughputHelper;->reportMetrics()V

    .line 37
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
