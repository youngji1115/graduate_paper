.class public Lorg/mapdb/TxEngine$Tx;
.super Ljava/lang/Object;
.source "TxEngine.java"

# interfaces
.implements Lorg/mapdb/Engine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/TxEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Tx"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected closed:Z

.field protected mod:Lorg/mapdb/LongConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/LongConcurrentHashMap",
            "<",
            "Lorg/mapdb/Fun$Tuple2;",
            ">;"
        }
    .end annotation
.end field

.field protected old:Lorg/mapdb/LongConcurrentHashMap;

.field private parentEngine:Lorg/mapdb/Store;

.field pojo:Lorg/mapdb/SerializerPojo;

.field protected final ref:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Lorg/mapdb/TxEngine$Tx;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/mapdb/TxEngine;

.field protected usedPreallocatedRecids:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 328
    const-class v0, Lorg/mapdb/TxEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/mapdb/TxEngine$Tx;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/mapdb/TxEngine;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 342
    iput-object p1, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    new-instance v0, Lorg/mapdb/LongConcurrentHashMap;

    invoke-direct {v0}, Lorg/mapdb/LongConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/mapdb/TxEngine$Tx;->old:Lorg/mapdb/LongConcurrentHashMap;

    .line 331
    iget-object v0, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-boolean v0, v0, Lorg/mapdb/TxEngine;->fullTx:Z

    if-eqz v0, :cond_1

    new-instance v0, Lorg/mapdb/LongConcurrentHashMap;

    invoke-direct {v0}, Lorg/mapdb/LongConcurrentHashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/mapdb/TxEngine$Tx;->mod:Lorg/mapdb/LongConcurrentHashMap;

    .line 334
    iget-object v0, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-boolean v0, v0, Lorg/mapdb/TxEngine;->fullTx:Z

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object v1, p0, Lorg/mapdb/TxEngine$Tx;->usedPreallocatedRecids:Ljava/util/Collection;

    .line 337
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v1, v1, Lorg/mapdb/TxEngine;->txQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Lorg/mapdb/TxEngine$Tx;->ref:Ljava/lang/ref/Reference;

    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mapdb/TxEngine$Tx;->closed:Z

    .line 621
    new-instance v1, Lorg/mapdb/SerializerPojo;

    iget-object v0, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    invoke-virtual {v0}, Lorg/mapdb/TxEngine;->getSerializerPojo()Lorg/mapdb/SerializerPojo;

    move-result-object v0

    iget-object v0, v0, Lorg/mapdb/SerializerPojo;->registered:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, v0}, Lorg/mapdb/SerializerPojo;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    iput-object v1, p0, Lorg/mapdb/TxEngine$Tx;->pojo:Lorg/mapdb/SerializerPojo;

    .line 343
    sget-boolean v0, Lorg/mapdb/TxEngine$Tx;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p1, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    move-object v0, v1

    .line 331
    goto :goto_0

    .line 344
    :cond_2
    iget-object v0, p1, Lorg/mapdb/TxEngine;->txs:Ljava/util/Set;

    iget-object v1, p0, Lorg/mapdb/TxEngine$Tx;->ref:Ljava/lang/ref/Reference;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 345
    return-void
.end method

