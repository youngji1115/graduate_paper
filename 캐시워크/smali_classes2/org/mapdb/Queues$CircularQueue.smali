.class public Lorg/mapdb/Queues$CircularQueue;
.super Lorg/mapdb/Queues$SimpleQueue;
.source "Queues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/Queues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CircularQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/mapdb/Queues$SimpleQueue",
        "<TE;>;"
    }
.end annotation


# instance fields
.field protected final headInsert:Lorg/mapdb/Atomic$Long;

.field protected final lock:Ljava/util/concurrent/locks/Lock;

.field protected final size:J


# direct methods
.method public constructor <init>(Lorg/mapdb/Engine;Lorg/mapdb/Serializer;JJJ)V
    .locals 7
    .param p1, "engine"    # Lorg/mapdb/Engine;
    .param p3, "headRecid"    # J
    .param p5, "headInsertRecid"    # J
    .param p7, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/Engine;",
            "Lorg/mapdb/Serializer",
            "<TE;>;JJJ)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/mapdb/Queues$CircularQueue;, "Lorg/mapdb/Queues$CircularQueue<TE;>;"
    .local p2, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TE;>;"
    const/4 v6, 0x0

    .line 418
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/mapdb/Queues$SimpleQueue;-><init>(Lorg/mapdb/Engine;Lorg/mapdb/Serializer;JZ)V

    .line 414
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v6}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lorg/mapdb/Queues$CircularQueue;->lock:Ljava/util/concurrent/locks/Lock;

    .line 419
    new-instance v0, Lorg/mapdb/Atomic$Long;

    invoke-direct {v0, p1, p5, p6}, Lorg/mapdb/Atomic$Long;-><init>(Lorg/mapdb/Engine;J)V

    iput-object v0, p0, Lorg/mapdb/Queues$CircularQueue;->headInsert:Lorg/mapdb/Atomic$Long;

    .line 420
    iput-wide p7, p0, Lorg/mapdb/Queues$CircularQueue;->size:J

    .line 421
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 425
    .local p0, "this":Lorg/mapdb/Queues$CircularQueue;, "Lorg/mapdb/Queues$CircularQueue<TE;>;"
    iget-object v4, p0, Lorg/mapdb/Queues$CircularQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 427
    :try_start_0
    iget-object v4, p0, Lorg/mapdb/Queues$CircularQueue;->headInsert:Lorg/mapdb/Atomic$Long;

    invoke-virtual {v4}, Lorg/mapdb/Atomic$Long;->get()J

    move-result-wide v2

    .line 428
    .local v2, "nRecid":J
    iget-object v4, p0, Lorg/mapdb/Queues$CircularQueue;->engine:Lorg/mapdb/Engine;

    iget-object v5, p0, Lorg/mapdb/Queues$CircularQueue;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v4, v2, v3, v5}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Queues$SimpleQueue$Node;

    .line 429
    .local v0, "n":Lorg/mapdb/Queues$SimpleQueue$Node;, "Lorg/mapdb/Queues$SimpleQueue$Node<TE;>;"
    new-instance v1, Lorg/mapdb/Queues$SimpleQueue$Node;

    iget-wide v4, v0, Lorg/mapdb/Queues$SimpleQueue$Node;->next:J

    invoke-direct {v1, v4, v5, p1}, Lorg/mapdb/Queues$SimpleQueue$Node;-><init>(JLjava/lang/Object;)V

    .line 430
    .end local v0    # "n":Lorg/mapdb/Queues$SimpleQueue$Node;, "Lorg/mapdb/Queues$SimpleQueue$Node<TE;>;"
    .local v1, "n":Lorg/mapdb/Queues$SimpleQueue$Node;, "Lorg/mapdb/Queues$SimpleQueue$Node<TE;>;"
    iget-object v4, p0, Lorg/mapdb/Queues$CircularQueue;->engine:Lorg/mapdb/Engine;

    iget-object v5, p0, Lorg/mapdb/Queues$CircularQueue;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v4, v2, v3, v1, v5}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 431
    iget-object v4, p0, Lorg/mapdb/Queues$CircularQueue;->headInsert:Lorg/mapdb/Atomic$Long;

    iget-wide v6, v1, Lorg/mapdb/Queues$SimpleQueue$Node;->next:J

    invoke-virtual {v4, v6, v7}, Lorg/mapdb/Atomic$Long;->set(J)V

    .line 433
    iget-object v4, p0, Lorg/mapdb/Queues$CircularQueue;->head:Lorg/mapdb/Atomic$Long;

    iget-wide v6, v1, Lorg/mapdb/Queues$SimpleQueue$Node;->next:J

    invoke-virtual {v4, v2, v3, v6, v7}, Lorg/mapdb/Atomic$Long;->compareAndSet(JJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    const/4 v4, 0x1

    .line 436
    iget-object v5, p0, Lorg/mapdb/Queues$CircularQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v4

    .end local v1    # "n":Lorg/mapdb/Queues$SimpleQueue$Node;, "Lorg/mapdb/Queues$SimpleQueue$Node<TE;>;"
    .end local v2    # "nRecid":J
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/mapdb/Queues$CircularQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method

.method public clear()V
    .locals 6

    .prologue
    .line 443
    .local p0, "this":Lorg/mapdb/Queues$CircularQueue;, "Lorg/mapdb/Queues$CircularQueue<TE;>;"
    iget-object v1, p0, Lorg/mapdb/Queues$CircularQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 445
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    int-to-long v2, v0

    :try_start_0
    iget-wide v4, p0, Lorg/mapdb/Queues$CircularQueue;->size:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 446
    invoke-virtual {p0}, Lorg/mapdb/Queues$CircularQueue;->poll()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 449
    :cond_0
    iget-object v1, p0, Lorg/mapdb/Queues$CircularQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 451
    return-void

    .line 449
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/mapdb/Queues$CircularQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public peek()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 469
    .local p0, "this":Lorg/mapdb/Queues$CircularQueue;, "Lorg/mapdb/Queues$CircularQueue<TE;>;"
    iget-object v1, p0, Lorg/mapdb/Queues$CircularQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 471
    :try_start_0
    iget-object v1, p0, Lorg/mapdb/Queues$CircularQueue;->head:Lorg/mapdb/Atomic$Long;

    invoke-virtual {v1}, Lorg/mapdb/Atomic$Long;->get()J

    move-result-wide v2

    .line 472
    .local v2, "nRecid":J
    iget-object v1, p0, Lorg/mapdb/Queues$CircularQueue;->engine:Lorg/mapdb/Engine;

    iget-object v4, p0, Lorg/mapdb/Queues$CircularQueue;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v1, v2, v3, v4}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Queues$SimpleQueue$Node;

    .line 473
    .local v0, "n":Lorg/mapdb/Queues$SimpleQueue$Node;, "Lorg/mapdb/Queues$SimpleQueue$Node<TE;>;"
    iget-object v1, v0, Lorg/mapdb/Queues$SimpleQueue$Node;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    iget-object v4, p0, Lorg/mapdb/Queues$CircularQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .end local v0    # "n":Lorg/mapdb/Queues$SimpleQueue$Node;, "Lorg/mapdb/Queues$SimpleQueue$Node<TE;>;"
    .end local v2    # "nRecid":J
    :catchall_0
    move-exception v1

    iget-object v4, p0, Lorg/mapdb/Queues$CircularQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public poll()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 455
    .local p0, "this":Lorg/mapdb/Queues$CircularQueue;, "Lorg/mapdb/Queues$CircularQueue<TE;>;"
    iget-object v1, p0, Lorg/mapdb/Queues$CircularQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 457
    :try_start_0
    iget-object v1, p0, Lorg/mapdb/Queues$CircularQueue;->head:Lorg/mapdb/Atomic$Long;

    invoke-virtual {v1}, Lorg/mapdb/Atomic$Long;->get()J

    move-result-wide v2

    .line 458
    .local v2, "nRecid":J
    iget-object v1, p0, Lorg/mapdb/Queues$CircularQueue;->engine:Lorg/mapdb/Engine;

    iget-object v4, p0, Lorg/mapdb/Queues$CircularQueue;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v1, v2, v3, v4}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Queues$SimpleQueue$Node;

    .line 459
    .local v0, "n":Lorg/mapdb/Queues$SimpleQueue$Node;, "Lorg/mapdb/Queues$SimpleQueue$Node<TE;>;"
    iget-object v1, p0, Lorg/mapdb/Queues$CircularQueue;->engine:Lorg/mapdb/Engine;

    new-instance v4, Lorg/mapdb/Queues$SimpleQueue$Node;

    iget-wide v6, v0, Lorg/mapdb/Queues$SimpleQueue$Node;->next:J

    const/4 v5, 0x0

    invoke-direct {v4, v6, v7, v5}, Lorg/mapdb/Queues$SimpleQueue$Node;-><init>(JLjava/lang/Object;)V

    iget-object v5, p0, Lorg/mapdb/Queues$CircularQueue;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 460
    iget-object v1, p0, Lorg/mapdb/Queues$CircularQueue;->head:Lorg/mapdb/Atomic$Long;

    iget-wide v4, v0, Lorg/mapdb/Queues$SimpleQueue$Node;->next:J

    invoke-virtual {v1, v4, v5}, Lorg/mapdb/Atomic$Long;->set(J)V

    .line 461
    iget-object v1, v0, Lorg/mapdb/Queues$SimpleQueue$Node;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    iget-object v4, p0, Lorg/mapdb/Queues$CircularQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .end local v0    # "n":Lorg/mapdb/Queues$SimpleQueue$Node;, "Lorg/mapdb/Queues$SimpleQueue$Node<TE;>;"
    .end local v2    # "nRecid":J
    :catchall_0
    move-exception v1

    iget-object v4, p0, Lorg/mapdb/Queues$CircularQueue;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
