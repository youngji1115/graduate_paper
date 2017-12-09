.class public abstract Lorg/mapdb/Store;
.super Ljava/lang/Object;
.source "Store.java"

# interfaces
.implements Lorg/mapdb/Engine;


# static fields
.field protected static final CHECKSUM_FLAG_MASK:I = 0x1

.field protected static final CHUNK_SIZE:I = 0x100000

.field protected static final CHUNK_SIZE_MOD_MASK:I = 0xfffff

.field protected static final COMPRESS_FLAG_MASK:I = 0x4

.field protected static final ENCRYPT_FLAG_MASK:I = 0x8

.field private static final LOCK_MASK:I = 0x7f

.field protected static final LOG:Ljava/util/logging/Logger;


# instance fields
.field protected final LZF:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/mapdb/CompressLZF;",
            ">;"
        }
    .end annotation
.end field

.field protected final checksum:Z

.field closeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected final compress:Z

.field protected final encrypt:Z

.field protected final encryptionXTEA:Lorg/mapdb/EncryptionXTEA;

.field protected final locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field protected final newRecidLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field protected final password:[B

.field protected final recycledDataOuts:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/mapdb/DataOutput2;",
            ">;"
        }
    .end annotation
.end field

.field protected serializerPojo:Lorg/mapdb/SerializerPojo;

.field protected serializerPojoInitLock:Ljava/util/concurrent/locks/Lock;

