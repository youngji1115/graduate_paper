.class final Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
.super Ljava/lang/Object;
.source "ContentCryptoMaterial.java"


# instance fields
.field private final cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

.field private final encryptedCEK:[B

.field private final kekMaterialsDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final keyWrappingAlgorithm:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Map;[BLjava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;)V
    .locals 1
    .param p2, "encryptedCEK"    # [B
    .param p3, "keyWrappingAlgorithm"    # Ljava/lang/String;
    .param p4, "cipherLite"    # Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/s3/internal/crypto/CipherLite;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "kekMaterialsDescription":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p4, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    .line 61
    iput-object p3, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->keyWrappingAlgorithm:Ljava/lang/String;

    .line 62
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->encryptedCEK:[B

    .line 63
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->kekMaterialsDescription:Ljava/util/Map;

    .line 64
    return-void
.end method

.method private static cek([BLjava/lang/String;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Ljavax/crypto/SecretKey;
    .locals 7
    .param p0, "cekSecured"    # [B
    .param p1, "keyWrapAlgo"    # Ljava/lang/String;
    .param p2, "materials"    # Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    .param p3, "securityProvider"    # Ljava/security/Provider;

    .prologue
    .line 172
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getKeyPair()Ljava/security/KeyPair;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 174
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getKeyPair()Ljava/security/KeyPair;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    .line 181
    .local v3, "kek":Ljava/security/Key;
    :goto_0
    if-eqz p1, :cond_2

    .line 183
    if-nez p3, :cond_1

    .line 184
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 186
    .local v0, "cipher":Ljavax/crypto/Cipher;
    :goto_1
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 187
    const/4 v4, 0x3

    invoke-virtual {v0, p0, p1, v4}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v4

    check-cast v4, Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_2
    return-object v4

    .line 177
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "kek":Ljava/security/Key;
    :cond_0
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/EncryptionMaterials;->getSymmetricKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    .restart local v3    # "kek":Ljava/security/Key;
    goto :goto_0

    .line 184
    :cond_1
    :try_start_1
    invoke-static {p1, p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    goto :goto_1

    .line 192
    :cond_2
    if-eqz p3, :cond_3

    .line 193
    invoke-interface {v3}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 198
    .restart local v0    # "cipher":Ljavax/crypto/Cipher;
    :goto_3
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 199
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 200
    .local v1, "decryptedSymmetricKeyBytes":[B
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v5, Lcom/amazonaws/services/s3/internal/crypto/JceEncryptionConstants;->SYMMETRIC_KEY_ALGORITHM:Ljava/lang/String;

    invoke-direct {v4, v1, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 202
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "decryptedSymmetricKeyBytes":[B
    :catch_0
    move-exception v2

    .line 203
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/amazonaws/AmazonClientException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to decrypt symmetric key from object metadata : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 205
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 196
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    invoke-interface {v3}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .restart local v0    # "cipher":Ljavax/crypto/Cipher;
    goto :goto_3
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
    .line 363
    if-nez p0, :cond_0

    .line 364
    const-string v3, ""

    .line 377
    :goto_0
    return-object v3

    .line 366
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v4, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 371
    .local v1, "reader":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 372
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 375
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

    .line 377
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method static fromInstructionFile(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;[J)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .locals 1
    .param p1, "kekMaterialAccessor"    # Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;
    .param p2, "securityProvider"    # Ljava/security/Provider;
    .param p3, "range"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;",
            "Ljava/security/Provider;",
            "[J)",
            "Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, "instFile":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->fromInstructionFile0(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;[J)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    move-result-object v0

    return-object v0
.end method

.method private static fromInstructionFile0(Ljava/util/Map;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;[J)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .locals 19
    .param p1, "kekMaterialAccessor"    # Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;
    .param p2, "securityProvider"    # Ljava/security/Provider;
    .param p3, "range"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;",
            "Ljava/security/Provider;",
            "[J)",
            "Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v16, "x-amz-key-v2"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 293
    .local v2, "b64key":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 294
    const-string/jumbo v16, "x-amz-key"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "b64key":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 295
    .restart local v2    # "b64key":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 296
    new-instance v16, Lcom/amazonaws/AmazonClientException;

    const-string v17, "Content encrypting key not found."

    invoke-direct/range {v16 .. v17}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 298
    :cond_0
    invoke-static {v2}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v5

    .line 299
    .local v5, "cekWrapped":[B
    const-string/jumbo v16, "x-amz-iv"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v8

    .line 300
    .local v8, "iv":[B
    if-eqz v5, :cond_1

    if-nez v8, :cond_2

    .line 301
    :cond_1
    new-instance v16, Lcom/amazonaws/AmazonClientException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Necessary encryption info not found in the instruction file "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 306
    :cond_2
    const-string/jumbo v16, "x-amz-matdesc"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 307
    .local v11, "matdescStr":Ljava/lang/String;
    invoke-static {v11}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->matdescFromJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    .line 308
    .local v10, "matdesc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_3

    const/4 v12, 0x0

    .line 311
    .local v12, "materials":Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    :goto_0
    if-nez v12, :cond_4

    .line 312
    new-instance v16, Lcom/amazonaws/AmazonClientException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unable to retrieve the encryption materials that originally encrypted object corresponding to instruction file "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 310
    .end local v12    # "materials":Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    :cond_3
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;->getEncryptionMaterials(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v12

    goto :goto_0

    .line 317
    .restart local v12    # "materials":Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    :cond_4
    const-string/jumbo v16, "x-amz-cek-alg"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 318
    .local v4, "cekAlgo":Ljava/lang/String;
    if-eqz p3, :cond_6

    const/4 v7, 0x1

    .line 322
    .local v7, "isRangeGet":Z
    :goto_1
    invoke-static {v4, v7}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->fromCEKAlgo(Ljava/lang/String;Z)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object v6

    .line 323
    .local v6, "contentCryptoScheme":Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
    if-eqz v7, :cond_7

    .line 325
    const/16 v16, 0x0

    aget-wide v16, p3, v16

    move-wide/from16 v0, v16

    invoke-virtual {v6, v8, v0, v1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->adjustIV([BJ)[B

    move-result-object v8

    .line 339
    :cond_5
    const-string/jumbo v16, "x-amz-wrap-alg"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 340
    .local v9, "keyWrapAlgo":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-static {v5, v9, v12, v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->cek([BLjava/lang/String;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 341
    .local v3, "cek":Ljavax/crypto/SecretKey;
    new-instance v16, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    const/16 v17, 0x2

    .line 342
    move/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v6, v3, v8, v0, v1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->createCipherLite(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v10, v5, v9, v1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;-><init>(Ljava/util/Map;[BLjava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;)V

    .line 341
    return-object v16

    .line 318
    .end local v3    # "cek":Ljavax/crypto/SecretKey;
    .end local v6    # "contentCryptoScheme":Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
    .end local v7    # "isRangeGet":Z
    .end local v9    # "keyWrapAlgo":Ljava/lang/String;
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 328
    .restart local v6    # "contentCryptoScheme":Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
    .restart local v7    # "isRangeGet":Z
    :cond_7
    invoke-virtual {v6}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getTagLengthInBits()I

    move-result v15

    .line 329
    .local v15, "tagLenExpected":I
    if-lez v15, :cond_5

    .line 330
    const-string/jumbo v16, "x-amz-tag-len"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 331
    .local v13, "s":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 332
    .local v14, "tagLenActual":I
    if-eq v15, v14, :cond_5

    .line 333
    new-instance v16, Lcom/amazonaws/AmazonClientException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unsupported tag length: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", expected: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v16
.end method

.method static fromObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;Ljava/security/Provider;[J)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;
    .locals 20
    .param p0, "metadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .param p1, "kekMaterialAccessor"    # Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;
    .param p2, "securityProvider"    # Ljava/security/Provider;
    .param p3, "range"    # [J

    .prologue
    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getUserMetadata()Ljava/util/Map;

    move-result-object v16

    .line 221
    .local v16, "userMeta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v17, "x-amz-key-v2"

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 222
    .local v2, "b64key":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 223
    const-string/jumbo v17, "x-amz-key"

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "b64key":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 224
    .restart local v2    # "b64key":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 225
    new-instance v17, Lcom/amazonaws/AmazonClientException;

    const-string v18, "Content encrypting key not found."

    invoke-direct/range {v17 .. v18}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 227
    :cond_0
    invoke-static {v2}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v5

    .line 228
    .local v5, "cekWrapped":[B
    const-string/jumbo v17, "x-amz-iv"

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v8

    .line 229
    .local v8, "iv":[B
    if-eqz v5, :cond_1

    if-nez v8, :cond_2

    .line 230
    :cond_1
    new-instance v17, Lcom/amazonaws/AmazonClientException;

    const-string v18, "Content encrypting key or IV not found."

    invoke-direct/range {v17 .. v18}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 233
    :cond_2
    const-string/jumbo v17, "x-amz-matdesc"

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 234
    .local v11, "matdescStr":Ljava/lang/String;
    invoke-static {v11}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->matdescFromJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    .line 235
    .local v10, "matdesc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_3

    const/4 v12, 0x0

    .line 238
    .local v12, "materials":Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    :goto_0
    if-nez v12, :cond_4

    .line 239
    new-instance v17, Lcom/amazonaws/AmazonClientException;

    const-string v18, "Unable to retrieve the client encryption materials"

    invoke-direct/range {v17 .. v18}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 237
    .end local v12    # "materials":Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    :cond_3
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Lcom/amazonaws/services/s3/model/EncryptionMaterialsAccessor;->getEncryptionMaterials(Ljava/util/Map;)Lcom/amazonaws/services/s3/model/EncryptionMaterials;

    move-result-object v12

    goto :goto_0

    .line 243
    .restart local v12    # "materials":Lcom/amazonaws/services/s3/model/EncryptionMaterials;
    :cond_4
    const-string/jumbo v17, "x-amz-cek-alg"

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 244
    .local v4, "cekAlgo":Ljava/lang/String;
    if-eqz p3, :cond_6

    const/4 v7, 0x1

    .line 248
    .local v7, "isRangeGet":Z
    :goto_1
    invoke-static {v4, v7}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->fromCEKAlgo(Ljava/lang/String;Z)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object v6

    .line 249
    .local v6, "contentCryptoScheme":Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
    if-eqz v7, :cond_7

    .line 251
    const/16 v17, 0x0

    aget-wide v18, p3, v17

    move-wide/from16 v0, v18

    invoke-virtual {v6, v8, v0, v1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->adjustIV([BJ)[B

    move-result-object v8

    .line 265
    :cond_5
    const-string/jumbo v17, "x-amz-wrap-alg"

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 266
    .local v9, "keyWrapAlgo":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-static {v5, v9, v12, v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->cek([BLjava/lang/String;Lcom/amazonaws/services/s3/model/EncryptionMaterials;Ljava/security/Provider;)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 268
    .local v3, "cek":Ljavax/crypto/SecretKey;
    new-instance v17, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;

    const/16 v18, 0x2

    .line 269
    move/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v6, v3, v8, v0, v1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->createCipherLite(Ljavax/crypto/SecretKey;[BILjava/security/Provider;)Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v10, v5, v9, v1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;-><init>(Ljava/util/Map;[BLjava/lang/String;Lcom/amazonaws/services/s3/internal/crypto/CipherLite;)V

    .line 268
    return-object v17

    .line 244
    .end local v3    # "cek":Ljavax/crypto/SecretKey;
    .end local v6    # "contentCryptoScheme":Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
    .end local v7    # "isRangeGet":Z
    .end local v9    # "keyWrapAlgo":Ljava/lang/String;
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 254
    .restart local v6    # "contentCryptoScheme":Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
    .restart local v7    # "isRangeGet":Z
    :cond_7
    invoke-virtual {v6}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getTagLengthInBits()I

    move-result v15

    .line 255
    .local v15, "tagLenExpected":I
    if-lez v15, :cond_5

    .line 256
    const-string/jumbo v17, "x-amz-tag-len"

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 257
    .local v13, "s":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 258
    .local v14, "tagLenActual":I
    if-eq v15, v14, :cond_5

    .line 259
    new-instance v17, Lcom/amazonaws/AmazonClientException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unsupported tag length: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", expected: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v17
.end method

.method private kekMaterialDescAsJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->getKEKMaterialsDescription()Ljava/util/Map;

    move-result-object v0

    .line 140
    .local v0, "kekMaterialDesc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 141
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 142
    :cond_0
    invoke-static {v0}, Lcom/amazonaws/util/json/JsonUtils;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static matdescFromJson(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p0, "json"    # Ljava/lang/String;
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
    const/4 v1, 0x0

    .line 150
    if-nez p0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-object v1

    .line 153
    :cond_1
    invoke-static {p0}, Lcom/amazonaws/util/json/JsonUtils;->jsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 154
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    goto :goto_0
.end method

.method static parseInstructionFile(Lcom/amazonaws/services/s3/model/S3Object;)Ljava/lang/String;
    .locals 4
    .param p0, "instructionFile"    # Lcom/amazonaws/services/s3/model/S3Object;

    .prologue
    .line 352
    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing JSON instruction file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 355
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method getCipherLite()Lcom/amazonaws/services/s3/internal/crypto/CipherLite;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    return-object v0
.end method

.method getContentCryptoScheme()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->getContentCryptoScheme()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object v0

    return-object v0
.end method

.method getEncryptedCEK()[B
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->encryptedCEK:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method getKEKMaterialsDescription()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->kekMaterialsDescription:Ljava/util/Map;

    return-object v0
.end method

.method getKeyWrappingAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->keyWrappingAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method toJsonString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 114
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 115
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->getEncryptedCEK()[B

    move-result-object v0

    .line 116
    .local v0, "encryptedCEK":[B
    const-string/jumbo v6, "x-amz-key-v2"

    invoke-static {v0}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v6, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v6}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->getIV()[B

    move-result-object v1

    .line 118
    .local v1, "iv":[B
    const-string/jumbo v6, "x-amz-iv"

    invoke-static {v1}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string/jumbo v6, "x-amz-matdesc"

    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->kekMaterialDescAsJson()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->getContentCryptoScheme()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object v4

    .line 124
    .local v4, "scheme":Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
    const-string/jumbo v6, "x-amz-cek-alg"

    invoke-virtual {v4}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getCipherAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getTagLengthInBits()I

    move-result v5

    .line 126
    .local v5, "tagLen":I
    if-lez v5, :cond_0

    .line 127
    const-string/jumbo v6, "x-amz-tag-len"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->getKeyWrappingAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "keyWrapAlgo":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 130
    const-string/jumbo v6, "x-amz-wrap-alg"

    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_1
    invoke-static {v3}, Lcom/amazonaws/util/json/JsonUtils;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method toObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 7
    .param p1, "metadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->getEncryptedCEK()[B

    move-result-object v0

    .line 88
    .local v0, "encryptedCEK":[B
    const-string/jumbo v5, "x-amz-key-v2"

    .line 89
    invoke-static {v0}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v6

    .line 88
    invoke-virtual {p1, v5, v6}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v5, p0, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->cipherLite:Lcom/amazonaws/services/s3/internal/crypto/CipherLite;

    invoke-virtual {v5}, Lcom/amazonaws/services/s3/internal/crypto/CipherLite;->getIV()[B

    move-result-object v1

    .line 92
    .local v1, "iv":[B
    const-string/jumbo v5, "x-amz-iv"

    invoke-static {v1}, Lcom/amazonaws/util/Base64;->encodeAsString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string/jumbo v5, "x-amz-matdesc"

    .line 95
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->kekMaterialDescAsJson()Ljava/lang/String;

    move-result-object v6

    .line 94
    invoke-virtual {p1, v5, v6}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->getContentCryptoScheme()Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object v3

    .line 100
    .local v3, "scheme":Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
    const-string/jumbo v5, "x-amz-cek-alg"

    .line 101
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getCipherAlgorithm()Ljava/lang/String;

    move-result-object v6

    .line 100
    invoke-virtual {p1, v5, v6}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->getTagLengthInBits()I

    move-result v4

    .line 103
    .local v4, "tagLen":I
    if-lez v4, :cond_0

    .line 104
    const-string/jumbo v5, "x-amz-tag-len"

    .line 105
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 104
    invoke-virtual {p1, v5, v6}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoMaterial;->getKeyWrappingAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "keyWrapAlgo":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 108
    const-string/jumbo v5, "x-amz-wrap-alg"

    invoke-virtual {p1, v5, v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_1
    return-object p1
.end method
