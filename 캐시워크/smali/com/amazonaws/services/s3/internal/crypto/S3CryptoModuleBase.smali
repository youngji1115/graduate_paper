.class public abstract Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;
.super Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;
.source "S3CryptoModuleBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase$SecuredCEK;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadContext;",
        ">",
        "Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule",
        "<TT;>;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_BUFFER_SIZE:I = 0x800


# instance fields
.field protected final contentCryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

.field protected final cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

.field protected final cryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

.field protected final kekMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

.field protected final log:Lorg/apache/commons/logging/Log;

.field protected final multipartUploadContexts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final s3:Lcom/amazonaws/services/s3/internal/S3Direct;


# direct methods
.method protected constructor <init>(Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;)V
    .locals 1
    .param p1, "s3"    # Lcom/amazonaws/services/s3/internal/S3Direct;
    .param p2, "credentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;
    .param p3, "kekMaterialsProvider"    # Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;
    .param p4, "clientConfig"    # Lcom/amazonaws/ClientConfiguration;
    .param p5, "cryptoConfig"    # Lcom/amazonaws/services/s3/model/CryptoConfiguration;
    .param p6, "cryptoScheme"    # Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    .prologue
    .line 80
    .local p0, "this":Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;, "Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase<TT;>;"
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModule;-><init>()V

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->log:Lorg/apache/commons/logging/Log;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 72
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->multipartUploadContexts:Ljava/util/Map;

    .line 81
    iput-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->kekMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    .line 82
    iput-object p5, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 83
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    .line 84
    iput-object p6, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    .line 85
    invoke-virtual {p6}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->getContentCryptoScheme()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->contentCryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 86
    return-void
.end method

