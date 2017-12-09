.class public Lcom/amazonaws/metrics/ServiceLatencyProvider;
.super Ljava/lang/Object;
.source "ServiceLatencyProvider.java"


# instance fields
.field private endNano:J

.field private final serviceMetricType:Lcom/amazonaws/metrics/ServiceMetricType;

.field private final startNano:J


# direct methods
.method public constructor <init>(Lcom/amazonaws/metrics/ServiceMetricType;)V
    .locals 2
    .param p1, "type"    # Lcom/amazonaws/metrics/ServiceMetricType;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->startNano:J

    .line 27
    iget-wide v0, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->startNano:J

    iput-wide v0, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->endNano:J

    .line 31
    iput-object p1, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->serviceMetricType:Lcom/amazonaws/metrics/ServiceMetricType;

    .line 32
    return-void
.end method


# virtual methods
.method public endTiming()Lcom/amazonaws/metrics/ServiceLatencyProvider;
    .locals 4

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->endNano:J

    iget-wide v2, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->startNano:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 45
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->endNano:J

    .line 46
    return-object p0
.end method

.method public getDurationMilli()D
    .locals 4

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->endNano:J

    iget-wide v2, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->startNano:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    const-string v1, "Likely to be a missing invocation of endTiming()."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 54
    :cond_0
    iget-wide v0, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->startNano:J

    iget-wide v2, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->endNano:J

    invoke-static {v0, v1, v2, v3}, Lcom/amazonaws/util/TimingInfo;->durationMilliOf(JJ)D

    move-result-wide v0

    return-wide v0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceMetricType()Lcom/amazonaws/metrics/ServiceMetricType;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->serviceMetricType:Lcom/amazonaws/metrics/ServiceMetricType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 63
    const-string v0, "providerId=%s, serviceMetricType=%s, startNano=%d, endNano=%d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/amazonaws/metrics/ServiceLatencyProvider;->getProviderId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->serviceMetricType:Lcom/amazonaws/metrics/ServiceMetricType;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->startNano:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/amazonaws/metrics/ServiceLatencyProvider;->endNano:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 63
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
