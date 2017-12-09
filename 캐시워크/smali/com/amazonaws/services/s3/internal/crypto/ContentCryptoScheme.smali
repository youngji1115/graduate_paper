.class abstract Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
.super Ljava/lang/Object;
.source "ContentCryptoScheme.java"


# static fields
.field static final AES_CBC:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

.field static final AES_CTR:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

.field static final AES_GCM:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

.field static final MAX_CBC_BYTES:J = 0x10000000000000L

.field static final MAX_CTR_BYTES:J = -0x1L

.field static final MAX_GCM_BLOCKS:J = 0xfffffffeL

.field static final MAX_GCM_BYTES:J = 0xfffffffe0L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/AesCbc;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/crypto/AesCbc;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->AES_CBC:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 78
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/AesGcm;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/crypto/AesGcm;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->AES_GCM:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 85
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/AesCtr;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/crypto/AesCtr;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->AES_CTR:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromCEKAlgo(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
    .locals 1
    .param p0, "cekAlgo"    # Ljava/lang/String;

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->fromCEKAlgo(Ljava/lang/String;Z)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object v0

    return-object v0
.end method

.method static fromCEKAlgo(Ljava/lang/String;Z)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
    .locals 3
    .param p0, "cekAlgo"    # Ljava/lang/String;
    .param p1, "isRangeGet"    # Z

    .prologue
    .line 168
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->AES_GCM:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getCipherAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    if-eqz p1, :cond_0

    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->AES_CTR:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 172
    :goto_0
    return-object v0

    .line 169
    :cond_0
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->AES_GCM:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    goto :goto_0

    .line 171
    :cond_1
    if-eqz p0, :cond_2

    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->AES_CBC:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getCipherAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    :cond_2
    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->AES_CBC:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    goto :goto_0

    .line 173
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported content encryption scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static incrementBlocks([BJ)[B
    .locals 13
    .param p0, "counter"    # [B
    .param p1, "blockDelta"    # J

    .prologue
    const-wide v10, 0xfffffffeL

    const/16 v8, 0xf

    .line 134
    const-wide/16 v6, 0x0

    cmp-long v3, p1, v6

    if-nez v3, :cond_1

    .line 156
    :cond_0
    return-object p0

    .line 136
    :cond_1
    if-eqz p0, :cond_2

    array-length v3, p0

    const/16 v6, 0x10

    if-eq v3, v6, :cond_3

    .line 137
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 139
    :cond_3
    cmp-long v3, p1, v10

    if-lez v3, :cond_4

    .line 140
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 142
    :cond_4
    const/16 v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 144
    .local v0, "bb":Ljava/nio/ByteBuffer;
    const/16 v1, 0xc

    .local v1, "i":I
    :goto_0
    if-gt v1, v8, :cond_5

    .line 145
    add-int/lit8 v3, v1, -0x8

    aget-byte v6, p0, v1

    invoke-virtual {v0, v3, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    :cond_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    add-long v4, v6, p1

    .line 147
    .local v4, "val":J
    cmp-long v3, v4, v10

    if-lez v3, :cond_6

    .line 148
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 149
    :cond_6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 151
    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 154
    .local v2, "result":[B
    const/16 v1, 0xc

    :goto_1
    if-gt v1, v8, :cond_0

    .line 155
    add-int/lit8 v3, v1, -0x8

    aget-byte v3, v2, v3

    aput-byte v3, p0, v1

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method adjustIV([BJ)[B
    .locals 0
    .param p1, "iv"    # [B
    .param p2, "startingBytePos"    # J

    .prologue
    .line 111
    return-object p1
.end method

.method createAuxillaryCipher(Ljavax/crypto/SecretKey;[BILjava/security/Provider;J)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .locals 1
    .param p1, "cek"    # Ljavax/crypto/SecretKey;
    .param p2, "iv"    # [B
    .param p3, "cipherMode"    # I
    .param p4, "securityProvider"    # Ljava/security/Provider;
    .param p5, "startingBytePos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 228
    const/4 v0, 0x0

    return-object v0
.end method

.method createCipherLite(Ljavax/crypto/SecretKey;[BI)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .locals 1
    .param p1, "cek"    # Ljavax/crypto/SecretKey;
    .param p2, "iv"    # [B
    .param p3, "cipherMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->createCipherLite(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object v0

    return-object v0
.end method

.method createCipherLite(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .locals 6
    .param p1, "cek"    # Ljavax/crypto/SecretKey;
    .param p2, "iv"    # [B
    .param p3, "cipherMode"    # I
    .param p4, "securityProvider"    # Ljava/security/Provider;

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getSpecificCipherProvider()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "specificProvider":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 195
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getCipherAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 202
    .local v0, "cipher":Ljavax/crypto/Cipher;
    :goto_0
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, p3, p1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 203
    invoke-virtual {p0, v0, p1, p3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->newCipherLite(Ljavax/crypto/Cipher;Ljavax/crypto/SecretKey;I)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object v3

    return-object v3

    .line 196
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :cond_0
    if-eqz p4, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getCipherAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    .restart local v0    # "cipher":Ljavax/crypto/Cipher;
    goto :goto_0

    .line 200
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getCipherAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0    # "cipher":Ljavax/crypto/Cipher;
    goto :goto_0

    .line 204
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/lang/Exception;
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_2

    check-cast v1, Ljava/lang/RuntimeException;

    .line 209
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    throw v1

    .line 205
    .restart local v1    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v3, Lcom/amazonaws/AmazonClientException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to build cipher: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 209
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nMake sure you have the JCE unlimited strength policy files installed and configured for your JVM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v3

    goto :goto_1
.end method

.method abstract getBlockSizeInBytes()I
.end method

.method abstract getCipherAlgorithm()Ljava/lang/String;
.end method

.method abstract getIVLengthInBytes()I
.end method

.method abstract getKeyGeneratorAlgorithm()Ljava/lang/String;
.end method

.method abstract getKeyLengthInBits()I
.end method

.method abstract getMaxPlaintextSize()J
.end method

.method getSpecificCipherProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method getTagLengthInBits()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method protected newCipherLite(Ljavax/crypto/Cipher;Ljavax/crypto/SecretKey;I)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .locals 1
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .param p2, "cek"    # Ljavax/crypto/SecretKey;
    .param p3, "cipherMode"    # I

    .prologue
    .line 221
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;-><init>(Ljavax/crypto/Cipher;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Ljavax/crypto/SecretKey;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cipherAlgo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getCipherAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", blockSizeInBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getBlockSizeInBytes()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ivLengthInBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getIVLengthInBytes()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyGenAlgo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getKeyGeneratorAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyLengthInBits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 120
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getKeyLengthInBits()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", specificProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 121
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getSpecificCipherProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tagLengthInBits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 122
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getTagLengthInBits()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    return-object v0
.end method
