.class public Lcom/amazonaws/util/CountingInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;
.source "CountingInputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private byteCount:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amazonaws/util/CountingInputStream;->byteCount:J

    .line 34
    return-void
.end method


# virtual methods
.method public getByteCount()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/amazonaws/util/CountingInputStream;->byteCount:J

    return-wide v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->read()I

    move-result v0

    .line 48
    .local v0, "tmp":I
    iget-wide v4, p0, Lcom/amazonaws/util/CountingInputStream;->byteCount:J

    if-ltz v0, :cond_0

    const-wide/16 v2, 0x1

    :goto_0
    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amazonaws/util/CountingInputStream;->byteCount:J

    .line 49
    return v0

    .line 48
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/internal/SdkFilterInputStream;->read([BII)I

    move-result v0

    .line 55
    .local v0, "tmp":I
    iget-wide v4, p0, Lcom/amazonaws/util/CountingInputStream;->byteCount:J

    if-ltz v0, :cond_0

    int-to-long v2, v0

    :goto_0
    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amazonaws/util/CountingInputStream;->byteCount:J

    .line 56
    return v0

    .line 55
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method
