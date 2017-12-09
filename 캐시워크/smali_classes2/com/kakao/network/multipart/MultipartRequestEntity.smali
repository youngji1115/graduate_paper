.class public Lcom/kakao/network/multipart/MultipartRequestEntity;
.super Ljava/lang/Object;
.source "MultipartRequestEntity.java"


# static fields
.field private static final ASCII_CHARSET_NAME:Ljava/lang/String; = "US-ASCII"

.field private static final MULTIPART_CHARS:[B

.field private static final MULTIPART_FORM_CONTENT_TYPE:Ljava/lang/String; = "multipart/form-data"

.field private static final RANDOM:Ljava/util/Random;


# instance fields
.field private final contentLength:J

.field private final contentType:Ljava/lang/String;

.field private final multipartBoundary:[B

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kakao/network/multipart/Part;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 31
    invoke-static {v0}, Lcom/kakao/network/multipart/MultipartRequestEntity;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/kakao/network/multipart/MultipartRequestEntity;->MULTIPART_CHARS:[B

    .line 33
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/kakao/network/multipart/MultipartRequestEntity;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kakao/network/multipart/Part;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "parts":Ljava/util/List;, "Ljava/util/List<Lcom/kakao/network/multipart/Part;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/kakao/network/multipart/MultipartRequestEntity;->parts:Ljava/util/List;

    .line 82
    invoke-static {}, Lcom/kakao/network/multipart/MultipartRequestEntity;->generateMultipartBoundary()[B

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/network/multipart/MultipartRequestEntity;->multipartBoundary:[B

    .line 83
    const-string v0, "multipart/form-data"

    invoke-direct {p0, v0}, Lcom/kakao/network/multipart/MultipartRequestEntity;->computeContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/network/multipart/MultipartRequestEntity;->contentType:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/kakao/network/multipart/MultipartRequestEntity;->multipartBoundary:[B

    invoke-static {p1, v0}, Lcom/kakao/network/multipart/Part;->getLengthOfParts(Ljava/util/List;[B)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kakao/network/multipart/MultipartRequestEntity;->contentLength:J

    .line 85
    return-void
.end method

.method private computeContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "base"    # Ljava/lang/String;

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_0
    :try_start_0
    const-string v2, " boundary="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/kakao/network/multipart/MultipartRequestEntity;->multipartBoundary:[B

    const-string v5, "US-ASCII"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static generateMultipartBoundary()[B
    .locals 5

    .prologue
    .line 61
    sget-object v2, Lcom/kakao/network/multipart/MultipartRequestEntity;->RANDOM:Ljava/util/Random;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    new-array v0, v2, [B

    .line 62
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 63
    sget-object v2, Lcom/kakao/network/multipart/MultipartRequestEntity;->MULTIPART_CHARS:[B

    sget-object v3, Lcom/kakao/network/multipart/MultipartRequestEntity;->RANDOM:Ljava/util/Random;

    sget-object v4, Lcom/kakao/network/multipart/MultipartRequestEntity;->MULTIPART_CHARS:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return-object v0
.end method

.method public static getAsciiBytes(Ljava/lang/String;)[B
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 36
    if-nez p0, :cond_0

    .line 37
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "data may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_0
    :try_start_0
    const-string v1, "US-ASCII"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "var2":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 47
    if-nez p0, :cond_0

    .line 48
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "data may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "charset may not be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "var3":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported encoding: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/kakao/network/multipart/MultipartRequestEntity;->contentLength:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/kakao/network/multipart/MultipartRequestEntity;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public writeRequest(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/kakao/network/multipart/MultipartRequestEntity;->parts:Ljava/util/List;

    iget-object v1, p0, Lcom/kakao/network/multipart/MultipartRequestEntity;->multipartBoundary:[B

    invoke-static {p1, v0, v1}, Lcom/kakao/network/multipart/Part;->sendParts(Ljava/io/OutputStream;Ljava/util/List;[B)V

    .line 101
    return-void
.end method
