.class public Lorg/mapdb/AsyncWriteEngine;
.super Lorg/mapdb/EngineWrapper;
.source "AsyncWriteEngine.java"

# interfaces
.implements Lorg/mapdb/Engine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapdb/AsyncWriteEngine$WriterRunnable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final TOMBSTONE:Ljava/lang/Object;

.field protected static final threadCounter:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field protected final action:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field protected final activeThreadsCount:Ljava/util/concurrent/CountDownLatch;

.field protected final asyncFlushDelay:I

.field protected volatile closeInProgress:Z

.field protected final commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field protected final maxSize:I

.field protected final size:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected volatile threadFailedException:Ljava/lang/Throwable;

.field protected final writeCache:Lorg/mapdb/LongConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/LongConcurrentHashMap",
            "<",
            "Lorg/mapdb/Fun$Tuple2",
            "<",
            "Ljava/lang/Object;",
            "Lorg/mapdb/Serializer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-class v0, Lorg/mapdb/AsyncWriteEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/mapdb/AsyncWriteEngine;->$assertionsDisabled:Z

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lorg/mapdb/AsyncWriteEngine;->threadCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/mapdb/AsyncWriteEngine;->TOMBSTONE:Ljava/lang/Object;

    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/mapdb/Engine;)V
    .locals 3
    .param p1, "engine"    # Lorg/mapdb/Engine;

    .prologue
    .line 137
    const/16 v0, 0x64

    const/16 v1, 0x7d00

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/mapdb/AsyncWriteEngine;-><init>(Lorg/mapdb/Engine;IILjava/util/concurrent/Executor;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Lorg/mapdb/Engine;IILjava/util/concurrent/Executor;)V
    .locals 4
    .param p1, "engine"    # Lorg/mapdb/Engine;
    .param p2, "_asyncFlushDelay"    # I
    .param p3, "queueSize"    # I
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 130
    invoke-direct {p0, p1}, Lorg/mapdb/EngineWrapper;-><init>(Lorg/mapdb/Engine;)V

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/mapdb/AsyncWriteEngine;->size:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 96
    new-instance v0, Lorg/mapdb/LongConcurrentHashMap;

    invoke-direct {v0}, Lorg/mapdb/LongConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/mapdb/AsyncWriteEngine;->writeCache:Lorg/mapdb/LongConcurrentHashMap;

    .line 102
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0, v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lorg/mapdb/AsyncWriteEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 105
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/mapdb/AsyncWriteEngine;->activeThreadsCount:Ljava/util/concurrent/CountDownLatch;

    .line 108
    iput-object v3, p0, Lorg/mapdb/AsyncWriteEngine;->threadFailedException:Ljava/lang/Throwable;

    .line 111
    iput-boolean v2, p0, Lorg/mapdb/AsyncWriteEngine;->closeInProgress:Z

    .line 116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mapdb/AsyncWriteEngine;->action:Ljava/util/concurrent/atomic/AtomicReference;

    .line 131
    iput p2, p0, Lorg/mapdb/AsyncWriteEngine;->asyncFlushDelay:I

    .line 132
    iput p3, p0, Lorg/mapdb/AsyncWriteEngine;->maxSize:I

    .line 133
    invoke-virtual {p0, p4}, Lorg/mapdb/AsyncWriteEngine;->startThreads(Ljava/util/concurrent/Executor;)V

    .line 134
    return-void
.end method

.method static synthetic access$001(Lorg/mapdb/AsyncWriteEngine;JLorg/mapdb/Serializer;)V
    .locals 1
    .param p0, "x0"    # Lorg/mapdb/AsyncWriteEngine;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lorg/mapdb/Serializer;

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3}, Lorg/mapdb/EngineWrapper;->delete(JLorg/mapdb/Serializer;)V

    return-void
.end method

.method static synthetic access$101(Lorg/mapdb/AsyncWriteEngine;JLjava/lang/Object;Lorg/mapdb/Serializer;)V
    .locals 1
    .param p0, "x0"    # Lorg/mapdb/AsyncWriteEngine;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Lorg/mapdb/Serializer;

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Lorg/mapdb/EngineWrapper;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    return-void
.end method

