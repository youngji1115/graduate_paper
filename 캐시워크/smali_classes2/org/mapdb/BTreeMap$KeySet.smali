.class final Lorg/mapdb/BTreeMap$KeySet;
.super Ljava/util/AbstractSet;
.source "BTreeMap.java"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/BTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;",
        "Ljava/util/NavigableSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final hasValues:Z

.field protected final m:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TE;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentNavigableMap;Z)V
    .locals 0
    .param p2, "hasValues"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TE;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1641
    .local p0, "this":Lorg/mapdb/BTreeMap$KeySet;, "Lorg/mapdb/BTreeMap$KeySet<TE;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<TE;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 1642
    iput-object p1, p0, Lorg/mapdb/BTreeMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 1643
    iput-boolean p2, p0, Lorg/mapdb/BTreeMap$KeySet;->hasValues:Z

    .line 1644
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 1746
    .local p0, "this":Lorg/mapdb/BTreeMap$KeySet;, "Lorg/mapdb/BTreeMap$KeySet<TE;>;"
    .local p1, "k":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Lorg/mapdb/BTreeMap$KeySet;->hasValues:Z

    if-eqz v0, :cond_0

    .line 1747
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1749
    :cond_0
    iget-object v0, p0, Lorg/mapdb/BTreeMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    sget-object v1, Lorg/mapdb/BTreeMap;->EMPTY:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 1660
    .local p0, "this":Lorg/mapdb/BTreeMap$KeySet;, "Lorg/mapdb/BTreeMap$KeySet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 1654
    .local p0, "this":Lorg/mapdb/BTreeMap$KeySet;, "Lorg/mapdb/BTreeMap$KeySet<TE;>;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->clear()V

    return-void
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 1664
    .local p0, "this":Lorg/mapdb/BTreeMap$KeySet;, "Lorg/mapdb/BTreeMap$KeySet<TE;>;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1650
    .local p0, "this":Lorg/mapdb/BTreeMap$KeySet;, "Lorg/mapdb/BTreeMap$KeySet<TE;>;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1709
    .local p0, "this":Lorg/mapdb/BTreeMap$KeySet;, "Lorg/mapdb/BTreeMap$KeySet<TE;>;"
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$KeySet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1741
    .local p0, "this":Lorg/mapdb/BTreeMap$KeySet;, "Lorg/mapdb/BTreeMap$KeySet<TE;>;"
    new-instance v0, Lorg/mapdb/BTreeMap$KeySet;

    iget-object v1, p0, Lorg/mapdb/BTreeMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v1

    iget-boolean v2, p0, Lorg/mapdb/BTreeMap$KeySet;->hasValues:Z

    invoke-direct {v0, v1, v2}, Lorg/mapdb/BTreeMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/mapdb/BTreeMap$KeySet;, "Lorg/mapdb/BTreeMap$KeySet<TE;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1690
    if-ne p1, p0, :cond_1

    move v3, v2

    .line 1700
    :cond_0
    :goto_0
    return v3

    .line 1692
    :cond_1
    instance-of v4, p1, Ljava/util/Set;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 1694
    check-cast v0, Ljava/util/Collection;

    .line 1696
    .local v0, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/mapdb/BTreeMap$KeySet;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0, p0}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 1697
    :catch_0
    move-exception v1

    .line 1698
    .local v1, "unused":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1699
    .end local v1    # "unused":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    .line 1700
    .local v1, "unused":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1666
    .local p0, "this":Lorg/mapdb/BTreeMap$KeySet;, "Lorg/mapdb/BTreeMap$KeySet<TE;>;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 1658
    .local p0, "this":Lorg/mapdb/BTreeMap$KeySet;, "Lorg/mapdb/BTreeMap$KeySet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1733
    .local p0, "this":Lorg/mapdb/BTreeMap$KeySet;, "Lorg/mapdb/BTreeMap$KeySet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mapdb/BTreeMap$KeySet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 3
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1721
    .local p0, "this":Lorg/mapdb/BTreeMap$KeySet;, "Lorg/mapdb/BTreeMap$KeySet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Lorg/mapdb/BTreeMap$KeySet;

    iget-object v1, p0, Lorg/mapdb/BTreeMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/ConcurrentNavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v1

    iget-boolean v2, p0, Lorg/mapdb/BTreeMap$KeySet;->hasValues:Z

    invoke-direct {v0, v1, v2}, Lorg/mapdb/BTreeMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;Z)V

    return-object v0
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1637
    .local p0, "this":Lorg/mapdb/BTreeMap$KeySet;, "Lorg/mapdb/BTreeMap$KeySet<TE;>;"
    invoke-virtual {p0, p1}, Lorg/mapdb/BTreeMap$KeySet;->headSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 1662
    .local p0, "this":Lorg/mapdb/BTreeMap$KeySet;, "Lorg/mapdb/BTreeMap$KeySet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1648
    .local p0, "this":Lorg/mapdb/BTreeMap$KeySet;, "Lorg/mapdb/BTreeMap$KeySet<TE;>;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->isEmpty()Z

    move-result v0

    return v0
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
    .line 1681
    .local p0, "this":Lorg/mapdb/BTreeMap$KeySet;, "Lorg/mapdb/BTreeMap$KeySet<TE;>;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    instance-of v0, v0, Lorg/mapdb/BTreeMap;

    if-eqz v0, :cond_0

    .line 1682
    iget-object v0, p0, Lorg/mapdb/BTreeMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    check-cast v0, Lorg/mapdb/BTreeMap;

    invoke-virtual {v0}, Lorg/mapdb/BTreeMap;->keyIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1686
    :goto_0
    return-object v0

    .line 1683
    :cond_0
    iget-object v0, p0, Lorg/mapdb/BTreeMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    instance-of v0, v0, Lorg/mapdb/BTreeMap$SubMap;

    if-eqz v0, :cond_1

    .line 1684
    iget-object v0, p0, Lorg/mapdb/BTreeMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    check-cast v0, Lorg/mapdb/BTreeMap$SubMap;

    invoke-virtual {v0}, Lorg/mapdb/BTreeMap$SubMap;->keyIterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 1686
    :cond_1
    iget-object v0, p0, Lorg/mapdb/BTreeMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    check-cast v0, Lorg/mapdb/BTreeMap$DescendingMap;

    invoke-virtual {v0}, Lorg/mapdb/BTreeMap$DescendingMap;->keyIterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1668
    .local p0, "this":Lorg/mapdb/BTreeMap$KeySet;, "Lorg/mapdb/BTreeMap$KeySet<TE;>;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 1656
    .local p0, "this":Lorg/mapdb/BTreeMap$KeySet;, "Lorg/mapdb/BTreeMap$KeySet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1671
    .local p0, "this":Lorg/mapdb/BTreeMap$KeySet;, "Lorg/mapdb/BTreeMap$KeySet<TE;>;"
    iget-object v1, p0, Lorg/mapdb/BTreeMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 1672
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TE;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1676
    .local p0, "this":Lorg/mapdb/BTreeMap$KeySet;, "Lorg/mapdb/BTreeMap$KeySet<TE;>;"
    iget-object v1, p0, Lorg/mapdb/BTreeMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 1677
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TE;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1652
    .local p0, "this":Lorg/mapdb/BTreeMap$KeySet;, "Lorg/mapdb/BTreeMap$KeySet<TE;>;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1646
    .local p0, "this":Lorg/mapdb/BTreeMap$KeySet;, "Lorg/mapdb/BTreeMap$KeySet<TE;>;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->size()I

    move-result v0

    return v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1729
    .local p0, "this":Lorg/mapdb/BTreeMap$KeySet;, "Lorg/mapdb/BTreeMap$KeySet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/mapdb/BTreeMap$KeySet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 3
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1716
    .local p0, "this":Lorg/mapdb/BTreeMap$KeySet;, "Lorg/mapdb/BTreeMap$KeySet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Lorg/mapdb/BTreeMap$KeySet;

    iget-object v1, p0, Lorg/mapdb/BTreeMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentNavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v1

    iget-boolean v2, p0, Lorg/mapdb/BTreeMap$KeySet;->hasValues:Z

    invoke-direct {v0, v1, v2}, Lorg/mapdb/BTreeMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;Z)V

    return-object v0
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1637
    .local p0, "this":Lorg/mapdb/BTreeMap$KeySet;, "Lorg/mapdb/BTreeMap$KeySet<TE;>;"
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/BTreeMap$KeySet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1737
    .local p0, "this":Lorg/mapdb/BTreeMap$KeySet;, "Lorg/mapdb/BTreeMap$KeySet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/mapdb/BTreeMap$KeySet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 3
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1725
    .local p0, "this":Lorg/mapdb/BTreeMap$KeySet;, "Lorg/mapdb/BTreeMap$KeySet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Lorg/mapdb/BTreeMap$KeySet;

    iget-object v1, p0, Lorg/mapdb/BTreeMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/ConcurrentNavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v1

    iget-boolean v2, p0, Lorg/mapdb/BTreeMap$KeySet;->hasValues:Z

    invoke-direct {v0, v1, v2}, Lorg/mapdb/BTreeMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;Z)V

    return-object v0
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1637
    .local p0, "this":Lorg/mapdb/BTreeMap$KeySet;, "Lorg/mapdb/BTreeMap$KeySet<TE;>;"
    invoke-virtual {p0, p1}, Lorg/mapdb/BTreeMap$KeySet;->tailSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1704
    .local p0, "this":Lorg/mapdb/BTreeMap$KeySet;, "Lorg/mapdb/BTreeMap$KeySet<TE;>;"
    invoke-static {p0}, Lorg/mapdb/BTreeMap;->toList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    .line 1706
    .local p0, "this":Lorg/mapdb/BTreeMap$KeySet;, "Lorg/mapdb/BTreeMap$KeySet<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Lorg/mapdb/BTreeMap;->toList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
