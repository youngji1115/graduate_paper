.class public final Lorg/mapdb/Volume$MemoryVol;
.super Lorg/mapdb/Volume$ByteBufferVol;
.source "Volume.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/Volume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MemoryVol"
.end annotation


# instance fields
.field protected final useDirectBuffer:Z


# direct methods
.method public constructor <init>(ZJI)V
    .locals 2
    .param p1, "useDirectBuffer"    # Z
    .param p2, "sizeLimit"    # J
    .param p4, "chunkShift"    # I

    .prologue
    .line 709
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/mapdb/Volume$ByteBufferVol;-><init>(ZJI)V

    .line 710
    iput-boolean p1, p0, Lorg/mapdb/Volume$MemoryVol;->useDirectBuffer:Z

    .line 711
    return-void
.end method


# virtual methods
.method public close()V
    .locals 6

    .prologue
    .line 750
    iget-object v4, p0, Lorg/mapdb/Volume$MemoryVol;->growLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 752
    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Lorg/mapdb/Volume$MemoryVol;->closed:Z

    .line 753
    iget-boolean v4, p0, Lorg/mapdb/Volume$MemoryVol;->cleanerHackDisabled:Z

    if-nez v4, :cond_1

    .line 754
    iget-object v0, p0, Lorg/mapdb/Volume$MemoryVol;->chunks:[Ljava/nio/ByteBuffer;

    .local v0, "arr$":[Ljava/nio/ByteBuffer;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 755
    .local v1, "b":Ljava/nio/ByteBuffer;
    if-eqz v1, :cond_0

    instance-of v4, v1, Ljava/nio/MappedByteBuffer;

    if-eqz v4, :cond_0

    .line 756
    check-cast v1, Ljava/nio/MappedByteBuffer;

    .end local v1    # "b":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v1}, Lorg/mapdb/Volume$MemoryVol;->unmap(Ljava/nio/MappedByteBuffer;)V

    .line 754
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 760
    .end local v0    # "arr$":[Ljava/nio/ByteBuffer;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/mapdb/Volume$MemoryVol;->chunks:[Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    iget-object v4, p0, Lorg/mapdb/Volume$MemoryVol;->growLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 764
    return-void

    .line 762
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/mapdb/Volume$MemoryVol;->growLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public deleteFile()V
    .locals 0

    .prologue
    .line 768
    return-void
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 772
    const/4 v0, 0x0

    return-object v0
.end method

.method protected makeNewBuffer(J)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "offset"    # J

    .prologue
    .line 715
    iget-boolean v0, p0, Lorg/mapdb/Volume$MemoryVol;->useDirectBuffer:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/mapdb/Volume$MemoryVol;->chunkSize:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/mapdb/Volume$MemoryVol;->chunkSize:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public sync()V
    .locals 0

    .prologue
    .line 766
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",direct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/mapdb/Volume$MemoryVol;->useDirectBuffer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncate(J)V
    .locals 7
    .param p1, "size"    # J

    .prologue
    .line 723
    iget v3, p0, Lorg/mapdb/Volume$MemoryVol;->chunkShift:I

    ushr-long v4, p1, v3

    long-to-int v3, v4

    add-int/lit8 v1, v3, 0x1

    .line 724
    .local v1, "maxSize":I
    iget-object v3, p0, Lorg/mapdb/Volume$MemoryVol;->chunks:[Ljava/nio/ByteBuffer;

    array-length v3, v3

    if-ne v1, v3, :cond_0

    .line 747
    :goto_0
    return-void

    .line 726
    :cond_0
    iget-object v3, p0, Lorg/mapdb/Volume$MemoryVol;->chunks:[Ljava/nio/ByteBuffer;

    array-length v3, v3

    if-le v1, v3, :cond_1

    .line 727
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/Volume$MemoryVol;->ensureAvailable(J)V

    goto :goto_0

    .line 730
    :cond_1
    iget-object v3, p0, Lorg/mapdb/Volume$MemoryVol;->growLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 732
    :try_start_0
    iget-object v3, p0, Lorg/mapdb/Volume$MemoryVol;->chunks:[Ljava/nio/ByteBuffer;

    array-length v3, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v3, :cond_2

    .line 745
    iget-object v3, p0, Lorg/mapdb/Volume$MemoryVol;->growLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 734
    :cond_2
    :try_start_1
    iget-object v2, p0, Lorg/mapdb/Volume$MemoryVol;->chunks:[Ljava/nio/ByteBuffer;

    .line 735
    .local v2, "old":[Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lorg/mapdb/Volume$MemoryVol;->chunks:[Ljava/nio/ByteBuffer;

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/nio/ByteBuffer;

    iput-object v3, p0, Lorg/mapdb/Volume$MemoryVol;->chunks:[Ljava/nio/ByteBuffer;

    .line 738
    move v0, v1

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 739
    iget-boolean v3, p0, Lorg/mapdb/Volume$MemoryVol;->cleanerHackDisabled:Z

    if-nez v3, :cond_3

    aget-object v3, v2, v0

    instance-of v3, v3, Ljava/nio/MappedByteBuffer;

    if-eqz v3, :cond_3

    .line 740
    aget-object v3, v2, v0

    check-cast v3, Ljava/nio/MappedByteBuffer;

    invoke-virtual {p0, v3}, Lorg/mapdb/Volume$MemoryVol;->unmap(Ljava/nio/MappedByteBuffer;)V

    .line 741
    :cond_3
    const/4 v3, 0x0

    aput-object v3, v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 738
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 745
    :cond_4
    iget-object v3, p0, Lorg/mapdb/Volume$MemoryVol;->growLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0    # "i":I
    .end local v2    # "old":[Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/mapdb/Volume$MemoryVol;->growLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method