.method static synthetic access$201(Lorg/mapdb/AsyncWriteEngine;)V
    .locals 0
    .param p0, "x0"    # Lorg/mapdb/AsyncWriteEngine;

    .prologue
    .line 76
    invoke-super {p0}, Lorg/mapdb/EngineWrapper;->commit()V

    return-void
.end method

.method static synthetic access$301(Lorg/mapdb/AsyncWriteEngine;)V
    .locals 0
    .param p0, "x0"    # Lorg/mapdb/AsyncWriteEngine;

    .prologue
    .line 76
    invoke-super {p0}, Lorg/mapdb/EngineWrapper;->rollback()V

    return-void
.end method

.method static synthetic access$401(Lorg/mapdb/AsyncWriteEngine;)V
    .locals 0
    .param p0, "x0"    # Lorg/mapdb/AsyncWriteEngine;

    .prologue
    .line 76
    invoke-super {p0}, Lorg/mapdb/EngineWrapper;->compact()V

    return-void
.end method

.method static synthetic access$501(Lorg/mapdb/AsyncWriteEngine;)V
    .locals 0
    .param p0, "x0"    # Lorg/mapdb/AsyncWriteEngine;

    .prologue
    .line 76
    invoke-super {p0}, Lorg/mapdb/EngineWrapper;->close()V

    return-void
.end method


# virtual methods
.method protected checkState()V
    .locals 3

    .prologue
    .line 261
    iget-boolean v0, p0, Lorg/mapdb/AsyncWriteEngine;->closeInProgress:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "db has been closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    iget-object v0, p0, Lorg/mapdb/AsyncWriteEngine;->threadFailedException:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Writer thread failed"

    iget-object v2, p0, Lorg/mapdb/AsyncWriteEngine;->threadFailedException:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 263
    :cond_1
    return-void
.end method

.method public clearCache()V
    .locals 4

    .prologue
    .line 516
    iget-object v1, p0, Lorg/mapdb/AsyncWriteEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 519
    :try_start_0
    invoke-virtual {p0}, Lorg/mapdb/AsyncWriteEngine;->checkState()V

    .line 521
    :goto_0
    iget-object v1, p0, Lorg/mapdb/AsyncWriteEngine;->writeCache:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v1}, Lorg/mapdb/LongConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 522
    invoke-virtual {p0}, Lorg/mapdb/AsyncWriteEngine;->checkState()V

    .line 523
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 525
    :catch_0
    move-exception v0

    .line 526
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/mapdb/AsyncWriteEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/mapdb/AsyncWriteEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 530
    invoke-super {p0}, Lorg/mapdb/EngineWrapper;->clearCache()V

    .line 531
    return-void
.end method

