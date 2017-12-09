.class Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
.super Ljava/lang/Object;
.source "CipherLite.java"


# static fields
.field static final Null:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;

.field private final cipherMode:I

.field private final scheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

.field private final secreteKey:Ljavax/crypto/SecretKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite$1;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite$1;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->Null:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljavax/crypto/NullCipher;

    invoke-direct {v0}, Ljavax/crypto/NullCipher;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    .line 71
    iput-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->scheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 72
    iput-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->secreteKey:Ljavax/crypto/SecretKey;

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipherMode:I

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Lcom/amazonaws/services/s3/internal/crypto/CipherLite$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/amazonaws/services/s3/internal/crypto/CipherLite$1;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;-><init>()V

    return-void
.end method

.method constructor <init>(Ljavax/crypto/Cipher;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;Ljavax/crypto/SecretKey;I)V
    .locals 0
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .param p2, "scheme"    # Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
    .param p3, "secreteKey"    # Ljavax/crypto/SecretKey;
    .param p4, "cipherMode"    # I

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    .line 79
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->scheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 80
    iput-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->secreteKey:Ljavax/crypto/SecretKey;

    .line 81
    iput p4, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipherMode:I

    .line 82
    return-void
.end method


# virtual methods
.method createAuxiliary(J)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .locals 9
    .param p1, "startingBytePos"    # J
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
    .line 95
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->scheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->secreteKey:Ljavax/crypto/SecretKey;

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v3

    iget v4, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipherMode:I

    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    .line 96
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v5

    move-wide v6, p1

    .line 95
    invoke-virtual/range {v1 .. v7}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->createAuxillaryCipher(Ljavax/crypto/SecretKey;[BILjava/security/Provider;J)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object v0

    return-object v0
.end method

.method createInverse()Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .locals 5
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
    .line 106
    iget v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipherMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 107
    const/4 v0, 0x1

    .line 112
    .local v0, "inversedMode":I
    :goto_0
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->scheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->secreteKey:Ljavax/crypto/SecretKey;

    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    .line 113
    invoke-virtual {v4}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v4

    .line 112
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->createCipherLite(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object v1

    return-object v1

    .line 108
    .end local v0    # "inversedMode":I
    :cond_0
    iget v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipherMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 109
    const/4 v0, 0x2

    .restart local v0    # "inversedMode":I
    goto :goto_0

    .line 111
    .end local v0    # "inversedMode":I
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method doFinal()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v0

    return-object v0
.end method

.method doFinal([B)[B
    .locals 1
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method doFinal([BII)[B
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
    .line 226
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    return-object v0
.end method

.method final getBlockSize()I
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method final getCipher()Ljavax/crypto/Cipher;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method final getCipherAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getCipherMode()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipherMode:I

    return v0
.end method

.method final getCipherProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v0

    return-object v0
.end method

.method final getContentCryptoScheme()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->scheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    return-object v0
.end method

.method final getIV()[B
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v0

    return-object v0
.end method

.method getOutputSize(I)I
    .locals 1
    .param p1, "inputLen"    # I

    .prologue
    .line 374
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v0

    return v0
.end method

.method final getSecretKeyAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->secreteKey:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method mark()J
    .locals 2

    .prologue
    .line 347
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method markSupported()Z
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method reset()V
    .locals 2

    .prologue
    .line 370
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method update([BII)[B
    .locals 1
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v0

    return-object v0
.end method
