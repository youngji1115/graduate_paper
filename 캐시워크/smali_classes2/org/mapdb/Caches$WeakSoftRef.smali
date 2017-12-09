.class public Lorg/mapdb/Caches$WeakSoftRef;
.super Lorg/mapdb/EngineWrapper;
.source "Caches.java"

# interfaces
.implements Lorg/mapdb/Engine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/Caches;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeakSoftRef"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapdb/Caches$WeakSoftRef$CacheSoftItem;,
        Lorg/mapdb/Caches$WeakSoftRef$CacheWeakItem;,
        Lorg/mapdb/Caches$WeakSoftRef$CacheItem;
    }
.end annotation


# instance fields
.field protected items:Lorg/mapdb/LongConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/LongConcurrentHashMap",
            "<",
            "Lorg/mapdb/Caches$WeakSoftRef$CacheItem;",
            ">;"
        }
    .end annotation
.end field

.field protected final locks:[Ljava/util/concurrent/locks/ReentrantLock;

.field protected queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected queueThread:Ljava/lang/Thread;

.field protected final useWeakRef:Z


# direct methods
.method public constructor <init>(Lorg/mapdb/Engine;ZZ)V
    .locals 4
    .param p1, "engine"    # Lorg/mapdb/Engine;
    .param p2, "useWeakRef"    # Z
    .param p3, "disableLocks"    # Z

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lorg/mapdb/EngineWrapper;-><init>(Lorg/mapdb/Engine;)V

    .line 359
    const/16 v1, 0x80

    new-array v1, v1, [Ljava/util/concurrent/locks/ReentrantLock;

    iput-object v1, p0, Lorg/mapdb/Caches$WeakSoftRef;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    .line 361
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/mapdb/Caches$WeakSoftRef;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 362
    iget-object v1, p0, Lorg/mapdb/Caches$WeakSoftRef;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    aput-object v2, v1, v0

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    :cond_0
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v1, p0, Lorg/mapdb/Caches$WeakSoftRef;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 403
    new-instance v1, Lorg/mapdb/Caches$WeakSoftRef$1;

    const-string v2, "MapDB GC collector"

    invoke-direct {v1, p0, v2}, Lorg/mapdb/Caches$WeakSoftRef$1;-><init>(Lorg/mapdb/Caches$WeakSoftRef;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/mapdb/Caches$WeakSoftRef;->queueThread:Ljava/lang/Thread;

    .line 411
    new-instance v1, Lorg/mapdb/LongConcurrentHashMap;

    invoke-direct {v1}, Lorg/mapdb/LongConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lorg/mapdb/Caches$WeakSoftRef;->items:Lorg/mapdb/LongConcurrentHashMap;

    .line 418
    iput-boolean p2, p0, Lorg/mapdb/Caches$WeakSoftRef;->useWeakRef:Z

    .line 420
    iget-object v1, p0, Lorg/mapdb/Caches$WeakSoftRef;->queueThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 421
    iget-object v1, p0, Lorg/mapdb/Caches$WeakSoftRef;->queueThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 422
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lorg/mapdb/Caches$WeakSoftRef;->items:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v0}, Lorg/mapdb/LongConcurrentHashMap;->clear()V

    .line 590
    invoke-super {p0}, Lorg/mapdb/EngineWrapper;->clearCache()V

    .line 591
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 570
    invoke-super {p0}, Lorg/mapdb/EngineWrapper;->close()V

    .line 571
    iput-object v1, p0, Lorg/mapdb/Caches$WeakSoftRef;->items:Lorg/mapdb/LongConcurrentHashMap;

    .line 572
    iput-object v1, p0, Lorg/mapdb/Caches$WeakSoftRef;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 574
    iget-object v0, p0, Lorg/mapdb/Caches$WeakSoftRef;->queueThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lorg/mapdb/Caches$WeakSoftRef;->queueThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 576
    iput-object v1, p0, Lorg/mapdb/Caches$WeakSoftRef;->queueThread:Ljava/lang/Thread;

    .line 578
    :cond_0
    return-void
.end method

.method public compareAndSwap(JLjava/lang/Object;Ljava/lang/Object;Lorg/mapdb/Serializer;)Z
    .locals 17
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
    .line 535
    .local p3, "expectedOldValue":Ljava/lang/Object;, "TA;"
    .local p4, "newValue":Ljava/lang/Object;, "TA;"
    .local p5, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/Caches$WeakSoftRef;->getWrappedEngine()Lorg/mapdb/Engine;

    move-result-object v5

    .line 536
    .local v5, "engine":Lorg/mapdb/Engine;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/Caches$WeakSoftRef;->items:Lorg/mapdb/LongConcurrentHashMap;

    invoke-static {v6}, Lorg/mapdb/Caches$WeakSoftRef;->checkClosed(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/mapdb/LongMap;

    .line 537
    .local v11, "items2":Lorg/mapdb/LongMap;, "Lorg/mapdb/LongMap<Lorg/mapdb/Caches$WeakSoftRef$CacheItem;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/Caches$WeakSoftRef;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-static {v6}, Lorg/mapdb/Caches$WeakSoftRef;->checkClosed(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/ref/ReferenceQueue;

    .line 540
    .local v14, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TA;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/Caches$WeakSoftRef;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static/range {p1 .. p2}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v7

    aget-object v12, v6, v7

    .line 541
    .local v12, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 543
    :try_start_0
    move-wide/from16 v0, p1

    invoke-virtual {v11, v0, v1}, Lorg/mapdb/LongMap;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mapdb/Caches$WeakSoftRef$CacheItem;

    .line 544
    .local v4, "item":Lorg/mapdb/Caches$WeakSoftRef$CacheItem;
    if-nez v4, :cond_1

    const/4 v13, 0x0

    .line 545
    .local v13, "oldValue":Ljava/lang/Object;
    :goto_0
    if-eqz v4, :cond_3

    invoke-interface {v4}, Lorg/mapdb/Caches$WeakSoftRef$CacheItem;->getRecid()J

    move-result-wide v6

    cmp-long v6, v6, p1

    if-nez v6, :cond_3

    move-object/from16 v0, p3

    if-eq v13, v0, :cond_0

    if-eqz v13, :cond_3

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 548
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/mapdb/Caches$WeakSoftRef;->useWeakRef:Z

    if-eqz v6, :cond_2

    new-instance v6, Lorg/mapdb/Caches$WeakSoftRef$CacheWeakItem;

    move-object/from16 v0, p4

    move-wide/from16 v1, p1

    invoke-direct {v6, v0, v14, v1, v2}, Lorg/mapdb/Caches$WeakSoftRef$CacheWeakItem;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;J)V

    :goto_1
    move-wide/from16 v0, p1

    invoke-virtual {v11, v0, v1, v6}, Lorg/mapdb/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 551
    move-wide/from16 v0, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-interface {v5, v0, v1, v2, v3}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    const/4 v15, 0x1

    .line 563
    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_2
    return v15

    .line 544
    .end local v13    # "oldValue":Ljava/lang/Object;
    :cond_1
    :try_start_1
    invoke-interface {v4}, Lorg/mapdb/Caches$WeakSoftRef$CacheItem;->get()Ljava/lang/Object;

    move-result-object v13

    goto :goto_0

    .line 548
    .restart local v13    # "oldValue":Ljava/lang/Object;
    :cond_2
    new-instance v6, Lorg/mapdb/Caches$WeakSoftRef$CacheSoftItem;

    move-object/from16 v0, p4

    move-wide/from16 v1, p1

    invoke-direct {v6, v0, v14, v1, v2}, Lorg/mapdb/Caches$WeakSoftRef$CacheSoftItem;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 563
    .end local v4    # "item":Lorg/mapdb/Caches$WeakSoftRef$CacheItem;
    .end local v13    # "oldValue":Ljava/lang/Object;
    :catchall_0
    move-exception v6

    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v6

    .restart local v4    # "item":Lorg/mapdb/Caches$WeakSoftRef$CacheItem;
    .restart local v13    # "oldValue":Ljava/lang/Object;
    :cond_3
    move-wide/from16 v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    .line 554
    :try_start_2
    invoke-interface/range {v5 .. v10}, Lorg/mapdb/Engine;->compareAndSwap(JLjava/lang/Object;Ljava/lang/Object;Lorg/mapdb/Serializer;)Z

    move-result v15

    .line 555
    .local v15, "ret":Z
    if-eqz v15, :cond_4

    .line 556
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/mapdb/Caches$WeakSoftRef;->useWeakRef:Z

    if-eqz v6, :cond_5

    new-instance v6, Lorg/mapdb/Caches$WeakSoftRef$CacheWeakItem;

    move-object/from16 v0, p4

    move-wide/from16 v1, p1

    invoke-direct {v6, v0, v14, v1, v2}, Lorg/mapdb/Caches$WeakSoftRef$CacheWeakItem;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;J)V

    :goto_3
    move-wide/from16 v0, p1

    invoke-virtual {v11, v0, v1, v6}, Lorg/mapdb/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 563
    :cond_4
    invoke-interface {v12}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    .line 556
    :cond_5
    :try_start_3
    new-instance v6, Lorg/mapdb/Caches$WeakSoftRef$CacheSoftItem;

    move-object/from16 v0, p4

    move-wide/from16 v1, p1

    invoke-direct {v6, v0, v14, v1, v2}, Lorg/mapdb/Caches$WeakSoftRef$CacheSoftItem;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
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
    .line 519
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    invoke-virtual {p0}, Lorg/mapdb/Caches$WeakSoftRef;->getWrappedEngine()Lorg/mapdb/Engine;

    move-result-object v0

    .line 520
    .local v0, "engine":Lorg/mapdb/Engine;
    iget-object v3, p0, Lorg/mapdb/Caches$WeakSoftRef;->items:Lorg/mapdb/LongConcurrentHashMap;

    invoke-static {v3}, Lorg/mapdb/Caches$WeakSoftRef;->checkClosed(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapdb/LongMap;

    .line 522
    .local v1, "items2":Lorg/mapdb/LongMap;
    iget-object v3, p0, Lorg/mapdb/Caches$WeakSoftRef;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {p1, p2}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v4

    aget-object v2, v3, v4

    .line 523
    .local v2, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 525
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lorg/mapdb/LongMap;->remove(J)Ljava/lang/Object;

    .line 526
    invoke-interface {v0, p1, p2, p3}, Lorg/mapdb/Engine;->delete(JLorg/mapdb/Serializer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 531
    return-void

    .line 528
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public get(JLorg/mapdb/Serializer;)Ljava/lang/Object;
    .locals 11
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
    .line 464
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    iget-object v8, p0, Lorg/mapdb/Caches$WeakSoftRef;->items:Lorg/mapdb/LongConcurrentHashMap;

    invoke-static {v8}, Lorg/mapdb/Caches$WeakSoftRef;->checkClosed(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mapdb/LongConcurrentHashMap;

    .line 465
    .local v3, "items2":Lorg/mapdb/LongConcurrentHashMap;, "Lorg/mapdb/LongConcurrentHashMap<Lorg/mapdb/Caches$WeakSoftRef$CacheItem;>;"
    invoke-virtual {v3, p1, p2}, Lorg/mapdb/LongConcurrentHashMap;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapdb/Caches$WeakSoftRef$CacheItem;

    .line 466
    .local v2, "item":Lorg/mapdb/Caches$WeakSoftRef$CacheItem;
    if-eqz v2, :cond_0

    .line 467
    invoke-interface {v2}, Lorg/mapdb/Caches$WeakSoftRef$CacheItem;->get()Ljava/lang/Object;

    move-result-object v5

    .line 468
    .local v5, "o":Ljava/lang/Object;
    if-nez v5, :cond_2

    .line 469
    invoke-virtual {v3, p1, p2}, Lorg/mapdb/LongConcurrentHashMap;->remove(J)Ljava/lang/Object;

    .line 475
    .end local v5    # "o":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/Caches$WeakSoftRef;->getWrappedEngine()Lorg/mapdb/Engine;

    move-result-object v1

    .line 477
    .local v1, "engine":Lorg/mapdb/Engine;
    iget-object v8, p0, Lorg/mapdb/Caches$WeakSoftRef;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {p1, p2}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v9

    aget-object v4, v8, v9

    .line 478
    .local v4, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 481
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v7

    .line 482
    .local v7, "value":Ljava/lang/Object;
    if-eqz v7, :cond_1

    .line 483
    iget-object v8, p0, Lorg/mapdb/Caches$WeakSoftRef;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-static {v8}, Lorg/mapdb/Caches$WeakSoftRef;->checkClosed(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/ReferenceQueue;

    .line 484
    .local v6, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TA;>;"
    iget-boolean v8, p0, Lorg/mapdb/Caches$WeakSoftRef;->useWeakRef:Z

    if-eqz v8, :cond_3

    new-instance v8, Lorg/mapdb/Caches$WeakSoftRef$CacheWeakItem;

    invoke-direct {v8, v7, v6, p1, p2}, Lorg/mapdb/Caches$WeakSoftRef$CacheWeakItem;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;J)V

    :goto_0
    move-object v0, v8

    check-cast v0, Lorg/mapdb/Caches$WeakSoftRef$CacheItem;

    move-object v2, v0

    .line 487
    invoke-virtual {v3, p1, p2, v2}, Lorg/mapdb/LongConcurrentHashMap;->put(JLjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    .end local v6    # "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TA;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v5, v7

    .end local v1    # "engine":Lorg/mapdb/Engine;
    .end local v4    # "lock":Ljava/util/concurrent/locks/Lock;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_2
    return-object v5

    .line 484
    .restart local v1    # "engine":Lorg/mapdb/Engine;
    .restart local v4    # "lock":Ljava/util/concurrent/locks/Lock;
    .restart local v6    # "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TA;>;"
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_3
    :try_start_1
    new-instance v8, Lorg/mapdb/Caches$WeakSoftRef$CacheSoftItem;

    invoke-direct {v8, v7, v6, p1, p2}, Lorg/mapdb/Caches$WeakSoftRef$CacheSoftItem;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 492
    .end local v6    # "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TA;>;"
    .end local v7    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v8

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v8
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
    .line 444
    .local p1, "value":Ljava/lang/Object;, "TA;"
    .local p2, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    invoke-virtual {p0}, Lorg/mapdb/Caches$WeakSoftRef;->getWrappedEngine()Lorg/mapdb/Engine;

    move-result-object v6

    invoke-interface {v6, p1, p2}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v4

    .line 445
    .local v4, "recid":J
    iget-object v6, p0, Lorg/mapdb/Caches$WeakSoftRef;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-static {v6}, Lorg/mapdb/Caches$WeakSoftRef;->checkClosed(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/ReferenceQueue;

    .line 446
    .local v3, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TA;>;"
    iget-object v6, p0, Lorg/mapdb/Caches$WeakSoftRef;->items:Lorg/mapdb/LongConcurrentHashMap;

    invoke-static {v6}, Lorg/mapdb/Caches$WeakSoftRef;->checkClosed(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapdb/LongConcurrentHashMap;

    .line 447
    .local v1, "items2":Lorg/mapdb/LongConcurrentHashMap;, "Lorg/mapdb/LongConcurrentHashMap<Lorg/mapdb/Caches$WeakSoftRef$CacheItem;>;"
    iget-boolean v6, p0, Lorg/mapdb/Caches$WeakSoftRef;->useWeakRef:Z

    if-eqz v6, :cond_0

    new-instance v0, Lorg/mapdb/Caches$WeakSoftRef$CacheWeakItem;

    invoke-direct {v0, p1, v3, v4, v5}, Lorg/mapdb/Caches$WeakSoftRef$CacheWeakItem;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;J)V

    :goto_0
    check-cast v0, Lorg/mapdb/Caches$WeakSoftRef$CacheItem;

    .line 451
    .local v0, "item":Lorg/mapdb/Caches$WeakSoftRef$CacheItem;
    iget-object v6, p0, Lorg/mapdb/Caches$WeakSoftRef;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {v4, v5}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v7

    aget-object v2, v6, v7

    .line 452
    .local v2, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 454
    :try_start_0
    invoke-virtual {v1, v4, v5, v0}, Lorg/mapdb/LongConcurrentHashMap;->put(JLjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 458
    return-wide v4

    .line 447
    .end local v0    # "item":Lorg/mapdb/Caches$WeakSoftRef$CacheItem;
    .end local v2    # "lock":Ljava/util/concurrent/locks/Lock;
    :cond_0
    new-instance v0, Lorg/mapdb/Caches$WeakSoftRef$CacheSoftItem;

    invoke-direct {v0, p1, v3, v4, v5}, Lorg/mapdb/Caches$WeakSoftRef$CacheSoftItem;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;J)V

    goto :goto_0

    .line 456
    .restart local v0    # "item":Lorg/mapdb/Caches$WeakSoftRef$CacheItem;
    .restart local v2    # "lock":Ljava/util/concurrent/locks/Lock;
    :catchall_0
    move-exception v6

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v6
.end method

.method public rollback()V
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lorg/mapdb/Caches$WeakSoftRef;->items:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v0}, Lorg/mapdb/LongConcurrentHashMap;->clear()V

    .line 584
    invoke-super {p0}, Lorg/mapdb/EngineWrapper;->rollback()V

    .line 585
    return-void
.end method

.method protected runRefQueue()V
    .locals 6

    .prologue
    .line 428
    :try_start_0
    iget-object v2, p0, Lorg/mapdb/Caches$WeakSoftRef;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 429
    .local v2, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<*>;"
    if-nez v2, :cond_0

    .line 440
    .end local v2    # "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<*>;"
    :goto_0
    return-void

    .line 430
    .restart local v2    # "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<*>;"
    :cond_0
    iget-object v1, p0, Lorg/mapdb/Caches$WeakSoftRef;->items:Lorg/mapdb/LongConcurrentHashMap;

    .line 433
    .local v1, "items":Lorg/mapdb/LongConcurrentHashMap;, "Lorg/mapdb/LongConcurrentHashMap<Lorg/mapdb/Caches$WeakSoftRef$CacheItem;>;"
    :cond_1
    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Caches$WeakSoftRef$CacheItem;

    .line 434
    .local v0, "item":Lorg/mapdb/Caches$WeakSoftRef$CacheItem;
    invoke-interface {v0}, Lorg/mapdb/Caches$WeakSoftRef$CacheItem;->getRecid()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5, v0}, Lorg/mapdb/LongConcurrentHashMap;->remove(JLjava/lang/Object;)Z

    .line 435
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 437
    .end local v0    # "item":Lorg/mapdb/Caches$WeakSoftRef$CacheItem;
    .end local v1    # "items":Lorg/mapdb/LongConcurrentHashMap;, "Lorg/mapdb/LongConcurrentHashMap<Lorg/mapdb/Caches$WeakSoftRef$CacheItem;>;"
    .end local v2    # "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<*>;"
    :catch_0
    move-exception v3

    goto :goto_0
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
    .line 499
    .local p3, "value":Ljava/lang/Object;, "TA;"
    .local p4, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    invoke-virtual {p0}, Lorg/mapdb/Caches$WeakSoftRef;->getWrappedEngine()Lorg/mapdb/Engine;

    move-result-object v0

    .line 500
    .local v0, "engine":Lorg/mapdb/Engine;
    iget-object v5, p0, Lorg/mapdb/Caches$WeakSoftRef;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-static {v5}, Lorg/mapdb/Caches$WeakSoftRef;->checkClosed(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/ReferenceQueue;

    .line 501
    .local v4, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TA;>;"
    iget-object v5, p0, Lorg/mapdb/Caches$WeakSoftRef;->items:Lorg/mapdb/LongConcurrentHashMap;

    invoke-static {v5}, Lorg/mapdb/Caches$WeakSoftRef;->checkClosed(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapdb/LongConcurrentHashMap;

    .line 502
    .local v2, "items2":Lorg/mapdb/LongConcurrentHashMap;, "Lorg/mapdb/LongConcurrentHashMap<Lorg/mapdb/Caches$WeakSoftRef$CacheItem;>;"
    iget-boolean v5, p0, Lorg/mapdb/Caches$WeakSoftRef;->useWeakRef:Z

    if-eqz v5, :cond_0

    new-instance v1, Lorg/mapdb/Caches$WeakSoftRef$CacheWeakItem;

    invoke-direct {v1, p3, v4, p1, p2}, Lorg/mapdb/Caches$WeakSoftRef$CacheWeakItem;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;J)V

    :goto_0
    check-cast v1, Lorg/mapdb/Caches$WeakSoftRef$CacheItem;

    .line 506
    .local v1, "item":Lorg/mapdb/Caches$WeakSoftRef$CacheItem;
    iget-object v5, p0, Lorg/mapdb/Caches$WeakSoftRef;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {p1, p2}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v6

    aget-object v3, v5, v6

    .line 507
    .local v3, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 509
    :try_start_0
    invoke-virtual {v2, p1, p2, v1}, Lorg/mapdb/LongConcurrentHashMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 510
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 514
    return-void

    .line 502
    .end local v1    # "item":Lorg/mapdb/Caches$WeakSoftRef$CacheItem;
    .end local v3    # "lock":Ljava/util/concurrent/locks/Lock;
    :cond_0
    new-instance v1, Lorg/mapdb/Caches$WeakSoftRef$CacheSoftItem;

    invoke-direct {v1, p3, v4, p1, p2}, Lorg/mapdb/Caches$WeakSoftRef$CacheSoftItem;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;J)V

    goto :goto_0

    .line 512
    .restart local v1    # "item":Lorg/mapdb/Caches$WeakSoftRef$CacheItem;
    .restart local v3    # "lock":Ljava/util/concurrent/locks/Lock;
    :catchall_0
    move-exception v5

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
.end method
