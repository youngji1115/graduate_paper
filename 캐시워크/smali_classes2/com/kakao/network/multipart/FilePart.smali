.class public Lcom/kakao/network/multipart/FilePart;
.super Lcom/kakao/network/multipart/Part;
.source "FilePart.java"


# static fields
.field private static final DEFAULT_FILE_PART_CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field private static final DEFAULT_FILE_PART_CONTENT_TYPE:Ljava/lang/String; = "application/octet-stream"

.field private static final DEFAULT_FILE_PART_TRANSFER_ENCODING:Ljava/lang/String; = "binary"

.field private static final FILE_NAME:Ljava/lang/String; = "; filename="

.field private static final FILE_NAME_BYTES:[B


# instance fields
.field private final content:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "; filename="

    invoke-static {v0}, Lcom/kakao/network/multipart/MultipartRequestEntity;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/kakao/network/multipart/FilePart;->FILE_NAME_BYTES:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/io/File;

    .prologue
    .line 40
    const-string v3, "application/octet-stream"

    const-string v4, "ISO-8859-1"

    const-string v5, "binary"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/kakao/network/multipart/FilePart;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/io/File;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "charset"    # Ljava/lang/String;
    .param p5, "transferEncoding"    # Ljava/lang/String;

    .prologue
    .line 48
    if-eqz p3, :cond_0

    .line 49
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p3, "application/octet-stream"

    .end local p3    # "contentType":Ljava/lang/String;
    :cond_1
    if-eqz p4, :cond_2

    .line 50
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string p4, "ISO-8859-1"

    .end local p4    # "charset":Ljava/lang/String;
    :cond_3
    if-eqz p5, :cond_4

    .line 51
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string p5, "binary"

    .line 48
    .end local p5    # "transferEncoding":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/kakao/network/multipart/Part;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iput-object p2, p0, Lcom/kakao/network/multipart/FilePart;->content:Ljava/io/File;

    .line 53
    return-void
.end method


# virtual methods
.method protected dispositionHeaderLength()J
    .locals 6

    .prologue
    .line 69
    iget-object v1, p0, Lcom/kakao/network/multipart/FilePart;->content:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "filename":Ljava/lang/String;
    invoke-super {p0}, Lcom/kakao/network/multipart/Part;->dispositionHeaderLength()J

    move-result-wide v2

    .line 71
    .local v2, "length":J
    if-eqz v0, :cond_0

    .line 72
    sget-object v1, Lcom/kakao/network/multipart/FilePart;->FILE_NAME_BYTES:[B

    array-length v1, v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 73
    sget-object v1, Lcom/kakao/network/multipart/FilePart;->QUOTE_BYTES:[B

    array-length v1, v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 74
    invoke-static {v0}, Lcom/kakao/network/multipart/MultipartRequestEntity;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 75
    sget-object v1, Lcom/kakao/network/multipart/FilePart;->QUOTE_BYTES:[B

    array-length v1, v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 77
    :cond_0
    return-wide v2
.end method

.method protected lengthOfData()J
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/kakao/network/multipart/FilePart;->content:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/kakao/network/multipart/FilePart;->content:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 109
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected sendData(Ljava/io/OutputStream;)V
    .locals 9
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/kakao/network/multipart/FilePart;->lengthOfData()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 101
    :goto_0
    return-void

    .line 90
    :cond_0
    const/16 v3, 0x1000

    new-array v2, v3, [B

    .line 91
    .local v2, "tmp":[B
    iget-object v3, p0, Lcom/kakao/network/multipart/FilePart;->content:Ljava/io/File;

    if-eqz v3, :cond_1

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/kakao/network/multipart/FilePart;->content:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 94
    .local v0, "instream":Ljava/io/InputStream;
    :goto_1
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    if-ltz v1, :cond_2

    .line 95
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 99
    .end local v1    # "len":I
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v3

    .line 91
    .end local v0    # "instream":Ljava/io/InputStream;
    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    new-array v3, v8, [B

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_1

    .line 99
    .restart local v0    # "instream":Ljava/io/InputStream;
    .restart local v1    # "len":I
    :cond_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method

.method protected sendDispositionHeader(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/kakao/network/multipart/Part;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 58
    iget-object v1, p0, Lcom/kakao/network/multipart/FilePart;->content:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "filename":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 60
    sget-object v1, Lcom/kakao/network/multipart/FilePart;->FILE_NAME_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 61
    sget-object v1, Lcom/kakao/network/multipart/FilePart;->QUOTE_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 62
    invoke-static {v0}, Lcom/kakao/network/multipart/MultipartRequestEntity;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 63
    sget-object v1, Lcom/kakao/network/multipart/FilePart;->QUOTE_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 65
    :cond_0
    return-void
.end method
