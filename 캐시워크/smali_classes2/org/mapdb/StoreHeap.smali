.class public Lorg/mapdb/StoreHeap;
.super Lorg/mapdb/Store;
.source "StoreHeap.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final NULL:Ljava/lang/Object;

.field protected static final TOMBSTONE:Lorg/mapdb/Fun$Tuple2;

.field private static final serialVersionUID:J = 0x2151f88b11dbe45L


# instance fields
.field protected final freeRecids:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final maxRecid:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final records:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/mapdb/Fun$Tuple2;",
            ">;"
        }
    .end annotation
.end field

.field protected final rollback:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/mapdb/Fun$Tuple2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    const-class v0, Lorg/mapdb/StoreHeap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/mapdb/StoreHeap;->$assertionsDisabled:Z

    .line 33
    invoke-static {v1, v1}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v0

    sput-object v0, Lorg/mapdb/StoreHeap;->TOMBSTONE:Lorg/mapdb/Fun$Tuple2;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/mapdb/StoreHeap;->NULL:Ljava/lang/Object;

    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x7

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0, v2, v2, v3, v2}, Lorg/mapdb/Store;-><init>(ZZ[BZ)V

    .line 39
    new-instance v2, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v2, p0, Lorg/mapdb/StoreHeap;->records:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 43
    new-instance v2, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v2, p0, Lorg/mapdb/StoreHeap;->rollback:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 48
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v2, p0, Lorg/mapdb/StoreHeap;->freeRecids:Ljava/util/Queue;

    .line 51
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lorg/mapdb/StoreHeap;->maxRecid:Ljava/util/concurrent/atomic/AtomicLong;

    .line 55
    const-wide/16 v0, 0x1

    .local v0, "recid":J
    :goto_0
    cmp-long v2, v0, v6

    if-gtz v2, :cond_0

    .line 56
    iget-object v4, p0, Lorg/mapdb/StoreHeap;->records:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v2, v3

    check-cast v2, Lorg/mapdb/Serializer;

    invoke-static {v3, v2}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/concurrent/ConcurrentNavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public calculateStatistics()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    return-object v0
.end method

.method public canRollback()Z
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x1

    return v0
.end method

.method public clearCache()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 170
    iget-object v2, p0, Lorg/mapdb/StoreHeap;->closeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 171
    .local v0, "closeListener":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 173
    .end local v0    # "closeListener":Ljava/lang/Runnable;
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/StoreHeap;->lockAllWrite()V

    .line 175
    :try_start_0
    iget-object v2, p0, Lorg/mapdb/StoreHeap;->records:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentNavigableMap;->clear()V

    .line 176
    iget-object v2, p0, Lorg/mapdb/StoreHeap;->freeRecids:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 177
    iget-object v2, p0, Lorg/mapdb/StoreHeap;->rollback:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentNavigableMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-virtual {p0}, Lorg/mapdb/StoreHeap;->unlockAllWrite()V

    .line 181
    return-void

    .line 179
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lorg/mapdb/StoreHeap;->unlockAllWrite()V

    throw v2
.end method

.method public commit()V
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lorg/mapdb/StoreHeap;->lockAllWrite()V

    .line 192
    :try_start_0
    iget-object v0, p0, Lorg/mapdb/StoreHeap;->rollback:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    invoke-virtual {p0}, Lorg/mapdb/StoreHeap;->unlockAllWrite()V

    .line 196
    return-void

    .line 194
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/mapdb/StoreHeap;->unlockAllWrite()V

    throw v0
.end method

.method public compact()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public compareAndSwap(JLjava/lang/Object;Ljava/lang/Object;Lorg/mapdb/Serializer;)Z
    .locals 7
    .param p1, "recid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(JTA;TA;",
            "Lorg/mapdb/Serializer",
            "<TA;>;)Z"
        }
    .end annotation

    .prologue
    .line 139
    .local p3, "expectedOldValue":Ljava/lang/Object;, "TA;"
    .local p4, "newValue":Ljava/lang/Object;, "TA;"
    .local p5, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    sget-boolean v3, Lorg/mapdb/StoreHeap;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-gtz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 140
    :cond_0
    if-nez p3, :cond_1

    sget-object p3, Lorg/mapdb/StoreHeap;->NULL:Ljava/lang/Object;

    .line 141
    :cond_1
    if-nez p4, :cond_2

    sget-object p4, Lorg/mapdb/StoreHeap;->NULL:Ljava/lang/Object;

    .line 142
    :cond_2
    iget-object v3, p0, Lorg/mapdb/StoreHeap;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {p1, p2}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 143
    .local v0, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 145
    :try_start_0
    invoke-static {p3, p5}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v1

    .line 146
    .local v1, "old":Lorg/mapdb/Fun$Tuple2;
    iget-object v3, p0, Lorg/mapdb/StoreHeap;->records:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p4, p5}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v5

    invoke-interface {v3, v4, v1, v5}, Ljava/util/concurrent/ConcurrentNavigableMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 147
    .local v2, "ret":Z
    if-eqz v2, :cond_3

    iget-object v3, p0, Lorg/mapdb/StoreHeap;->rollback:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v2

    .end local v1    # "old":Lorg/mapdb/Fun$Tuple2;
    .end local v2    # "ret":Z
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public delete(JLorg/mapdb/Serializer;)V
    .locals 5
    .param p1, "recid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(J",
            "Lorg/mapdb/Serializer",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    sget-boolean v2, Lorg/mapdb/StoreHeap;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 157
    :cond_0
    iget-object v2, p0, Lorg/mapdb/StoreHeap;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {p1, p2}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 158
    .local v0, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 160
    :try_start_0
    iget-object v2, p0, Lorg/mapdb/StoreHeap;->records:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentNavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapdb/Fun$Tuple2;

    .line 161
    .local v1, "t2":Lorg/mapdb/Fun$Tuple2;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/mapdb/StoreHeap;->rollback:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_1
    iget-object v2, p0, Lorg/mapdb/StoreHeap;->freeRecids:Ljava/util/Queue;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 166
    return-void

    .line 164
    .end local v1    # "t2":Lorg/mapdb/Fun$Tuple2;
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method public get(JLorg/mapdb/Serializer;)Ljava/lang/Object;
    .locals 5
    .param p1, "recid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(J",
            "Lorg/mapdb/Serializer",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 106
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    sget-boolean v2, Lorg/mapdb/StoreHeap;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 107
    :cond_0
    iget-object v2, p0, Lorg/mapdb/StoreHeap;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {p1, p2}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    .line 108
    .local v0, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 111
    :try_start_0
    iget-object v2, p0, Lorg/mapdb/StoreHeap;->records:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentNavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapdb/Fun$Tuple2;

    .line 112
    .local v1, "t":Lorg/mapdb/Fun$Tuple2;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lorg/mapdb/Fun$Tuple2;->a:Ljava/lang/Object;

    sget-object v3, Lorg/mapdb/StoreHeap;->NULL:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_2

    .line 113
    :cond_1
    const/4 v2, 0x0

    .line 116
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v2

    .line 114
    :cond_2
    :try_start_1
    iget-object v2, v1, Lorg/mapdb/Fun$Tuple2;->a:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v1    # "t":Lorg/mapdb/Fun$Tuple2;
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method public getCurrSize()J
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lorg/mapdb/StoreHeap;->records:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getFreeRecids()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lorg/mapdb/StoreHeap;->freeRecids:Ljava/util/Queue;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getFreeSize()J
    .locals 2

    .prologue
    .line 268
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMaxRecid()J
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lorg/mapdb/StoreHeap;->maxRecid:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRaw(J)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "recid"    # J

    .prologue
    .line 241
    iget-object v1, p0, Lorg/mapdb/StoreHeap;->records:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentNavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Fun$Tuple2;

    .line 242
    .local v0, "t":Lorg/mapdb/Fun$Tuple2;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/mapdb/Fun$Tuple2;->a:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 243
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, v0, Lorg/mapdb/Fun$Tuple2;->a:Ljava/lang/Object;

    iget-object v1, v0, Lorg/mapdb/Fun$Tuple2;->b:Ljava/lang/Object;

    check-cast v1, Lorg/mapdb/Serializer;

    invoke-virtual {p0, v2, v1}, Lorg/mapdb/StoreHeap;->serialize(Ljava/lang/Object;Lorg/mapdb/Serializer;)Lorg/mapdb/DataOutput2;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mapdb/DataOutput2;->copyBytes()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0