.method private getNoLock(JLorg/mapdb/Serializer;)Ljava/lang/Object;
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
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    const/4 v2, 0x0

    .line 412
    iget-object v3, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-boolean v3, v3, Lorg/mapdb/TxEngine;->fullTx:Z

    if-eqz v3, :cond_2

    .line 413
    iget-object v3, p0, Lorg/mapdb/TxEngine$Tx;->mod:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v3, p1, p2}, Lorg/mapdb/LongConcurrentHashMap;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapdb/Fun$Tuple2;

    .line 414
    .local v1, "tu":Lorg/mapdb/Fun$Tuple2;
    if-eqz v1, :cond_2

    .line 415
    iget-object v3, v1, Lorg/mapdb/Fun$Tuple2;->a:Ljava/lang/Object;

    sget-object v4, Lorg/mapdb/TxEngine;->TOMBSTONE:Ljava/lang/Object;

    if-ne v3, v4, :cond_1

    move-object v0, v2

    .line 427
    .end local v1    # "tu":Lorg/mapdb/Fun$Tuple2;
    :cond_0
    :goto_0
    return-object v0

    .line 417
    .restart local v1    # "tu":Lorg/mapdb/Fun$Tuple2;
    :cond_1
    iget-object v0, v1, Lorg/mapdb/Fun$Tuple2;->a:Ljava/lang/Object;

    goto :goto_0

    .line 421
    .end local v1    # "tu":Lorg/mapdb/Fun$Tuple2;
    :cond_2
    iget-object v3, p0, Lorg/mapdb/TxEngine$Tx;->old:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v3, p1, p2}, Lorg/mapdb/LongConcurrentHashMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    .line 422
    .local v0, "oldVal":Ljava/lang/Object;
    if-eqz v0, :cond_3

    .line 423
    sget-object v3, Lorg/mapdb/TxEngine;->TOMBSTONE:Ljava/lang/Object;

    if-ne v0, v3, :cond_0

    move-object v0, v2

    .line 424
    goto :goto_0

    .line 427
    :cond_3
    iget-object v2, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    invoke-virtual {v2, p1, p2, p3}, Lorg/mapdb/TxEngine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public canRollback()Z
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-boolean v0, v0, Lorg/mapdb/TxEngine;->fullTx:Z

    return v0
.end method

.method public canSnapshot()Z
    .locals 1

    .prologue
    .line 603
    const/4 v0, 0x0

    return v0
.end method

.method public clearCache()V
    .locals 0

    .prologue
    .line 614
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapdb/TxEngine$Tx;->closed:Z

    .line 484
    iget-object v0, p0, Lorg/mapdb/TxEngine$Tx;->old:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v0}, Lorg/mapdb/LongConcurrentHashMap;->clear()V

    .line 485
    iget-object v0, p0, Lorg/mapdb/TxEngine$Tx;->ref:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 486
    return-void
.end method

