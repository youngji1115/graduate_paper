.class final Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;
.super Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadContext;
.source "MultipartUploadCryptoContext.java"


# instance fields
.field private final cekMaterial:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "cekMaterial"    # Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadContext;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iput-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->cekMaterial:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    .line 25
    return-void
.end method


# virtual methods
.method getCipherLite()Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->cekMaterial:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->getCipherLite()Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object v0

    return-object v0
.end method

.method getContentCryptoMaterial()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->cekMaterial:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    return-object v0
.end method
