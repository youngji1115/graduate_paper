.class public Lcom/amazonaws/metrics/SimpleThroughputMetricType;
.super Lcom/amazonaws/metrics/SimpleServiceMetricType;
.source "SimpleThroughputMetricType.java"

# interfaces
.implements Lcom/amazonaws/metrics/ThroughputMetricType;


# instance fields
.field private final byteCountMetricType:Lcom/amazonaws/metrics/ServiceMetricType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "byteCountMetricName"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/metrics/SimpleServiceMetricType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/amazonaws/metrics/SimpleServiceMetricType;

    invoke-direct {v0, p3, p2}, Lcom/amazonaws/metrics/SimpleServiceMetricType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazonaws/metrics/SimpleThroughputMetricType;->byteCountMetricType:Lcom/amazonaws/metrics/ServiceMetricType;

    .line 25
    return-void
.end method


# virtual methods
.method public getByteCountMetricType()Lcom/amazonaws/metrics/ServiceMetricType;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/amazonaws/metrics/SimpleThroughputMetricType;->byteCountMetricType:Lcom/amazonaws/metrics/ServiceMetricType;

    return-object v0
.end method
