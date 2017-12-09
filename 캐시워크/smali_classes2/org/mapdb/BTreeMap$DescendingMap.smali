.class public Lorg/mapdb/BTreeMap$DescendingMap;
.super Ljava/util/AbstractMap;
.source "BTreeMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentNavigableMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/BTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DescendingMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapdb/BTreeMap$DescendingMap$Iter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentNavigableMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field protected final hi:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field protected final hiInclusive:Z

.field protected final lo:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field protected final loInclusive:Z

.field protected final m:Lorg/mapdb/BTreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/BTreeMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mapdb/BTreeMap;Ljava/lang/Object;ZLjava/lang/Object;Z)V
    .locals 1
    .param p3, "loInclusive"    # Z
    .param p5, "hiInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/BTreeMap",
            "<TK;TV;>;TK;ZTK;Z)V"
        }
    .end annotation

    .prologue
    .line 2286
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    .local p1, "m":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    .local p2, "lo":Ljava/lang/Object;, "TK;"
    .local p4, "hi":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 2287
    iput-object p1, p0, Lorg/mapdb/BTreeMap$DescendingMap;->m:Lorg/mapdb/BTreeMap;

    .line 2288
    iput-object p2, p0, Lorg/mapdb/BTreeMap$DescendingMap;->lo:Ljava/lang/Object;

    .line 2289
    iput-boolean p3, p0, Lorg/mapdb/BTreeMap$DescendingMap;->loInclusive:Z

    .line 2290
    iput-object p4, p0, Lorg/mapdb/BTreeMap$DescendingMap;->hi:Ljava/lang/Object;

    .line 2291
    iput-boolean p5, p0, Lorg/mapdb/BTreeMap$DescendingMap;->hiInclusive:Z

    .line 2292
    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    iget-object v0, p1, Lorg/mapdb/BTreeMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p2, p4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2293
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 2297
    :cond_0
    return-void
.end method

