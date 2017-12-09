.class public abstract Lcom/amazonaws/metrics/ByteThroughputProvider;
.super Ljava/lang/Object;
.source "ByteThroughputProvider.java"


# instance fields
.field private byteCount:I

.field private duration:J

.field private final throughputType:Lcom/amazonaws/metrics/ThroughputMetricType;


# direct methods
.method protected constructor <init>(Lcom/amazonaws/metrics/ThroughputMetricType;)V
    .locals 0
    .param p1, "type"    # Lcom/amazonaws/metrics/ThroughputMetricType;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->throughputType:Lcom/amazonaws/metrics/ThroughputMetricType;

    .line 28
    return-void
.end method


# virtual methods
.method public getByteCount()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->byteCount:I

    return v0
.end method

.method public getDurationNano()J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->duration:J

    return-wide v0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThroughputMetricType()Lcom/amazonaws/metrics/ThroughputMetricType;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->throughputType:Lcom/amazonaws/metrics/ThroughputMetricType;

    return-object v0
.end method

.method protected increment(IJ)V
    .locals 4
    .param p1, "bytesDelta"    # I
    .param p2, "startTimeNano"    # J

    .prologue
    .line 56
    iget v0, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->byteCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->byteCount:I

    .line 57
    iget-wide v0, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->duration:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->duration:J

    .line 58
    return-void
.end method

.method protected reset()V
    .locals 2

    .prologue
    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->byteCount:I

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->duration:J

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 67
    const-string v0, "providerId=%s, throughputType=%s, byteCount=%d, duration=%d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/amazonaws/metrics/ByteThroughputProvider;->getProviderId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->throughputType:Lcom/amazonaws/metrics/ThroughputMetricType;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->byteCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/amazonaws/metrics/ByteThroughputProvider;->duration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 67
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
