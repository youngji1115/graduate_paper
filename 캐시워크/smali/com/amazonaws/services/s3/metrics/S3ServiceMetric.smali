.class public Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;
.super Lcom/amazonaws/metrics/SimpleMetricType;
.source "S3ServiceMetric.java"

# interfaces
.implements Lcom/amazonaws/metrics/ServiceMetricType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;
    }
.end annotation


# static fields
.field public static final S3DownloadByteCount:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

.field public static final S3DownloadThroughput:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

.field public static final S3UploadByteCount:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

.field public static final S3UploadThroughput:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

.field static final SERVICE_NAME_PREFIX:Ljava/lang/String; = "S3"

.field private static final values:[Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$1;

    const-string v1, "DownloadThroughput"

    .line 41
    invoke-static {v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->metricName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->S3DownloadThroughput:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

    .line 47
    new-instance v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    const-string v1, "DownloadByteCount"

    .line 48
    invoke-static {v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->metricName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->S3DownloadByteCount:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    .line 49
    new-instance v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$2;

    const-string v1, "UploadThroughput"

    .line 50
    invoke-static {v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->metricName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->S3UploadThroughput:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

    .line 56
    new-instance v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    const-string v1, "UploadByteCount"

    .line 57
    invoke-static {v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->metricName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->S3UploadByteCount:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    const/4 v1, 0x0

    sget-object v2, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->S3DownloadThroughput:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->S3DownloadByteCount:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->S3UploadThroughput:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$S3ThroughputMetric;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->S3UploadByteCount:Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->values:[Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/amazonaws/metrics/SimpleMetricType;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->name:Ljava/lang/String;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/amazonaws/services/s3/metrics/S3ServiceMetric$1;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static final metricName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "suffix"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "S3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-static {}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->values()[Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 94
    .local v0, "e":Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 95
    return-object v0

    .line 93
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "e":Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No S3ServiceMetric defined for the name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static values()[Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->values:[Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    return-object v0
.end method


# virtual methods
.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/amazonaws/services/s3/internal/Constants;->S3_SERVICE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->name:Ljava/lang/String;

    return-object v0
.end method
