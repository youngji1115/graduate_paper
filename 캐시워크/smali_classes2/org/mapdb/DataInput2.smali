.class public final Lorg/mapdb/DataInput2;
.super Ljava/io/InputStream;
.source "DataInput2.java"

# interfaces
.implements Ljava/io/DataInput;


# instance fields
.field public buf:Ljava/nio/ByteBuffer;

.field public pos:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 0
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/mapdb/DataInput2;->buf:Ljava/nio/ByteBuffer;

    .line 36
    iput p2, p0, Lorg/mapdb/DataInput2;->pos:I

    .line 37
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "b"    # [B

    .prologue
    .line 40
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/mapdb/DataInput2;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 41
    return-void
.end method

.method public static unpackInt(Ljava/io/DataInput;)I
    .locals 5
    .param p0, "is"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    const/4 v1, 0x0

    .local v1, "offset":I
    const/4 v2, 0x0

    .local v2, "result":I
    :goto_0
    const/16 v3, 0x20

    if-ge v1, v3, :cond_1

    .line 184
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 185
    .local v0, "b":I
    and-int/lit8 v3, v0, 0x7f

    shl-int/2addr v3, v1

    or-int/2addr v2, v3

    .line 186
    and-int/lit16 v3, v0, 0x80

    if-nez v3, :cond_0

    .line 187
    return v2

    .line 183
    :cond_0
    add-int/lit8 v1, v1, 0x7

    goto :goto_0

    .line 190
    .end local v0    # "b":I
    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Malformed int."

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public static unpackLong(Ljava/io/DataInput;)J
    .locals 10
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    const-wide/16 v4, 0x0

    .line 207
    .local v4, "result":J
    const/4 v2, 0x0

    .local v2, "offset":I
    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 208
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    int-to-long v0, v3

    .line 209
    .local v0, "b":J
    const-wide/16 v6, 0x7f

    and-long/2addr v6, v0

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    .line 210
    const-wide/16 v6, 0x80

    and-long/2addr v6, v0

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_0

    .line 211
    return-wide v4

    .line 207
    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    .line 214
    .end local v0    # "b":J
    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    const-string v6, "Malformed long."

    invoke-direct {v3, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method


# virtual methods
.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-virtual {p0}, Lorg/mapdb/DataInput2;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public readBoolean()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 64
    iget-object v1, p0, Lorg/mapdb/DataInput2;->buf:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/mapdb/DataInput2;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mapdb/DataInput2;->pos:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lorg/mapdb/DataInput2;->buf:Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/mapdb/DataInput2;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mapdb/DataInput2;->pos:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method public readChar()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0}, Lorg/mapdb/DataInput2;->readInt()I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public readDouble()D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v2, p0, Lorg/mapdb/DataInput2;->buf:Ljava/nio/ByteBuffer;

    iget v3, p0, Lorg/mapdb/DataInput2;->pos:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v0

    .line 119
    .local v0, "ret":D
    iget v2, p0, Lorg/mapdb/DataInput2;->pos:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/mapdb/DataInput2;->pos:I

    .line 120
    return-wide v0
.end method

.method public readFloat()F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v1, p0, Lorg/mapdb/DataInput2;->buf:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/mapdb/DataInput2;->pos:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v0

    .line 112
    .local v0, "ret":F
    iget v1, p0, Lorg/mapdb/DataInput2;->pos:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/mapdb/DataInput2;->pos:I

    .line 113
    return v0
.end method

.method public readFully([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/mapdb/DataInput2;->readFully([BII)V

    .line 46
    return-void
.end method

.method public readFully([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v1, p0, Lorg/mapdb/DataInput2;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 51
    .local v0, "clone":Ljava/nio/ByteBuffer;
    iget v1, p0, Lorg/mapdb/DataInput2;->pos:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 52
    iget v1, p0, Lorg/mapdb/DataInput2;->pos:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/mapdb/DataInput2;->pos:I

    .line 53
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 54
    return-void
.end method

.method public readInt()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v1, p0, Lorg/mapdb/DataInput2;->buf:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/mapdb/DataInput2;->pos:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 98
    .local v0, "ret":I
    iget v1, p0, Lorg/mapdb/DataInput2;->pos:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/mapdb/DataInput2;->pos:I

    .line 99
    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/mapdb/DataInput2;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLong()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v2, p0, Lorg/mapdb/DataInput2;->buf:Ljava/nio/ByteBuffer;

    iget v3, p0, Lorg/mapdb/DataInput2;->pos:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    .line 105
    .local v0, "ret":J
    iget v2, p0, Lorg/mapdb/DataInput2;->pos:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/mapdb/DataInput2;->pos:I

    .line 106
    return-wide v0
.end method

.method public readShort()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v1, p0, Lorg/mapdb/DataInput2;->buf:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/mapdb/DataInput2;->pos:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    .line 80
    .local v0, "ret":S
    iget v1, p0, Lorg/mapdb/DataInput2;->pos:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/mapdb/DataInput2;->pos:I

    .line 81
    return v0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {p0}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v0

    .line 131
    .local v0, "size":I
    invoke-static {p0, v0}, Lorg/mapdb/SerializerBase;->deserializeString(Ljava/io/DataInput;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public readUnsignedByte()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lorg/mapdb/DataInput2;->buf:Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/mapdb/DataInput2;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mapdb/DataInput2;->pos:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUnsignedShort()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lorg/mapdb/DataInput2;->buf:Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/mapdb/DataInput2;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mapdb/DataInput2;->pos:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/mapdb/DataInput2;->buf:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/mapdb/DataInput2;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mapdb/DataInput2;->pos:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public skipBytes(I)I
    .locals 1
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget v0, p0, Lorg/mapdb/DataInput2;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/mapdb/DataInput2;->pos:I

    .line 59
    return p1
.end method
