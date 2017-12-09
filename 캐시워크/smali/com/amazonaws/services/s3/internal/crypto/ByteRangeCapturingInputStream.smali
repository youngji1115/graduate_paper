.class public Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;
.source "ByteRangeCapturingInputStream.java"


# instance fields
.field private final block:[B

.field private blockPosition:I

.field private final endingPosition:J

.field private markedBlockPosition:I

.field private markedStreamPosition:J

.field private final startingPosition:J

.field private streamPosition:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JJ)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "startingPosition"    # J
    .param p4, "endingPosition"    # J

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 31
    const/4 v1, 0x0

    iput v1, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->blockPosition:I

    .line 40
    cmp-long v1, p2, p4

    if-ltz v1, :cond_0

    .line 41
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid byte range specified: the starting position must be less than the ending position"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_0
    iput-wide p2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->startingPosition:J

    .line 46
    iput-wide p4, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->endingPosition:J

    .line 47
    sub-long v2, p4, p2

    long-to-int v0, v2

    .line 48
    .local v0, "blockSize":I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->block:[B

    .line 49
    return-void
.end method


# virtual methods
.method public getBlock()[B
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->block:[B

    return-object v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2
    .param p1, "readlimit"    # I

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;->mark(I)V

    .line 72
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->markedStreamPosition:J

    .line 74
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->blockPosition:I

    iput v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->markedBlockPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_0
    monitor-exit p0

    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 57
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->read()I

    move-result v0

    .line 58
    .local v0, "data":I
    if-ne v0, v1, :cond_0

    move v0, v1

    .line 66
    .end local v0    # "data":I
    :goto_0
    return v0

    .line 61
    .restart local v0    # "data":I
    :cond_0
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->startingPosition:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->endingPosition:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->block:[B

    iget v2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->blockPosition:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->blockPosition:I

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 65
    :cond_1
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

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
    const/4 v2, -0x1

    .line 89
    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/internal/SdkFilterInputStream;->read([BII)I

    move-result v0

    .line 90
    .local v0, "bytesRead":I
    if-ne v0, v2, :cond_0

    move v0, v2

    .line 102
    .end local v0    # "bytesRead":I
    :goto_0
    return v0

    .line 93
    .restart local v0    # "bytesRead":I
    :cond_0
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->startingPosition:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->endingPosition:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    .line 94
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 95
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->startingPosition:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->endingPosition:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 96
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->block:[B

    iget v3, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->blockPosition:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->blockPosition:I

    add-int v4, p2, v1

    aget-byte v4, p1, v4

    aput-byte v4, v2, v3

    .line 94
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 101
    .end local v1    # "i":I
    :cond_2
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->reset()V

    .line 81
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->markedStreamPosition:J

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->streamPosition:J

    .line 83
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->markedBlockPosition:I

    iput v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->blockPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
