.class public Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;
.super Ljava/lang/Object;
.source "EncryptionUtils.java"


# static fields
.field static final INSTRUCTION_SUFFIX:Ljava/lang/String; = ".instruction"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustOutputToDesiredRange(Lcom/amazonaws/services/s3/model/S3Object;[J)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 7
    .param p0, "object"    # Lcom/amazonaws/services/s3/model/S3Object;
    .param p1, "range"    # [J

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 551
    if-eqz p1, :cond_0

    aget-wide v2, p1, v2

    aget-wide v4, p1, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-object p0

    .line 556
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v1

    .line 557
    .local v1, "objectContent":Lcom/amazonaws/services/s3/model/S3ObjectInputStream;
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;

    const/4 v2, 0x0

    aget-wide v2, p1, v2

    const/4 v4, 0x1

    aget-wide v4, p1, v4

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;-><init>(Ljava/io/InputStream;JJ)V

    .line 559
    .local v0, "adjustedRangeContents":Ljava/io/InputStream;
    new-instance v2, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    .line 560
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->getHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 559
    invoke-virtual {p0, v2}, Lcom/amazonaws/services/s3/model/S3Object;->setObjectContent(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 562
    .end local v0    # "adjustedRangeContents":Ljava/io/InputStream;
    .end local v1    # "objectContent":Lcom/amazonaws/services/s3/model/S3ObjectInputStream;
    :catch_0
    move-exception v6

    .line 563
    .local v6, "e":Ljava/io/IOException;
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error adjusting output to desired byte range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 564
    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static buildInstruction(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    .locals 5
    .param p0, "materials"    # Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .param p1, "cryptoProvider"    # Ljava/security/Provider;

    .prologue
    .line 161
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->generateOneTimeUseSymmetricKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 162
    .local v2, "envelopeSymmetricKey":Ljavax/crypto/SecretKey;
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4, p1}, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;-><init>(Ljavax/crypto/SecretKey;I[BLjava/security/Provider;)V

    .line 166
    .local v0, "cipherFactory":Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;
    invoke-static {v2, p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getEncryptedSymmetricKey(Ljavax/crypto/SecretKey;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)[B

    move-result-object v1

    .line 170
    .local v1, "encryptedEnvelopeSymmetricKey":[B
    new-instance v3, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getMaterialsDescription()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2, v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;-><init>(Ljava/util/Map;[BLjavax/crypto/SecretKey;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)V

    return-object v3
.end method

.method public static buildInstructionFromInstructionFile(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    .locals 1
    .param p0, "instructionFile"    # Lcom/amazonaws/services/s3/model/S3Object;
    .param p1, "materials"    # Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .param p2, "cryptoProvider"    # Ljava/security/Provider;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 190
    new-instance v0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;-><init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V

    invoke-static {p0, v0, p2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->buildInstructionFromInstructionFile(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object v0

    return-object v0
.end method

.method public static buildInstructionFromInstructionFile(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    .locals 16
    .param p0, "instructionFile"    # Lcom/amazonaws/services/s3/model/S3Object;
    .param p1, "materialsProvider"    # Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;
    .param p2, "cryptoProvider"    # Ljava/security/Provider;

    .prologue
    .line 209
    invoke-static/range {p0 .. p0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->parseJSONInstruction(Lcom/amazonaws/services/s3/model/S3Object;)Ljava/util/Map;

    move-result-object v4

    .line 211
    .local v4, "instructionJSON":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v11, "x-amz-key"

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 212
    .local v3, "encryptedSymmetricKeyB64":Ljava/lang/String;
    const-string/jumbo v11, "x-amz-iv"

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 213
    .local v6, "ivB64":Ljava/lang/String;
    const-string/jumbo v11, "x-amz-matdesc"

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 214
    .local v9, "materialsDescriptionString":Ljava/lang/String;
    invoke-static {v9}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->convertJSONToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    .line 217
    .local v8, "materialsDescription":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v3}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 218
    .local v2, "encryptedSymmetricKey":[B
    invoke-static {v6}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v5

    .line 220
    .local v5, "iv":[B
    if-eqz v2, :cond_0

    if-nez v5, :cond_1

    .line 223
    :cond_0
    new-instance v11, Lcom/amazonaws/AmazonClientException;

    const-string v12, "Necessary encryption info not found in the instruction file \'%s\' in bucket \'%s\'"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/amazonaws/services/s3/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/amazonaws/services/s3/model/S3Object;->getBucketName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 224
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 229
    :cond_1
    move-object/from16 v0, p1

    invoke-static {v8, v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->retrieveOriginalMaterials(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v7

    .line 234
    .local v7, "materials":Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    if-nez v7, :cond_2

    .line 235
    new-instance v11, Lcom/amazonaws/AmazonClientException;

    const-string v12, "Unable to retrieve the encryption materials that originally encrypted object corresponding to instruction file \'%s\' in bucket \'%s\'."

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/amazonaws/services/s3/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/amazonaws/services/s3/model/S3Object;->getBucketName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 236
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 244
    :cond_2
    move-object/from16 v0, p2

    invoke-static {v2, v7, v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getDecryptedSymmetricKey([BLcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Ljavax/crypto/SecretKey;

    move-result-object v10

    .line 246
    .local v10, "symmetricKey":Ljavax/crypto/SecretKey;
    new-instance v1, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    const/4 v11, 0x2

    move-object/from16 v0, p2

    invoke-direct {v1, v10, v11, v5, v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;-><init>(Ljavax/crypto/SecretKey;I[BLjava/security/Provider;)V

    .line 249
    .local v1, "cipherFactory":Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;
    new-instance v11, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    invoke-direct {v11, v8, v2, v10, v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;-><init>(Ljava/util/Map;[BLjavax/crypto/SecretKey;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)V

    return-object v11
.end method

.method public static buildInstructionFromObjectMetadata(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    .locals 1
    .param p0, "object"    # Lcom/amazonaws/services/s3/model/S3Object;
    .param p1, "materials"    # Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .param p2, "cryptoProvider"    # Ljava/security/Provider;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 271
    new-instance v0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;-><init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V

    invoke-static {p0, v0, p2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->buildInstructionFromObjectMetadata(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object v0

    return-object v0
.end method

.method public static buildInstructionFromObjectMetadata(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    .locals 13
    .param p0, "object"    # Lcom/amazonaws/services/s3/model/S3Object;
    .param p1, "materialsProvider"    # Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;
    .param p2, "cryptoProvider"    # Ljava/security/Provider;

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v6

    .line 295
    .local v6, "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    const-string/jumbo v8, "x-amz-key"

    invoke-static {v8, v6}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getCryptoBytesFromMetadata(Ljava/lang/String;Lcom/amazonaws/services/s3/model/ObjectMetadata;)[B

    move-result-object v1

    .line 296
    .local v1, "encryptedSymmetricKeyBytes":[B
    const-string/jumbo v8, "x-amz-iv"

    invoke-static {v8, v6}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getCryptoBytesFromMetadata(Ljava/lang/String;Lcom/amazonaws/services/s3/model/ObjectMetadata;)[B

    move-result-object v2

    .line 297
    .local v2, "initVectorBytes":[B
    const-string/jumbo v8, "x-amz-matdesc"

    invoke-static {v8, v6}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getStringFromMetadata(Ljava/lang/String;Lcom/amazonaws/services/s3/model/ObjectMetadata;)Ljava/lang/String;

    move-result-object v5

    .line 299
    .local v5, "materialsDescriptionString":Ljava/lang/String;
    invoke-static {v5}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->convertJSONToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 301
    .local v4, "materialsDescription":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 304
    :cond_0
    new-instance v8, Lcom/amazonaws/AmazonClientException;

    const-string v9, "Necessary encryption info not found in the headers of file \'%s\' in bucket \'%s\'"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 307
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getBucketName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 305
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 310
    :cond_1
    invoke-static {v4, p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->retrieveOriginalMaterials(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v3

    .line 315
    .local v3, "materials":Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    if-nez v3, :cond_2

    .line 316
    new-instance v8, Lcom/amazonaws/AmazonClientException;

    const-string v9, "Unable to retrieve the encryption materials that originally encrypted file \'%s\' in bucket \'%s\'."

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 319
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getBucketName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 317
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 323
    :cond_2
    invoke-static {v1, v3, p2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getDecryptedSymmetricKey([BLcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Ljavax/crypto/SecretKey;

    move-result-object v7

    .line 325
    .local v7, "symmetricKey":Ljavax/crypto/SecretKey;
    new-instance v0, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    const/4 v8, 0x2

    invoke-direct {v0, v7, v8, v2, p2}, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;-><init>(Ljavax/crypto/SecretKey;I[BLjava/security/Provider;)V

    .line 328
    .local v0, "cipherFactory":Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;
    new-instance v8, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    invoke-direct {v8, v4, v1, v7, v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;-><init>(Ljava/util/Map;[BLjavax/crypto/SecretKey;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)V

    return-object v8
.end method

.method private static calculateCryptoContentLength(Ljavax/crypto/Cipher;Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/model/ObjectMetadata;)J
    .locals 8
    .param p0, "symmetricCipher"    # Ljavax/crypto/Cipher;
    .param p1, "request"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .param p2, "metadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .prologue
    .line 858
    invoke-static {p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getUnencryptedContentLength(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/model/ObjectMetadata;)J

    move-result-wide v4

    .line 861
    .local v4, "plaintextLength":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_0

    .line 862
    const-wide/16 v6, -0x1

    .line 866
    :goto_0
    return-wide v6

    .line 864
    :cond_0
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    .line 865
    .local v0, "cipherBlockSize":J
    rem-long v6, v4, v0

    sub-long v2, v0, v6

    .line 866
    .local v2, "offset":J
    add-long v6, v4, v2

    goto :goto_0
.end method

.method public static calculateCryptoContentLength(Ljavax/crypto/Cipher;Lcom/amazonaws/services/s3/model/UploadPartRequest;)J
    .locals 10
    .param p0, "symmetricCipher"    # Ljavax/crypto/Cipher;
    .param p1, "request"    # Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .prologue
    .line 872
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 873
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 874
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v4

    .line 882
    .local v4, "plaintextLength":J
    :goto_0
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    .line 883
    .local v0, "cipherBlockSize":J
    rem-long v6, v4, v0

    sub-long v2, v0, v6

    .line 884
    .local v2, "offset":J
    add-long v6, v4, v2

    .end local v0    # "cipherBlockSize":J
    .end local v2    # "offset":J
    .end local v4    # "plaintextLength":J
    :goto_1
    return-wide v6

    .line 876
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v4

    .restart local v4    # "plaintextLength":J
    goto :goto_0

    .line 877
    .end local v4    # "plaintextLength":J
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 878
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v4

    .restart local v4    # "plaintextLength":J
    goto :goto_0

    .line 880
    .end local v4    # "plaintextLength":J
    :cond_2
    const-wide/16 v6, -0x1

    goto :goto_1
.end method

.method private static convertInstructionToJSONObject(Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Ljava/util/Map;
    .locals 5
    .param p0, "instruction"    # Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 913
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 914
    .local v0, "instructionJSON":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->getMaterialsDescription()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/util/json/JsonUtils;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 915
    .local v2, "materialsDescription":Ljava/lang/String;
    const-string/jumbo v3, "x-amz-matdesc"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    const-string/jumbo v3, "x-amz-key"

    .line 917
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->getEncryptedSymmetricKey()[B

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v4

    .line 916
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->getSymmetricCipher()Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v1

    .line 919
    .local v1, "iv":[B
    const-string/jumbo v3, "x-amz-iv"

    invoke-static {v1}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    return-object v0
.end method

.method private static convertJSONToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p0, "descriptionJSONString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 769
    if-nez p0, :cond_0

    .line 770
    const/4 v1, 0x0

    .line 773
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/amazonaws/util/json/JsonUtils;->jsonToMap(Ljava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 774
    :catch_0
    move-exception v0

    .line 775
    .local v0, "ace":Lcom/amazonaws/AmazonClientException;
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse encryption materials description from metadata :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 777
    invoke-virtual {v0}, Lcom/amazonaws/AmazonClientException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 941
    if-nez p0, :cond_0

    .line 942
    const-string v3, ""

    .line 955
    :goto_0
    return-object v3

    .line 944
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 947
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v4, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 949
    .local v1, "reader":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 950
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 953
    .end local v0    # "line":Ljava/lang/String;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v3

    .restart local v0    # "line":Ljava/lang/String;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 955
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static createInstructionDeleteObjectRequest(Lcom/amazonaws/services/s3/model/DeleteObjectRequest;)Lcom/amazonaws/services/s3/model/DeleteObjectRequest;
    .locals 4
    .param p0, "request"    # Lcom/amazonaws/services/s3/model/DeleteObjectRequest;

    .prologue
    .line 472
    new-instance v0, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".instruction"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/model/DeleteObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createInstructionGetRequest(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .locals 4
    .param p0, "request"    # Lcom/amazonaws/services/s3/model/GetObjectRequest;

    .prologue
    .line 459
    new-instance v0, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".instruction"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 460
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getVersionId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    return-object v0
.end method

.method public static createInstructionPutRequest(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 6
    .param p0, "request"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .param p1, "instruction"    # Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    .prologue
    .line 417
    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->convertInstructionToJSONObject(Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Ljava/util/Map;

    move-result-object v2

    .line 418
    .local v2, "instructionJSON":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v2}, Lcom/amazonaws/util/json/JsonUtils;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 419
    .local v0, "instructionBytes":[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 421
    .local v1, "instructionInputStream":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v3

    .line 424
    .local v3, "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    array-length v4, v0

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentLength(J)V

    .line 427
    const-string/jumbo v4, "x-amz-crypto-instr-file"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".instruction"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setKey(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0, v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 432
    invoke-virtual {p0, v1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setInputStream(Ljava/io/InputStream;)V

    .line 434
    return-object p0
.end method

.method public static createInstructionPutRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 7
    .param p0, "bucketName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "instruction"    # Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    .prologue
    .line 439
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->convertInstructionToJSONObject(Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Ljava/util/Map;

    move-result-object v2

    .line 440
    .local v2, "instructionJSON":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v2}, Lcom/amazonaws/util/json/JsonUtils;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 441
    .local v0, "instructionBytes":[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 443
    .local v1, "instructionInputStream":Ljava/io/InputStream;
    new-instance v3, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 444
    .local v3, "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    array-length v4, v0

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentLength(J)V

    .line 445
    const-string/jumbo v4, "x-amz-crypto-instr-file"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    new-instance v4, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".instruction"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5, v1, v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    return-object v4
.end method

.method public static createSymmetricCipher(Ljavax/crypto/SecretKey;ILjava/security/Provider;[B)Ljavax/crypto/Cipher;
    .locals 5
    .param p0, "symmetricCryptoKey"    # Ljavax/crypto/SecretKey;
    .param p1, "encryptMode"    # I
    .param p2, "cryptoProvider"    # Ljava/security/Provider;
    .param p3, "initVector"    # [B

    .prologue
    .line 595
    if-eqz p2, :cond_0

    .line 596
    :try_start_0
    sget-object v2, Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;->SYMMETRIC_CIPHER_METHOD:Ljava/lang/String;

    invoke-static {v2, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 601
    .local v0, "cipher":Ljavax/crypto/Cipher;
    :goto_0
    if-eqz p3, :cond_1

    .line 602
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, p1, p0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 606
    :goto_1
    return-object v0

    .line 599
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :cond_0
    sget-object v2, Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;->SYMMETRIC_CIPHER_METHOD:Ljava/lang/String;

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .restart local v0    # "cipher":Ljavax/crypto/Cipher;
    goto :goto_0

    .line 604
    :cond_1
    invoke-virtual {v0, p1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 607
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v1

    .line 608
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to build cipher: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nMake sure you have the JCE unlimited strength policy files installed and configured for your JVM: http://www.ngs.ac.uk/tools/jcepolicyfiles"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static decryptObjectUsingInstruction(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 4
    .param p0, "object"    # Lcom/amazonaws/services/s3/model/S3Object;
    .param p1, "instruction"    # Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v1

    .line 400
    .local v1, "objectContent":Lcom/amazonaws/services/s3/model/S3ObjectInputStream;
    new-instance v0, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;

    .line 401
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->getCipherFactory()Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)V

    .line 402
    .local v0, "decryptedInputStream":Ljava/io/InputStream;
    new-instance v2, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    .line 403
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->getHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 402
    invoke-virtual {p0, v2}, Lcom/amazonaws/services/s3/model/S3Object;->setObjectContent(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V

    .line 404
    return-object p0
.end method

.method public static decryptObjectUsingMetadata(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 2
    .param p0, "object"    # Lcom/amazonaws/services/s3/model/S3Object;
    .param p1, "materials"    # Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .param p2, "cryptoProvider"    # Ljava/security/Provider;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 122
    invoke-static {p0, p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->buildInstructionFromObjectMetadata(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object v0

    .line 126
    .local v0, "instruction":Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    invoke-static {p0, v0}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->decryptObjectUsingInstruction(Lcom/amazonaws/services/s3/model/S3Object;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v1

    return-object v1
.end method

.method public static encryptRequestUsingInstruction(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 10
    .param p0, "request"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .param p1, "instruction"    # Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 345
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v2

    .line 346
    .local v2, "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    if-nez v2, :cond_0

    .line 347
    new-instance v2, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .end local v2    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 351
    .restart local v2    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :cond_0
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 352
    const-string/jumbo v3, "x-amz-unencrypted-content-md5"

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_1
    invoke-virtual {v2, v7}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentMD5(Ljava/lang/String;)V

    .line 360
    invoke-static {p0, v2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getUnencryptedContentLength(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/model/ObjectMetadata;)J

    move-result-wide v4

    .line 361
    .local v4, "plaintextLength":J
    cmp-long v3, v4, v8

    if-ltz v3, :cond_2

    .line 362
    const-string/jumbo v3, "x-amz-unencrypted-content-length"

    .line 363
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 362
    invoke-virtual {v2, v3, v6}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->getSymmetricCipher()Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-static {v3, p0, v2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->calculateCryptoContentLength(Ljavax/crypto/Cipher;Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/model/ObjectMetadata;)J

    move-result-wide v0

    .line 369
    .local v0, "cryptoContentLength":J
    cmp-long v3, v0, v8

    if-ltz v3, :cond_3

    .line 370
    invoke-virtual {v2, v0, v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentLength(J)V

    .line 373
    :cond_3
    invoke-virtual {p0, v2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 376
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->getCipherFactory()Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    move-result-object v3

    invoke-static {p0, v3, v4, v5}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getEncryptedInputStream(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;J)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setInputStream(Ljava/io/InputStream;)V

    .line 381
    invoke-virtual {p0, v7}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setFile(Ljava/io/File;)V

    .line 383
    return-object p0
.end method

.method public static encryptRequestUsingMetadata(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 2
    .param p0, "request"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .param p1, "materials"    # Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .param p2, "cryptoProvider"    # Ljava/security/Provider;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 91
    invoke-static {p1, p2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->generateInstruction(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object v1

    .line 95
    .local v1, "instruction":Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    invoke-static {p0, v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->encryptRequestUsingInstruction(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v0

    .line 99
    .local v0, "encryptedObjectRequest":Lcom/amazonaws/services/s3/model/PutObjectRequest;
    invoke-static {p0, v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->updateMetadataWithEncryptionInstruction(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)V

    .line 101
    return-object v0
.end method

.method public static generateInstruction(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    .locals 1
    .param p0, "materials"    # Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .param p1, "cryptoProvider"    # Ljava/security/Provider;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 141
    new-instance v0, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;

    invoke-direct {v0, p0}, Lcom/amazonaws/services/s3/model/StaticEncryptionMaterialsProvider;-><init>(Lcom/amazonaws/services/s3/model/EncryptionMaterials;)V

    invoke-static {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->generateInstruction(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object v0

    return-object v0
.end method

.method public static generateInstruction(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    .locals 1
    .param p0, "materialsProvider"    # Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;
    .param p1, "cryptoProvider"    # Ljava/security/Provider;

    .prologue
    .line 147
    invoke-interface {p0}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;->getEncryptionMaterials()Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->buildInstruction(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object v0

    return-object v0
.end method

.method public static generateInstruction(Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Ljava/util/Map;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;
    .locals 1
    .param p0, "materialsProvider"    # Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;
    .param p2, "cryptoProvider"    # Ljava/security/Provider;
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
            "Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "materialsDescription":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0, p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;->getEncryptionMaterials(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->buildInstruction(Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    move-result-object v0

    return-object v0
.end method

.method public static generateOneTimeUseSymmetricKey()Ljavax/crypto/SecretKey;
    .locals 5

    .prologue
    .line 576
    :try_start_0
    sget-object v2, Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;->SYMMETRIC_KEY_ALGORITHM:Ljava/lang/String;

    invoke-static {v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 577
    .local v1, "generator":Ljavax/crypto/KeyGenerator;
    sget v2, Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;->SYMMETRIC_KEY_LENGTH:I

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 578
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to generate envelope symmetric key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 581
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getAdjustedCryptoRange([J)[J
    .locals 8
    .param p0, "range"    # [J

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 526
    if-eqz p0, :cond_0

    aget-wide v2, p0, v6

    aget-wide v4, p0, v7

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 527
    :cond_0
    const/4 v0, 0x0

    .line 532
    :goto_0
    return-object v0

    .line 529
    :cond_1
    const/4 v1, 0x2

    new-array v0, v1, [J

    .line 530
    .local v0, "adjustedCryptoRange":[J
    aget-wide v2, p0, v6

    invoke-static {v2, v3}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getCipherBlockLowerBound(J)J

    move-result-wide v2

    aput-wide v2, v0, v6

    .line 531
    aget-wide v2, p0, v7

    invoke-static {v2, v3}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getCipherBlockUpperBound(J)J

    move-result-wide v2

    aput-wide v2, v0, v7

    goto :goto_0
.end method

.method private static getCipherBlockLowerBound(J)J
    .locals 10
    .param p0, "leftmostBytePosition"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 965
    sget v8, Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;->SYMMETRIC_CIPHER_BLOCK_SIZE:I

    int-to-long v0, v8

    .line 966
    .local v0, "cipherBlockSize":J
    rem-long v4, p0, v0

    .line 967
    .local v4, "offset":J
    sub-long v8, p0, v4

    sub-long v2, v8, v0

    .line 968
    .local v2, "lowerBound":J
    cmp-long v8, v2, v6

    if-gez v8, :cond_0

    move-wide v2, v6

    .line 971
    .end local v2    # "lowerBound":J
    :cond_0
    return-wide v2
.end method

.method private static getCipherBlockUpperBound(J)J
    .locals 6
    .param p0, "rightmostBytePosition"    # J

    .prologue
    .line 980
    sget v4, Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;->SYMMETRIC_CIPHER_BLOCK_SIZE:I

    int-to-long v0, v4

    .line 981
    .local v0, "cipherBlockSize":J
    rem-long v4, p0, v0

    sub-long v2, v0, v4

    .line 982
    .local v2, "offset":J
    add-long v4, p0, v2

    add-long/2addr v4, v0

    return-wide v4
.end method

.method private static getCryptoBytesFromMetadata(Ljava/lang/String;Lcom/amazonaws/services/s3/model/ObjectMetadata;)[B
    .locals 2
    .param p0, "headerName"    # Ljava/lang/String;
    .param p1, "metadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 742
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getUserMetadata()Ljava/util/Map;

    move-result-object v0

    .line 743
    .local v0, "userMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 744
    :cond_0
    const/4 v1, 0x0

    .line 747
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_0
.end method

.method private static getDecryptedSymmetricKey([BLcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Ljavax/crypto/SecretKey;
    .locals 7
    .param p0, "encryptedSymmetricKeyBytes"    # [B
    .param p1, "materials"    # Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .param p2, "cryptoProvider"    # Ljava/security/Provider;

    .prologue
    .line 653
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getKeyPair()Ljava/security/KeyPair;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 655
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getKeyPair()Ljava/security/KeyPair;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    .line 662
    .local v3, "keyToDoDecryption":Ljava/security/Key;
    :goto_0
    if-eqz p2, :cond_1

    .line 663
    :try_start_0
    invoke-interface {v3}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 667
    .local v0, "cipher":Ljavax/crypto/Cipher;
    :goto_1
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 668
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 669
    .local v1, "decryptedSymmetricKeyBytes":[B
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v5, Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;->SYMMETRIC_KEY_ALGORITHM:Ljava/lang/String;

    invoke-direct {v4, v1, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 658
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "decryptedSymmetricKeyBytes":[B
    .end local v3    # "keyToDoDecryption":Ljava/security/Key;
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getSymmetricKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    .restart local v3    # "keyToDoDecryption":Ljava/security/Key;
    goto :goto_0

    .line 665
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .restart local v0    # "cipher":Ljavax/crypto/Cipher;
    goto :goto_1

    .line 671
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v2

    .line 672
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/amazonaws/AmazonClientException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to decrypt symmetric key from object metadata : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 673
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static getEncryptedInputStream(Lcom/amazonaws/services/s3/model/UploadPartRequest;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;
    .locals 12
    .param p0, "request"    # Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .param p1, "cipherFactory"    # Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;

    .prologue
    .line 707
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 708
    .local v0, "originalInputStream":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 709
    new-instance v0, Lcom/amazonaws/services/s3/internal/InputSubstream;

    .end local v0    # "originalInputStream":Ljava/io/InputStream;
    new-instance v1, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;

    .line 710
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;-><init>(Ljava/io/File;)V

    .line 711
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFileOffset()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->isLastPart()Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/services/s3/internal/InputSubstream;-><init>(Ljava/io/InputStream;JJZ)V

    .restart local v0    # "originalInputStream":Ljava/io/InputStream;
    move-object v2, v0

    .line 714
    .end local v0    # "originalInputStream":Ljava/io/InputStream;
    .local v2, "originalInputStream":Ljava/io/InputStream;
    :goto_0
    new-instance v0, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;

    invoke-direct {v0, v2, p1}, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)V

    .line 717
    .end local v2    # "originalInputStream":Ljava/io/InputStream;
    .restart local v0    # "originalInputStream":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->isLastPart()Z

    move-result v1

    if-nez v1, :cond_0

    .line 720
    new-instance v2, Lcom/amazonaws/services/s3/internal/InputSubstream;

    const-wide/16 v4, 0x0

    .line 721
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v2 .. v8}, Lcom/amazonaws/services/s3/internal/InputSubstream;-><init>(Ljava/io/InputStream;JJZ)V

    .end local v0    # "originalInputStream":Ljava/io/InputStream;
    .restart local v2    # "originalInputStream":Ljava/io/InputStream;
    move-object v0, v2

    .line 724
    .end local v2    # "originalInputStream":Ljava/io/InputStream;
    .restart local v0    # "originalInputStream":Ljava/io/InputStream;
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v8

    .line 725
    .local v8, "partSize":J
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;->createCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v10

    .line 726
    .local v10, "cipherBlockSize":I
    new-instance v4, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;

    int-to-long v6, v10

    sub-long v6, v8, v6

    move-object v5, v0

    invoke-direct/range {v4 .. v9}, Lcom/amazonaws/services/s3/internal/crypto/ByteRangeCapturingInputStream;-><init>(Ljava/io/InputStream;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 728
    .end local v0    # "originalInputStream":Ljava/io/InputStream;
    .end local v8    # "partSize":J
    .end local v10    # "cipherBlockSize":I
    :catch_0
    move-exception v11

    .line 729
    .local v11, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create cipher input stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 730
    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v11}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v0    # "originalInputStream":Ljava/io/InputStream;
    :cond_1
    move-object v2, v0

    .end local v0    # "originalInputStream":Ljava/io/InputStream;
    .restart local v2    # "originalInputStream":Ljava/io/InputStream;
    goto :goto_0
.end method

.method private static getEncryptedInputStream(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;J)Ljava/io/InputStream;
    .locals 6
    .param p0, "request"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .param p1, "cipherFactory"    # Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;
    .param p2, "plaintextLength"    # J

    .prologue
    .line 685
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 686
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 689
    new-instance v1, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;

    .end local v1    # "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;-><init>(Ljava/io/File;)V

    .restart local v1    # "is":Ljava/io/InputStream;
    move-object v2, v1

    .line 691
    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    :goto_0
    const-wide/16 v4, -0x1

    cmp-long v3, p2, v4

    if-lez v3, :cond_0

    .line 694
    new-instance v1, Lcom/amazonaws/util/LengthCheckInputStream;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p2, p3, v3}, Lcom/amazonaws/util/LengthCheckInputStream;-><init>(Ljava/io/InputStream;JZ)V

    .line 697
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :goto_1
    new-instance v3, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;

    invoke-direct {v3, v1, p1}, Lcom/amazonaws/services/s3/internal/RepeatableCipherInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 698
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 699
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/amazonaws/AmazonClientException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create cipher input stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 700
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

.method public static getEncryptedSymmetricKey(Ljavax/crypto/SecretKey;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)[B
    .locals 7
    .param p0, "toBeEncrypted"    # Ljavax/crypto/SecretKey;
    .param p1, "materials"    # Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .param p2, "cryptoProvider"    # Ljava/security/Provider;

    .prologue
    .line 621
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getKeyPair()Ljava/security/KeyPair;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 623
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getKeyPair()Ljava/security/KeyPair;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v2

    .line 630
    .local v2, "keyToDoEncryption":Ljava/security/Key;
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    .line 631
    .local v3, "toBeEncryptedBytes":[B
    if-eqz p2, :cond_1

    .line 632
    invoke-interface {v2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 639
    .local v0, "cipher":Ljavax/crypto/Cipher;
    :goto_1
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 640
    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 626
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "keyToDoEncryption":Ljava/security/Key;
    .end local v3    # "toBeEncryptedBytes":[B
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getSymmetricKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    .restart local v2    # "keyToDoEncryption":Ljava/security/Key;
    goto :goto_0

    .line 634
    .restart local v3    # "toBeEncryptedBytes":[B
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .restart local v0    # "cipher":Ljavax/crypto/Cipher;
    goto :goto_1

    .line 641
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "toBeEncryptedBytes":[B
    :catch_0
    move-exception v1

    .line 642
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/amazonaws/AmazonClientException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to encrypt symmetric key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static getStringFromMetadata(Ljava/lang/String;Lcom/amazonaws/services/s3/model/ObjectMetadata;)Ljava/lang/String;
    .locals 2
    .param p0, "headerName"    # Ljava/lang/String;
    .param p1, "metadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 757
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getUserMetadata()Ljava/util/Map;

    move-result-object v0

    .line 758
    .local v0, "userMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 759
    :cond_0
    const/4 v1, 0x0

    .line 761
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method private static getUnencryptedContentLength(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/model/ObjectMetadata;)J
    .locals 2
    .param p0, "request"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .param p1, "metadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .prologue
    .line 898
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 899
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 905
    :goto_0
    return-wide v0

    .line 900
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "Content-Length"

    .line 901
    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getRawMetadataValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 902
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentLength()J

    move-result-wide v0

    goto :goto_0

    .line 905
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static isEncryptionInfoInInstructionFile(Lcom/amazonaws/services/s3/model/S3Object;)Z
    .locals 3
    .param p0, "instructionFile"    # Lcom/amazonaws/services/s3/model/S3Object;

    .prologue
    const/4 v1, 0x0

    .line 501
    if-nez p0, :cond_1

    .line 508
    :cond_0
    :goto_0
    return v1

    .line 504
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getUserMetadata()Ljava/util/Map;

    move-result-object v0

    .line 505
    .local v0, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 508
    const-string/jumbo v1, "x-amz-crypto-instr-file"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isEncryptionInfoInMetadata(Lcom/amazonaws/services/s3/model/S3Object;)Z
    .locals 2
    .param p0, "retrievedObject"    # Lcom/amazonaws/services/s3/model/S3Object;

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getUserMetadata()Ljava/util/Map;

    move-result-object v0

    .line 486
    .local v0, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string/jumbo v1, "x-amz-iv"

    .line 487
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "x-amz-key"

    .line 488
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 486
    :goto_0
    return v1

    .line 488
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static parseJSONInstruction(Lcom/amazonaws/services/s3/model/S3Object;)Ljava/util/Map;
    .locals 5
    .param p0, "instructionObject"    # Lcom/amazonaws/services/s3/model/S3Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/model/S3Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 929
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 930
    .local v1, "instructionString":Ljava/lang/String;
    invoke-static {v1}, Lcom/amazonaws/util/json/JsonUtils;->jsonToMap(Ljava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 931
    .end local v1    # "instructionString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 932
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing JSON instruction file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 933
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static retrieveOriginalMaterials(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .locals 1
    .param p1, "accessor"    # Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;",
            ")",
            "Lcom/amazonaws/services/s3/model/EncryptionMaterials;"
        }
    .end annotation

    .prologue
    .line 844
    .local p0, "materialsDescription":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 845
    const/4 v0, 0x0

    .line 846
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1, p0}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;->getEncryptionMaterials(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v0

    goto :goto_0
.end method

.method private static updateMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;[BLjavax/crypto/Cipher;Ljava/util/Map;)V
    .locals 3
    .param p0, "metadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .param p1, "keyBytesToStoreInMetadata"    # [B
    .param p2, "symmetricCipher"    # Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/model/ObjectMetadata;",
            "[B",
            "Ljavax/crypto/Cipher;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 812
    .local p3, "materialsDescription":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 813
    const-string/jumbo v1, "x-amz-key"

    .line 814
    invoke-static {p1}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v2

    .line 813
    invoke-virtual {p0, v1, v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    :cond_0
    const-string/jumbo v1, "x-amz-iv"

    .line 819
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v2

    .line 818
    invoke-virtual {p0, v1, v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    invoke-static {p3}, Lcom/amazonaws/util/json/JsonUtils;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, "description":Ljava/lang/String;
    const-string/jumbo v1, "x-amz-matdesc"

    invoke-virtual {p0, v1, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    return-void
.end method

.method public static updateMetadataWithEncryptionInfo(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;[BLjavax/crypto/Cipher;Ljava/util/Map;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 1
    .param p0, "request"    # Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .param p1, "keyBytesToStoreInMetadata"    # [B
    .param p2, "symmetricCipher"    # Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;",
            "[B",
            "Ljavax/crypto/Cipher;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/ObjectMetadata;"
        }
    .end annotation

    .prologue
    .line 829
    .local p3, "materialsDescription":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    .line 830
    .local v0, "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    if-nez v0, :cond_0

    .line 831
    new-instance v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .end local v0    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 833
    .restart local v0    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :cond_0
    invoke-static {v0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->updateMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;[BLjavax/crypto/Cipher;Ljava/util/Map;)V

    .line 835
    return-object v0
.end method

.method public static updateMetadataWithEncryptionInstruction(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;)V
    .locals 6
    .param p0, "request"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .param p1, "instruction"    # Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;

    .prologue
    .line 791
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->getEncryptedSymmetricKey()[B

    move-result-object v0

    .line 792
    .local v0, "keyBytesToStoreInMetadata":[B
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->getSymmetricCipher()Ljavax/crypto/Cipher;

    move-result-object v4

    .line 793
    .local v4, "symmetricCipher":Ljavax/crypto/Cipher;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionInstruction;->getMaterialsDescription()Ljava/util/Map;

    move-result-object v1

    .line 795
    .local v1, "materialsDescription":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v2

    .line 796
    .local v2, "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    if-nez v2, :cond_0

    .line 797
    new-instance v2, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .end local v2    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 799
    .restart local v2    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 800
    invoke-static {}, Lcom/amazonaws/services/s3/util/Mimetypes;->getInstance()Lcom/amazonaws/services/s3/util/Mimetypes;

    move-result-object v3

    .line 801
    .local v3, "mimetypes":Lcom/amazonaws/services/s3/util/Mimetypes;
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amazonaws/services/s3/util/Mimetypes;->getMimetype(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 804
    .end local v3    # "mimetypes":Lcom/amazonaws/services/s3/util/Mimetypes;
    :cond_1
    invoke-static {v2, v0, v4, v1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->updateMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;[BLjavax/crypto/Cipher;Ljava/util/Map;)V

    .line 805
    invoke-virtual {p0, v2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 806
    return-void
.end method
