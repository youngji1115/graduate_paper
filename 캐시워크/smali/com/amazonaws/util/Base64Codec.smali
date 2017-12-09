.class Lcom/amazonaws/util/Base64Codec;
.super Ljava/lang/Object;
.source "Base64Codec.java"

# interfaces
.implements Lcom/amazonaws/util/Codec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/util/Base64Codec$LazyHolder;
    }
.end annotation


# static fields
.field private static final MASK_2BITS:I = 0x3

.field private static final MASK_4BITS:I = 0xf

.field private static final MASK_6BITS:I = 0x3f

.field private static final OFFSET_OF_0:I = -0x4

.field private static final OFFSET_OF_PLUS:I = -0x13

.field private static final OFFSET_OF_SLASH:I = -0x10

.field private static final OFFSET_OF_a:I = 0x47

.field private static final PAD:B = 0x3dt


# instance fields
.field private final ALPAHBETS:[B


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 66
    invoke-static {v0}, Lcom/amazonaws/util/CodecUtils;->toBytesDirect(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/util/Base64Codec;->ALPAHBETS:[B

    .line 67
    return-void
.end method

.method protected constructor <init>([B)V
    .locals 0
    .param p1, "alphabets"    # [B

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/amazonaws/util/Base64Codec;->ALPAHBETS:[B

    .line 71
    return-void
.end method


# virtual methods
.method public decode([BI)[B
    .locals 9
    .param p1, "src"    # [B
    .param p2, "length"    # I

    .prologue
    .line 196
    rem-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Input is expected to be encoded in multiple of 4 bytes but found: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    const/4 v7, 0x0

    .line 201
    .local v7, "pads":I
    add-int/lit8 v6, p2, -0x1

    .line 204
    .local v6, "last":I
    :goto_0
    const/4 v0, 0x2

    if-ge v7, v0, :cond_1

    const/4 v0, -0x1

    if-le v6, v0, :cond_1

    .line 205
    aget-byte v0, p1, v6

    const/16 v2, 0x3d

    if-eq v0, v2, :cond_2

    .line 211
    :cond_1
    packed-switch v7, :pswitch_data_0

    .line 223
    new-instance v0, Ljava/lang/Error;

    const-string v2, "Impossible"

    invoke-direct {v0, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_2
    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 213
    :pswitch_0
    const/4 v1, 0x3

    .line 225
    .local v1, "fq":I
    :goto_1
    div-int/lit8 v0, p2, 0x4

    mul-int/lit8 v0, v0, 0x3

    rsub-int/lit8 v2, v1, 0x3

    sub-int/2addr v0, v2

    new-array v4, v0, [B

    .line 226
    .local v4, "dest":[B
    const/4 v3, 0x0

    .local v3, "s":I
    const/4 v5, 0x0

    .line 229
    .local v5, "d":I
    :goto_2
    array-length v0, v4

    rem-int/lit8 v2, v1, 0x3

    sub-int/2addr v0, v2

    if-ge v5, v0, :cond_3

    .line 230
    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/amazonaws/util/Base64Codec;->decode4bytes([BI[BI)V

    .line 229
    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v5, v5, 0x3

    goto :goto_2

    .line 217
    .end local v1    # "fq":I
    .end local v3    # "s":I
    .end local v4    # "dest":[B
    .end local v5    # "d":I
    :pswitch_1
    const/4 v1, 0x2

    .line 218
    .restart local v1    # "fq":I
    goto :goto_1

    .line 220
    .end local v1    # "fq":I
    :pswitch_2
    const/4 v1, 0x1

    .line 221
    .restart local v1    # "fq":I
    goto :goto_1

    .line 232
    .restart local v3    # "s":I
    .restart local v4    # "dest":[B
    .restart local v5    # "d":I
    :cond_3
    const/4 v0, 0x3

    if-ge v1, v0, :cond_4

    move-object v0, p0

    move-object v2, p1

    .line 233
    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/util/Base64Codec;->decode1to3bytes(I[BI[BI)V

    .line 234
    :cond_4
    return-object v4

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method decode1to3bytes(I[BI[BI)V
    .locals 5
    .param p1, "n"    # I
    .param p2, "src"    # [B
    .param p3, "s"    # I
    .param p4, "dest"    # [B
    .param p5, "d"    # I

    .prologue
    .line 163
    const/4 v1, 0x0

    .line 165
    .local v1, "p":I
    add-int/lit8 v0, p5, 0x1

    .end local p5    # "d":I
    .local v0, "d":I
    add-int/lit8 v2, p3, 0x1

    .end local p3    # "s":I
    .local v2, "s":I
    aget-byte v3, p2, p3

    .line 167
    invoke-virtual {p0, v3}, Lcom/amazonaws/util/Base64Codec;->pos(B)I

    move-result v3

    shl-int/lit8 v3, v3, 0x2

    add-int/lit8 p3, v2, 0x1

    .end local v2    # "s":I
    .restart local p3    # "s":I
    aget-byte v4, p2, v2

    .line 168
    invoke-virtual {p0, v4}, Lcom/amazonaws/util/Base64Codec;->pos(B)I

    move-result v1

    ushr-int/lit8 v4, v1, 0x4

    and-int/lit8 v4, v4, 0x3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p4, p5

    .line 170
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 171
    const/16 v3, 0xf

    invoke-static {v1, v3}, Lcom/amazonaws/util/CodecUtils;->sanityCheckLastPos(II)V

    move p5, v0

    .line 190
    .end local v0    # "d":I
    .restart local p5    # "d":I
    :goto_0
    return-void

    .line 175
    .end local p5    # "d":I
    .restart local v0    # "d":I
    :cond_0
    add-int/lit8 p5, v0, 0x1

    .end local v0    # "d":I
    .restart local p5    # "d":I
    and-int/lit8 v3, v1, 0xf

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v2, p3, 0x1

    .end local p3    # "s":I
    .restart local v2    # "s":I
    aget-byte v4, p2, p3

    .line 178
    invoke-virtual {p0, v4}, Lcom/amazonaws/util/Base64Codec;->pos(B)I

    move-result v1

    ushr-int/lit8 v4, v1, 0x2

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p4, v0

    .line 180
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 181
    const/4 v3, 0x3

    invoke-static {v1, v3}, Lcom/amazonaws/util/CodecUtils;->sanityCheckLastPos(II)V

    move p3, v2

    .line 182
    .end local v2    # "s":I
    .restart local p3    # "s":I
    goto :goto_0

    .line 185
    .end local p3    # "s":I
    .restart local v2    # "s":I
    :cond_1
    and-int/lit8 v3, v1, 0x3

    shl-int/lit8 v3, v3, 0x6

    aget-byte v4, p2, v2

    .line 188
    invoke-virtual {p0, v4}, Lcom/amazonaws/util/Base64Codec;->pos(B)I

    move-result v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p4, p5

    move p3, v2

    .line 190
    .end local v2    # "s":I
    .restart local p3    # "s":I
    goto :goto_0
.end method

.method decode4bytes([BI[BI)V
    .locals 5
    .param p1, "src"    # [B
    .param p2, "s"    # I
    .param p3, "dest"    # [B
    .param p4, "d"    # I

    .prologue
    .line 138
    const/4 v1, 0x0

    .line 140
    .local v1, "p":I
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "d":I
    .local v0, "d":I
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "s":I
    .local v2, "s":I
    aget-byte v3, p1, p2

    .line 142
    invoke-virtual {p0, v3}, Lcom/amazonaws/util/Base64Codec;->pos(B)I

    move-result v3

    shl-int/lit8 v3, v3, 0x2

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "s":I
    .restart local p2    # "s":I
    aget-byte v4, p1, v2

    .line 143
    invoke-virtual {p0, v4}, Lcom/amazonaws/util/Base64Codec;->pos(B)I

    move-result v1

    ushr-int/lit8 v4, v1, 0x4

    and-int/lit8 v4, v4, 0x3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, p4

    .line 145
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "d":I
    .restart local p4    # "d":I
    and-int/lit8 v3, v1, 0xf

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v2, p2, 0x1

    .end local p2    # "s":I
    .restart local v2    # "s":I
    aget-byte v4, p1, p2

    .line 148
    invoke-virtual {p0, v4}, Lcom/amazonaws/util/Base64Codec;->pos(B)I

    move-result v1

    ushr-int/lit8 v4, v1, 0x2

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v0

    .line 150
    and-int/lit8 v3, v1, 0x3

    shl-int/lit8 v3, v3, 0x6

    aget-byte v4, p1, v2

    .line 153
    invoke-virtual {p0, v4}, Lcom/amazonaws/util/Base64Codec;->pos(B)I

    move-result v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, p4

    .line 155
    return-void
.end method

.method public encode([B)[B
    .locals 7
    .param p1, "src"    # [B

    .prologue
    .line 75
    array-length v6, p1

    div-int/lit8 v3, v6, 0x3

    .line 76
    .local v3, "num3bytes":I
    array-length v6, p1

    rem-int/lit8 v4, v6, 0x3

    .line 78
    .local v4, "remainder":I
    if-nez v4, :cond_1

    .line 80
    mul-int/lit8 v6, v3, 0x4

    new-array v1, v6, [B

    .line 82
    .local v1, "dest":[B
    const/4 v5, 0x0

    .local v5, "s":I
    const/4 v0, 0x0

    .local v0, "d":I
    :goto_0
    array-length v6, p1

    if-ge v5, v6, :cond_0

    .line 83
    invoke-virtual {p0, p1, v5, v1, v0}, Lcom/amazonaws/util/Base64Codec;->encode3bytes([BI[BI)V

    .line 82
    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 101
    .end local v1    # "dest":[B
    .local v2, "dest":[B
    :goto_1
    return-object v2

    .line 87
    .end local v0    # "d":I
    .end local v2    # "dest":[B
    .end local v5    # "s":I
    :cond_1
    add-int/lit8 v6, v3, 0x1

    mul-int/lit8 v6, v6, 0x4

    new-array v1, v6, [B

    .line 88
    .restart local v1    # "dest":[B
    const/4 v5, 0x0

    .restart local v5    # "s":I
    const/4 v0, 0x0

    .line 90
    .restart local v0    # "d":I
    :goto_2
    array-length v6, p1

    sub-int/2addr v6, v4

    if-ge v5, v6, :cond_2

    .line 91
    invoke-virtual {p0, p1, v5, v1, v0}, Lcom/amazonaws/util/Base64Codec;->encode3bytes([BI[BI)V

    .line 90
    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v0, v0, 0x4

    goto :goto_2

    .line 93
    :cond_2
    packed-switch v4, :pswitch_data_0

    :goto_3
    move-object v2, v1

    .line 101
    .end local v1    # "dest":[B
    .restart local v2    # "dest":[B
    goto :goto_1

    .line 95
    .end local v2    # "dest":[B
    .restart local v1    # "dest":[B
    :pswitch_0
    invoke-virtual {p0, p1, v5, v1, v0}, Lcom/amazonaws/util/Base64Codec;->encode1byte([BI[BI)V

    goto :goto_3

    .line 98
    :pswitch_1
    invoke-virtual {p0, p1, v5, v1, v0}, Lcom/amazonaws/util/Base64Codec;->encode2bytes([BI[BI)V

    goto :goto_3

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method encode1byte([BI[BI)V
    .locals 5
    .param p1, "src"    # [B
    .param p2, "s"    # I
    .param p3, "dest"    # [B
    .param p4, "d"    # I

    .prologue
    const/16 v4, 0x3d

    .line 130
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "d":I
    .local v0, "d":I
    iget-object v2, p0, Lcom/amazonaws/util/Base64Codec;->ALPAHBETS:[B

    aget-byte v1, p1, p2

    .local v1, "p":B
    ushr-int/lit8 v3, v1, 0x2

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p3, p4

    .line 131
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "d":I
    .restart local p4    # "d":I
    iget-object v2, p0, Lcom/amazonaws/util/Base64Codec;->ALPAHBETS:[B

    and-int/lit8 v3, v1, 0x3

    shl-int/lit8 v3, v3, 0x4

    aget-byte v2, v2, v3

    aput-byte v2, p3, v0

    .line 132
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "d":I
    .restart local v0    # "d":I
    aput-byte v4, p3, p4

    .line 133
    aput-byte v4, p3, v0

    .line 134
    return-void
.end method

.method encode2bytes([BI[BI)V
    .locals 6
    .param p1, "src"    # [B
    .param p2, "s"    # I
    .param p3, "dest"    # [B
    .param p4, "d"    # I

    .prologue
    .line 119
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "d":I
    .local v0, "d":I
    iget-object v3, p0, Lcom/amazonaws/util/Base64Codec;->ALPAHBETS:[B

    add-int/lit8 v2, p2, 0x1

    .end local p2    # "s":I
    .local v2, "s":I
    aget-byte v1, p1, p2

    .local v1, "p":B
    ushr-int/lit8 v4, v1, 0x2

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, p3, p4

    .line 120
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "d":I
    .restart local p4    # "d":I
    iget-object v3, p0, Lcom/amazonaws/util/Base64Codec;->ALPAHBETS:[B

    and-int/lit8 v4, v1, 0x3

    shl-int/lit8 v4, v4, 0x4

    aget-byte v1, p1, v2

    ushr-int/lit8 v5, v1, 0x4

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    aget-byte v3, v3, v4

    aput-byte v3, p3, v0

    .line 122
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "d":I
    .restart local v0    # "d":I
    iget-object v3, p0, Lcom/amazonaws/util/Base64Codec;->ALPAHBETS:[B

    and-int/lit8 v4, v1, 0xf

    shl-int/lit8 v4, v4, 0x2

    aget-byte v3, v3, v4

    aput-byte v3, p3, p4

    .line 123
    const/16 v3, 0x3d

    aput-byte v3, p3, v0

    .line 124
    return-void
.end method

.method encode3bytes([BI[BI)V
    .locals 6
    .param p1, "src"    # [B
    .param p2, "s"    # I
    .param p3, "dest"    # [B
    .param p4, "d"    # I

    .prologue
    .line 107
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "d":I
    .local v0, "d":I
    iget-object v3, p0, Lcom/amazonaws/util/Base64Codec;->ALPAHBETS:[B

    add-int/lit8 v2, p2, 0x1

    .end local p2    # "s":I
    .local v2, "s":I
    aget-byte v1, p1, p2

    .local v1, "p":B
    ushr-int/lit8 v4, v1, 0x2

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, p3, p4

    .line 108
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "d":I
    .restart local p4    # "d":I
    iget-object v3, p0, Lcom/amazonaws/util/Base64Codec;->ALPAHBETS:[B

    and-int/lit8 v4, v1, 0x3

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "s":I
    .restart local p2    # "s":I
    aget-byte v1, p1, v2

    ushr-int/lit8 v5, v1, 0x4

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    aget-byte v3, v3, v4

    aput-byte v3, p3, v0

    .line 110
    add-int/lit8 v0, p4, 0x1

    .end local p4    # "d":I
    .restart local v0    # "d":I
    iget-object v3, p0, Lcom/amazonaws/util/Base64Codec;->ALPAHBETS:[B

    and-int/lit8 v4, v1, 0xf

    shl-int/lit8 v4, v4, 0x2

    aget-byte v1, p1, p2

    ushr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3

    or-int/2addr v4, v5

    aget-byte v3, v3, v4

    aput-byte v3, p3, p4

    .line 112
    iget-object v3, p0, Lcom/amazonaws/util/Base64Codec;->ALPAHBETS:[B

    and-int/lit8 v4, v1, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, p3, v0

    .line 113
    return-void
.end method

.method protected pos(B)I
    .locals 4
    .param p1, "in"    # B

    .prologue
    .line 238
    invoke-static {}, Lcom/amazonaws/util/Base64Codec$LazyHolder;->access$000()[B

    move-result-object v1

    aget-byte v0, v1, p1

    .line 240
    .local v0, "pos":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 241
    return v0

    .line 242
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid base 64 character: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-char v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
