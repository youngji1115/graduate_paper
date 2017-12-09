.class public Lcom/amazonaws/services/s3/model/SSECustomerKey;
.super Ljava/lang/Object;
.source "SSECustomerKey.java"


# instance fields
.field private algorithm:Ljava/lang/String;

.field private final base64EncodedKey:Ljava/lang/String;

.field private base64EncodedMd5:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "base64EncodedKey"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Encryption key must be specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    const-string v0, "AES256"

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->algorithm:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->base64EncodedKey:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .locals 2
    .param p1, "key"    # Ljavax/crypto/SecretKey;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Encryption key must be specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    const-string v0, "AES256"

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->algorithm:Ljava/lang/String;

    .line 96
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->base64EncodedKey:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "rawKeyMaterial"    # [B

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Encryption key must be specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    const-string v0, "AES256"

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->algorithm:Ljava/lang/String;

    .line 78
    invoke-static {p1}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->base64EncodedKey:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->base64EncodedKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->base64EncodedMd5:Ljava/lang/String;

    return-object v0
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->algorithm:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0
    .param p1, "md5Digest"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/SSECustomerKey;->base64EncodedMd5:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public withAlgorithm(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->setAlgorithm(Ljava/lang/String;)V

    .line 148
    return-object p0
.end method

.method public withMd5(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/SSECustomerKey;
    .locals 0
    .param p1, "md5Digest"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->setMd5(Ljava/lang/String;)V

    .line 193
    return-object p0
.end method
