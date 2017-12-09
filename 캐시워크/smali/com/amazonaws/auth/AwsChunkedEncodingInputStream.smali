.class public final Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;
.super Lcom/amazonaws/internal/SdkInputStream;
.source "AwsChunkedEncodingInputStream.java"


# static fields
.field private static final CHUNK_SIGNATURE_HEADER:Ljava/lang/String; = ";chunk-signature="

.field private static final CHUNK_STRING_TO_SIGN_PREFIX:Ljava/lang/String; = "AWS4-HMAC-SHA256-PAYLOAD"

.field private static final CLRF:Ljava/lang/String; = "\r\n"

.field private static final DEFAULT_BUFFER_SIZE:I = 0x40000

.field private static final DEFAULT_CHUNK_SIZE:I = 0x20000

.field protected static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final FINAL_CHUNK:[B

.field private static final SIGNATURE_LENGTH:I = 0x40

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final aws4Signer:Lcom/amazonaws/auth/AWS4Signer;

.field private currentChunkIterator:Lcom/amazonaws/auth/ChunkContentIterator;

.field private final dateTime:Ljava/lang/String;

.field private decodedStreamBuffer:Lcom/amazonaws/auth/DecodedStreamBuffer;

.field private final headerSignature:Ljava/lang/String;

.field private is:Ljava/io/InputStream;

.field private isAtStart:Z

.field private isTerminating:Z

.field private final kSigning:[B

.field private final keyPath:Ljava/lang/String;

.field private final maxBufferSize:I

.field private priorChunkSignature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->FINAL_CHUNK:[B

    .line 68
    const-class v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/auth/AWS4Signer;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "maxBufferSize"    # I
    .param p3, "kSigning"    # [B
    .param p4, "datetime"    # Ljava/lang/String;
    .param p5, "keyPath"    # Ljava/lang/String;
    .param p6, "headerSignature"    # Ljava/lang/String;
    .param p7, "aws4Signer"    # Lcom/amazonaws/auth/AWS4Signer;

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Lcom/amazonaws/internal/SdkInputStream;-><init>()V

    .line 46
    iput-object v2, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->is:Ljava/io/InputStream;

    .line 65
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->isAtStart:Z

    .line 66
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->isTerminating:Z

    .line 98
    instance-of v1, p1, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 101
    check-cast v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;

    .line 102
    .local v0, "originalChunkedStream":Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;
    iget v1, v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->maxBufferSize:I

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 103
    iget-object v1, v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->is:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->is:Ljava/io/InputStream;

    .line 104
    iget-object v1, v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->decodedStreamBuffer:Lcom/amazonaws/auth/DecodedStreamBuffer;

    iput-object v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->decodedStreamBuffer:Lcom/amazonaws/auth/DecodedStreamBuffer;

    .line 111
    .end local v0    # "originalChunkedStream":Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;
    :goto_0
    const/high16 v1, 0x20000

    if-ge p2, v1, :cond_1

    .line 112
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Max buffer size should not be less than chunk size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_0
    iput-object p1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->is:Ljava/io/InputStream;

    .line 108
    iput-object v2, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->decodedStreamBuffer:Lcom/amazonaws/auth/DecodedStreamBuffer;

    goto :goto_0

    .line 113
    :cond_1
    iput p2, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->maxBufferSize:I

    .line 114
    iput-object p3, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->kSigning:[B

    .line 115
    iput-object p4, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->dateTime:Ljava/lang/String;

    .line 116
    iput-object p5, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->keyPath:Ljava/lang/String;

    .line 117
    iput-object p6, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->headerSignature:Ljava/lang/String;

    .line 118
    iput-object p6, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->priorChunkSignature:Ljava/lang/String;

    .line 119
    iput-object p7, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->aws4Signer:Lcom/amazonaws/auth/AWS4Signer;

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/auth/AWS4Signer;)V
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "kSigning"    # [B
    .param p3, "datetime"    # Ljava/lang/String;
    .param p4, "keyPath"    # Ljava/lang/String;
    .param p5, "headerSignature"    # Ljava/lang/String;
    .param p6, "aws4Signer"    # Lcom/amazonaws/auth/AWS4Signer;

    .prologue
    .line 73
    const/high16 v2, 0x40000

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;-><init>(Ljava/io/InputStream;I[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/auth/AWS4Signer;)V

    .line 74
    return-void
.end method

.method private static calculateSignedChunkLength(J)J
    .locals 4
    .param p0, "chunkDataSize"    # J

    .prologue
    .line 264
    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, ";chunk-signature="

    .line 265
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x40

    const-string v1, "\r\n"

    .line 267
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, p0

    const-string v2, "\r\n"

    .line 269
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 264
    return-wide v0
.end method

.method public static calculateStreamContentLength(J)J
    .locals 10
    .param p0, "originalLength"    # J

    .prologue
    const-wide/32 v8, 0x20000

    const-wide/16 v6, 0x0

    .line 252
    cmp-long v4, p0, v6

    if-gez v4, :cond_0

    .line 253
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Nonnegative content length expected."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 256
    :cond_0
    div-long v0, p0, v8

    .line 257
    .local v0, "maxSizeChunks":J
    rem-long v2, p0, v8

    .line 258
    .local v2, "remainingBytes":J
    invoke-static {v8, v9}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->calculateSignedChunkLength(J)J

    move-result-wide v4

    mul-long v8, v0, v4

    cmp-long v4, v2, v6

    if-lez v4, :cond_1

    .line 259
    invoke-static {v2, v3}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->calculateSignedChunkLength(J)J

    move-result-wide v4

    :goto_0
    add-long/2addr v4, v8

    .line 260
    invoke-static {v6, v7}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->calculateSignedChunkLength(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 258
    return-wide v4

    :cond_1
    move-wide v4, v6

    .line 259
    goto :goto_0
.end method

.method private createSignedChunk([B)[B
    .locals 11
    .param p1, "chunkData"    # [B

    .prologue
    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .local v0, "chunkHeader":Ljava/lang/StringBuilder;
    array-length v8, p1

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const-string v5, ""

    .line 324
    .local v5, "nonsigExtension":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AWS4-HMAC-SHA256-PAYLOAD\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->dateTime:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->keyPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->priorChunkSignature:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->aws4Signer:Lcom/amazonaws/auth/AWS4Signer;

    .line 329
    invoke-virtual {v9, v5}, Lcom/amazonaws/auth/AWS4Signer;->hash(Ljava/lang/String;)[B

    move-result-object v9

    invoke-static {v9}, Lcom/amazonaws/util/BinaryUtils;->toHex([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->aws4Signer:Lcom/amazonaws/auth/AWS4Signer;

    .line 330
    invoke-virtual {v9, p1}, Lcom/amazonaws/auth/AWS4Signer;->hash([B)[B

    move-result-object v9

    invoke-static {v9}, Lcom/amazonaws/util/BinaryUtils;->toHex([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, "chunkStringToSign":Ljava/lang/String;
    iget-object v8, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->aws4Signer:Lcom/amazonaws/auth/AWS4Signer;

    iget-object v9, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->kSigning:[B

    sget-object v10, Lcom/amazonaws/auth/SigningAlgorithm;->HmacSHA256:Lcom/amazonaws/auth/SigningAlgorithm;

    invoke-virtual {v8, v2, v9, v10}, Lcom/amazonaws/auth/AWS4Signer;->sign(Ljava/lang/String;[BLcom/amazonaws/auth/SigningAlgorithm;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/amazonaws/util/BinaryUtils;->toHex([B)Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "chunkSignature":Ljava/lang/String;
    iput-object v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->priorChunkSignature:Ljava/lang/String;

    .line 334
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";chunk-signature="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const-string v8, "\r\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 339
    .local v4, "header":[B
    const-string v8, "\r\n"

    sget-object v9, Lcom/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    .line 340
    .local v7, "trailer":[B
    array-length v8, v4

    array-length v9, p1

    add-int/2addr v8, v9

    array-length v9, v7

    add-int/2addr v8, v9

    new-array v6, v8, [B

    .line 341
    .local v6, "signedChunk":[B
    const/4 v8, 0x0

    const/4 v9, 0x0

    array-length v10, v4

    invoke-static {v4, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    const/4 v8, 0x0

    array-length v9, v4

    array-length v10, p1

    invoke-static {p1, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    const/4 v8, 0x0

    array-length v9, v4

    array-length v10, p1

    add-int/2addr v9, v10

    array-length v10, v7

    invoke-static {v7, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    return-object v6

    .line 347
    .end local v4    # "header":[B
    .end local v6    # "signedChunk":[B
    .end local v7    # "trailer":[B
    :catch_0
    move-exception v3

    .line 348
    .local v3, "e":Ljava/lang/Exception;
    new-instance v8, Lcom/amazonaws/AmazonClientException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to sign the chunked data. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v3}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method private setUpNextChunk()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v10, 0x20000

    const/4 v8, 0x0

    .line 279
    new-array v1, v10, [B

    .line 280
    .local v1, "chunkData":[B
    const/4 v2, 0x0

    .local v2, "chunkSizeInBytes":I
    move v3, v2

    .line 281
    .end local v2    # "chunkSizeInBytes":I
    .local v3, "chunkSizeInBytes":I
    :goto_0
    if-ge v3, v10, :cond_2

    .line 283
    iget-object v9, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->decodedStreamBuffer:Lcom/amazonaws/auth/DecodedStreamBuffer;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->decodedStreamBuffer:Lcom/amazonaws/auth/DecodedStreamBuffer;

    .line 284
    invoke-virtual {v9}, Lcom/amazonaws/auth/DecodedStreamBuffer;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 285
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "chunkSizeInBytes":I
    .restart local v2    # "chunkSizeInBytes":I
    iget-object v9, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->decodedStreamBuffer:Lcom/amazonaws/auth/DecodedStreamBuffer;

    invoke-virtual {v9}, Lcom/amazonaws/auth/DecodedStreamBuffer;->next()B

    move-result v9

    aput-byte v9, v1, v3

    move v3, v2

    .end local v2    # "chunkSizeInBytes":I
    .restart local v3    # "chunkSizeInBytes":I
    goto :goto_0

    .line 289
    :cond_0
    sub-int v0, v10, v3

    .line 290
    .local v0, "bytesToRead":I
    iget-object v9, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v9, v1, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 291
    .local v4, "count":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_2

    .line 292
    iget-object v9, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->decodedStreamBuffer:Lcom/amazonaws/auth/DecodedStreamBuffer;

    if-eqz v9, :cond_1

    .line 293
    iget-object v9, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->decodedStreamBuffer:Lcom/amazonaws/auth/DecodedStreamBuffer;

    invoke-virtual {v9, v1, v3, v4}, Lcom/amazonaws/auth/DecodedStreamBuffer;->buffer([BII)V

    .line 294
    :cond_1
    add-int v2, v3, v4

    .end local v3    # "chunkSizeInBytes":I
    .restart local v2    # "chunkSizeInBytes":I
    move v3, v2

    .line 298
    .end local v2    # "chunkSizeInBytes":I
    .restart local v3    # "chunkSizeInBytes":I
    goto :goto_0

    .line 300
    .end local v0    # "bytesToRead":I
    .end local v4    # "count":I
    :cond_2
    if-nez v3, :cond_3

    .line 301
    sget-object v8, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->FINAL_CHUNK:[B

    invoke-direct {p0, v8}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->createSignedChunk([B)[B

    move-result-object v6

    .line 302
    .local v6, "signedFinalChunk":[B
    new-instance v8, Lcom/amazonaws/auth/ChunkContentIterator;

    invoke-direct {v8, v6}, Lcom/amazonaws/auth/ChunkContentIterator;-><init>([B)V

    iput-object v8, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->currentChunkIterator:Lcom/amazonaws/auth/ChunkContentIterator;

    .line 303
    const/4 v8, 0x1

    .line 313
    .end local v6    # "signedFinalChunk":[B
    :goto_1
    return v8

    .line 306
    :cond_3
    array-length v9, v1

    if-ge v3, v9, :cond_4

    .line 307
    new-array v7, v3, [B

    .line 308
    .local v7, "temp":[B
    invoke-static {v1, v8, v7, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    move-object v1, v7

    .line 311
    .end local v7    # "temp":[B
    :cond_4
    invoke-direct {p0, v1}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->createSignedChunk([B)[B

    move-result-object v5

    .line 312
    .local v5, "signedChunkContent":[B
    new-instance v9, Lcom/amazonaws/auth/ChunkContentIterator;

    invoke-direct {v9, v5}, Lcom/amazonaws/auth/ChunkContentIterator;-><init>([B)V

    iput-object v9, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->currentChunkIterator:Lcom/amazonaws/auth/ChunkContentIterator;

    goto :goto_1
.end method


# virtual methods
.method protected getWrappedInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->is:Ljava/io/InputStream;

    return-object v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2
    .param p1, "readlimit"    # I

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->abortIfNeeded()V

    .line 199
    iget-boolean v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->isAtStart:Z

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Chunk-encoded stream only supports mark() at the start of the stream."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 202
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    sget-object v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    sget-object v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "AwsChunkedEncodingInputStream marked at the start of the stream (will directly mark the wrapped stream since it\'s mark-supported)."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->is:Ljava/io/InputStream;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :goto_0
    monitor-exit p0

    return-void

    .line 210
    :cond_2
    :try_start_2
    sget-object v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    sget-object v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "AwsChunkedEncodingInputStream marked at the start of the stream (initializing the buffer since the wrapped stream is not mark-supported)."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 214
    :cond_3
    new-instance v0, Lcom/amazonaws/auth/DecodedStreamBuffer;

    iget v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->maxBufferSize:I

    invoke-direct {v0, v1}, Lcom/amazonaws/auth/DecodedStreamBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->decodedStreamBuffer:Lcom/amazonaws/auth/DecodedStreamBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 124
    new-array v1, v3, [B

    .line 125
    .local v1, "tmp":[B
    invoke-virtual {p0, v1, v5, v3}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->read([BII)I

    move-result v0

    .line 126
    .local v0, "count":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 127
    sget-object v3, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    sget-object v3, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "One byte read from the stream."

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 129
    :cond_0
    aget-byte v3, v1, v5

    and-int/lit16 v2, v3, 0xff

    .line 132
    :goto_0
    return v2

    :cond_1
    move v2, v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->abortIfNeeded()V

    .line 139
    if-nez p1, :cond_0

    .line 140
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 141
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    array-length v2, p1

    sub-int/2addr v2, p2

    if-le p3, v2, :cond_2

    .line 142
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 143
    :cond_2
    if-nez p3, :cond_4

    move v0, v1

    .line 162
    :cond_3
    :goto_0
    return v0

    .line 147
    :cond_4
    iget-object v2, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->currentChunkIterator:Lcom/amazonaws/auth/ChunkContentIterator;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->currentChunkIterator:Lcom/amazonaws/auth/ChunkContentIterator;

    .line 148
    invoke-virtual {v2}, Lcom/amazonaws/auth/ChunkContentIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_7

    .line 149
    :cond_5
    iget-boolean v2, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->isTerminating:Z

    if-eqz v2, :cond_6

    .line 150
    const/4 v0, -0x1

    goto :goto_0

    .line 152
    :cond_6
    invoke-direct {p0}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->setUpNextChunk()Z

    move-result v2

    iput-boolean v2, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->isTerminating:Z

    .line 156
    :cond_7
    iget-object v2, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->currentChunkIterator:Lcom/amazonaws/auth/ChunkContentIterator;

    invoke-virtual {v2, p1, p2, p3}, Lcom/amazonaws/auth/ChunkContentIterator;->read([BII)I

    move-result v0

    .line 157
    .local v0, "count":I
    if-lez v0, :cond_3

    .line 158
    iput-boolean v1, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->isAtStart:Z

    .line 159
    sget-object v1, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 160
    sget-object v1, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " byte read from the stream."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->abortIfNeeded()V

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->currentChunkIterator:Lcom/amazonaws/auth/ChunkContentIterator;

    .line 227
    iget-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->headerSignature:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->priorChunkSignature:Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    sget-object v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    sget-object v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "AwsChunkedEncodingInputStream reset (will reset the wrapped stream because it is mark-supported)."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 246
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->currentChunkIterator:Lcom/amazonaws/auth/ChunkContentIterator;

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->isAtStart:Z

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->isTerminating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    monitor-exit p0

    return-void

    .line 237
    :cond_1
    :try_start_1
    sget-object v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    sget-object v0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "AwsChunkedEncodingInputStream reset (will use the buffer of the decoded stream)."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->decodedStreamBuffer:Lcom/amazonaws/auth/DecodedStreamBuffer;

    if-nez v0, :cond_3

    .line 241
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot reset the stream because the mark is not set."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 243
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->decodedStreamBuffer:Lcom/amazonaws/auth/DecodedStreamBuffer;

    invoke-virtual {v0}, Lcom/amazonaws/auth/DecodedStreamBuffer;->startReadBuffer()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public skip(J)J
    .locals 11
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 167
    cmp-long v5, p1, v6

    if-gtz v5, :cond_0

    .line 180
    :goto_0
    return-wide v6

    .line 170
    :cond_0
    move-wide v2, p1

    .line 171
    .local v2, "remaining":J
    const-wide/32 v8, 0x40000

    invoke-static {v8, v9, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v4, v8

    .line 172
    .local v4, "toskip":I
    new-array v1, v4, [B

    .line 173
    .local v1, "temp":[B
    :goto_1
    cmp-long v5, v2, v6

    if-lez v5, :cond_1

    .line 175
    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5, v4}, Lcom/amazonaws/auth/AwsChunkedEncodingInputStream;->read([BII)I

    move-result v0

    .local v0, "count":I
    if-gez v0, :cond_2

    .line 180
    .end local v0    # "count":I
    :cond_1
    sub-long v6, p1, v2

    goto :goto_0

    .line 178
    .restart local v0    # "count":I
    :cond_2
    int-to-long v8, v0

    sub-long/2addr v2, v8

    .line 179
    goto :goto_1
.end method
