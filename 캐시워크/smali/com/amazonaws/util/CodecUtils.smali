.class public final enum Lcom/amazonaws/util/CodecUtils;
.super Ljava/lang/Enum;
.source "CodecUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazonaws/util/CodecUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/util/CodecUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/amazonaws/util/CodecUtils;

    sput-object v0, Lcom/amazonaws/util/CodecUtils;->$VALUES:[Lcom/amazonaws/util/CodecUtils;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static sanitize(Ljava/lang/String;[B)I
    .locals 9
    .param p0, "singleOctets"    # Ljava/lang/String;
    .param p1, "dest"    # [B

    .prologue
    .line 47
    array-length v1, p1

    .line 48
    .local v1, "capacity":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 49
    .local v5, "src":[C
    const/4 v3, 0x0

    .line 51
    .local v3, "limit":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v4, v3

    .end local v3    # "limit":I
    .local v4, "limit":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 52
    aget-char v0, v5, v2

    .line 54
    .local v0, "c":C
    const/16 v6, 0xd

    if-eq v0, v6, :cond_3

    const/16 v6, 0xa

    if-eq v0, v6, :cond_3

    const/16 v6, 0x20

    if-ne v0, v6, :cond_0

    move v3, v4

    .line 51
    .end local v4    # "limit":I
    .restart local v3    # "limit":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3    # "limit":I
    .restart local v4    # "limit":I
    goto :goto_0

    .line 56
    :cond_0
    const/16 v6, 0x7f

    if-le v0, v6, :cond_1

    .line 57
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid character found at position "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 59
    :cond_1
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "limit":I
    .restart local v3    # "limit":I
    int-to-byte v6, v0

    aput-byte v6, p1, v4

    goto :goto_1

    .line 61
    .end local v0    # "c":C
    .end local v3    # "limit":I
    .restart local v4    # "limit":I
    :cond_2
    return v4

    .restart local v0    # "c":C
    :cond_3
    move v3, v4

    .end local v4    # "limit":I
    .restart local v3    # "limit":I
    goto :goto_1
.end method

.method static sanityCheckLastPos(II)V
    .locals 2
    .param p0, "pos"    # I
    .param p1, "mask"    # I

    .prologue
    .line 107
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid last non-pad character detected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    return-void
.end method

.method public static toBytesDirect(Ljava/lang/String;)[B
    .locals 7
    .param p0, "singleOctets"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 73
    .local v3, "src":[C
    array-length v4, v3

    new-array v1, v4, [B

    .line 75
    .local v1, "dest":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 76
    aget-char v0, v3, v2

    .line 78
    .local v0, "c":C
    const/16 v4, 0x7f

    if-le v0, v4, :cond_0

    .line 79
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid character found at position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 81
    :cond_0
    int-to-byte v4, v0

    aput-byte v4, v1, v2

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "c":C
    :cond_1
    return-object v1
.end method

.method public static toStringDirect([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .prologue
    .line 91
    array-length v4, p0

    new-array v1, v4, [C

    .line 92
    .local v1, "dest":[C
    const/4 v2, 0x0

    .line 94
    .local v2, "i":I
    array-length v5, p0

    const/4 v4, 0x0

    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-byte v0, p0, v4

    .line 95
    .local v0, "b":B
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    int-to-char v6, v0

    aput-char v6, v1, v3

    .line 94
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 97
    .end local v0    # "b":B
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    return-object v4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/util/CodecUtils;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/amazonaws/util/CodecUtils;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/util/CodecUtils;

    return-object v0
.end method

.method public static values()[Lcom/amazonaws/util/CodecUtils;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/amazonaws/util/CodecUtils;->$VALUES:[Lcom/amazonaws/util/CodecUtils;

    invoke-virtual {v0}, [Lcom/amazonaws/util/CodecUtils;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/util/CodecUtils;

    return-object v0
.end method
