.class public Lorg/mapdb/Caches$HashTable;
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
    name = "HashTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapdb/Caches$HashTable$HashItem;
    }
.end annotation


# instance fields
.field protected final cacheMaxSize:I

.field protected final cacheMaxSizeMask:I

.field protected final hashSalt:J

.field protected items:[Lorg/mapdb/Caches$HashTable$HashItem;

.field protected final locks:[Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Lorg/mapdb/Engine;IZ)V
    .locals 4
    .param p1, "engine"    # Lorg/mapdb/Engine;
    .param p2, "cacheMaxSize"    # I
    .param p3, "disableLocks"    # Z

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lorg/mapdb/EngineWrapper;-><init>(Lorg/mapdb/Engine;)V

    .line 178
    const/16 v1, 0x80

    new-array v1, v1, [Ljava/util/concurrent/locks/ReentrantLock;

    iput-object v1, p0, Lorg/mapdb/Caches$HashTable;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    .line 180
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/mapdb/Caches$HashTable;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 181
    iget-object v1, p0, Lorg/mapdb/Caches$HashTable;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    aput-object v2, v1, v0

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/mapdb/Caches$HashTable;->hashSalt:J

    .line 209
    new-array v1, p2, [Lorg/mapdb/Caches$HashTable$HashItem;

    iput-object v1, p0, Lorg/mapdb/Caches$HashTable;->items:[Lorg/mapdb/Caches$HashTable$HashItem;

    .line 210
    const/4 v1, 0x1

    add-int/lit8 v2, p2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x20

    shl-int/2addr v1, v2

    iput v1, p0, Lorg/mapdb/Caches$HashTable;->cacheMaxSize:I

    .line 211
    add-int/lit8 v1, p2, -0x1

    iput v1, p0, Lorg/mapdb/Caches$HashTable;->cacheMaxSizeMask:I

    .line 212
    return-void
.end method

.method private position(J)I
    .locals 3
    .param p1, "recid"    # J

    .prologue
    .line 256
    iget-wide v0, p0, Lorg/mapdb/Caches$HashTable;->hashSalt:J

    xor-long/2addr v0, p1

    invoke-static {v0, v1}, Lorg/mapdb/LongHashMap;->longHash(J)I

    move-result v0

    iget v1, p0, Lorg/mapdb/Caches$HashTable;->cacheMaxSizeMask:I

    and-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lorg/mapdb/Caches$HashTable;->items:[Lorg/mapdb/Caches$HashTable$HashItem;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 344
    invoke-super {p0}, Lorg/mapdb/EngineWrapper;->clearCache()V

    .line 345
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 328
    invoke-super {p0}, Lorg/mapdb/EngineWrapper;->close()V

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mapdb/Caches$HashTable;->items:[Lorg/mapdb/Caches$HashTable$HashItem;

    .line 331
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
    .line 278
    .local p3, "expectedOldValue":Ljava/lang/Object;, "TA;"
    .local p4, "newValue":Ljava/lang/Object;, "TA;"
    .local p5, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    invoke-direct {p0, p1, p2}, Lorg/mapdb/Caches$HashTable;->position(J)I

    move-result v11

    .line 279
    .local v11, "pos":I
    iget-object v4, p0, Lorg/mapdb/Caches$HashTable;->items:[Lorg/mapdb/Caches$HashTable$HashItem;

    invoke-static {v4}, Lorg/mapdb/Caches$HashTable;->checkClosed(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lorg/mapdb/Caches$HashTable$HashItem;

    .line 280
    .local v9, "items2":[Lorg/mapdb/Caches$HashTable$HashItem;
    invoke-virtual {p0}, Lorg/mapdb/Caches$HashTable;->getWrappedEngine()Lorg/mapdb/Engine;

    move-result-object v3

    .line 282
    .local v3, "engine":Lorg/mapdb/Engine;
    iget-object v4, p0, Lorg/mapdb/Caches$HashTable;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {p1, p2}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v5

    aget-object v10, v4, v5

    .line 283
    .local v10, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 285
    :try_start_0
    aget-object v2, v9, v11

    .line 286
    .local v2, "item":Lorg/mapdb/Caches$HashTable$HashItem;
    if-eqz v2, :cond_2

    iget-wide v4, v2, Lorg/mapdb/Caches$HashTable$HashItem;->key:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_2

    .line 288
    iget-object v4, v2, Lorg/mapdb/Caches$HashTable$HashItem;->val:Ljava/lang/Object;

    move-object/from16 v0, p3

    if-eq v4, v0, :cond_0

    iget-object v4, v2, Lorg/mapdb/Caches$HashTable$HashItem;->val:Ljava/lang/Object;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 290
    :cond_0
    new-instance v4, Lorg/mapdb/Caches$HashTable$HashItem;

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-direct {v4, p1, p2, v0, v5}, Lorg/mapdb/Caches$HashTable$HashItem;-><init>(JLjava/lang/Object;Lorg/mapdb/Caches$1;)V

    aput-object v4, v9, v11

    .line 291
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-interface {v3, p1, p2, v0, v1}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    const/4 v12, 0x1

    .line 302
    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return v12

    .line 294
    :cond_1
    const/4 v12, 0x0

    .line 302
    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :cond_2
    move-wide v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 297
    :try_start_1
    invoke-interface/range {v3 .. v8}, Lorg/mapdb/Engine;->compareAndSwap(JLjava/lang/Object;Ljava/lang/Object;Lorg/mapdb/Serializer;)Z

    move-result v12

    .line 298
    .local v12, "ret":Z
    if-eqz v12, :cond_3

    new-instance v4, Lorg/mapdb/Caches$HashTable$HashItem;

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-direct {v4, p1, p2, v0, v5}, Lorg/mapdb/Caches$HashTable$HashItem;-><init>(JLjava/lang/Object;Lorg/mapdb/Caches$1;)V

    aput-object v4, v9, v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    :cond_3
    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v2    # "item":Lorg/mapdb/Caches$HashTable$HashItem;
    .end local v12    # "ret":Z
    :catchall_0
    move-exception v4

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method

.method public delete(JLorg/mapdb/Serializer;)V
    .locals 9
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
    .line 308
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    invoke-direct {p0, p1, p2}, Lorg/mapdb/Caches$HashTable;->position(J)I

    move-result v4

    .line 309
    .local v4, "pos":I
    iget-object v5, p0, Lorg/mapdb/Caches$HashTable;->items:[Lorg/mapdb/Caches$HashTable$HashItem;

    invoke-static {v5}, Lorg/mapdb/Caches$HashTable;->checkClosed(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/mapdb/Caches$HashTable$HashItem;

    .line 310
    .local v2, "items2":[Lorg/mapdb/Caches$HashTable$HashItem;
    invoke-virtual {p0}, Lorg/mapdb/Caches$HashTable;->getWrappedEngine()Lorg/mapdb/Engine;

    move-result-object v0

    .line 312
    .local v0, "engine":Lorg/mapdb/Engine;
    iget-object v5, p0, Lorg/mapdb/Caches$HashTable;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {p1, p2}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v6

    aget-object v3, v5, v6

    .line 313
    .local v3, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 315
    :try_start_0
    aget-object v1, v2, v4

    .line 316
    .local v1, "item":Lorg/mapdb/Caches$HashTable$HashItem;
    if-eqz v1, :cond_0

    iget-wide v6, v1, Lorg/mapdb/Caches$HashTable$HashItem;->key:J

    cmp-long v5, p1, v6

    if-nez v5, :cond_0

    .line 317
    iget-object v5, p0, Lorg/mapdb/Caches$HashTable;->items:[Lorg/mapdb/Caches$HashTable$HashItem;

    const/4 v6, 0x0

    aput-object v6, v5, v4

    .line 318
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lorg/mapdb/Engine;->delete(JLorg/mapdb/Serializer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 323
    return-void

    .line 320
    .end local v1    # "item":Lorg/mapdb/Caches$HashTable$HashItem;
    :catchall_0
    move-exception v5

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
.end method

.method public get(JLorg/mapdb/Serializer;)Ljava/lang/Object;
    .locals 9
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
    .line 232
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    invoke-direct {p0, p1, p2}, Lorg/mapdb/Caches$HashTable;->position(J)I

    move-result v4

    .line 233
    .local v4, "pos":I
    iget-object v6, p0, Lorg/mapdb/Caches$HashTable;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {p1, p2}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v7

    aget-object v3, v6, v7

    .line 234
    .local v3, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 238
    :try_start_0
    iget-object v6, p0, Lorg/mapdb/Caches$HashTable;->items:[Lorg/mapdb/Caches$HashTable$HashItem;

    invoke-static {v6}, Lorg/mapdb/Caches$HashTable;->checkClosed(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/mapdb/Caches$HashTable$HashItem;

    .line 239
    .local v2, "items2":[Lorg/mapdb/Caches$HashTable$HashItem;
    aget-object v1, v2, v4

    .line 240
    .local v1, "item":Lorg/mapdb/Caches$HashTable$HashItem;
    if-eqz v1, :cond_0

    iget-wide v6, v1, Lorg/mapdb/Caches$HashTable$HashItem;->key:J

    cmp-long v6, p1, v6

    if-nez v6, :cond_0

    .line 241
    iget-object v5, v1, Lorg/mapdb/Caches$HashTable$HashItem;->val:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v5

    .line 243
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/mapdb/Caches$HashTable;->getWrappedEngine()Lorg/mapdb/Engine;

    move-result-object v0

    .line 246
    .local v0, "engine":Lorg/mapdb/Engine;
    invoke-interface {v0, p1, p2, p3}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v5

    .line 247
    .local v5, "value":Ljava/lang/Object;, "TA;"
    if-eqz v5, :cond_1

    .line 248
    new-instance v6, Lorg/mapdb/Caches$HashTable$HashItem;

    const/4 v7, 0x0

    invoke-direct {v6, p1, p2, v5, v7}, Lorg/mapdb/Caches$HashTable$HashItem;-><init>(JLjava/lang/Object;Lorg/mapdb/Caches$1;)V

    aput-object v6, v2, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    :cond_1
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v0    # "engine":Lorg/mapdb/Engine;
    .end local v1    # "item":Lorg/mapdb/Caches$HashTable$HashItem;
    .end local v2    # "items2":[Lorg/mapdb/Caches$HashTable$HashItem;
    .end local v5    # "value":Ljava/lang/Object;, "TA;"
    :catchall_0
    move-exception v6

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v6
.end method

.method public put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J
    .locals 7
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
    .line 216
    .local p1, "value":Ljava/lang/Object;, "TA;"
    .local p2, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    invoke-virtual {p0}, Lorg/mapdb/Caches$HashTable;->getWrappedEngine()Lorg/mapdb/Engine;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v2

    .line 217
    .local v2, "recid":J
    iget-object v4, p0, Lorg/mapdb/Caches$HashTable;->items:[Lorg/mapdb/Caches$HashTable$HashItem;

    invoke-static {v4}, Lorg/mapdb/Caches$HashTable;->checkClosed(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mapdb/Caches$HashTable$HashItem;

    .line 219
    .local v0, "items2":[Lorg/mapdb/Caches$HashTable$HashItem;
    iget-object v4, p0, Lorg/mapdb/Caches$HashTable;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {v2, v3}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v5

    aget-object v1, v4, v5

    .line 220
    .local v1, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 222
    :try_start_0
    invoke-direct {p0, v2, v3}, Lorg/mapdb/Caches$HashTable;->position(J)I

    move-result v4

    new-instance v5, Lorg/mapdb/Caches$HashTable$HashItem;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v3, p1, v6}, Lorg/mapdb/Caches$HashTable$HashItem;-><init>(JLjava/lang/Object;Lorg/mapdb/Caches$1;)V

    aput-object v5, v0, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 226
    return-wide v2

    .line 224
    :catchall_0
    move-exception v4

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method

.method public rollback()V
    .locals 3

    .prologue
    .line 336
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/mapdb/Caches$HashTable;->items:[Lorg/mapdb/Caches$HashTable$HashItem;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 337
    iget-object v1, p0, Lorg/mapdb/Caches$HashTable;->items:[Lorg/mapdb/Caches$HashTable$HashItem;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_0
    invoke-super {p0}, Lorg/mapdb/EngineWrapper;->rollback()V

    .line 339
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
    .line 261
    .local p3, "value":Ljava/lang/Object;, "TA;"
    .local p4, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    invoke-direct {p0, p1, p2}, Lorg/mapdb/Caches$HashTable;->position(J)I

    move-result v4

    .line 262
    .local v4, "pos":I
    iget-object v5, p0, Lorg/mapdb/Caches$HashTable;->items:[Lorg/mapdb/Caches$HashTable$HashItem;

    invoke-static {v5}, Lorg/mapdb/Caches$HashTable;->checkClosed(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/mapdb/Caches$HashTable$HashItem;

    .line 263
    .local v2, "items2":[Lorg/mapdb/Caches$HashTable$HashItem;
    new-instance v1, Lorg/mapdb/Caches$HashTable$HashItem;

    const/4 v5, 0x0

    invoke-direct {v1, p1, p2, p3, v5}, Lorg/mapdb/Caches$HashTable$HashItem;-><init>(JLjava/lang/Object;Lorg/mapdb/Caches$1;)V

    .line 264
    .local v1, "item":Lorg/mapdb/Caches$HashTable$HashItem;
    invoke-virtual {p0}, Lorg/mapdb/Caches$HashTable;->getWrappedEngine()Lorg/mapdb/Engine;

    move-result-object v0

    .line 266
    .local v0, "engine":Lorg/mapdb/Engine;
    iget-object v5, p0, Lorg/mapdb/Caches$HashTable;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {p1, p2}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v6

    aget-object v3, v5, v6

    .line 267
    .local v3, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 269
    :try_start_0
    aput-object v1, v2, v4

    .line 270
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 274
    return-void

    .line 272
    :catchall_0
    move-exception v5

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
.end method
