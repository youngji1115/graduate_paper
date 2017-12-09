.class public abstract Lorg/mapdb/Volume;
.super Ljava/lang/Object;
.source "Volume.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapdb/Volume$FileChannelVol;,
        Lorg/mapdb/Volume$MemoryVol;,
        Lorg/mapdb/Volume$MappedFileVol;,
        Lorg/mapdb/Volume$ByteBufferVol;,
        Lorg/mapdb/Volume$Factory;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected closed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/mapdb/Volume;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/mapdb/Volume;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mapdb/Volume;->closed:Z

    .line 781
    return-void
.end method

.method public static fileFactory(Ljava/io/File;IZJII)Lorg/mapdb/Volume$Factory;
    .locals 11
    .param p0, "indexFile"    # Ljava/io/File;
    .param p1, "rafMode"    # I
    .param p2, "readOnly"    # Z
    .param p3, "sizeLimit"    # J
    .param p5, "chunkShift"    # I
    .param p6, "sizeIncrement"    # I

    .prologue
    .line 210
    new-instance v8, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".p"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v9}, Lorg/mapdb/Volume;->fileFactory(Ljava/io/File;IZJIILjava/io/File;Ljava/io/File;)Lorg/mapdb/Volume$Factory;

    move-result-object v0

    return-object v0
.end method

.method public static fileFactory(Ljava/io/File;IZJIILjava/io/File;Ljava/io/File;)Lorg/mapdb/Volume$Factory;
    .locals 13
    .param p0, "indexFile"    # Ljava/io/File;
    .param p1, "rafMode"    # I
    .param p2, "readOnly"    # Z
    .param p3, "sizeLimit"    # J
    .param p5, "chunkShift"    # I
    .param p6, "sizeIncrement"    # I
    .param p7, "physFile"    # Ljava/io/File;
    .param p8, "transLogFile"    # Ljava/io/File;

    .prologue
    .line 226
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v1 .. v11}, Lorg/mapdb/Volume;->fileFactory(Ljava/io/File;IZJIILjava/io/File;Ljava/io/File;ZZ)Lorg/mapdb/Volume$Factory;

    move-result-object v0

    return-object v0
.end method

.method public static fileFactory(Ljava/io/File;IZJIILjava/io/File;Ljava/io/File;Z)Lorg/mapdb/Volume$Factory;
    .locals 13
    .param p0, "indexFile"    # Ljava/io/File;
    .param p1, "rafMode"    # I
    .param p2, "readOnly"    # Z
    .param p3, "sizeLimit"    # J
    .param p5, "chunkShift"    # I
    .param p6, "sizeIncrement"    # I
    .param p7, "physFile"    # Ljava/io/File;
    .param p8, "transLogFile"    # Ljava/io/File;
    .param p9, "asyncWriteEnabled"    # Z

    .prologue
    .line 250
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v1 .. v11}, Lorg/mapdb/Volume;->fileFactory(Ljava/io/File;IZJIILjava/io/File;Ljava/io/File;ZZ)Lorg/mapdb/Volume$Factory;

    move-result-object v0

    return-object v0
.end method

.method public static fileFactory(Ljava/io/File;IZJIILjava/io/File;Ljava/io/File;ZZ)Lorg/mapdb/Volume$Factory;
    .locals 13
    .param p0, "indexFile"    # Ljava/io/File;
    .param p1, "rafMode"    # I
    .param p2, "readOnly"    # Z
    .param p3, "sizeLimit"    # J
    .param p5, "chunkShift"    # I
    .param p6, "sizeIncrement"    # I
    .param p7, "physFile"    # Ljava/io/File;
    .param p8, "transLogFile"    # Ljava/io/File;
    .param p9, "asyncWriteEnabled"    # Z
    .param p10, "cleanerHackDisable"    # Z

    .prologue
    .line 273
    new-instance v0, Lorg/mapdb/Volume$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p9

    move/from16 v9, p10

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lorg/mapdb/Volume$1;-><init>(Ljava/io/File;IZJIIZZLjava/io/File;Ljava/io/File;)V

    return-object v0
