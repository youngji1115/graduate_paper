.class Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;
.super Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;
.source "S3CryptoModuleAE.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase",
        "<",
        "Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final IS_MULTI_PART:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 65
    invoke-static {}, Lcom/amazonaws/services/s3/internal/crypto/CryptoRuntime;->enableBouncyCastle()V

    .line 66
    return-void
.end method

.method constructor <init>(Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 7
    .param p1, "s3"    # Lcom/amazonaws/services/s3/internal/S3Direct;
    .param p2, "credentialsProvider"    # Lcom/amazonaws/auth/AWSCredentialsProvider;
    .param p3, "encryptionMaterialsProvider"    # Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;
    .param p4, "clientConfig"    # Lcom/amazonaws/ClientConfiguration;
    .param p5, "cryptoConfig"    # Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .prologue
    .line 74
    new-instance v6, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;

    sget-object v0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->AES_GCM:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-direct {v6, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;-><init>(Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleBase;-><init>(Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;Lcom/amazonaws/services/s3/internal/crypto/S3CryptoScheme;)V

    .line 77
    return-void
.end method

.method constructor <init>(Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V
    .locals 6
    .param p1, "s3"    # Lcom/amazonaws/services/s3/internal/S3Direct;
    .param p2, "encryptionMaterialsProvider"    # Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;
    .param p3, "cryptoConfig"    # Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .prologue
    .line 85
    new-instance v2, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v2}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    new-instance v4, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v4}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;-><init>(Lcom/amazonaws/services/s3/internal/S3Direct;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/services/s3/model/CryptoConfiguration;)V

    .line 88
    return-void
.end method

.method private assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameterValue"    # Ljava/lang/Object;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 580
    if-nez p1, :cond_0

    .line 581
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 582
    :cond_0
    return-void
.end method

.method private decipher(Lcom/amazonaws/services/s3/model/GetObjectRequest;[J[JLcom/amazonaws/services/s3/model/S3Object;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 8
    .param p1, "req"    # Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .param p2, "desiredRange"    # [J
    .param p3, "cryptoRange"    # [J
    .param p4, "retrieved"    # Lcom/amazonaws/services/s3/model/S3Object;

    .prologue
    .line 169
    new-instance v2, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    invoke-direct {v2, p4}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;-><init>(Lcom/amazonaws/services/s3/model/S3Object;)V

    .line 171
    .local v2, "wrapped":Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->hasEncryptionInfo()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    invoke-direct {p0, p2, p3, v2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->decipherWithMetadata([J[JLcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v3

    .line 206
    :goto_0
    return-object v3

    .line 174
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->fetchInstructionFile(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    move-result-object v1

    .line 175
    .local v1, "instructionFile":Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;
    if-eqz v1, :cond_2

    .line 177
    :try_start_0
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->isInstructionFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    invoke-direct {p0, p2, p3, v2, v1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->decipherWithInstructionFile([J[JLcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)Lcom/amazonaws/services/s3/model/S3Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 183
    :try_start_1
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v4

    goto :goto_0

    .line 183
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 188
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->isStrict()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 190
    :try_start_3
    invoke-virtual {v2}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 193
    :goto_2
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "S3 object with bucket name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 194
    invoke-virtual {p4}, Lcom/amazonaws/services/s3/model/S3Object;->getBucketName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 195
    invoke-virtual {p4}, Lcom/amazonaws/services/s3/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not encrypted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 182
    :catchall_0
    move-exception v3

    .line 183
    :try_start_4
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 185
    :goto_3
    throw v3

    .line 199
    :cond_3
    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Unable to detect encryption information for object \'%s\' in bucket \'%s\'. Returning object without decryption."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 202
    invoke-virtual {p4}, Lcom/amazonaws/services/s3/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 203
    invoke-virtual {p4}, Lcom/amazonaws/services/s3/model/S3Object;->getBucketName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 199
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 205
    const/4 v3, 0x0

    invoke-virtual {p0, v2, p2, v3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->adjustToDesiredRange(Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;[JLjava/util/Map;)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    move-result-object v0

    .line 206
    .local v0, "adjusted":Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->getS3Object()Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v3

    goto/16 :goto_0

    .line 191
    .end local v0    # "adjusted":Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;
    :catch_1
    move-exception v3

    goto :goto_2

    .line 184
    :catch_2
    move-exception v4

    goto :goto_3

    :catch_3
    move-exception v3

    goto :goto_1
.end method

.method private decipherWithInstructionFile([J[JLcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 7
    .param p1, "desiredRange"    # [J
    .param p2, "cryptoRange"    # [J
    .param p3, "retrieved"    # Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;
    .param p4, "instructionFile"    # Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    .prologue
    .line 212
    invoke-virtual {p4}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->toJsonString()Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, "json":Ljava/lang/String;
    invoke-static {v4}, Lcom/amazonaws/util/json/JsonUtils;->jsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 214
    .local v3, "instruction":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->kekMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    iget-object v6, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 218
    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v6

    .line 215
    invoke-static {v3, v5, v6, p2}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->fromInstructionFile(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;[J)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v1

    .line 222
    .local v1, "cekMaterial":Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    invoke-virtual {p0, v1, p3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->securityCheck(Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)V

    .line 223
    invoke-direct {p0, p3, v1, p2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->decrypt(Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;[J)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    move-result-object v2

    .line 225
    .local v2, "decrypted":Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;
    invoke-virtual {p0, v2, p1, v3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->adjustToDesiredRange(Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;[JLjava/util/Map;)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    move-result-object v0

    .line 227
    .local v0, "adjusted":Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->getS3Object()Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v5

    return-object v5
.end method

.method private decipherWithMetadata([J[JLcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 6
    .param p1, "desiredRange"    # [J
    .param p2, "cryptoRange"    # [J
    .param p3, "retrieved"    # Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    .prologue
    .line 232
    .line 233
    invoke-virtual {p3}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v3

    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->kekMaterialsProvider:Lcom/amazonaws/services/s3/model/EncryptionMaterialsProvider;

    iget-object v5, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    .line 235
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getCryptoProvider()Ljava/security/Provider;

    move-result-object v5

    .line 233
    invoke-static {v3, v4, v5, p2}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->fromObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;[J)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v1

    .line 240
    .local v1, "cekMaterial":Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    invoke-virtual {p0, v1, p3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->securityCheck(Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)V

    .line 241
    invoke-direct {p0, p3, v1, p2}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->decrypt(Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;[J)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    move-result-object v2

    .line 243
    .local v2, "decrypted":Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->adjustToDesiredRange(Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;[JLjava/util/Map;)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    move-result-object v0

    .line 245
    .local v0, "adjusted":Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->getS3Object()Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v3

    return-object v3
.end method

.method private decrypt(Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;[J)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;
    .locals 5
    .param p1, "wrapper"    # Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;
    .param p2, "cekMaterial"    # Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .param p3, "range"    # [J

    .prologue
    .line 542
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v0

    .line 543
    .local v0, "objectContent":Lcom/amazonaws/services/s3/model/S3ObjectInputStream;
    new-instance v1, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    new-instance v2, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;

    .line 545
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->getCipherLite()Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object v3

    const/16 v4, 0x800

    invoke-direct {v2, v0, v3, v4}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;I)V

    .line 546
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->getHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 543
    invoke-virtual {p1, v1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->setObjectContent(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V

    .line 547
    return-object p1
.end method

.method private fetchInstructionFile(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;
    .locals 6
    .param p1, "getObjectRequest"    # Lcom/amazonaws/services/s3/model/GetObjectRequest;

    .prologue
    const/4 v2, 0x0

    .line 561
    :try_start_0
    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->createInstructionGetRequest(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/GetObjectRequest;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/internal/S3Direct;->getObject(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v1

    .line 562
    .local v1, "o":Lcom/amazonaws/services/s3/model/S3Object;
    if-nez v1, :cond_0

    .line 567
    .end local v1    # "o":Lcom/amazonaws/services/s3/model/S3Object;
    :goto_0
    return-object v2

    .line 562
    .restart local v1    # "o":Lcom/amazonaws/services/s3/model/S3Object;
    :cond_0
    new-instance v3, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    invoke-direct {v3, v1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;-><init>(Lcom/amazonaws/services/s3/model/S3Object;)V
    :try_end_0
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 563
    .end local v1    # "o":Lcom/amazonaws/services/s3/model/S3Object;
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Lcom/amazonaws/AmazonServiceException;
    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to retrieve instruction file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private putObjectUsingInstructionFile(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 6
    .param p1, "putObjectRequest"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 516
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->clone()Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v1

    .line 518
    .local v1, "putInstFileRequest":Lcom/amazonaws/services/s3/model/PutObjectRequest;
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->createContentCryptoMaterial(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v0

    .line 521
    .local v0, "cekMaterial":Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->wrapWithCipher(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v2

    .line 523
    .local v2, "req":Lcom/amazonaws/services/s3/model/PutObjectRequest;
    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v4, v2}, Lcom/amazonaws/services/s3/internal/S3Direct;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object v3

    .line 525
    .local v3, "result":Lcom/amazonaws/services/s3/model/PutObjectResult;
    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {p0, v1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->upateInstructionPutRequest(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazonaws/services/s3/internal/S3Direct;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    .line 527
    return-object v3
.end method

.method private putObjectUsingMetadata(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 4
    .param p1, "req"    # Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->createContentCryptoMaterial(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v0

    .line 123
    .local v0, "cekMaterial":Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->wrapWithCipher(Lcom/amazonaws/services/s3/model/PutObjectRequest;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v1

    .line 126
    .local v1, "wrappedReq":Lcom/amazonaws/services/s3/model/PutObjectRequest;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v3

    .line 125
    invoke-virtual {p0, v2, v3, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->updateMetadataWithContentCryptoMaterial(Lcom/amazonaws/services/s3/model/ObjectMetadata;Ljava/io/File;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 129
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v2, v1}, Lcom/amazonaws/services/s3/internal/S3Direct;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected final adjustToDesiredRange(Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;[JLjava/util/Map;)Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;
    .locals 16
    .param p1, "s3object"    # Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;
    .param p2, "range"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;",
            "[J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;"
        }
    .end annotation

    .prologue
    .line 267
    .local p3, "instruction":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-object p1

    .line 271
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->encryptionSchemeOf(Ljava/util/Map;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object v9

    .line 273
    .local v9, "encryptionScheme":Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getInstanceLength()J

    move-result-wide v12

    .line 274
    .local v12, "instanceLen":J
    invoke-virtual {v9}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getTagLengthInBits()I

    move-result v4

    div-int/lit8 v4, v4, 0x8

    int-to-long v4, v4

    sub-long v4, v12, v4

    const-wide/16 v6, 0x1

    sub-long v14, v4, v6

    .line 275
    .local v14, "maxOffset":J
    const/4 v4, 0x1

    aget-wide v4, p2, v4

    cmp-long v4, v4, v14

    if-lez v4, :cond_2

    .line 276
    const/4 v4, 0x1

    aput-wide v14, p2, v4

    .line 277
    const/4 v4, 0x0

    aget-wide v4, p2, v4

    const/4 v6, 0x1

    aget-wide v6, p2, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 281
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_1
    new-instance v4, Ljava/io/ByteArrayInputStream;

    const/4 v5, 0x0

    new-array v5, v5, [B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->setObjectContent(Ljava/io/InputStream;)V

    goto :goto_0

    .line 282
    :catch_0
    move-exception v10

    .line 283
    .local v10, "ignore":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->log:Lorg/apache/commons/logging/Log;

    const-string v5, ""

    invoke-interface {v4, v5, v10}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 289
    .end local v10    # "ignore":Ljava/io/IOException;
    :cond_2
    const/4 v4, 0x0

    aget-wide v4, p2, v4

    const/4 v6, 0x1

    aget-wide v6, p2, v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 294
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v3

    .line 295
    .local v3, "objectContent":Lcom/amazonaws/services/s3/model/S3ObjectInputStream;
    new-instance v2, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;

    const/4 v4, 0x0

    aget-wide v4, p2, v4

    const/4 v6, 0x1

    aget-wide v6, p2, v6

    invoke-direct/range {v2 .. v7}, Lcom/amazonaws/services/s3/internal/crypto/AdjustedRangeInputStream;-><init>(Ljava/io/InputStream;JJ)V

    .line 297
    .local v2, "adjustedRangeContents":Ljava/io/InputStream;
    new-instance v4, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    .line 298
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->getHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 297
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->setObjectContent(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 300
    .end local v2    # "adjustedRangeContents":Ljava/io/InputStream;
    .end local v3    # "objectContent":Lcom/amazonaws/services/s3/model/S3ObjectInputStream;
    :catch_1
    move-exception v8

    .line 301
    .local v8, "e":Ljava/io/IOException;
    new-instance v4, Lcom/amazonaws/AmazonClientException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error adjusting output to desired byte range: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 302
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected final ciphertextLength(J)J
    .locals 3
    .param p1, "originalContentLength"    # J

    .prologue
    .line 587
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->contentCryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getTagLengthInBits()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public completeMultipartUploadSecurely(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    .locals 7
    .param p1, "req"    # Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 356
    sget-object v3, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, p1, v3}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 357
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object v2

    .line 358
    .local v2, "uploadId":Ljava/lang/String;
    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->multipartUploadContexts:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;

    .line 360
    .local v1, "uploadContext":Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->hasFinalPartBeenSeen()Z

    move-result v3

    if-nez v3, :cond_0

    .line 361
    new-instance v3, Lcom/amazonaws/AmazonClientException;

    const-string v4, "Unable to complete an encrypted multipart upload without being told which part was the last.  Without knowing which part was the last, the encrypted data in Amazon S3 is incomplete and corrupt."

    invoke-direct {v3, v4}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 367
    :cond_0
    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v3, p1}, Lcom/amazonaws/services/s3/internal/S3Direct;->completeMultipartUpload(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object v0

    .line 371
    .local v0, "result":Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getStorageMode()Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    move-result-object v3

    sget-object v4, Lcom/amazonaws/services/s3/model/CryptoStorageMode;->InstructionFile:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    if-ne v3, v4, :cond_1

    .line 373
    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    .line 374
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->getBucketName()Ljava/lang/String;

    move-result-object v4

    .line 375
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 376
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->getContentCryptoMaterial()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v6

    .line 373
    invoke-virtual {p0, v4, v5, v6}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->createInstructionPutRequest(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazonaws/services/s3/internal/S3Direct;->putObject(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    .line 378
    :cond_1
    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->multipartUploadContexts:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    return-object v0
.end method

.method public copyPartSecurely(Lcom/amazonaws/services/s3/model/CopyPartRequest;)Lcom/amazonaws/services/s3/model/CopyPartResult;
    .locals 3
    .param p1, "copyPartRequest"    # Lcom/amazonaws/services/s3/model/CopyPartRequest;

    .prologue
    .line 487
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CopyPartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v1

    .line 488
    .local v1, "uploadId":Ljava/lang/String;
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->multipartUploadContexts:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;

    .line 490
    .local v0, "uploadContext":Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->hasFinalPartBeenSeen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 491
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->setHasFinalPartBeenSeen(Z)V

    .line 494
    :cond_0
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v2, p1}, Lcom/amazonaws/services/s3/internal/S3Direct;->copyPart(Lcom/amazonaws/services/s3/model/CopyPartRequest;)Lcom/amazonaws/services/s3/model/CopyPartResult;

    move-result-object v2

    return-object v2
.end method

.method public getObjectSecurely(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 9
    .param p1, "getObjectRequest"    # Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .param p2, "destinationFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 309
    const-string v6, "The destination file parameter must be specified when downloading an object directly to a file"

    invoke-direct {p0, p2, v6}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->getObjectSecurely(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v5

    .line 314
    .local v5, "s3Object":Lcom/amazonaws/services/s3/model/S3Object;
    if-nez v5, :cond_0

    .line 315
    const/4 v6, 0x0

    .line 349
    :goto_0
    return-object v6

    .line 317
    :cond_0
    const/4 v3, 0x0

    .line 319
    .local v3, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .local v4, "outputStream":Ljava/io/OutputStream;
    const/16 v6, 0x2800

    :try_start_1
    new-array v0, v6, [B

    .line 322
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    const/4 v6, -0x1

    if-le v1, v6, :cond_1

    .line 323
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 325
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 326
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :goto_2
    :try_start_2
    new-instance v6, Lcom/amazonaws/AmazonClientException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to store object contents to disk: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 327
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 329
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 330
    :goto_3
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 335
    :goto_4
    :try_start_4
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 338
    :goto_5
    throw v6

    .line 330
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :cond_1
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 335
    :goto_6
    :try_start_6
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 349
    :goto_7
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v6

    goto :goto_0

    .line 331
    :catch_1
    move-exception v2

    .line 332
    .local v2, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_6

    .line 336
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 337
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_7

    .line 331
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catch_3
    move-exception v2

    .line 332
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_4

    .line 336
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 337
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_5

    .line 329
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    goto :goto_3

    .line 325
    :catch_5
    move-exception v2

    goto :goto_2
.end method

.method public getObjectSecurely(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 10
    .param p1, "req"    # Lcom/amazonaws/services/s3/model/GetObjectRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 135
    sget-object v5, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 139
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v2

    .line 140
    .local v2, "desiredRange":[J
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->isStrict()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    .line 141
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Range get is not allowed in strict crypto mode"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 142
    :cond_0
    invoke-static {v2}, Lcom/amazonaws/services/s3/internal/crypto/EncryptionUtils;->getAdjustedCryptoRange([J)[J

    move-result-object v1

    .line 143
    .local v1, "adjustedCryptoRange":[J
    if-eqz v1, :cond_1

    .line 144
    const/4 v5, 0x0

    aget-wide v6, v1, v5

    const/4 v5, 0x1

    aget-wide v8, v1, v5

    invoke-virtual {p1, v6, v7, v8, v9}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->setRange(JJ)V

    .line 146
    :cond_1
    iget-object v5, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v5, p1}, Lcom/amazonaws/services/s3/internal/S3Direct;->getObject(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    move-result-object v4

    .line 150
    .local v4, "retrieved":Lcom/amazonaws/services/s3/model/S3Object;
    if-nez v4, :cond_2

    .line 151
    const/4 v5, 0x0

    .line 153
    :goto_0
    return-object v5

    :cond_2
    :try_start_0
    invoke-direct {p0, p1, v2, v1, v4}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->decipher(Lcom/amazonaws/services/s3/model/GetObjectRequest;[J[JLcom/amazonaws/services/s3/model/S3Object;)Lcom/amazonaws/services/s3/model/S3Object;
    :try_end_0
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 158
    .local v0, "ace":Lcom/amazonaws/AmazonClientException;
    :try_start_1
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 162
    :goto_1
    throw v0

    .line 159
    :catch_1
    move-exception v3

    .line 160
    .local v3, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Safely ignoring"

    invoke-interface {v5, v6, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public initiateMultipartUploadSecurely(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;
    .locals 6
    .param p1, "req"    # Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    .line 386
    sget-object v4, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, p1, v4}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 389
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->createContentCryptoMaterial(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v0

    .line 390
    .local v0, "cekMaterial":Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getStorageMode()Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    move-result-object v4

    sget-object v5, Lcom/amazonaws/services/s3/model/CryptoStorageMode;->ObjectMetadata:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    if-ne v4, v5, :cond_1

    .line 391
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v1

    .line 392
    .local v1, "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    if-nez v1, :cond_0

    .line 393
    new-instance v1, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .end local v1    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 395
    .restart local v1    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->updateMetadataWithContentCryptoMaterial(Lcom/amazonaws/services/s3/model/ObjectMetadata;Ljava/io/File;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->setObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 398
    .end local v1    # "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :cond_1
    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/s3/internal/S3Direct;->initiateMultipartUpload(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    move-result-object v2

    .line 399
    .local v2, "result":Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;
    new-instance v3, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;

    .line 400
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;)V

    .line 401
    .local v3, "uploadContext":Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;
    iget-object v4, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->multipartUploadContexts:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->getUploadId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    return-object v2
.end method

.method protected isStrict()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method protected final newMultipartS3CipherInputStream(Lcom/amazonaws/services/s3/model/UploadPartRequest;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;)Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;
    .locals 8
    .param p1, "req"    # Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .param p2, "cipherLite"    # Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    .prologue
    .line 465
    :try_start_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 466
    .local v0, "is":Ljava/io/InputStream;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 467
    new-instance v0, Lcom/amazonaws/services/s3/internal/InputSubstream;

    .end local v0    # "is":Ljava/io/InputStream;
    new-instance v1, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;

    .line 469
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;-><init>(Ljava/io/File;)V

    .line 470
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFileOffset()J

    move-result-wide v2

    .line 471
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v4

    .line 472
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->isLastPart()Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/services/s3/internal/InputSubstream;-><init>(Ljava/io/InputStream;JJZ)V

    .line 475
    .restart local v0    # "is":Ljava/io/InputStream;
    :cond_0
    new-instance v1, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;

    const/16 v4, 0x800

    const/4 v5, 0x1

    .line 477
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->isLastPart()Z

    move-result v6

    move-object v2, v0

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;IZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    return-object v1

    .line 478
    .end local v0    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v7

    .line 479
    .local v7, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create cipher input stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 480
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
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
    .line 110
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 112
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->cryptoConfig:Lcom/amazonaws/services/s3/model/CryptoConfiguration;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/CryptoConfiguration;->getStorageMode()Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    move-result-object v0

    sget-object v1, Lcom/amazonaws/services/s3/model/CryptoStorageMode;->InstructionFile:Lcom/amazonaws/services/s3/model/CryptoStorageMode;

    if-ne v0, v1, :cond_0

    .line 113
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->putObjectUsingInstructionFile(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->putObjectUsingMetadata(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    move-result-object v0

    goto :goto_0
.end method

.method protected securityCheck(Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;)V
    .locals 0
    .param p1, "cekMaterial"    # Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .param p2, "retrieved"    # Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;

    .prologue
    .line 105
    return-void
.end method

.method public uploadPartSecurely(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;
    .locals 14
    .param p1, "req"    # Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    const/4 v9, 0x1

    .line 417
    sget-object v10, Lcom/amazonaws/services/s3/AmazonS3EncryptionClient;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {p0, p1, v10}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->appendUserAgent(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 418
    iget-object v10, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->contentCryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v10}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getBlockSizeInBytes()I

    move-result v0

    .line 419
    .local v0, "blockSize":I
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->isLastPart()Z

    move-result v2

    .line 420
    .local v2, "isLastPart":Z
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v8

    .line 421
    .local v8, "uploadId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v4

    .line 422
    .local v4, "partSize":J
    int-to-long v10, v0

    rem-long v10, v4, v10

    cmp-long v10, v12, v10

    if-nez v10, :cond_0

    move v3, v9

    .line 423
    .local v3, "partSizeMultipleOfCipherBlockSize":Z
    :goto_0
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    .line 424
    new-instance v9, Lcom/amazonaws/AmazonClientException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid part size: part sizes for encrypted multipart uploads must be multiples of the cipher block size ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") with the exception of the last part."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 422
    .end local v3    # "partSizeMultipleOfCipherBlockSize":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 433
    .restart local v3    # "partSizeMultipleOfCipherBlockSize":Z
    :cond_1
    iget-object v10, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->multipartUploadContexts:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;

    .line 434
    .local v7, "uploadContext":Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;
    if-nez v7, :cond_2

    .line 435
    new-instance v9, Lcom/amazonaws/AmazonClientException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No client-side information available on upload ID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 439
    :cond_2
    invoke-virtual {v7}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->getCipherLite()Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object v1

    .line 440
    .local v1, "cipherLite":Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    invoke-virtual {p0, p1, v1}, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->newMultipartS3CipherInputStream(Lcom/amazonaws/services/s3/model/UploadPartRequest;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;)Lcom/amazonaws/services/s3/internal/crypto/CipherLiteInputStream;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setInputStream(Ljava/io/InputStream;)V

    .line 443
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setFile(Ljava/io/File;)V

    .line 444
    invoke-virtual {p1, v12, v13}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setFileOffset(J)V

    .line 447
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->isLastPart()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 449
    iget-object v10, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->contentCryptoScheme:Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    invoke-virtual {v10}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getTagLengthInBits()I

    move-result v10

    div-int/lit8 v10, v10, 0x8

    int-to-long v10, v10

    add-long/2addr v10, v4

    invoke-virtual {p1, v10, v11}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->setPartSize(J)V

    .line 450
    invoke-virtual {v7}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->hasFinalPartBeenSeen()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 451
    new-instance v9, Lcom/amazonaws/AmazonClientException;

    const-string v10, "This part was specified as the last part in a multipart upload, but a previous part was already marked as the last part.  Only the last part of the upload should be marked as the last part."

    invoke-direct {v9, v10}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 455
    :cond_3
    invoke-virtual {v7, v9}, Lcom/amazonaws/services/s3/internal/crypto/MultipartUploadCryptoContext;->setHasFinalPartBeenSeen(Z)V

    .line 458
    :cond_4
    iget-object v9, p0, Lcom/amazonaws/services/s3/internal/crypto/S3CryptoModuleAE;->s3:Lcom/amazonaws/services/s3/internal/S3Direct;

    invoke-virtual {v9, p1}, Lcom/amazonaws/services/s3/internal/S3Direct;->uploadPart(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;

    move-result-object v6

    .line 459
    .local v6, "result":Lcom/amazonaws/services/s3/model/UploadPartResult;
    return-object v6
.end method
