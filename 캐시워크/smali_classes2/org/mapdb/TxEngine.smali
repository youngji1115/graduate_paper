.class public Lorg/mapdb/TxEngine;
.super Lorg/mapdb/EngineWrapper;
.source "TxEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapdb/TxEngine$Tx;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final TOMBSTONE:Ljava/lang/Object;


# instance fields
.field protected final PREALLOC_RECID_SIZE:I

.field protected final commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field protected final fullTx:Z

.field protected final locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field protected final preallocRecids:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected txQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lorg/mapdb/TxEngine$Tx;",
            ">;"
        }
    .end annotation
.end field

.field protected txs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ref/Reference",
            "<",
            "Lorg/mapdb/TxEngine$Tx;",
            ">;>;"
        }
    .end annotation
.end field

.field protected volatile uncommitedData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/mapdb/TxEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/mapdb/TxEngine;->$assertionsDisabled:Z

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/mapdb/TxEngine;->TOMBSTONE:Ljava/lang/Object;

    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/mapdb/Engine;Z)V
    .locals 5
    .param p1, "engine"    # Lorg/mapdb/Engine;
    .param p2, "fullTx"    # Z

    .prologue
    const/16 v4, 0x80

    const/4 v3, 0x0

    .line 59
    invoke-direct {p0, p1}, Lorg/mapdb/EngineWrapper;-><init>(Lorg/mapdb/Engine;)V

    .line 40
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1, v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v1, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 41
    new-array v1, v4, [Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    iput-object v1, p0, Lorg/mapdb/TxEngine;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/mapdb/TxEngine;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/mapdb/TxEngine;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v2, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v2, v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    iput-boolean v3, p0, Lorg/mapdb/TxEngine;->uncommitedData:Z

    .line 49
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lorg/mapdb/TxEngine;->txs:Ljava/util/Set;

    .line 50
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v1, p0, Lorg/mapdb/TxEngine;->txQueue:Ljava/lang/ref/ReferenceQueue;

    .line 56
    iput v4, p0, Lorg/mapdb/TxEngine;->PREALLOC_RECID_SIZE:I

    .line 60
    iput-boolean p2, p0, Lorg/mapdb/TxEngine;->fullTx:Z

    .line 61
    if-eqz p2, :cond_1

    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v1, v4}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    :goto_1
    iput-object v1, p0, Lorg/mapdb/TxEngine;->preallocRecids:Ljava/util/Queue;

    .line 62
    return-void

    .line 61
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static createSnapshotFor(Lorg/mapdb/Engine;)Lorg/mapdb/Engine;
    .locals 2
    .param p0, "engine"    # Lorg/mapdb/Engine;

    .prologue
    .line 82
    invoke-interface {p0}, Lorg/mapdb/Engine;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    .end local p0    # "engine":Lorg/mapdb/Engine;
    :goto_0
    return-object p0

    .line 84
    .restart local p0    # "engine":Lorg/mapdb/Engine;
    :cond_0
    instance-of v0, p0, Lorg/mapdb/TxEngine;

    if-eqz v0, :cond_1

    .line 85
    check-cast p0, Lorg/mapdb/TxEngine;

    .end local p0    # "engine":Lorg/mapdb/Engine;
    invoke-virtual {p0}, Lorg/mapdb/TxEngine;->snapshot()Lorg/mapdb/Engine;

    move-result-object p0

    goto :goto_0

    .line 86
    .restart local p0    # "engine":Lorg/mapdb/Engine;
    :cond_1
    instance-of v0, p0, Lorg/mapdb/EngineWrapper;

    if-eqz v0, :cond_2

    .line 87
    check-cast p0, Lorg/mapdb/EngineWrapper;

    .end local p0    # "engine":Lorg/mapdb/Engine;
    invoke-virtual {p0}, Lorg/mapdb/EngineWrapper;->getWrappedEngine()Lorg/mapdb/Engine;

    move-result-object v0

    invoke-static {v0}, Lorg/mapdb/TxEngine;->createSnapshotFor(Lorg/mapdb/Engine;)Lorg/mapdb/Engine;

    move-result-object p0

    goto :goto_0

    .line 88
    .restart local p0    # "engine":Lorg/mapdb/Engine;
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Snapshots are not enabled, use DBMaker.snapshotEnable()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public canSnapshot()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method protected cleanTxQueue()V
    .locals 2

    .prologue
    .line 110
    sget-boolean v1, Lorg/mapdb/TxEngine;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 111
    :cond_0
    iget-object v1, p0, Lorg/mapdb/TxEngine;->txQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .local v0, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+Lorg/mapdb/TxEngine$Tx;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 112
    iget-object v1, p0, Lorg/mapdb/TxEngine;->txs:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 111
    iget-object v1, p0, Lorg/mapdb/TxEngine;->txQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_1
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 275
    :try_start_0
    invoke-super {p0}, Lorg/mapdb/EngineWrapper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    iget-object v0, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 280
    return-void

    .line 277
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public commit()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 286
    :try_start_0
    invoke-virtual {p0}, Lorg/mapdb/TxEngine;->cleanTxQueue()V

    .line 287
    invoke-super {p0}, Lorg/mapdb/EngineWrapper;->commit()V

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mapdb/TxEngine;->uncommitedData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    iget-object v0, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 293
    return-void

    .line 290
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
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
    .line 224
    .local p3, "expectedOldValue":Ljava/lang/Object;, "TA;"
    .local p4, "newValue":Ljava/lang/Object;, "TA;"
    .local p5, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    iget-object v5, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 226
    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, p0, Lorg/mapdb/TxEngine;->uncommitedData:Z

    .line 227
    iget-object v5, p0, Lorg/mapdb/TxEngine;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {p1, p2}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    .line 228
    .local v1, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 230
    :try_start_1
    invoke-super/range {p0 .. p5}, Lorg/mapdb/EngineWrapper;->compareAndSwap(JLjava/lang/Object;Ljava/lang/Object;Lorg/mapdb/Serializer;)Z

    move-result v2

    .line 231
    .local v2, "ret":Z
    if-eqz v2, :cond_1

    .line 232
    iget-object v5, p0, Lorg/mapdb/TxEngine;->txs:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/Reference;

    .line 233
    .local v4, "txr":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lorg/mapdb/TxEngine$Tx;>;"
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mapdb/TxEngine$Tx;

    .line 234
    .local v3, "tx":Lorg/mapdb/TxEngine$Tx;
    if-eqz v3, :cond_0

    .line 235
    iget-object v5, v3, Lorg/mapdb/TxEngine$Tx;->old:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v5, p1, p2, p3}, Lorg/mapdb/LongConcurrentHashMap;->putIfAbsent(JLjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 240
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "ret":Z
    .end local v3    # "tx":Lorg/mapdb/TxEngine$Tx;
    .end local v4    # "txr":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lorg/mapdb/TxEngine$Tx;>;"
    :catchall_0
    move-exception v5

    :try_start_2
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 243
    .end local v1    # "lock":Ljava/util/concurrent/locks/Lock;
    :catchall_1
    move-exception v5

    iget-object v6, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v5

    .line 240
    .restart local v1    # "lock":Ljava/util/concurrent/locks/Lock;
    .restart local v2    # "ret":Z
    :cond_1
    :try_start_3
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 243
    iget-object v5, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v2
.end method

.method public delete(JLorg/mapdb/Serializer;)V
    .locals 7
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
    .line 250
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    iget-object v5, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 252
    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, p0, Lorg/mapdb/TxEngine;->uncommitedData:Z

    .line 253
    iget-object v5, p0, Lorg/mapdb/TxEngine;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {p1, p2}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    .line 254
    .local v1, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 256
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/mapdb/TxEngine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v2

    .line 257
    .local v2, "old":Ljava/lang/Object;
    iget-object v5, p0, Lorg/mapdb/TxEngine;->txs:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/Reference;

    .line 258
    .local v4, "txr":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lorg/mapdb/TxEngine$Tx;>;"
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mapdb/TxEngine$Tx;

    .line 259
    .local v3, "tx":Lorg/mapdb/TxEngine$Tx;
    if-eqz v3, :cond_0

    .line 260
    iget-object v5, v3, Lorg/mapdb/TxEngine$Tx;->old:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v5, p1, p2, v2}, Lorg/mapdb/LongConcurrentHashMap;->putIfAbsent(JLjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 264
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "old":Ljava/lang/Object;
    .end local v3    # "tx":Lorg/mapdb/TxEngine$Tx;
    .end local v4    # "txr":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lorg/mapdb/TxEngine$Tx;>;"
    :catchall_0
    move-exception v5

    :try_start_2
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 267
    .end local v1    # "lock":Ljava/util/concurrent/locks/Lock;
    :catchall_1
    move-exception v5

    iget-object v6, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v5

    .line 262
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "lock":Ljava/util/concurrent/locks/Lock;
    .restart local v2    # "old":Ljava/lang/Object;
    :cond_1
    :try_start_3
    invoke-super {p0, p1, p2, p3}, Lorg/mapdb/EngineWrapper;->delete(JLorg/mapdb/Serializer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 264
    :try_start_4
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 267
    iget-object v5, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 269
    return-void
.end method

.method public get(JLorg/mapdb/Serializer;)Ljava/lang/Object;
    .locals 3
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
    .line 190
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    iget-object v0, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 192
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lorg/mapdb/EngineWrapper;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 194
    iget-object v1, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method protected preallocRecidTake()Ljava/lang/Long;
    .locals 6

    .prologue
    .line 65
    sget-boolean v3, Lorg/mapdb/TxEngine;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLockedByCurrentThread()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 66
    :cond_0
    iget-object v3, p0, Lorg/mapdb/TxEngine;->preallocRecids:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 67
    .local v1, "recid":Ljava/lang/Long;
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 78
    .end local v1    # "recid":Ljava/lang/Long;
    .local v2, "recid":Ljava/lang/Long;
    :goto_0
    return-object v2

    .line 69
    .end local v2    # "recid":Ljava/lang/Long;
    .restart local v1    # "recid":Ljava/lang/Long;
    :cond_1
    iget-boolean v3, p0, Lorg/mapdb/TxEngine;->uncommitedData:Z

    if-eqz v3, :cond_2

    .line 70
    new-instance v3, Ljava/lang/IllegalAccessError;

    const-string v4, "uncommited data"

    invoke-direct {v3, v4}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 72
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v3, 0x80

    if-ge v0, v3, :cond_3

    .line 73
    iget-object v3, p0, Lorg/mapdb/TxEngine;->preallocRecids:Ljava/util/Queue;

    invoke-super {p0}, Lorg/mapdb/EngineWrapper;->preallocate()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    :cond_3
    invoke-super {p0}, Lorg/mapdb/EngineWrapper;->preallocate()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 76
    invoke-super {p0}, Lorg/mapdb/EngineWrapper;->commit()V

    .line 77
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/mapdb/TxEngine;->uncommitedData:Z

    move-object v2, v1

    .line 78
    .end local v1    # "recid":Ljava/lang/Long;
    .restart local v2    # "recid":Ljava/lang/Long;
    goto :goto_0
.end method

.method public preallocate()J
    .locals 8

    .prologue
    .line 118
    iget-object v6, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 120
    const/4 v6, 0x1

    :try_start_0
    iput-boolean v6, p0, Lorg/mapdb/TxEngine;->uncommitedData:Z

    .line 121
    invoke-super {p0}, Lorg/mapdb/EngineWrapper;->preallocate()J

    move-result-wide v2

    .line 122
    .local v2, "recid":J
    iget-object v6, p0, Lorg/mapdb/TxEngine;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {v2, v3}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    .line 123
    .local v1, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 125
    :try_start_1
    iget-object v6, p0, Lorg/mapdb/TxEngine;->txs:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/Reference;

    .line 126
    .local v5, "txr":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lorg/mapdb/TxEngine$Tx;>;"
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mapdb/TxEngine$Tx;

    .line 127
    .local v4, "tx":Lorg/mapdb/TxEngine$Tx;
    if-eqz v4, :cond_0

    .line 128
    iget-object v6, v4, Lorg/mapdb/TxEngine$Tx;->old:Lorg/mapdb/LongConcurrentHashMap;

    sget-object v7, Lorg/mapdb/TxEngine;->TOMBSTONE:Ljava/lang/Object;

    invoke-virtual {v6, v2, v3, v7}, Lorg/mapdb/LongConcurrentHashMap;->putIfAbsent(JLjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 131
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "tx":Lorg/mapdb/TxEngine$Tx;
    .end local v5    # "txr":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lorg/mapdb/TxEngine$Tx;>;"
    :catchall_0
    move-exception v6

    :try_start_2
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 135
    .end local v1    # "lock":Ljava/util/concurrent/locks/Lock;
    .end local v2    # "recid":J
    :catchall_1
    move-exception v6

    iget-object v7, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v6

    .line 131
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "lock":Ljava/util/concurrent/locks/Lock;
    .restart local v2    # "recid":J
    :cond_1
    :try_start_3
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 135
    iget-object v6, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-wide v2
.end method

.method public preallocate([J)V
    .locals 11
    .param p1, "recids"    # [J

    .prologue
    .line 141
    iget-object v9, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 143
    const/4 v9, 0x1

    :try_start_0
    iput-boolean v9, p0, Lorg/mapdb/TxEngine;->uncommitedData:Z

    .line 144
    invoke-super {p0, p1}, Lorg/mapdb/EngineWrapper;->preallocate([J)V

    .line 145
    move-object v0, p1

    .local v0, "arr$":[J
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    move v2, v1

    .end local v1    # "i$":I
    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-wide v6, v0, v2

    .line 146
    .local v6, "recid":J
    iget-object v9, p0, Lorg/mapdb/TxEngine;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {v6, v7}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    .line 147
    .local v4, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 149
    :try_start_1
    iget-object v9, p0, Lorg/mapdb/TxEngine;->txs:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "i$":I
    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/Reference;

    .line 150
    .local v8, "txr":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lorg/mapdb/TxEngine$Tx;>;"
    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapdb/TxEngine$Tx;

    .line 151
    .local v5, "tx":Lorg/mapdb/TxEngine$Tx;
    if-eqz v5, :cond_0

    .line 152
    iget-object v9, v5, Lorg/mapdb/TxEngine$Tx;->old:Lorg/mapdb/LongConcurrentHashMap;

    sget-object v10, Lorg/mapdb/TxEngine;->TOMBSTONE:Ljava/lang/Object;

    invoke-virtual {v9, v6, v7, v10}, Lorg/mapdb/LongConcurrentHashMap;->putIfAbsent(JLjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 155
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "tx":Lorg/mapdb/TxEngine$Tx;
    .end local v8    # "txr":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lorg/mapdb/TxEngine$Tx;>;"
    :catchall_0
    move-exception v9

    :try_start_2
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 159
    .end local v0    # "arr$":[J
    .end local v3    # "len$":I
    .end local v4    # "lock":Ljava/util/concurrent/locks/Lock;
    .end local v6    # "recid":J
    :catchall_1
    move-exception v9

    iget-object v10, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v9

    .line 155
    .restart local v0    # "arr$":[J
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "len$":I
    .restart local v4    # "lock":Ljava/util/concurrent/locks/Lock;
    .restart local v6    # "recid":J
    :cond_1
    :try_start_3
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 145
    add-int/lit8 v1, v2, 0x1

    .local v1, "i$":I
    move v2, v1

    .end local v1    # "i$":I
    .restart local v2    # "i$":I
    goto :goto_0

    .line 159
    .end local v4    # "lock":Ljava/util/concurrent/locks/Lock;
    .end local v6    # "recid":J
    :cond_2
    iget-object v9, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 161
    return-void
.end method

.method public put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J
    .locals 8
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
    .line 165
    .local p1, "value":Ljava/lang/Object;, "TA;"
    .local p2, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    iget-object v6, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 167
    const/4 v6, 0x1

    :try_start_0
    iput-boolean v6, p0, Lorg/mapdb/TxEngine;->uncommitedData:Z

    .line 168
    invoke-super {p0, p1, p2}, Lorg/mapdb/EngineWrapper;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v2

    .line 169
    .local v2, "recid":J
    iget-object v6, p0, Lorg/mapdb/TxEngine;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {v2, v3}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    .line 170
    .local v1, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 172
    :try_start_1
    iget-object v6, p0, Lorg/mapdb/TxEngine;->txs:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/Reference;

    .line 173
    .local v5, "txr":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lorg/mapdb/TxEngine$Tx;>;"
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mapdb/TxEngine$Tx;

    .line 174
    .local v4, "tx":Lorg/mapdb/TxEngine$Tx;
    if-eqz v4, :cond_0

    .line 175
    iget-object v6, v4, Lorg/mapdb/TxEngine$Tx;->old:Lorg/mapdb/LongConcurrentHashMap;

    sget-object v7, Lorg/mapdb/TxEngine;->TOMBSTONE:Ljava/lang/Object;

    invoke-virtual {v6, v2, v3, v7}, Lorg/mapdb/LongConcurrentHashMap;->putIfAbsent(JLjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 178
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "tx":Lorg/mapdb/TxEngine$Tx;
    .end local v5    # "txr":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lorg/mapdb/TxEngine$Tx;>;"
    :catchall_0
    move-exception v6

    :try_start_2
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 183
    .end local v1    # "lock":Ljava/util/concurrent/locks/Lock;
    .end local v2    # "recid":J
    :catchall_1
    move-exception v6

    iget-object v7, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v6

    .line 178
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "lock":Ljava/util/concurrent/locks/Lock;
    .restart local v2    # "recid":J
    :cond_1
    :try_start_3
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 183
    iget-object v6, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-wide v2
.end method

.method public rollback()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 299
    :try_start_0
    invoke-virtual {p0}, Lorg/mapdb/TxEngine;->cleanTxQueue()V

    .line 300
    invoke-super {p0}, Lorg/mapdb/EngineWrapper;->rollback()V

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mapdb/TxEngine;->uncommitedData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    iget-object v0, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 306
    return-void

    .line 303
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public snapshot()Lorg/mapdb/Engine;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 100
    :try_start_0
    invoke-virtual {p0}, Lorg/mapdb/TxEngine;->cleanTxQueue()V

    .line 101
    iget-boolean v0, p0, Lorg/mapdb/TxEngine;->uncommitedData:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mapdb/TxEngine;->canRollback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Can not create snapshot with uncommited data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    .line 103
    :cond_0
    :try_start_1
    new-instance v0, Lorg/mapdb/TxEngine$Tx;

    invoke-direct {v0, p0}, Lorg/mapdb/TxEngine$Tx;-><init>(Lorg/mapdb/TxEngine;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    iget-object v1, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v0
.end method

.method protected superCommit()V
    .locals 1

    .prologue
    .line 309
    sget-boolean v0, Lorg/mapdb/TxEngine;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 310
    :cond_0
    invoke-super {p0}, Lorg/mapdb/EngineWrapper;->commit()V

    .line 311
    return-void
.end method

.method protected superDelete(JLorg/mapdb/Serializer;)V
    .locals 1
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
    .line 319
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    sget-boolean v0, Lorg/mapdb/TxEngine;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 320
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/mapdb/EngineWrapper;->delete(JLorg/mapdb/Serializer;)V

    .line 321
    return-void
.end method

.method protected superGet(JLorg/mapdb/Serializer;)Ljava/lang/Object;
    .locals 1
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
    .line 324
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    sget-boolean v0, Lorg/mapdb/TxEngine;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 325
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/mapdb/EngineWrapper;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected superUpdate(JLjava/lang/Object;Lorg/mapdb/Serializer;)V
    .locals 1
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
    .line 314
    .local p3, "value":Ljava/lang/Object;, "TA;"
    .local p4, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    sget-boolean v0, Lorg/mapdb/TxEngine;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 315
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/mapdb/EngineWrapper;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 316
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
    .line 200
    .local p3, "value":Ljava/lang/Object;, "TA;"
    .local p4, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    iget-object v5, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 202
    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, p0, Lorg/mapdb/TxEngine;->uncommitedData:Z

    .line 203
    iget-object v5, p0, Lorg/mapdb/TxEngine;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {p1, p2}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    .line 204
    .local v1, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 206
    :try_start_1
    invoke-virtual {p0, p1, p2, p4}, Lorg/mapdb/TxEngine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v2

    .line 207
    .local v2, "old":Ljava/lang/Object;
    iget-object v5, p0, Lorg/mapdb/TxEngine;->txs:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/Reference;

    .line 208
    .local v4, "txr":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lorg/mapdb/TxEngine$Tx;>;"
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mapdb/TxEngine$Tx;

    .line 209
    .local v3, "tx":Lorg/mapdb/TxEngine$Tx;
    if-eqz v3, :cond_0

    .line 210
    iget-object v5, v3, Lorg/mapdb/TxEngine$Tx;->old:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v5, p1, p2, v2}, Lorg/mapdb/LongConcurrentHashMap;->putIfAbsent(JLjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 214
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "old":Ljava/lang/Object;
    .end local v3    # "tx":Lorg/mapdb/TxEngine$Tx;
    .end local v4    # "txr":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lorg/mapdb/TxEngine$Tx;>;"
    :catchall_0
    move-exception v5

    :try_start_2
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 217
    .end local v1    # "lock":Ljava/util/concurrent/locks/Lock;
    :catchall_1
    move-exception v5

    iget-object v6, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v5

    .line 212
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "lock":Ljava/util/concurrent/locks/Lock;
    .restart local v2    # "old":Ljava/lang/Object;
    :cond_1
    :try_start_3
    invoke-super {p0, p1, p2, p3, p4}, Lorg/mapdb/EngineWrapper;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 214
    :try_start_4
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 217
    iget-object v5, p0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 220
    return-void
.end method