.end method

.method public static memoryFactory(ZJI)Lorg/mapdb/Volume$Factory;
    .locals 1
    .param p0, "useDirectBuffer"    # Z
    .param p1, "sizeLimit"    # J
    .param p3, "chunkShift"    # I

    .prologue
    .line 293
    new-instance v0, Lorg/mapdb/Volume$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/mapdb/Volume$2;-><init>(ZJI)V

    return-object v0
.end method

.method public static volumeForFile(Ljava/io/File;ZZJII)Lorg/mapdb/Volume;
    .locals 9
    .param p0, "f"    # Ljava/io/File;
    .param p1, "useRandomAccessFile"    # Z
    .param p2, "readOnly"    # Z
    .param p3, "sizeLimit"    # J
    .param p5, "chunkShift"    # I
    .param p6, "sizeIncrement"    # I

    .prologue
    .line 194
    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-static/range {v1 .. v8}, Lorg/mapdb/Volume;->volumeForFile(Ljava/io/File;ZZJIIZ)Lorg/mapdb/Volume;

    move-result-object v0

    return-object v0
.end method

.method public static volumeForFile(Ljava/io/File;ZZJIIZ)Lorg/mapdb/Volume;
    .locals 11
    .param p0, "f"    # Ljava/io/File;
    .param p1, "useRandomAccessFile"    # Z
    .param p2, "readOnly"    # Z
    .param p3, "sizeLimit"    # J
    .param p5, "chunkShift"    # I
    .param p6, "sizeIncrement"    # I
    .param p7, "asyncWriteEnabled"    # Z

    .prologue
    .line 198
    const/4 v9, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v1 .. v9}, Lorg/mapdb/Volume;->volumeForFile(Ljava/io/File;ZZJIIZZ)Lorg/mapdb/Volume;

    move-result-object v0

    return-object v0
.end method

.method public static volumeForFile(Ljava/io/File;ZZJIIZZ)Lorg/mapdb/Volume;
    .locals 11
    .param p0, "f"    # Ljava/io/File;
    .param p1, "useRandomAccessFile"    # Z
    .param p2, "readOnly"    # Z
    .param p3, "sizeLimit"    # J
    .param p5, "chunkShift"    # I
    .param p6, "sizeIncrement"    # I
    .param p7, "asyncWriteEnabled"    # Z
    .param p8, "cleanerHackDisable"    # Z

    .prologue
    .line 202
    if-eqz p1, :cond_0

    new-instance v1, Lorg/mapdb/Volume$FileChannelVol;

    move-object v2, p0

    move v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/mapdb/Volume$FileChannelVol;-><init>(Ljava/io/File;ZJII)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/mapdb/Volume$MappedFileVol;

    move-object v2, p0

    move v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lorg/mapdb/Volume$MappedFileVol;-><init>(Ljava/io/File;ZJIIZZ)V

    goto :goto_0
.end method

.method public static volumeTransfer(JLorg/mapdb/Volume;Lorg/mapdb/Volume;)V
    .locals 10
    .param p0, "size"    # J
    .param p2, "from"    # Lorg/mapdb/Volume;
    .param p3, "to"    # Lorg/mapdb/Volume;

    .prologue
    .line 1066
    const/high16 v2, 0x10000

    .line 1068
    .local v2, "bufSize":I
    const-wide/16 v4, 0x0

    .local v4, "offset":J
    :goto_0
    cmp-long v6, v4, p0

    if-gez v6, :cond_0

    .line 1069
    int-to-long v6, v2

    sub-long v8, p0, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v0, v6

    .line 1070
    .local v0, "bb":I
    invoke-virtual {p2, v4, v5, v0}, Lorg/mapdb/Volume;->getDataInput(JI)Ljava/io/DataInput;

    move-result-object v3

    check-cast v3, Lorg/mapdb/DataInput2;

    .line 1071
    .local v3, "input":Lorg/mapdb/DataInput2;
    iget-object v6, v3, Lorg/mapdb/DataInput2;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1072
    .local v1, "buf":Ljava/nio/ByteBuffer;
    iget v6, v3, Lorg/mapdb/DataInput2;->pos:I

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1073
    iget v6, v3, Lorg/mapdb/DataInput2;->pos:I

    add-int/2addr v6, v0

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1074
    int-to-long v6, v0

    add-long/2addr v6, v4

    invoke-virtual {p3, v6, v7}, Lorg/mapdb/Volume;->ensureAvailable(J)V

    .line 1075
    invoke-virtual {p3, v4, v5, v1}, Lorg/mapdb/Volume;->putData(JLjava/nio/ByteBuffer;)V

    .line 1068
    int-to-long v6, v2

    add-long/2addr v4, v6

    goto :goto_0

    .line 1077
    .end local v0    # "bb":I
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v3    # "input":Lorg/mapdb/DataInput2;
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract deleteFile()V
.end method

