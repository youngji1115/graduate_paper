.class public abstract Lcom/kakao/network/multipart/Part;
.super Ljava/lang/Object;
.source "Part.java"


# static fields
.field private static final CHARSET:Ljava/lang/String; = "; charset="

.field protected static final CHARSET_BYTES:[B

.field private static final CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition: form-data; name="

.field protected static final CONTENT_DISPOSITION_BYTES:[B

.field private static final CONTENT_TRANSFER_ENCODING:Ljava/lang/String; = "Content-Transfer-Encoding: "

.field protected static final CONTENT_TRANSFER_ENCODING_BYTES:[B

.field private static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type: "

.field protected static final CONTENT_TYPE_BYTES:[B

.field private static final CRLF:Ljava/lang/String; = "\r\n"

.field protected static final CRLF_BYTES:[B

.field private static final EXTRA:Ljava/lang/String; = "--"

.field protected static final EXTRA_BYTES:[B

.field private static final QUOTE:Ljava/lang/String; = "\""

.field protected static final QUOTE_BYTES:[B


# instance fields
.field protected final charsetString:Ljava/lang/String;

.field protected final contentTypeString:Ljava/lang/String;

.field protected final name:Ljava/lang/String;

.field protected final transferEncodingString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "\r\n"

    invoke-static {v0}, Lcom/kakao/network/multipart/MultipartRequestEntity;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/kakao/network/multipart/Part;->CRLF_BYTES:[B

    .line 35
    const-string v0, "\""

    invoke-static {v0}, Lcom/kakao/network/multipart/MultipartRequestEntity;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/kakao/network/multipart/Part;->QUOTE_BYTES:[B

    .line 36
    const-string v0, "--"

    invoke-static {v0}, Lcom/kakao/network/multipart/MultipartRequestEntity;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/kakao/network/multipart/Part;->EXTRA_BYTES:[B

    .line 37
    const-string v0, "; charset="

    invoke-static {v0}, Lcom/kakao/network/multipart/MultipartRequestEntity;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/kakao/network/multipart/Part;->CHARSET_BYTES:[B

    .line 38
    const-string v0, "Content-Type: "

    invoke-static {v0}, Lcom/kakao/network/multipart/MultipartRequestEntity;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/kakao/network/multipart/Part;->CONTENT_TYPE_BYTES:[B

    .line 39
    const-string v0, "Content-Disposition: form-data; name="

    invoke-static {v0}, Lcom/kakao/network/multipart/MultipartRequestEntity;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/kakao/network/multipart/Part;->CONTENT_DISPOSITION_BYTES:[B

    .line 40
    const-string v0, "Content-Transfer-Encoding: "

    .line 41
    invoke-static {v0}, Lcom/kakao/network/multipart/MultipartRequestEntity;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/kakao/network/multipart/Part;->CONTENT_TRANSFER_ENCODING_BYTES:[B

    .line 40
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "contentTypeString"    # Ljava/lang/String;
    .param p3, "charsetString"    # Ljava/lang/String;
    .param p4, "transferEncodingString"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/kakao/network/multipart/Part;->name:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/kakao/network/multipart/Part;->contentTypeString:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/kakao/network/multipart/Part;->charsetString:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/kakao/network/multipart/Part;->transferEncodingString:Ljava/lang/String;

    .line 53
    return-void
.end method

.method static getLengthOfParts(Ljava/util/List;[B)J
    .locals 10
    .param p1, "partBoundary"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kakao/network/multipart/Part;",
            ">;[B)J"
        }
    .end annotation

    .prologue
    .local p0, "parts":Ljava/util/List;, "Ljava/util/List<Lcom/kakao/network/multipart/Part;>;"
    const-wide/16 v6, 0x0

    .line 85
    if-nez p0, :cond_0

    .line 86
    :try_start_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Parts may not be null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "An exception occurred while getting the length of the parts"

    invoke-static {v8, v0}, Lcom/kakao/util/helper/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v4, v6

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-wide v4

    .line 88
    :cond_0
    const-wide/16 v4, 0x0

    .line 89
    .local v4, "total":J
    :try_start_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakao/network/multipart/Part;

    .line 90
    .local v1, "part":Lcom/kakao/network/multipart/Part;
    invoke-virtual {v1, p1}, Lcom/kakao/network/multipart/Part;->length([B)J

    move-result-wide v2

    .line 91
    .local v2, "l":J
    cmp-long v9, v2, v6

    if-gez v9, :cond_1

    .line 92
    const-wide/16 v4, -0x1

    goto :goto_0

    .line 94
    :cond_1
    add-long/2addr v4, v2

    .line 95
    goto :goto_1

    .line 96
    .end local v1    # "part":Lcom/kakao/network/multipart/Part;
    .end local v2    # "l":J
    :cond_2
    sget-object v8, Lcom/kakao/network/multipart/Part;->EXTRA_BYTES:[B

    array-length v8, v8

    int-to-long v8, v8

    add-long/2addr v4, v8

    .line 97
    array-length v8, p1

    int-to-long v8, v8

    add-long/2addr v4, v8

    .line 98
    sget-object v8, Lcom/kakao/network/multipart/Part;->EXTRA_BYTES:[B

    array-length v8, v8

    int-to-long v8, v8

    add-long/2addr v4, v8

    .line 99
    sget-object v8, Lcom/kakao/network/multipart/Part;->CRLF_BYTES:[B

    array-length v6, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 100
    goto :goto_0
.end method

.method public static sendParts(Ljava/io/OutputStream;Ljava/util/List;[B)V
    .locals 3
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p2, "boundary"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/List",
            "<",
            "Lcom/kakao/network/multipart/Part;",
            ">;[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "parts":Ljava/util/List;, "Ljava/util/List<Lcom/kakao/network/multipart/Part;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parts may not be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_1
    if-eqz p2, :cond_2

    array-length v1, p2

    if-gtz v1, :cond_3

    .line 120
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "partBoundary may not be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/network/multipart/Part;

    .line 123
    .local v0, "part":Lcom/kakao/network/multipart/Part;
    invoke-virtual {v0, p0, p2}, Lcom/kakao/network/multipart/Part;->sendStart(Ljava/io/OutputStream;[B)V

    .line 124
    invoke-virtual {v0, p0}, Lcom/kakao/network/multipart/Part;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 125
    invoke-virtual {v0, p0}, Lcom/kakao/network/multipart/Part;->sendContentTypeHeader(Ljava/io/OutputStream;)V

    .line 126
    invoke-virtual {v0, p0}, Lcom/kakao/network/multipart/Part;->sendTransferEncodingHeader(Ljava/io/OutputStream;)V

    .line 127
    invoke-virtual {v0, p0}, Lcom/kakao/network/multipart/Part;->sendEndOfHeader(Ljava/io/OutputStream;)V

    .line 128
    invoke-virtual {v0, p0}, Lcom/kakao/network/multipart/Part;->sendData(Ljava/io/OutputStream;)V

    .line 129
    invoke-virtual {v0, p0}, Lcom/kakao/network/multipart/Part;->sendEnd(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 131
    .end local v0    # "part":Lcom/kakao/network/multipart/Part;
    :cond_4
    sget-object v1, Lcom/kakao/network/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 132
    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 133
    sget-object v1, Lcom/kakao/network/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 134
    sget-object v1, Lcom/kakao/network/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 135
    return-void
.end method


# virtual methods
.method protected contentTypeHeaderLength()J
    .locals 6

    .prologue
    .line 186
    const-wide/16 v2, 0x0

    .line 187
    .local v2, "length":J
    iget-object v1, p0, Lcom/kakao/network/multipart/Part;->contentTypeString:Ljava/lang/String;

    .line 188
    .local v1, "contentType":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 189
    sget-object v4, Lcom/kakao/network/multipart/Part;->CRLF_BYTES:[B

    array-length v4, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 190
    sget-object v4, Lcom/kakao/network/multipart/Part;->CONTENT_TYPE_BYTES:[B

    array-length v4, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 191
    invoke-static {v1}, Lcom/kakao/network/multipart/MultipartRequestEntity;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 193
    iget-object v0, p0, Lcom/kakao/network/multipart/Part;->charsetString:Ljava/lang/String;

    .line 194
    .local v0, "charSet":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 195
    sget-object v4, Lcom/kakao/network/multipart/Part;->CHARSET_BYTES:[B

    array-length v4, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 196
    invoke-static {v0}, Lcom/kakao/network/multipart/MultipartRequestEntity;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v4, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 199
    .end local v0    # "charSet":Ljava/lang/String;
    :cond_0
    return-wide v2
.end method

.method protected dispositionHeaderLength()J
    .locals 6

    .prologue
    .line 158
    const-wide/16 v0, 0x0

    .line 159
    .local v0, "length":J
    iget-object v2, p0, Lcom/kakao/network/multipart/Part;->name:Ljava/lang/String;

    .line 160
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 161
    sget-object v3, Lcom/kakao/network/multipart/Part;->CRLF_BYTES:[B

    array-length v3, v3

    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 162
    sget-object v3, Lcom/kakao/network/multipart/Part;->CONTENT_DISPOSITION_BYTES:[B

    array-length v3, v3

    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 163
    sget-object v3, Lcom/kakao/network/multipart/Part;->QUOTE_BYTES:[B

    array-length v3, v3

    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 164
    invoke-static {v2}, Lcom/kakao/network/multipart/MultipartRequestEntity;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 165
    sget-object v3, Lcom/kakao/network/multipart/Part;->QUOTE_BYTES:[B

    array-length v3, v3

    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 167
    :cond_0
    return-wide v0
.end method

.method protected endLength()J
    .locals 2

    .prologue
    .line 236
    sget-object v0, Lcom/kakao/network/multipart/Part;->CRLF_BYTES:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected endOfHeaderLength()J
    .locals 2

    .prologue
    .line 228
    sget-object v0, Lcom/kakao/network/multipart/Part;->CRLF_BYTES:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    return-wide v0
.end method

.method public getCharSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kakao/network/multipart/Part;->charsetString:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/kakao/network/multipart/Part;->contentTypeString:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kakao/network/multipart/Part;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kakao/network/multipart/Part;->transferEncodingString:Ljava/lang/String;

    return-object v0
.end method

.method public length([B)J
    .locals 6
    .param p1, "boundary"    # [B

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/kakao/network/multipart/Part;->lengthOfData()J

    move-result-wide v0

    .line 109
    .local v0, "lengthOfData":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v2, -0x1

    .line 112
    :goto_0
    return-wide v2

    .line 110
    :cond_0
    invoke-virtual {p0, p1}, Lcom/kakao/network/multipart/Part;->startLength([B)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    invoke-virtual {p0}, Lcom/kakao/network/multipart/Part;->dispositionHeaderLength()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 111
    invoke-virtual {p0}, Lcom/kakao/network/multipart/Part;->contentTypeHeaderLength()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {p0}, Lcom/kakao/network/multipart/Part;->transferEncodingHeaderLength()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {p0}, Lcom/kakao/network/multipart/Part;->endOfHeaderLength()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 112
    invoke-virtual {p0}, Lcom/kakao/network/multipart/Part;->endLength()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0
.end method

.method protected abstract lengthOfData()J
.end method

.method protected sendContentTypeHeader(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v1, p0, Lcom/kakao/network/multipart/Part;->contentTypeString:Ljava/lang/String;

    .line 172
    .local v1, "contentType":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 173
    sget-object v2, Lcom/kakao/network/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 174
    sget-object v2, Lcom/kakao/network/multipart/Part;->CONTENT_TYPE_BYTES:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 175
    invoke-static {v1}, Lcom/kakao/network/multipart/MultipartRequestEntity;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 177
    iget-object v0, p0, Lcom/kakao/network/multipart/Part;->charsetString:Ljava/lang/String;

    .line 178
    .local v0, "charSet":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 179
    sget-object v2, Lcom/kakao/network/multipart/Part;->CHARSET_BYTES:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 180
    invoke-static {v0}, Lcom/kakao/network/multipart/MultipartRequestEntity;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 183
    .end local v0    # "charSet":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected abstract sendData(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
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
    .line 147
    iget-object v0, p0, Lcom/kakao/network/multipart/Part;->name:Ljava/lang/String;

    .line 148
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 149
    sget-object v1, Lcom/kakao/network/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 150
    sget-object v1, Lcom/kakao/network/multipart/Part;->CONTENT_DISPOSITION_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 151
    sget-object v1, Lcom/kakao/network/multipart/Part;->QUOTE_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 152
    invoke-static {v0}, Lcom/kakao/network/multipart/MultipartRequestEntity;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 153
    sget-object v1, Lcom/kakao/network/multipart/Part;->QUOTE_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 155
    :cond_0
    return-void
.end method

.method protected sendEnd(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    sget-object v0, Lcom/kakao/network/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 233
    return-void
.end method

.method protected sendEndOfHeader(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    sget-object v0, Lcom/kakao/network/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 224
    sget-object v0, Lcom/kakao/network/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 225
    return-void
.end method

.method protected sendStart(Ljava/io/OutputStream;[B)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "boundary"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    sget-object v0, Lcom/kakao/network/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 139
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 140
    return-void
.end method

.method protected sendTransferEncodingHeader(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/kakao/network/multipart/Part;->transferEncodingString:Ljava/lang/String;

    .line 204
    .local v0, "transferEncoding":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 205
    sget-object v1, Lcom/kakao/network/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 206
    sget-object v1, Lcom/kakao/network/multipart/Part;->CONTENT_TRANSFER_ENCODING_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 207
    invoke-static {v0}, Lcom/kakao/network/multipart/MultipartRequestEntity;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 209
    :cond_0
    return-void
.end method

.method protected startLength([B)I
    .locals 2
    .param p1, "boundary"    # [B

    .prologue
    .line 143
    sget-object v0, Lcom/kakao/network/multipart/Part;->EXTRA_BYTES:[B

    array-length v0, v0

    array-length v1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method protected transferEncodingHeaderLength()J
    .locals 6

    .prologue
    .line 212
    const-wide/16 v0, 0x0

    .line 213
    .local v0, "length":J
    iget-object v2, p0, Lcom/kakao/network/multipart/Part;->transferEncodingString:Ljava/lang/String;

    .line 214
    .local v2, "transferEncoding":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 215
    sget-object v3, Lcom/kakao/network/multipart/Part;->CRLF_BYTES:[B

    array-length v3, v3

    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 216
    sget-object v3, Lcom/kakao/network/multipart/Part;->CONTENT_TRANSFER_ENCODING_BYTES:[B

    array-length v3, v3

    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 217
    invoke-static {v2}, Lcom/kakao/network/multipart/MultipartRequestEntity;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 219
    :cond_0
    return-wide v0
.end method
