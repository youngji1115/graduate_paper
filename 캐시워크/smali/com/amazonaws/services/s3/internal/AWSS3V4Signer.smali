.class public Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;
.super Lcom/amazonaws/auth/AWS4Signer;
.source "AWSS3V4Signer.java"


# static fields
.field private static final CONTENT_SHA_256:Ljava/lang/String; = "STREAMING-AWS4-HMAC-SHA256-PAYLOAD"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amazonaws/auth/AWS4Signer;-><init>(Z)V

    .line 42
    return-void
.end method

.method static getContentLength(Lcom/amazonaws/Request;)J
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    const/4 v8, -0x1

    .line 135
    invoke-interface {p0}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 136
    .local v0, "content":Ljava/io/InputStream;
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v5

    if-nez v5, :cond_0

    .line 137
    new-instance v5, Lcom/amazonaws/AmazonClientException;

    const-string v6, "Failed to get content length"

    invoke-direct {v5, v6}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 140
    :cond_0
    const-wide/16 v2, 0x0

    .line 141
    .local v2, "contentLength":J
    const/16 v5, 0x1000

    new-array v4, v5, [B

    .line 143
    .local v4, "tmp":[B
    invoke-virtual {v0, v8}, Ljava/io/InputStream;->mark(I)V

    .line 144
    :goto_0
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "read":I
    if-eq v1, v8, :cond_1

    .line 145
    int-to-long v6, v1

    add-long/2addr v2, v6

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 149
    return-wide v2
.end method

.method private static useChunkEncoding(Lcom/amazonaws/Request;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    const/4 v0, 0x0

    .line 122
    .local v0, "chunkedEncodingEnabled":Z
    invoke-interface {p0}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v1

    instance-of v1, v1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    if-nez v1, :cond_0

    .line 123
    invoke-interface {p0}, Lcom/amazonaws/Request;->getOriginalRequest()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v1

    instance-of v1, v1, Lcom/amazonaws/services/s3/model/UploadPartRequest;

    if-eqz v1, :cond_1

    .line 124
    :cond_0
    const/4 v0, 0x1

    .line 126
    :cond_1
    return v0
.end method


# virtual methods
.method protected calculateContentHash(Lcom/amazonaws/Request;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    const-string/jumbo v4, "x-amz-content-sha256"

    const-string v5, "required"

    invoke-interface {p1, v4, v5}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;->useChunkEncoding(Lcom/amazonaws/Request;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    invoke-interface {p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v4

    const-string v5, "Content-Length"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    .local v0, "contentLength":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 84
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 103
    .local v2, "originalContentLength":J
    :goto_0
    const-string/jumbo v4, "x-amz-decoded-content-length"

    .line 104
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 103
    invoke-interface {p1, v4, v5}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v4, "Content-Length"

    .line 110
    invoke-static {v2, v3}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->calculateStreamContentLength(J)J

    move-result-wide v6

    .line 109
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 107
    invoke-interface {p1, v4, v5}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v4, "STREAMING-AWS4-HMAC-SHA256-PAYLOAD"

    .line 113
    .end local v0    # "contentLength":Ljava/lang/String;
    .end local v2    # "originalContentLength":J
    :goto_1
    return-object v4

    .line 96
    .restart local v0    # "contentLength":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;->getContentLength(Lcom/amazonaws/Request;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .restart local v2    # "originalContentLength":J
    goto :goto_0

    .line 97
    .end local v2    # "originalContentLength":J
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Lcom/amazonaws/AmazonClientException;

    const-string v5, "Cannot get the content-lenght of the request content."

    invoke-direct {v4, v5, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 113
    .end local v0    # "contentLength":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    invoke-super {p0, p1}, Lcom/amazonaws/auth/AWS4Signer;->calculateContentHash(Lcom/amazonaws/Request;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method protected calculateContentHashPresign(Lcom/amazonaws/Request;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    const-string v0, "UNSIGNED-PAYLOAD"

    return-object v0
.end method

.method protected processRequestPayload(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;)V
    .locals 7
    .param p2, "headerSigningResult"    # Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request",
            "<*>;",
            "Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "request":Lcom/amazonaws/Request;, "Lcom/amazonaws/Request<*>;"
    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;->useChunkEncoding(Lcom/amazonaws/Request;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 51
    invoke-interface {p1}, Lcom/amazonaws/Request;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 52
    .local v1, "payloadStream":Ljava/io/InputStream;
    invoke-virtual {p2}, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->getDateTime()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "dateTime":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->getScope()Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "keyPath":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->getKSigning()[B

    move-result-object v2

    .line 56
    .local v2, "kSigning":[B
    invoke-virtual {p2}, Lcom/amazonaws/auth/AWS4Signer$HeaderSigningResult;->getSignature()[B

    move-result-object v6

    .line 55
    invoke-static {v6}, Lcom/amazonaws/util/BinaryUtils;->toHex([B)Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, "signature":Ljava/lang/String;
    new-instance v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;-><init>(Ljava/io/InputStream;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/auth/AWS4Signer;)V

    .line 59
    .local v0, "chunkEncodededStream":Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;
    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->setContent(Ljava/io/InputStream;)V

    .line 61
    .end local v0    # "chunkEncodededStream":Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;
    .end local v1    # "payloadStream":Ljava/io/InputStream;
    .end local v2    # "kSigning":[B
    .end local v3    # "dateTime":Ljava/lang/String;
    .end local v4    # "keyPath":Ljava/lang/String;
    .end local v5    # "signature":Ljava/lang/String;
    :cond_0
    return-void
.end method
