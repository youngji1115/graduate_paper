.class Lorg/mapdb/LongConcurrentLRUMap$PQueue;
.super Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;
.source "LongConcurrentLRUMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/LongConcurrentLRUMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue",
        "<",
        "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final heap:[Ljava/lang/Object;

.field myMaxSize:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "maxSz"    # I

    .prologue
    .line 338
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap$PQueue;, "Lorg/mapdb/LongConcurrentLRUMap$PQueue<TV;>;"
    invoke-direct {p0, p1}, Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;-><init>(I)V

    .line 339
    invoke-virtual {p0}, Lorg/mapdb/LongConcurrentLRUMap$PQueue;->getHeapArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mapdb/LongConcurrentLRUMap$PQueue;->heap:[Ljava/lang/Object;

    .line 340
    iput p1, p0, Lorg/mapdb/LongConcurrentLRUMap$PQueue;->myMaxSize:I

    .line 341
    return-void
.end method


# virtual methods
.method getValues()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 345
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap$PQueue;, "Lorg/mapdb/LongConcurrentLRUMap$PQueue<TV;>;"
    iget-object v0, p0, Lorg/mapdb/LongConcurrentLRUMap$PQueue;->heap:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic lessThan(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 333
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap$PQueue;, "Lorg/mapdb/LongConcurrentLRUMap$PQueue<TV;>;"
    check-cast p1, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/LongConcurrentLRUMap$PQueue;->lessThan(Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;)Z

    move-result v0

    return v0
.end method

.method protected lessThan(Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry",
            "<TV;>;",
            "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry",
            "<TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap$PQueue;, "Lorg/mapdb/LongConcurrentLRUMap$PQueue<TV;>;"
    .local p1, "a":Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;, "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry<TV;>;"
    .local p2, "b":Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;, "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry<TV;>;"
    iget-wide v0, p2, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->lastAccessedCopy:J

    iget-wide v2, p1, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->lastAccessedCopy:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public myInsertWithOverflow(Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;)Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry",
            "<TV;>;)",
            "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap$PQueue;, "Lorg/mapdb/LongConcurrentLRUMap$PQueue<TV;>;"
    .local p1, "element":Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;, "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry<TV;>;"
    const/4 v3, 0x1

    .line 356
    invoke-virtual {p0}, Lorg/mapdb/LongConcurrentLRUMap$PQueue;->size()I

    move-result v1

    iget v2, p0, Lorg/mapdb/LongConcurrentLRUMap$PQueue;->myMaxSize:I

    if-ge v1, v2, :cond_0

    .line 357
    invoke-virtual {p0, p1}, Lorg/mapdb/LongConcurrentLRUMap$PQueue;->add(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const/4 v0, 0x0

    .line 365
    :goto_0
    return-object v0

    .line 359
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/LongConcurrentLRUMap$PQueue;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/mapdb/LongConcurrentLRUMap$PQueue;->heap:[Ljava/lang/Object;

    aget-object v1, v1, v3

    check-cast v1, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;

    invoke-virtual {p0, p1, v1}, Lorg/mapdb/LongConcurrentLRUMap$PQueue;->lessThan(Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 360
    iget-object v1, p0, Lorg/mapdb/LongConcurrentLRUMap$PQueue;->heap:[Ljava/lang/Object;

    aget-object v0, v1, v3

    check-cast v0, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;

    .line 361
    .local v0, "ret":Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;, "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry<TV;>;"
    iget-object v1, p0, Lorg/mapdb/LongConcurrentLRUMap$PQueue;->heap:[Ljava/lang/Object;

    aput-object p1, v1, v3

    .line 362
    invoke-virtual {p0}, Lorg/mapdb/LongConcurrentLRUMap$PQueue;->updateTop()Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "ret":Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;, "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry<TV;>;"
    :cond_1
    move-object v0, p1

    .line 365
    goto :goto_0
.end method
