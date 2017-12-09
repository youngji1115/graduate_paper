.class Lcom/amazonaws/services/s3/internal/crypto/AesCtr;
.super Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
.source "AesCtr.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;-><init>()V

    return-void
.end method

.method private computeJ0([B)[B
    .locals 4
    .param p1, "nonce"    # [B

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/AesCtr;->getBlockSizeInBytes()I

    move-result v1

    .line 79
    .local v1, "blockSize":I
    new-array v0, v1, [B

    .line 80
    .local v0, "J0":[B
    array-length v2, p1

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x1

    aput-byte v3, v0, v2

    .line 82
    const-wide/16 v2, 0x1

    invoke-static {v0, v2, v3}, Lcom/amazonaws/services/s3/internal/crypto/AesCtr;->incrementBlocks([BJ)[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method adjustIV([BJ)[B
    .locals 8
    .param p1, "iv"    # [B
    .param p2, "byteOffset"    # J

    .prologue
    .line 53
    array-length v4, p1

    const/16 v5, 0xc

    if-eq v4, v5, :cond_0

    .line 54
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/AesCtr;->getBlockSizeInBytes()I

    move-result v1

    .line 56
    .local v1, "blockSize":I
    int-to-long v4, v1

    div-long v2, p2, v4

    .line 57
    .local v2, "blockOffset":J
    int-to-long v4, v1

    mul-long/2addr v4, v2

    cmp-long v4, v4, p2

    if-eqz v4, :cond_1

    .line 58
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expecting byteOffset to be multiple of 16, but got blockOffset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", blockSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", byteOffset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 63
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/AesCtr;->computeJ0([B)[B

    move-result-object v0

    .line 64
    .local v0, "J0":[B
    invoke-static {v0, v2, v3}, Lcom/amazonaws/services/s3/internal/crypto/AesCtr;->incrementBlocks([BJ)[B

    move-result-object v4

    return-object v4
.end method

.method getBlockSizeInBytes()I
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/AesCtr;->AES_GCM:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getBlockSizeInBytes()I

    move-result v0

    return v0
.end method

.method getCipherAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "AES/CTR/NoPadding"

    return-object v0
.end method

.method getIVLengthInBytes()I
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x10

    return v0
.end method

.method getKeyGeneratorAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/AesCtr;->AES_GCM:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getKeyGeneratorAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getKeyLengthInBits()I
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/AesCtr;->AES_GCM:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getKeyLengthInBits()I

    move-result v0

    return v0
.end method

.method getMaxPlaintextSize()J
    .locals 2

    .prologue
    .line 46
    const-wide/16 v0, -0x1

    return-wide v0
.end method
