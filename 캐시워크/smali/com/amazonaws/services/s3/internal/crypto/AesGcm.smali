.class Lcom/amazonaws/services/s3/internal/crypto/AesGcm;
.super Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
.source "AesGcm.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;-><init>()V

    return-void
.end method


# virtual methods
.method createAuxillaryCipher(Ljavax/crypto/SecretKey;[BILjava/security/Provider;J)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .locals 3
    .param p1, "cek"    # Ljavax/crypto/SecretKey;
    .param p2, "ivOrig"    # [B
    .param p3, "cipherMode"    # I
    .param p4, "securityProvider"    # Ljava/security/Provider;
    .param p5, "startingBytePos"    # J
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
    .line 83
    sget-object v1, Lcom/amazonaws/services/s3/internal/crypto/AesGcm;->AES_CTR:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v1, p2, p5, p6}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->adjustIV([BJ)[B

    move-result-object v0

    .line 84
    .local v0, "iv":[B
    sget-object v1, Lcom/amazonaws/services/s3/internal/crypto/AesGcm;->AES_CTR:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v1, p1, v0, p3, p4}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->createCipherLite(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object v1

    return-object v1
.end method

.method getBlockSizeInBytes()I
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0x10

    return v0
.end method

.method getCipherAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "AES/GCM/NoPadding"

    return-object v0
.end method

.method getIVLengthInBytes()I
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0xc

    return v0
.end method

.method getKeyGeneratorAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "AES"

    return-object v0
.end method

.method getKeyLengthInBits()I
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x100

    return v0
.end method

.method getMaxPlaintextSize()J
    .locals 2

    .prologue
    .line 56
    const-wide v0, 0xfffffffe0L

    return-wide v0
.end method

.method getSpecificCipherProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "BC"

    return-object v0
.end method

.method getTagLengthInBits()I
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0x80

    return v0
.end method

.method protected newCipherLite(Ljavax/crypto/Cipher;Ljavax/crypto/SecretKey;I)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .locals 1
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .param p2, "cek"    # Ljavax/crypto/SecretKey;
    .param p3, "cipherMode"    # I

    .prologue
    .line 89
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/GCMCipherLite;-><init>(Ljavax/crypto/Cipher;Ljavax/crypto/SecretKey;I)V

    return-object v0
.end method
