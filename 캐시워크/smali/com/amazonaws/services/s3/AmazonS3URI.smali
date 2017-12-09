.class public Lcom/amazonaws/services/s3/AmazonS3URI;
.super Ljava/lang/Object;
.source "AmazonS3URI.java"


# static fields
.field private static final ENDPOINT_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final bucket:Ljava/lang/String;

.field private final isPathStyle:Z

.field private final key:Ljava/lang/String;

.field private final region:Ljava/lang/String;

.field private final uri:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "^(.+\\.)?s3[.-]([a-z0-9-]+)\\."

    .line 28
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3URI;->ENDPOINT_PATTERN:Ljava/util/regex/Pattern;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3URI;-><init>(Ljava/net/URI;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 10
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-nez p1, :cond_0

    .line 53
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "uri cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->uri:Ljava/net/URI;

    .line 58
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "host":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 60
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid S3 URI: no hostname: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 64
    :cond_1
    sget-object v5, Lcom/amazonaws/services/s3/AmazonS3URI;->ENDPOINT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 65
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_2

    .line 66
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid S3 URI: hostname does not appear to be a valid S3 endpoint: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 71
    :cond_2
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "prefix":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 75
    :cond_3
    iput-boolean v7, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->isPathStyle:Z

    .line 79
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "path":Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 82
    iput-object v8, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->bucket:Ljava/lang/String;

    .line 83
    iput-object v8, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->key:Ljava/lang/String;

    .line 124
    .end local v3    # "path":Ljava/lang/String;
    :goto_0
    const-string v5, "amazonaws"

    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 126
    iput-object v8, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->region:Ljava/lang/String;

    .line 130
    :goto_1
    return-void

    .line 86
    .restart local v3    # "path":Ljava/lang/String;
    :cond_4
    const/16 v5, 0x2f

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 87
    .local v1, "index":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_5

    .line 90
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazonaws/services/s3/AmazonS3URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->bucket:Ljava/lang/String;

    .line 91
    iput-object v8, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->key:Ljava/lang/String;

    goto :goto_0

    .line 93
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_6

    .line 96
    invoke-virtual {v3, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazonaws/services/s3/AmazonS3URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->bucket:Ljava/lang/String;

    .line 97
    iput-object v8, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->key:Ljava/lang/String;

    goto :goto_0

    .line 102
    :cond_6
    invoke-virtual {v3, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazonaws/services/s3/AmazonS3URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->bucket:Ljava/lang/String;

    .line 103
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazonaws/services/s3/AmazonS3URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->key:Ljava/lang/String;

    goto :goto_0

    .line 111
    .end local v1    # "index":I
    .end local v3    # "path":Ljava/lang/String;
    :cond_7
    iput-boolean v6, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->isPathStyle:Z

    .line 114
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->bucket:Ljava/lang/String;

    .line 116
    const-string v5, "/"

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 117
    iput-object v8, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->key:Ljava/lang/String;

    goto :goto_0

    .line 120
    :cond_8
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->key:Ljava/lang/String;

    goto :goto_0

    .line 128
    :cond_9
    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->region:Ljava/lang/String;

    goto :goto_1
.end method

.method private static appendDecoded(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .locals 6
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 232
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    if-le p2, v3, :cond_0

    .line 233
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid percent-encoded string:\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 237
    :cond_0
    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 238
    .local v1, "first":C
    add-int/lit8 v3, p2, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 240
    .local v2, "second":C
    invoke-static {v1}, Lcom/amazonaws/services/s3/AmazonS3URI;->fromHex(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    invoke-static {v2}, Lcom/amazonaws/services/s3/AmazonS3URI;->fromHex(C)I

    move-result v4

    or-int/2addr v3, v4

    int-to-char v0, v3

    .line 241
    .local v0, "decoded":C
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    return-void
.end method

.method private static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 182
    if-nez p0, :cond_1

    .line 183
    const/4 p0, 0x0

    .line 192
    .end local p0    # "str":Ljava/lang/String;
    .local v0, "i":I
    :cond_0
    :goto_0
    return-object p0

    .line 186
    .end local v0    # "i":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 187
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_2

    .line 188
    invoke-static {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3URI;->decode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 186
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static decode(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "firstPercent"    # I

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-static {v0, p0, p1}, Lcom/amazonaws/services/s3/AmazonS3URI;->appendDecoded(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 208
    add-int/lit8 v1, p1, 0x3

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 209
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-ne v2, v3, :cond_0

    .line 210
    invoke-static {v0, p0, v1}, Lcom/amazonaws/services/s3/AmazonS3URI;->appendDecoded(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 211
    add-int/lit8 v1, v1, 0x2

    .line 208
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 217
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static fromHex(C)I
    .locals 3
    .param p0, "c"    # C

    .prologue
    .line 251
    const/16 v0, 0x30

    if-ge p0, v0, :cond_0

    .line 252
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid percent-encoded string: bad character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' in escape sequence."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    const/16 v0, 0x39

    if-gt p0, v0, :cond_1

    .line 257
    add-int/lit8 v0, p0, -0x30

    .line 275
    :goto_0
    return v0

    .line 260
    :cond_1
    const/16 v0, 0x41

    if-ge p0, v0, :cond_2

    .line 261
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid percent-encoded string: bad character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' in escape sequence."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_2
    const/16 v0, 0x46

    if-gt p0, v0, :cond_3

    .line 266
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 269
    :cond_3
    const/16 v0, 0x61

    if-ge p0, v0, :cond_4

    .line 270
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid percent-encoded string: bad character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' in escape sequence."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_4
    const/16 v0, 0x66

    if-gt p0, v0, :cond_5

    .line 275
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 278
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid percent-encoded string: bad character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' in escape sequence."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getBucket()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->bucket:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public isPathStyle()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->isPathStyle:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3URI;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