.method public close()V
    .locals 5

    .prologue
    .line 422
    iget-object v1, p0, Lorg/mapdb/AsyncWriteEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 425
    :try_start_0
    iget-boolean v1, p0, Lorg/mapdb/AsyncWriteEngine;->closeInProgress:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 445
    iget-object v1, p0, Lorg/mapdb/AsyncWriteEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 447
    :goto_0
    return-void

    .line 426
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/mapdb/AsyncWriteEngine;->checkState()V

    .line 427
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mapdb/AsyncWriteEngine;->closeInProgress:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 430
    :try_start_2
    iget-object v1, p0, Lorg/mapdb/AsyncWriteEngine;->action:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 431
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 440
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-static {p0}, Lorg/mapdb/AsyncWriteEngine;->access$501(Lorg/mapdb/AsyncWriteEngine;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 445
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lorg/mapdb/AsyncWriteEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1

    .line 435
    :cond_1
    :try_start_5
    iget-object v1, p0, Lorg/mapdb/AsyncWriteEngine;->activeThreadsCount:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x3e8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 440
    :try_start_6
    invoke-static {p0}, Lorg/mapdb/AsyncWriteEngine;->access$501(Lorg/mapdb/AsyncWriteEngine;)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 445
    iget-object v1, p0, Lorg/mapdb/AsyncWriteEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0
.end method

.method public commit()V
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/mapdb/AsyncWriteEngine;->waitForAction(I)V

    .line 482
    return-void
.end method

.method public compact()V
    .locals 1

    .prologue
    .line 504
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/mapdb/AsyncWriteEngine;->waitForAction(I)V

    .line 505
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
    .line 381
    .local p3, "expectedOldValue":Ljava/lang/Object;, "TA;"
    .local p4, "newValue":Ljava/lang/Object;, "TA;"
    .local p5, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    const/4 v3, 0x0

    .line 383
    .local v3, "size2":I
    iget-object v4, p0, Lorg/mapdb/AsyncWriteEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 385
    :try_start_0
    invoke-virtual {p0}, Lorg/mapdb/AsyncWriteEngine;->checkState()V

    .line 386
    iget-object v4, p0, Lorg/mapdb/AsyncWriteEngine;->writeCache:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v4, p1, p2}, Lorg/mapdb/LongConcurrentHashMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Fun$Tuple2;

    .line 387
    .local v0, "existing":Lorg/mapdb/Fun$Tuple2;, "Lorg/mapdb/Fun$Tuple2<Ljava/lang/Object;Lorg/mapdb/Serializer;>;"
    if-eqz v0, :cond_3

    iget-object v1, v0, Lorg/mapdb/Fun$Tuple2;->a:Ljava/lang/Object;

    .line 388
    .local v1, "oldValue":Ljava/lang/Object;, "TA;"
    :goto_0
    if-eq v1, p3, :cond_0

    if-eqz v1, :cond_4

    invoke-virtual {v1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 389
    :cond_0
    iget-object v4, p0, Lorg/mapdb/AsyncWriteEngine;->writeCache:Lorg/mapdb/LongConcurrentHashMap;

    new-instance v5, Lorg/mapdb/Fun$Tuple2;

    invoke-direct {v5, p4, p5}, Lorg/mapdb/Fun$Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p1, p2, v5}, Lorg/mapdb/LongConcurrentHashMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 390
    iget-object v4, p0, Lorg/mapdb/AsyncWriteEngine;->size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 391
    :cond_1
    const/4 v2, 0x1

    .line 396
    .local v2, "ret":Z
    :goto_1
    iget-object v4, p0, Lorg/mapdb/AsyncWriteEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 398
    iget v4, p0, Lorg/mapdb/AsyncWriteEngine;->maxSize:I

    if-le v3, v4, :cond_2

    .line 399
    invoke-virtual {p0}, Lorg/mapdb/AsyncWriteEngine;->clearCache()V

    .line 400
    :cond_2
    return v2

    .line 387
    .end local v1    # "oldValue":Ljava/lang/Object;, "TA;"
    .end local v2    # "ret":Z
    :cond_3
    :try_start_1
    invoke-super {p0, p1, p2, p5}, Lorg/mapdb/EngineWrapper;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 393
    .restart local v1    # "oldValue":Ljava/lang/Object;, "TA;"
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "ret":Z
    goto :goto_1

    .line 396
    .end local v0    # "existing":Lorg/mapdb/Fun$Tuple2;, "Lorg/mapdb/Fun$Tuple2<Ljava/lang/Object;Lorg/mapdb/Serializer;>;"
    .end local v1    # "oldValue":Ljava/lang/Object;, "TA;"
    .end local v2    # "ret":Z
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/mapdb/AsyncWriteEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v4
.end method

