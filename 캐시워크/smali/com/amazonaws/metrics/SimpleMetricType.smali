.class public abstract Lcom/amazonaws/metrics/SimpleMetricType;
.super Ljava/lang/Object;
.source "SimpleMetricType.java"

# interfaces
.implements Lcom/amazonaws/metrics/MetricType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 29
    instance-of v1, p1, Lcom/amazonaws/metrics/MetricType;

    if-nez v1, :cond_0

    .line 30
    const/4 v1, 0x0

    .line 32
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 31
    check-cast v0, Lcom/amazonaws/metrics/MetricType;

    .line 32
    .local v0, "that":Lcom/amazonaws/metrics/MetricType;
    invoke-virtual {p0}, Lcom/amazonaws/metrics/SimpleMetricType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazonaws/metrics/MetricType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/amazonaws/metrics/SimpleMetricType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/amazonaws/metrics/SimpleMetricType;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
