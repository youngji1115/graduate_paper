.class public final Lorg/mapdb/DataOutput2;
.super Ljava/io/OutputStream;
.source "DataOutput2.java"

# interfaces
.implements Ljava/io/DataOutput;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public buf:[B

.field public volatile pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/mapdb/DataOutput2;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/mapdb/DataOutput2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lorg/mapdb/DataOutput2;->pos:I

    .line 38
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/mapdb/DataOutput2;->buf:[B

    .line 39
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "buf"    # [B

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lorg/mapdb/DataOutput2;->pos:I

    .line 43
    iput-object p1, p0, Lorg/mapdb/DataOutput2;->buf:[B

    .line 44
    return-void
.end method

.method public static packInt(Ljava/io/DataOutput;I)V
    .locals 3
    .param p0, "in"    # Ljava/io/DataOutput;
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    sget-boolean v0, Lorg/mapdb/DataOutput2;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "negative value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 227
    :cond_0
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-eqz v0, :cond_1

    .line 228
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    .line 229
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 232
    :cond_1
    int-to-byte v0, p1

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    .line 233
    return-void
.end method

.method public static packLong(Ljava/io/DataOutput;J)V
    .locals 5
    .param p0, "out"    # Ljava/io/DataOutput;
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 199
    sget-boolean v0, Lorg/mapdb/DataOutput2;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "negative value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 201
    :cond_0
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 202
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    .line 203
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    .line 205
    :cond_1
    long-to-int v0, p1

    int-to-byte v0, v0

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write(I)V

    .line 206
    return-void
.end method


# virtual methods
.method public copyBytes()[B
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lorg/mapdb/DataOutput2;->buf:[B

    iget v1, p0, Lorg/mapdb/DataOutput2;->pos:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public ensureAvail(I)V
    .locals 3
    .param p1, "n"    # I

    .prologue
    .line 54
    iget v1, p0, Lorg/mapdb/DataOutput2;->pos:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lorg/mapdb/DataOutput2;->buf:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 55
    iget v1, p0, Lorg/mapdb/DataOutput2;->pos:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lorg/mapdb/DataOutput2;->buf:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 56
    .local v0, "newSize":I
    iget-object v1, p0, Lorg/mapdb/DataOutput2;->buf:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lorg/mapdb/DataOutput2;->buf:[B

    .line 58
    .end local v0    # "newSize":I
    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/mapdb/DataOutput2;->ensureAvail(I)V

    .line 64
    iget-object v0, p0, Lorg/mapdb/DataOutput2;->buf:[B

    iget v1, p0, Lorg/mapdb/DataOutput2;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mapdb/DataOutput2;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 65
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/mapdb/DataOutput2;->write([BII)V

    .line 70
    return-void
.end method

.method public write([BII)V
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
    .line 74
    invoke-virtual {p0, p3}, Lorg/mapdb/DataOutput2;->ensureAvail(I)V

    .line 75
    iget-object v0, p0, Lorg/mapdb/DataOutput2;->buf:[B

    iget v1, p0, Lorg/mapdb/DataOutput2;->pos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iget v0, p0, Lorg/mapdb/DataOutput2;->pos:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/mapdb/DataOutput2;->pos:I

    .line 77
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 4
    .param p1, "v"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 81
    invoke-virtual {p0, v0}, Lorg/mapdb/DataOutput2;->ensureAvail(I)V

    .line 82
    iget-object v1, p0, Lorg/mapdb/DataOutput2;->buf:[B

    iget v2, p0, Lorg/mapdb/DataOutput2;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mapdb/DataOutput2;->pos:I

    if-eqz p1, :cond_0

    :goto_0
    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 83
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeByte(I)V
    .locals 3
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/mapdb/DataOutput2;->ensureAvail(I)V

    .line 88
    iget-object v0, p0, Lorg/mapdb/DataOutput2;->buf:[B

    iget v1, p0, Lorg/mapdb/DataOutput2;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mapdb/DataOutput2;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 89
    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lorg/mapdb/DataOutput2;->writeUTF(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public writeChar(I)V
    .locals 0
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lorg/mapdb/DataOutput2;->writeInt(I)V

    .line 101
    return-void
.end method

.method public writeChars(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lorg/mapdb/DataOutput2;->writeUTF(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public writeDouble(D)V
    .locals 3
    .param p1, "v"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/mapdb/DataOutput2;->writeLong(J)V

    .line 133
    return-void
.end method

.method public writeFloat(F)V
    .locals 1
    .param p1, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mapdb/DataOutput2;->writeInt(I)V

    .line 128
    return-void
.end method

.method public writeInt(I)V
    .locals 3
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/mapdb/DataOutput2;->ensureAvail(I)V

    .line 106
    iget-object v0, p0, Lorg/mapdb/DataOutput2;->buf:[B

    iget v1, p0, Lorg/mapdb/DataOutput2;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mapdb/DataOutput2;->pos:I

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 107
    iget-object v0, p0, Lorg/mapdb/DataOutput2;->buf:[B

    iget v1, p0, Lorg/mapdb/DataOutput2;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mapdb/DataOutput2;->pos:I

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 108
    iget-object v0, p0, Lorg/mapdb/DataOutput2;->buf:[B

    iget v1, p0, Lorg/mapdb/DataOutput2;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mapdb/DataOutput2;->pos:I

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 109
    iget-object v0, p0, Lorg/mapdb/DataOutput2;->buf:[B

    iget v1, p0, Lorg/mapdb/DataOutput2;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mapdb/DataOutput2;->pos:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 110
    return-void
.end method

.method public writeLong(J)V
    .locals 7
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const-wide/16 v4, 0xff

    .line 114
    invoke-virtual {p0, v6}, Lorg/mapdb/DataOutput2;->ensureAvail(I)V

    .line 115
    iget-object v0, p0, Lorg/mapdb/DataOutput2;->buf:[B

    iget v1, p0, Lorg/mapdb/DataOutput2;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mapdb/DataOutput2;->pos:I

    const/16 v2, 0x38

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 116
    iget-object v0, p0, Lorg/mapdb/DataOutput2;->buf:[B

    iget v1, p0, Lorg/mapdb/DataOutput2;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mapdb/DataOutput2;->pos:I

    const/16 v2, 0x30

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 117
    iget-object v0, p0, Lorg/mapdb/DataOutput2;->buf:[B

    iget v1, p0, Lorg/mapdb/DataOutput2;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mapdb/DataOutput2;->pos:I

    const/16 v2, 0x28

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 118
    iget-object v0, p0, Lorg/mapdb/DataOutput2;->buf:[B

    iget v1, p0, Lorg/mapdb/DataOutput2;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mapdb/DataOutput2;->pos:I

    const/16 v2, 0x20

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 119
    iget-object v0, p0, Lorg/mapdb/DataOutput2;->buf:[B

    iget v1, p0, Lorg/mapdb/DataOutput2;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mapdb/DataOutput2;->pos:I

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 120
    iget-object v0, p0, Lorg/mapdb/DataOutput2;->buf:[B

    iget v1, p0, Lorg/mapdb/DataOutput2;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mapdb/DataOutput2;->pos:I

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 121
    iget-object v0, p0, Lorg/mapdb/DataOutput2;->buf:[B

    iget v1, p0, Lorg/mapdb/DataOutput2;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mapdb/DataOutput2;->pos:I

    shr-long v2, p1, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 122
    iget-object v0, p0, Lorg/mapdb/DataOutput2;->buf:[B

    iget v1, p0, Lorg/mapdb/DataOutput2;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mapdb/DataOutput2;->pos:I

    and-long v2, v4, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 123
    return-void
.end method

.method public writeShort(I)V
    .locals 3
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/mapdb/DataOutput2;->ensureAvail(I)V

    .line 94
    iget-object v0, p0, Lorg/mapdb/DataOutput2;->buf:[B

    iget v1, p0, Lorg/mapdb/DataOutput2;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mapdb/DataOutput2;->pos:I

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 95
    iget-object v0, p0, Lorg/mapdb/DataOutput2;->buf:[B

    iget v1, p0, Lorg/mapdb/DataOutput2;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mapdb/DataOutput2;->pos:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 96
    return-void
.end method

.method public writeUTF(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 148
    .local v2, "len":I
    invoke-static {p0, v2}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 149
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 150
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 151
    .local v0, "c":I
    invoke-static {p0, v0}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "c":I
    :cond_0
    return-void
.end method