.method public delete(JLorg/mapdb/Serializer;)V
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
    .line 411
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    sget-object v0, Lorg/mapdb/AsyncWriteEngine;->TOMBSTONE:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/mapdb/AsyncWriteEngine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 412
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
    .line 324
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    iget-object v1, p0, Lorg/mapdb/AsyncWriteEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 326
    :try_start_0
    invoke-virtual {p0}, Lorg/mapdb/AsyncWriteEngine;->checkState()V

    .line 327
    iget-object v1, p0, Lorg/mapdb/AsyncWriteEngine;->writeCache:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Lorg/mapdb/LongConcurrentHashMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Fun$Tuple2;

    .line 328
    .local v0, "item":Lorg/mapdb/Fun$Tuple2;, "Lorg/mapdb/Fun$Tuple2<Ljava/lang/Object;Lorg/mapdb/Serializer;>;"
    if-eqz v0, :cond_1

    .line 329
    iget-object v1, v0, Lorg/mapdb/Fun$Tuple2;->a:Ljava/lang/Object;

    sget-object v2, Lorg/mapdb/AsyncWriteEngine;->TOMBSTONE:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 335
    iget-object v2, p0, Lorg/mapdb/AsyncWriteEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_0
    return-object v1

    .line 330
    :cond_0
    :try_start_1
    iget-object v1, v0, Lorg/mapdb/Fun$Tuple2;->a:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    iget-object v2, p0, Lorg/mapdb/AsyncWriteEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .line 333
    :cond_1
    :try_start_2
    invoke-super {p0, p1, p2, p3}, Lorg/mapdb/EngineWrapper;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 335
    iget-object v2, p0, Lorg/mapdb/AsyncWriteEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .end local v0    # "item":Lorg/mapdb/Fun$Tuple2;, "Lorg/mapdb/Fun$Tuple2<Ljava/lang/Object;Lorg/mapdb/Serializer;>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/mapdb/AsyncWriteEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
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
    .line 296
    .local p1, "value":Ljava/lang/Object;, "TA;"
    .local p2, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    const/4 v2, 0x0

    .line 297
    .local v2, "size2":I
    const-wide/16 v0, 0x0

    .line 298
    .local v0, "recid":J
    iget-object v3, p0, Lorg/mapdb/AsyncWriteEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 300
    :try_start_0
    invoke-virtual {p0}, Lorg/mapdb/AsyncWriteEngine;->checkState()V

    .line 301
    invoke-virtual {p0}, Lorg/mapdb/AsyncWriteEngine;->preallocate()J

    move-result-wide v0

    .line 302
    iget-object v3, p0, Lorg/mapdb/AsyncWriteEngine;->writeCache:Lorg/mapdb/LongConcurrentHashMap;

    new-instance v4, Lorg/mapdb/Fun$Tuple2;

    invoke-direct {v4, p1, p2}, Lorg/mapdb/Fun$Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v0, v1, v4}, Lorg/mapdb/LongConcurrentHashMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 303
    iget-object v3, p0, Lorg/mapdb/AsyncWriteEngine;->size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 305
    :cond_0
    iget-object v3, p0, Lorg/mapdb/AsyncWriteEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 307
    iget v3, p0, Lorg/mapdb/AsyncWriteEngine;->maxSize:I

    if-le v2, v3, :cond_1

    .line 308
    invoke-virtual {p0}, Lorg/mapdb/AsyncWriteEngine;->clearCache()V

    .line 309
    :cond_1
    return-wide v0

    .line 305
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/mapdb/AsyncWriteEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v3
.end method

.method public rollback()V
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/mapdb/AsyncWriteEngine;->waitForAction(I)V

    .line 494
    return-void
.end method

