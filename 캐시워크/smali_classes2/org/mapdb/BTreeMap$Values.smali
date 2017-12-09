.class final Lorg/mapdb/BTreeMap$Values;
.super Ljava/util/AbstractCollection;
.source "BTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/BTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final m:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<",
            "Ljava/lang/Object;",
            "TE;>;"
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
            "<",
            "Ljava/lang/Object;",
            "TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1755
    .local p0, "this":Lorg/mapdb/BTreeMap$Values;, "Lorg/mapdb/BTreeMap$Values<TE;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<Ljava/lang/Object;TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 1756
    iput-object p1, p0, Lorg/mapdb/BTreeMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 1757
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1779
    .local p0, "this":Lorg/mapdb/BTreeMap$Values;, "Lorg/mapdb/BTreeMap$Values<TE;>;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->clear()V

    .line 1780
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1775
    .local p0, "this":Lorg/mapdb/BTreeMap$Values;, "Lorg/mapdb/BTreeMap$Values<TE;>;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1767
    .local p0, "this":Lorg/mapdb/BTreeMap$Values;, "Lorg/mapdb/BTreeMap$Values<TE;>;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

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
    .line 1760
    .local p0, "this":Lorg/mapdb/BTreeMap$Values;, "Lorg/mapdb/BTreeMap$Values<TE;>;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    instance-of v0, v0, Lorg/mapdb/BTreeMap;

    if-eqz v0, :cond_0

    .line 1761
    iget-object v0, p0, Lorg/mapdb/BTreeMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    check-cast v0, Lorg/mapdb/BTreeMap;

    invoke-virtual {v0}, Lorg/mapdb/BTreeMap;->valueIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1763
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mapdb/BTreeMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    check-cast v0, Lorg/mapdb/BTreeMap$SubMap;

    invoke-virtual {v0}, Lorg/mapdb/BTreeMap$SubMap;->valueIterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1771
    .local p0, "this":Lorg/mapdb/BTreeMap$Values;, "Lorg/mapdb/BTreeMap$Values<TE;>;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap$Values;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1782
    .local p0, "this":Lorg/mapdb/BTreeMap$Values;, "Lorg/mapdb/BTreeMap$Values<TE;>;"
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
    .line 1784
    .local p0, "this":Lorg/mapdb/BTreeMap$Values;, "Lorg/mapdb/BTreeMap$Values<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Lorg/mapdb/BTreeMap;->toList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
