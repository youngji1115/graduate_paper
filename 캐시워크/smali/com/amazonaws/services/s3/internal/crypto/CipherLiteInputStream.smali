.class public final Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;
.source "CipherLiteInputStream.java"


# static fields
.field private static final DEFAULT_IN_BUFFER_SIZE:I = 0x200

.field private static final MAX_RETRY:I = 0x3e8


# instance fields
.field private bufin:[B

.field private bufout:[B

.field private final cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

.field private curr_pos:I

.field private eof:Z

.field private final lastMultiPart:Z

.field private max_pos:I

.field private final multipart:Z


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v4, 0x0

    .line 82
    sget-object v2, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->Null:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    const/16 v3, 0x200

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;IZZ)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;)V
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "cipherLite"    # Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    .prologue
    const/4 v4, 0x0

    .line 57
    const/16 v3, 0x200

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;IZZ)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;I)V
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "c"    # Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .param p3, "buffsize"    # I

    .prologue
    const/4 v4, 0x0

    .line 61
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;IZZ)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;IZZ)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "c"    # Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .param p3, "buffsize"    # I
    .param p4, "multipart"    # Z
    .param p5, "lastMultiPart"    # Z

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 50
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->eof:Z

    .line 53
    iput v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->curr_pos:I

    .line 54
    iput v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->max_pos:I

    .line 67
    if-eqz p5, :cond_0

    if-nez p4, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lastMultiPart can only be true if multipart is true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    iput-boolean p4, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->multipart:Z

    .line 71
    iput-boolean p5, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->lastMultiPart:Z

    .line 72
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    .line 73
    if-lez p3, :cond_1

    rem-int/lit16 v0, p3, 0x200

    if-eqz v0, :cond_2

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buffsize ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") must be a positive multiple of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_2
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->bufin:[B

    .line 79
    return-void
.end method

.method private nextChunk()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 213
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->abortIfNeeded()V

    .line 214
    iget-boolean v4, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->eof:Z

    if-eqz v4, :cond_0

    move v2, v3

    .line 242
    :goto_0
    return v2

    .line 216
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->bufout:[B

    .line 217
    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->bufin:[B

    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 218
    .local v1, "len":I
    if-ne v1, v3, :cond_4

    .line 219
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->eof:Z

    .line 221
    iget-boolean v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->multipart:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->lastMultiPart:Z

    if-eqz v2, :cond_3

    .line 223
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->doFinal()[B

    move-result-object v2

    iput-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->bufout:[B

    .line 224
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->bufout:[B

    if-nez v2, :cond_2

    move v2, v3

    .line 227
    goto :goto_0

    .line 229
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->curr_pos:I

    .line 230
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->bufout:[B

    array-length v2, v2

    iput v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->max_pos:I
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 231
    :catch_0
    move-exception v2

    :cond_3
    move v2, v3

    .line 238
    goto :goto_0

    .line 233
    :catch_1
    move-exception v0

    .line 234
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->getCipherAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->isAesGcm(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 235
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 240
    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    :cond_4
    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->bufin:[B

    invoke-virtual {v3, v4, v2, v1}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->update([BII)[B

    move-result-object v3

    iput-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->bufout:[B

    .line 241
    iput v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->curr_pos:I

    .line 242
    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->bufout:[B

    if-nez v3, :cond_5

    :goto_1
    iput v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->max_pos:I

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->bufout:[B

    array-length v2, v2

    goto :goto_1
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->abortIfNeeded()V

    .line 156
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->max_pos:I

    iget v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->curr_pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 165
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->multipart:Z

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->getCipherAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->isAesGcm(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->doFinal()[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->max_pos:I

    iput v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->curr_pos:I

    .line 176
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->abortIfNeeded()V

    .line 177
    return-void

    .line 171
    :catch_0
    move-exception v0

    goto :goto_0

    .line 170
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->abortIfNeeded()V

    .line 188
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 189
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->mark()J

    .line 190
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->abortIfNeeded()V

    .line 182
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 87
    iget v3, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->curr_pos:I

    iget v4, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->max_pos:I

    if-lt v3, v4, :cond_4

    .line 88
    iget-boolean v3, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->eof:Z

    if-eqz v3, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v2

    .line 90
    :cond_1
    const/4 v0, 0x0

    .line 93
    .local v0, "count":I
    :cond_2
    const/16 v3, 0x3e8

    if-le v0, v3, :cond_3

    .line 94
    new-instance v2, Ljava/io/IOException;

    const-string v3, "exceeded maximum number of attempts to read next chunk of data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :cond_3
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->nextChunk()I

    move-result v1

    .line 97
    .local v1, "len":I
    add-int/lit8 v0, v0, 0x1

    .line 98
    if-eqz v1, :cond_2

    .line 100
    if-eq v1, v2, :cond_0

    .line 103
    .end local v0    # "count":I
    .end local v1    # "len":I
    :cond_4
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->bufout:[B

    iget v3, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->curr_pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->curr_pos:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "target_len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 113
    iget v3, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->curr_pos:I

    iget v4, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->max_pos:I

    if-lt v3, v4, :cond_3

    .line 115
    iget-boolean v3, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->eof:Z

    if-eqz v3, :cond_0

    move v1, v2

    .line 138
    :goto_0
    return v1

    .line 117
    :cond_0
    const/4 v0, 0x0

    .line 120
    .local v0, "count":I
    :cond_1
    const/16 v3, 0x3e8

    if-le v0, v3, :cond_2

    .line 121
    new-instance v2, Ljava/io/IOException;

    const-string v3, "exceeded maximum number of attempts to read next chunk of data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    :cond_2
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->nextChunk()I

    move-result v1

    .line 124
    .local v1, "len":I
    add-int/lit8 v0, v0, 0x1

    .line 125
    if-eqz v1, :cond_1

    .line 127
    if-ne v1, v2, :cond_3

    move v1, v2

    .line 128
    goto :goto_0

    .line 130
    .end local v0    # "count":I
    .end local v1    # "len":I
    :cond_3
    if-gtz p3, :cond_4

    .line 131
    const/4 v1, 0x0

    goto :goto_0

    .line 132
    :cond_4
    iget v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->max_pos:I

    iget v3, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->curr_pos:I

    sub-int v1, v2, v3

    .line 133
    .restart local v1    # "len":I
    if-ge p3, v1, :cond_5

    .line 134
    move v1, p3

    .line 136
    :cond_5
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->bufout:[B

    iget v3, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->curr_pos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    iget v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->curr_pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->curr_pos:I

    goto :goto_0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 194
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->abortIfNeeded()V

    .line 195
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 196
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->reset()V

    .line 197
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iput v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->max_pos:I

    iput v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->curr_pos:I

    .line 199
    iput-boolean v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->eof:Z

    .line 201
    :cond_0
    return-void
.end method

.method public skip(J)J
    .locals 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 143
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->abortIfNeeded()V

    .line 144
    iget v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->max_pos:I

    iget v4, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->curr_pos:I

    sub-int v0, v1, v4

    .line 145
    .local v0, "available":I
    int-to-long v4, v0

    cmp-long v1, p1, v4

    if-lez v1, :cond_0

    .line 146
    int-to-long p1, v0

    .line 147
    :cond_0
    cmp-long v1, p1, v2

    if-gez v1, :cond_1

    move-wide p1, v2

    .line 150
    .end local p1    # "n":J
    :goto_0
    return-wide p1

    .line 149
    .restart local p1    # "n":J
    :cond_1
    iget v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->curr_pos:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    long-to-int v1, v2

    iput v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;->curr_pos:I

    goto :goto_0
.end method
