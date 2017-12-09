.class Lorg/mapdb/BTreeMap$BTreeValueIterator;
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
    name = "BTreeValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/mapdb/BTreeMap$BTreeIterator;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/mapdb/BTreeMap;)V
    .locals 0
    .param p1, "m"    # Lorg/mapdb/BTreeMap;

    .prologue
    .line 1056
    .local p0, "this":Lorg/mapdb/BTreeMap$BTreeValueIterator;, "Lorg/mapdb/BTreeMap$BTreeValueIterator<TV;>;"
    invoke-direct {p0, p1}, Lorg/mapdb/BTreeMap$BTreeIterator;-><init>(Lorg/mapdb/BTreeMap;)V

    .line 1057
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
    .line 1060
    .local p0, "this":Lorg/mapdb/BTreeMap$BTreeValueIterator;, "Lorg/mapdb/BTreeMap$BTreeValueIterator<TV;>;"
    invoke-direct/range {p0 .. p5}, Lorg/mapdb/BTreeMap$BTreeIterator;-><init>(Lorg/mapdb/BTreeMap;Ljava/lang/Object;ZLjava/lang/Object;Z)V

    .line 1061
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1065
    .local p0, "this":Lorg/mapdb/BTreeMap$BTreeValueIterator;, "Lorg/mapdb/BTreeMap$BTreeValueIterator<TV;>;"
    iget-object v1, p0, Lorg/mapdb/BTreeMap$BTreeValueIterator;->currentLeaf:Lorg/mapdb/BTreeMap$LeafNode;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1066
    :cond_0
    iget-object v1, p0, Lorg/mapdb/BTreeMap$BTreeValueIterator;->currentLeaf:Lorg/mapdb/BTreeMap$LeafNode;

    iget-object v1, v1, Lorg/mapdb/BTreeMap$LeafNode;->vals:[Ljava/lang/Object;

    iget v2, p0, Lorg/mapdb/BTreeMap$BTreeValueIterator;->currentPos:I

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    .line 1067
    .local v0, "ret":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$BTreeValueIterator;->advance()V

    .line 1068
    iget-object v1, p0, Lorg/mapdb/BTreeMap$BTreeValueIterator;->m:Lorg/mapdb/BTreeMap;

    invoke-virtual {v1, v0}, Lorg/mapdb/BTreeMap;->valExpand(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
