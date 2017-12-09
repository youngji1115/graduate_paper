.class public Lorg/mapdb/HTreeMap$ExpireRunnable;
.super Ljava/lang/Object;
.source "HTreeMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/HTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ExpireRunnable"
.end annotation


# instance fields
.field final mapRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/mapdb/HTreeMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mapdb/HTreeMap;)V
    .locals 1
    .param p1, "map"    # Lorg/mapdb/HTreeMap;

    .prologue
    .line 1508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1509
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mapdb/HTreeMap$ExpireRunnable;->mapRef:Ljava/lang/ref/WeakReference;

    .line 1510
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x2

    .line 1514
    const/4 v3, 0x0

    .line 1518
    .local v3, "pause":Z
    :goto_0
    if-eqz v3, :cond_0

    .line 1519
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 1523
    :cond_0
    iget-object v4, p0, Lorg/mapdb/HTreeMap$ExpireRunnable;->mapRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapdb/HTreeMap;

    .line 1524
    .local v2, "map":Lorg/mapdb/HTreeMap;
    if-eqz v2, :cond_1

    iget-object v4, v2, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    invoke-interface {v4}, Lorg/mapdb/Engine;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v2, Lorg/mapdb/HTreeMap;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->getCount()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    cmp-long v4, v4, v8

    if-gez v4, :cond_3

    .line 1544
    :cond_1
    iget-object v4, p0, Lorg/mapdb/HTreeMap$ExpireRunnable;->mapRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapdb/HTreeMap;

    .line 1545
    .local v1, "m":Lorg/mapdb/HTreeMap;
    if-eqz v1, :cond_2

    .line 1546
    iget-object v4, v1, Lorg/mapdb/HTreeMap;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1547
    :cond_2
    iget-object v4, p0, Lorg/mapdb/HTreeMap$ExpireRunnable;->mapRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1549
    .end local v2    # "map":Lorg/mapdb/HTreeMap;
    :goto_1
    return-void

    .line 1528
    .end local v1    # "m":Lorg/mapdb/HTreeMap;
    .restart local v2    # "map":Lorg/mapdb/HTreeMap;
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Lorg/mapdb/HTreeMap;->expirePurge()V

    .line 1530
    iget-object v4, v2, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    invoke-interface {v4}, Lorg/mapdb/Engine;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v2, Lorg/mapdb/HTreeMap;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->getCount()J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    cmp-long v4, v4, v8

    if-gez v4, :cond_6

    .line 1544
    :cond_4
    iget-object v4, p0, Lorg/mapdb/HTreeMap$ExpireRunnable;->mapRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapdb/HTreeMap;

    .line 1545
    .restart local v1    # "m":Lorg/mapdb/HTreeMap;
    if-eqz v1, :cond_5

    .line 1546
    iget-object v4, v1, Lorg/mapdb/HTreeMap;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1547
    :cond_5
    iget-object v4, p0, Lorg/mapdb/HTreeMap$ExpireRunnable;->mapRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->clear()V

    goto :goto_1

    .line 1533
    .end local v1    # "m":Lorg/mapdb/HTreeMap;
    :cond_6
    :try_start_2
    iget-boolean v4, v2, Lorg/mapdb/HTreeMap;->expireMaxSizeFlag:Z

    if-eqz v4, :cond_7

    invoke-virtual {v2}, Lorg/mapdb/HTreeMap;->size()I

    move-result v4

    int-to-long v4, v4

    iget-wide v6, v2, Lorg/mapdb/HTreeMap;->expireMaxSize:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_9

    :cond_7
    iget-wide v4, v2, Lorg/mapdb/HTreeMap;->expireStoreSize:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_8

    iget-object v4, v2, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    invoke-static {v4}, Lorg/mapdb/Store;->forEngine(Lorg/mapdb/Engine;)Lorg/mapdb/Store;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mapdb/Store;->getCurrSize()J

    move-result-wide v4

    iget-object v6, v2, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    invoke-static {v6}, Lorg/mapdb/Store;->forEngine(Lorg/mapdb/Engine;)Lorg/mapdb/Store;

    move-result-object v6

    invoke-virtual {v6}, Lorg/mapdb/Store;->getFreeSize()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-wide v6, v2, Lorg/mapdb/HTreeMap;->expireStoreSize:J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v4, v4, v6

    if-gez v4, :cond_9

    :cond_8
    const/4 v3, 0x1

    .line 1537
    :goto_2
    goto/16 :goto_0

    .line 1533
    :cond_9
    const/4 v3, 0x0

    goto :goto_2

    .line 1539
    .end local v2    # "map":Lorg/mapdb/HTreeMap;
    :catch_0
    move-exception v0

    .line 1541
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1544
    iget-object v4, p0, Lorg/mapdb/HTreeMap$ExpireRunnable;->mapRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapdb/HTreeMap;

    .line 1545
    .restart local v1    # "m":Lorg/mapdb/HTreeMap;
    if-eqz v1, :cond_a

    .line 1546
    iget-object v4, v1, Lorg/mapdb/HTreeMap;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1547
    :cond_a
    iget-object v4, p0, Lorg/mapdb/HTreeMap$ExpireRunnable;->mapRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->clear()V

    goto :goto_1

    .line 1544
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "m":Lorg/mapdb/HTreeMap;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/mapdb/HTreeMap$ExpireRunnable;->mapRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapdb/HTreeMap;

    .line 1545
    .restart local v1    # "m":Lorg/mapdb/HTreeMap;
    if-eqz v1, :cond_b

    .line 1546
    iget-object v5, v1, Lorg/mapdb/HTreeMap;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1547
    :cond_b
    iget-object v5, p0, Lorg/mapdb/HTreeMap$ExpireRunnable;->mapRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1548
    throw v4
.end method
