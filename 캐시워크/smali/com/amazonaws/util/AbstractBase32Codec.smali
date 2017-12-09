.class abstract Lcom/amazonaws/util/AbstractBase32Codec;
.super Ljava/lang/Object;
.source "AbstractBase32Codec.java"

# interfaces
.implements Lcom/amazonaws/util/Codec;


# static fields
.field private static final MASK_2BITS:I = 0x3

.field private static final MASK_3BITS:I = 0x7

.field private static final MASK_4BITS:I = 0xf

.field private static final MASK_5BITS:I = 0x1f

.field private static final PAD:B = 0x3dt


# instance fields
.field private final ALPAHBETS:[B


# direct methods
.method protected constructor <init>([B)V
    .locals 0
    .param p1, "alphabets"    # [B

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazonaws/util/AbstractBase32Codec;->ALPAHBETS:[B

    .line 37
    return-void
.end method

.method private final decode1to4bytes(I[BI[BI)V
    .locals 7
    .param p1, "n"    # I
    .param p2, "src"    # [B
    .param p3, "s"    # I
    .param p4, "dest"    # [B
    .param p5, "d"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 190
    const/4 v1, 0x0

    .line 192
    .local v1, "p":I
    add-int/lit8 v0, p5, 0x1

    .end local p5    # "d":I
    .local v0, "d":I
    add-int/lit8 v2, p3, 0x1

    .end local p3    # "s":I
    .local v2, "s":I
    aget-byte v3, p2, p3

    .line 194
    invoke-virtual {p0, v3}, Lcom/amazonaws/util/AbstractBase32Codec;->pos(B)I

    move-result v3

    shl-int/lit8 v3, v3, 0x3

    add-int/lit8 p3, v2, 0x1

    .end local v2    # "s":I
    .restart local p3    # "s":I
    aget-byte v4, p2, v2

    .line 195
    invoke-virtual {p0, v4}, Lcom/amazonaws/util/AbstractBase32Codec;->pos(B)I

    move-result v1

    ushr-int/lit8 v4, v1, 0x2

    and-int/lit8 v4, v4, 0x7

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p4, p5

    .line 197
    if-ne p1, v5, :cond_0

    .line 198
    invoke-static {v1, v6}, Lcom/amazonaws/util/CodecUtils;->sanityCheckLastPos(II)V

    move p5, v0

    .line 230
    .end local v0    # "d":I
    .restart local p5    # "d":I
    :goto_0
    return-void

    .line 202
    .end local p5    # "d":I
    .restart local v0    # "d":I
    :cond_0
    add-int/lit8 p5, v0, 0x1

    .end local v0    # "d":I
    .restart local p5    # "d":I
    and-int/lit8 v3, v1, 0x3

    shl-int/lit8 v3, v3, 0x6

    add-int/lit8 v2, p3, 0x1

    .end local p3    # "s":I
    .restart local v2    # "s":I
    aget-byte v4, p2, p3

    .line 205
    invoke-virtual {p0, v4}, Lcom/amazonaws/util/AbstractBase32Codec;->pos(B)I

    move-result v4

    shl-int/lit8 v4, v4, 0x1

    or-int/2addr v3, v4

    add-int/lit8 p3, v2, 0x1

    .end local v2    # "s":I
    .restart local p3    # "s":I
    aget-byte v4, p2, v2

    .line 206
    invoke-virtual {p0, v4}, Lcom/amazonaws/util/AbstractBase32Codec;->pos(B)I

    move-result v1

    ushr-int/lit8 v4, v1, 0x4

    and-int/lit8 v4, v4, 0x1

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p4, v0

    .line 208
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 209
    const/16 v3, 0xf

    invoke-static {v1, v3}, Lcom/amazonaws/util/CodecUtils;->sanityCheckLastPos(II)V

    goto :goto_0

    .line 213
    :cond_1
    add-int/lit8 v0, p5, 0x1

    .end local p5    # "d":I
    .restart local v0    # "d":I
    and-int/lit8 v3, v1, 0xf

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v2, p3, 0x1

    .end local p3    # "s":I
    .restart local v2    # "s":I
    aget-byte v4, p2, p3

    .line 216
    invoke-virtual {p0, v4}, Lcom/amazonaws/util/AbstractBase32Codec;->pos(B)I

    move-result v1

    ushr-int/lit8 v4, v1, 0x1

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p4, p5

    .line 218
    if-ne p1, v6, :cond_2

    .line 219
    invoke-static {v1, v5}, Lcom/amazonaws/util/CodecUtils;->sanityCheckLastPos(II)V

    move p5, v0

    .end local v0    # "d":I
    .restart local p5    # "d":I
    move p3, v2

    .line 220
    .end local v2    # "s":I
    .restart local p3    # "s":I
    goto :goto_0

    .line 223
    .end local p3    # "s":I
    .end local p5    # "d":I
    .restart local v0    # "d":I
    .restart local v2    # "s":I
    :cond_2
    and-int/lit8 v3, v1, 0x1

    shl-int/lit8 v3, v3, 0x7

    add-int/lit8 p3, v2, 0x1

    .end local v2    # "s":I
    .restart local p3    # "s":I
    aget-byte v4, p2, v2

    .line 226
    invoke-virtual {p0, v4}, Lcom/amazonaws/util/AbstractBase32Codec;->pos(B)I

    move-result v4

    shl-int/lit8 v4, v4, 0x2

    or-int/2addr v3, v4

    aget-byte v4, p2, p3

    .line 227
    invoke-virtual {p0, v4}, Lcom/amazonaws/util/AbstractBase32Codec;->pos(B)I

    move-result v1

    ushr-int/lit8 v4, v1, 0x3

    and-int/lit8 v4, v4, 0x3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p4, v0

    .line 229
    const/4 v3, 0x7

    invoke-static {v1, v3}, Lcom/amazonaws/util/CodecUtils;->sanityCheckLastPos(II)V

    move p5, v0

    .line 230
    .end local v0    # "d":I
    .restart local p5    # "d":I
    goto :goto_0
.end method

.method private final decode5bytes([BI[BI)V
    .locals 5
    .param p1, "src"    # [B
    .param p2, "s"    # I
    .param p3, "dest"    # [B
    .param p4, "d"    # I

    .prologue
    .line 153
    const/4 v1, 0x0

    .line 155
    .local v1, "p":I
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "d":I
    .local v0, "d":I
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "s":I
    .local v2, "s":I
    aget-byte v3, p1, p2

    .line 157
    invoke-virtual {p0, v3}, Lcom/amazonaws/util/AbstractBase32Codec;->pos(B)I

    move-result v3

    shl-int/lit8 v3, v3, 0x3

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "s":I
    .restart local p2    # "s":I
    aget-byte v4, p1, v2

    .line 158
    invoke-virtual {p0, v4}, Lcom/amazonaws/util/AbstractBase32Codec;->pos(B)I

    move-result v1

    ushr-int/lit8 v4, v1, 0x2

    and-int/lit8 v4, v4, 0x7

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, p4

    .line 160
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "d":I
    .restart local p4    # "d":I
    and-int/lit8 v3, v1, 0x3

    shl-int/lit8 v3, v3, 0x6

    add-int/lit8 v2, p2, 0x1

    .end local p2    # "s":I
    .restart local v2    # "s":I
    aget-byte v4, p1, p2

    .line 163
    invoke-virtual {p0, v4}, Lcom/amazonaws/util/AbstractBase32Codec;->pos(B)I

    move-result v4

    shl-int/lit8 v4, v4, 0x1

    or-int/2addr v3, v4

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "s":I
    .restart local p2    # "s":I
    aget-byte v4, p1, v2

    .line 164
    invoke-virtual {p0, v4}, Lcom/amazonaws/util/AbstractBase32Codec;->pos(B)I

    move-result v1

    ushr-int/lit8 v4, v1, 0x4

    and-int/lit8 v4, v4, 0x1

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v0

    .line 166
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "d":I
    .restart local v0    # "d":I
    and-int/lit8 v3, v1, 0xf

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v2, p2, 0x1

    .end local p2    # "s":I
    .restart local v2    # "s":I
    aget-byte v4, p1, p2

    .line 169
    invoke-virtual {p0, v4}, Lcom/amazonaws/util/AbstractBase32Codec;->pos(B)I

    move-result v1

    ushr-int/lit8 v4, v1, 0x1

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, p4

    .line 171
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "d":I
    .restart local p4    # "d":I
    and-int/lit8 v3, v1, 0x1

    shl-int/lit8 v3, v3, 0x7

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "s":I
    .restart local p2    # "s":I
    aget-byte v4, p1, v2

    .line 174
    invoke-virtual {p0, v4}, Lcom/amazonaws/util/AbstractBase32Codec;->pos(B)I

    move-result v4

    shl-int/lit8 v4, v4, 0x2

    or-int/2addr v3, v4

    add-int/lit8 v2, p2, 0x1

    .end local p2    # "s":I
    .restart local v2    # "s":I
    aget-byte v4, p1, p2

    .line 175
    invoke-virtual {p0, v4}, Lcom/amazonaws/util/AbstractBase32Codec;->pos(B)I

    move-result v1

    ushr-int/lit8 v4, v1, 0x3

    and-int/lit8 v4, v4, 0x3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v0

    .line 177
    and-int/lit8 v3, v1, 0x7

    shl-int/lit8 v3, v3, 0x5

    aget-byte v4, p1, v2

    .line 180
    invoke-virtual {p0, v4}, Lcom/amazonaws/util/AbstractBase32Codec;->pos(B)I

    move-result v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, p4

    .line 182
    return-void
.end method

.method private final encode1byte([BI[BI)V
    .locals 5
    .param p1, "src"    # [B
    .param p2, "s"    # I
    .param p3, "dest"    # [B
    .param p4, "d"    # I

    .prologue
    .line 144
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "d":I
    .local v0, "d":I
    iget-object v3, p0, Lcom/amazonaws/util/AbstractBase32Codec;->ALPAHBETS:[B

    aget-byte v2, p1, p2

    .local v2, "p":B
    ushr-int/lit8 v4, v2, 0x3

    and-int/lit8 v4, v4, 0x1f

    aget-byte v3, v3, v4

    aput-byte v3, p3, p4

    .line 145
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "d":I
    .restart local p4    # "d":I
    iget-object v3, p0, Lcom/amazonaws/util/AbstractBase32Codec;->ALPAHBETS:[B

    and-int/lit8 v4, v2, 0x7

    shl-int/lit8 v4, v4, 0x2

    aget-byte v3, v3, v4

    aput-byte v3, p3, v0

    .line 147
    const/4 v1, 0x0

    .local v1, "i":I
    move v0, p4

    .end local p4    # "d":I
    .restart local v0    # "d":I
    :goto_0
    const/4 v3, 0x6

    if-ge v1, v3, :cond_0

    .line 148
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "d":I
    .restart local p4    # "d":I
    const/16 v3, 0x3d

    aput-byte v3, p3, v0

    .line 147
    add-int/lit8 v1, v1, 0x1

    move v0, p4

    .end local p4    # "d":I
    .restart local v0    # "d":I
    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method

.method private final encode2bytes([BI[BI)V
    .locals 7
    .param p1, "src"    # [B
    .param p2, "s"    # I
    .param p3, "dest"    # [B
    .param p4, "d"    # I

    .prologue
    .line 130
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "d":I
    .local v0, "d":I
    iget-object v4, p0, Lcom/amazonaws/util/AbstractBase32Codec;->ALPAHBETS:[B

    add-int/lit8 v3, p2, 0x1

    .end local p2    # "s":I
    .local v3, "s":I
    aget-byte v2, p1, p2

    .local v2, "p":B
    ushr-int/lit8 v5, v2, 0x3

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, p3, p4

    .line 131
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "d":I
    .restart local p4    # "d":I
    iget-object v4, p0, Lcom/amazonaws/util/AbstractBase32Codec;->ALPAHBETS:[B

    and-int/lit8 v5, v2, 0x7

    shl-int/lit8 v5, v5, 0x2

    aget-byte v2, p1, v3

    ushr-int/lit8 v6, v2, 0x6

    and-int/lit8 v6, v6, 0x3

    or-int/2addr v5, v6

    aget-byte v4, v4, v5

    aput-byte v4, p3, v0

    .line 133
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "d":I
    .restart local v0    # "d":I
    iget-object v4, p0, Lcom/amazonaws/util/AbstractBase32Codec;->ALPAHBETS:[B

    ushr-int/lit8 v5, v2, 0x1

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, p3, p4

    .line 134
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "d":I
    .restart local p4    # "d":I
    iget-object v4, p0, Lcom/amazonaws/util/AbstractBase32Codec;->ALPAHBETS:[B

    and-int/lit8 v5, v2, 0x1

    shl-int/lit8 v5, v5, 0x4

    aget-byte v4, v4, v5

    aput-byte v4, p3, v0

    .line 136
    const/4 v1, 0x0

    .local v1, "i":I
    move v0, p4

    .end local p4    # "d":I
    .restart local v0    # "d":I
    :goto_0
    const/4 v4, 0x4

    if-ge v1, v4, :cond_0

    .line 137
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "d":I
    .restart local p4    # "d":I
    const/16 v4, 0x3d

    aput-byte v4, p3, v0

    .line 136
    add-int/lit8 v1, v1, 0x1

    move v0, p4

    .end local p4    # "d":I
    .restart local v0    # "d":I
    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method

.method private final encode3bytes([BI[BI)V
    .locals 7
    .param p1, "src"    # [B
    .param p2, "s"    # I
    .param p3, "dest"    # [B
    .param p4, "d"    # I

    .prologue
    .line 114
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "d":I
    .local v0, "d":I
    iget-object v4, p0, Lcom/amazonaws/util/AbstractBase32Codec;->ALPAHBETS:[B

    add-int/lit8 v3, p2, 0x1

    .end local p2    # "s":I
    .local v3, "s":I
    aget-byte v2, p1, p2

    .local v2, "p":B
    ushr-int/lit8 v5, v2, 0x3

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, p3, p4

    .line 115
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "d":I
    .restart local p4    # "d":I
    iget-object v4, p0, Lcom/amazonaws/util/AbstractBase32Codec;->ALPAHBETS:[B

    and-int/lit8 v5, v2, 0x7

    shl-int/lit8 v5, v5, 0x2

    add-int/lit8 p2, v3, 0x1

    .end local v3    # "s":I
    .restart local p2    # "s":I
    aget-byte v2, p1, v3

    ushr-int/lit8 v6, v2, 0x6

    and-int/lit8 v6, v6, 0x3

    or-int/2addr v5, v6

    aget-byte v4, v4, v5

    aput-byte v4, p3, v0

    .line 117
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "d":I
    .restart local v0    # "d":I
    iget-object v4, p0, Lcom/amazonaws/util/AbstractBase32Codec;->ALPAHBETS:[B

    ushr-int/lit8 v5, v2, 0x1

    and-int/lit8 v5, v5, 0x1f

    aget-byte v4, v4, v5

    aput-byte v4, p3, p4

    .line 118
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "d":I
    .restart local p4    # "d":I
    iget-object v4, p0, Lcom/amazonaws/util/AbstractBase32Codec;->ALPAHBETS:[B

    and-int/lit8 v5, v2, 0x1

    shl-int/lit8 v5, v5, 0x4

    aget-byte v2, p1, p2

    ushr-int/lit8 v6, v2, 0x4

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    aget-byte v4, v4, v5

    aput-byte v4, p3, v0

    .line 120
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "d":I
    .restart local v0    # "d":I
    iget-object v4, p0, Lcom/amazonaws/util/AbstractBase32Codec;->ALPAHBETS:[B

    and-int/lit8 v5, v2, 0xf

    shl-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    aput-byte v4, p3, p4

    .line 122
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x3

    if-ge v1, v4, :cond_0

    .line 123
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "d":I
    .restart local p4    # "d":I
    const/16 v4, 0x3d

    aput-byte v4, p3, v0

    .line 122
    add-int/lit8 v1, v1, 0x1

    move v0, p4

    .end local p4    # "d":I
    .restart local v0    # "d":I
    goto :goto_0

    .line 124
    :cond_0
    return-void
.end method

.method private final encode4bytes([BI[BI)V
    .locals 6
    .param p1, "src"    # [B
    .param p2, "s"    # I
    .param p3, "dest"    # [B
    .param p4, "d"    # I

    .prologue
    .line 97
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "d":I
    .local v0, "d":I
    iget-object v3, p0, Lcom/amazonaws/util/AbstractBase32Codec;->ALPAHBETS:[B

    add-int/lit8 v2, p2, 0x1

    .end local p2    # "s":I
    .local v2, "s":I
    aget-byte v1, p1, p2

    .local v1, "p":B
    ushr-int/lit8 v4, v1, 0x3

    and-int/lit8 v4, v4, 0x1f

    aget-byte v3, v3, v4

    aput-byte v3, p3, p4

    .line 98
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "d":I
    .restart local p4    # "d":I
    iget-object v3, p0, Lcom/amazonaws/util/AbstractBase32Codec;->ALPAHBETS:[B

    and-int/lit8 v4, v1, 0x7

    shl-int/lit8 v4, v4, 0x2

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "s":I
    .restart local p2    # "s":I
    aget-byte v1, p1, v2

    ushr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3

    or-int/2addr v4, v5

    aget-byte v3, v3, v4

    aput-byte v3, p3, v0

    .line 100
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "d":I
    .restart local v0    # "d":I
    iget-object v3, p0, Lcom/amazonaws/util/AbstractBase32Codec;->ALPAHBETS:[B

    ushr-int/lit8 v4, v1, 0x1

    and-int/lit8 v4, v4, 0x1f

    aget-byte v3, v3, v4

    aput-byte v3, p3, p4

    .line 101
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "d":I
    .restart local p4    # "d":I
    iget-object v3, p0, Lcom/amazonaws/util/AbstractBase32Codec;->ALPAHBETS:[B

    and-int/lit8 v4, v1, 0x1

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v2, p2, 0x1

    .end local p2    # "s":I
    .restart local v2    # "s":I
    aget-byte v1, p1, p2

    ushr-int/lit8 v5, v1, 0x4

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    aget-byte v3, v3, v4

    aput-byte v3, p3, v0

    .line 103
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "d":I
    .restart local v0    # "d":I
    iget-object v3, p0, Lcom/amazonaws/util/AbstractBase32Codec;->ALPAHBETS:[B

    and-int/lit8 v4, v1, 0xf

    shl-int/lit8 v4, v4, 0x1

    aget-byte v1, p1, v2

    ushr-int/lit8 v5, v1, 0x7

    and-int/lit8 v5, v5, 0x1

    or-int/2addr v4, v5

    aget-byte v3, v3, v4

    aput-byte v3, p3, p4

    .line 105
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "d":I
    .restart local p4    # "d":I
    iget-object v3, p0, Lcom/amazonaws/util/AbstractBase32Codec;->ALPAHBETS:[B

    ushr-int/lit8 v4, v1, 0x2

    and-int/lit8 v4, v4, 0x1f

    aget-byte v3, v3, v4

    aput-byte v3, p3, v0

    .line 106
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "d":I
    .restart local v0    # "d":I
    iget-object v3, p0, Lcom/amazonaws/util/AbstractBase32Codec;->ALPAHBETS:[B

    and-int/lit8 v4, v1, 0x3

    shl-int/lit8 v4, v4, 0x3

    aget-byte v3, v3, v4

    aput-byte v3, p3, p4

    .line 107
    const/16 v3, 0x3d

    aput-byte v3, p3, v0

    .line 108
    return-void
.end method

.method private final encode5bytes([BI[BI)V
    .locals 6
    .param p1, "src"    # [B
    .param p2, "s"    # I
    .param p3, "dest"    # [B
    .param p4, "d"    # I

    .prologue
    .line 79
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "d":I
    .local v0, "d":I
    iget-object v3, p0, Lcom/amazonaws/util/AbstractBase32Codec;->ALPAHBETS:[B

    add-int/lit8 v2, p2, 0x1

    .end local p2    # "s":I
    .local v2, "s":I
    aget-byte v1, p1, p2

    .local v1, "p":B
    ushr-int/lit8 v4, v1, 0x3

    and-int/lit8 v4, v4, 0x1f

    aget-byte v3, v3, v4

    aput-byte v3, p3, p4

    .line 80
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "d":I
    .restart local p4    # "d":I
    iget-object v3, p0, Lcom/amazonaws/util/AbstractBase32Codec;->ALPAHBETS:[B

    and-int/lit8 v4, v1, 0x7

    shl-int/lit8 v4, v4, 0x2

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "s":I
    .restart local p2    # "s":I
    aget-byte v1, p1, v2

    ushr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3

    or-int/2addr v4, v5

    aget-byte v3, v3, v4

    aput-byte v3, p3, v0

    .line 82
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "d":I
    .restart local v0    # "d":I
    iget-object v3, p0, Lcom/amazonaws/util/AbstractBase32Codec;->ALPAHBETS:[B

    ushr-int/lit8 v4, v1, 0x1

    and-int/lit8 v4, v4, 0x1f

    aget-byte v3, v3, v4

    aput-byte v3, p3, p4

    .line 83
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "d":I
    .restart local p4    # "d":I
    iget-object v3, p0, Lcom/amazonaws/util/AbstractBase32Codec;->ALPAHBETS:[B

    and-int/lit8 v4, v1, 0x1

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v2, p2, 0x1

    .end local p2    # "s":I
    .restart local v2    # "s":I
    aget-byte v1, p1, p2

    ushr-int/lit8 v5, v1, 0x4

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    aget-byte v3, v3, v4

    aput-byte v3, p3, v0

    .line 85
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "d":I
    .restart local v0    # "d":I
    iget-object v3, p0, Lcom/amazonaws/util/AbstractBase32Codec;->ALPAHBETS:[B

    and-int/lit8 v4, v1, 0xf

    shl-int/lit8 v4, v4, 0x1

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "s":I
    .restart local p2    # "s":I
    aget-byte v1, p1, v2

    ushr-int/lit8 v5, v1, 0x7

    and-int/lit8 v5, v5, 0x1

    or-int/2addr v4, v5

    aget-byte v3, v3, v4

    aput-byte v3, p3, p4

    .line 87
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "d":I
    .restart local p4    # "d":I
    iget-object v3, p0, Lcom/amazonaws/util/AbstractBase32Codec;->ALPAHBETS:[B

    ushr-int/lit8 v4, v1, 0x2

    and-int/lit8 v4, v4, 0x1f

    aget-byte v3, v3, v4

    aput-byte v3, p3, v0

    .line 88
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "d":I
    .restart local v0    # "d":I
    iget-object v3, p0, Lcom/amazonaws/util/AbstractBase32Codec;->ALPAHBETS:[B

    and-int/lit8 v4, v1, 0x3

    shl-int/lit8 v4, v4, 0x3

    aget-byte v1, p1, p2

    ushr-int/lit8 v5, v1, 0x5

    and-int/lit8 v5, v5, 0x7

    or-int/2addr v4, v5

    aget-byte v3, v3, v4

    aput-byte v3, p3, p4

    .line 90
    iget-object v3, p0, Lcom/amazonaws/util/AbstractBase32Codec;->ALPAHBETS:[B

    and-int/lit8 v4, v1, 0x1f

    aget-byte v3, v3, v4

    aput-byte v3, p3, v0

    .line 91
    return-void
.end method


# virtual methods
.method public final decode([BI)[B
    .locals 9
    .param p1, "src"    # [B
    .param p2, "length"    # I

    .prologue
    .line 236
    rem-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Input is expected to be encoded in multiple of 8 bytes but found: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    const/4 v7, 0x0

    .line 241
    .local v7, "pads":I
    add-int/lit8 v6, p2, -0x1

    .line 244
    .local v6, "last":I
    :goto_0
    const/4 v0, 0x6

    if-ge v7, v0, :cond_1

    const/4 v0, -0x1

    if-le v6, v0, :cond_1

    .line 245
    aget-byte v0, p1, v6

    const/16 v2, 0x3d

    if-eq v0, v2, :cond_2

    .line 251
    :cond_1
    packed-switch v7, :pswitch_data_0

    .line 269
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid number of paddings "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_2
    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 253
    :pswitch_1
    const/4 v1, 0x5

    .line 271
    .local v1, "fq":I
    :goto_1
    div-int/lit8 v0, p2, 0x8

    mul-int/lit8 v0, v0, 0x5

    rsub-int/lit8 v2, v1, 0x5

    sub-int/2addr v0, v2

    new-array v4, v0, [B

    .line 272
    .local v4, "dest":[B
    const/4 v3, 0x0

    .local v3, "s":I
    const/4 v5, 0x0

    .line 275
    .local v5, "d":I
    :goto_2
    array-length v0, v4

    rem-int/lit8 v2, v1, 0x5

    sub-int/2addr v0, v2

    if-ge v5, v0, :cond_3

    .line 276
    invoke-direct {p0, p1, v3, v4, v5}, Lcom/amazonaws/util/AbstractBase32Codec;->decode5bytes([BI[BI)V

    .line 275
    add-int/lit8 v3, v3, 0x8

    add-int/lit8 v5, v5, 0x5

    goto :goto_2

    .line 257
    .end local v1    # "fq":I
    .end local v3    # "s":I
    .end local v4    # "dest":[B
    .end local v5    # "d":I
    :pswitch_2
    const/4 v1, 0x4

    .line 258
    .restart local v1    # "fq":I
    goto :goto_1

    .line 260
    .end local v1    # "fq":I
    :pswitch_3
    const/4 v1, 0x3

    .line 261
    .restart local v1    # "fq":I
    goto :goto_1

    .line 263
    .end local v1    # "fq":I
    :pswitch_4
    const/4 v1, 0x2

    .line 264
    .restart local v1    # "fq":I
    goto :goto_1

    .line 266
    .end local v1    # "fq":I
    :pswitch_5
    const/4 v1, 0x1

    .line 267
    .restart local v1    # "fq":I
    goto :goto_1

    .line 278
    .restart local v3    # "s":I
    .restart local v4    # "dest":[B
    .restart local v5    # "d":I
    :cond_3
    const/4 v0, 0x5

    if-ge v1, v0, :cond_4

    move-object v0, p0

    move-object v2, p1

    .line 279
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/util/AbstractBase32Codec;->decode1to4bytes(I[BI[BI)V

    .line 280
    :cond_4
    return-object v4

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public final encode([B)[B
    .locals 7
    .param p1, "src"    # [B

    .prologue
    .line 41
    array-length v6, p1

    div-int/lit8 v3, v6, 0x5

    .line 42
    .local v3, "num5bytes":I
    array-length v6, p1

    rem-int/lit8 v4, v6, 0x5

    .line 44
    .local v4, "remainder":I
    if-nez v4, :cond_1

    .line 46
    mul-int/lit8 v6, v3, 0x8

    new-array v1, v6, [B

    .line 48
    .local v1, "dest":[B
    const/4 v5, 0x0

    .local v5, "s":I
    const/4 v0, 0x0

    .local v0, "d":I
    :goto_0
    array-length v6, p1

    if-ge v5, v6, :cond_0

    .line 49
    invoke-direct {p0, p1, v5, v1, v0}, Lcom/amazonaws/util/AbstractBase32Codec;->encode5bytes([BI[BI)V

    .line 48
    add-int/lit8 v5, v5, 0x5

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 73
    .end local v1    # "dest":[B
    .local v2, "dest":[B
    :goto_1
    return-object v2

    .line 53
    .end local v0    # "d":I
    .end local v2    # "dest":[B
    .end local v5    # "s":I
    :cond_1
    add-int/lit8 v6, v3, 0x1

    mul-int/lit8 v6, v6, 0x8

    new-array v1, v6, [B

    .line 54
    .restart local v1    # "dest":[B
    const/4 v5, 0x0

    .restart local v5    # "s":I
    const/4 v0, 0x0

    .line 56
    .restart local v0    # "d":I
    :goto_2
    array-length v6, p1

    sub-int/2addr v6, v4

    if-ge v5, v6, :cond_2

    .line 57
    invoke-direct {p0, p1, v5, v1, v0}, Lcom/amazonaws/util/AbstractBase32Codec;->encode5bytes([BI[BI)V

    .line 56
    add-int/lit8 v5, v5, 0x5

    add-int/lit8 v0, v0, 0x8

    goto :goto_2

    .line 59
    :cond_2
    packed-switch v4, :pswitch_data_0

    :goto_3
    move-object v2, v1

    .line 73
    .end local v1    # "dest":[B
    .restart local v2    # "dest":[B
    goto :goto_1

    .line 61
    .end local v2    # "dest":[B
    .restart local v1    # "dest":[B
    :pswitch_0
    invoke-direct {p0, p1, v5, v1, v0}, Lcom/amazonaws/util/AbstractBase32Codec;->encode1byte([BI[BI)V

    goto :goto_3

    .line 64
    :pswitch_1
    invoke-direct {p0, p1, v5, v1, v0}, Lcom/amazonaws/util/AbstractBase32Codec;->encode2bytes([BI[BI)V

    goto :goto_3

    .line 67
    :pswitch_2
    invoke-direct {p0, p1, v5, v1, v0}, Lcom/amazonaws/util/AbstractBase32Codec;->encode3bytes([BI[BI)V

    goto :goto_3

    .line 70
    :pswitch_3
    invoke-direct {p0, p1, v5, v1, v0}, Lcom/amazonaws/util/AbstractBase32Codec;->encode4bytes([BI[BI)V

    goto :goto_3

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected abstract pos(B)I
.end method
