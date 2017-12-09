.class public final Lorg/mapdb/Bind;
.super Ljava/lang/Object;
.source "Bind.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapdb/Bind$MapWithModificationListener;,
        Lorg/mapdb/Bind$MapListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static histogram(Lorg/mapdb/Bind$MapWithModificationListener;Ljava/util/concurrent/ConcurrentMap;Lorg/mapdb/Fun$Function2;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mapdb/Bind$MapWithModificationListener",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TC;",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/mapdb/Fun$Function2",
            "<TC;TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 570
    .local p0, "primary":Lorg/mapdb/Bind$MapWithModificationListener;, "Lorg/mapdb/Bind$MapWithModificationListener<TK;TV;>;"
    .local p1, "histogram":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<TC;Ljava/lang/Long;>;"
    .local p2, "entryToCategory":Lorg/mapdb/Fun$Function2;, "Lorg/mapdb/Fun$Function2<TC;TK;TV;>;"
    new-instance v2, Lorg/mapdb/Bind$9;

    invoke-direct {v2, p2, p1}, Lorg/mapdb/Bind$9;-><init>(Lorg/mapdb/Fun$Function2;Ljava/util/concurrent/ConcurrentMap;)V

    .line 609
    .local v2, "listener":Lorg/mapdb/Bind$MapListener;, "Lorg/mapdb/Bind$MapListener<TK;TV;>;"
    invoke-interface {p0, v2}, Lorg/mapdb/Bind$MapWithModificationListener;->modificationListenerAdd(Lorg/mapdb/Bind$MapListener;)V

    .line 611
    invoke-interface {p1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 613
    invoke-interface {p0}, Lorg/mapdb/Bind$MapWithModificationListener;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 614
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lorg/mapdb/Bind$MapListener;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 617
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public static mapInverse(Lorg/mapdb/Bind$MapWithModificationListener;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mapdb/Bind$MapWithModificationListener",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TV;TK;>;)V"
        }
    .end annotation

    .prologue
    .line 532
    .local p0, "primary":Lorg/mapdb/Bind$MapWithModificationListener;, "Lorg/mapdb/Bind$MapWithModificationListener<TK;TV;>;"
    .local p1, "inverse":Ljava/util/Map;, "Ljava/util/Map<TV;TK;>;"
    new-instance v0, Lorg/mapdb/Bind$8;

    invoke-direct {v0}, Lorg/mapdb/Bind$8;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/mapdb/Bind;->secondaryKey(Lorg/mapdb/Bind$MapWithModificationListener;Ljava/util/Map;Lorg/mapdb/Fun$Function2;)V

    .line 537
    return-void
.end method

.method public static mapInverse(Lorg/mapdb/Bind$MapWithModificationListener;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mapdb/Bind$MapWithModificationListener",
            "<TK;TV;>;",
            "Ljava/util/Set",
            "<",
            "Lorg/mapdb/Fun$Tuple2",
            "<TV;TK;>;>;)V"
        }
    .end annotation

    .prologue
    .line 502
    .local p0, "primary":Lorg/mapdb/Bind$MapWithModificationListener;, "Lorg/mapdb/Bind$MapWithModificationListener<TK;TV;>;"
    .local p1, "inverse":Ljava/util/Set;, "Ljava/util/Set<Lorg/mapdb/Fun$Tuple2<TV;TK;>;>;"
    new-instance v0, Lorg/mapdb/Bind$7;

    invoke-direct {v0}, Lorg/mapdb/Bind$7;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/mapdb/Bind;->secondaryKey(Lorg/mapdb/Bind$MapWithModificationListener;Ljava/util/Set;Lorg/mapdb/Fun$Function2;)V

    .line 507
    return-void
.end method

.method public static secondaryKey(Lorg/mapdb/Bind$MapWithModificationListener;Ljava/util/Map;Lorg/mapdb/Fun$Function2;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "K2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mapdb/Bind$MapWithModificationListener",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK2;TK;>;",
            "Lorg/mapdb/Fun$Function2",
            "<TK2;TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 365
    .local p0, "map":Lorg/mapdb/Bind$MapWithModificationListener;, "Lorg/mapdb/Bind$MapWithModificationListener<TK;TV;>;"
    .local p1, "secondary":Ljava/util/Map;, "Ljava/util/Map<TK2;TK;>;"
    .local p2, "fun":Lorg/mapdb/Fun$Function2;, "Lorg/mapdb/Fun$Function2<TK2;TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    invoke-interface {p0}, Lorg/mapdb/Bind$MapWithModificationListener;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 367
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lorg/mapdb/Fun$Function2;->run(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 371
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    new-instance v2, Lorg/mapdb/Bind$5;

    invoke-direct {v2, p1, p2}, Lorg/mapdb/Bind$5;-><init>(Ljava/util/Map;Lorg/mapdb/Fun$Function2;)V

    invoke-interface {p0, v2}, Lorg/mapdb/Bind$MapWithModificationListener;->modificationListenerAdd(Lorg/mapdb/Bind$MapListener;)V

    .line 390
    return-void
.end method

.method public static secondaryKey(Lorg/mapdb/Bind$MapWithModificationListener;Ljava/util/Set;Lorg/mapdb/Fun$Function2;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "K2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mapdb/Bind$MapWithModificationListener",
            "<TK;TV;>;",
            "Ljava/util/Set",
            "<",
            "Lorg/mapdb/Fun$Tuple2",
            "<TK2;TK;>;>;",
            "Lorg/mapdb/Fun$Function2",
            "<TK2;TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, "map":Lorg/mapdb/Bind$MapWithModificationListener;, "Lorg/mapdb/Bind$MapWithModificationListener<TK;TV;>;"
    .local p1, "secondary":Ljava/util/Set;, "Ljava/util/Set<Lorg/mapdb/Fun$Tuple2<TK2;TK;>;>;"
    .local p2, "fun":Lorg/mapdb/Fun$Function2;, "Lorg/mapdb/Fun$Function2<TK2;TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    invoke-interface {p0}, Lorg/mapdb/Bind$MapWithModificationListener;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 316
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lorg/mapdb/Fun$Function2;->run(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 320
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    new-instance v2, Lorg/mapdb/Bind$4;

    invoke-direct {v2, p1, p2}, Lorg/mapdb/Bind$4;-><init>(Ljava/util/Set;Lorg/mapdb/Fun$Function2;)V

    invoke-interface {p0, v2}, Lorg/mapdb/Bind$MapWithModificationListener;->modificationListenerAdd(Lorg/mapdb/Bind$MapListener;)V

    .line 339
    return-void
.end method

.method public static secondaryKeys(Lorg/mapdb/Bind$MapWithModificationListener;Ljava/util/Set;Lorg/mapdb/Fun$Function2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "K2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mapdb/Bind$MapWithModificationListener",
            "<TK;TV;>;",
            "Ljava/util/Set",
            "<",
            "Lorg/mapdb/Fun$Tuple2",
            "<TK2;TK;>;>;",
            "Lorg/mapdb/Fun$Function2",
            "<[TK2;TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 418
    .local p0, "map":Lorg/mapdb/Bind$MapWithModificationListener;, "Lorg/mapdb/Bind$MapWithModificationListener<TK;TV;>;"
    .local p1, "secondary":Ljava/util/Set;, "Ljava/util/Set<Lorg/mapdb/Fun$Tuple2<TK2;TK;>;>;"
    .local p2, "fun":Lorg/mapdb/Fun$Function2;, "Lorg/mapdb/Fun$Function2<[TK2;TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 419
    invoke-interface {p0}, Lorg/mapdb/Bind$MapWithModificationListener;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 420
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {p2, v7, v8}, Lorg/mapdb/Fun$Function2;->run(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    .line 421
    .local v4, "k2":[Ljava/lang/Object;, "[TK2;"
    if-eqz v4, :cond_0

    .line 422
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v5, v0, v3

    .line 423
    .local v5, "k22":Ljava/lang/Object;, "TK2;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v7}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 422
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 427
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v3    # "i$":I
    .end local v4    # "k2":[Ljava/lang/Object;, "[TK2;"
    .end local v5    # "k22":Ljava/lang/Object;, "TK2;"
    .end local v6    # "len$":I
    :cond_1
    new-instance v7, Lorg/mapdb/Bind$6;

    invoke-direct {v7, p2, p1}, Lorg/mapdb/Bind$6;-><init>(Lorg/mapdb/Fun$Function2;Ljava/util/Set;)V

    invoke-interface {p0, v7}, Lorg/mapdb/Bind$MapWithModificationListener;->modificationListenerAdd(Lorg/mapdb/Bind$MapListener;)V

    .line 479
    return-void
.end method

.method public static secondaryValue(Lorg/mapdb/Bind$MapWithModificationListener;Ljava/util/Map;Lorg/mapdb/Fun$Function2;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mapdb/Bind$MapWithModificationListener",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;TV2;>;",
            "Lorg/mapdb/Fun$Function2",
            "<TV2;TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "map":Lorg/mapdb/Bind$MapWithModificationListener;, "Lorg/mapdb/Bind$MapWithModificationListener<TK;TV;>;"
    .local p1, "secondary":Ljava/util/Map;, "Ljava/util/Map<TK;TV2;>;"
    .local p2, "fun":Lorg/mapdb/Fun$Function2;, "Lorg/mapdb/Fun$Function2<TV2;TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    invoke-interface {p0}, Lorg/mapdb/Bind$MapWithModificationListener;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 183
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lorg/mapdb/Fun$Function2;->run(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 186
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    new-instance v2, Lorg/mapdb/Bind$2;

    invoke-direct {v2, p1, p2}, Lorg/mapdb/Bind$2;-><init>(Ljava/util/Map;Lorg/mapdb/Fun$Function2;)V

    invoke-interface {p0, v2}, Lorg/mapdb/Bind$MapWithModificationListener;->modificationListenerAdd(Lorg/mapdb/Bind$MapListener;)V

    .line 197
    return-void
.end method

.method public static secondaryValues(Lorg/mapdb/Bind$MapWithModificationListener;Ljava/util/Set;Lorg/mapdb/Fun$Function2;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mapdb/Bind$MapWithModificationListener",
            "<TK;TV;>;",
            "Ljava/util/Set",
            "<",
            "Lorg/mapdb/Fun$Tuple2",
            "<TK;TV2;>;>;",
            "Lorg/mapdb/Fun$Function2",
            "<[TV2;TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "map":Lorg/mapdb/Bind$MapWithModificationListener;, "Lorg/mapdb/Bind$MapWithModificationListener<TK;TV;>;"
    .local p1, "secondary":Ljava/util/Set;, "Ljava/util/Set<Lorg/mapdb/Fun$Tuple2<TK;TV2;>;>;"
    .local p2, "fun":Lorg/mapdb/Fun$Function2;, "Lorg/mapdb/Fun$Function2<[TV2;TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 225
    invoke-interface {p0}, Lorg/mapdb/Bind$MapWithModificationListener;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 226
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {p2, v7, v8}, Lorg/mapdb/Fun$Function2;->run(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    .line 227
    .local v5, "v":[Ljava/lang/Object;, "[TV2;"
    if-eqz v5, :cond_0

    .line 228
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    .line 229
    .local v6, "v2":Ljava/lang/Object;, "TV2;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 228
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "v":[Ljava/lang/Object;, "[TV2;"
    .end local v6    # "v2":Ljava/lang/Object;, "TV2;"
    :cond_1
    new-instance v7, Lorg/mapdb/Bind$3;

    invoke-direct {v7, p2, p1}, Lorg/mapdb/Bind$3;-><init>(Lorg/mapdb/Fun$Function2;Ljava/util/Set;)V

    invoke-interface {p0, v7}, Lorg/mapdb/Bind$MapWithModificationListener;->modificationListenerAdd(Lorg/mapdb/Bind$MapListener;)V

    .line 285
    return-void
.end method

.method public static size(Lorg/mapdb/Bind$MapWithModificationListener;Lorg/mapdb/Atomic$Long;)V
    .locals 6
    .param p1, "sizeCounter"    # Lorg/mapdb/Atomic$Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mapdb/Bind$MapWithModificationListener",
            "<TK;TV;>;",
            "Lorg/mapdb/Atomic$Long;",
            ")V"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "map":Lorg/mapdb/Bind$MapWithModificationListener;, "Lorg/mapdb/Bind$MapWithModificationListener<TK;TV;>;"
    invoke-virtual {p1}, Lorg/mapdb/Atomic$Long;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 137
    invoke-interface {p0}, Lorg/mapdb/Bind$MapWithModificationListener;->sizeLong()J

    move-result-wide v0

    .line 138
    .local v0, "size":J
    invoke-virtual {p1}, Lorg/mapdb/Atomic$Long;->get()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 139
    invoke-virtual {p1, v0, v1}, Lorg/mapdb/Atomic$Long;->set(J)V

    .line 142
    .end local v0    # "size":J
    :cond_0
    new-instance v2, Lorg/mapdb/Bind$1;

    invoke-direct {v2, p1}, Lorg/mapdb/Bind$1;-><init>(Lorg/mapdb/Atomic$Long;)V

    invoke-interface {p0, v2}, Lorg/mapdb/Bind$MapWithModificationListener;->modificationListenerAdd(Lorg/mapdb/Bind$MapListener;)V

    .line 154
    return-void
.end method
