.class public final Lcom/amazonaws/services/s3/internal/InputSubstream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;
.source "InputSubstream.java"


# instance fields
.field private final closeSourceStream:Z

.field private currentPosition:J

.field private markedPosition:J

.field private final requestedLength:J

.field private final requestedOffset:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JJZ)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "closeSourceStream"    # Z

    .prologue
    const-wide/16 v0, 0x0

    .line 48
    invoke-direct {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 32
    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->markedPosition:J

    .line 50
    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->currentPosition:J

    .line 51
    iput-wide p4, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->requestedLength:J

    .line 52
    iput-wide p2, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->requestedOffset:J

    .line 53
    iput-boolean p6, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->closeSourceStream:Z

    .line 54
    return-void
.end method


# virtual methods
.method public available()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->currentPosition:J

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->requestedOffset:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 109
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->requestedLength:J

    .line 113
    .local v0, "bytesRemaining":J
    :goto_0
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->available()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    return v2

    .line 111
    .end local v0    # "bytesRemaining":J
    :cond_0
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->requestedLength:J

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->requestedOffset:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->currentPosition:J

    sub-long v0, v2, v4

    .restart local v0    # "bytesRemaining":J
    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->closeSourceStream:Z

    if-eqz v0, :cond_0

    .line 102
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->close()V

    .line 103
    :cond_0
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 2
    .param p1, "readlimit"    # I

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->currentPosition:J

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->markedPosition:J

    .line 87
    invoke-super {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 58
    new-array v0, v2, [B

    .line 59
    .local v0, "b":[B
    invoke-virtual {p0, v0, v3, v2}, Lcom/amazonaws/services/s3/internal/InputSubstream;->read([BII)I

    move-result v1

    .line 61
    .local v1, "bytesRead":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 63
    .end local v1    # "bytesRead":I
    :goto_0
    return v1

    .restart local v1    # "bytesRead":I
    :cond_0
    aget-byte v1, v0, v3

    goto :goto_0
.end method

.method public read([BII)I
    .locals 10
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    :goto_0
    iget-wide v6, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->currentPosition:J

    iget-wide v8, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->requestedOffset:J

    cmp-long v1, v6, v8

    if-gez v1, :cond_0

    .line 69
    iget-wide v6, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->requestedOffset:J

    iget-wide v8, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->currentPosition:J

    sub-long/2addr v6, v8

    invoke-super {p0, v6, v7}, Lcom/amazonaws/internal/SdkFilterInputStream;->skip(J)J

    move-result-wide v4

    .line 70
    .local v4, "skippedBytes":J
    iget-wide v6, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->currentPosition:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->currentPosition:J

    goto :goto_0

    .line 73
    .end local v4    # "skippedBytes":J
    :cond_0
    iget-wide v6, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->requestedLength:J

    iget-wide v8, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->requestedOffset:J

    add-long/2addr v6, v8

    iget-wide v8, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->currentPosition:J

    sub-long v2, v6, v8

    .line 74
    .local v2, "bytesRemaining":J
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-gtz v1, :cond_1

    .line 75
    const/4 v0, -0x1

    .line 81
    :goto_1
    return v0

    .line 77
    :cond_1
    int-to-long v6, p3

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int p3, v6

    .line 78
    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/internal/SdkFilterInputStream;->read([BII)I

    move-result v0

    .line 79
    .local v0, "bytesRead":I
    iget-wide v6, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->currentPosition:J

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->currentPosition:J

    goto :goto_1
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->markedPosition:J

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/InputSubstream;->currentPosition:J

    .line 93
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
