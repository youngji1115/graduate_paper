.class public Lcom/amazonaws/internal/SdkDigestInputStream;
.super Ljava/security/DigestInputStream;
.source "SdkDigestInputStream.java"

# interfaces
.implements Lcom/amazonaws/internal/MetricAware;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final SKIP_BUF_SIZE:I = 0x800


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/amazonaws/internal/SdkDigestInputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/amazonaws/internal/SdkDigestInputStream;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "digest"    # Ljava/security/MessageDigest;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    .line 31
    return-void
.end method


# virtual methods
.method public final isMetricActivated()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 36
    iget-object v1, p0, Lcom/amazonaws/internal/SdkDigestInputStream;->in:Ljava/io/InputStream;

    instance-of v1, v1, Lcom/amazonaws/internal/MetricAware;

    if-eqz v1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/amazonaws/internal/SdkDigestInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Lcom/amazonaws/internal/MetricAware;

    .line 38
    .local v0, "metricAware":Lcom/amazonaws/internal/MetricAware;
    invoke-interface {v0}, Lcom/amazonaws/internal/MetricAware;->isMetricActivated()Z

    move-result v1

    .line 40
    .end local v0    # "metricAware":Lcom/amazonaws/internal/MetricAware;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final skip(J)J
    .locals 11
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 67
    cmp-long v4, p1, v8

    if-gtz v4, :cond_1

    .line 78
    .end local p1    # "n":J
    :cond_0
    :goto_0
    return-wide p1

    .line 69
    .restart local p1    # "n":J
    :cond_1
    const-wide/16 v4, 0x800

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    new-array v0, v4, [B

    .line 70
    .local v0, "b":[B
    move-wide v2, p1

    .line 71
    .local v2, "m":J
    :goto_1
    cmp-long v4, v2, v8

    if-lez v4, :cond_4

    .line 72
    const/4 v4, 0x0

    array-length v5, v0

    int-to-long v6, v5

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v5, v6

    invoke-virtual {p0, v0, v4, v5}, Lcom/amazonaws/internal/SdkDigestInputStream;->read([BII)I

    move-result v1

    .line 73
    .local v1, "len":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_3

    .line 74
    cmp-long v4, v2, p1

    if-nez v4, :cond_2

    const-wide/16 v4, -0x1

    :goto_2
    move-wide p1, v4

    goto :goto_0

    :cond_2
    sub-long v4, p1, v2

    goto :goto_2

    .line 75
    :cond_3
    int-to-long v4, v1

    sub-long/2addr v2, v4

    .line 76
    goto :goto_1

    .line 77
    .end local v1    # "len":I
    :cond_4
    sget-boolean v4, Lcom/amazonaws/internal/SdkDigestInputStream;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    cmp-long v4, v2, v8

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
.end method
