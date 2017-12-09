.class final Lorg/mapdb/BTreeKeySerializer$3;
.super Lorg/mapdb/BTreeKeySerializer;
.source "BTreeKeySerializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/BTreeKeySerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mapdb/BTreeKeySerializer",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final UTF8_CHARSET:Ljava/nio/charset/Charset;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Lorg/mapdb/BTreeKeySerializer;-><init>()V

    .line 177
    const-string v0, "UTF8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$3;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public deserialize(Ljava/io/DataInput;III)[Ljava/lang/Object;
    .locals 6
    .param p1, "in"    # Ljava/io/DataInput;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    new-array v3, p4, [Ljava/lang/Object;

    .line 192
    .local v3, "ret":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 193
    .local v2, "previous":[B
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 194
    const/4 v4, 0x0

    invoke-static {p1, v2, v4}, Lorg/mapdb/BTreeKeySerializer$3;->leadingValuePackRead(Ljava/io/DataInput;[BI)[B

    move-result-object v0

    .line 195
    .local v0, "b":[B
    if-nez v0, :cond_0

    .line 193
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_0
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lorg/mapdb/BTreeKeySerializer$3;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    aput-object v4, v3, v1

    .line 197
    move-object v2, v0

    goto :goto_1

    .line 199
    .end local v0    # "b":[B
    :cond_1
    return-object v3
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    sget-object v0, Lorg/mapdb/BTreeMap;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method public serialize(Ljava/io/DataOutput;II[Ljava/lang/Object;)V
    .locals 5
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "keys"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    const/4 v2, 0x0

    .line 182
    .local v2, "previous":[B
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 183
    aget-object v3, p4, v1

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/mapdb/BTreeKeySerializer$3;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 184
    .local v0, "b":[B
    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3}, Lorg/mapdb/BTreeKeySerializer$3;->leadingValuePackWrite(Ljava/io/DataOutput;[B[BI)V

    .line 185
    move-object v2, v0

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    .end local v0    # "b":[B
    :cond_0
    return-void
.end method