.method private buildContentCryptoMaterial(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .locals 9
    .param p1, "kekMaterials"    # Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .param p2, "provider"    # Ljava/security/Provider;

    .prologue
    .line 153
    .local p0, "this":Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;, "Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->generateCEK(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 155
    .local v0, "cek":Ljavax/crypto/SecretKey;
    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->contentCryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getIVLengthInBytes()I

    move-result v3

    new-array v2, v3, [B

    .line 156
    .local v2, "iv":[B
    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 158
    invoke-virtual {p0, v0, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->secureCEK(Ljavax/crypto/SecretKey;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase$SecuredCEK;

    move-result-object v1

    .line 160
    .local v1, "cekSecured":Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase$SecuredCEK;
    new-instance v3, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    .line 161
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getMaterialsDescription()Ljava/util/Map;

    move-result-object v4

    iget-object v5, v1, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase$SecuredCEK;->encrypted:[B

    iget-object v6, v1, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase$SecuredCEK;->keyWrapAlgorithm:Ljava/lang/String;

    iget-object v7, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->contentCryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    const/4 v8, 0x1

    .line 165
    invoke-virtual {v7, v0, v2, v8, p2}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->createCipherLite(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;-><init>(Ljava/util/Map;[BLjava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;)V

    .line 160
    return-object v3
.end method

.method private newContentCryptoMaterial(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .locals 2
    .param p1, "kekMaterialProvider"    # Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;
    .param p2, "provider"    # Ljava/security/Provider;

    .prologue
    .line 145
    .local p0, "this":Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;, "Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase<TT;>;"
    invoke-interface {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;->getEncryptionMaterials()Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v0

    .line 146
    .local v0, "kekMaterials":Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    invoke-direct {p0, v0, p2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->buildContentCryptoMaterial(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v1

    return-object v1
.end method

.method private newContentCryptoMaterial(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/util/Map;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .locals 2
    .param p1, "kekMaterialProvider"    # Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;
    .param p3, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/security/Provider;",
            ")",
            "Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;"
        }
    .end annotation

    .prologue
    .line 133
    .line 134
    .local p0, "this":Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;, "Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase<TT;>;"
    .local p2, "materialsDescription":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1, p2}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;->getEncryptionMaterials(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v0

    .line 135
    .local v0, "kekMaterials":Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    invoke-direct {p0, v0, p3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->buildContentCryptoMaterial(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v1

    return-object v1
.end method

.method private newS3CipherLiteInputStream(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;J)Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;
    .locals 7
    .param p1, "req"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .param p2, "cekMaterial"    # Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .param p3, "plaintextLength"    # J

    .prologue
    .line 320
    .local p0, "this":Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;, "Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase<TT;>;"
    :try_start_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 321
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 322
    new-instance v1, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;

    .end local v1    # "is":Ljava/io/InputStream;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;-><init>(Ljava/io/File;)V

    .restart local v1    # "is":Ljava/io/InputStream;
    move-object v2, v1

    .line 323
    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    :goto_0
    const-wide/16 v4, -0x1

    cmp-long v3, p3, v4

    if-lez v3, :cond_0

    .line 330
    new-instance v1, Lcom/amazonaws/util/LengthCheckInputStream;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p3, p4, v3}, Lcom/amazonaws/util/LengthCheckInputStream;-><init>(Ljava/io/InputStream;JZ)V

    .line 333
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :goto_1
    new-instance v3, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;

    .line 334
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->getCipherLite()Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object v4

    const/16 v5, 0x800

    invoke-direct {v3, v1, v4, v5}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    return-object v3

    .line 336
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/amazonaws/AmazonClientException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create cipher input stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 338
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "is":Ljava/io/InputStream;
    :cond_0
    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_1

    :cond_1
    move-object v2, v1

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_0
.end method


# virtual methods
.method public final abortMultipartUploadSecurely(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V
    .locals 2
    .param p1, "req"    # Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;

    .prologue
    .line 100
    .local p0, "this":Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;, "Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase<TT;>;"
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/internal/S3Direct;->abortMultipartUpload(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V

    .line 101
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->multipartUploadContexts:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method

.method final appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 1
    .param p2, "userAgent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(TX;",
            "Ljava/lang/String;",
            ")TX;"
        }
    .end annotation

    .prologue
    .line 408
    .local p0, "this":Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;, "Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase<TT;>;"
    .local p1, "request":Lcom/amazonaws/AmazonWebServiceRequest;, "TX;"
    invoke-virtual {p1}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amazonaws/RequestClientOptions;->appendUserAgent(Ljava/lang/String;)V

    .line 409
    return-object p1
.end method

.method protected abstract ciphertextLength(J)J
.end method

.method protected final createContentCryptoMaterial(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .locals 3
    .param p1, "req"    # Lcom/amazonaws/AmazonWebServiceRequest;

    .prologue
    .line 116
    .local p0, "this":Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;, "Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase<TT;>;"
    instance-of v0, p1, Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->kekMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    check-cast p1, Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;

    .line 118
    .end local p1    # "req":Lcom/amazonaws/AmazonWebServiceRequest;
    invoke-interface {p1}, Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;->getMaterialsDescription()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 119
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v2

    .line 117
    invoke-direct {p0, v0, v1, v2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->newContentCryptoMaterial(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/util/Map;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    .restart local p1    # "req":Lcom/amazonaws/AmazonWebServiceRequest;
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->kekMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 122
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v1

    .line 121
    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->newContentCryptoMaterial(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v0

    goto :goto_0
.end method

.method protected final createInstructionPutRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "cekMaterial"    # Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    .prologue
    .line 393
    .local p0, "this":Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;, "Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase<TT;>;"
    invoke-virtual {p3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->toJsonString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 394
    .local v0, "bytes":[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 395
    .local v1, "is":Ljava/io/InputStream;
    new-instance v2, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 396
    .local v2, "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    array-length v3, v0

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentLength(J)V

    .line 397
    const-string/jumbo v3, "x-amz-crypto-instr-file"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    new-instance v3, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".instruction"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4, v1, v2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    return-object v3
.end method

.method protected final generateCEK(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Ljavax/crypto/SecretKey;
    .locals 13
    .param p1, "kekMaterials"    # Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .param p2, "providerIn"    # Ljava/security/Provider;

    .prologue
    .line 172
    .local p0, "this":Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;, "Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase<TT;>;"
    iget-object v10, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->contentCryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    .line 173
    invoke-virtual {v10}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getKeyGeneratorAlgorithm()Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, "keygenAlgo":Ljava/lang/String;
    if-nez p2, :cond_2

    .line 177
    :try_start_0
    invoke-static {v5}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 179
    .local v1, "generator":Ljavax/crypto/KeyGenerator;
    :goto_0
    iget-object v10, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->contentCryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v10}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getKeyLengthInBits()I

    move-result v10

    iget-object v11, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    .line 180
    invoke-virtual {v11}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v11

    .line 179
    invoke-virtual {v1, v10, v11}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 182
    const/4 v2, 0x0

    .line 183
    .local v2, "involvesBcPublicKey":Z
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getKeyPair()Ljava/security/KeyPair;

    move-result-object v3

    .line 184
    .local v3, "keyPair":Ljava/security/KeyPair;
    if-eqz v3, :cond_0

    .line 185
    iget-object v10, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    .line 186
    invoke-virtual {v10}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->getKeyWrapScheme()Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    move-result-object v10

    .line 187
    invoke-virtual {v3}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;->getKeyWrapAlgorithm(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, "keyWrapAlgo":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 189
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->getProvider()Ljava/security/Provider;

    move-result-object v6

    .line 190
    .local v6, "provider":Ljava/security/Provider;
    if-nez v6, :cond_3

    const/4 v7, 0x0

    .line 193
    .local v7, "providerName":Ljava/lang/String;
    :goto_1
    const-string v10, "BC"

    .line 194
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 197
    .end local v4    # "keyWrapAlgo":Ljava/lang/String;
    .end local v6    # "provider":Ljava/security/Provider;
    .end local v7    # "providerName":Ljava/lang/String;
    :cond_0
    if-nez v2, :cond_4

    .line 198
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v9

    .line 205
    :cond_1
    return-object v9

    .line 178
    .end local v1    # "generator":Ljavax/crypto/KeyGenerator;
    .end local v2    # "involvesBcPublicKey":Z
    .end local v3    # "keyPair":Ljava/security/KeyPair;
    :cond_2
    invoke-static {v5, p2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    goto :goto_0

    .line 192
    .restart local v1    # "generator":Ljavax/crypto/KeyGenerator;
    .restart local v2    # "involvesBcPublicKey":Z
    .restart local v3    # "keyPair":Ljava/security/KeyPair;
    .restart local v4    # "keyWrapAlgo":Ljava/lang/String;
    .restart local v6    # "provider":Ljava/security/Provider;
    :cond_3
    invoke-virtual {v6}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 200
    .end local v4    # "keyWrapAlgo":Ljava/lang/String;
    .end local v6    # "provider":Ljava/security/Provider;
    :cond_4
    const/4 v8, 0x0

    .local v8, "retry":I
    :goto_2
    const/16 v10, 0xa

    if-ge v8, v10, :cond_5

    .line 203
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v9

    .line 204
    .local v9, "secretKey":Ljavax/crypto/SecretKey;
    invoke-interface {v9}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v10

    const/4 v11, 0x0

    aget-byte v10, v10, v11

    if-nez v10, :cond_1

    .line 200
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 209
    .end local v9    # "secretKey":Ljavax/crypto/SecretKey;
    :cond_5
    new-instance v10, Lcom/amazonaws/AmazonClientException;

    const-string v11, "Failed to generate secret key"

    invoke-direct {v10, v11}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v1    # "generator":Ljavax/crypto/KeyGenerator;
    .end local v2    # "involvesBcPublicKey":Z
    .end local v3    # "keyPair":Ljava/security/KeyPair;
    .end local v8    # "retry":I
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v10, Lcom/amazonaws/AmazonClientException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to generate envelope symmetric key:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 215
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
.end method

.method public final getS3CryptoScheme()Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;
    .locals 1

    .prologue
    .line 359
    .local p0, "this":Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;, "Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase<TT;>;"
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    return-object v0
.end method

.method protected final plaintextLength(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/model/ObjectMetadata;)J
    .locals 2
    .param p1, "request"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .param p2, "metadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .prologue
    .line 349
    .local p0, "this":Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;, "Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase<TT;>;"
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 355
    :goto_0
    return-wide v0

    .line 351
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "Content-Length"

    .line 352
    invoke-virtual {p2, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getRawMetadataValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 353
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentLength()J

    move-result-wide v0

    goto :goto_0

    .line 355
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method protected final secureCEK(Ljavax/crypto/SecretKey;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase$SecuredCEK;
    .locals 10
    .param p1, "toBeEncrypted"    # Ljavax/crypto/SecretKey;
    .param p2, "materials"    # Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .param p3, "cryptoProvider"    # Ljava/security/Provider;

    .prologue
    .line 223
    .local p0, "this":Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;, "Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase<TT;>;"
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getKeyPair()Ljava/security/KeyPair;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 225
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getKeyPair()Ljava/security/KeyPair;

    move-result-object v7

    invoke-virtual {v7}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    .line 230
    .local v3, "kek":Ljava/security/Key;
    :goto_0
    iget-object v7, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    invoke-virtual {v7}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->getKeyWrapScheme()Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;

    move-result-object v5

    .line 231
    .local v5, "kwScheme":Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;
    invoke-virtual {v5, v3}, Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;->getKeyWrapAlgorithm(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v4

    .line 233
    .local v4, "keyWrapAlgo":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 234
    if-nez p3, :cond_1

    .line 235
    :try_start_0
    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 237
    .local v1, "cipher":Ljavax/crypto/Cipher;
    :goto_1
    const/4 v7, 0x3

    iget-object v8, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->cryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    invoke-virtual {v8}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v8

    invoke-virtual {v1, v7, v3, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 238
    new-instance v7, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase$SecuredCEK;

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v8

    invoke-direct {v7, v8, v4}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase$SecuredCEK;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_2
    return-object v7

    .line 228
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "kek":Ljava/security/Key;
    .end local v4    # "keyWrapAlgo":Ljava/lang/String;
    .end local v5    # "kwScheme":Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;
    :cond_0
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getSymmetricKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    .restart local v3    # "kek":Ljava/security/Key;
    goto :goto_0

    .line 236
    .restart local v4    # "keyWrapAlgo":Ljava/lang/String;
    .restart local v5    # "kwScheme":Lcom/amazonaws/services/s3/internal/crypto/S3KeyWrapScheme;
    :cond_1
    :try_start_1
    invoke-static {v4, p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v1

    goto :goto_1

    .line 242
    :cond_2
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v6

    .line 243
    .local v6, "toBeEncryptedBytes":[B
    invoke-interface {v3}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "algo":Ljava/lang/String;
    if-eqz p3, :cond_3

    .line 245
    invoke-static {v0, p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 249
    .restart local v1    # "cipher":Ljavax/crypto/Cipher;
    :goto_3
    const/4 v7, 0x1

    invoke-virtual {v1, v7, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 250
    new-instance v7, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase$SecuredCEK;

    invoke-virtual {v1, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase$SecuredCEK;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 251
    .end local v0    # "algo":Ljava/lang/String;
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v6    # "toBeEncryptedBytes":[B
    :catch_0
    move-exception v2

    .line 252
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Lcom/amazonaws/AmazonClientException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to encrypt symmetric key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 247
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "algo":Ljava/lang/String;
    .restart local v6    # "toBeEncryptedBytes":[B
    :cond_3
    :try_start_2
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .restart local v1    # "cipher":Ljavax/crypto/Cipher;
    goto :goto_3
.end method

.method protected final upateInstructionPutRequest(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 6
    .param p1, "request"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .param p2, "cekMaterial"    # Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    .prologue
    .line 372
    .local p0, "this":Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;, "Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase<TT;>;"
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->toJsonString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 373
    .local v0, "bytes":[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 374
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v2

    .line 375
    .local v2, "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    if-nez v2, :cond_0

    .line 376
    new-instance v2, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .end local v2    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 377
    .restart local v2    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    invoke-virtual {p1, v2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 380
    :cond_0
    array-length v3, v0

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentLength(J)V

    .line 382
    const-string/jumbo v3, "x-amz-crypto-instr-file"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".instruction"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setKey(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p1, v2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 386
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setInputStream(Ljava/io/InputStream;)V

    .line 387
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setFile(Ljava/io/File;)V

    .line 388
    return-object p1
.end method

.method protected final updateMetadataWithContentCryptoMaterial(Lcom/amazonaws/services/s3/model/ObjectMetadata;Ljava/io/File;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 2
    .param p1, "metadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "instruction"    # Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    .prologue
    .line 106
    .local p0, "this":Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;, "Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase<TT;>;"
    if-nez p1, :cond_0

    .line 107
    new-instance p1, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .end local p1    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    invoke-direct {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 108
    .restart local p1    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :cond_0
    if-eqz p2, :cond_1

    .line 109
    invoke-static {}, Lcom/amazonaws/services/s3/util/Mimetypes;->getInstance()Lcom/amazonaws/services/s3/util/Mimetypes;

    move-result-object v0

    .line 110
    .local v0, "mimetypes":Lcom/amazonaws/services/s3/util/Mimetypes;
    invoke-virtual {v0, p2}, Lcom/amazonaws/services/s3/util/Mimetypes;->getMimetype(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 112
    .end local v0    # "mimetypes":Lcom/amazonaws/services/s3/util/Mimetypes;
    :cond_1
    invoke-virtual {p3, p1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->toObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v1

    return-object v1
.end method

.method protected final wrapWithCipher(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 7
    .param p1, "request"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .param p2, "cekMaterial"    # Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    .prologue
    .local p0, "this":Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;, "Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase<TT;>;"
    const/4 v6, 0x0

    .line 284
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    .line 285
    .local v0, "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    if-nez v0, :cond_0

    .line 286
    new-instance v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .end local v0    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 290
    .restart local v0    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :cond_0
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 291
    const-string/jumbo v1, "x-amz-unencrypted-content-md5"

    .line 292
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object v4

    .line 291
    invoke-virtual {v0, v1, v4}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_1
    invoke-virtual {v0, v6}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentMD5(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->plaintextLength(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/model/ObjectMetadata;)J

    move-result-wide v2

    .line 301
    .local v2, "plaintextLength":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    .line 302
    const-string/jumbo v1, "x-amz-unencrypted-content-length"

    .line 303
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 302
    invoke-virtual {v0, v1, v4}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0, v2, v3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->ciphertextLength(J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentLength(J)V

    .line 307
    :cond_2
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 308
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;->newS3CipherLiteInputStream(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;J)Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setInputStream(Ljava/io/InputStream;)V

    .line 312
    invoke-virtual {p1, v6}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setFile(Ljava/io/File;)V

    .line 313
    return-object p1
.end method
