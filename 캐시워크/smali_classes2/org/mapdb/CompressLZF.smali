.class public final Lorg/mapdb/CompressLZF;
.super Ljava/lang/Object;
.source "CompressLZF.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final HASH_SIZE:I = 0x4000

.field private static final MAX_LITERAL:I = 0x20

.field private static final MAX_OFF:I = 0x2000

.field private static final MAX_REF:I = 0x108


# instance fields
.field private cachedHashTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const-class v0, Lorg/mapdb/CompressLZF;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/mapdb/CompressLZF;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static first([BI)I
    .locals 2
    .param p0, "in"    # [B
    .param p1, "inPos"    # I

    .prologue
    .line 144
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static hash(I)I
    .locals 1
    .param p0, "h"    # I

    .prologue
    .line 158
    mul-int/lit16 v0, p0, 0xad9

    shr-int/lit8 v0, v0, 0x9

    and-int/lit16 v0, v0, 0x3fff

    return v0
.end method

.method private static next(I[BI)I
    .locals 2
    .param p0, "v"    # I
    .param p1, "in"    # [B
    .param p2, "inPos"    # I

    .prologue
    .line 151
    shl-int/lit8 v0, p0, 0x8

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public compress([BI[BI)I
    .locals 13
    .param p1, "in"    # [B
    .param p2, "inLen"    # I
    .param p3, "out"    # [B
    .param p4, "outPos"    # I

    .prologue
    .line 162
    const/4 v2, 0x0

    .line 163
    .local v2, "inPos":I
    iget-object v11, p0, Lorg/mapdb/CompressLZF;->cachedHashTable:[I

    if-nez v11, :cond_0

    .line 164
    const/16 v11, 0x4000

    new-array v11, v11, [I

    iput-object v11, p0, Lorg/mapdb/CompressLZF;->cachedHashTable:[I

    .line 166
    :cond_0
    iget-object v1, p0, Lorg/mapdb/CompressLZF;->cachedHashTable:[I

    .line 167
    .local v1, "hashTab":[I
    const/4 v5, 0x0

    .line 168
    .local v5, "literals":I
    add-int/lit8 p4, p4, 0x1

    .line 169
    const/4 v11, 0x0

    invoke-static {p1, v11}, Lorg/mapdb/CompressLZF;->first([BI)I

    move-result v0

    .local v0, "future":I
    move v3, v2

    .end local v2    # "inPos":I
    .local v3, "inPos":I
    move/from16 v8, p4

    .line 170
    .end local p4    # "outPos":I
    .local v8, "outPos":I
    :goto_0
    add-int/lit8 v11, p2, -0x4

    if-ge v3, v11, :cond_7

    .line 171
    add-int/lit8 v11, v3, 0x2

    aget-byte v9, p1, v11

    .line 173
    .local v9, "p2":B
    shl-int/lit8 v11, v0, 0x8

    and-int/lit16 v12, v9, 0xff

    add-int v0, v11, v12

    .line 174
    invoke-static {v0}, Lorg/mapdb/CompressLZF;->hash(I)I

    move-result v7

    .line 175
    .local v7, "off":I
    aget v10, v1, v7

    .line 176
    .local v10, "ref":I
    aput v3, v1, v7

    .line 183
    if-ge v10, v3, :cond_6

    if-lez v10, :cond_6

    sub-int v11, v3, v10

    add-int/lit8 v7, v11, -0x1

    const/16 v11, 0x2000

    if-ge v7, v11, :cond_6

    add-int/lit8 v11, v10, 0x2

    aget-byte v11, p1, v11

    if-ne v11, v9, :cond_6

    add-int/lit8 v11, v10, 0x1

    aget-byte v11, p1, v11

    shr-int/lit8 v12, v0, 0x8

    int-to-byte v12, v12

    if-ne v11, v12, :cond_6

    aget-byte v11, p1, v10

    shr-int/lit8 v12, v0, 0x10

    int-to-byte v12, v12

    if-ne v11, v12, :cond_6

    .line 190
    sub-int v11, p2, v3

    add-int/lit8 v6, v11, -0x2

    .line 191
    .local v6, "maxLen":I
    const/16 v11, 0x108

    if-le v6, v11, :cond_1

    .line 192
    const/16 v6, 0x108

    .line 194
    :cond_1
    if-nez v5, :cond_2

    .line 197
    add-int/lit8 p4, v8, -0x1

    .line 204
    .end local v8    # "outPos":I
    .restart local p4    # "outPos":I
    :goto_1
    const/4 v4, 0x3

    .line 205
    .local v4, "len":I
    :goto_2
    if-ge v4, v6, :cond_3

    add-int v11, v10, v4

    aget-byte v11, p1, v11

    add-int v12, v3, v4

    aget-byte v12, p1, v12

    if-ne v11, v12, :cond_3

    .line 206
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 201
    .end local v4    # "len":I
    .end local p4    # "outPos":I
    .restart local v8    # "outPos":I
    :cond_2
    sub-int v11, v8, v5

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v12, v5, -0x1

    int-to-byte v12, v12

    aput-byte v12, p3, v11

    .line 202
    const/4 v5, 0x0

    move/from16 p4, v8

    .end local v8    # "outPos":I
    .restart local p4    # "outPos":I
    goto :goto_1

    .line 208
    .restart local v4    # "len":I
    :cond_3
    add-int/lit8 v4, v4, -0x2

    .line 209
    const/4 v11, 0x7

    if-ge v4, v11, :cond_5

    .line 210
    add-int/lit8 v8, p4, 0x1

    .end local p4    # "outPos":I
    .restart local v8    # "outPos":I
    shr-int/lit8 v11, v7, 0x8

    shl-int/lit8 v12, v4, 0x5

    add-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, p3, p4

    move/from16 p4, v8

    .line 215
    .end local v8    # "outPos":I
    .restart local p4    # "outPos":I
    :goto_3
    add-int/lit8 v8, p4, 0x1

    .end local p4    # "outPos":I
    .restart local v8    # "outPos":I
    int-to-byte v11, v7

    aput-byte v11, p3, p4

    .line 217
    add-int/lit8 p4, v8, 0x1

    .line 218
    .end local v8    # "outPos":I
    .restart local p4    # "outPos":I
    add-int v2, v3, v4

    .line 222
    .end local v3    # "inPos":I
    .restart local v2    # "inPos":I
    invoke-static {p1, v2}, Lorg/mapdb/CompressLZF;->first([BI)I

    move-result v0

    .line 223
    invoke-static {v0, p1, v2}, Lorg/mapdb/CompressLZF;->next(I[BI)I

    move-result v0

    .line 224
    invoke-static {v0}, Lorg/mapdb/CompressLZF;->hash(I)I

    move-result v11

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "inPos":I
    .restart local v3    # "inPos":I
    aput v2, v1, v11

    .line 225
    invoke-static {v0, p1, v3}, Lorg/mapdb/CompressLZF;->next(I[BI)I

    move-result v0

    .line 226
    invoke-static {v0}, Lorg/mapdb/CompressLZF;->hash(I)I

    move-result v11

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inPos":I
    .restart local v2    # "inPos":I
    aput v3, v1, v11

    .end local v4    # "len":I
    .end local v6    # "maxLen":I
    :cond_4
    :goto_4
    move v3, v2

    .end local v2    # "inPos":I
    .restart local v3    # "inPos":I
    move/from16 v8, p4

    .line 241
    .end local p4    # "outPos":I
    .restart local v8    # "outPos":I
    goto/16 :goto_0

    .line 212
    .end local v8    # "outPos":I
    .restart local v4    # "len":I
    .restart local v6    # "maxLen":I
    .restart local p4    # "outPos":I
    :cond_5
    add-int/lit8 v8, p4, 0x1

    .end local p4    # "outPos":I
    .restart local v8    # "outPos":I
    shr-int/lit8 v11, v7, 0x8

    add-int/lit16 v11, v11, 0xe0

    int-to-byte v11, v11

    aput-byte v11, p3, p4

    .line 213
    add-int/lit8 p4, v8, 0x1

    .end local v8    # "outPos":I
    .restart local p4    # "outPos":I
    add-int/lit8 v11, v4, -0x7

    int-to-byte v11, v11

    aput-byte v11, p3, v8

    goto :goto_3

    .line 229
    .end local v4    # "len":I
    .end local v6    # "maxLen":I
    .end local p4    # "outPos":I
    .restart local v8    # "outPos":I
    :cond_6
    add-int/lit8 p4, v8, 0x1

    .end local v8    # "outPos":I
    .restart local p4    # "outPos":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inPos":I
    .restart local v2    # "inPos":I
    aget-byte v11, p1, v3

    aput-byte v11, p3, v8

    .line 230
    add-int/lit8 v5, v5, 0x1

    .line 233
    const/16 v11, 0x20

    if-ne v5, v11, :cond_4

    .line 234
    sub-int v11, p4, v5

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v12, v5, -0x1

    int-to-byte v12, v12

    aput-byte v12, p3, v11

    .line 235
    const/4 v5, 0x0

    .line 238
    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    .line 243
    .end local v2    # "inPos":I
    .end local v7    # "off":I
    .end local v9    # "p2":B
    .end local v10    # "ref":I
    .end local p4    # "outPos":I
    .restart local v3    # "inPos":I
    .restart local v8    # "outPos":I
    :cond_7
    :goto_5
    if-ge v3, p2, :cond_8

    .line 244
    add-int/lit8 p4, v8, 0x1

    .end local v8    # "outPos":I
    .restart local p4    # "outPos":I
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "inPos":I
    .restart local v2    # "inPos":I
    aget-byte v11, p1, v3

    aput-byte v11, p3, v8

    .line 245
    add-int/lit8 v5, v5, 0x1

    .line 246
    const/16 v11, 0x20

    if-ne v5, v11, :cond_a

    .line 247
    sub-int v11, p4, v5

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v12, v5, -0x1

    int-to-byte v12, v12

    aput-byte v12, p3, v11

    .line 248
    const/4 v5, 0x0

    .line 249
    add-int/lit8 p4, p4, 0x1

    move v3, v2

    .end local v2    # "inPos":I
    .restart local v3    # "inPos":I
    move/from16 v8, p4

    .end local p4    # "outPos":I
    .restart local v8    # "outPos":I
    goto :goto_5

    .line 253
    :cond_8
    sub-int v11, v8, v5

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v12, v5, -0x1

    int-to-byte v12, v12

    aput-byte v12, p3, v11

    .line 254
    if-nez v5, :cond_9

    .line 255
    add-int/lit8 p4, v8, -0x1

    .line 257
    .end local v8    # "outPos":I
    .restart local p4    # "outPos":I
    :goto_6
    return p4

    .end local p4    # "outPos":I
    .restart local v8    # "outPos":I
    :cond_9
    move/from16 p4, v8

    .end local v8    # "outPos":I
    .restart local p4    # "outPos":I
    goto :goto_6

    .end local v3    # "inPos":I
    .restart local v2    # "inPos":I
    :cond_a
    move v3, v2

    .end local v2    # "inPos":I
    .restart local v3    # "inPos":I
    move/from16 v8, p4

    .end local p4    # "outPos":I
    .restart local v8    # "outPos":I
    goto :goto_5
.end method

.method public expand(Ljava/io/DataInput;[BII)V
    .locals 7
    .param p1, "in"    # Ljava/io/DataInput;
    .param p2, "out"    # [B
    .param p3, "outPos"    # I
    .param p4, "outLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    sget-boolean v5, Lorg/mapdb/CompressLZF;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-gez p4, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 264
    :cond_0
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v5

    and-int/lit16 v0, v5, 0xff

    .line 265
    .local v0, "ctrl":I
    const/16 v5, 0x20

    if-ge v0, v5, :cond_1

    .line 267
    add-int/lit8 v0, v0, 0x1

    .line 269
    invoke-interface {p1, p2, p3, v0}, Ljava/io/DataInput;->readFully([BII)V

    .line 270
    add-int/2addr p3, v0

    .line 301
    :goto_0
    if-lt p3, p4, :cond_0

    .line 302
    return-void

    .line 274
    :cond_1
    shr-int/lit8 v3, v0, 0x5

    .line 276
    .local v3, "len":I
    const/4 v5, 0x7

    if-ne v3, v5, :cond_2

    .line 277
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v3, v5

    .line 281
    :cond_2
    add-int/lit8 v3, v3, 0x2

    .line 285
    and-int/lit8 v5, v0, 0x1f

    shl-int/lit8 v5, v5, 0x8

    neg-int v5, v5

    add-int/lit8 v0, v5, -0x1

    .line 288
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    sub-int/2addr v0, v5

    .line 292
    add-int/2addr v0, p3

    .line 293
    add-int v5, p3, v3

    array-length v6, p2

    if-lt v5, v6, :cond_3

    .line 295
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v5

    .line 297
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    move v1, v0

    .end local v0    # "ctrl":I
    .local v1, "ctrl":I
    move v4, p3

    .end local p3    # "outPos":I
    .local v4, "outPos":I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 298
    add-int/lit8 p3, v4, 0x1

    .end local v4    # "outPos":I
    .restart local p3    # "outPos":I
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "ctrl":I
    .restart local v0    # "ctrl":I
    aget-byte v5, p2, v1

    aput-byte v5, p2, v4

    .line 297
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    .end local v0    # "ctrl":I
    .restart local v1    # "ctrl":I
    move v4, p3

    .end local p3    # "outPos":I
    .restart local v4    # "outPos":I
    goto :goto_1

    :cond_4
    move v0, v1

    .end local v1    # "ctrl":I
    .restart local v0    # "ctrl":I
    move p3, v4

    .end local v4    # "outPos":I
    .restart local p3    # "outPos":I
    goto :goto_0
.end method

.method public expand(Ljava/nio/ByteBuffer;I[BII)V
    .locals 9
    .param p1, "in"    # Ljava/nio/ByteBuffer;
    .param p2, "inPos"    # I
    .param p3, "out"    # [B
    .param p4, "outPos"    # I
    .param p5, "outLen"    # I

    .prologue
    .line 349
    const/4 v3, 0x0

    .line 350
    .local v3, "in2":Ljava/nio/ByteBuffer;
    sget-boolean v7, Lorg/mapdb/CompressLZF;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-gez p5, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 352
    :cond_0
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "inPos":I
    .local v4, "inPos":I
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit16 v0, v7, 0xff

    .line 353
    .local v0, "ctrl":I
    const/16 v7, 0x20

    if-ge v0, v7, :cond_2

    .line 355
    add-int/lit8 v0, v0, 0x1

    .line 358
    if-nez v3, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 359
    :cond_1
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 360
    invoke-virtual {v3, p3, p4, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 361
    add-int/2addr p4, v0

    .line 362
    add-int p2, v4, v0

    .line 393
    .end local v4    # "inPos":I
    .restart local p2    # "inPos":I
    :goto_0
    if-lt p4, p5, :cond_0

    .line 394
    return-void

    .line 366
    .end local p2    # "inPos":I
    .restart local v4    # "inPos":I
    :cond_2
    shr-int/lit8 v5, v0, 0x5

    .line 368
    .local v5, "len":I
    const/4 v7, 0x7

    if-ne v5, v7, :cond_5

    .line 369
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "inPos":I
    .restart local p2    # "inPos":I
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v5, v7

    .line 373
    :goto_1
    add-int/lit8 v5, v5, 0x2

    .line 377
    and-int/lit8 v7, v0, 0x1f

    shl-int/lit8 v7, v7, 0x8

    neg-int v7, v7

    add-int/lit8 v0, v7, -0x1

    .line 380
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "inPos":I
    .restart local v4    # "inPos":I
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    sub-int/2addr v0, v7

    .line 384
    add-int/2addr v0, p4

    .line 385
    add-int v7, p4, v5

    array-length v8, p3

    if-lt v7, v8, :cond_3

    .line 387
    new-instance v7, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v7}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v7

    .line 389
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    move v1, v0

    .end local v0    # "ctrl":I
    .local v1, "ctrl":I
    move v6, p4

    .end local p4    # "outPos":I
    .local v6, "outPos":I
    :goto_2
    if-ge v2, v5, :cond_4

    .line 390
    add-int/lit8 p4, v6, 0x1

    .end local v6    # "outPos":I
    .restart local p4    # "outPos":I
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "ctrl":I
    .restart local v0    # "ctrl":I
    aget-byte v7, p3, v1

    aput-byte v7, p3, v6

    .line 389
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    .end local v0    # "ctrl":I
    .restart local v1    # "ctrl":I
    move v6, p4

    .end local p4    # "outPos":I
    .restart local v6    # "outPos":I
    goto :goto_2

    :cond_4
    move v0, v1

    .end local v1    # "ctrl":I
    .restart local v0    # "ctrl":I
    move p4, v6

    .end local v6    # "outPos":I
    .restart local p4    # "outPos":I
    move p2, v4

    .end local v4    # "inPos":I
    .restart local p2    # "inPos":I
    goto :goto_0

    .end local v2    # "i":I
    .end local p2    # "inPos":I
    .restart local v4    # "inPos":I
    :cond_5
    move p2, v4

    .end local v4    # "inPos":I
    .restart local p2    # "inPos":I
    goto :goto_1
.end method
