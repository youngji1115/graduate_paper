.class public Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;
.super Ljava/lang/Object;
.source "CipherFactory.java"


# instance fields
.field private final cipherMode:I

.field private final cryptoProvider:Ljava/security/Provider;

.field private initVectorBytes:[B

.field private final symmetricKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;I[BLjava/security/Provider;)V
    .locals 0
    .param p1, "symmetricKey"    # Ljavax/crypto/SecretKey;
    .param p2, "cipherMode"    # I
    .param p3, "initVectorBytes"    # [B
    .param p4, "cryptoProvider"    # Ljava/security/Provider;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->symmetricKey:Ljavax/crypto/SecretKey;

    .line 52
    iput p2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->cipherMode:I

    .line 53
    iput-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->initVectorBytes:[B

    .line 54
    iput-object p4, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->cryptoProvider:Ljava/security/Provider;

    .line 55
    return-void
.end method


# virtual methods
.method public createCipher()Ljavax/crypto/Cipher;
    .locals 5

    .prologue
    .line 66
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->symmetricKey:Ljavax/crypto/SecretKey;

    iget v2, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->cipherMode:I

    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->cryptoProvider:Ljava/security/Provider;

    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->initVectorBytes:[B

    invoke-static {v1, v2, v3, v4}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->createSymmetricCipher(Ljavax/crypto/SecretKey;ILjava/security/Provider;[B)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 73
    .local v0, "cipher":Ljavax/crypto/Cipher;
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->initVectorBytes:[B

    if-nez v1, :cond_0

    .line 74
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->initVectorBytes:[B

    .line 76
    :cond_0
    return-object v0
.end method

.method public getCipherMode()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->cipherMode:I

    return v0
.end method

.method public getCryptoProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->cryptoProvider:Ljava/security/Provider;

    return-object v0
.end method

.method public getIV()[B
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->initVectorBytes:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->initVectorBytes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method