.end method

.method public getSizeLimit()J
    .locals 2

    .prologue
    .line 258
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public preallocate()J
    .locals 5

    .prologue
    .line 62
    iget-object v2, p0, Lorg/mapdb/StoreHeap;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    iget-object v4, p0, Lorg/mapdb/StoreHeap;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 63
    .local v0, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 65
    :try_start_0
    iget-object v2, p0, Lorg/mapdb/StoreHeap;->freeRecids:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 66
    .local v1, "recid":Ljava/lang/Long;
    if-nez v1, :cond_0

    iget-object v2, p0, Lorg/mapdb/StoreHeap;->maxRecid:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 67
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 69
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v2

    .end local v1    # "recid":Ljava/lang/Long;
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method public preallocate([J)V
    .locals 6
    .param p1, "recids"    # [J

    .prologue
    .line 75
    iget-object v3, p0, Lorg/mapdb/StoreHeap;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lorg/mapdb/StoreHeap;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    .line 76
    .local v1, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 79
    iget-object v3, p0, Lorg/mapdb/StoreHeap;->freeRecids:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 80
    .local v2, "recid":Ljava/lang/Long;
    if-nez v2, :cond_0

    iget-object v3, p0, Lorg/mapdb/StoreHeap;->maxRecid:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 81
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    .end local v2    # "recid":Ljava/lang/Long;
    :cond_1
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 86
    return-void

    .line 84
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;",
            "Lorg/mapdb/Serializer",
            "<TA;>;)J"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "value":Ljava/lang/Object;, "TA;"
    .local p2, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    if-nez p1, :cond_0

    sget-object p1, Lorg/mapdb/StoreHeap;->NULL:Ljava/lang/Object;

    .line 90
    :cond_0
    iget-object v2, p0, Lorg/mapdb/StoreHeap;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    iget-object v4, p0, Lorg/mapdb/StoreHeap;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 91
    .local v0, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 93
    :try_start_0
    iget-object v2, p0, Lorg/mapdb/StoreHeap;->freeRecids:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 94
    .local v1, "recid":Ljava/lang/Long;
    if-nez v1, :cond_1

    iget-object v2, p0, Lorg/mapdb/StoreHeap;->maxRecid:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 95
    :cond_1
    iget-object v2, p0, Lorg/mapdb/StoreHeap;->records:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {p1, p2}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/concurrent/ConcurrentNavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v2, p0, Lorg/mapdb/StoreHeap;->rollback:Ljava/util/concurrent/ConcurrentNavigableMap;

    sget-object v3, Lorg/mapdb/StoreHeap;->TOMBSTONE:Lorg/mapdb/Fun$Tuple2;

    invoke-static {v3, p2}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/concurrent/ConcurrentNavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-boolean v2, Lorg/mapdb/StoreHeap;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .end local v1    # "recid":Ljava/lang/Long;
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .line 98
    .restart local v1    # "recid":Ljava/lang/Long;
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 100
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v2
.end method

.method public rollback()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p0}, Lorg/mapdb/StoreHeap;->lockAllWrite()V

    .line 203
    :try_start_0
    iget-object v4, p0, Lorg/mapdb/StoreHeap;->rollback:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentNavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 204
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/mapdb/Fun$Tuple2;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 205
    .local v2, "recid":Ljava/lang/Long;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mapdb/Fun$Tuple2;

    .line 206
    .local v3, "val":Lorg/mapdb/Fun$Tuple2;
    sget-object v4, Lorg/mapdb/StoreHeap;->TOMBSTONE:Lorg/mapdb/Fun$Tuple2;

    if-ne v3, v4, :cond_0

    iget-object v4, p0, Lorg/mapdb/StoreHeap;->records:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v4, v2}, Ljava/util/concurrent/ConcurrentNavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 211
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/mapdb/Fun$Tuple2;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "recid":Ljava/lang/Long;
    .end local v3    # "val":Lorg/mapdb/Fun$Tuple2;
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lorg/mapdb/StoreHeap;->unlockAllWrite()V

    throw v4

    .line 207
    .restart local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/mapdb/Fun$Tuple2;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "recid":Ljava/lang/Long;
    .restart local v3    # "val":Lorg/mapdb/Fun$Tuple2;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lorg/mapdb/StoreHeap;->records:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v4, v2, v3}, Ljava/util/concurrent/ConcurrentNavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 209
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/mapdb/Fun$Tuple2;>;"
    .end local v2    # "recid":Ljava/lang/Long;
    .end local v3    # "val":Lorg/mapdb/Fun$Tuple2;
    :cond_1
    iget-object v4, p0, Lorg/mapdb/StoreHeap;->rollback:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentNavigableMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    invoke-virtual {p0}, Lorg/mapdb/StoreHeap;->unlockAllWrite()V

    .line 213
    return-void
