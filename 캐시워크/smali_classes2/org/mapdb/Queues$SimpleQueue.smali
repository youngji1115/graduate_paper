.class public abstract Lorg/mapdb/Queues$SimpleQueue;
.super Ljava/lang/Object;
.source "Queues.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/Queues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapdb/Queues$SimpleQueue$Node;,
        Lorg/mapdb/Queues$SimpleQueue$NodeSerializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/BlockingQueue",
        "<TE;>;"
    }
.end annotation


# static fields
.field protected static final TICK:I = 0x2710


# instance fields
.field protected final engine:Lorg/mapdb/Engine;

.field protected final head:Lorg/mapdb/Atomic$Long;

.field protected final locks:[Ljava/util/concurrent/locks/ReentrantLock;

.field protected final nodeSerializer:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<",
            "Lorg/mapdb/Queues$SimpleQueue$Node",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field protected final serializer:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<TE;>;"
        }
    .end annotation
.end field

.field protected final useLocks:Z


# direct methods
.method public constructor <init>(Lorg/mapdb/Engine;Lorg/mapdb/Serializer;JZ)V
    .locals 5
    .param p1, "engine"    # Lorg/mapdb/Engine;
    .param p3, "headRecidRef"    # J
    .param p5, "useLocks"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/Engine;",
            "Lorg/mapdb/Serializer",
            "<TE;>;JZ)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue;, "Lorg/mapdb/Queues$SimpleQueue<TE;>;"
    .local p2, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lorg/mapdb/Queues$SimpleQueue;->engine:Lorg/mapdb/Engine;

    .line 84
    iput-object p2, p0, Lorg/mapdb/Queues$SimpleQueue;->serializer:Lorg/mapdb/Serializer;

    .line 85
    new-instance v1, Lorg/mapdb/Atomic$Long;

    invoke-direct {v1, p1, p3, p4}, Lorg/mapdb/Atomic$Long;-><init>(Lorg/mapdb/Engine;J)V

    iput-object v1, p0, Lorg/mapdb/Queues$SimpleQueue;->head:Lorg/mapdb/Atomic$Long;

    .line 86
    new-instance v1, Lorg/mapdb/Queues$SimpleQueue$NodeSerializer;

    invoke-direct {v1, p2}, Lorg/mapdb/Queues$SimpleQueue$NodeSerializer;-><init>(Lorg/mapdb/Serializer;)V

    iput-object v1, p0, Lorg/mapdb/Queues$SimpleQueue;->nodeSerializer:Lorg/mapdb/Serializer;

    .line 87
    iput-boolean p5, p0, Lorg/mapdb/Queues$SimpleQueue;->useLocks:Z

    .line 88
    if-eqz p5, :cond_0

    .line 89
    const/16 v1, 0x80

    new-array v1, v1, [Ljava/util/concurrent/locks/ReentrantLock;

    iput-object v1, p0, Lorg/mapdb/Queues$SimpleQueue;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/mapdb/Queues$SimpleQueue;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 91
    iget-object v1, p0, Lorg/mapdb/Queues$SimpleQueue;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    aput-object v2, v1, v0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mapdb/Queues$SimpleQueue;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    .line 97
    :cond_1
    return-void
.end method


# virtual methods
.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue;, "Lorg/mapdb/Queues$SimpleQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 187
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue;, "Lorg/mapdb/Queues$SimpleQueue<TE;>;"
    :goto_0
    invoke-virtual {p0}, Lorg/mapdb/Queues$SimpleQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lorg/mapdb/Queues$SimpleQueue;->poll()Ljava/lang/Object;

    goto :goto_0

    .line 189
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 105
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue;, "Lorg/mapdb/Queues$SimpleQueue<TE;>;"
    iget-object v0, p0, Lorg/mapdb/Queues$SimpleQueue;->engine:Lorg/mapdb/Engine;

    invoke-interface {v0}, Lorg/mapdb/Engine;->close()V

    .line 106
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 299
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue;, "Lorg/mapdb/Queues$SimpleQueue<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue;, "Lorg/mapdb/Queues$SimpleQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 264
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue;, "Lorg/mapdb/Queues$SimpleQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lorg/mapdb/Queues$SimpleQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 2
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue;, "Lorg/mapdb/Queues$SimpleQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const/4 v0, 0x0

    .line 270
    .local v0, "counter":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 271
    invoke-virtual {p0}, Lorg/mapdb/Queues$SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    .line 272
    .local v1, "e":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_1

    .line 277
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    return v0

    .line 274
    .restart local v1    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 275
    add-int/lit8 v0, v0, 0x1

    .line 276
    goto :goto_0
.end method

.method public element()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue;, "Lorg/mapdb/Queues$SimpleQueue<TE;>;"
    invoke-virtual {p0}, Lorg/mapdb/Queues$SimpleQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 203
    .local v0, "ret":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 204
    :cond_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 287
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue;, "Lorg/mapdb/Queues$SimpleQueue<TE;>;"
    invoke-virtual {p0}, Lorg/mapdb/Queues$SimpleQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue;, "Lorg/mapdb/Queues$SimpleQueue<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue;, "Lorg/mapdb/Queues$SimpleQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mapdb/Queues$SimpleQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 213
    :goto_0
    return v1

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "ee":Ljava/lang/IllegalStateException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 8
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue;, "Lorg/mapdb/Queues$SimpleQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x1

    .line 227
    invoke-virtual {p0, p1}, Lorg/mapdb/Queues$SimpleQueue;->offer(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v2

    .line 228
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    add-long v0, v4, v6

    .line 229
    .local v0, "target":J
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v3, v0, v4

    if-ltz v3, :cond_2

    .line 230
    invoke-virtual {p0, p1}, Lorg/mapdb/Queues$SimpleQueue;->offer(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 232
    const-wide/16 v4, 0x0

    const/16 v3, 0x2710

    invoke-static {v4, v5, v3}, Ljava/lang/Thread;->sleep(JI)V

    goto :goto_1

    .line 235
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue;, "Lorg/mapdb/Queues$SimpleQueue<TE;>;"
    iget-object v3, p0, Lorg/mapdb/Queues$SimpleQueue;->head:Lorg/mapdb/Atomic$Long;

    invoke-virtual {v3}, Lorg/mapdb/Atomic$Long;->get()J

    move-result-wide v0

    .line 112
    .local v0, "head2":J
    iget-boolean v3, p0, Lorg/mapdb/Queues$SimpleQueue;->useLocks:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/mapdb/Queues$SimpleQueue;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {v0, v1}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 114
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/mapdb/Queues$SimpleQueue;->engine:Lorg/mapdb/Engine;

    iget-object v4, p0, Lorg/mapdb/Queues$SimpleQueue;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v3, v0, v1, v4}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapdb/Queues$SimpleQueue$Node;

    .line 115
    .local v2, "n":Lorg/mapdb/Queues$SimpleQueue$Node;
    sget-object v3, Lorg/mapdb/Queues$SimpleQueue$Node;->EMPTY:Lorg/mapdb/Queues$SimpleQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_2

    .line 116
    const/4 v3, 0x0

    .line 119
    iget-boolean v4, p0, Lorg/mapdb/Queues$SimpleQueue;->useLocks:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/mapdb/Queues$SimpleQueue;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {v0, v1}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    :goto_0
    return-object v3

    .line 117
    :cond_2
    :try_start_1
    iget-object v3, v2, Lorg/mapdb/Queues$SimpleQueue$Node;->value:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    iget-boolean v4, p0, Lorg/mapdb/Queues$SimpleQueue;->useLocks:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/mapdb/Queues$SimpleQueue;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {v0, v1}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v2    # "n":Lorg/mapdb/Queues$SimpleQueue$Node;
    :catchall_0
    move-exception v3

    iget-boolean v4, p0, Lorg/mapdb/Queues$SimpleQueue;->useLocks:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/mapdb/Queues$SimpleQueue;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {v0, v1}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_3
    throw v3
.end method

.method public poll()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue;, "Lorg/mapdb/Queues$SimpleQueue<TE;>;"
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/mapdb/Queues$SimpleQueue;->head:Lorg/mapdb/Atomic$Long;

    invoke-virtual {v3}, Lorg/mapdb/Atomic$Long;->get()J

    move-result-wide v0

    .line 128
    .local v0, "head2":J
    iget-boolean v3, p0, Lorg/mapdb/Queues$SimpleQueue;->useLocks:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/mapdb/Queues$SimpleQueue;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {v0, v1}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 130
    :cond_1
    :try_start_0
    iget-object v3, p0, Lorg/mapdb/Queues$SimpleQueue;->engine:Lorg/mapdb/Engine;

    iget-object v4, p0, Lorg/mapdb/Queues$SimpleQueue;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v3, v0, v1, v4}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapdb/Queues$SimpleQueue$Node;

    .line 131
    .local v2, "n":Lorg/mapdb/Queues$SimpleQueue$Node;
    sget-object v3, Lorg/mapdb/Queues$SimpleQueue$Node;->EMPTY:Lorg/mapdb/Queues$SimpleQueue$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_3

    .line 132
    const/4 v3, 0x0

    .line 146
    iget-boolean v4, p0, Lorg/mapdb/Queues$SimpleQueue;->useLocks:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/mapdb/Queues$SimpleQueue;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {v0, v1}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_2
    :goto_1
    return-object v3

    .line 135
    :cond_3
    :try_start_1
    iget-object v3, p0, Lorg/mapdb/Queues$SimpleQueue;->head:Lorg/mapdb/Atomic$Long;

    iget-wide v4, v2, Lorg/mapdb/Queues$SimpleQueue$Node;->next:J

    invoke-virtual {v3, v0, v1, v4, v5}, Lorg/mapdb/Atomic$Long;->compareAndSet(JJ)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 137
    iget-boolean v3, p0, Lorg/mapdb/Queues$SimpleQueue;->useLocks:Z

    if-eqz v3, :cond_4

    .line 138
    iget-object v3, p0, Lorg/mapdb/Queues$SimpleQueue;->engine:Lorg/mapdb/Engine;

    iget-object v4, p0, Lorg/mapdb/Queues$SimpleQueue;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v3, v0, v1, v4}, Lorg/mapdb/Engine;->delete(JLorg/mapdb/Serializer;)V

    .line 142
    :goto_2
    iget-object v3, v2, Lorg/mapdb/Queues$SimpleQueue$Node;->value:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    iget-boolean v4, p0, Lorg/mapdb/Queues$SimpleQueue;->useLocks:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/mapdb/Queues$SimpleQueue;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {v0, v1}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 140
    :cond_4
    :try_start_2
    iget-object v3, p0, Lorg/mapdb/Queues$SimpleQueue;->engine:Lorg/mapdb/Engine;

    sget-object v4, Lorg/mapdb/Queues$SimpleQueue$Node;->EMPTY:Lorg/mapdb/Queues$SimpleQueue$Node;

    iget-object v5, p0, Lorg/mapdb/Queues$SimpleQueue;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v3, v0, v1, v4, v5}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 146
    .end local v2    # "n":Lorg/mapdb/Queues$SimpleQueue$Node;
    :catchall_0
    move-exception v3

    iget-boolean v4, p0, Lorg/mapdb/Queues$SimpleQueue;->useLocks:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/mapdb/Queues$SimpleQueue;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {v0, v1}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_5
    throw v3

    .restart local v2    # "n":Lorg/mapdb/Queues$SimpleQueue$Node;
    :cond_6
    iget-boolean v3, p0, Lorg/mapdb/Queues$SimpleQueue;->useLocks:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/mapdb/Queues$SimpleQueue;->locks:[Ljava/util/concurrent/locks/ReentrantLock;

    invoke-static {v0, v1}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 9
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue;, "Lorg/mapdb/Queues$SimpleQueue<TE;>;"
    invoke-virtual {p0}, Lorg/mapdb/Queues$SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 251
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 259
    :goto_0
    return-object v1

    .line 252
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    add-long v2, v4, v6

    .line 253
    .local v2, "target":J
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    .line 254
    const-wide/16 v4, 0x0

    const/16 v1, 0x2710

    invoke-static {v4, v5, v1}, Ljava/lang/Thread;->sleep(JI)V

    .line 255
    invoke-virtual {p0}, Lorg/mapdb/Queues$SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 257
    goto :goto_0

    .line 259
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue;, "Lorg/mapdb/Queues$SimpleQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    :goto_0
    invoke-virtual {p0, p1}, Lorg/mapdb/Queues$SimpleQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    const-wide/16 v0, 0x0

    const/16 v2, 0x2710

    invoke-static {v0, v1, v2}, Ljava/lang/Thread;->sleep(JI)V

    goto :goto_0

    .line 223
    :cond_0
    return-void
.end method

.method public remainingCapacity()I
    .locals 1

    .prologue
    .line 282
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue;, "Lorg/mapdb/Queues$SimpleQueue<TE;>;"
    const v0, 0x7fffffff

    return v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue;, "Lorg/mapdb/Queues$SimpleQueue<TE;>;"
    invoke-virtual {p0}, Lorg/mapdb/Queues$SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 195
    .local v0, "ret":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 196
    :cond_0
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 320
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue;, "Lorg/mapdb/Queues$SimpleQueue<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 335
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue;, "Lorg/mapdb/Queues$SimpleQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue;, "Lorg/mapdb/Queues$SimpleQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 293
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue;, "Lorg/mapdb/Queues$SimpleQueue<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public take()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 240
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue;, "Lorg/mapdb/Queues$SimpleQueue<TE;>;"
    invoke-virtual {p0}, Lorg/mapdb/Queues$SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 241
    .local v0, "e":Ljava/lang/Object;, "TE;"
    :goto_0
    if-nez v0, :cond_0

    .line 242
    const-wide/16 v2, 0x0

    const/16 v1, 0x2710

    invoke-static {v2, v3, v1}, Ljava/lang/Thread;->sleep(JI)V

    .line 243
    invoke-virtual {p0}, Lorg/mapdb/Queues$SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 245
    :cond_0
    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 309
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue;, "Lorg/mapdb/Queues$SimpleQueue<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue;, "Lorg/mapdb/Queues$SimpleQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
