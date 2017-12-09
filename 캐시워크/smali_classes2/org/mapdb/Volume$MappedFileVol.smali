.class public final Lorg/mapdb/Volume$MappedFileVol;
.super Lorg/mapdb/Volume$ByteBufferVol;
.source "Volume.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/Volume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MappedFileVol"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final file:Ljava/io/File;

.field protected final fileChannel:Ljava/nio/channels/FileChannel;

.field protected final mapMode:Ljava/nio/channels/FileChannel$MapMode;

.field protected final raf:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 504
    const-class v0, Lorg/mapdb/Volume;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/mapdb/Volume$MappedFileVol;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;ZJII)V
    .locals 11
    .param p1, "file"    # Ljava/io/File;
    .param p2, "readOnly"    # Z
    .param p3, "sizeLimit"    # J
    .param p5, "chunkShift"    # I
    .param p6, "sizeIncrement"    # I

    .prologue
    .line 512
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v9}, Lorg/mapdb/Volume$MappedFileVol;-><init>(Ljava/io/File;ZJIIZZ)V

    .line 513
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZJIIZ)V
    .locals 11
    .param p1, "file"    # Ljava/io/File;
    .param p2, "readOnly"    # Z
    .param p3, "sizeLimit"    # J
    .param p5, "chunkShift"    # I
    .param p6, "sizeIncrement"    # I
    .param p7, "asyncWriteEnabled"    # Z

    .prologue
    .line 518
    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lorg/mapdb/Volume$MappedFileVol;-><init>(Ljava/io/File;ZJIIZZ)V

    .line 519
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZJIIZZ)V
    .locals 13
    .param p1, "file"    # Ljava/io/File;
    .param p2, "readOnly"    # Z
    .param p3, "sizeLimit"    # J
    .param p5, "chunkShift"    # I
    .param p6, "sizeIncrement"    # I
    .param p7, "asyncWriteEnabled"    # Z
    .param p8, "cleanerHackDisable"    # Z

    .prologue
    .line 522
    move-object v2, p0

    move v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lorg/mapdb/Volume$ByteBufferVol;-><init>(ZJIZ)V

    .line 523
    iput-object p1, p0, Lorg/mapdb/Volume$MappedFileVol;->file:Ljava/io/File;

    .line 524
    if-eqz p2, :cond_0

    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    :goto_0
    iput-object v2, p0, Lorg/mapdb/Volume$MappedFileVol;->mapMode:Ljava/nio/channels/FileChannel$MapMode;

    .line 525
    move/from16 v0, p8

    iput-boolean v0, p0, Lorg/mapdb/Volume$MappedFileVol;->cleanerHackDisabled:Z

    .line 527
    :try_start_0
    invoke-static {p1, p2}, Lorg/mapdb/Volume$FileChannelVol;->checkFolder(Ljava/io/File;Z)V

    .line 528
    new-instance v3, Ljava/io/RandomAccessFile;

    if-eqz p2, :cond_1

    const-string v2, "r"

    :goto_1
    invoke-direct {v3, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/mapdb/Volume$MappedFileVol;->raf:Ljava/io/RandomAccessFile;

    .line 529
    iget-object v2, p0, Lorg/mapdb/Volume$MappedFileVol;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    iput-object v2, p0, Lorg/mapdb/Volume$MappedFileVol;->fileChannel:Ljava/nio/channels/FileChannel;

    .line 531
    iget-object v2, p0, Lorg/mapdb/Volume$MappedFileVol;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v10

    .line 532
    .local v10, "fileSize":J
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-lez v2, :cond_2

    .line 534
    iget v2, p0, Lorg/mapdb/Volume$MappedFileVol;->chunkSize:I

    int-to-long v2, v2

    invoke-static {v10, v11, v2, v3}, Lorg/mapdb/Fun;->roundUp(JJ)J

    move-result-wide v2

    ushr-long v2, v2, p5

    long-to-int v8, v2

    .line 535
    .local v8, "chunksSize":I
    new-array v2, v8, [Ljava/nio/ByteBuffer;

    iput-object v2, p0, Lorg/mapdb/Volume$MappedFileVol;->chunks:[Ljava/nio/ByteBuffer;

    .line 536
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    iget-object v2, p0, Lorg/mapdb/Volume$MappedFileVol;->chunks:[Ljava/nio/ByteBuffer;

    array-length v2, v2

    if-ge v12, v2, :cond_3

    .line 537
    iget-object v2, p0, Lorg/mapdb/Volume$MappedFileVol;->chunks:[Ljava/nio/ByteBuffer;

    const-wide/16 v4, 0x1

    int-to-long v6, v12

    mul-long/2addr v4, v6

    iget v3, p0, Lorg/mapdb/Volume$MappedFileVol;->chunkSize:I

    int-to-long v6, v3

    mul-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lorg/mapdb/Volume$MappedFileVol;->makeNewBuffer(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, v2, v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 524
    .end local v8    # "chunksSize":I
    .end local v10    # "fileSize":J
    .end local v12    # "i":I
    :cond_0
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    goto :goto_0

    .line 528
    :cond_1
    :try_start_1
    const-string v2, "rw"

    goto :goto_1

    .line 540
    .restart local v10    # "fileSize":J
    :cond_2
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/ByteBuffer;

    iput-object v2, p0, Lorg/mapdb/Volume$MappedFileVol;->chunks:[Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 545
    :cond_3
    return-void

    .line 542
    .end local v10    # "fileSize":J
    :catch_0
    move-exception v9

    .line 543
    .local v9, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/IOError;

    invoke-direct {v2, v9}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 7

    .prologue
    .line 549
    iget-object v5, p0, Lorg/mapdb/Volume$MappedFileVol;->growLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 551
    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, p0, Lorg/mapdb/Volume$MappedFileVol;->closed:Z

    .line 552
    iget-object v5, p0, Lorg/mapdb/Volume$MappedFileVol;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 553
    iget-object v5, p0, Lorg/mapdb/Volume$MappedFileVol;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 559
    iget-boolean v5, p0, Lorg/mapdb/Volume$MappedFileVol;->cleanerHackDisabled:Z

    if-nez v5, :cond_1

    .line 560
    iget-object v0, p0, Lorg/mapdb/Volume$MappedFileVol;->chunks:[Ljava/nio/ByteBuffer;

    .local v0, "arr$":[Ljava/nio/ByteBuffer;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 561
    .local v1, "b":Ljava/nio/ByteBuffer;
    if-eqz v1, :cond_0

    instance-of v5, v1, Ljava/nio/MappedByteBuffer;

    if-eqz v5, :cond_0

    .line 562
    check-cast v1, Ljava/nio/MappedByteBuffer;

    .end local v1    # "b":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v1}, Lorg/mapdb/Volume$MappedFileVol;->unmap(Ljava/nio/MappedByteBuffer;)V

    .line 560
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 567
    .end local v0    # "arr$":[Ljava/nio/ByteBuffer;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/mapdb/Volume$MappedFileVol;->chunks:[Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    iget-object v5, p0, Lorg/mapdb/Volume$MappedFileVol;->growLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 575
    return-void

    .line 569
    :catch_0
    move-exception v2

    .line 570
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v5, Ljava/io/IOError;

    invoke-direct {v5, v2}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 572
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lorg/mapdb/Volume$MappedFileVol;->growLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public deleteFile()V
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lorg/mapdb/Volume$MappedFileVol;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 640
    return-void
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lorg/mapdb/Volume$MappedFileVol;->file:Ljava/io/File;

    return-object v0
.end method

.method protected makeNewBuffer(J)Ljava/nio/ByteBuffer;
    .locals 13
    .param p1, "offset"    # J

    .prologue
    .line 598
    :try_start_0
    sget-boolean v0, Lorg/mapdb/Volume$MappedFileVol;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/mapdb/Volume$MappedFileVol;->chunkSizeModMask:I

    int-to-long v0, v0

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    :catch_0
    move-exception v7

    .line 632
    .local v7, "e":Ljava/io/IOException;
    new-instance v0, Ljava/io/IOError;

    invoke-direct {v0, v7}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 599
    .end local v7    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_1
    sget-boolean v0, Lorg/mapdb/Volume$MappedFileVol;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 602
    :cond_1
    iget-boolean v0, p0, Lorg/mapdb/Volume$MappedFileVol;->readOnly:Z

    if-nez v0, :cond_4

    .line 604
    iget-object v0, p0, Lorg/mapdb/Volume$MappedFileVol;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    .line 606
    .local v8, "fileSize":J
    const-wide/16 v0, 0x1

    add-long/2addr v0, p1

    iget v2, p0, Lorg/mapdb/Volume$MappedFileVol;->chunkSize:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/mapdb/Fun;->roundUp(JJ)J

    move-result-wide v10

    .line 609
    .local v10, "lastMappedOffset":J
    iget v0, p0, Lorg/mapdb/Volume$MappedFileVol;->chunkSize:I

    int-to-long v0, v0

    invoke-static {v8, v9, v0, v1}, Lorg/mapdb/Fun;->roundUp(JJ)J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-gez v0, :cond_4

    .line 612
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 613
    .local v6, "b":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_2

    .line 614
    iget-object v0, p0, Lorg/mapdb/Volume$MappedFileVol;->fileChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v2, 0x1

    sub-long v2, v10, v2

    invoke-virtual {v0, v6, v2, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    goto :goto_0

    .line 618
    :cond_2
    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 619
    :goto_1
    const-wide/16 v0, 0x400

    add-long/2addr v0, v8

    cmp-long v0, v0, v10

    if-gez v0, :cond_4

    .line 621
    :goto_2
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_3

    .line 622
    iget-object v0, p0, Lorg/mapdb/Volume$MappedFileVol;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    int-to-long v2, v1

    add-long/2addr v2, v8

    invoke-virtual {v0, v6, v2, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    goto :goto_2

    .line 624
    :cond_3
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 619
    const-wide/16 v0, 0x400

    add-long/2addr v8, v0

    goto :goto_1

    .line 629
    .end local v6    # "b":Ljava/nio/ByteBuffer;
    .end local v8    # "fileSize":J
    .end local v10    # "lastMappedOffset":J
    :cond_4
    iget-object v0, p0, Lorg/mapdb/Volume$MappedFileVol;->fileChannel:Ljava/nio/channels/FileChannel;

    iget-object v1, p0, Lorg/mapdb/Volume$MappedFileVol;->mapMode:Ljava/nio/channels/FileChannel$MapMode;

    iget v2, p0, Lorg/mapdb/Volume$MappedFileVol;->chunkSize:I

    int-to-long v4, v2

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    .line 630
    .local v12, "ret":Ljava/nio/ByteBuffer;
    return-object v12
.end method

.method public sync()V
    .locals 8

    .prologue
    .line 579
    iget-boolean v6, p0, Lorg/mapdb/Volume$MappedFileVol;->readOnly:Z

    if-eqz v6, :cond_0

    .line 593
    :goto_0
    return-void

    .line 580
    :cond_0
    iget-object v6, p0, Lorg/mapdb/Volume$MappedFileVol;->growLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 582
    :try_start_0
    iget-object v1, p0, Lorg/mapdb/Volume$MappedFileVol;->chunks:[Ljava/nio/ByteBuffer;

    .local v1, "arr$":[Ljava/nio/ByteBuffer;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v2, v1, v4

    .line 583
    .local v2, "b":Ljava/nio/ByteBuffer;
    if-eqz v2, :cond_1

    instance-of v6, v2, Ljava/nio/MappedByteBuffer;

    if-eqz v6, :cond_1

    .line 584
    move-object v0, v2

    check-cast v0, Ljava/nio/MappedByteBuffer;

    move-object v3, v0

    .line 585
    .local v3, "bb":Ljava/nio/MappedByteBuffer;
    invoke-virtual {v3}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    .end local v3    # "bb":Ljava/nio/MappedByteBuffer;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 590
    .end local v2    # "b":Ljava/nio/ByteBuffer;
    :cond_2
    iget-object v6, p0, Lorg/mapdb/Volume$MappedFileVol;->growLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v1    # "arr$":[Ljava/nio/ByteBuffer;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lorg/mapdb/Volume$MappedFileVol;->growLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6
.end method

.method public truncate(J)V
    .locals 13
    .param p1, "size"    # J

    .prologue
    const-wide/16 v10, 0x1

    .line 650
    iget v5, p0, Lorg/mapdb/Volume$MappedFileVol;->chunkShift:I

    ushr-long v6, p1, v5

    long-to-int v5, v6

    add-int/lit8 v2, v5, 0x1

    .line 651
    .local v2, "maxSize":I
    iget-object v5, p0, Lorg/mapdb/Volume$MappedFileVol;->chunks:[Ljava/nio/ByteBuffer;

    array-length v5, v5

    if-ne v2, v5, :cond_0

    .line 696
    :goto_0
    return-void

    .line 653
    :cond_0
    iget-object v5, p0, Lorg/mapdb/Volume$MappedFileVol;->chunks:[Ljava/nio/ByteBuffer;

    array-length v5, v5

    if-le v2, v5, :cond_1

    .line 654
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/Volume$MappedFileVol;->ensureAvailable(J)V

    goto :goto_0

    .line 657
    :cond_1
    iget-object v5, p0, Lorg/mapdb/Volume$MappedFileVol;->growLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 659
    :try_start_0
    iget-object v5, p0, Lorg/mapdb/Volume$MappedFileVol;->chunks:[Ljava/nio/ByteBuffer;

    array-length v5, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v5, :cond_2

    .line 694
    iget-object v5, p0, Lorg/mapdb/Volume$MappedFileVol;->growLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 661
    :cond_2
    :try_start_1
    iget-object v3, p0, Lorg/mapdb/Volume$MappedFileVol;->chunks:[Ljava/nio/ByteBuffer;

    .line 662
    .local v3, "old":[Ljava/nio/ByteBuffer;
    iget-object v5, p0, Lorg/mapdb/Volume$MappedFileVol;->chunks:[Ljava/nio/ByteBuffer;

    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/nio/ByteBuffer;

    iput-object v5, p0, Lorg/mapdb/Volume$MappedFileVol;->chunks:[Ljava/nio/ByteBuffer;

    .line 665
    move v1, v2

    .local v1, "i":I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_4

    .line 666
    iget-boolean v5, p0, Lorg/mapdb/Volume$MappedFileVol;->cleanerHackDisabled:Z

    if-nez v5, :cond_3

    .line 667
    aget-object v5, v3, v1

    check-cast v5, Ljava/nio/MappedByteBuffer;

    invoke-virtual {p0, v5}, Lorg/mapdb/Volume$MappedFileVol;->unmap(Ljava/nio/MappedByteBuffer;)V

    .line 669
    :cond_3
    const/4 v5, 0x0

    aput-object v5, v3, v1

    .line 665
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 672
    :cond_4
    invoke-static {}, Lorg/mapdb/Volume$ByteBufferVol;->access$000()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 673
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_6

    .line 674
    iget-boolean v5, p0, Lorg/mapdb/Volume$MappedFileVol;->cleanerHackDisabled:Z

    if-nez v5, :cond_5

    .line 675
    aget-object v5, v3, v1

    check-cast v5, Ljava/nio/MappedByteBuffer;

    invoke-virtual {p0, v5}, Lorg/mapdb/Volume$MappedFileVol;->unmap(Ljava/nio/MappedByteBuffer;)V

    .line 677
    :cond_5
    const/4 v5, 0x0

    aput-object v5, v3, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 673
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 682
    :cond_6
    :try_start_2
    iget-object v5, p0, Lorg/mapdb/Volume$MappedFileVol;->fileChannel:Ljava/nio/channels/FileChannel;

    iget v6, p0, Lorg/mapdb/Volume$MappedFileVol;->chunkSize:I

    int-to-long v6, v6

    mul-long/2addr v6, v10

    int-to-long v8, v2

    mul-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 687
    :try_start_3
    invoke-static {}, Lorg/mapdb/Volume$ByteBufferVol;->access$000()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 688
    const/4 v4, 0x0

    .local v4, "pos":I
    :goto_3
    if-ge v4, v2, :cond_7

    .line 689
    iget-object v5, p0, Lorg/mapdb/Volume$MappedFileVol;->chunks:[Ljava/nio/ByteBuffer;

    iget v6, p0, Lorg/mapdb/Volume$MappedFileVol;->chunkSize:I

    int-to-long v6, v6

    mul-long/2addr v6, v10

    int-to-long v8, v4

    mul-long/2addr v6, v8

    invoke-virtual {p0, v6, v7}, Lorg/mapdb/Volume$MappedFileVol;->makeNewBuffer(J)Ljava/nio/ByteBuffer;

    move-result-object v6

    aput-object v6, v5, v4

    .line 688
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 683
    .end local v4    # "pos":I
    :catch_0
    move-exception v0

    .line 684
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/io/IOError;

    invoke-direct {v5, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 694
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "i":I
    .end local v3    # "old":[Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lorg/mapdb/Volume$MappedFileVol;->growLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5

    .restart local v1    # "i":I
    .restart local v3    # "old":[Ljava/nio/ByteBuffer;
    :cond_7
    iget-object v5, p0, Lorg/mapdb/Volume$MappedFileVol;->growLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0
.end method
