.class public final Lorg/mapdb/AsyncWriteEngine$WriterRunnable;
.super Ljava/lang/Object;
.source "AsyncWriteEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/AsyncWriteEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "WriterRunnable"
.end annotation


# instance fields
.field protected final asyncFlushDelay:J

.field private final commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field protected final engineRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/mapdb/AsyncWriteEngine;",
            ">;"
        }
    .end annotation
.end field

.field protected final maxParkSize:I

.field protected final size:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lorg/mapdb/AsyncWriteEngine;)V
    .locals 2
    .param p1, "engine"    # Lorg/mapdb/AsyncWriteEngine;

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mapdb/AsyncWriteEngine$WriterRunnable;->engineRef:Ljava/lang/ref/WeakReference;

    .line 152
    iget v0, p1, Lorg/mapdb/AsyncWriteEngine;->asyncFlushDelay:I

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/mapdb/AsyncWriteEngine$WriterRunnable;->asyncFlushDelay:J

    .line 153
    iget-object v0, p1, Lorg/mapdb/AsyncWriteEngine;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    iput-object v0, p0, Lorg/mapdb/AsyncWriteEngine$WriterRunnable;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 154
    iget-object v0, p1, Lorg/mapdb/AsyncWriteEngine;->size:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object v0, p0, Lorg/mapdb/AsyncWriteEngine$WriterRunnable;->size:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 155
    iget v0, p1, Lorg/mapdb/AsyncWriteEngine;->maxSize:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/mapdb/AsyncWriteEngine$WriterRunnable;->maxParkSize:I

    .line 156
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 164
    :cond_0
    :try_start_0
    iget-wide v2, p0, Lorg/mapdb/AsyncWriteEngine$WriterRunnable;->asyncFlushDelay:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/mapdb/AsyncWriteEngine$WriterRunnable;->commitLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLocked()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/mapdb/AsyncWriteEngine$WriterRunnable;->size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget v3, p0, Lorg/mapdb/AsyncWriteEngine$WriterRunnable;->maxParkSize:I

    if-ge v2, v3, :cond_1

    .line 165
    const-wide/32 v2, 0xf4240

    iget-wide v4, p0, Lorg/mapdb/AsyncWriteEngine$WriterRunnable;->asyncFlushDelay:J

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 168
    :cond_1
    iget-object v2, p0, Lorg/mapdb/AsyncWriteEngine$WriterRunnable;->engineRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapdb/AsyncWriteEngine;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    .local v1, "engine":Lorg/mapdb/AsyncWriteEngine;
    if-nez v1, :cond_3

    .line 178
    iget-object v2, p0, Lorg/mapdb/AsyncWriteEngine$WriterRunnable;->engineRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "engine":Lorg/mapdb/AsyncWriteEngine;
    check-cast v1, Lorg/mapdb/AsyncWriteEngine;

    .line 179
    .restart local v1    # "engine":Lorg/mapdb/AsyncWriteEngine;
    if-eqz v1, :cond_2

    iget-object v2, v1, Lorg/mapdb/AsyncWriteEngine;->activeThreadsCount:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 181
    :cond_2
    :goto_0
    return-void

    .line 170
    :cond_3
    :try_start_1
    iget-object v2, v1, Lorg/mapdb/AsyncWriteEngine;->threadFailedException:Ljava/lang/Throwable;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_4

    .line 178
    iget-object v2, p0, Lorg/mapdb/AsyncWriteEngine$WriterRunnable;->engineRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "engine":Lorg/mapdb/AsyncWriteEngine;
    check-cast v1, Lorg/mapdb/AsyncWriteEngine;

    .line 179
    .restart local v1    # "engine":Lorg/mapdb/AsyncWriteEngine;
    if-eqz v1, :cond_2

    iget-object v2, v1, Lorg/mapdb/AsyncWriteEngine;->activeThreadsCount:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 172
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Lorg/mapdb/AsyncWriteEngine;->runWriter()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 178
    iget-object v2, p0, Lorg/mapdb/AsyncWriteEngine$WriterRunnable;->engineRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "engine":Lorg/mapdb/AsyncWriteEngine;
    check-cast v1, Lorg/mapdb/AsyncWriteEngine;

    .line 179
    .restart local v1    # "engine":Lorg/mapdb/AsyncWriteEngine;
    if-eqz v1, :cond_2

    iget-object v2, v1, Lorg/mapdb/AsyncWriteEngine;->activeThreadsCount:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 174
    .end local v1    # "engine":Lorg/mapdb/AsyncWriteEngine;
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_3
    iget-object v2, p0, Lorg/mapdb/AsyncWriteEngine$WriterRunnable;->engineRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapdb/AsyncWriteEngine;

    .line 176
    .restart local v1    # "engine":Lorg/mapdb/AsyncWriteEngine;
    if-eqz v1, :cond_5

    iput-object v0, v1, Lorg/mapdb/AsyncWriteEngine;->threadFailedException:Ljava/lang/Throwable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    :cond_5
    iget-object v2, p0, Lorg/mapdb/AsyncWriteEngine$WriterRunnable;->engineRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "engine":Lorg/mapdb/AsyncWriteEngine;
    check-cast v1, Lorg/mapdb/AsyncWriteEngine;

    .line 179
    .restart local v1    # "engine":Lorg/mapdb/AsyncWriteEngine;
    if-eqz v1, :cond_2

    iget-object v2, v1, Lorg/mapdb/AsyncWriteEngine;->activeThreadsCount:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 178
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "engine":Lorg/mapdb/AsyncWriteEngine;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/mapdb/AsyncWriteEngine$WriterRunnable;->engineRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapdb/AsyncWriteEngine;

    .line 179
    .restart local v1    # "engine":Lorg/mapdb/AsyncWriteEngine;
    if-eqz v1, :cond_6

    iget-object v3, v1, Lorg/mapdb/AsyncWriteEngine;->activeThreadsCount:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 180
    :cond_6
    throw v2
.end method
