.class Lcom/amazonaws/util/Base16Codec;
.super Ljava/lang/Object;
.source "Base16Codec.java"

# interfaces
.implements Lcom/amazonaws/util/Codec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/util/Base16Codec$LazyHolder;
    }
.end annotation


# static fields
.field private static final MASK_4BITS:I = 0xf

.field private static final OFFSET_OF_A:I = 0x37

.field private static final OFFSET_OF_a:I = 0x57


# instance fields
.field private final ALPAHBETS:[B


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "0123456789ABCDEF"

    invoke-static {v0}, Lcom/amazonaws/util/CodecUtils;->toBytesDirect(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/util/Base16Codec;->ALPAHBETS:[B

    return-void
.end method


# virtual methods
.method public decode([BI)[B
    .locals 7
    .param p1, "src"    # [B
    .param p2, "length"    # I

    .prologue
    .line 66
    rem-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_0

    .line 67
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Input is expected to be encoded in multiple of 2 bytes but found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 71
    :cond_0
    div-int/lit8 v4, p2, 0x2

    new-array v0, v4, [B

    .line 73
    .local v0, "dest":[B
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 75
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-byte v4, p1, v1

    .line 77
    invoke-virtual {p0, v4}, Lcom/amazonaws/util/Base16Codec;->pos(B)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-byte v5, p1, v2

    invoke-virtual {p0, v5}, Lcom/amazonaws/util/Base16Codec;->pos(B)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 73
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 81
    :cond_1
    return-object v0
.end method

.method public encode([B)[B
    .locals 7
    .param p1, "src"    # [B

    .prologue
    .line 53
    array-length v5, p1

    mul-int/lit8 v5, v5, 0x2

    new-array v0, v5, [B

    .line 56
    .local v0, "dest":[B
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_0

    .line 57
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .local v3, "j":I
    iget-object v5, p0, Lcom/amazonaws/util/Base16Codec;->ALPAHBETS:[B

    aget-byte v4, p1, v1

    .local v4, "p":B
    ushr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-byte v5, v5, v6

    aput-byte v5, v0, v2

    .line 58
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    iget-object v5, p0, Lcom/amazonaws/util/Base16Codec;->ALPAHBETS:[B

    and-int/lit8 v6, v4, 0xf

    aget-byte v5, v5, v6

    aput-byte v5, v0, v3

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .end local v4    # "p":B
    :cond_0
    return-object v0
.end method

.method protected pos(B)I
    .locals 4
    .param p1, "in"    # B

    .prologue
    .line 85
    invoke-static {}, Lcom/amazonaws/util/Base16Codec$LazyHolder;->access$000()[B

    move-result-object v1

    aget-byte v0, v1, p1

    .line 87
    .local v0, "pos":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 88
    return v0

    .line 89
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid base 16 character: \'"

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