.method private checkKeyBounds(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2652
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    .line 2653
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2654
    :cond_0
    invoke-direct {p0, p1}, Lorg/mapdb/BTreeMap$DescendingMap;->inBounds(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2655
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2656
    :cond_1
    return-void
.end method

.method private inBounds(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 2648
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1}, Lorg/mapdb/BTreeMap$DescendingMap;->tooLow(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/mapdb/BTreeMap$DescendingMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private newSubMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/mapdb/BTreeMap$DescendingMap;
    .locals 7
    .param p2, "toInclusive"    # Z
    .param p4, "fromInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Lorg/mapdb/BTreeMap$DescendingMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2546
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    .local p3, "fromKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap$DescendingMap;->lo:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2547
    if-nez p3, :cond_2

    .line 2548
    iget-object p3, p0, Lorg/mapdb/BTreeMap$DescendingMap;->lo:Ljava/lang/Object;

    .line 2549
    iget-boolean p4, p0, Lorg/mapdb/BTreeMap$DescendingMap;->loInclusive:Z

    .line 2557
    :cond_0
    iget-object v0, p0, Lorg/mapdb/BTreeMap$DescendingMap;->hi:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2558
    if-nez p1, :cond_4

    .line 2559
    iget-object p1, p0, Lorg/mapdb/BTreeMap$DescendingMap;->hi:Ljava/lang/Object;

    .line 2560
    iget-boolean p2, p0, Lorg/mapdb/BTreeMap$DescendingMap;->hiInclusive:Z

    .line 2568
    :cond_1
    new-instance v0, Lorg/mapdb/BTreeMap$DescendingMap;

    iget-object v1, p0, Lorg/mapdb/BTreeMap$DescendingMap;->m:Lorg/mapdb/BTreeMap;

    move-object v2, p3

    move v3, p4

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/mapdb/BTreeMap$DescendingMap;-><init>(Lorg/mapdb/BTreeMap;Ljava/lang/Object;ZLjava/lang/Object;Z)V

    return-object v0

    .line 2552
    :cond_2
    iget-object v0, p0, Lorg/mapdb/BTreeMap$DescendingMap;->m:Lorg/mapdb/BTreeMap;

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->comparator:Ljava/util/Comparator;

    iget-object v1, p0, Lorg/mapdb/BTreeMap$DescendingMap;->lo:Ljava/lang/Object;

    invoke-interface {v0, p3, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    .line 2553
    .local v6, "c":I
    if-ltz v6, :cond_3

    if-nez v6, :cond_0

    iget-boolean v0, p0, Lorg/mapdb/BTreeMap$DescendingMap;->loInclusive:Z

    if-nez v0, :cond_0

    if-eqz p4, :cond_0

    .line 2554
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2563
    .end local v6    # "c":I
    :cond_4
    iget-object v0, p0, Lorg/mapdb/BTreeMap$DescendingMap;->m:Lorg/mapdb/BTreeMap;

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->comparator:Ljava/util/Comparator;

    iget-object v1, p0, Lorg/mapdb/BTreeMap$DescendingMap;->hi:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    .line 2564
    .restart local v6    # "c":I
    if-gtz v6, :cond_5

    if-nez v6, :cond_1

    iget-boolean v0, p0, Lorg/mapdb/BTreeMap$DescendingMap;->hiInclusive:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 2565
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private tooHigh(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 2639
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/mapdb/BTreeMap$DescendingMap;->hi:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 2640
    iget-object v1, p0, Lorg/mapdb/BTreeMap$DescendingMap;->m:Lorg/mapdb/BTreeMap;

    iget-object v1, v1, Lorg/mapdb/BTreeMap;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Lorg/mapdb/BTreeMap$DescendingMap;->hi:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 2641
    .local v0, "c":I
    if-gtz v0, :cond_0

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lorg/mapdb/BTreeMap$DescendingMap;->hiInclusive:Z

    if-nez v1, :cond_1

    .line 2642
    :cond_0
    const/4 v1, 0x1

    .line 2644
    .end local v0    # "c":I
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private tooLow(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 2630
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/mapdb/BTreeMap$DescendingMap;->lo:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 2631
    iget-object v1, p0, Lorg/mapdb/BTreeMap$DescendingMap;->m:Lorg/mapdb/BTreeMap;

    iget-object v1, v1, Lorg/mapdb/BTreeMap;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Lorg/mapdb/BTreeMap$DescendingMap;->lo:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 2632
    .local v0, "c":I
    if-ltz v0, :cond_0

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lorg/mapdb/BTreeMap$DescendingMap;->loInclusive:Z

    if-nez v1, :cond_1

    .line 2633
    :cond_0
    const/4 v1, 0x1

    .line 2635
    .end local v0    # "c":I
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    .line 2420
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2421
    :cond_0
    invoke-direct {p0, p1}, Lorg/mapdb/BTreeMap$DescendingMap;->tooLow(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 2429
    :cond_1
    :goto_0
    return-object v0

    .line 2423
    :cond_2
    invoke-direct {p0, p1}, Lorg/mapdb/BTreeMap$DescendingMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2424
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$DescendingMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0

    .line 2427
    :cond_3
    iget-object v2, p0, Lorg/mapdb/BTreeMap$DescendingMap;->m:Lorg/mapdb/BTreeMap;

    invoke-virtual {v2, p1}, Lorg/mapdb/BTreeMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 2428
    .local v0, "ret":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/mapdb/BTreeMap$DescendingMap;->tooLow(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    goto :goto_0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 2455
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/mapdb/BTreeMap$DescendingMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 2456
    .local v0, "k":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 2357
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$DescendingMap;->keyIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2358
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2359
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2360
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2362
    :cond_0
    return-void
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 2395
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap$DescendingMap;->m:Lorg/mapdb/BTreeMap;

    invoke-virtual {v0}, Lorg/mapdb/BTreeMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 2304
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2305
    :cond_0
    move-object v0, p1

    .line 2306
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v0}, Lorg/mapdb/BTreeMap$DescendingMap;->inBounds(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/mapdb/BTreeMap$DescendingMap;->m:Lorg/mapdb/BTreeMap;

    invoke-virtual {v1, v0}, Lorg/mapdb/BTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 2346
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2347
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$DescendingMap;->valueIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2348
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2349
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2350
    const/4 v1, 0x1

    .line 2352
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2669
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    new-instance v0, Lorg/mapdb/BTreeMap$KeySet;

    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$DescendingMap;->descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v1

    iget-object v2, p0, Lorg/mapdb/BTreeMap$DescendingMap;->m:Lorg/mapdb/BTreeMap;

    iget-boolean v2, v2, Lorg/mapdb/BTreeMap;->hasValues:Z

    invoke-direct {v0, v1, v2}, Lorg/mapdb/BTreeMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;Z)V

    return-object v0
.end method

.method public bridge synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 2276
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$DescendingMap;->descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2615
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap$DescendingMap;->lo:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mapdb/BTreeMap$DescendingMap;->hi:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mapdb/BTreeMap$DescendingMap;->m:Lorg/mapdb/BTreeMap;

    .line 2616
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mapdb/BTreeMap$DescendingMap;->m:Lorg/mapdb/BTreeMap;

    iget-object v1, p0, Lorg/mapdb/BTreeMap$DescendingMap;->lo:Ljava/lang/Object;

    iget-boolean v2, p0, Lorg/mapdb/BTreeMap$DescendingMap;->loInclusive:Z

    iget-object v3, p0, Lorg/mapdb/BTreeMap$DescendingMap;->hi:Ljava/lang/Object;

    iget-boolean v4, p0, Lorg/mapdb/BTreeMap$DescendingMap;->hiInclusive:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mapdb/BTreeMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    goto :goto_0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2731
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    new-instance v0, Lorg/mapdb/BTreeMap$DescendingMap$3;

    invoke-direct {v0, p0}, Lorg/mapdb/BTreeMap$DescendingMap$3;-><init>(Lorg/mapdb/BTreeMap$DescendingMap;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2676
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    new-instance v0, Lorg/mapdb/BTreeMap$EntrySet;

    invoke-direct {v0, p0}, Lorg/mapdb/BTreeMap$EntrySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    return-object v0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2499
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    iget-object v1, p0, Lorg/mapdb/BTreeMap$DescendingMap;->hi:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/mapdb/BTreeMap$DescendingMap;->m:Lorg/mapdb/BTreeMap;

    invoke-virtual {v1}, Lorg/mapdb/BTreeMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 2504
    .local v0, "k":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/mapdb/BTreeMap$DescendingMap;->inBounds(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .end local v0    # "k":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :goto_1
    return-object v0

    .line 2499
    :cond_0
    iget-object v1, p0, Lorg/mapdb/BTreeMap$DescendingMap;->m:Lorg/mapdb/BTreeMap;

    iget-object v2, p0, Lorg/mapdb/BTreeMap$DescendingMap;->hi:Ljava/lang/Object;

    iget-boolean v3, p0, Lorg/mapdb/BTreeMap$DescendingMap;->hiInclusive:Z

    invoke-virtual {v1, v2, v3}, Lorg/mapdb/BTreeMap;->findSmaller(Ljava/lang/Object;Z)Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0

    .line 2504
    .restart local v0    # "k":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 2474
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$DescendingMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 2475
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 2476
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    .line 2441
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2442
    :cond_0
    invoke-direct {p0, p1}, Lorg/mapdb/BTreeMap$DescendingMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 2450
    :cond_1
    :goto_0
    return-object v0

    .line 2444
    :cond_2
    invoke-direct {p0, p1}, Lorg/mapdb/BTreeMap$DescendingMap;->tooLow(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2445
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$DescendingMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0

    .line 2448
    :cond_3
    iget-object v2, p0, Lorg/mapdb/BTreeMap$DescendingMap;->m:Lorg/mapdb/BTreeMap;

    invoke-virtual {v2, p1}, Lorg/mapdb/BTreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 2449
    .local v0, "ret":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/mapdb/BTreeMap$DescendingMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    goto :goto_0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 2435
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/mapdb/BTreeMap$DescendingMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 2436
    .local v0, "n":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 2311
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2312
    :cond_0
    move-object v0, p1

    .line 2313
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v0}, Lorg/mapdb/BTreeMap$DescendingMap;->inBounds(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lorg/mapdb/BTreeMap$DescendingMap;->m:Lorg/mapdb/BTreeMap;

    invoke-virtual {v1, v0}, Lorg/mapdb/BTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 2276
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/BTreeMap$DescendingMap;->headMap(Ljava/lang/Object;Z)Lorg/mapdb/BTreeMap$DescendingMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2276
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/mapdb/BTreeMap$DescendingMap;->headMap(Ljava/lang/Object;)Lorg/mapdb/BTreeMap$DescendingMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2276
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/mapdb/BTreeMap$DescendingMap;->headMap(Ljava/lang/Object;)Lorg/mapdb/BTreeMap$DescendingMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 2276
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/BTreeMap$DescendingMap;->headMap(Ljava/lang/Object;Z)Lorg/mapdb/BTreeMap$DescendingMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Lorg/mapdb/BTreeMap$DescendingMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/mapdb/BTreeMap$DescendingMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2605
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mapdb/BTreeMap$DescendingMap;->headMap(Ljava/lang/Object;Z)Lorg/mapdb/BTreeMap$DescendingMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Lorg/mapdb/BTreeMap$DescendingMap;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lorg/mapdb/BTreeMap$DescendingMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2585
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    .line 2586
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2587
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/mapdb/BTreeMap$DescendingMap;->newSubMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/mapdb/BTreeMap$DescendingMap;

    move-result-object v0

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    .line 2402
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2403
    :cond_0
    invoke-direct {p0, p1}, Lorg/mapdb/BTreeMap$DescendingMap;->tooLow(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2409
    :goto_0
    return-object v1

    .line 2405
    :cond_1
    invoke-direct {p0, p1}, Lorg/mapdb/BTreeMap$DescendingMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2406
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$DescendingMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    goto :goto_0

    .line 2408
    :cond_2
    iget-object v2, p0, Lorg/mapdb/BTreeMap$DescendingMap;->m:Lorg/mapdb/BTreeMap;

    invoke-virtual {v2, p1}, Lorg/mapdb/BTreeMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 2409
    .local v0, "r":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/mapdb/BTreeMap$DescendingMap;->tooLow(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .end local v0    # "r":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :goto_1
    move-object v1, v0

    goto :goto_0

    .restart local v0    # "r":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 2467
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/mapdb/BTreeMap$DescendingMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 2468
    .local v0, "k":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 2341
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$DescendingMap;->keyIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method keyIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2710
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    new-instance v0, Lorg/mapdb/BTreeMap$DescendingMap$1;

    invoke-direct {v0, p0}, Lorg/mapdb/BTreeMap$DescendingMap$1;-><init>(Lorg/mapdb/BTreeMap$DescendingMap;)V

    return-object v0
.end method

.method public keySet()Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2664
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    new-instance v0, Lorg/mapdb/BTreeMap$KeySet;

    iget-object v1, p0, Lorg/mapdb/BTreeMap$DescendingMap;->m:Lorg/mapdb/BTreeMap;

    iget-boolean v1, v1, Lorg/mapdb/BTreeMap;->hasValues:Z

    invoke-direct {v0, p0, v1}, Lorg/mapdb/BTreeMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;Z)V

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 2276
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$DescendingMap;->keySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2489
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    iget-object v1, p0, Lorg/mapdb/BTreeMap$DescendingMap;->lo:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/mapdb/BTreeMap$DescendingMap;->m:Lorg/mapdb/BTreeMap;

    invoke-virtual {v1}, Lorg/mapdb/BTreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 2493
    .local v0, "k":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/mapdb/BTreeMap$DescendingMap;->inBounds(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .end local v0    # "k":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :goto_1
    return-object v0

    .line 2489
    :cond_0
    iget-object v1, p0, Lorg/mapdb/BTreeMap$DescendingMap;->m:Lorg/mapdb/BTreeMap;

    iget-object v2, p0, Lorg/mapdb/BTreeMap$DescendingMap;->lo:Ljava/lang/Object;

    iget-boolean v3, p0, Lorg/mapdb/BTreeMap$DescendingMap;->loInclusive:Z

    invoke-virtual {v1, v2, v3}, Lorg/mapdb/BTreeMap;->findLarger(Ljava/lang/Object;Z)Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0

    .line 2493
    .restart local v0    # "k":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 2481
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$DescendingMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 2482
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 2483
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2461
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/mapdb/BTreeMap$DescendingMap;->m:Lorg/mapdb/BTreeMap;

    invoke-virtual {v1, p1}, Lorg/mapdb/BTreeMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 2462
    .local v0, "r":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/mapdb/BTreeMap$DescendingMap;->inBounds(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0    # "r":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :goto_0
    return-object v0

    .restart local v0    # "r":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 2414
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/mapdb/BTreeMap$DescendingMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 2415
    .local v0, "n":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2621
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    new-instance v0, Lorg/mapdb/BTreeMap$KeySet;

    iget-object v1, p0, Lorg/mapdb/BTreeMap$DescendingMap;->m:Lorg/mapdb/BTreeMap;

    iget-boolean v1, v1, Lorg/mapdb/BTreeMap;->hasValues:Z

    invoke-direct {v0, p0, v1}, Lorg/mapdb/BTreeMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;Z)V

    return-object v0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2510
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$DescendingMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 2511
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/mapdb/BTreeMap$DescendingMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2512
    :cond_1
    return-object v0
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2520
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$DescendingMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 2521
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/mapdb/BTreeMap$DescendingMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2522
    :cond_1
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 2318
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Lorg/mapdb/BTreeMap$DescendingMap;->checkKeyBounds(Ljava/lang/Object;)V

    .line 2319
    iget-object v0, p0, Lorg/mapdb/BTreeMap$DescendingMap;->m:Lorg/mapdb/BTreeMap;

    invoke-virtual {v0, p1, p2}, Lorg/mapdb/BTreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 2369
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Lorg/mapdb/BTreeMap$DescendingMap;->checkKeyBounds(Ljava/lang/Object;)V

    .line 2370
    iget-object v0, p0, Lorg/mapdb/BTreeMap$DescendingMap;->m:Lorg/mapdb/BTreeMap;

    invoke-virtual {v0, p1, p2}, Lorg/mapdb/BTreeMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 2324
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    move-object v0, p1

    .line 2325
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v0}, Lorg/mapdb/BTreeMap$DescendingMap;->inBounds(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/mapdb/BTreeMap$DescendingMap;->m:Lorg/mapdb/BTreeMap;

    invoke-virtual {v1, v0}, Lorg/mapdb/BTreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 2375
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    move-object v0, p1

    .line 2376
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v0}, Lorg/mapdb/BTreeMap$DescendingMap;->inBounds(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mapdb/BTreeMap$DescendingMap;->m:Lorg/mapdb/BTreeMap;

    invoke-virtual {v1, v0, p2}, Lorg/mapdb/BTreeMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 2387
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Lorg/mapdb/BTreeMap$DescendingMap;->checkKeyBounds(Ljava/lang/Object;)V

    .line 2388
    iget-object v0, p0, Lorg/mapdb/BTreeMap$DescendingMap;->m:Lorg/mapdb/BTreeMap;

    invoke-virtual {v0, p1, p2}, Lorg/mapdb/BTreeMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 2381
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Lorg/mapdb/BTreeMap$DescendingMap;->checkKeyBounds(Ljava/lang/Object;)V

    .line 2382
    iget-object v0, p0, Lorg/mapdb/BTreeMap$DescendingMap;->m:Lorg/mapdb/BTreeMap;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mapdb/BTreeMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 2330
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$DescendingMap;->keyIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2331
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    const/4 v0, 0x0

    .line 2332
    .local v0, "counter":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2333
    add-int/lit8 v0, v0, 0x1

    .line 2334
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 2336
    :cond_0
    return v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Z

    .prologue
    .line 2276
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mapdb/BTreeMap$DescendingMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/mapdb/BTreeMap$DescendingMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 2276
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/BTreeMap$DescendingMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/BTreeMap$DescendingMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 2276
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/BTreeMap$DescendingMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/BTreeMap$DescendingMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Z

    .prologue
    .line 2276
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mapdb/BTreeMap$DescendingMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/mapdb/BTreeMap$DescendingMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/BTreeMap$DescendingMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Lorg/mapdb/BTreeMap$DescendingMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2600
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/mapdb/BTreeMap$DescendingMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/mapdb/BTreeMap$DescendingMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/mapdb/BTreeMap$DescendingMap;
    .locals 1
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Lorg/mapdb/BTreeMap$DescendingMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2577
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 2578
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2579
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mapdb/BTreeMap$DescendingMap;->newSubMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/mapdb/BTreeMap$DescendingMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 2276
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/BTreeMap$DescendingMap;->tailMap(Ljava/lang/Object;Z)Lorg/mapdb/BTreeMap$DescendingMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2276
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/mapdb/BTreeMap$DescendingMap;->tailMap(Ljava/lang/Object;)Lorg/mapdb/BTreeMap$DescendingMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2276
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/mapdb/BTreeMap$DescendingMap;->tailMap(Ljava/lang/Object;)Lorg/mapdb/BTreeMap$DescendingMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 2276
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/BTreeMap$DescendingMap;->tailMap(Ljava/lang/Object;Z)Lorg/mapdb/BTreeMap$DescendingMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Lorg/mapdb/BTreeMap$DescendingMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/mapdb/BTreeMap$DescendingMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2610
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/mapdb/BTreeMap$DescendingMap;->tailMap(Ljava/lang/Object;Z)Lorg/mapdb/BTreeMap$DescendingMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Lorg/mapdb/BTreeMap$DescendingMap;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lorg/mapdb/BTreeMap$DescendingMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2593
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    .line 2594
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2595
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/mapdb/BTreeMap$DescendingMap;->newSubMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/mapdb/BTreeMap$DescendingMap;

    move-result-object v0

    return-object v0
.end method

.method valueIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2720
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>;"
    new-instance v0, Lorg/mapdb/BTreeMap$DescendingMap$2;

    invoke-direct {v0, p0}, Lorg/mapdb/BTreeMap$DescendingMap$2;-><init>(Lorg/mapdb/BTreeMap$DescendingMap;)V

    return-object v0
.end method
