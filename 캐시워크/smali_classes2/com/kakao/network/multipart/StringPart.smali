.class public Lcom/kakao/network/multipart/StringPart;
.super Lcom/kakao/network/multipart/Part;
.source "StringPart.java"


# static fields
.field private static final DEFAULT_STRING_PART_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final DEFAULT_STRING_PART_CONTENT_TYPE:Ljava/lang/String; = "text/plain"

.field private static final DEFAULT_STRING_PART_TRANSFER_ENCODING:Ljava/lang/String; = "8bit"


# instance fields
.field private content:[B

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 31
    const-string v3, "text/plain"

    const-string v4, "UTF-8"

    const-string v5, "8bit"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/kakao/network/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "charset"    # Ljava/lang/String;
    .param p5, "transferEncoding"    # Ljava/lang/String;

    .prologue
    .line 39
    if-eqz p3, :cond_0

    .line 40
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p3, "text/plain"

    .end local p3    # "contentType":Ljava/lang/String;
    :cond_1
    if-eqz p4, :cond_2

    .line 41
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string p4, "UTF-8"

    .end local p4    # "charset":Ljava/lang/String;
    :cond_3
    if-eqz p5, :cond_4

    .line 42
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string p5, "8bit"

    .line 39
    .end local p5    # "transferEncoding":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/kakao/network/multipart/Part;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iput-object p2, p0, Lcom/kakao/network/multipart/StringPart;->value:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private getContent()[B
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kakao/network/multipart/StringPart;->content:[B

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/kakao/network/multipart/StringPart;->value:Ljava/lang/String;

    iget-object v1, p0, Lcom/kakao/network/multipart/StringPart;->charsetString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kakao/network/multipart/MultipartRequestEntity;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/network/multipart/StringPart;->content:[B

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/kakao/network/multipart/StringPart;->content:[B

    return-object v0
.end method


# virtual methods
.method protected lengthOfData()J
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/kakao/network/multipart/StringPart;->getContent()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected sendData(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/kakao/network/multipart/StringPart;->getContent()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 49
    return-void
.end method
