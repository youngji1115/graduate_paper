.class public Lcom/amazonaws/services/s3/internal/DigestValidationInputStream;
.super Lcom/amazonaws/internal/SdkDigestInputStream;
.source "DigestValidationInputStream.java"


# instance fields
.field private digestValidated:Z

.field private expectedHash:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/security/MessageDigest;[B)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "digest"    # Ljava/security/MessageDigest;
    .param p3, "serverSideHash"    # [B

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/amazonaws/internal/SdkDigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/DigestValidationInputStream;->digestValidated:Z

    .line 40
    iput-object p3, p0, Lcom/amazonaws/services/s3/internal/DigestValidationInputStream;->expectedHash:[B

    .line 41
    return-void
.end method

.method private validateMD5Digest()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/DigestValidationInputStream;->expectedHash:[B

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/DigestValidationInputStream;->digestValidated:Z

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/internal/DigestValidationInputStream;->digestValidated:Z

    .line 79
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/DigestValidationInputStream;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/DigestValidationInputStream;->expectedHash:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Unable to verify integrity of data download.  Client calculated content hash didn\'t match hash calculated by Amazon S3.  The data may be corrupt."

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method public getMD5Checksum()[B
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/DigestValidationInputStream;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-super {p0}, Lcom/amazonaws/internal/SdkDigestInputStream;->read()I

    move-result v0

    .line 49
    .local v0, "ch":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/DigestValidationInputStream;->validateMD5Digest()V

    .line 52
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/internal/SdkDigestInputStream;->read([BII)I

    move-result v0

    .line 61
    .local v0, "result":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/DigestValidationInputStream;->validateMD5Digest()V

    .line 64
    :cond_0
    return v0
.end method
