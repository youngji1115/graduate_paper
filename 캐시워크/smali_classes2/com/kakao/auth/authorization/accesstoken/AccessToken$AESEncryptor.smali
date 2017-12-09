.class Lcom/kakao/auth/authorization/accesstoken/AccessToken$AESEncryptor;
.super Ljava/lang/Object;
.source "AccessToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/auth/authorization/accesstoken/AccessToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AESEncryptor"
.end annotation


# static fields
.field private static final CHAR_SET:Ljava/lang/String; = "UTF-8"

.field private static final ITER_COUNT:I = 0x2

.field private static final IV_PARAMETER_SPEC:Ljavax/crypto/spec/IvParameterSpec;

.field private static final KEY_LENGTH:I = 0x100

.field private static final algorithm:Ljava/lang/String; = "AES"

.field private static final cipherAlgorithm:Ljava/lang/String;

.field private static final initVector:[B

.field private static final keyGenAlgorithm:Ljava/lang/String;


# instance fields
.field private decryptor:Ljavax/crypto/Cipher;

.field private encryptor:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 281
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kakao/auth/authorization/accesstoken/AccessToken$AESEncryptor;->initVector:[B

    .line 284
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v1, Lcom/kakao/auth/authorization/accesstoken/AccessToken$AESEncryptor;->initVector:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v0, Lcom/kakao/auth/authorization/accesstoken/AccessToken$AESEncryptor;->IV_PARAMETER_SPEC:Ljavax/crypto/spec/IvParameterSpec;

    .line 286
    const-string v0, "My0oeSI1IzInbyA+LVFaW2wiNSokPAMiMipOLS4="

    invoke-static {v0}, Lcom/kakao/auth/authorization/accesstoken/AccessToken$Utils;->base64DecodeAndXor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakao/auth/authorization/accesstoken/AccessToken$AESEncryptor;->keyGenAlgorithm:Ljava/lang/String;

    .line 287
    const-string v0, "Iio+ASgjKE4/ZSIjXDMOCUoCDww="

    invoke-static {v0}, Lcom/kakao/auth/authorization/accesstoken/AccessToken$Utils;->base64DecodeAndXor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakao/auth/authorization/accesstoken/AccessToken$AESEncryptor;->cipherAlgorithm:Ljava/lang/String;

    return-void

    .line 281
    nop

    :array_0
    .array-data 1
        0x70t
        0x4et
        0x4bt
        0x37t
        -0x36t
        -0x1et
        -0xat
        0x2ct
        0x66t
        -0x7et
        -0x7et
        0x5ct
        -0x74t
        -0x30t
        -0x7bt
        -0x37t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;[B)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "salt"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x2

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    invoke-static {p1}, Lcom/kakao/util/helper/Utility;->getKeyHash(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, "keyValue":Ljava/lang/String;
    sget-object v7, Lcom/kakao/auth/authorization/accesstoken/AccessToken$AESEncryptor;->keyGenAlgorithm:Ljava/lang/String;

    invoke-static {v7}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 299
    .local v1, "factory":Ljavax/crypto/SecretKeyFactory;
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v3, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    const/16 v8, 0x100

    invoke-direct {v2, v7, p2, v10, v8}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 300
    .local v2, "keySpec":Ljava/security/spec/KeySpec;
    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 301
    .local v6, "tmp":Ljavax/crypto/SecretKey;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v6}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v7

    const-string v8, "AES"

    invoke-direct {v4, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 303
    .local v4, "secret":Ljavax/crypto/SecretKey;
    sget-object v7, Lcom/kakao/auth/authorization/accesstoken/AccessToken$AESEncryptor;->cipherAlgorithm:Ljava/lang/String;

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    iput-object v7, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken$AESEncryptor;->encryptor:Ljavax/crypto/Cipher;

    .line 304
    sget-object v7, Lcom/kakao/auth/authorization/accesstoken/AccessToken$AESEncryptor;->cipherAlgorithm:Ljava/lang/String;

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    iput-object v7, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken$AESEncryptor;->decryptor:Ljavax/crypto/Cipher;

    .line 307
    :try_start_0
    iget-object v7, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken$AESEncryptor;->encryptor:Ljavax/crypto/Cipher;

    const/4 v8, 0x1

    sget-object v9, Lcom/kakao/auth/authorization/accesstoken/AccessToken$AESEncryptor;->IV_PARAMETER_SPEC:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v7, v8, v4, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 308
    iget-object v7, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken$AESEncryptor;->decryptor:Ljavax/crypto/Cipher;

    const/4 v8, 0x2

    sget-object v9, Lcom/kakao/auth/authorization/accesstoken/AccessToken$AESEncryptor;->IV_PARAMETER_SPEC:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v7, v8, v4, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v6}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v7

    invoke-interface {v6}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v8

    array-length v8, v8

    div-int/lit8 v8, v8, 0x2

    invoke-static {v7, v11, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    const-string v8, "AES"

    invoke-direct {v5, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 312
    .local v5, "shorterSecret":Ljavax/crypto/SecretKey;
    iget-object v7, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken$AESEncryptor;->encryptor:Ljavax/crypto/Cipher;

    sget-object v8, Lcom/kakao/auth/authorization/accesstoken/AccessToken$AESEncryptor;->IV_PARAMETER_SPEC:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v7, v12, v5, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 313
    iget-object v7, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken$AESEncryptor;->decryptor:Ljavax/crypto/Cipher;

    sget-object v8, Lcom/kakao/auth/authorization/accesstoken/AccessToken$AESEncryptor;->IV_PARAMETER_SPEC:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v7, v10, v5, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0
.end method


# virtual methods
.method decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "encrypted"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    iget-object v1, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken$AESEncryptor;->decryptor:Ljavax/crypto/Cipher;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 332
    .local v0, "original":[B
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    iget-object v1, p0, Lcom/kakao/auth/authorization/accesstoken/AccessToken$AESEncryptor;->encryptor:Ljavax/crypto/Cipher;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 323
    .local v0, "encrypted":[B
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
