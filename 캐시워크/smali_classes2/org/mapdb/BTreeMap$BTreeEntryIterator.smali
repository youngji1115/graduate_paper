.class Lorg/mapdb/BTreeMap$BTreeEntryIterator;
.super Lorg/mapdb/BTreeMap$BTreeIterator;
.source "BTreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/BTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BTreeEntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/mapdb/BTreeMap$BTreeIterator;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/mapdb/BTreeMap;)V
    .locals 0
    .param p1, "m"    # Lorg/mapdb/BTreeMap;

    .prologue
    .line 1076
    .local p0, "this":Lorg/mapdb/BTreeMap$BTreeEntryIterator;, "Lorg/mapdb/BTreeMap$BTreeEntryIterator<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/mapdb/BTreeMap$BTreeIterator;-><init>(Lorg/mapdb/BTreeMap;)V

    .line 1077
    return-void
.end method

.method constructor <init>(Lorg/mapdb/BTreeMap;Ljava/lang/Object;ZLjava/lang/Object;Z)V
    .locals 0
    .param p1, "m"    # Lorg/mapdb/BTreeMap;
    .param p2, "lo"    # Ljava/lang/Object;
    .param p3, "loInclusive"    # Z
    .param p4, "hi"    # Ljava/lang/Object;
    .param p5, "hiInclusive"    # Z

    .prologue
    .line 1080
    .local p0, "this":Lorg/mapdb/BTreeMap$BTreeEntryIterator;, "Lorg/mapdb/BTreeMap$BTreeEntryIterator<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Lorg/mapdb/BTreeMap$BTreeIterator;-><init>(Lorg/mapdb/BTreeMap;Ljava/lang/Object;ZLjava/lang/Object;Z)V

    .line 1081
    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1073
    .local p0, "this":Lorg/mapdb/BTreeMap$BTreeEntryIterator;, "Lorg/mapdb/BTreeMap$BTreeEntryIterator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$BTreeEntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1085
    .local p0, "this":Lorg/mapdb/BTreeMap$BTreeEntryIterator;, "Lorg/mapdb/BTreeMap$BTreeEntryIterator<TK;TV;>;"
    iget-object v2, p0, Lorg/mapdb/BTreeMap$BTreeEntryIterator;->currentLeaf:Lorg/mapdb/BTreeMap$LeafNode;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 1086
    :cond_0
    iget-object v2, p0, Lorg/mapdb/BTreeMap$BTreeEntryIterator;->currentLeaf:Lorg/mapdb/BTreeMap$LeafNode;

    iget-object v2, v2, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    iget v3, p0, Lorg/mapdb/BTreeMap$BTreeEntryIterator;->currentPos:I

    aget-object v0, v2, v3

    .line 1087
    .local v0, "ret":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Lorg/mapdb/BTreeMap$BTreeEntryIterator;->currentLeaf:Lorg/mapdb/BTreeMap$LeafNode;

    iget-object v2, v2, Lorg/mapdb/BTreeMap$LeafNode;->vals:[Ljava/lang/Object;

    iget v3, p0, Lorg/mapdb/BTreeMap$BTreeEntryIterator;->currentPos:I

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v2, v3

    .line 1088
    .local v1, "val":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$BTreeEntryIterator;->advance()V

    .line 1089
    iget-object v2, p0, Lorg/mapdb/BTreeMap$BTreeEntryIterator;->m:Lorg/mapdb/BTreeMap;

    iget-object v3, p0, Lorg/mapdb/BTreeMap$BTreeEntryIterator;->m:Lorg/mapdb/BTreeMap;

    invoke-virtual {v3, v1}, Lorg/mapdb/BTreeMap;->valExpand(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/mapdb/BTreeMap;->makeEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    return-object v2
.end method
