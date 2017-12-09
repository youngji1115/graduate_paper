.class final Lorg/mapdb/BTreeMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "BTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/BTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K1:",
        "Ljava/lang/Object;",
        "V1:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK1;TV1;>;>;"
    }
.end annotation


# instance fields
.field private final m:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK1;TV1;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK1;TV1;>;)V"
        }
    .end annotation

    .prologue
    .line 1789
    .local p0, "this":Lorg/mapdb/BTreeMap$EntrySet;, "Lorg/mapdb/BTreeMap$EntrySet<TK1;TV1;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<TK1;TV1;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 1790
    iput-object p1, p0, Lorg/mapdb/BTreeMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 1791
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1833
    .local p0, "this":Lorg/mapdb/BTreeMap$EntrySet;, "Lorg/mapdb/BTreeMap$EntrySet<TK1;TV1;>;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->clear()V

    .line 1834
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/mapdb/BTreeMap$EntrySet;, "Lorg/mapdb/BTreeMap$EntrySet<TK1;TV1;>;"
    const/4 v3, 0x0

    .line 1805
    instance-of v4, p1, Ljava/util/Map$Entry;

    if-nez v4, :cond_1

    .line 1811
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v0, p1

    .line 1807
    check-cast v0, Ljava/util/Map$Entry;

    .line 1808
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK1;TV1;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 1809
    .local v1, "key":Ljava/lang/Object;, "TK1;"
    if-eqz v1, :cond_0

    .line 1810
    iget-object v4, p0, Lorg/mapdb/BTreeMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v4, v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1811
    .local v2, "v":Ljava/lang/Object;, "TV1;"
    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/mapdb/BTreeMap$EntrySet;, "Lorg/mapdb/BTreeMap$EntrySet<TK1;TV1;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1837
    if-ne p1, p0, :cond_1

    move v3, v2

    .line 1847
    :cond_0
    :goto_0
    return v3

    .line 1839
    :cond_1
    instance-of v4, p1, Ljava/util/Set;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 1841
    check-cast v0, Ljava/util/Collection;

    .line 1843
    .local v0, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/mapdb/BTreeMap$EntrySet;->containsAll(Ljava/util/Collection;)Z

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

    .line 1844
    :catch_0
    move-exception v1

    .line 1845
    .local v1, "unused":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1846
    .end local v1    # "unused":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    .line 1847
    .local v1, "unused":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1825
    .local p0, "this":Lorg/mapdb/BTreeMap$EntrySet;, "Lorg/mapdb/BTreeMap$EntrySet<TK1;TV1;>;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

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
            "<",
            "Ljava/util/Map$Entry",
            "<TK1;TV1;>;>;"
        }
    .end annotation

    .prologue
    .line 1795
    .local p0, "this":Lorg/mapdb/BTreeMap$EntrySet;, "Lorg/mapdb/BTreeMap$EntrySet<TK1;TV1;>;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    instance-of v0, v0, Lorg/mapdb/BTreeMap;

    if-eqz v0, :cond_0

    .line 1796
    iget-object v0, p0, Lorg/mapdb/BTreeMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    check-cast v0, Lorg/mapdb/BTreeMap;

    invoke-virtual {v0}, Lorg/mapdb/BTreeMap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1800
    :goto_0
    return-object v0

    .line 1797
    :cond_0
    iget-object v0, p0, Lorg/mapdb/BTreeMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    instance-of v0, v0, Lorg/mapdb/BTreeMap$SubMap;

    if-eqz v0, :cond_1

    .line 1798
    iget-object v0, p0, Lorg/mapdb/BTreeMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    check-cast v0, Lorg/mapdb/BTreeMap$SubMap;

    invoke-virtual {v0}, Lorg/mapdb/BTreeMap$SubMap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 1800
    :cond_1
    iget-object v0, p0, Lorg/mapdb/BTreeMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    check-cast v0, Lorg/mapdb/BTreeMap$DescendingMap;

    invoke-virtual {v0}, Lorg/mapdb/BTreeMap$DescendingMap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/mapdb/BTreeMap$EntrySet;, "Lorg/mapdb/BTreeMap$EntrySet<TK1;TV1;>;"
    const/4 v2, 0x0

    .line 1815
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_1

    .line 1820
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 1817
    check-cast v0, Ljava/util/Map$Entry;

    .line 1818
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK1;TV1;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 1819
    .local v1, "key":Ljava/lang/Object;, "TK1;"
    if-eqz v1, :cond_0

    .line 1820
    iget-object v2, p0, Lorg/mapdb/BTreeMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/concurrent/ConcurrentNavigableMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1829
    .local p0, "this":Lorg/mapdb/BTreeMap$EntrySet;, "Lorg/mapdb/BTreeMap$EntrySet<TK1;TV1;>;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap$EntrySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1851
    .local p0, "this":Lorg/mapdb/BTreeMap$EntrySet;, "Lorg/mapdb/BTreeMap$EntrySet<TK1;TV1;>;"
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
    .line 1853
    .local p0, "this":Lorg/mapdb/BTreeMap$EntrySet;, "Lorg/mapdb/BTreeMap$EntrySet<TK1;TV1;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Lorg/mapdb/BTreeMap;->toList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
