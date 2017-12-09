.class public Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;
.super Ljava/lang/Object;
.source "ByteUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binaryString2hexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "bString"    # Ljava/lang/String;

    .prologue
    .line 160
    if-eqz p0, :cond_0

    const-string v4, ""

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1

    .line 161
    :cond_0
    const/4 v4, 0x0

    .line 173
    :goto_0
    return-object v4

    .line 162
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 163
    .local v3, "tmp":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 164
    .local v1, "iTmp":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_2

    .line 173
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 166
    :cond_2
    const/4 v1, 0x0

    .line 167
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    const/4 v4, 0x4

    if-lt v2, v4, :cond_3

    .line 171
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 169
    :cond_3
    add-int v4, v0, v2

    add-int v5, v0, v2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    rsub-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, -0x1

    shl-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public static byteArrayToString([B)Ljava/lang/String;
    .locals 7
    .param p0, "copyOfRange"    # [B

    .prologue
    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v4, p0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 188
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 183
    :cond_0
    aget-byte v0, p0, v3

    .line 184
    .local v0, "b":B
    and-int/lit16 v5, v0, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "i":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static bytesToInt([B)I
    .locals 8
    .param p0, "bytes"    # [B

    .prologue
    const/4 v7, 0x3

    const v6, 0xff00

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "addr":I
    array-length v1, p0

    if-ne v1, v4, :cond_1

    .line 49
    aget-byte v1, p0, v3

    and-int/lit16 v0, v1, 0xff

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    array-length v1, p0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 51
    aget-byte v1, p0, v3

    and-int/lit16 v0, v1, 0xff

    .line 52
    aget-byte v1, p0, v4

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v6

    or-int/2addr v0, v1

    .line 53
    aget-byte v1, p0, v5

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 54
    aget-byte v1, p0, v7

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 55
    goto :goto_0

    :cond_2
    array-length v1, p0

    if-ne v1, v5, :cond_3

    .line 56
    aget-byte v1, p0, v3

    and-int/lit16 v0, v1, 0xff

    .line 57
    aget-byte v1, p0, v4

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v6

    or-int/2addr v0, v1

    .line 58
    goto :goto_0

    :cond_3
    array-length v1, p0

    if-ne v1, v7, :cond_0

    .line 59
    aget-byte v1, p0, v3

    and-int/lit16 v0, v1, 0xff

    .line 60
    aget-byte v1, p0, v4

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v6

    or-int/2addr v0, v1

    .line 61
    aget-byte v1, p0, v5

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public static bytesToIntBig([B)I
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "addr":I
    array-length v1, p0

    if-ne v1, v3, :cond_0

    .line 117
    aget-byte v1, p0, v2

    and-int/lit16 v0, v1, 0xff

    .line 124
    :goto_0
    return v0

    .line 119
    :cond_0
    aget-byte v1, p0, v2

    and-int/lit16 v0, v1, 0xff

    .line 120
    shl-int/lit8 v1, v0, 0x8

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 121
    shl-int/lit8 v1, v0, 0x8

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 122
    shl-int/lit8 v1, v0, 0x8

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    goto :goto_0
.end method

.method public static bytesToIntForVersion([B)I
    .locals 8
    .param p0, "bytes"    # [B

    .prologue
    const/4 v7, 0x3

    const v6, 0xff00

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "addr":I
    array-length v1, p0

    if-ne v1, v4, :cond_1

    .line 75
    aget-byte v1, p0, v3

    and-int/lit16 v0, v1, 0xff

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    array-length v1, p0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 77
    aget-byte v1, p0, v7

    and-int/lit16 v0, v1, 0xff

    .line 78
    aget-byte v1, p0, v5

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v6

    or-int/2addr v0, v1

    .line 79
    aget-byte v1, p0, v4

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 80
    aget-byte v1, p0, v3

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 81
    goto :goto_0

    :cond_2
    array-length v1, p0

    if-ne v1, v5, :cond_3

    .line 82
    aget-byte v1, p0, v3

    and-int/lit16 v0, v1, 0xff

    .line 83
    aget-byte v1, p0, v4

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v6

    or-int/2addr v0, v1

    .line 84
    goto :goto_0

    :cond_3
    array-length v1, p0

    if-ne v1, v7, :cond_0

    .line 85
    aget-byte v1, p0, v3

    and-int/lit16 v0, v1, 0xff

    .line 86
    aget-byte v1, p0, v4

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v6

    or-int/2addr v0, v1

    .line 87
    aget-byte v1, p0, v5

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public static bytesToString([B)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # [B

    .prologue
    const/4 v3, 0x0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 129
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    array-length v4, p0

    move v2, v3

    :goto_0
    if-lt v2, v4, :cond_0

    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 129
    :cond_0
    aget-byte v0, p0, v2

    .line 130
    .local v0, "byteChar":B
    const-string v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getBooleanArray(B)[B
    .locals 3
    .param p0, "b"    # B

    .prologue
    .line 33
    const/16 v2, 0x8

    new-array v0, v2, [B

    .line 34
    .local v0, "array":[B
    const/4 v1, 0x7

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    .line 38
    return-object v0

    .line 35
    :cond_0
    and-int/lit8 v2, p0, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 36
    shr-int/lit8 v2, p0, 0x1

    int-to-byte p0, v2

    .line 34
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static hiword(I)I
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 151
    shr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method public static intToByte(II)[B
    .locals 4
    .param p0, "i"    # I
    .param p1, "len"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    const/4 v0, 0x0

    .line 14
    .local v0, "abyte":[B
    if-ne p1, v3, :cond_0

    .line 15
    new-array v0, p1, [B

    .line 16
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 24
    :goto_0
    return-object v0

    .line 18
    :cond_0
    new-array v0, p1, [B

    .line 19
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 20
    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 21
    const/4 v1, 0x2

    const/high16 v2, 0xff0000

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 22
    const/4 v1, 0x3

    const/high16 v2, -0x1000000

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public static intToByteBig(II)[B
    .locals 4
    .param p0, "i"    # I
    .param p1, "len"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "abyte":[B
    if-ne p1, v3, :cond_0

    .line 102
    new-array v0, p1, [B

    .line 103
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 111
    :goto_0
    return-object v0

    .line 105
    :cond_0
    new-array v0, p1, [B

    .line 106
    ushr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 107
    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 108
    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 109
    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public static loword(I)I
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 141
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method
