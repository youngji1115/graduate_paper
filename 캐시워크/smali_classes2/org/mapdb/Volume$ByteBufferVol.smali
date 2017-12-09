.class public abstract Lorg/mapdb/Volume$ByteBufferVol;
.super Lorg/mapdb/Volume;
.source "Volume.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/Volume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ByteBufferVol"
.end annotation


# static fields
.field private static unmapHackSupported:Z

.field private static windowsWorkaround:Z


# instance fields
.field protected final asyncWriteEnabled:Z

.field protected final chunkShift:I

.field protected final chunkSize:I

.field protected final chunkSizeModMask:I

.field protected volatile chunks:[Ljava/nio/ByteBuffer;

.field protected cleanerHackDisabled:Z

.field protected final growLock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected final hasLimit:Z

.field protected final readOnly:Z

.field protected final sizeLimit:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 488
    sput-boolean v1, Lorg/mapdb/Volume$ByteBufferVol;->unmapHackSupported:Z

    .line 491
    :try_start_0
    const-string v3, "sun.nio.ch.DirectBuffer"

    invoke-static {v3}, Lorg/mapdb/SerializerPojo;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_0
    sput-boolean v1, Lorg/mapdb/Volume$ByteBufferVol;->unmapHackSupported:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "win"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/mapdb/Volume$ByteBufferVol;->windowsWorkaround:Z

    return-void

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move v1, v2

    .line 491
    goto :goto_0

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .restart local v0    # "e":Ljava/lang/Exception;
    sput-boolean v2, Lorg/mapdb/Volume$ByteBufferVol;->unmapHackSupported:Z

    goto :goto_1
.end method

.method protected constructor <init>(ZJI)V
    .locals 6
    .param p1, "readOnly"    # Z
    .param p2, "sizeLimit"    # J
    .param p4, "chunkShift"    # I

    .prologue
    .line 337
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/mapdb/Volume$ByteBufferVol;-><init>(ZJIZ)V

    .line 338
    return-void
.end method

.method protected constructor <init>(ZJIZ)V
    .locals 4
    .param p1, "readOnly"    # Z
    .param p2, "sizeLimit"    # J
    .param p4, "chunkShift"    # I
    .param p5, "asyncWriteEnabled"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 340
    invoke-direct {p0}, Lorg/mapdb/Volume;-><init>()V

    .line 318
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v2, p0, Lorg/mapdb/Volume$ByteBufferVol;->growLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 326
    new-array v2, v1, [Ljava/nio/ByteBuffer;

    iput-object v2, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunks:[Ljava/nio/ByteBuffer;

    .line 341
    iput-boolean p1, p0, Lorg/mapdb/Volume$ByteBufferVol;->readOnly:Z

    .line 342
    iput-wide p2, p0, Lorg/mapdb/Volume$ByteBufferVol;->sizeLimit:J

    .line 343
    iput p4, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunkShift:I

    .line 344
    shl-int v2, v0, p4

    iput v2, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunkSize:I

    .line 345
    iget v2, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunkSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunkSizeModMask:I

    .line 347
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lorg/mapdb/Volume$ByteBufferVol;->hasLimit:Z

    .line 348
    iput-boolean p5, p0, Lorg/mapdb/Volume$ByteBufferVol;->asyncWriteEnabled:Z

    .line 349
    iput-boolean v1, p0, Lorg/mapdb/Volume$ByteBufferVol;->cleanerHackDisabled:Z

    .line 350
    return-void

    :cond_0
    move v0, v1

    .line 347
    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 315
    sget-boolean v0, Lorg/mapdb/Volume$ByteBufferVol;->windowsWorkaround:Z

    return v0
.end method


# virtual methods
.method public final getByte(J)B
    .locals 5
    .param p1, "offset"    # J

    .prologue
    .line 429
    iget-object v0, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunks:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunkShift:I

    ushr-long v2, p1, v1

    long-to-int v1, v2

    aget-object v0, v0, v1

    iget v1, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunkSizeModMask:I

    int-to-long v2, v1

    and-long/2addr v2, p1

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method public bridge synthetic getDataInput(JI)Ljava/io/DataInput;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # I

    .prologue
    .line 315
    invoke-virtual {p0, p1, p2, p3}, Lorg/mapdb/Volume$ByteBufferVol;->getDataInput(JI)Lorg/mapdb/DataInput2;

    move-result-object v0

    return-object v0
.end method

.method public final getDataInput(JI)Lorg/mapdb/DataInput2;
    .locals 5
    .param p1, "offset"    # J
    .param p3, "size"    # I

    .prologue
    .line 435
    new-instance v0, Lorg/mapdb/DataInput2;

    iget-object v1, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunks:[Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunkShift:I

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aget-object v1, v1, v2

    iget v2, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunkSizeModMask:I

    int-to-long v2, v2

    and-long/2addr v2, p1

    long-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lorg/mapdb/DataInput2;-><init>(Ljava/nio/ByteBuffer;I)V

    return-object v0
.end method

.method public final getInt(J)I
    .locals 5
    .param p1, "offset"    # J

    .prologue
    .line 424
    iget-object v0, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunks:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunkShift:I

    ushr-long v2, p1, v1

    long-to-int v1, v2

    aget-object v0, v0, v1

    iget v1, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunkSizeModMask:I

    int-to-long v2, v1

    and-long/2addr v2, p1

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public final getLong(J)J
    .locals 5
    .param p1, "offset"    # J

    .prologue
    .line 420
    iget-object v0, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunks:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunkShift:I

    ushr-long v2, p1, v1

    long-to-int v1, v2

    aget-object v0, v0, v1

    iget v1, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunkSizeModMask:I

    int-to-long v2, v1

    and-long/2addr v2, p1

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunks:[Ljava/nio/ByteBuffer;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSliced()Z
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract makeNewBuffer(J)Ljava/nio/ByteBuffer;
.end method

.method public final putByte(JB)V
    .locals 5
    .param p1, "offset"    # J
    .param p3, "value"    # B

    .prologue
    .line 398
    iget-object v0, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunks:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunkShift:I

    ushr-long v2, p1, v1

    long-to-int v1, v2

    aget-object v0, v0, v1

    iget v1, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunkSizeModMask:I

    int-to-long v2, v1

    and-long/2addr v2, p1

    long-to-int v1, v2

    invoke-virtual {v0, v1, p3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 399
    return-void
.end method

.method public final putData(JLjava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "offset"    # J
    .param p3, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 412
    iget-object v2, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunks:[Ljava/nio/ByteBuffer;

    iget v3, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunkShift:I

    ushr-long v4, p1, v3

    long-to-int v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 413
    .local v0, "b1":Ljava/nio/ByteBuffer;
    iget v2, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunkSizeModMask:I

    int-to-long v2, v2

    and-long/2addr v2, p1

    long-to-int v1, v2

    .line 415
    .local v1, "bufPos":I
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 416
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 417
    return-void
.end method

.method public putData(J[BII)V
    .locals 7
    .param p1, "offset"    # J
    .param p3, "src"    # [B
    .param p4, "srcPos"    # I
    .param p5, "srcSize"    # I

    .prologue
    .line 404
    iget-object v2, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunks:[Ljava/nio/ByteBuffer;

    iget v3, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunkShift:I

    ushr-long v4, p1, v3

    long-to-int v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 405
    .local v0, "b1":Ljava/nio/ByteBuffer;
    iget v2, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunkSizeModMask:I

    int-to-long v2, v2

    and-long/2addr v2, p1

    long-to-int v1, v2

    .line 407
    .local v1, "bufPos":I
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 408
    invoke-virtual {v0, p3, p4, p5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 409
    return-void
.end method

.method public final putInt(JI)V
    .locals 5
    .param p1, "offset"    # J
    .param p3, "value"    # I

    .prologue
    .line 393
    iget-object v0, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunks:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunkShift:I

    ushr-long v2, p1, v1

    long-to-int v1, v2

    aget-object v0, v0, v1

    iget v1, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunkSizeModMask:I

    int-to-long v2, v1

    and-long/2addr v2, p1

    long-to-int v1, v2

    invoke-virtual {v0, v1, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 394
    return-void
.end method

.method public final putLong(JJ)V
    .locals 5
    .param p1, "offset"    # J
    .param p3, "value"    # J

    .prologue
    .line 389
    iget-object v0, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunks:[Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunkShift:I

    ushr-long v2, p1, v1

    long-to-int v1, v2

    aget-object v0, v0, v1

    iget v1, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunkSizeModMask:I

    int-to-long v2, v1

    and-long/2addr v2, p1

    long-to-int v1, v2

    invoke-virtual {v0, v1, p3, p4}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 390
    return-void
.end method

.method public final tryAvailable(J)Z
    .locals 11
    .param p1, "offset"    # J

    .prologue
    const/4 v4, 0x1

    .line 354
    iget-boolean v5, p0, Lorg/mapdb/Volume$ByteBufferVol;->hasLimit:Z

    if-eqz v5, :cond_1

    iget-wide v6, p0, Lorg/mapdb/Volume$ByteBufferVol;->sizeLimit:J

    cmp-long v5, p1, v6

    if-lez v5, :cond_1

    const/4 v4, 0x0

    .line 383
    :cond_0
    :goto_0
    return v4

    .line 356
    :cond_1
    iget v5, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunkShift:I

    ushr-long v6, p1, v5

    long-to-int v0, v6

    .line 359
    .local v0, "chunkPos":I
    iget-object v5, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunks:[Ljava/nio/ByteBuffer;

    array-length v5, v5

    if-lt v0, v5, :cond_0

    .line 363
    iget-object v5, p0, Lorg/mapdb/Volume$ByteBufferVol;->growLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 366
    :try_start_0
    iget-object v5, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunks:[Ljava/nio/ByteBuffer;

    array-length v5, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v0, v5, :cond_2

    .line 381
    iget-object v5, p0, Lorg/mapdb/Volume$ByteBufferVol;->growLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 369
    :cond_2
    :try_start_1
    iget-object v5, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunks:[Ljava/nio/ByteBuffer;

    array-length v2, v5

    .line 370
    .local v2, "oldSize":I
    iget-object v1, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunks:[Ljava/nio/ByteBuffer;

    .line 372
    .local v1, "chunks2":[Ljava/nio/ByteBuffer;
    add-int/lit8 v5, v0, 0x1

    array-length v6, v1

    array-length v7, v1

    div-int/lit16 v7, v7, 0x3e8

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "chunks2":[Ljava/nio/ByteBuffer;
    check-cast v1, [Ljava/nio/ByteBuffer;

    .line 374
    .restart local v1    # "chunks2":[Ljava/nio/ByteBuffer;
    move v3, v2

    .local v3, "pos":I
    :goto_1
    array-length v5, v1

    if-ge v3, v5, :cond_3

    .line 375
    const-wide/16 v6, 0x1

    iget v5, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunkSize:I

    int-to-long v8, v5

    mul-long/2addr v6, v8

    int-to-long v8, v3

    mul-long/2addr v6, v8

    invoke-virtual {p0, v6, v7}, Lorg/mapdb/Volume$ByteBufferVol;->makeNewBuffer(J)Ljava/nio/ByteBuffer;

    move-result-object v5

    aput-object v5, v1, v3

    .line 374
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 379
    :cond_3
    iput-object v1, p0, Lorg/mapdb/Volume$ByteBufferVol;->chunks:[Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    iget-object v5, p0, Lorg/mapdb/Volume$ByteBufferVol;->growLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v1    # "chunks2":[Ljava/nio/ByteBuffer;
    .end local v2    # "oldSize":I
    .end local v3    # "pos":I
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/mapdb/Volume$ByteBufferVol;->growLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method protected unmap(Ljava/nio/MappedByteBuffer;)V
    .locals 10
    .param p1, "b"    # Ljava/nio/MappedByteBuffer;

    .prologue
    const/4 v9, 0x0

    .line 458
    :try_start_0
    sget-boolean v6, Lorg/mapdb/Volume$ByteBufferVol;->unmapHackSupported:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lorg/mapdb/Volume$ByteBufferVol;->asyncWriteEnabled:Z

    if-nez v6, :cond_0

    .line 462
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "cleaner"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 463
    .local v3, "cleanerMethod":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 464
    if-eqz v3, :cond_0

    .line 465
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 466
    .local v2, "cleaner":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 467
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "clean"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 468
    .local v4, "clearMethod":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_0

    .line 469
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .end local v2    # "cleaner":Ljava/lang/Object;
    .end local v3    # "cleanerMethod":Ljava/lang/reflect/Method;
    .end local v4    # "clearMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 473
    .restart local v2    # "cleaner":Ljava/lang/Object;
    .restart local v3    # "cleanerMethod":Ljava/lang/reflect/Method;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "attachment"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 474
    .local v1, "attMethod":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 475
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 476
    .local v0, "att":Ljava/lang/Object;
    instance-of v6, v0, Ljava/nio/MappedByteBuffer;

    if-eqz v6, :cond_0

    .line 477
    check-cast v0, Ljava/nio/MappedByteBuffer;

    .end local v0    # "att":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/mapdb/Volume$ByteBufferVol;->unmap(Ljava/nio/MappedByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 481
    .end local v1    # "attMethod":Ljava/lang/reflect/Method;
    .end local v2    # "cleaner":Ljava/lang/Object;
    .end local v3    # "cleanerMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v5

    .line 482
    .local v5, "e":Ljava/lang/Exception;
    sput-boolean v9, Lorg/mapdb/Volume$ByteBufferVol;->unmapHackSupported:Z

    goto :goto_0
.end method
