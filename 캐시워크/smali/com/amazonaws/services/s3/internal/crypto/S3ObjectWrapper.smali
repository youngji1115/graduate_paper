.class Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;
.super Ljava/lang/Object;
.source "S3ObjectWrapper.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final s3obj:Lcom/amazonaws/services/s3/model/S3Object;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/s3/model/S3Object;)V
    .locals 1
    .param p1, "s3obj"    # Lcom/amazonaws/services/s3/model/S3Object;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->s3obj:Lcom/amazonaws/services/s3/model/S3Object;

    .line 42
    return-void
.end method

.method private static from(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    if-nez p0, :cond_0

    .line 131
    const-string v3, ""

    .line 143
    :goto_0
    return-object v3

    .line 132
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v4, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 137
    .local v1, "reader":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 141
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

    .line 143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->s3obj:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->close()V

    .line 149
    return-void
.end method

.method encryptionSchemeOf(Ljava/util/Map;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "instructionFile":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 165
    const-string/jumbo v3, "x-amz-cek-alg"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 166
    .local v0, "cekAlgo":Ljava/lang/String;
    invoke-static {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->fromCEKAlgo(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object v3

    .line 171
    :goto_0
    return-object v3

    .line 168
    .end local v0    # "cekAlgo":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->s3obj:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v1

    .line 169
    .local v1, "meta":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getUserMetadata()Ljava/util/Map;

    move-result-object v2

    .line 170
    .local v2, "userMeta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "x-amz-cek-alg"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 171
    .restart local v0    # "cekAlgo":Ljava/lang/String;
    invoke-static {v0}, Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;->fromCEKAlgo(Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/crypto/ContentCryptoScheme;

    move-result-object v3

    goto :goto_0
.end method

.method getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->s3obj:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getBucketName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->s3obj:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->s3obj:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v0

    return-object v0
.end method

.method getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->s3obj:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    return-object v0
.end method

.method getRedirectLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->s3obj:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getRedirectLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getS3Object()Lcom/amazonaws/services/s3/model/S3Object;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->s3obj:Lcom/amazonaws/services/s3/model/S3Object;

    return-object v0
.end method

.method final hasEncryptionInfo()Z
    .locals 3

    .prologue
    .line 108
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->s3obj:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    .line 109
    .local v0, "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getUserMetadata()Ljava/util/Map;

    move-result-object v1

    .line 110
    .local v1, "userMeta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    const-string/jumbo v2, "x-amz-iv"

    .line 111
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "x-amz-key-v2"

    .line 112
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "x-amz-key"

    .line 113
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 110
    :goto_0
    return v2

    .line 113
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method final isInstructionFile()Z
    .locals 3

    .prologue
    .line 97
    iget-object v2, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->s3obj:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v0

    .line 98
    .local v0, "metadata":Lcom/amazonaws/services/s3/model/ObjectMetadata;
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getUserMetadata()Ljava/util/Map;

    move-result-object v1

    .line 99
    .local v1, "userMeta":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    const-string/jumbo v2, "x-amz-crypto-instr-file"

    .line 100
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 99
    :goto_0
    return v2

    .line 100
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method setBucketName(Ljava/lang/String;)V
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->s3obj:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/S3Object;->setBucketName(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method setKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->s3obj:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/S3Object;->setKey(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method setObjectContent(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V
    .locals 1
    .param p1, "objectContent"    # Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->s3obj:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/S3Object;->setObjectContent(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V

    .line 58
    return-void
.end method

.method setObjectContent(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "objectContent"    # Ljava/io/InputStream;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->s3obj:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/S3Object;->setObjectContent(Ljava/io/InputStream;)V

    .line 62
    return-void
.end method

.method setObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 1
    .param p1, "metadata"    # Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->s3obj:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/S3Object;->setObjectMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 50
    return-void
.end method

.method setRedirectLocation(Ljava/lang/String;)V
    .locals 1
    .param p1, "redirectLocation"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->s3obj:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/S3Object;->setRedirectLocation(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method toJsonString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->s3obj:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->from(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/crypto/S3ObjectWrapper;->s3obj:Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