.method protected runWriter()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v5, p0, Lorg/mapdb/AsyncWriteEngine;->action:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/CountDownLatch;

    .line 209
    .local v4, "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_0
    iget-object v5, p0, Lorg/mapdb/AsyncWriteEngine;->writeCache:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v5}, Lorg/mapdb/LongConcurrentHashMap;->longMapIterator()Lorg/mapdb/LongMap$LongMapIterator;

    move-result-object v3

    .line 210
    .local v3, "iter":Lorg/mapdb/LongMap$LongMapIterator;, "Lorg/mapdb/LongMap$LongMapIterator<Lorg/mapdb/Fun$Tuple2<Ljava/lang/Object;Lorg/mapdb/Serializer;>;>;"
    :cond_1
    :goto_0
    invoke-interface {v3}, Lorg/mapdb/LongMap$LongMapIterator;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 212
    invoke-interface {v3}, Lorg/mapdb/LongMap$LongMapIterator;->key()J

    move-result-wide v6

    .line 213
    .local v6, "recid":J
    invoke-interface {v3}, Lorg/mapdb/LongMap$LongMapIterator;->value()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapdb/Fun$Tuple2;

    .line 214
    .local v2, "item":Lorg/mapdb/Fun$Tuple2;, "Lorg/mapdb/Fun$Tuple2<Ljava/lang/Object;Lorg/mapdb/Serializer;>;"
    if-eqz v2, :cond_1

    .line 215
    iget-object v5, v2, Lorg/mapdb/Fun$Tuple2;->a:Ljava/lang/Object;

    sget-object v8, Lorg/mapdb/AsyncWriteEngine;->TOMBSTONE:Ljava/lang/Object;

    if-ne v5, v8, :cond_2

    .line 217
    iget-object v5, v2, Lorg/mapdb/Fun$Tuple2;->b:Ljava/lang/Object;

    check-cast v5, Lorg/mapdb/Serializer;

    invoke-static {p0, v6, v7, v5}, Lorg/mapdb/AsyncWriteEngine;->access$001(Lorg/mapdb/AsyncWriteEngine;JLorg/mapdb/Serializer;)V

    .line 223
    :goto_1
    iget-object v5, p0, Lorg/mapdb/AsyncWriteEngine;->writeCache:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v5, v6, v7, v2}, Lorg/mapdb/LongConcurrentHashMap;->remove(JLjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 224
    iget-object v5, p0, Lorg/mapdb/AsyncWriteEngine;->size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    .line 220
    :cond_2
    iget-object v8, v2, Lorg/mapdb/Fun$Tuple2;->a:Ljava/lang/Object;

    iget-object v5, v2, Lorg/mapdb/Fun$Tuple2;->b:Ljava/lang/Object;

    check-cast v5, Lorg/mapdb/Serializer;

    invoke-static {p0, v6, v7, v8, v5}, Lorg/mapdb/AsyncWriteEngine;->access$101(Lorg/mapdb/AsyncWriteEngine;JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    goto :goto_1

    .line 227
    .end local v2    # "item":Lorg/mapdb/Fun$Tuple2;, "Lorg/mapdb/Fun$Tuple2<Ljava/lang/Object;Lorg/mapdb/Serializer;>;"
    .end local v6    # "recid":J
    :cond_3
    if-eqz v4, :cond_4

    iget-object v5, p0, Lorg/mapdb/AsyncWriteEngine;->writeCache:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v5}, Lorg/mapdb/LongConcurrentHashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 233
    :cond_4
    if-eqz v4, :cond_7

    .line 234
    sget-boolean v5, Lorg/mapdb/AsyncWriteEngine;->$assertionsDisabled:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lorg/mapdb/AsyncWriteEngine;->writeCache:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v5}, Lorg/mapdb/LongConcurrentHashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 236
    :cond_5
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    .line 237
    .local v0, "count":J
    const-wide/16 v8, 0x0

    cmp-long v5, v0, v8

    if-nez v5, :cond_6

    .line 238
    const/4 v5, 0x0

    .line 253
    .end local v0    # "count":J
    :goto_2
    return v5

    .line 239
    .restart local v0    # "count":J
    :cond_6
    const-wide/16 v8, 0x1

    cmp-long v5, v0, v8

    if-nez v5, :cond_8

    .line 240
    invoke-static {p0}, Lorg/mapdb/AsyncWriteEngine;->access$201(Lorg/mapdb/AsyncWriteEngine;)V

    .line 241
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 253
    .end local v0    # "count":J
    :cond_7
    :goto_3
    const/4 v5, 0x1

    goto :goto_2

    .line 242
    .restart local v0    # "count":J
    :cond_8
    const-wide/16 v8, 0x2

    cmp-long v5, v0, v8

    if-nez v5, :cond_9

    .line 243
    invoke-static {p0}, Lorg/mapdb/AsyncWriteEngine;->access$301(Lorg/mapdb/AsyncWriteEngine;)V

    .line 244
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 245
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_3

    .line 246
    :cond_9
    const-wide/16 v8, 0x3

    cmp-long v5, v0, v8

    if-nez v5, :cond_a

    .line 247
    invoke-static {p0}, Lorg/mapdb/AsyncWriteEngine;->access$401(Lorg/mapdb/AsyncWriteEngine;)V

    .line 248
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 249
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 250
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_3

    .line 251
    :cond_a
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
.end method

