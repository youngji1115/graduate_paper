.class public Lorg/mapdb/Caches$LRU;
.super Lorg/mapdb/EngineWrapper;
.source "Caches.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/Caches;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LRU"
.end annotation


# instance fields
.field protected cache:Lorg/mapdb/LongMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/LongMap",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final locks:[Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Lorg/mapdb/Engine;IZ)V
    .locals 6
    .param p1, "engine"    # Lorg/mapdb/Engine;
    .param p2, "cacheSize"    # I
    .param p3, "disableLocks"    # Z

    .prologue
    .line 51
    new-instance v0, Lorg/mapdb/LongConcurrentLRUMap;

    int-to-double v2, p2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-direct {v0, p2, v1}, Lorg/mapdb/LongConcurrentLRUMap;-><init>(II)V

    invoke-direct {p0, p1, v0, p3}, Lorg/mapdb/Caches$LRU;-><init>(Lorg/mapdb/Engine;Lorg/mapdb/LongMap;Z)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/mapdb/Engine;Lorg/mapdb/LongMap;Z)V
    .locals 4
    .param p1, "engine"    # Lorg/mapdb/Engine;
    .param p3, "disableLocks"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/Engine;",
            "Lorg/mapdb/LongMap",
            "<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "cache":Lorg/mapdb/LongMap;, "Lorg/mapdb/LongMap<Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lorg/mapdb/EngineWrapper;-><init>(Lorg/mapdb/Engine;)V

    .line 43
    const/16 v1, 0x80

    new-array v1, v1, [Ljava/util/concurrent/locks/ReentrantLock;

    iput-object v1, p0, Lorg/mapdb/Caches$LRU;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/mapdb/Caches$LRU;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 46
    iget-object v1, p0, Lorg/mapdb/Caches$LRU;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    aput-object v2, v1, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_0
    iput-object p2, p0, Lorg/mapdb/Caches$LRU;->cache:Lorg/mapdb/LongMap;

    .line 57
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/mapdb/Caches$LRU;->cache:Lorg/mapdb/LongMap;

    invoke-virtual {v0}, Lorg/mapdb/LongMap;->clear()V

    .line 162
    invoke-super {p0}, Lorg/mapdb/EngineWrapper;->clearCache()V

    .line 163
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mapdb/Caches$LRU;->cache:Lorg/mapdb/LongMap;

    .line 149
    invoke-super {p0}, Lorg/mapdb/EngineWrapper;->close()V

    .line 150
    return-void
.end method

.method public compareAndSwap(JLjava/lang/Object;Ljava/lang/Object;Lorg/mapdb/Serializer;)Z
    .locals 13
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
    .line 123
    .local p3, "expectedOldValue":Ljava/lang/Object;, "TA;"
    .local p4, "newValue":Ljava/lang/Object;, "TA;"
    .local p5, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    invoke-virtual {p0}, Lorg/mapdb/Caches$LRU;->getWrappedEngine()Lorg/mapdb/Engine;

    move-result-object v3

    .line 124
    .local v3, "engine":Lorg/mapdb/Engine;
    iget-object v4, p0, Lorg/mapdb/Caches$LRU;->cache:Lorg/mapdb/LongMap;

    invoke-static {v4}, Lorg/mapdb/Caches$LRU;->checkClosed(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapdb/LongMap;

    .line 126
    .local v2, "cache2":Lorg/mapdb/LongMap;
    iget-object v4, p0, Lorg/mapdb/Caches$LRU;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {p1, p2}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v5

    aget-object v9, v4, v5

    .line 127
    .local v9, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 129
    :try_start_0
    invoke-virtual {v2, p1, p2}, Lorg/mapdb/LongMap;->get(J)Ljava/lang/Object;

    move-result-object v10

    .line 130
    .local v10, "oldValue":Ljava/lang/Object;
    move-object/from16 v0, p3

    if-eq v10, v0, :cond_0

    if-eqz v10, :cond_1

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    :cond_0
    move-object/from16 v0, p4

    invoke-virtual {v2, p1, p2, v0}, Lorg/mapdb/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 133
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-interface {v3, p1, p2, v0, v1}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    const/4 v11, 0x1

    .line 141
    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return v11

    :cond_1
    move-wide v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 136
    :try_start_1
    invoke-interface/range {v3 .. v8}, Lorg/mapdb/Engine;->compareAndSwap(JLjava/lang/Object;Ljava/lang/Object;Lorg/mapdb/Serializer;)Z

    move-result v11

    .line 137
    .local v11, "ret":Z
    if-eqz v11, :cond_2

    move-object/from16 v0, p4

    invoke-virtual {v2, p1, p2, v0}, Lorg/mapdb/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    :cond_2
    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v10    # "oldValue":Ljava/lang/Object;
    .end local v11    # "ret":Z
    :catchall_0
    move-exception v4

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
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
    .line 109
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    iget-object v2, p0, Lorg/mapdb/Caches$LRU;->cache:Lorg/mapdb/LongMap;

    invoke-static {v2}, Lorg/mapdb/Caches$LRU;->checkClosed(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/LongMap;

    .line 111
    .local v0, "cache2":Lorg/mapdb/LongMap;, "Lorg/mapdb/LongMap<Ljava/lang/Object;>;"
    iget-object v2, p0, Lorg/mapdb/Caches$LRU;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {p1, p2}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v3

    aget-object v1, v2, v3

    .line 112
    .local v1, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 114
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lorg/mapdb/LongMap;->remove(J)Ljava/lang/Object;

    .line 115
    invoke-super {p0, p1, p2, p3}, Lorg/mapdb/EngineWrapper;->delete(JLorg/mapdb/Serializer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 119
    return-void

    .line 117
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method public get(JLorg/mapdb/Serializer;)Ljava/lang/Object;
    .locals 7
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
    .line 76
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    iget-object v4, p0, Lorg/mapdb/Caches$LRU;->cache:Lorg/mapdb/LongMap;

    invoke-static {v4}, Lorg/mapdb/Caches$LRU;->checkClosed(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/LongMap;

    .line 77
    .local v0, "cache2":Lorg/mapdb/LongMap;, "Lorg/mapdb/LongMap<Ljava/lang/Object;>;"
    invoke-virtual {v0, p1, p2}, Lorg/mapdb/LongMap;->get(J)Ljava/lang/Object;

    move-result-object v2

    .line 78
    .local v2, "ret":Ljava/lang/Object;
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 89
    .end local v2    # "ret":Ljava/lang/Object;
    .local v3, "ret":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 81
    .end local v3    # "ret":Ljava/lang/Object;
    .restart local v2    # "ret":Ljava/lang/Object;
    :cond_0
    iget-object v4, p0, Lorg/mapdb/Caches$LRU;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {p1, p2}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v5

    aget-object v1, v4, v5

    .line 82
    .local v1, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 84
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lorg/mapdb/EngineWrapper;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v2

    .line 85
    if-eqz v2, :cond_1

    .line 86
    invoke-virtual {v0, p1, p2, v2}, Lorg/mapdb/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_1
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v3, v2

    .end local v2    # "ret":Ljava/lang/Object;
    .restart local v3    # "ret":Ljava/lang/Object;
    goto :goto_0

    .end local v3    # "ret":Ljava/lang/Object;
    .restart local v2    # "ret":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
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
    .line 61
    .local p1, "value":Ljava/lang/Object;, "TA;"
    .local p2, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    invoke-super {p0, p1, p2}, Lorg/mapdb/EngineWrapper;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v2

    .line 62
    .local v2, "recid":J
    iget-object v4, p0, Lorg/mapdb/Caches$LRU;->cache:Lorg/mapdb/LongMap;

    invoke-static {v4}, Lorg/mapdb/Caches$LRU;->checkClosed(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/LongMap;

    .line 63
    .local v0, "cache2":Lorg/mapdb/LongMap;, "Lorg/mapdb/LongMap<Ljava/lang/Object;>;"
    iget-object v4, p0, Lorg/mapdb/Caches$LRU;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {v2, v3}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v5

    aget-object v1, v4, v5

    .line 64
    .local v1, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 66
    :try_start_0
    invoke-virtual {v0, v2, v3, p1}, Lorg/mapdb/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 70
    return-wide v2

    .line 68
    :catchall_0
    move-exception v4

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method

.method public rollback()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/mapdb/Caches$LRU;->cache:Lorg/mapdb/LongMap;

    invoke-static {v0}, Lorg/mapdb/Caches$LRU;->checkClosed(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/LongMap;

    invoke-virtual {v0}, Lorg/mapdb/LongMap;->clear()V

    .line 156
    invoke-super {p0}, Lorg/mapdb/EngineWrapper;->rollback()V

    .line 157
    return-void
.end method

.method public update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V
    .locals 5
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
    .line 95
    .local p3, "value":Ljava/lang/Object;, "TA;"
    .local p4, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    iget-object v2, p0, Lorg/mapdb/Caches$LRU;->cache:Lorg/mapdb/LongMap;

    invoke-static {v2}, Lorg/mapdb/Caches$LRU;->checkClosed(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/LongMap;

    .line 97
    .local v0, "cache2":Lorg/mapdb/LongMap;, "Lorg/mapdb/LongMap<Ljava/lang/Object;>;"
    iget-object v2, p0, Lorg/mapdb/Caches$LRU;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {p1, p2}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v3

    aget-object v1, v2, v3

    .line 98
    .local v1, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 100
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lorg/mapdb/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Lorg/mapdb/EngineWrapper;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 105
    return-void

    .line 103
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method
