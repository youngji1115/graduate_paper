.class public Lorg/mapdb/BTreeMap$SubMap;
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
    name = "SubMap"
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
    .line 1868
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    .local p1, "m":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    .local p2, "lo":Ljava/lang/Object;, "TK;"
    .local p4, "hi":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1869
    iput-object p1, p0, Lorg/mapdb/BTreeMap$SubMap;->m:Lorg/mapdb/BTreeMap;

    .line 1870
    iput-object p2, p0, Lorg/mapdb/BTreeMap$SubMap;->lo:Ljava/lang/Object;

    .line 1871
    iput-boolean p3, p0, Lorg/mapdb/BTreeMap$SubMap;->loInclusive:Z

    .line 1872
    iput-object p4, p0, Lorg/mapdb/BTreeMap$SubMap;->hi:Ljava/lang/Object;

    .line 1873
    iput-boolean p5, p0, Lorg/mapdb/BTreeMap$SubMap;->hiInclusive:Z

    .line 1874
    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    iget-object v0, p1, Lorg/mapdb/BTreeMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p2, p4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1875
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1879
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
    .line 2232
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    .line 2233
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2234
    :cond_0
    invoke-direct {p0, p1}, Lorg/mapdb/BTreeMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2236
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
    .line 2228
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1}, Lorg/mapdb/BTreeMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/mapdb/BTreeMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private newSubMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/mapdb/BTreeMap$SubMap;
    .locals 7
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Lorg/mapdb/BTreeMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2127
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap$SubMap;->lo:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2128
    if-nez p1, :cond_2

    .line 2129
    iget-object p1, p0, Lorg/mapdb/BTreeMap$SubMap;->lo:Ljava/lang/Object;

    .line 2130
    iget-boolean p2, p0, Lorg/mapdb/BTreeMap$SubMap;->loInclusive:Z

    .line 2138
    :cond_0
    iget-object v0, p0, Lorg/mapdb/BTreeMap$SubMap;->hi:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2139
    if-nez p3, :cond_4

    .line 2140
    iget-object p3, p0, Lorg/mapdb/BTreeMap$SubMap;->hi:Ljava/lang/Object;

    .line 2141
    iget-boolean p4, p0, Lorg/mapdb/BTreeMap$SubMap;->hiInclusive:Z

    .line 2149
    :cond_1
    new-instance v0, Lorg/mapdb/BTreeMap$SubMap;

    iget-object v1, p0, Lorg/mapdb/BTreeMap$SubMap;->m:Lorg/mapdb/BTreeMap;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/mapdb/BTreeMap$SubMap;-><init>(Lorg/mapdb/BTreeMap;Ljava/lang/Object;ZLjava/lang/Object;Z)V

    return-object v0

    .line 2133
    :cond_2
    iget-object v0, p0, Lorg/mapdb/BTreeMap$SubMap;->m:Lorg/mapdb/BTreeMap;

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->comparator:Ljava/util/Comparator;

    iget-object v1, p0, Lorg/mapdb/BTreeMap$SubMap;->lo:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    .line 2134
    .local v6, "c":I
    if-ltz v6, :cond_3

    if-nez v6, :cond_0

    iget-boolean v0, p0, Lorg/mapdb/BTreeMap$SubMap;->loInclusive:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 2135
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2144
    .end local v6    # "c":I
    :cond_4
    iget-object v0, p0, Lorg/mapdb/BTreeMap$SubMap;->m:Lorg/mapdb/BTreeMap;

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->comparator:Ljava/util/Comparator;

    iget-object v1, p0, Lorg/mapdb/BTreeMap$SubMap;->hi:Ljava/lang/Object;

    invoke-interface {v0, p3, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    .line 2145
    .restart local v6    # "c":I
    if-gtz v6, :cond_5

    if-nez v6, :cond_1

    iget-boolean v0, p0, Lorg/mapdb/BTreeMap$SubMap;->hiInclusive:Z

    if-nez v0, :cond_1

    if-eqz p4, :cond_1

    .line 2146
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
    .line 2219
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/mapdb/BTreeMap$SubMap;->hi:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 2220
    iget-object v1, p0, Lorg/mapdb/BTreeMap$SubMap;->m:Lorg/mapdb/BTreeMap;

    iget-object v1, v1, Lorg/mapdb/BTreeMap;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Lorg/mapdb/BTreeMap$SubMap;->hi:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 2221
    .local v0, "c":I
    if-gtz v0, :cond_0

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lorg/mapdb/BTreeMap$SubMap;->hiInclusive:Z

    if-nez v1, :cond_1

    .line 2222
    :cond_0
    const/4 v1, 0x1

    .line 2224
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
    .line 2210
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/mapdb/BTreeMap$SubMap;->lo:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 2211
    iget-object v1, p0, Lorg/mapdb/BTreeMap$SubMap;->m:Lorg/mapdb/BTreeMap;

    iget-object v1, v1, Lorg/mapdb/BTreeMap;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Lorg/mapdb/BTreeMap$SubMap;->lo:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 2212
    .local v0, "c":I
    if-ltz v0, :cond_0

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lorg/mapdb/BTreeMap$SubMap;->loInclusive:Z

    if-nez v1, :cond_1

    .line 2213
    :cond_0
    const/4 v1, 0x1

    .line 2215
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
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    .line 2023
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2024
    :cond_0
    invoke-direct {p0, p1}, Lorg/mapdb/BTreeMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 2032
    :cond_1
    :goto_0
    return-object v0

    .line 2026
    :cond_2
    invoke-direct {p0, p1}, Lorg/mapdb/BTreeMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2027
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$SubMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0

    .line 2030
    :cond_3
    iget-object v2, p0, Lorg/mapdb/BTreeMap$SubMap;->m:Lorg/mapdb/BTreeMap;

    invoke-virtual {v2, p1}, Lorg/mapdb/BTreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 2031
    .local v0, "ret":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/mapdb/BTreeMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

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
    .line 2037
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/mapdb/BTreeMap$SubMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 2038
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
    .line 1939
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$SubMap;->keyIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1940
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1941
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1942
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1944
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
    .line 1977
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap$SubMap;->m:Lorg/mapdb/BTreeMap;

    invoke-virtual {v0}, Lorg/mapdb/BTreeMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 1886
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1887
    :cond_0
    move-object v0, p1

    .line 1888
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v0}, Lorg/mapdb/BTreeMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/mapdb/BTreeMap$SubMap;->m:Lorg/mapdb/BTreeMap;

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
    .line 1928
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1929
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$SubMap;->valueIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1930
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1931
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1932
    const/4 v1, 0x1

    .line 1934
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2249
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    new-instance v0, Lorg/mapdb/BTreeMap$DescendingMap;

    iget-object v1, p0, Lorg/mapdb/BTreeMap$SubMap;->m:Lorg/mapdb/BTreeMap;

    iget-object v2, p0, Lorg/mapdb/BTreeMap$SubMap;->lo:Ljava/lang/Object;

    iget-boolean v3, p0, Lorg/mapdb/BTreeMap$SubMap;->loInclusive:Z

    iget-object v4, p0, Lorg/mapdb/BTreeMap$SubMap;->hi:Ljava/lang/Object;

    iget-boolean v5, p0, Lorg/mapdb/BTreeMap$SubMap;->hiInclusive:Z

    invoke-direct/range {v0 .. v5}, Lorg/mapdb/BTreeMap$DescendingMap;-><init>(Lorg/mapdb/BTreeMap;Ljava/lang/Object;ZLjava/lang/Object;Z)V

    invoke-virtual {v0}, Lorg/mapdb/BTreeMap$DescendingMap;->keySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 1858
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$SubMap;->descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2196
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    new-instance v0, Lorg/mapdb/BTreeMap$DescendingMap;

    iget-object v1, p0, Lorg/mapdb/BTreeMap$SubMap;->m:Lorg/mapdb/BTreeMap;

    iget-object v2, p0, Lorg/mapdb/BTreeMap$SubMap;->lo:Ljava/lang/Object;

    iget-boolean v3, p0, Lorg/mapdb/BTreeMap$SubMap;->loInclusive:Z

    iget-object v4, p0, Lorg/mapdb/BTreeMap$SubMap;->hi:Ljava/lang/Object;

    iget-boolean v5, p0, Lorg/mapdb/BTreeMap$SubMap;->hiInclusive:Z

    invoke-direct/range {v0 .. v5}, Lorg/mapdb/BTreeMap$DescendingMap;-><init>(Lorg/mapdb/BTreeMap;Ljava/lang/Object;ZLjava/lang/Object;Z)V

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 6
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
    .line 2270
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    new-instance v0, Lorg/mapdb/BTreeMap$BTreeEntryIterator;

    iget-object v1, p0, Lorg/mapdb/BTreeMap$SubMap;->m:Lorg/mapdb/BTreeMap;

    iget-object v2, p0, Lorg/mapdb/BTreeMap$SubMap;->lo:Ljava/lang/Object;

    iget-boolean v3, p0, Lorg/mapdb/BTreeMap$SubMap;->loInclusive:Z

    iget-object v4, p0, Lorg/mapdb/BTreeMap$SubMap;->hi:Ljava/lang/Object;

    iget-boolean v5, p0, Lorg/mapdb/BTreeMap$SubMap;->hiInclusive:Z

    invoke-direct/range {v0 .. v5}, Lorg/mapdb/BTreeMap$BTreeEntryIterator;-><init>(Lorg/mapdb/BTreeMap;Ljava/lang/Object;ZLjava/lang/Object;Z)V

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
    .line 2256
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
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
    .line 2071
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    iget-object v1, p0, Lorg/mapdb/BTreeMap$SubMap;->lo:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/mapdb/BTreeMap$SubMap;->m:Lorg/mapdb/BTreeMap;

    invoke-virtual {v1}, Lorg/mapdb/BTreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 2075
    .local v0, "k":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/mapdb/BTreeMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .end local v0    # "k":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :goto_1
    return-object v0

    .line 2071
    :cond_0
    iget-object v1, p0, Lorg/mapdb/BTreeMap$SubMap;->m:Lorg/mapdb/BTreeMap;

    iget-object v2, p0, Lorg/mapdb/BTreeMap$SubMap;->lo:Ljava/lang/Object;

    iget-boolean v3, p0, Lorg/mapdb/BTreeMap$SubMap;->loInclusive:Z

    invoke-virtual {v1, v2, v3}, Lorg/mapdb/BTreeMap;->findLarger(Ljava/lang/Object;Z)Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0

    .line 2075
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
    .line 2056
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$SubMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 2057
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 2058
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
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    .line 2002
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2003
    :cond_0
    invoke-direct {p0, p1}, Lorg/mapdb/BTreeMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 2011
    :cond_1
    :goto_0
    return-object v0

    .line 2005
    :cond_2
    invoke-direct {p0, p1}, Lorg/mapdb/BTreeMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2006
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$SubMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0

    .line 2009
    :cond_3
    iget-object v2, p0, Lorg/mapdb/BTreeMap$SubMap;->m:Lorg/mapdb/BTreeMap;

    invoke-virtual {v2, p1}, Lorg/mapdb/BTreeMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 2010
    .local v0, "ret":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/mapdb/BTreeMap$SubMap;->tooLow(Ljava/lang/Object;)Z

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
    .line 2017
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/mapdb/BTreeMap$SubMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 2018
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
    .line 1893
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1894
    :cond_0
    move-object v0, p1

    .line 1895
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v0}, Lorg/mapdb/BTreeMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lorg/mapdb/BTreeMap$SubMap;->m:Lorg/mapdb/BTreeMap;

    invoke-virtual {v1, v0}, Lorg/mapdb/BTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 1858
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/BTreeMap$SubMap;->headMap(Ljava/lang/Object;Z)Lorg/mapdb/BTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1858
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/mapdb/BTreeMap$SubMap;->headMap(Ljava/lang/Object;)Lorg/mapdb/BTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1858
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/mapdb/BTreeMap$SubMap;->headMap(Ljava/lang/Object;)Lorg/mapdb/BTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 1858
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/BTreeMap$SubMap;->headMap(Ljava/lang/Object;Z)Lorg/mapdb/BTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Lorg/mapdb/BTreeMap$SubMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/mapdb/BTreeMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2186
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mapdb/BTreeMap$SubMap;->headMap(Ljava/lang/Object;Z)Lorg/mapdb/BTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Lorg/mapdb/BTreeMap$SubMap;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lorg/mapdb/BTreeMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2166
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    .line 2167
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2168
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/mapdb/BTreeMap$SubMap;->newSubMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/mapdb/BTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2043
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/mapdb/BTreeMap$SubMap;->m:Lorg/mapdb/BTreeMap;

    invoke-virtual {v1, p1}, Lorg/mapdb/BTreeMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 2044
    .local v0, "r":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/mapdb/BTreeMap$SubMap;->inBounds(Ljava/lang/Object;)Z

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

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 2049
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/mapdb/BTreeMap$SubMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 2050
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
    .line 1923
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$SubMap;->keyIterator()Ljava/util/Iterator;

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
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2262
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    new-instance v0, Lorg/mapdb/BTreeMap$BTreeKeyIterator;

    iget-object v1, p0, Lorg/mapdb/BTreeMap$SubMap;->m:Lorg/mapdb/BTreeMap;

    iget-object v2, p0, Lorg/mapdb/BTreeMap$SubMap;->lo:Ljava/lang/Object;

    iget-boolean v3, p0, Lorg/mapdb/BTreeMap$SubMap;->loInclusive:Z

    iget-object v4, p0, Lorg/mapdb/BTreeMap$SubMap;->hi:Ljava/lang/Object;

    iget-boolean v5, p0, Lorg/mapdb/BTreeMap$SubMap;->hiInclusive:Z

    invoke-direct/range {v0 .. v5}, Lorg/mapdb/BTreeMap$BTreeKeyIterator;-><init>(Lorg/mapdb/BTreeMap;Ljava/lang/Object;ZLjava/lang/Object;Z)V

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
    .line 2244
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    new-instance v0, Lorg/mapdb/BTreeMap$KeySet;

    iget-object v1, p0, Lorg/mapdb/BTreeMap$SubMap;->m:Lorg/mapdb/BTreeMap;

    iget-boolean v1, v1, Lorg/mapdb/BTreeMap;->hasValues:Z

    invoke-direct {v0, p0, v1}, Lorg/mapdb/BTreeMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;Z)V

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 1858
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$SubMap;->keySet()Ljava/util/NavigableSet;

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
    .line 2081
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    iget-object v1, p0, Lorg/mapdb/BTreeMap$SubMap;->hi:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/mapdb/BTreeMap$SubMap;->m:Lorg/mapdb/BTreeMap;

    invoke-virtual {v1}, Lorg/mapdb/BTreeMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 2086
    .local v0, "k":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/mapdb/BTreeMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .end local v0    # "k":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :goto_1
    return-object v0

    .line 2081
    :cond_0
    iget-object v1, p0, Lorg/mapdb/BTreeMap$SubMap;->m:Lorg/mapdb/BTreeMap;

    iget-object v2, p0, Lorg/mapdb/BTreeMap$SubMap;->hi:Ljava/lang/Object;

    iget-boolean v3, p0, Lorg/mapdb/BTreeMap$SubMap;->hiInclusive:Z

    invoke-virtual {v1, v2, v3}, Lorg/mapdb/BTreeMap;->findSmaller(Ljava/lang/Object;Z)Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0

    .line 2086
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
    .line 2063
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$SubMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 2064
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 2065
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    .line 1984
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1985
    :cond_0
    invoke-direct {p0, p1}, Lorg/mapdb/BTreeMap$SubMap;->tooLow(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1991
    :goto_0
    return-object v1

    .line 1987
    :cond_1
    invoke-direct {p0, p1}, Lorg/mapdb/BTreeMap$SubMap;->tooHigh(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1988
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$SubMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v1

    goto :goto_0

    .line 1990
    :cond_2
    iget-object v2, p0, Lorg/mapdb/BTreeMap$SubMap;->m:Lorg/mapdb/BTreeMap;

    invoke-virtual {v2, p1}, Lorg/mapdb/BTreeMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 1991
    .local v0, "r":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/mapdb/BTreeMap$SubMap;->tooLow(Ljava/lang/Object;)Z

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

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 1996
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/mapdb/BTreeMap$SubMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 1997
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
    .line 2201
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    new-instance v0, Lorg/mapdb/BTreeMap$KeySet;

    iget-object v1, p0, Lorg/mapdb/BTreeMap$SubMap;->m:Lorg/mapdb/BTreeMap;

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
    .line 2092
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$SubMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 2093
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/mapdb/BTreeMap$SubMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2094
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
    .line 2102
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$SubMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 2103
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/mapdb/BTreeMap$SubMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2104
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
    .line 1900
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Lorg/mapdb/BTreeMap$SubMap;->checkKeyBounds(Ljava/lang/Object;)V

    .line 1901
    iget-object v0, p0, Lorg/mapdb/BTreeMap$SubMap;->m:Lorg/mapdb/BTreeMap;

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
    .line 1951
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Lorg/mapdb/BTreeMap$SubMap;->checkKeyBounds(Ljava/lang/Object;)V

    .line 1952
    iget-object v0, p0, Lorg/mapdb/BTreeMap$SubMap;->m:Lorg/mapdb/BTreeMap;

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
    .line 1906
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    move-object v0, p1

    .line 1907
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v0}, Lorg/mapdb/BTreeMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/mapdb/BTreeMap$SubMap;->m:Lorg/mapdb/BTreeMap;

    invoke-virtual {v1, v0}, Lorg/mapdb/BTreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1957
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    move-object v0, p1

    .line 1958
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, v0}, Lorg/mapdb/BTreeMap$SubMap;->inBounds(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mapdb/BTreeMap$SubMap;->m:Lorg/mapdb/BTreeMap;

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
    .line 1969
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Lorg/mapdb/BTreeMap$SubMap;->checkKeyBounds(Ljava/lang/Object;)V

    .line 1970
    iget-object v0, p0, Lorg/mapdb/BTreeMap$SubMap;->m:Lorg/mapdb/BTreeMap;

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
    .line 1963
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Lorg/mapdb/BTreeMap$SubMap;->checkKeyBounds(Ljava/lang/Object;)V

    .line 1964
    iget-object v0, p0, Lorg/mapdb/BTreeMap$SubMap;->m:Lorg/mapdb/BTreeMap;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mapdb/BTreeMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 1912
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$SubMap;->keyIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1913
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    const/4 v0, 0x0

    .line 1914
    .local v0, "counter":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1915
    add-int/lit8 v0, v0, 0x1

    .line 1916
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 1918
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
    .line 1858
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mapdb/BTreeMap$SubMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/mapdb/BTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1858
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/BTreeMap$SubMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/BTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1858
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/BTreeMap$SubMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/BTreeMap$SubMap;

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
    .line 1858
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mapdb/BTreeMap$SubMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/mapdb/BTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/BTreeMap$SubMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Lorg/mapdb/BTreeMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2181
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/mapdb/BTreeMap$SubMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/mapdb/BTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/mapdb/BTreeMap$SubMap;
    .locals 1
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Lorg/mapdb/BTreeMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2158
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 2159
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2160
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mapdb/BTreeMap$SubMap;->newSubMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/mapdb/BTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 1858
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/BTreeMap$SubMap;->tailMap(Ljava/lang/Object;Z)Lorg/mapdb/BTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1858
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/mapdb/BTreeMap$SubMap;->tailMap(Ljava/lang/Object;)Lorg/mapdb/BTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1858
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/mapdb/BTreeMap$SubMap;->tailMap(Ljava/lang/Object;)Lorg/mapdb/BTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 1858
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/BTreeMap$SubMap;->tailMap(Ljava/lang/Object;Z)Lorg/mapdb/BTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Lorg/mapdb/BTreeMap$SubMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/mapdb/BTreeMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2191
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/mapdb/BTreeMap$SubMap;->tailMap(Ljava/lang/Object;Z)Lorg/mapdb/BTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Lorg/mapdb/BTreeMap$SubMap;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lorg/mapdb/BTreeMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2174
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    .line 2175
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2176
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/mapdb/BTreeMap$SubMap;->newSubMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lorg/mapdb/BTreeMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method valueIterator()Ljava/util/Iterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2266
    .local p0, "this":Lorg/mapdb/BTreeMap$SubMap;, "Lorg/mapdb/BTreeMap$SubMap<TK;TV;>;"
    new-instance v0, Lorg/mapdb/BTreeMap$BTreeValueIterator;

    iget-object v1, p0, Lorg/mapdb/BTreeMap$SubMap;->m:Lorg/mapdb/BTreeMap;

    iget-object v2, p0, Lorg/mapdb/BTreeMap$SubMap;->lo:Ljava/lang/Object;

    iget-boolean v3, p0, Lorg/mapdb/BTreeMap$SubMap;->loInclusive:Z

    iget-object v4, p0, Lorg/mapdb/BTreeMap$SubMap;->hi:Ljava/lang/Object;

    iget-boolean v5, p0, Lorg/mapdb/BTreeMap$SubMap;->hiInclusive:Z

    invoke-direct/range {v0 .. v5}, Lorg/mapdb/BTreeMap$BTreeValueIterator;-><init>(Lorg/mapdb/BTreeMap;Ljava/lang/Object;ZLjava/lang/Object;Z)V

    return-object v0
.end method