.method public ensureAvailable(J)V
    .locals 3
    .param p1, "offset"    # J

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/Volume;->tryAvailable(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/io/IOError;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "no free space to expand Volume"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 69
    :cond_0
    return-void
.end method

.method public abstract getByte(J)B
.end method

.method public abstract getDataInput(JI)Ljava/io/DataInput;
.end method

.method public abstract getFile()Ljava/io/File;
.end method

.method public abstract getInt(J)I
.end method

.method public abstract getLong(J)J
.end method

.method public getPackedLong(J)J
    .locals 13
    .param p1, "pos"    # J

    .prologue
    .line 172
    const-wide/16 v6, 0x0

    .line 173
    .local v6, "result":J
    const/4 v2, 0x0

    .local v2, "offset":I
    move-wide v4, p1

    .end local p1    # "pos":J
    .local v4, "pos":J
    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 174
    const-wide/16 v8, 0x1

    add-long p1, v4, v8

    .end local v4    # "pos":J
    .restart local p1    # "pos":J
    invoke-virtual {p0, v4, v5}, Lorg/mapdb/Volume;->getUnsignedByte(J)I

    move-result v3

    int-to-long v0, v3

    .line 175
    .local v0, "b":J
    const-wide/16 v8, 0x7f

    and-long/2addr v8, v0

    shl-long/2addr v8, v2

    or-long/2addr v6, v8

    .line 176
    const-wide/16 v8, 0x80

    and-long/2addr v8, v0

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-nez v3, :cond_0

    .line 177
    return-wide v6

    .line 173
    :cond_0
    add-int/lit8 v2, v2, 0x7

    move-wide v4, p1

    .end local p1    # "pos":J
    .restart local v4    # "pos":J
    goto :goto_0

    .line 180
    .end local v0    # "b":J
    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    const-string v8, "Malformed long."

    invoke-direct {v3, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public getSixLong(J)J
    .locals 5
    .param p1, "pos"    # J

    .prologue
    .line 125
    const-wide/16 v0, 0x0

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/mapdb/Volume;->getByte(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v2, 0x28

    shl-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lorg/mapdb/Volume;->getByte(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/16 v2, 0x2

    add-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lorg/mapdb/Volume;->getByte(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/16 v2, 0x3

    add-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lorg/mapdb/Volume;->getByte(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/16 v2, 0x4

    add-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lorg/mapdb/Volume;->getByte(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/16 v2, 0x5

    add-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lorg/mapdb/Volume;->getByte(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/4 v4, 0x0

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public getUnsignedByte(J)I
    .locals 1
    .param p1, "offset"    # J

    .prologue
    .line 114
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/Volume;->getByte(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getUnsignedShort(J)I
    .locals 5
    .param p1, "offset"    # J

    .prologue
    .line 109
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/Volume;->getByte(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const-wide/16 v2, 0x1

    add-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lorg/mapdb/Volume;->getByte(J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract isSliced()Z
.end method

.method public abstract putByte(JB)V
.end method

.method public abstract putData(JLjava/nio/ByteBuffer;)V
.end method

.method public abstract putData(J[BII)V
.end method

.method public abstract putInt(JI)V
.end method

.method public abstract putLong(JJ)V
.end method

.method public putPackedLong(JJ)I
    .locals 9
    .param p1, "pos"    # J
    .param p3, "value"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 153
    sget-boolean v2, Lorg/mapdb/Volume;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    cmp-long v2, p3, v6

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "negative value"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 155
    :cond_0
    const/4 v0, 0x0

    .local v0, "ret":I
    move v1, v0

    .line 157
    .end local v0    # "ret":I
    .local v1, "ret":I
    :goto_0
    const-wide/16 v2, -0x80

    and-long/2addr v2, p3

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    .line 158
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "ret":I
    .restart local v0    # "ret":I
    int-to-long v2, v1

    add-long/2addr v2, p1

    long-to-int v4, p3

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    invoke-virtual {p0, v2, v3, v4}, Lorg/mapdb/Volume;->putUnsignedByte(JI)V

    .line 159
    const/4 v2, 0x7

    ushr-long/2addr p3, v2

    move v1, v0

    .end local v0    # "ret":I
    .restart local v1    # "ret":I
    goto :goto_0

    .line 161
    :cond_1
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "ret":I
    .restart local v0    # "ret":I
    int-to-long v2, v1

    add-long/2addr v2, p1

    long-to-int v4, p3

    int-to-byte v4, v4

    invoke-virtual {p0, v2, v3, v4}, Lorg/mapdb/Volume;->putUnsignedByte(JI)V

    .line 162
    return v0
.end method

.method public putSixLong(JJ)V
    .locals 7
    .param p1, "pos"    # J
    .param p3, "value"    # J

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xff

    .line 138
    sget-boolean v0, Lorg/mapdb/Volume;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    cmp-long v0, p3, v2

    if-ltz v0, :cond_0

    const/16 v0, 0x30

    ushr-long v0, p3, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "value does not fit"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 140
    :cond_1
    add-long v0, p1, v2

    const/16 v2, 0x28

    shr-long v2, p3, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/mapdb/Volume;->putByte(JB)V

    .line 141
    const-wide/16 v0, 0x1

    add-long/2addr v0, p1

    const/16 v2, 0x20

    shr-long v2, p3, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/mapdb/Volume;->putByte(JB)V

    .line 142
    const-wide/16 v0, 0x2

    add-long/2addr v0, p1

    const/16 v2, 0x18

    shr-long v2, p3, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/mapdb/Volume;->putByte(JB)V

    .line 143
    const-wide/16 v0, 0x3

    add-long/2addr v0, p1

    const/16 v2, 0x10

    shr-long v2, p3, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/mapdb/Volume;->putByte(JB)V

    .line 144
    const-wide/16 v0, 0x4

    add-long/2addr v0, p1

    const/16 v2, 0x8

    shr-long v2, p3, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/mapdb/Volume;->putByte(JB)V

    .line 145
    const-wide/16 v0, 0x5

    add-long/2addr v0, p1

    const/4 v2, 0x0

    shr-long v2, p3, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/mapdb/Volume;->putByte(JB)V

    .line 147
    return-void
.end method

.method public putUnsignedByte(JI)V
    .locals 1
    .param p1, "offset"    # J
    .param p3, "b"    # I

    .prologue
    .line 118
    and-int/lit16 v0, p3, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/mapdb/Volume;->putByte(JB)V

    .line 119
    return-void
.end method

.method public putUnsignedShort(JI)V
    .locals 3
    .param p1, "offset"    # J
    .param p3, "value"    # I

    .prologue
    .line 104
    shr-int/lit8 v0, p3, 0x8

    int-to-byte v0, v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/mapdb/Volume;->putByte(JB)V

    .line 105
    const-wide/16 v0, 0x1

    add-long/2addr v0, p1

    int-to-byte v2, p3

    invoke-virtual {p0, v0, v1, v2}, Lorg/mapdb/Volume;->putByte(JB)V

    .line 106
    return-void
.end method

.method public abstract sync()V
.end method

.method public abstract truncate(J)V
.end method

.method public abstract tryAvailable(J)Z
.end method
