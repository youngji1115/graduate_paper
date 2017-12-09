.class public Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;
.super Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadContext;
.source "EncryptedUploadContext.java"


# instance fields
.field private final envelopeEncryptionKey:Ljavax/crypto/SecretKey;

.field private firstIV:[B

.field private nextIV:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljavax/crypto/SecretKey;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "envelopeEncryptionKey"    # Ljavax/crypto/SecretKey;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadContext;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iput-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->envelopeEncryptionKey:Ljavax/crypto/SecretKey;

    .line 35
    return-void
.end method


# virtual methods
.method public getEnvelopeEncryptionKey()Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->envelopeEncryptionKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getFirstInitializationVector()[B
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->firstIV:[B

    return-object v0
.end method

.method public getNextInitializationVector()[B
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->nextIV:[B

    return-object v0
.end method

.method public setFirstInitializationVector([B)V
    .locals 0
    .param p1, "firstIV"    # [B

    .prologue
    .line 50
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->firstIV:[B

    .line 51
    return-void
.end method

.method public setNextInitializationVector([B)V
    .locals 0
    .param p1, "nextIV"    # [B

    .prologue
    .line 42
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->nextIV:[B

    .line 43
    return-void
.end method
