.class final Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;
.super Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
.source "GCMCipherLite.java"


# static fields
.field private static final TAG_LENGTH:I


# instance fields
.field private aux:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

.field private currentCount:J

.field private doneFinal:Z

.field private finalBytes:[B

.field private invisiblyProcessed:Z

.field private markedCount:J

.field private outputByteCount:J

.field private securityViolated:Z

.field private final tagLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->AES_GCM:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 34
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getTagLengthInBits()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    sput v0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->TAG_LENGTH:I

    .line 33
    return-void
.end method

.method constructor <init>(Ljavax/crypto/Cipher;Ljavax/crypto/SecretKey;I)V
    .locals 2
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .param p2, "secreteKey"    # Ljavax/crypto/SecretKey;
    .param p3, "cipherMode"    # I

    .prologue
    const/4 v1, 0x1

    .line 82
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->AES_GCM:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;-><init>(Ljavax/crypto/Cipher;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Ljavax/crypto/SecretKey;I)V

    .line 83
    if-ne p3, v1, :cond_0

    sget v0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->TAG_LENGTH:I

    :goto_0
    iput v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->tagLen:I

    .line 84
    if-eq p3, v1, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 88
    :cond_1
    return-void
.end method

.method private checkMax(I)I
    .locals 4
    .param p1, "delta"    # I

    .prologue
    .line 198
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->outputByteCount:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    const-wide v2, 0xfffffffe0L

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->securityViolated:Z

    .line 200
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of bytes processed has exceeded the maximum allowed by AES/GCM; [outputByteCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->outputByteCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", delta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    return p1
.end method

.method private final doFinal0([BII)[B
    .locals 6
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 121
    iget-boolean v3, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->doneFinal:Z

    if-eqz v3, :cond_6

    .line 122
    iget-boolean v3, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->securityViolated:Z

    if-eqz v3, :cond_0

    .line 123
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2}, Ljava/lang/SecurityException;-><init>()V

    throw v2

    .line 124
    :cond_0
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->getCipherMode()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 125
    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->finalBytes:[B

    if-nez v3, :cond_2

    .line 144
    :cond_1
    :goto_0
    return-object v2

    .line 125
    :cond_2
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->finalBytes:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    goto :goto_0

    .line 127
    :cond_3
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->finalBytes:[B

    array-length v2, v2

    iget v3, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->tagLen:I

    sub-int v0, v2, v3

    .line 128
    .local v0, "finalDataLen":I
    if-ne p3, v0, :cond_4

    .line 129
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->finalBytes:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    goto :goto_0

    .line 130
    :cond_4
    if-ge p3, v0, :cond_5

    .line 131
    int-to-long v2, p3

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->currentCount:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->outputByteCount:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 132
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->finalBytes:[B

    array-length v2, v2

    iget v3, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->tagLen:I

    sub-int/2addr v2, v3

    sub-int v1, v2, p3

    .line 133
    .local v1, "from":I
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->finalBytes:[B

    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->finalBytes:[B

    array-length v3, v3

    invoke-static {v2, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    goto :goto_0

    .line 136
    .end local v1    # "from":I
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Inconsistent re-rencryption"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    .end local v0    # "finalDataLen":I
    :cond_6
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->doneFinal:Z

    .line 140
    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->doFinal([BII)[B

    move-result-object v3

    iput-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->finalBytes:[B

    .line 141
    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->finalBytes:[B

    if-eqz v3, :cond_1

    .line 143
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->outputByteCount:J

    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->finalBytes:[B

    array-length v4, v4

    iget v5, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->tagLen:I

    sub-int/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->checkMax(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->outputByteCount:J

    .line 144
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->finalBytes:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    goto :goto_0
.end method


# virtual methods
.method doFinal()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 93
    iget-boolean v1, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->doneFinal:Z

    if-eqz v1, :cond_3

    .line 94
    iget-boolean v1, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->securityViolated:Z

    if-eqz v1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->finalBytes:[B

    if-nez v1, :cond_2

    .line 104
    :cond_1
    :goto_0
    return-object v0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->finalBytes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0

    .line 99
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->doneFinal:Z

    .line 100
    invoke-super {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->doFinal()[B

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->finalBytes:[B

    .line 101
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->finalBytes:[B

    if-eqz v1, :cond_1

    .line 103
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->outputByteCount:J

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->finalBytes:[B

    array-length v2, v2

    iget v3, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->tagLen:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->checkMax(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->outputByteCount:J

    .line 104
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->finalBytes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method final doFinal([B)[B
    .locals 2
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->doFinal0([BII)[B

    move-result-object v0

    return-object v0
.end method

.method final doFinal([BII)[B
    .locals 1
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->doFinal0([BII)[B

    move-result-object v0

    return-object v0
.end method

.method getCurrentCount()J
    .locals 2

    .prologue
    .line 262
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->currentCount:J

    return-wide v0
.end method

.method getFinalBytes()[B
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->finalBytes:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->finalBytes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method getMarkedCount()J
    .locals 2

    .prologue
    .line 269
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->markedCount:J

    return-wide v0
.end method

.method getOutputByteCount()J
    .locals 2

    .prologue
    .line 255
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->outputByteCount:J

    return-wide v0
.end method

.method getTag()[B
    .locals 3

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->getCipherMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->finalBytes:[B

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->finalBytes:[B

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->finalBytes:[B

    array-length v1, v1

    iget v2, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->tagLen:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->finalBytes:[B

    array-length v2, v2

    .line 247
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_0
.end method

.method mark()J
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->aux:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->outputByteCount:J

    :goto_0
    iput-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->markedCount:J

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->currentCount:J

    goto :goto_0
.end method

.method markSupported()Z
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method reset()V
    .locals 6

    .prologue
    .line 219
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->markedCount:J

    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->outputByteCount:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    iget-boolean v1, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->invisiblyProcessed:Z

    if-eqz v1, :cond_1

    .line 221
    :cond_0
    :try_start_0
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->markedCount:J

    invoke-virtual {p0, v2, v3}, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->createAuxiliary(J)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->aux:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    .line 224
    iget-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->markedCount:J

    iput-wide v2, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->currentCount:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_1
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    throw v0

    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method update([BII)[B
    .locals 12
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 155
    iget-object v7, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->aux:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    if-nez v7, :cond_4

    .line 156
    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->update([BII)[B

    move-result-object v3

    .line 157
    .local v3, "out":[B
    if-nez v3, :cond_1

    .line 158
    array-length v7, p1

    if-lez v7, :cond_0

    :goto_0
    iput-boolean v4, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->invisiblyProcessed:Z

    move-object v4, v6

    .line 187
    :goto_1
    return-object v4

    :cond_0
    move v4, v5

    .line 158
    goto :goto_0

    .line 161
    :cond_1
    iget-wide v6, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->outputByteCount:J

    array-length v8, v3

    invoke-direct {p0, v8}, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->checkMax(I)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->outputByteCount:J

    .line 165
    array-length v6, v3

    if-nez v6, :cond_3

    if-lez p3, :cond_3

    :goto_2
    iput-boolean v4, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->invisiblyProcessed:Z

    :cond_2
    :goto_3
    move-object v4, v3

    .line 187
    goto :goto_1

    :cond_3
    move v4, v5

    .line 165
    goto :goto_2

    .line 167
    .end local v3    # "out":[B
    :cond_4
    iget-object v7, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->aux:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v7, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->update([BII)[B

    move-result-object v3

    .line 168
    .restart local v3    # "out":[B
    if-nez v3, :cond_5

    move-object v4, v6

    .line 169
    goto :goto_1

    .line 170
    :cond_5
    iget-wide v8, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->currentCount:J

    array-length v7, v3

    int-to-long v10, v7

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->currentCount:J

    .line 171
    iget-wide v8, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->currentCount:J

    iget-wide v10, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->outputByteCount:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_6

    .line 172
    iput-object v6, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->aux:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    goto :goto_3

    .line 173
    :cond_6
    iget-wide v8, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->currentCount:J

    iget-wide v10, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->outputByteCount:J

    cmp-long v7, v8, v10

    if-lez v7, :cond_2

    .line 174
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->getCipherMode()I

    move-result v7

    if-ne v4, v7, :cond_7

    .line 175
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->currentCount:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > outputByteCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->outputByteCount:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 180
    :cond_7
    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->finalBytes:[B

    if-nez v4, :cond_8

    move v2, v5

    .line 181
    .local v2, "finalBytesLen":I
    :goto_4
    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->outputByteCount:J

    iget-wide v8, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->currentCount:J

    array-length v7, v3

    int-to-long v10, v7

    sub-long/2addr v8, v10

    sub-long/2addr v4, v8

    int-to-long v8, v2

    sub-long v0, v4, v8

    .line 182
    .local v0, "diff":J
    iget-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->outputByteCount:J

    int-to-long v8, v2

    sub-long/2addr v4, v8

    iput-wide v4, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->currentCount:J

    .line 183
    iput-object v6, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->aux:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    .line 184
    long-to-int v4, v0

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    goto/16 :goto_1

    .line 180
    .end local v0    # "diff":J
    .end local v2    # "finalBytesLen":I
    :cond_8
    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;->finalBytes:[B

    array-length v2, v4

    goto :goto_4
.end method
