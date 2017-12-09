.class public Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;
.super Lcom/amazonaws/internal/SdkInputStream;
.source "AdjustedRangeInputStream.java"


# instance fields
.field private closed:Z

.field private decryptedContents:Ljava/io/InputStream;

.field private virtualAvailable:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JJ)V
    .locals 2
    .param p1, "objectContents"    # Ljava/io/InputStream;
    .param p2, "rangeBeginning"    # J
    .param p4, "rangeEnd"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/amazonaws/internal/SdkInputStream;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->decryptedContents:Ljava/io/InputStream;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->closed:Z

    .line 46
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->initializeForRead(JJ)V

    .line 47
    return-void
.end method

.method private initializeForRead(JJ)V
    .locals 7
    .param p1, "rangeBeginning"    # J
    .param p3, "rangeEnd"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    sget v2, Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;->SYMMETRIC_CIPHER_BLOCK_SIZE:I

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 60
    long-to-int v0, p1

    .line 65
    .local v0, "numBytesToSkip":I
    :goto_0
    if-eqz v0, :cond_1

    .line 70
    :goto_1
    if-lez v0, :cond_1

    .line 71
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->decryptedContents:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    .line 72
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 62
    .end local v0    # "numBytesToSkip":I
    :cond_0
    sget v2, Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;->SYMMETRIC_CIPHER_BLOCK_SIZE:I

    int-to-long v2, v2

    rem-long v2, p1, v2

    long-to-int v1, v2

    .line 63
    .local v1, "offsetIntoBlock":I
    sget v2, Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;->SYMMETRIC_CIPHER_BLOCK_SIZE:I

    add-int v0, v2, v1

    .restart local v0    # "numBytesToSkip":I
    goto :goto_0

    .line 78
    .end local v1    # "offsetIntoBlock":I
    :cond_1
    sub-long v2, p3, p1

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    .line 79
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
    .line 153
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->abortIfNeeded()V

    .line 154
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->decryptedContents:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 155
    .local v0, "available":I
    int-to-long v2, v0

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 160
    .end local v0    # "available":I
    :goto_0
    return v0

    .restart local v0    # "available":I
    :cond_0
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    long-to-int v0, v2

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
    .line 171
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->closed:Z

    if-nez v0, :cond_0

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->closed:Z

    .line 173
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->decryptedContents:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->abortIfNeeded()V

    .line 176
    return-void
.end method

.method protected getWrappedInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->decryptedContents:Ljava/io/InputStream;

    return-object v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->abortIfNeeded()V

    .line 88
    const/4 v0, 0x0

    .line 91
    .local v0, "result":I
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 92
    const/4 v0, -0x1

    .line 100
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 101
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    .line 107
    :goto_1
    return v0

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->decryptedContents:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->close()V

    .line 105
    iput-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    goto :goto_1
.end method

.method public read([BII)I
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->abortIfNeeded()V

    .line 119
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    cmp-long v1, v2, v6

    if-gtz v1, :cond_0

    .line 120
    const/4 v0, -0x1

    .line 137
    .local v0, "numBytesRead":I
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 138
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    .line 144
    :goto_1
    return v0

    .line 125
    .end local v0    # "numBytesRead":I
    :cond_0
    int-to-long v2, p3

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 129
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    long-to-int p3, v2

    .line 133
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->decryptedContents:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .restart local v0    # "numBytesRead":I
    goto :goto_0

    .line 129
    .end local v0    # "numBytesRead":I
    :cond_2
    const p3, 0x7fffffff

    goto :goto_2

    .line 141
    .restart local v0    # "numBytesRead":I
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->close()V

    .line 142
    iput-wide v6, p0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;->virtualAvailable:J

    goto :goto_1
.end method
