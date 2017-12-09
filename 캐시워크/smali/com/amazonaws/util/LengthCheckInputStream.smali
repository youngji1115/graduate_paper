.class public Lcom/amazonaws/util/LengthCheckInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;
.source "LengthCheckInputStream.java"


# static fields
.field public static final EXCLUDE_SKIPPED_BYTES:Z = false

.field public static final INCLUDE_SKIPPED_BYTES:Z = true


# instance fields
.field private dataLength:J

.field private final expectedLength:J

.field private final includeSkipped:Z

.field private marked:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JZ)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "expectedLength"    # J
    .param p4, "includeSkipped"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 64
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 66
    :cond_0
    iput-wide p2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->expectedLength:J

    .line 67
    iput-boolean p4, p0, Lcom/amazonaws/util/LengthCheckInputStream;->includeSkipped:Z

    .line 68
    return-void
.end method

.method private checkLength(Z)V
    .locals 4
    .param p1, "eof"    # Z

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 125
    iget-wide v0, p0, Lcom/amazonaws/util/LengthCheckInputStream;->dataLength:J

    iget-wide v2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->expectedLength:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 126
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data read ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->dataLength:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") has a different length than the expected ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->expectedLength:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    iget-wide v0, p0, Lcom/amazonaws/util/LengthCheckInputStream;->dataLength:J

    iget-wide v2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->expectedLength:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 131
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "More data read ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->dataLength:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") than expected ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->expectedLength:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_1
    return-void
.end method


# virtual methods
.method public mark(I)V
    .locals 2
    .param p1, "readlimit"    # I

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;->mark(I)V

    .line 104
    iget-wide v0, p0, Lcom/amazonaws/util/LengthCheckInputStream;->dataLength:J

    iput-wide v0, p0, Lcom/amazonaws/util/LengthCheckInputStream;->marked:J

    .line 105
    return-void
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->read()I

    move-result v0

    .line 80
    .local v0, "c":I
    if-ltz v0, :cond_0

    .line 81
    iget-wide v2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->dataLength:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->dataLength:J

    .line 82
    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/amazonaws/util/LengthCheckInputStream;->checkLength(Z)V

    .line 83
    return v0

    .line 82
    :cond_1
    const/4 v1, 0x0

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
    .line 95
    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/internal/SdkFilterInputStream;->read([BII)I

    move-result v0

    .line 96
    .local v0, "readLen":I
    iget-wide v4, p0, Lcom/amazonaws/util/LengthCheckInputStream;->dataLength:J

    if-ltz v0, :cond_0

    int-to-long v2, v0

    :goto_0
    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->dataLength:J

    .line 97
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, v1}, Lcom/amazonaws/util/LengthCheckInputStream;->checkLength(Z)V

    .line 98
    return v0

    .line 96
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 97
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->reset()V

    .line 110
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-wide v0, p0, Lcom/amazonaws/util/LengthCheckInputStream;->marked:J

    iput-wide v0, p0, Lcom/amazonaws/util/LengthCheckInputStream;->dataLength:J

    .line 113
    :cond_0
    return-void
.end method

.method public skip(J)J
    .locals 5
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-super {p0, p1, p2}, Lcom/amazonaws/internal/SdkFilterInputStream;->skip(J)J

    move-result-wide v0

    .line 145
    .local v0, "skipped":J
    iget-boolean v2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->includeSkipped:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 146
    iget-wide v2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->dataLength:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/amazonaws/util/LengthCheckInputStream;->dataLength:J

    .line 147
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/amazonaws/util/LengthCheckInputStream;->checkLength(Z)V

    .line 149
    :cond_0
    return-wide v0
.end method
