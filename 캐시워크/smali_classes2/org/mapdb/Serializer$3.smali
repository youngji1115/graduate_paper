.class final Lorg/mapdb/Serializer$3;
.super Ljava/lang/Object;
.source "Serializer.java"

# interfaces
.implements Lorg/mapdb/Serializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/Serializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mapdb/Serializer",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/io/DataInput;
    .param p2, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/Serializer$3;->deserialize(Ljava/io/DataInput;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Ljava/io/DataInput;I)Ljava/lang/String;
    .locals 4
    .param p1, "in"    # Ljava/io/DataInput;
    .param p2, "available"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v2

    .line 131
    .local v2, "size":I
    new-array v0, v2, [C

    .line 132
    .local v0, "cc":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 133
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    int-to-char v3, v3

    aput-char v3, v0, v1

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method public fixedSize()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/DataOutput;
    .param p2, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/Serializer$3;->serialize(Ljava/io/DataOutput;Ljava/lang/String;)V

    return-void
.end method

.method public serialize(Ljava/io/DataOutput;Ljava/lang/String;)V
    .locals 7
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 119
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    new-array v2, v5, [C

    .line 121
    .local v2, "cc":[C
    array-length v5, v2

    invoke-virtual {p2, v6, v5, v2, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 122
    array-length v5, v2

    invoke-static {p1, v5}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 123
    move-object v0, v2

    .local v0, "arr$":[C
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-char v1, v0, v3

    .line 124
    .local v1, "c":C
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->write(I)V

    .line 123
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "c":C
    :cond_0
    return-void
.end method
