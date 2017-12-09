.class public Lcom/kakao/auth/helper/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/auth/helper/Base64$Context;
    }
.end annotation


# static fields
.field private static final BYTES_PER_ENCODED_BLOCK:I = 0x4

.field private static final BYTES_PER_UNENCODED_BLOCK:I = 0x3

.field private static final CHUNK_SEPARATOR:[B

.field private static final DECODE_TABLE:[B

.field private static final DEFAULT_BUFFER_RESIZE_FACTOR:I = 0x2

.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field private static final EOF:I = -0x1

.field private static final MASK_6BITS:I = 0x3f

.field private static final MIME_CHUNK_SIZE:I = 0x4c

.field private static final PAD_DEFAULT:B = 0x3dt

.field private static final STANDARD_ENCODE_TABLE:[B

.field private static final URL_SAFE_ENCODE_TABLE:[B

.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final PAD:B

.field private final chunkSeparatorLength:I

.field private final decodeSize:I

.field private final decodeTable:[B

.field private final encodeSize:I

.field private final encodeTable:[B

.field private final encodedBlockSize:I

.field private final lineLength:I

.field private final lineSeparator:[B

.field private final unencodedBlockSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kakao/auth/helper/Base64;->CHUNK_SEPARATOR:[B

    .line 39
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/kakao/auth/helper/Base64;->UTF_8:Ljava/nio/charset/Charset;

    .line 55
    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/kakao/auth/helper/Base64;->DECODE_TABLE:[B

    .line 65
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/kakao/auth/helper/Base64;->STANDARD_ENCODE_TABLE:[B

    .line 73
    new-array v0, v1, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/kakao/auth/helper/Base64;->URL_SAFE_ENCODE_TABLE:[B

    return-void

    .line 38
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 55
    nop

    :array_1
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        0x3et
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data

    .line 65
    :array_2
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 73
    :array_3
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method private constructor <init>(I[BZ)V
    .locals 7
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B
    .param p3, "urlSafe"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v3, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/16 v2, 0x3d

    iput-byte v2, p0, Lcom/kakao/auth/helper/Base64;->PAD:B

    .line 53
    sget-object v2, Lcom/kakao/auth/helper/Base64;->DECODE_TABLE:[B

    iput-object v2, p0, Lcom/kakao/auth/helper/Base64;->decodeTable:[B

    .line 107
    const/4 v2, 0x3

    iput v2, p0, Lcom/kakao/auth/helper/Base64;->unencodedBlockSize:I

    .line 108
    iput v5, p0, Lcom/kakao/auth/helper/Base64;->encodedBlockSize:I

    .line 109
    if-nez p2, :cond_0

    move v2, v3

    :goto_0
    iput v2, p0, Lcom/kakao/auth/helper/Base64;->chunkSeparatorLength:I

    .line 110
    if-lez p1, :cond_1

    iget v2, p0, Lcom/kakao/auth/helper/Base64;->chunkSeparatorLength:I

    if-lez v2, :cond_1

    const/4 v1, 0x1

    .line 111
    .local v1, "useChunking":Z
    :goto_1
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/kakao/auth/helper/Base64;->encodedBlockSize:I

    div-int v2, p1, v2

    iget v4, p0, Lcom/kakao/auth/helper/Base64;->encodedBlockSize:I

    mul-int/2addr v2, v4

    :goto_2
    iput v2, p0, Lcom/kakao/auth/helper/Base64;->lineLength:I

    .line 113
    if-eqz p2, :cond_5

    .line 114
    invoke-virtual {p0, p2}, Lcom/kakao/auth/helper/Base64;->containsAlphabetOrPad([B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 115
    invoke-static {p2}, Lcom/kakao/auth/helper/Base64;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "sep":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lineSeparator must not contain base64 characters: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    .end local v0    # "sep":Ljava/lang/String;
    .end local v1    # "useChunking":Z
    :cond_0
    array-length v2, p2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 110
    goto :goto_1

    .restart local v1    # "useChunking":Z
    :cond_2
    move v2, v3

    .line 111
    goto :goto_2

    .line 118
    :cond_3
    if-lez p1, :cond_4

    .line 119
    array-length v2, p2

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/kakao/auth/helper/Base64;->encodeSize:I

    .line 120
    array-length v2, p2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/kakao/auth/helper/Base64;->lineSeparator:[B

    .line 121
    iget-object v2, p0, Lcom/kakao/auth/helper/Base64;->lineSeparator:[B

    array-length v4, p2

    invoke-static {p2, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    :goto_3
    iget v2, p0, Lcom/kakao/auth/helper/Base64;->encodeSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/kakao/auth/helper/Base64;->decodeSize:I

    .line 131
    if-eqz p3, :cond_6

    sget-object v2, Lcom/kakao/auth/helper/Base64;->URL_SAFE_ENCODE_TABLE:[B

    :goto_4
    iput-object v2, p0, Lcom/kakao/auth/helper/Base64;->encodeTable:[B

    .line 132
    return-void

    .line 123
    :cond_4
    iput v5, p0, Lcom/kakao/auth/helper/Base64;->encodeSize:I

    .line 124
    iput-object v6, p0, Lcom/kakao/auth/helper/Base64;->lineSeparator:[B

    goto :goto_3

    .line 127
    :cond_5
    iput v5, p0, Lcom/kakao/auth/helper/Base64;->encodeSize:I

    .line 128
    iput-object v6, p0, Lcom/kakao/auth/helper/Base64;->lineSeparator:[B

    goto :goto_3

    .line 131
    :cond_6
    sget-object v2, Lcom/kakao/auth/helper/Base64;->STANDARD_ENCODE_TABLE:[B

    goto :goto_4
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "urlSafe"    # Z

    .prologue
    .line 103
    const/16 v0, 0x4c

    sget-object v1, Lcom/kakao/auth/helper/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, v0, v1, p1}, Lcom/kakao/auth/helper/Base64;-><init>(I[BZ)V

    .line 104
    return-void
.end method

.method private static encodeBase64([BZZ)[B
    .locals 1
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z
    .param p2, "urlSafe"    # Z

    .prologue
    .line 151
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lcom/kakao/auth/helper/Base64;->encodeBase64([BZZI)[B

    move-result-object v0

    return-object v0
.end method

.method private static encodeBase64([BZZI)[B
    .locals 6
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z
    .param p2, "urlSafe"    # Z
    .param p3, "maxResultSize"    # I

    .prologue
    .line 156
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 169
    .end local p0    # "binaryData":[B
    :cond_0
    :goto_0
    return-object p0

    .line 160
    .restart local p0    # "binaryData":[B
    :cond_1
    if-eqz p1, :cond_2

    new-instance v0, Lcom/kakao/auth/helper/Base64;

    invoke-direct {v0, p2}, Lcom/kakao/auth/helper/Base64;-><init>(Z)V

    .line 161
    .local v0, "b64":Lcom/kakao/auth/helper/Base64;
    :goto_1
    invoke-virtual {v0, p0}, Lcom/kakao/auth/helper/Base64;->getEncodedLength([B)J

    move-result-wide v2

    .line 162
    .local v2, "len":J
    int-to-long v4, p3

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 163
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Input array too big, the output array would be bigger ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") than the specified maximum size of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    .end local v0    # "b64":Lcom/kakao/auth/helper/Base64;
    .end local v2    # "len":J
    :cond_2
    new-instance v0, Lcom/kakao/auth/helper/Base64;

    const/4 v1, 0x0

    sget-object v4, Lcom/kakao/auth/helper/Base64;->CHUNK_SEPARATOR:[B

    invoke-direct {v0, v1, v4, p2}, Lcom/kakao/auth/helper/Base64;-><init>(I[BZ)V

    goto :goto_1

    .line 169
    .restart local v0    # "b64":Lcom/kakao/auth/helper/Base64;
    .restart local v2    # "len":J
    :cond_3
    invoke-virtual {v0, p0}, Lcom/kakao/auth/helper/Base64;->encode([B)[B

    move-result-object p0

    goto :goto_0
.end method

.method public static encodeBase64URLSafeString([B)Ljava/lang/String;
    .locals 2
    .param p0, "binaryData"    # [B

    .prologue
    .line 147
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/kakao/auth/helper/Base64;->encodeBase64([BZZ)[B

    move-result-object v0

    invoke-static {v0}, Lcom/kakao/auth/helper/Base64;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static newString([BLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    const/4 v1, 0x0

    .line 311
    if-nez p0, :cond_0

    .line 313
    :goto_0
    return-object v1

    .line 311
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private static newStringUtf8([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 306
    sget-object v0, Lcom/kakao/auth/helper/Base64;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lcom/kakao/auth/helper/Base64;->newString([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private resizeBuffer(Lcom/kakao/auth/helper/Base64$Context;)[B
    .locals 4
    .param p1, "context"    # Lcom/kakao/auth/helper/Base64$Context;

    .prologue
    const/4 v3, 0x0

    .line 280
    iget-object v1, p1, Lcom/kakao/auth/helper/Base64$Context;->buffer:[B

    if-nez v1, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/kakao/auth/helper/Base64;->getDefaultBufferSize()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p1, Lcom/kakao/auth/helper/Base64$Context;->buffer:[B

    .line 282
    iput v3, p1, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    .line 283
    iput v3, p1, Lcom/kakao/auth/helper/Base64$Context;->readPos:I

    .line 289
    :goto_0
    iget-object v1, p1, Lcom/kakao/auth/helper/Base64$Context;->buffer:[B

    return-object v1

    .line 285
    :cond_0
    iget-object v1, p1, Lcom/kakao/auth/helper/Base64$Context;->buffer:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 286
    .local v0, "b":[B
    iget-object v1, p1, Lcom/kakao/auth/helper/Base64$Context;->buffer:[B

    iget-object v2, p1, Lcom/kakao/auth/helper/Base64$Context;->buffer:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    iput-object v0, p1, Lcom/kakao/auth/helper/Base64$Context;->buffer:[B

    goto :goto_0
.end method


# virtual methods
.method available(Lcom/kakao/auth/helper/Base64$Context;)I
    .locals 2
    .param p1, "context"    # Lcom/kakao/auth/helper/Base64$Context;

    .prologue
    .line 276
    iget-object v0, p1, Lcom/kakao/auth/helper/Base64$Context;->buffer:[B

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    iget v1, p1, Lcom/kakao/auth/helper/Base64$Context;->readPos:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method containsAlphabetOrPad([B)Z
    .locals 5
    .param p1, "arrayOctet"    # [B

    .prologue
    const/4 v1, 0x0

    .line 135
    if-nez p1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v1

    .line 138
    :cond_1
    array-length v3, p1

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-byte v0, p1, v2

    .line 139
    .local v0, "element":B
    const/16 v4, 0x3d

    if-eq v4, v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/kakao/auth/helper/Base64;->isInAlphabet(B)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 140
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 138
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method encode([BIILcom/kakao/auth/helper/Base64$Context;)V
    .locals 10
    .param p1, "in"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I
    .param p4, "context"    # Lcom/kakao/auth/helper/Base64$Context;

    .prologue
    const/16 v9, 0x3d

    const/4 v8, 0x0

    .line 185
    iget-boolean v5, p4, Lcom/kakao/auth/helper/Base64$Context;->eof:Z

    if-eqz v5, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    if-gez p3, :cond_4

    .line 191
    const/4 v5, 0x1

    iput-boolean v5, p4, Lcom/kakao/auth/helper/Base64$Context;->eof:Z

    .line 192
    iget v5, p4, Lcom/kakao/auth/helper/Base64$Context;->modulus:I

    if-nez v5, :cond_2

    iget v5, p0, Lcom/kakao/auth/helper/Base64;->lineLength:I

    if-eqz v5, :cond_0

    .line 195
    :cond_2
    iget v5, p0, Lcom/kakao/auth/helper/Base64;->encodeSize:I

    invoke-virtual {p0, v5, p4}, Lcom/kakao/auth/helper/Base64;->ensureBufferSize(ILcom/kakao/auth/helper/Base64$Context;)[B

    move-result-object v1

    .line 196
    .local v1, "buffer":[B
    iget v4, p4, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    .line 197
    .local v4, "savedPos":I
    iget v5, p4, Lcom/kakao/auth/helper/Base64$Context;->modulus:I

    packed-switch v5, :pswitch_data_0

    .line 222
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Impossible modulus "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p4, Lcom/kakao/auth/helper/Base64$Context;->modulus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 202
    :pswitch_0
    iget v5, p4, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    iget-object v6, p0, Lcom/kakao/auth/helper/Base64;->encodeTable:[B

    iget v7, p4, Lcom/kakao/auth/helper/Base64$Context;->ibitWorkArea:I

    shr-int/lit8 v7, v7, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 204
    iget v5, p4, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    iget-object v6, p0, Lcom/kakao/auth/helper/Base64;->encodeTable:[B

    iget v7, p4, Lcom/kakao/auth/helper/Base64$Context;->ibitWorkArea:I

    shl-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 206
    iget-object v5, p0, Lcom/kakao/auth/helper/Base64;->encodeTable:[B

    sget-object v6, Lcom/kakao/auth/helper/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v5, v6, :cond_3

    .line 207
    iget v5, p4, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    aput-byte v9, v1, v5

    .line 208
    iget v5, p4, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    aput-byte v9, v1, v5

    .line 224
    :cond_3
    :goto_1
    :pswitch_1
    iget v5, p4, Lcom/kakao/auth/helper/Base64$Context;->currentLinePos:I

    iget v6, p4, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    sub-int/2addr v6, v4

    add-int/2addr v5, v6

    iput v5, p4, Lcom/kakao/auth/helper/Base64$Context;->currentLinePos:I

    .line 226
    iget v5, p0, Lcom/kakao/auth/helper/Base64;->lineLength:I

    if-lez v5, :cond_0

    iget v5, p4, Lcom/kakao/auth/helper/Base64$Context;->currentLinePos:I

    if-lez v5, :cond_0

    .line 227
    iget-object v5, p0, Lcom/kakao/auth/helper/Base64;->lineSeparator:[B

    iget v6, p4, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    iget-object v7, p0, Lcom/kakao/auth/helper/Base64;->lineSeparator:[B

    array-length v7, v7

    invoke-static {v5, v8, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    iget v5, p4, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    iget-object v6, p0, Lcom/kakao/auth/helper/Base64;->lineSeparator:[B

    array-length v6, v6

    add-int/2addr v5, v6

    iput v5, p4, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    goto/16 :goto_0

    .line 213
    :pswitch_2
    iget v5, p4, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    iget-object v6, p0, Lcom/kakao/auth/helper/Base64;->encodeTable:[B

    iget v7, p4, Lcom/kakao/auth/helper/Base64$Context;->ibitWorkArea:I

    shr-int/lit8 v7, v7, 0xa

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 214
    iget v5, p4, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    iget-object v6, p0, Lcom/kakao/auth/helper/Base64;->encodeTable:[B

    iget v7, p4, Lcom/kakao/auth/helper/Base64$Context;->ibitWorkArea:I

    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 215
    iget v5, p4, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    iget-object v6, p0, Lcom/kakao/auth/helper/Base64;->encodeTable:[B

    iget v7, p4, Lcom/kakao/auth/helper/Base64$Context;->ibitWorkArea:I

    shl-int/lit8 v7, v7, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 217
    iget-object v5, p0, Lcom/kakao/auth/helper/Base64;->encodeTable:[B

    sget-object v6, Lcom/kakao/auth/helper/Base64;->STANDARD_ENCODE_TABLE:[B

    if-ne v5, v6, :cond_3

    .line 218
    iget v5, p4, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    aput-byte v9, v1, v5

    goto :goto_1

    .line 231
    .end local v1    # "buffer":[B
    .end local v4    # "savedPos":I
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, p2

    .end local p2    # "inPos":I
    .local v3, "inPos":I
    :goto_2
    if-ge v2, p3, :cond_7

    .line 232
    iget v5, p0, Lcom/kakao/auth/helper/Base64;->encodeSize:I

    invoke-virtual {p0, v5, p4}, Lcom/kakao/auth/helper/Base64;->ensureBufferSize(ILcom/kakao/auth/helper/Base64$Context;)[B

    move-result-object v1

    .line 233
    .restart local v1    # "buffer":[B
    iget v5, p4, Lcom/kakao/auth/helper/Base64$Context;->modulus:I

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x3

    iput v5, p4, Lcom/kakao/auth/helper/Base64$Context;->modulus:I

    .line 234
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "inPos":I
    .restart local p2    # "inPos":I
    aget-byte v0, p1, v3

    .line 235
    .local v0, "b":I
    if-gez v0, :cond_5

    .line 236
    add-int/lit16 v0, v0, 0x100

    .line 238
    :cond_5
    iget v5, p4, Lcom/kakao/auth/helper/Base64$Context;->ibitWorkArea:I

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v0

    iput v5, p4, Lcom/kakao/auth/helper/Base64$Context;->ibitWorkArea:I

    .line 239
    iget v5, p4, Lcom/kakao/auth/helper/Base64$Context;->modulus:I

    if-nez v5, :cond_6

    .line 240
    iget v5, p4, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    iget-object v6, p0, Lcom/kakao/auth/helper/Base64;->encodeTable:[B

    iget v7, p4, Lcom/kakao/auth/helper/Base64$Context;->ibitWorkArea:I

    shr-int/lit8 v7, v7, 0x12

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 241
    iget v5, p4, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    iget-object v6, p0, Lcom/kakao/auth/helper/Base64;->encodeTable:[B

    iget v7, p4, Lcom/kakao/auth/helper/Base64$Context;->ibitWorkArea:I

    shr-int/lit8 v7, v7, 0xc

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 242
    iget v5, p4, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    iget-object v6, p0, Lcom/kakao/auth/helper/Base64;->encodeTable:[B

    iget v7, p4, Lcom/kakao/auth/helper/Base64$Context;->ibitWorkArea:I

    shr-int/lit8 v7, v7, 0x6

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 243
    iget v5, p4, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    iget-object v6, p0, Lcom/kakao/auth/helper/Base64;->encodeTable:[B

    iget v7, p4, Lcom/kakao/auth/helper/Base64$Context;->ibitWorkArea:I

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 244
    iget v5, p4, Lcom/kakao/auth/helper/Base64$Context;->currentLinePos:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p4, Lcom/kakao/auth/helper/Base64$Context;->currentLinePos:I

    .line 245
    iget v5, p0, Lcom/kakao/auth/helper/Base64;->lineLength:I

    if-lez v5, :cond_6

    iget v5, p0, Lcom/kakao/auth/helper/Base64;->lineLength:I

    iget v6, p4, Lcom/kakao/auth/helper/Base64$Context;->currentLinePos:I

    if-gt v5, v6, :cond_6

    .line 246
    iget-object v5, p0, Lcom/kakao/auth/helper/Base64;->lineSeparator:[B

    iget v6, p4, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    iget-object v7, p0, Lcom/kakao/auth/helper/Base64;->lineSeparator:[B

    array-length v7, v7

    invoke-static {v5, v8, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    iget v5, p4, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    iget-object v6, p0, Lcom/kakao/auth/helper/Base64;->lineSeparator:[B

    array-length v6, v6

    add-int/2addr v5, v6

    iput v5, p4, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    .line 248
    iput v8, p4, Lcom/kakao/auth/helper/Base64$Context;->currentLinePos:I

    .line 231
    :cond_6
    add-int/lit8 v2, v2, 0x1

    move v3, p2

    .end local p2    # "inPos":I
    .restart local v3    # "inPos":I
    goto/16 :goto_2

    .end local v0    # "b":I
    .end local v1    # "buffer":[B
    :cond_7
    move p2, v3

    .end local v3    # "inPos":I
    .restart local p2    # "inPos":I
    goto/16 :goto_0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method encode([B)[B
    .locals 5
    .param p1, "pArray"    # [B

    .prologue
    const/4 v4, 0x0

    .line 173
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    :cond_0
    move-object v0, p1

    .line 181
    :goto_0
    return-object v0

    .line 176
    :cond_1
    new-instance v1, Lcom/kakao/auth/helper/Base64$Context;

    invoke-direct {v1}, Lcom/kakao/auth/helper/Base64$Context;-><init>()V

    .line 177
    .local v1, "context":Lcom/kakao/auth/helper/Base64$Context;
    array-length v2, p1

    invoke-virtual {p0, p1, v4, v2, v1}, Lcom/kakao/auth/helper/Base64;->encode([BIILcom/kakao/auth/helper/Base64$Context;)V

    .line 178
    const/4 v2, -0x1

    invoke-virtual {p0, p1, v4, v2, v1}, Lcom/kakao/auth/helper/Base64;->encode([BIILcom/kakao/auth/helper/Base64$Context;)V

    .line 179
    iget v2, v1, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    iget v3, v1, Lcom/kakao/auth/helper/Base64$Context;->readPos:I

    sub-int/2addr v2, v3

    new-array v0, v2, [B

    .line 180
    .local v0, "buf":[B
    array-length v2, v0

    invoke-virtual {p0, v0, v4, v2, v1}, Lcom/kakao/auth/helper/Base64;->readResults([BIILcom/kakao/auth/helper/Base64$Context;)I

    goto :goto_0
.end method

.method ensureBufferSize(ILcom/kakao/auth/helper/Base64$Context;)[B
    .locals 2
    .param p1, "size"    # I
    .param p2, "context"    # Lcom/kakao/auth/helper/Base64$Context;

    .prologue
    .line 256
    iget-object v0, p2, Lcom/kakao/auth/helper/Base64$Context;->buffer:[B

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/kakao/auth/helper/Base64$Context;->buffer:[B

    array-length v0, v0

    iget v1, p2, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_1

    .line 257
    :cond_0
    invoke-direct {p0, p2}, Lcom/kakao/auth/helper/Base64;->resizeBuffer(Lcom/kakao/auth/helper/Base64$Context;)[B

    move-result-object v0

    .line 259
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p2, Lcom/kakao/auth/helper/Base64$Context;->buffer:[B

    goto :goto_0
.end method

.method getDefaultBufferSize()I
    .locals 1

    .prologue
    .line 293
    const/16 v0, 0x2000

    return v0
.end method

.method getEncodedLength([B)J
    .locals 6
    .param p1, "pArray"    # [B

    .prologue
    .line 298
    array-length v2, p1

    iget v3, p0, Lcom/kakao/auth/helper/Base64;->unencodedBlockSize:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/kakao/auth/helper/Base64;->unencodedBlockSize:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    iget v4, p0, Lcom/kakao/auth/helper/Base64;->encodedBlockSize:I

    int-to-long v4, v4

    mul-long v0, v2, v4

    .line 299
    .local v0, "len":J
    iget v2, p0, Lcom/kakao/auth/helper/Base64;->lineLength:I

    if-lez v2, :cond_0

    .line 300
    iget v2, p0, Lcom/kakao/auth/helper/Base64;->lineLength:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/kakao/auth/helper/Base64;->lineLength:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    iget v4, p0, Lcom/kakao/auth/helper/Base64;->chunkSeparatorLength:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 302
    :cond_0
    return-wide v0
.end method

.method isInAlphabet(B)Z
    .locals 2
    .param p1, "octet"    # B

    .prologue
    .line 318
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/kakao/auth/helper/Base64;->decodeTable:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/kakao/auth/helper/Base64;->decodeTable:[B

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method readResults([BIILcom/kakao/auth/helper/Base64$Context;)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "bPos"    # I
    .param p3, "bAvail"    # I
    .param p4, "context"    # Lcom/kakao/auth/helper/Base64$Context;

    .prologue
    .line 263
    iget-object v1, p4, Lcom/kakao/auth/helper/Base64$Context;->buffer:[B

    if-eqz v1, :cond_1

    .line 264
    invoke-virtual {p0, p4}, Lcom/kakao/auth/helper/Base64;->available(Lcom/kakao/auth/helper/Base64$Context;)I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 265
    .local v0, "len":I
    iget-object v1, p4, Lcom/kakao/auth/helper/Base64$Context;->buffer:[B

    iget v2, p4, Lcom/kakao/auth/helper/Base64$Context;->readPos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    iget v1, p4, Lcom/kakao/auth/helper/Base64$Context;->readPos:I

    add-int/2addr v1, v0

    iput v1, p4, Lcom/kakao/auth/helper/Base64$Context;->readPos:I

    .line 267
    iget v1, p4, Lcom/kakao/auth/helper/Base64$Context;->readPos:I

    iget v2, p4, Lcom/kakao/auth/helper/Base64$Context;->pos:I

    if-lt v1, v2, :cond_0

    .line 268
    const/4 v1, 0x0

    iput-object v1, p4, Lcom/kakao/auth/helper/Base64$Context;->buffer:[B

    .line 272
    .end local v0    # "len":I
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p4, Lcom/kakao/auth/helper/Base64$Context;->eof:Z

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