.method protected startThreads(Ljava/util/concurrent/Executor;)V
    .locals 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 191
    new-instance v2, Lorg/mapdb/AsyncWriteEngine$WriterRunnable;

    invoke-direct {v2, p0}, Lorg/mapdb/AsyncWriteEngine$WriterRunnable;-><init>(Lorg/mapdb/AsyncWriteEngine;)V

    .line 193
    .local v2, "writerRun":Ljava/lang/Runnable;
    if-eqz p1, :cond_0

    .line 194
    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 201
    :goto_0
    return-void

    .line 197
    :cond_0
    sget-object v4, Lorg/mapdb/AsyncWriteEngine;->threadCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 198
    .local v0, "threadNum":J
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MapDB writer #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 199
    .local v3, "writerThread":Ljava/lang/Thread;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 200
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
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
    .line 359
    .local p3, "value":Ljava/lang/Object;, "TA;"
    .local p4, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    const/4 v0, 0x0

    .line 360
    .local v0, "size2":I
    iget-object v1, p0, Lorg/mapdb/AsyncWriteEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 362
    :try_start_0
    invoke-virtual {p0}, Lorg/mapdb/AsyncWriteEngine;->checkState()V

    .line 363
    iget-object v1, p0, Lorg/mapdb/AsyncWriteEngine;->writeCache:Lorg/mapdb/LongConcurrentHashMap;

    new-instance v2, Lorg/mapdb/Fun$Tuple2;

    invoke-direct {v2, p3, p4}, Lorg/mapdb/Fun$Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, p2, v2}, Lorg/mapdb/LongConcurrentHashMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 364
    iget-object v1, p0, Lorg/mapdb/AsyncWriteEngine;->size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 366
    :cond_0
    iget-object v1, p0, Lorg/mapdb/AsyncWriteEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 368
    iget v1, p0, Lorg/mapdb/AsyncWriteEngine;->maxSize:I

    if-le v0, v1, :cond_1

    .line 369
    invoke-virtual {p0}, Lorg/mapdb/AsyncWriteEngine;->clearCache()V

    .line 370
    :cond_1
    return-void

    .line 366
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/mapdb/AsyncWriteEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method

.method protected waitForAction(I)V
    .locals 5
    .param p1, "actionNumber"    # I

    .prologue
    .line 452
    iget-object v2, p0, Lorg/mapdb/AsyncWriteEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 454
    :try_start_0
    invoke-virtual {p0}, Lorg/mapdb/AsyncWriteEngine;->checkState()V

    .line 456
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 457
    .local v1, "msg":Ljava/util/concurrent/CountDownLatch;
    iget-object v2, p0, Lorg/mapdb/AsyncWriteEngine;->action:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 458
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    .end local v1    # "msg":Ljava/util/concurrent/CountDownLatch;
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/mapdb/AsyncWriteEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v2

    .line 461
    .restart local v1    # "msg":Ljava/util/concurrent/CountDownLatch;
    :cond_0
    :goto_0
    const-wide/16 v2, 0x64

    :try_start_2
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 462
    invoke-virtual {p0}, Lorg/mapdb/AsyncWriteEngine;->checkState()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 467
    :cond_1
    iget-object v2, p0, Lorg/mapdb/AsyncWriteEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 469
    return-void
.end method