.field protected final structuralLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/mapdb/Store;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mapdb/Store;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(ZZ[BZ)V
    .locals 6
    .param p1, "checksum"    # Z
    .param p2, "compress"    # Z
    .param p3, "password"    # [B
    .param p4, "disableLocks"    # Z

    .prologue
    const/4 v2, 0x0

    const/16 v5, 0x80

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v3, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v3, p0, Lorg/mapdb/Store;->serializerPojoInitLock:Ljava/util/concurrent/locks/Lock;

    .line 125
    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v3, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v3, p0, Lorg/mapdb/Store;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 126
    new-instance v3, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v3, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v3, p0, Lorg/mapdb/Store;->newRecidLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 127
    new-array v3, v5, [Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    iput-object v3, p0, Lorg/mapdb/Store;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/mapdb/Store;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lorg/mapdb/Store;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v4, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v4, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    new-instance v3, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v3, v5}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v3, p0, Lorg/mapdb/Store;->recycledDataOuts:Ljava/util/Queue;

    .line 346
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, p0, Lorg/mapdb/Store;->closeListeners:Ljava/util/List;

    .line 66
    iput-boolean p1, p0, Lorg/mapdb/Store;->checksum:Z

    .line 67
    iput-boolean p2, p0, Lorg/mapdb/Store;->compress:Z

    .line 68
    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lorg/mapdb/Store;->encrypt:Z

    .line 69
    iput-object p3, p0, Lorg/mapdb/Store;->password:[B

    .line 70
    iget-boolean v1, p0, Lorg/mapdb/Store;->encrypt:Z

    if-nez v1, :cond_2

    move-object v1, v2

    :goto_1
    iput-object v1, p0, Lorg/mapdb/Store;->encryptionXTEA:Lorg/mapdb/EncryptionXTEA;

    .line 72
    if-nez p2, :cond_3

    :goto_2
    iput-object v2, p0, Lorg/mapdb/Store;->LZF:Ljava/lang/ThreadLocal;

    .line 78
    return-void

    .line 70
    :cond_2
    new-instance v1, Lorg/mapdb/EncryptionXTEA;

    invoke-direct {v1, p3}, Lorg/mapdb/EncryptionXTEA;-><init>([B)V

    goto :goto_1

    .line 72
    :cond_3
    new-instance v2, Lorg/mapdb/Store$1;

    invoke-direct {v2, p0}, Lorg/mapdb/Store$1;-><init>(Lorg/mapdb/Store;)V

    goto :goto_2
.end method

.method public static forDB(Lorg/mapdb/DB;)Lorg/mapdb/Store;
    .locals 1
    .param p0, "db"    # Lorg/mapdb/DB;

    .prologue
    .line 308
    iget-object v0, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    invoke-static {v0}, Lorg/mapdb/Store;->forEngine(Lorg/mapdb/Engine;)Lorg/mapdb/Store;

    move-result-object v0

    return-object v0
.end method

.method public static forEngine(Lorg/mapdb/Engine;)Lorg/mapdb/Store;
    .locals 1
    .param p0, "e"    # Lorg/mapdb/Engine;

    .prologue
    .line 313
    instance-of v0, p0, Lorg/mapdb/EngineWrapper;

    if-eqz v0, :cond_0

    .line 314
    check-cast p0, Lorg/mapdb/EngineWrapper;

    .end local p0    # "e":Lorg/mapdb/Engine;
    invoke-virtual {p0}, Lorg/mapdb/EngineWrapper;->getWrappedEngine()Lorg/mapdb/Engine;

    move-result-object v0

    invoke-static {v0}, Lorg/mapdb/Store;->forEngine(Lorg/mapdb/Engine;)Lorg/mapdb/Store;

    move-result-object p0

    .line 317
    :goto_0
    return-object p0

    .line 315
    .restart local p0    # "e":Lorg/mapdb/Engine;
    :cond_0
    instance-of v0, p0, Lorg/mapdb/TxEngine$Tx;

    if-eqz v0, :cond_1

    .line 316
    check-cast p0, Lorg/mapdb/TxEngine$Tx;

    .end local p0    # "e":Lorg/mapdb/Engine;
    invoke-virtual {p0}, Lorg/mapdb/TxEngine$Tx;->getWrappedEngine()Lorg/mapdb/Engine;

    move-result-object v0

    invoke-static {v0}, Lorg/mapdb/Store;->forEngine(Lorg/mapdb/Engine;)Lorg/mapdb/Store;

    move-result-object p0

    goto :goto_0

    .line 317
    .restart local p0    # "e":Lorg/mapdb/Engine;
    :cond_1
    check-cast p0, Lorg/mapdb/Store;

    goto :goto_0
.end method

.method protected static lockPos(J)I
    .locals 4
    .param p0, "key"    # J

    .prologue
    .line 329
    const/16 v1, 0x20

    ushr-long v2, p0, v1

    xor-long/2addr v2, p0

    long-to-int v0, v2

    .line 330
    .local v0, "h":I
    ushr-int/lit8 v1, v0, 0x14

    ushr-int/lit8 v2, v0, 0xc

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    .line 331
    ushr-int/lit8 v1, v0, 0x7

    ushr-int/lit8 v2, v0, 0x4

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    .line 332
    and-int/lit8 v1, v0, 0x7f

    return v1
.end method


# virtual methods
.method public abstract calculateStatistics()Ljava/lang/String;
.end method

.method public canSnapshot()Z
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method public closeListenerRegister(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "closeListener"    # Ljava/lang/Runnable;

    .prologue
    .line 350
    iget-object v0, p0, Lorg/mapdb/Store;->closeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    return-void
.end method

.method public closeListenerUnregister(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "closeListener"    # Ljava/lang/Runnable;

    .prologue
    .line 355
    iget-object v0, p0, Lorg/mapdb/Store;->closeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 356
    return-void
.end method

.method protected deserialize(Lorg/mapdb/Serializer;ILjava/io/DataInput;)Ljava/lang/Object;
    .locals 18
    .param p2, "size"    # I
    .param p3, "input"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mapdb/Serializer",
            "<TA;>;I",
            "Ljava/io/DataInput;",
            ")TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    move-object/from16 v12, p3

    check-cast v12, Lorg/mapdb/DataInput2;

    .line 243
    .local v12, "di":Lorg/mapdb/DataInput2;
    if-lez p2, :cond_2

    .line 244
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/mapdb/Store;->checksum:Z

    if-eqz v3, :cond_0

    .line 246
    add-int/lit8 p2, p2, -0x4

    .line 249
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/Store;->newDataOut2()Lorg/mapdb/DataOutput2;

    move-result-object v17

    .line 250
    .local v17, "tmp":Lorg/mapdb/DataOutput2;
    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/mapdb/DataOutput2;->ensureAvail(I)V

    .line 251
    iget v13, v12, Lorg/mapdb/DataInput2;->pos:I

    .line 252
    .local v13, "oldPos":I
    move-object/from16 v0, v17

    iget-object v3, v0, Lorg/mapdb/DataOutput2;->buf:[B

    const/4 v4, 0x0

    move/from16 v0, p2

    invoke-virtual {v12, v3, v4, v0}, Lorg/mapdb/DataInput2;->read([BII)I

    .line 253
    iput v13, v12, Lorg/mapdb/DataInput2;->pos:I

    .line 255
    new-instance v10, Ljava/util/zip/CRC32;

    invoke-direct {v10}, Ljava/util/zip/CRC32;-><init>()V

    .line 256
    .local v10, "crc":Ljava/util/zip/CRC32;
    move-object/from16 v0, v17

    iget-object v3, v0, Lorg/mapdb/DataOutput2;->buf:[B

    const/4 v4, 0x0

    move/from16 v0, p2

    invoke-virtual {v10, v3, v4, v0}, Ljava/util/zip/CRC32;->update([BII)V

    .line 257
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/Store;->recycledDataOuts:Ljava/util/Queue;

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 258
    invoke-virtual {v10}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    long-to-int v8, v4

    .line 259
    .local v8, "check":I
    iget-object v3, v12, Lorg/mapdb/DataInput2;->buf:Ljava/nio/ByteBuffer;

    iget v4, v12, Lorg/mapdb/DataInput2;->pos:I

    add-int v4, v4, p2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v9

    .line 260
    .local v9, "checkExpected":I
    if-eq v8, v9, :cond_0

    .line 261
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Checksum does not match, data broken"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 264
    .end local v8    # "check":I
    .end local v9    # "checkExpected":I
    .end local v10    # "crc":Ljava/util/zip/CRC32;
    .end local v13    # "oldPos":I
    .end local v17    # "tmp":Lorg/mapdb/DataOutput2;
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/mapdb/Store;->encrypt:Z

    if-eqz v3, :cond_1

    .line 265
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/Store;->newDataOut2()Lorg/mapdb/DataOutput2;

    move-result-object v17

    .line 266
    .restart local v17    # "tmp":Lorg/mapdb/DataOutput2;
    add-int/lit8 p2, p2, -0x1

    .line 267
    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/mapdb/DataOutput2;->ensureAvail(I)V

    .line 268
    move-object/from16 v0, v17

    iget-object v3, v0, Lorg/mapdb/DataOutput2;->buf:[B

    const/4 v4, 0x0

    move/from16 v0, p2

    invoke-virtual {v12, v3, v4, v0}, Lorg/mapdb/DataInput2;->read([BII)I

    .line 269
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/Store;->encryptionXTEA:Lorg/mapdb/EncryptionXTEA;

    move-object/from16 v0, v17

    iget-object v4, v0, Lorg/mapdb/DataOutput2;->buf:[B

    const/4 v5, 0x0

    move/from16 v0, p2

    invoke-virtual {v3, v4, v5, v0}, Lorg/mapdb/EncryptionXTEA;->decrypt([BII)V

    .line 270
    invoke-virtual {v12}, Lorg/mapdb/DataInput2;->readUnsignedByte()I

    move-result v11

    .line 271
    .local v11, "cut":I
    new-instance v12, Lorg/mapdb/DataInput2;

    .end local v12    # "di":Lorg/mapdb/DataInput2;
    move-object/from16 v0, v17

    iget-object v3, v0, Lorg/mapdb/DataOutput2;->buf:[B

    invoke-direct {v12, v3}, Lorg/mapdb/DataInput2;-><init>([B)V

    .line 272
    .restart local v12    # "di":Lorg/mapdb/DataInput2;
    sub-int p2, p2, v11

    .line 275
    .end local v11    # "cut":I
    .end local v17    # "tmp":Lorg/mapdb/DataOutput2;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/mapdb/Store;->compress:Z

    if-eqz v3, :cond_2

    .line 277
    invoke-static {v12}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v7

    .line 278
    .local v7, "decompSize":I
    if-nez v7, :cond_3

    .line 279
    add-int/lit8 p2, p2, -0x1

    .line 295
    .end local v7    # "decompSize":I
    :cond_2
    :goto_0
    iget v0, v12, Lorg/mapdb/DataInput2;->pos:I

    move/from16 v16, v0

    .line 297
    .local v16, "start":I
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0, v12, v1}, Lorg/mapdb/Serializer;->deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;

    move-result-object v15

    .line 298
    .local v15, "ret":Ljava/lang/Object;, "TA;"
    add-int v3, p2, v16

    iget v4, v12, Lorg/mapdb/DataInput2;->pos:I

    if-le v3, v4, :cond_4

    .line 299
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "data were not fully read, check your serializer "

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 282
    .end local v15    # "ret":Ljava/lang/Object;, "TA;"
    .end local v16    # "start":I
    .restart local v7    # "decompSize":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/Store;->newDataOut2()Lorg/mapdb/DataOutput2;

    move-result-object v14

    .line 283
    .local v14, "out":Lorg/mapdb/DataOutput2;
    invoke-virtual {v14, v7}, Lorg/mapdb/DataOutput2;->ensureAvail(I)V

    .line 284
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/Store;->LZF:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapdb/CompressLZF;

    .line 287
    .local v2, "lzf":Lorg/mapdb/CompressLZF;
    iget-object v3, v12, Lorg/mapdb/DataInput2;->buf:Ljava/nio/ByteBuffer;

    iget v4, v12, Lorg/mapdb/DataInput2;->pos:I

    iget-object v5, v14, Lorg/mapdb/DataOutput2;->buf:[B

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/mapdb/CompressLZF;->expand(Ljava/nio/ByteBuffer;I[BII)V

    .line 288
    new-instance v12, Lorg/mapdb/DataInput2;

    .end local v12    # "di":Lorg/mapdb/DataInput2;
    iget-object v3, v14, Lorg/mapdb/DataOutput2;->buf:[B

    invoke-direct {v12, v3}, Lorg/mapdb/DataInput2;-><init>([B)V

    .line 289
    .restart local v12    # "di":Lorg/mapdb/DataInput2;
    move/from16 p2, v7

    goto :goto_0

    .line 300
    .end local v2    # "lzf":Lorg/mapdb/CompressLZF;
    .end local v7    # "decompSize":I
    .end local v14    # "out":Lorg/mapdb/DataOutput2;
    .restart local v15    # "ret":Ljava/lang/Object;, "TA;"
    .restart local v16    # "start":I
    :cond_4
    add-int v3, p2, v16

    iget v4, v12, Lorg/mapdb/DataInput2;->pos:I

    if-ge v3, v4, :cond_5

    .line 301
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "data were read beyond record size, check your serializer"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 302
    :cond_5
    return-object v15
.end method

.method protected expectedMasks()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 321
    iget-boolean v0, p0, Lorg/mapdb/Store;->encrypt:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    iget-boolean v2, p0, Lorg/mapdb/Store;->checksum:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    or-int/2addr v0, v2

    iget-boolean v2, p0, Lorg/mapdb/Store;->compress:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    :cond_0
    or-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method public abstract getCurrSize()J
.end method

.method public abstract getFreeRecids()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFreeSize()J
.end method

.method public abstract getMaxRecid()J
.end method

.method public abstract getRaw(J)Ljava/nio/ByteBuffer;
.end method

.method public getSerializerPojo()Lorg/mapdb/SerializerPojo;
    .locals 5

    .prologue
    .line 107
    iget-object v1, p0, Lorg/mapdb/Store;->serializerPojoInitLock:Ljava/util/concurrent/locks/Lock;

    .line 108
    .local v1, "pojoLock":Ljava/util/concurrent/locks/Lock;
    if-eqz v1, :cond_1

    .line 109
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 111
    :try_start_0
    iget-object v2, p0, Lorg/mapdb/Store;->serializerPojo:Lorg/mapdb/SerializerPojo;

    if-nez v2, :cond_0

    .line 112
    const-wide/16 v2, 0x2

    sget-object v4, Lorg/mapdb/SerializerPojo;->serializer:Lorg/mapdb/Serializer;

    invoke-virtual {p0, v2, v3, v4}, Lorg/mapdb/Store;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 113
    .local v0, "classInfos":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lorg/mapdb/SerializerPojo$ClassInfo;>;"
    new-instance v2, Lorg/mapdb/SerializerPojo;

    invoke-direct {v2, v0}, Lorg/mapdb/SerializerPojo;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    iput-object v2, p0, Lorg/mapdb/Store;->serializerPojo:Lorg/mapdb/SerializerPojo;

    .line 114
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mapdb/Store;->serializerPojoInitLock:Ljava/util/concurrent/locks/Lock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .end local v0    # "classInfos":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lorg/mapdb/SerializerPojo$ClassInfo;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 121
    :cond_1
    iget-object v2, p0, Lorg/mapdb/Store;->serializerPojo:Lorg/mapdb/SerializerPojo;

    return-object v2

    .line 117
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method public abstract getSizeLimit()J
.end method

.method protected lockAllWrite()V
    .locals 5

    .prologue
    .line 134
    iget-object v4, p0, Lorg/mapdb/Store;->newRecidLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 135
    iget-object v0, p0, Lorg/mapdb/Store;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .local v0, "arr$":[Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .local v2, "l":Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v2    # "l":Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    :cond_0
    iget-object v4, p0, Lorg/mapdb/Store;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 137
    return-void
.end method

.method protected newDataOut2()Lorg/mapdb/DataOutput2;
    .locals 2

    .prologue
    .line 234
    iget-object v1, p0, Lorg/mapdb/Store;->recycledDataOuts:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/DataOutput2;

    .line 235
    .local v0, "tmp":Lorg/mapdb/DataOutput2;
    if-nez v0, :cond_0

    new-instance v0, Lorg/mapdb/DataOutput2;

    .end local v0    # "tmp":Lorg/mapdb/DataOutput2;
    invoke-direct {v0}, Lorg/mapdb/DataOutput2;-><init>()V

    .line 237
    .restart local v0    # "tmp":Lorg/mapdb/DataOutput2;
    :goto_0
    return-object v0

    .line 236
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Lorg/mapdb/DataOutput2;->pos:I

    goto :goto_0
.end method

.method public printStatistics()V
    .locals 2

    .prologue
    .line 98
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lorg/mapdb/Store;->calculateStatistics()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method protected serialize(Ljava/lang/Object;Lorg/mapdb/Serializer;)Lorg/mapdb/DataOutput2;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;",
            "Lorg/mapdb/Serializer",
            "<TA;>;)",
            "Lorg/mapdb/DataOutput2;"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "value":Ljava/lang/Object;, "TA;"
    .local p2, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/Store;->newDataOut2()Lorg/mapdb/DataOutput2;

    move-result-object v7

    .line 154
    .local v7, "out":Lorg/mapdb/DataOutput2;
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v7, v1}, Lorg/mapdb/Serializer;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V

    .line 156
    iget v11, v7, Lorg/mapdb/DataOutput2;->pos:I

    if-lez v11, :cond_4

    .line 158
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/mapdb/Store;->compress:Z

    if-eqz v11, :cond_1

    .line 159
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/Store;->newDataOut2()Lorg/mapdb/DataOutput2;

    move-result-object v10

    .line 160
    .local v10, "tmp":Lorg/mapdb/DataOutput2;
    iget v11, v7, Lorg/mapdb/DataOutput2;->pos:I

    add-int/lit8 v11, v11, 0x28

    invoke-virtual {v10, v11}, Lorg/mapdb/DataOutput2;->ensureAvail(I)V

    .line 161
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/mapdb/Store;->LZF:Ljava/lang/ThreadLocal;

    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapdb/CompressLZF;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 164
    .local v5, "lzf":Lorg/mapdb/CompressLZF;
    :try_start_1
    iget-object v11, v7, Lorg/mapdb/DataOutput2;->buf:[B

    iget v12, v7, Lorg/mapdb/DataOutput2;->pos:I

    iget-object v13, v10, Lorg/mapdb/DataOutput2;->buf:[B

    const/4 v14, 0x0

    invoke-virtual {v5, v11, v12, v13, v14}, Lorg/mapdb/CompressLZF;->compress([BI[BI)I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 168
    .local v6, "newLen":I
    :goto_0
    :try_start_2
    iget v11, v7, Lorg/mapdb/DataOutput2;->pos:I

    if-lt v6, v11, :cond_0

    const/4 v6, 0x0

    .line 170
    :cond_0
    if-nez v6, :cond_5

    .line 171
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/mapdb/Store;->recycledDataOuts:Ljava/util/Queue;

    invoke-interface {v11, v10}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 173
    iget v11, v7, Lorg/mapdb/DataOutput2;->pos:I

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v7, v11}, Lorg/mapdb/DataOutput2;->ensureAvail(I)V

    .line 174
    iget-object v11, v7, Lorg/mapdb/DataOutput2;->buf:[B

    const/4 v12, 0x0

    iget-object v13, v7, Lorg/mapdb/DataOutput2;->buf:[B

    const/4 v14, 0x1

    iget v15, v7, Lorg/mapdb/DataOutput2;->pos:I

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    iget v11, v7, Lorg/mapdb/DataOutput2;->pos:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v7, Lorg/mapdb/DataOutput2;->pos:I

    .line 176
    iget-object v11, v7, Lorg/mapdb/DataOutput2;->buf:[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput-byte v13, v11, v12

    .line 189
    .end local v5    # "lzf":Lorg/mapdb/CompressLZF;
    .end local v6    # "newLen":I
    .end local v10    # "tmp":Lorg/mapdb/DataOutput2;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/mapdb/Store;->encrypt:Z

    if-eqz v11, :cond_3

    .line 190
    iget v8, v7, Lorg/mapdb/DataOutput2;->pos:I

    .line 192
    .local v8, "size":I
    rem-int/lit8 v11, v8, 0x10

    if-eqz v11, :cond_2

    .line 193
    rem-int/lit8 v11, v8, 0x10

    rsub-int/lit8 v11, v11, 0x10

    add-int/2addr v8, v11

    .line 194
    :cond_2
    iget v11, v7, Lorg/mapdb/DataOutput2;->pos:I

    sub-int v9, v8, v11

    .line 196
    .local v9, "sizeDif":I
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v7, v11}, Lorg/mapdb/DataOutput2;->ensureAvail(I)V

    .line 197
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/mapdb/Store;->encryptionXTEA:Lorg/mapdb/EncryptionXTEA;

    iget-object v12, v7, Lorg/mapdb/DataOutput2;->buf:[B

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v8}, Lorg/mapdb/EncryptionXTEA;->encrypt([BII)V

    .line 199
    iput v8, v7, Lorg/mapdb/DataOutput2;->pos:I

    .line 200
    invoke-virtual {v7, v9}, Lorg/mapdb/DataOutput2;->writeByte(I)V

    .line 203
    .end local v8    # "size":I
    .end local v9    # "sizeDif":I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/mapdb/Store;->checksum:Z

    if-eqz v11, :cond_4

    .line 204
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 205
    .local v2, "crc":Ljava/util/zip/CRC32;
    iget-object v11, v7, Lorg/mapdb/DataOutput2;->buf:[B

    const/4 v12, 0x0

    iget v13, v7, Lorg/mapdb/DataOutput2;->pos:I

    invoke-virtual {v2, v11, v12, v13}, Ljava/util/zip/CRC32;->update([BII)V

    .line 206
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v12

    long-to-int v11, v12

    invoke-virtual {v7, v11}, Lorg/mapdb/DataOutput2;->writeInt(I)V

    .line 226
    .end local v2    # "crc":Ljava/util/zip/CRC32;
    :cond_4
    return-object v7

    .line 165
    .restart local v5    # "lzf":Lorg/mapdb/CompressLZF;
    .restart local v10    # "tmp":Lorg/mapdb/DataOutput2;
    :catch_0
    move-exception v4

    .line 166
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v6, 0x0

    .restart local v6    # "newLen":I
    goto :goto_0

    .line 179
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_5
    iget v3, v7, Lorg/mapdb/DataOutput2;->pos:I

    .line 180
    .local v3, "decompSize":I
    const/4 v11, 0x0

    iput v11, v7, Lorg/mapdb/DataOutput2;->pos:I

    .line 181
    invoke-static {v7, v3}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 182
    iget-object v11, v10, Lorg/mapdb/DataOutput2;->buf:[B

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12, v6}, Lorg/mapdb/DataOutput2;->write([BII)V

    .line 183
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/mapdb/Store;->recycledDataOuts:Ljava/util/Queue;

    invoke-interface {v11, v10}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 227
    .end local v3    # "decompSize":I
    .end local v5    # "lzf":Lorg/mapdb/CompressLZF;
    .end local v6    # "newLen":I
    .end local v7    # "out":Lorg/mapdb/DataOutput2;
    .end local v10    # "tmp":Lorg/mapdb/DataOutput2;
    :catch_1
    move-exception v4

    .line 228
    .local v4, "e":Ljava/io/IOException;
    new-instance v11, Ljava/io/IOError;

    invoke-direct {v11, v4}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v11
.end method

.method public snapshot()Lorg/mapdb/Engine;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 342
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Snapshots are not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected unlockAllWrite()V
    .locals 5

    .prologue
    .line 140
    iget-object v4, p0, Lorg/mapdb/Store;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 141
    iget-object v0, p0, Lorg/mapdb/Store;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .local v0, "arr$":[Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .local v2, "l":Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v2    # "l":Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    :cond_0
    iget-object v4, p0, Lorg/mapdb/Store;->newRecidLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 143
    return-void
.end method

.method public abstract updateRaw(JLjava/nio/ByteBuffer;)V
.end method