.method public closeListenerRegister(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "closeListener"    # Ljava/lang/Runnable;

    .prologue
    .line 630
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public closeListenerUnregister(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "closeListener"    # Ljava/lang/Runnable;

    .prologue
    .line 636
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public commit()V
    .locals 13

    .prologue
    .line 495
    iget-object v11, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-boolean v11, v11, Lorg/mapdb/TxEngine;->fullTx:Z

    if-nez v11, :cond_0

    .line 496
    new-instance v11, Ljava/lang/UnsupportedOperationException;

    const-string v12, "read-only"

    invoke-direct {v11, v12}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 498
    :cond_0
    iget-object v11, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v11, v11, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 500
    :try_start_0
    iget-boolean v11, p0, Lorg/mapdb/TxEngine$Tx;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_1

    .line 562
    iget-object v11, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v11, v11, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 564
    :goto_0
    return-void

    .line 501
    :cond_1
    :try_start_1
    iget-object v11, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-boolean v11, v11, Lorg/mapdb/TxEngine;->uncommitedData:Z

    if-eqz v11, :cond_2

    .line 502
    new-instance v11, Ljava/lang/IllegalAccessError;

    const-string v12, "uncommitted data"

    invoke-direct {v11, v12}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 562
    :catchall_0
    move-exception v11

    iget-object v12, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v12, v12, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v11

    .line 503
    :cond_2
    :try_start_2
    iget-object v11, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v11, v11, Lorg/mapdb/TxEngine;->txs:Ljava/util/Set;

    iget-object v12, p0, Lorg/mapdb/TxEngine$Tx;->ref:Ljava/lang/ref/Reference;

    invoke-interface {v11, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 504
    iget-object v11, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    invoke-virtual {v11}, Lorg/mapdb/TxEngine;->cleanTxQueue()V

    .line 506
    iget-object v11, p0, Lorg/mapdb/TxEngine$Tx;->pojo:Lorg/mapdb/SerializerPojo;

    invoke-virtual {v11}, Lorg/mapdb/SerializerPojo;->hasUnsavedChanges()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 507
    iget-object v11, p0, Lorg/mapdb/TxEngine$Tx;->pojo:Lorg/mapdb/SerializerPojo;

    invoke-virtual {v11, p0}, Lorg/mapdb/SerializerPojo;->save(Lorg/mapdb/Engine;)V

    .line 510
    :cond_3
    iget-object v11, p0, Lorg/mapdb/TxEngine$Tx;->old:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v11}, Lorg/mapdb/LongConcurrentHashMap;->longMapIterator()Lorg/mapdb/LongMap$LongMapIterator;

    move-result-object v3

    .line 511
    .local v3, "oldIter":Lorg/mapdb/LongMap$LongMapIterator;
    :cond_4
    invoke-interface {v3}, Lorg/mapdb/LongMap$LongMapIterator;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 512
    invoke-interface {v3}, Lorg/mapdb/LongMap$LongMapIterator;->key()J

    move-result-wide v4

    .line 513
    .local v4, "recid":J
    iget-object v11, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v11, v11, Lorg/mapdb/TxEngine;->txs:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/Reference;

    .line 514
    .local v6, "ref2":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lorg/mapdb/TxEngine$Tx;>;"
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/mapdb/TxEngine$Tx;

    .line 515
    .local v8, "tx":Lorg/mapdb/TxEngine$Tx;
    if-eq v8, p0, :cond_5

    if-eqz v8, :cond_5

    .line 516
    iget-object v11, v8, Lorg/mapdb/TxEngine$Tx;->mod:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v11, v4, v5}, Lorg/mapdb/LongConcurrentHashMap;->containsKey(J)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 517
    invoke-virtual {p0}, Lorg/mapdb/TxEngine$Tx;->close()V

    .line 518
    new-instance v11, Lorg/mapdb/TxRollbackException;

    invoke-direct {v11}, Lorg/mapdb/TxRollbackException;-><init>()V

    throw v11

    .line 523
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "recid":J
    .end local v6    # "ref2":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lorg/mapdb/TxEngine$Tx;>;"
    .end local v8    # "tx":Lorg/mapdb/TxEngine$Tx;
    :cond_6
    iget-object v11, p0, Lorg/mapdb/TxEngine$Tx;->mod:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v11}, Lorg/mapdb/LongConcurrentHashMap;->longMapIterator()Lorg/mapdb/LongMap$LongMapIterator;

    move-result-object v1

    .line 524
    .local v1, "iter":Lorg/mapdb/LongMap$LongMapIterator;, "Lorg/mapdb/LongMap$LongMapIterator<Lorg/mapdb/Fun$Tuple2;>;"
    :cond_7
    invoke-interface {v1}, Lorg/mapdb/LongMap$LongMapIterator;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 525
    invoke-interface {v1}, Lorg/mapdb/LongMap$LongMapIterator;->key()J

    move-result-wide v4

    .line 526
    .restart local v4    # "recid":J
    iget-object v11, p0, Lorg/mapdb/TxEngine$Tx;->old:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v11, v4, v5}, Lorg/mapdb/LongConcurrentHashMap;->containsKey(J)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 527
    invoke-virtual {p0}, Lorg/mapdb/TxEngine$Tx;->close()V

    .line 528
    new-instance v11, Lorg/mapdb/TxRollbackException;

    invoke-direct {v11}, Lorg/mapdb/TxRollbackException;-><init>()V

    throw v11

    .line 532
    .end local v4    # "recid":J
    :cond_8
    iget-object v11, p0, Lorg/mapdb/TxEngine$Tx;->mod:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v11}, Lorg/mapdb/LongConcurrentHashMap;->longMapIterator()Lorg/mapdb/LongMap$LongMapIterator;

    move-result-object v1

    .line 533
    :goto_1
    invoke-interface {v1}, Lorg/mapdb/LongMap$LongMapIterator;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 534
    invoke-interface {v1}, Lorg/mapdb/LongMap$LongMapIterator;->key()J

    move-result-wide v4

    .line 536
    .restart local v4    # "recid":J
    invoke-interface {v1}, Lorg/mapdb/LongMap$LongMapIterator;->value()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapdb/Fun$Tuple2;

    .line 537
    .local v10, "val":Lorg/mapdb/Fun$Tuple2;
    iget-object v7, v10, Lorg/mapdb/Fun$Tuple2;->b:Ljava/lang/Object;

    check-cast v7, Lorg/mapdb/Serializer;

    .line 538
    .local v7, "ser":Lorg/mapdb/Serializer;
    iget-object v11, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    invoke-virtual {v11, v4, v5, v7}, Lorg/mapdb/TxEngine;->superGet(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v2

    .line 539
    .local v2, "old":Ljava/lang/Object;
    if-nez v2, :cond_9

    .line 540
    sget-object v2, Lorg/mapdb/TxEngine;->TOMBSTONE:Ljava/lang/Object;

    .line 541
    :cond_9
    iget-object v11, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v11, v11, Lorg/mapdb/TxEngine;->txs:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_a
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/Reference;

    .line 542
    .local v9, "txr":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lorg/mapdb/TxEngine$Tx;>;"
    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/mapdb/TxEngine$Tx;

    .line 543
    .restart local v8    # "tx":Lorg/mapdb/TxEngine$Tx;
    if-eqz v8, :cond_a

    if-eq v8, p0, :cond_a

    .line 544
    iget-object v11, v8, Lorg/mapdb/TxEngine$Tx;->old:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v11, v4, v5, v2}, Lorg/mapdb/LongConcurrentHashMap;->putIfAbsent(JLjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 548
    .end local v8    # "tx":Lorg/mapdb/TxEngine$Tx;
    .end local v9    # "txr":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lorg/mapdb/TxEngine$Tx;>;"
    :cond_b
    iget-object v11, v10, Lorg/mapdb/Fun$Tuple2;->a:Ljava/lang/Object;

    sget-object v12, Lorg/mapdb/TxEngine;->TOMBSTONE:Ljava/lang/Object;

    if-ne v11, v12, :cond_c

    .line 549
    iget-object v11, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    invoke-virtual {v11, v4, v5, v7}, Lorg/mapdb/TxEngine;->superDelete(JLorg/mapdb/Serializer;)V

    goto :goto_1

    .line 551
    :cond_c
    iget-object v11, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v12, v10, Lorg/mapdb/Fun$Tuple2;->a:Ljava/lang/Object;

    invoke-virtual {v11, v4, v5, v12, v7}, Lorg/mapdb/TxEngine;->superUpdate(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    goto :goto_1

    .line 557
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "old":Ljava/lang/Object;
    .end local v4    # "recid":J
    .end local v7    # "ser":Lorg/mapdb/Serializer;
    .end local v10    # "val":Lorg/mapdb/Fun$Tuple2;
    :cond_d
    invoke-virtual {p0}, Lorg/mapdb/TxEngine$Tx;->getWrappedEngine()Lorg/mapdb/Engine;

    move-result-object v11

    invoke-interface {v11}, Lorg/mapdb/Engine;->getSerializerPojo()Lorg/mapdb/SerializerPojo;

    move-result-object v11

    iget-object v12, p0, Lorg/mapdb/TxEngine$Tx;->pojo:Lorg/mapdb/SerializerPojo;

    iget-object v12, v12, Lorg/mapdb/SerializerPojo;->registered:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v12, v11, Lorg/mapdb/SerializerPojo;->registered:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 558
    iget-object v11, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    invoke-virtual {v11}, Lorg/mapdb/TxEngine;->superCommit()V

    .line 560
    invoke-virtual {p0}, Lorg/mapdb/TxEngine$Tx;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 562
    iget-object v11, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v11, v11, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_0
.end method

.method public compact()V
    .locals 0

    .prologue
    .line 618
    return-void
.end method

.method public compareAndSwap(JLjava/lang/Object;Ljava/lang/Object;Lorg/mapdb/Serializer;)Z
    .locals 5
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
    .line 444
    .local p3, "expectedOldValue":Ljava/lang/Object;, "TA;"
    .local p4, "newValue":Ljava/lang/Object;, "TA;"
    .local p5, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    iget-object v3, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-boolean v3, v3, Lorg/mapdb/TxEngine;->fullTx:Z

    if-nez v3, :cond_0

    .line 445
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "read-only"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 447
    :cond_0
    iget-object v3, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v3, v3, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 450
    :try_start_0
    iget-object v3, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v3, v3, Lorg/mapdb/TxEngine;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {p1, p2}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 451
    .local v0, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 453
    :try_start_1
    invoke-direct {p0, p1, p2, p5}, Lorg/mapdb/TxEngine$Tx;->getNoLock(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v1

    .line 454
    .local v1, "oldVal":Ljava/lang/Object;, "TA;"
    if-eqz v1, :cond_2

    invoke-virtual {v1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 455
    .local v2, "ret":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 456
    iget-object v3, p0, Lorg/mapdb/TxEngine$Tx;->mod:Lorg/mapdb/LongConcurrentHashMap;

    invoke-static {p4, p5}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v4

    invoke-virtual {v3, p1, p2, v4}, Lorg/mapdb/LongConcurrentHashMap;->put(JLjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    :cond_1
    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 463
    iget-object v3, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v3, v3, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v2

    .line 454
    .end local v2    # "ret":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 460
    .end local v1    # "oldVal":Ljava/lang/Object;, "TA;"
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 463
    .end local v0    # "lock":Ljava/util/concurrent/locks/Lock;
    :catchall_1
    move-exception v3

    iget-object v4, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v4, v4, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v3
.end method

.method public delete(JLorg/mapdb/Serializer;)V
    .locals 3
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
    .line 469
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    iget-object v0, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-boolean v0, v0, Lorg/mapdb/TxEngine;->fullTx:Z

    if-nez v0, :cond_0

    .line 470
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read-only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_0
    iget-object v0, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v0, v0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 474
    :try_start_0
    iget-object v0, p0, Lorg/mapdb/TxEngine$Tx;->mod:Lorg/mapdb/LongConcurrentHashMap;

    sget-object v1, Lorg/mapdb/TxEngine;->TOMBSTONE:Ljava/lang/Object;

    invoke-static {v1, p3}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lorg/mapdb/LongConcurrentHashMap;->put(JLjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    iget-object v0, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v0, v0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 479
    return-void

    .line 476
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v1, v1, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
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
    .line 396
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    iget-object v1, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v1, v1, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 398
    :try_start_0
    iget-boolean v1, p0, Lorg/mapdb/TxEngine$Tx;->closed:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalAccessError;

    const-string v2, "closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v2, v2, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1

    .line 399
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v1, v1, Lorg/mapdb/TxEngine;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {p1, p2}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    .line 400
    .local v0, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Lorg/mapdb/TxEngine$Tx;->getNoLock(JLorg/mapdb/Serializer;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 404
    :try_start_3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 407
    iget-object v2, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v2, v2, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v1

    .line 404
    :catchall_1
    move-exception v1

    :try_start_4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public getSerializerPojo()Lorg/mapdb/SerializerPojo;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lorg/mapdb/TxEngine$Tx;->pojo:Lorg/mapdb/SerializerPojo;

    return-object v0
.end method

.method public getWrappedEngine()Lorg/mapdb/Engine;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    invoke-virtual {v0}, Lorg/mapdb/TxEngine;->getWrappedEngine()Lorg/mapdb/Engine;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 490
    iget-boolean v0, p0, Lorg/mapdb/TxEngine$Tx;->closed:Z

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-boolean v0, v0, Lorg/mapdb/TxEngine;->fullTx:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public preallocate()J
    .locals 4

    .prologue
    .line 349
    iget-object v1, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-boolean v1, v1, Lorg/mapdb/TxEngine;->fullTx:Z

    if-nez v1, :cond_0

    .line 350
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "read-only"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 352
    :cond_0
    iget-object v1, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v1, v1, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 354
    :try_start_0
    iget-object v1, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    invoke-virtual {v1}, Lorg/mapdb/TxEngine;->preallocRecidTake()Ljava/lang/Long;

    move-result-object v0

    .line 355
    .local v0, "recid":Ljava/lang/Long;
    iget-object v1, p0, Lorg/mapdb/TxEngine$Tx;->usedPreallocatedRecids:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 356
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 358
    iget-object v1, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v1, v1, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-wide v2

    .end local v0    # "recid":Ljava/lang/Long;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v2, v2, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method

.method public preallocate([J)V
    .locals 4
    .param p1, "recids"    # [J

    .prologue
    .line 364
    iget-object v2, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-boolean v2, v2, Lorg/mapdb/TxEngine;->fullTx:Z

    if-nez v2, :cond_0

    .line 365
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "read-only"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 367
    :cond_0
    iget-object v2, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v2, v2, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 369
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 370
    iget-object v2, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    invoke-virtual {v2}, Lorg/mapdb/TxEngine;->preallocRecidTake()Ljava/lang/Long;

    move-result-object v1

    .line 371
    .local v1, "recid":Ljava/lang/Long;
    iget-object v2, p0, Lorg/mapdb/TxEngine$Tx;->usedPreallocatedRecids:Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 372
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    .end local v1    # "recid":Ljava/lang/Long;
    :cond_1
    iget-object v2, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v2, v2, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 377
    return-void

    .line 375
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v3, v3, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v2
.end method

.method public put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J
    .locals 5
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
    .line 381
    .local p1, "value":Ljava/lang/Object;, "TA;"
    .local p2, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    iget-object v1, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-boolean v1, v1, Lorg/mapdb/TxEngine;->fullTx:Z

    if-nez v1, :cond_0

    .line 382
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "read-only"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 383
    :cond_0
    iget-object v1, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v1, v1, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 385
    :try_start_0
    iget-object v1, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    invoke-virtual {v1}, Lorg/mapdb/TxEngine;->preallocRecidTake()Ljava/lang/Long;

    move-result-object v0

    .line 386
    .local v0, "recid":Ljava/lang/Long;
    iget-object v1, p0, Lorg/mapdb/TxEngine$Tx;->usedPreallocatedRecids:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 387
    iget-object v1, p0, Lorg/mapdb/TxEngine$Tx;->mod:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p1, p2}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/mapdb/LongConcurrentHashMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 388
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 390
    iget-object v1, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v1, v1, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-wide v2

    .end local v0    # "recid":Ljava/lang/Long;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v2, v2, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method

.method public rollback()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 568
    iget-object v2, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-boolean v2, v2, Lorg/mapdb/TxEngine;->fullTx:Z

    if-nez v2, :cond_0

    .line 569
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "read-only"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 571
    :cond_0
    iget-object v2, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v2, v2, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 573
    :try_start_0
    iget-boolean v2, p0, Lorg/mapdb/TxEngine$Tx;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 587
    iget-object v2, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v2, v2, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 589
    :goto_0
    return-void

    .line 574
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-boolean v2, v2, Lorg/mapdb/TxEngine;->uncommitedData:Z

    if-eqz v2, :cond_2

    .line 575
    new-instance v2, Ljava/lang/IllegalAccessError;

    const-string v3, "uncommitted data"

    invoke-direct {v2, v3}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 587
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v3, v3, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v2

    .line 577
    :cond_2
    :try_start_2
    iget-object v2, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v2, v2, Lorg/mapdb/TxEngine;->txs:Ljava/util/Set;

    iget-object v3, p0, Lorg/mapdb/TxEngine$Tx;->ref:Ljava/lang/ref/Reference;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 578
    iget-object v2, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    invoke-virtual {v2}, Lorg/mapdb/TxEngine;->cleanTxQueue()V

    .line 580
    iget-object v2, p0, Lorg/mapdb/TxEngine$Tx;->usedPreallocatedRecids:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 581
    .local v1, "prealloc":Ljava/lang/Long;
    iget-object v2, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v5, v3}, Lorg/mapdb/TxEngine;->superDelete(JLorg/mapdb/Serializer;)V

    goto :goto_1

    .line 583
    .end local v1    # "prealloc":Ljava/lang/Long;
    :cond_3
    iget-object v2, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    invoke-virtual {v2}, Lorg/mapdb/TxEngine;->superCommit()V

    .line 585
    invoke-virtual {p0}, Lorg/mapdb/TxEngine$Tx;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 587
    iget-object v2, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v2, v2, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0
.end method

.method public snapshot()Lorg/mapdb/Engine;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 608
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V
    .locals 3
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
    .line 432
    .local p3, "value":Ljava/lang/Object;, "TA;"
    .local p4, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    iget-object v0, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-boolean v0, v0, Lorg/mapdb/TxEngine;->fullTx:Z

    if-nez v0, :cond_0

    .line 433
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read-only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_0
    iget-object v0, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v0, v0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 436
    :try_start_0
    iget-object v0, p0, Lorg/mapdb/TxEngine$Tx;->mod:Lorg/mapdb/LongConcurrentHashMap;

    invoke-static {p3, p4}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lorg/mapdb/LongConcurrentHashMap;->put(JLjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    iget-object v0, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v0, v0, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 440
    return-void

    .line 438
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/mapdb/TxEngine$Tx;->this$0:Lorg/mapdb/TxEngine;

    iget-object v1, v1, Lorg/mapdb/TxEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method
