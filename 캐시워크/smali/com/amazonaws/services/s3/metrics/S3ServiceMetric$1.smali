.class final Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$1;
.super Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;
.source "S3ServiceMetric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;-><init>(Ljava/lang/String;Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$1;)V

    return-void
.end method


# virtual methods
.method public getByteCountMetricType()Lcom/amazonaws/metrics/ServiceMetricType;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$1;->S3DownloadByteCount:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    return-object v0
.end method
