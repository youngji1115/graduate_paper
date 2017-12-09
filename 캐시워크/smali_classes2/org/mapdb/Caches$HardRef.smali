.class public Lorg/mapdb/Caches$HardRef;
.super Lorg/mapdb/Caches$LRU;
.source "Caches.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/Caches;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HardRef"
.end annotation


# static fields
.field static final CHECK_EVERY_N:I = 0x2710


# instance fields
.field counter:I


# direct methods
.method public constructor <init>(Lorg/mapdb/Engine;IZ)V
    .locals 1
    .param p1, "engine"    # Lorg/mapdb/Engine;
    .param p2, "initialCapacity"    # I
    .param p3, "disableLocks"    # Z

    .prologue
    .line 608
    new-instance v0, Lorg/mapdb/LongConcurrentHashMap;

    invoke-direct {v0, p2}, Lorg/mapdb/LongConcurrentHashMap;-><init>(I)V

    invoke-direct {p0, p1, v0, p3}, Lorg/mapdb/Caches$LRU;-><init>(Lorg/mapdb/Engine;Lorg/mapdb/LongMap;Z)V

    .line 605
    const/4 v0, 0x0

    iput v0, p0, Lorg/mapdb/Caches$HardRef;->counter:I

    .line 609
    return-void
.end method

.method private checkFreeMem()V
    .locals 12

    .prologue
    .line 618
    iget v5, p0, Lorg/mapdb/Caches$HardRef;->counter:I

    add-int/lit8 v8, v5, 0x1

    iput v8, p0, Lorg/mapdb/Caches$HardRef;->counter:I

    rem-int/lit16 v5, v5, 0x2710

    if-nez v5, :cond_0

    .line 620
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    .line 621
    .local v4, "r":Ljava/lang/Runtime;
    invoke-virtual {v4}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    .line 622
    .local v2, "max":J
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v5, v2, v8

    if-nez v5, :cond_1

    .line 639
    .end local v2    # "max":J
    .end local v4    # "r":Ljava/lang/Runtime;
    :cond_0
    :goto_0
    return-void

    .line 625
    .restart local v2    # "max":J
    .restart local v4    # "r":Ljava/lang/Runtime;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v8

    long-to-double v0, v8

    .line 626
    .local v0, "free":D
    invoke-virtual {v4}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v8

    long-to-double v6, v8

    .line 629
    .local v6, "total":D
    long-to-double v8, v2

    sub-double/2addr v8, v6

    add-double/2addr v0, v8

    .line 635
    const-wide v8, 0x416312d000000000L    # 1.0E7

    cmpg-double v5, v0, v8

    if-ltz v5, :cond_2

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    mul-double/2addr v8, v0

    long-to-double v10, v2

    cmpg-double v5, v8, v10

    if-gez v5, :cond_0

    .line 636
    :cond_2
    iget-object v5, p0, Lorg/mapdb/Caches$HardRef;->cache:Lorg/mapdb/LongMap;

    invoke-static {v5}, Lorg/mapdb/Caches$HardRef;->checkClosed(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapdb/LongMap;

    invoke-virtual {v5}, Lorg/mapdb/LongMap;->clear()V

    goto :goto_0
.end method


# virtual methods
.method public compareAndSwap(JLjava/lang/Object;Ljava/lang/Object;Lorg/mapdb/Serializer;)Z
    .locals 1
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
    .line 655
    .local p3, "expectedOldValue":Ljava/lang/Object;, "TA;"
    .local p4, "newValue":Ljava/lang/Object;, "TA;"
    .local p5, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    invoke-direct {p0}, Lorg/mapdb/Caches$HardRef;->checkFreeMem()V

    .line 656
    invoke-super/range {p0 .. p5}, Lorg/mapdb/Caches$LRU;->compareAndSwap(JLjava/lang/Object;Ljava/lang/Object;Lorg/mapdb/Serializer;)Z

    move-result v0

    return v0
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
    .line 649
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    invoke-direct {p0}, Lorg/mapdb/Caches$HardRef;->checkFreeMem()V

    .line 650
    invoke-super {p0, p1, p2, p3}, Lorg/mapdb/Caches$LRU;->delete(JLorg/mapdb/Serializer;)V

    .line 651
    return-void
.end method

.method public get(JLorg/mapdb/Serializer;)Ljava/lang/Object;
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
    .line 613
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    invoke-direct {p0}, Lorg/mapdb/Caches$HardRef;->checkFreeMem()V

    .line 614
    invoke-super {p0, p1, p2, p3}, Lorg/mapdb/Caches$LRU;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V
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
    .line 643
    .local p3, "value":Ljava/lang/Object;, "TA;"
    .local p4, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    invoke-direct {p0}, Lorg/mapdb/Caches$HardRef;->checkFreeMem()V

    .line 644
    invoke-super {p0, p1, p2, p3, p4}, Lorg/mapdb/Caches$LRU;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 645
    return-void
.end method
