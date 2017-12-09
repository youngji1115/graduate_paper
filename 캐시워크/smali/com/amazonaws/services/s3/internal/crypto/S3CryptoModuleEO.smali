.class Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;
.super Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;
.source "S3CryptoModuleEO.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase",
        "<",
        "Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 7
    .param p1, "s3"    # Lcom/amazonaws/services/s3/internal/S3Direct;
    .param p2, "credentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;
    .param p3, "encryptionMaterialsProvider"    # Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;
    .param p4, "clientConfig"    # Lcom/amazonaws/ClientConfiguration;
    .param p5, "cryptoConfig"    # Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .prologue
    .line 65
    new-instance v6, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->AES_CBC:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-direct {v6, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;-><init>(Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;-><init>(Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;)V

    .line 68
    return-void
.end method

.method constructor <init>(Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 6
    .param p1, "s3"    # Lcom/amazonaws/services/s3/internal/S3Direct;
    .param p2, "encryptionMaterialsProvider"    # Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;
    .param p3, "cryptoConfig"    # Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .prologue
    .line 76
    new-instance v2, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v2}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    new-instance v4, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v4}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;-><init>(Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    .line 79
    return-void
.end method

.method private encryptionInstructionOf(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    .locals 5
    .param p1, "req"    # Lcom/amazonaws/AmazonWebServiceRequest;

    .prologue
    .line 372
    instance-of v2, p1, Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 373
    check-cast v1, Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;

    .line 374
    .local v1, "p":Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->kekMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    .line 375
    invoke-interface {v1}, Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;->getMaterialsDescription()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 376
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v4

    .line 374
    invoke-static {v2, v3, v4}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->generateInstruction(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/util/Map;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object v0

    .line 381
    .end local v1    # "p":Lcom/amazonaws/services/s3/model/MaterialsDescriptionProvider;
    .local v0, "instruction":Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    :goto_0
    return-object v0

    .line 378
    .end local v0    # "instruction":Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    :cond_0
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->kekMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 379
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v3

    .line 378
    invoke-static {v2, v3}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->generateInstruction(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object v0

    .restart local v0    # "instruction":Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    goto :goto_0
.end method

.method private putObjectUsingInstructionFile(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 5
    .param p1, "putObjectRequest"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->encryptionInstructionOf(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object v2

    .line 354
    .local v2, "instruction":Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    invoke-static {p1, v2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->encryptRequestUsingInstruction(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    .line 358
    .local v0, "encryptedObjectRequest":Lcom/amazonaws/services/s3/model/PutObjectRequest;
    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v4, v0}, Lcom/amazonaws/services/s3/internal/S3Direct;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object v1

    .line 361
    .local v1, "encryptedObjectResult":Lcom/amazonaws/services/s3/model/PutObjectResult;
    invoke-static {p1, v2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->createInstructionPutRequest(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v3

    .line 363
    .local v3, "instructionRequest":Lcom/amazonaws/services/s3/model/PutObjectRequest;
    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v4, v3}, Lcom/amazonaws/services/s3/internal/S3Direct;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    .line 366
    return-object v1
.end method

.method private putObjectUsingMetadata(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 3
    .param p1, "putObjectRequest"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->encryptionInstructionOf(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object v1

    .line 325
    .local v1, "instruction":Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    invoke-static {p1, v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->encryptRequestUsingInstruction(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    .line 329
    .local v0, "encryptedObjectRequest":Lcom/amazonaws/services/s3/model/PutObjectRequest;
    invoke-static {p1, v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->updateMetadataWithEncryptionInstruction(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)V

    .line 332
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v2, v0}, Lcom/amazonaws/services/s3/internal/S3Direct;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected final ciphertextLength(J)J
    .locals 7
    .param p1, "plaintextLength"    # J

    .prologue
    .line 386
    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->contentCryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v4}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getBlockSizeInBytes()I

    move-result v4

    int-to-long v0, v4

    .line 387
    .local v0, "cipherBlockSize":J
    rem-long v4, p1, v0

    sub-long v2, v0, v4

    .line 388
    .local v2, "offset":J
    add-long v4, p1, v2

    return-wide v4
.end method

.method public completeMultipartUploadSecurely(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    .locals 11
    .param p1, "completeMultipartUploadRequest"    # Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 113
    sget-object v7, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, p1, v7}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 115
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object v6

    .line 116
    .local v6, "uploadId":Ljava/lang/String;
    iget-object v7, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->multipartUploadContexts:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;

    .line 118
    .local v1, "encryptedUploadContext":Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->hasFinalPartBeenSeen()Z

    move-result v7

    if-nez v7, :cond_0

    .line 119
    new-instance v7, Lcom/amazonaws/AmazonClientException;

    const-string v8, "Unable to complete an encrypted multipart upload without being told which part was the last.  Without knowing which part was the last, the encrypted data in Amazon S3 is incomplete and corrupt."

    invoke-direct {v7, v8}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 125
    :cond_0
    iget-object v7, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    .line 126
    invoke-virtual {v7, p1}, Lcom/amazonaws/services/s3/internal/S3Direct;->completeMultipartUpload(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object v4

    .line 130
    .local v4, "result":Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    iget-object v7, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v7}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getStorageMode()Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    move-result-object v7

    sget-object v8, Lcom/amazonaws/services/s3/model/CryptoStorageMode;->InstructionFile:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    if-ne v7, v8, :cond_1

    .line 132
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->getEnvelopeEncryptionKey()Ljavax/crypto/SecretKey;

    move-result-object v7

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 133
    invoke-virtual {v9}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v9

    .line 134
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->getFirstInitializationVector()[B

    move-result-object v10

    .line 131
    invoke-static {v7, v8, v9, v10}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->createSymmetricCipher(Ljavax/crypto/SecretKey;ILjava/security/Provider;[B)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 137
    .local v5, "symmetricCipher":Ljavax/crypto/Cipher;
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->getMaterialsDescription()Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 138
    iget-object v7, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->kekMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    .line 139
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->getMaterialsDescription()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;->getEncryptionMaterials(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v2

    .line 146
    .local v2, "encryptionMaterials":Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    :goto_0
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->getEnvelopeEncryptionKey()Ljavax/crypto/SecretKey;

    move-result-object v7

    iget-object v8, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 147
    invoke-virtual {v8}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v8

    .line 145
    invoke-static {v7, v2, v8}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getEncryptedSymmetricKey(Ljavax/crypto/SecretKey;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)[B

    move-result-object v0

    .line 148
    .local v0, "encryptedEnvelopeSymmetricKey":[B
    new-instance v3, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    .line 149
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getMaterialsDescription()Ljava/util/Map;

    move-result-object v7

    .line 150
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->getEnvelopeEncryptionKey()Ljavax/crypto/SecretKey;

    move-result-object v8

    invoke-direct {v3, v7, v0, v8, v5}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;-><init>(Ljava/util/Map;[BLjavax/crypto/SecretKey;Ljavax/crypto/Cipher;)V

    .line 153
    .local v3, "instruction":Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    iget-object v7, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    .line 154
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->getBucketName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 153
    invoke-static {v8, v9, v3}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->createInstructionPutRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/amazonaws/services/s3/internal/S3Direct;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    .line 158
    .end local v0    # "encryptedEnvelopeSymmetricKey":[B
    .end local v2    # "encryptionMaterials":Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .end local v3    # "instruction":Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    .end local v5    # "symmetricCipher":Ljavax/crypto/Cipher;
    :cond_1
    iget-object v7, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->multipartUploadContexts:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    return-object v4

    .line 141
    .restart local v5    # "symmetricCipher":Ljavax/crypto/Cipher;
    :cond_2
    iget-object v7, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->kekMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    invoke-interface {v7}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;->getEncryptionMaterials()Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v2

    .restart local v2    # "encryptionMaterials":Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    goto :goto_0
.end method

.method public copyPartSecurely(Lcom/amazonaws/services/s3/model/CopyPartRequest;)Lcom/amazonaws/services/s3/model/CopyPartResult;
    .locals 3
    .param p1, "copyPartRequest"    # Lcom/amazonaws/services/s3/model/CopyPartRequest;

    .prologue
    .line 292
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "uploadId":Ljava/lang/String;
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->multipartUploadContexts:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;

    .line 295
    .local v0, "encryptedUploadContext":Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->hasFinalPartBeenSeen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 296
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->setHasFinalPartBeenSeen(Z)V

    .line 299
    :cond_0
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v2, p1}, Lcom/amazonaws/services/s3/internal/S3Direct;->copyPart(Lcom/amazonaws/services/s3/model/CopyPartRequest;)Lcom/amazonaws/services/s3/model/CopyPartResult;

    move-result-object v2

    return-object v2
.end method

.method public getObjectSecurely(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 1
    .param p1, "getObjectRequest"    # Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .param p2, "destinationFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getObjectSecurely(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 1
    .param p1, "getObjectRequest"    # Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public initiateMultipartUploadSecurely(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;
    .locals 10
    .param p1, "initiateMultipartUploadRequest"    # Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 166
    sget-object v7, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, p1, v7}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 170
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->generateOneTimeUseSymmetricKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 171
    .local v3, "envelopeSymmetricKey":Ljavax/crypto/SecretKey;
    const/4 v7, 0x1

    iget-object v8, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 172
    invoke-virtual {v8}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v8

    const/4 v9, 0x0

    .line 171
    invoke-static {v3, v7, v8, v9}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->createSymmetricCipher(Ljavax/crypto/SecretKey;ILjava/security/Provider;[B)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 174
    .local v6, "symmetricCipher":Ljavax/crypto/Cipher;
    iget-object v7, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v7}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getStorageMode()Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    move-result-object v7

    sget-object v8, Lcom/amazonaws/services/s3/model/CryptoStorageMode;->ObjectMetadata:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    if-ne v7, v8, :cond_0

    .line 175
    const/4 v2, 0x0

    .line 176
    .local v2, "encryptionMaterials":Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    instance-of v7, p1, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;

    if-eqz v7, :cond_2

    .line 177
    iget-object v8, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->kekMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    move-object v7, p1

    check-cast v7, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;

    .line 179
    invoke-virtual {v7}, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;->getMaterialsDescription()Ljava/util/Map;

    move-result-object v7

    .line 178
    invoke-interface {v8, v7}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;->getEncryptionMaterials(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v2

    .line 184
    :goto_0
    iget-object v7, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 185
    invoke-virtual {v7}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v7

    .line 184
    invoke-static {v3, v2, v7}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getEncryptedSymmetricKey(Ljavax/crypto/SecretKey;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)[B

    move-result-object v0

    .line 190
    .local v0, "encryptedEnvelopeSymmetricKey":[B
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getMaterialsDescription()Ljava/util/Map;

    move-result-object v7

    .line 188
    invoke-static {p1, v0, v6, v7}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->updateMetadataWithEncryptionInfo(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;[BLjavax/crypto/Cipher;Ljava/util/Map;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v4

    .line 193
    .local v4, "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    invoke-virtual {p1, v4}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->setObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 196
    .end local v0    # "encryptedEnvelopeSymmetricKey":[B
    .end local v2    # "encryptionMaterials":Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .end local v4    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :cond_0
    iget-object v7, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    .line 197
    invoke-virtual {v7, p1}, Lcom/amazonaws/services/s3/internal/S3Direct;->initiateMultipartUpload(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    move-result-object v5

    .line 198
    .local v5, "result":Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;
    new-instance v1, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;

    .line 199
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v7

    .line 200
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8, v3}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/crypto/SecretKey;)V

    .line 201
    .local v1, "encryptedUploadContext":Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;
    invoke-virtual {v6}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->setNextInitializationVector([B)V

    .line 202
    invoke-virtual {v6}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->setFirstInitializationVector([B)V

    .line 203
    instance-of v7, p1, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;

    if-eqz v7, :cond_1

    .line 204
    check-cast p1, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;

    .line 206
    .end local p1    # "initiateMultipartUploadRequest":Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptedInitiateMultipartUploadRequest;->getMaterialsDescription()Ljava/util/Map;

    move-result-object v7

    .line 205
    invoke-virtual {v1, v7}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->setMaterialsDescription(Ljava/util/Map;)V

    .line 208
    :cond_1
    iget-object v7, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->multipartUploadContexts:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->getUploadId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    return-object v5

    .line 181
    .end local v1    # "encryptedUploadContext":Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;
    .end local v5    # "result":Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;
    .restart local v2    # "encryptionMaterials":Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .restart local p1    # "initiateMultipartUploadRequest":Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    :cond_2
    iget-object v7, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->kekMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    invoke-interface {v7}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;->getEncryptionMaterials()Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v2

    goto :goto_0
.end method

.method public putObjectSecurely(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 2
    .param p1, "putObjectRequest"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 84
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 86
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getStorageMode()Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoStorageMode;->InstructionFile:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    if-ne v0, v1, :cond_0

    .line 87
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->putObjectUsingInstructionFile(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->putObjectUsingMetadata(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object v0

    goto :goto_0
.end method

.method public uploadPartSecurely(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;
    .locals 18
    .param p1, "uploadPartRequest"    # Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 226
    sget-object v13, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->USER_AGENT:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 228
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->isLastPart()Z

    move-result v8

    .line 229
    .local v8, "isLastPart":Z
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v12

    .line 231
    .local v12, "uploadId":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v14

    sget v13, Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;->SYMMETRIC_CIPHER_BLOCK_SIZE:I

    int-to-long v0, v13

    move-wide/from16 v16, v0

    rem-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_0

    const/4 v10, 0x1

    .line 233
    .local v10, "partSizeMultipleOfCipherBlockSize":Z
    :goto_0
    if-nez v8, :cond_1

    if-nez v10, :cond_1

    .line 234
    new-instance v13, Lcom/amazonaws/AmazonClientException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid part size: part sizes for encrypted multipart uploads must be multiples of the cipher block size ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;->SYMMETRIC_CIPHER_BLOCK_SIZE:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") with the exception of the last part.  Otherwise encryption adds extra padding that will corrupt the final object."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 231
    .end local v10    # "partSizeMultipleOfCipherBlockSize":Z
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 246
    .restart local v10    # "partSizeMultipleOfCipherBlockSize":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->multipartUploadContexts:Ljava/util/Map;

    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;

    .line 247
    .local v6, "encryptedUploadContext":Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;
    if-nez v6, :cond_2

    .line 248
    new-instance v13, Lcom/amazonaws/AmazonClientException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "No client-side information available on upload ID "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 251
    :cond_2
    invoke-virtual {v6}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->getEnvelopeEncryptionKey()Ljavax/crypto/SecretKey;

    move-result-object v7

    .line 252
    .local v7, "envelopeSymmetricKey":Ljavax/crypto/SecretKey;
    invoke-virtual {v6}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->getNextInitializationVector()[B

    move-result-object v9

    .line 253
    .local v9, "iv":[B
    new-instance v2, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 254
    invoke-virtual {v14}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v14

    invoke-direct {v2, v7, v13, v9, v14}, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;-><init>(Ljavax/crypto/SecretKey;I[BLjava/security/Provider;)V

    .line 258
    .local v2, "cipherFactory":Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getEncryptedInputStream(Lcom/amazonaws/services/s3/model/UploadPartRequest;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;

    move-result-object v3

    .line 259
    .local v3, "encryptedInputStream":Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setInputStream(Ljava/io/InputStream;)V

    .line 263
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->isLastPart()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 266
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->createCipher()Ljavax/crypto/Cipher;

    move-result-object v13

    .line 265
    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->calculateCryptoContentLength(Ljavax/crypto/Cipher;Lcom/amazonaws/services/s3/model/UploadPartRequest;)J

    move-result-wide v4

    .line 267
    .local v4, "cryptoContentLength":J
    const-wide/16 v14, 0x0

    cmp-long v13, v4, v14

    if-lez v13, :cond_3

    .line 268
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setPartSize(J)V

    .line 270
    :cond_3
    invoke-virtual {v6}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->hasFinalPartBeenSeen()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 271
    new-instance v13, Lcom/amazonaws/AmazonClientException;

    const-string v14, "This part was specified as the last part in a multipart upload, but a previous part was already marked as the last part.  Only the last part of the upload should be marked as the last part, otherwise it will cause the encrypted data to be corrupted."

    invoke-direct {v13, v14}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 277
    :cond_4
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->setHasFinalPartBeenSeen(Z)V

    .line 282
    .end local v4    # "cryptoContentLength":J
    :cond_5
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setFile(Ljava/io/File;)V

    .line 283
    const-wide/16 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setFileOffset(J)V

    .line 285
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleEO;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/amazonaws/services/s3/internal/S3Direct;->uploadPart(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;

    move-result-object v11

    .line 286
    .local v11, "result":Lcom/amazonaws/services/s3/model/UploadPartResult;
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;->getBlock()[B

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/amazonaws/services/s3/internal/crypto/EncryptedUploadContext;->setNextInitializationVector([B)V

    .line 287
    return-object v11
.end method