.end method

.method public update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V
    .locals 7
    .param p1, "recid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(JTA;",
            "Lorg/mapdb/Serializer",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .local p3, "value":Ljava/lang/Object;, "TA;"
    .local p4, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    const-wide/16 v4, 0x0

    .line 122
    sget-boolean v2, Lorg/mapdb/StoreHeap;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    cmp-long v2, p1, v4

    if-gtz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 123
    :cond_0
    sget-boolean v2, Lorg/mapdb/StoreHeap;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p4, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 124
    :cond_1
    sget-boolean v2, Lorg/mapdb/StoreHeap;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    cmp-long v2, p1, v4

    if-gtz v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 125
    :cond_2
    if-nez p3, :cond_3

    sget-object p3, Lorg/mapdb/StoreHeap;->NULL:Ljava/lang/Object;

    .line 126
    :cond_3
    iget-object v2, p0, Lorg/mapdb/StoreHeap;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {p1, p2}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 127
    .local v0, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 129
    :try_start_0
    iget-object v2, p0, Lorg/mapdb/StoreHeap;->records:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p3, p4}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/concurrent/ConcurrentNavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapdb/Fun$Tuple2;

    .line 130
    .local v1, "old":Lorg/mapdb/Fun$Tuple2;
    if-eqz v1, :cond_4

    .line 131
    iget-object v2, p0, Lorg/mapdb/StoreHeap;->rollback:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :cond_4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 135
    return-void

    .line 133
    .end local v1    # "old":Lorg/mapdb/Fun$Tuple2;
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method public updateRaw(JLjava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "recid"    # J
    .param p3, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 253
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can not put raw data into StoreHeap"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
