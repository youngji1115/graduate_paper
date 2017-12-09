.class Lorg/mapdb/BTreeMap$BTreeKeyIterator;
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
    name = "BTreeKeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/mapdb/BTreeMap$BTreeIterator;",
        "Ljava/util/Iterator",
        "<TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/mapdb/BTreeMap;)V
    .locals 0
    .param p1, "m"    # Lorg/mapdb/BTreeMap;

    .prologue
    .line 1037
    .local p0, "this":Lorg/mapdb/BTreeMap$BTreeKeyIterator;, "Lorg/mapdb/BTreeMap$BTreeKeyIterator<TK;>;"
    invoke-direct {p0, p1}, Lorg/mapdb/BTreeMap$BTreeIterator;-><init>(Lorg/mapdb/BTreeMap;)V

    .line 1038
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
    .line 1041
    .local p0, "this":Lorg/mapdb/BTreeMap$BTreeKeyIterator;, "Lorg/mapdb/BTreeMap$BTreeKeyIterator<TK;>;"
    invoke-direct/range {p0 .. p5}, Lorg/mapdb/BTreeMap$BTreeIterator;-><init>(Lorg/mapdb/BTreeMap;Ljava/lang/Object;ZLjava/lang/Object;Z)V

    .line 1042
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1046
    .local p0, "this":Lorg/mapdb/BTreeMap$BTreeKeyIterator;, "Lorg/mapdb/BTreeMap$BTreeKeyIterator<TK;>;"
    iget-object v1, p0, Lorg/mapdb/BTreeMap$BTreeKeyIterator;->currentLeaf:Lorg/mapdb/BTreeMap$LeafNode;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1047
    :cond_0
    iget-object v1, p0, Lorg/mapdb/BTreeMap$BTreeKeyIterator;->currentLeaf:Lorg/mapdb/BTreeMap$LeafNode;

    iget-object v1, v1, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    iget v2, p0, Lorg/mapdb/BTreeMap$BTreeKeyIterator;->currentPos:I

    aget-object v0, v1, v2

    .line 1048
    .local v0, "ret":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$BTreeKeyIterator;->advance()V

    .line 1049
    return-object v0
.end method
