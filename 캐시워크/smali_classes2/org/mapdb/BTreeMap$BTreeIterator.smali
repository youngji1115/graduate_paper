.class public Lorg/mapdb/BTreeMap$BTreeIterator;
.super Ljava/lang/Object;
.source "BTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/BTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BTreeIterator"
.end annotation


# instance fields
.field currentLeaf:Lorg/mapdb/BTreeMap$LeafNode;

.field currentPos:I

.field final hi:Ljava/lang/Object;

.field final hiInclusive:Z

.field lastReturnedKey:Ljava/lang/Object;

.field final m:Lorg/mapdb/BTreeMap;


# direct methods
.method constructor <init>(Lorg/mapdb/BTreeMap;)V
    .locals 1
    .param p1, "m"    # Lorg/mapdb/BTreeMap;

    .prologue
    .line 848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 849
    iput-object p1, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->m:Lorg/mapdb/BTreeMap;

    .line 850
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->hi:Ljava/lang/Object;

    .line 851
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->hiInclusive:Z

    .line 852
    invoke-direct {p0}, Lorg/mapdb/BTreeMap$BTreeIterator;->pointToStart()V

    .line 853
    return-void
.end method

.method constructor <init>(Lorg/mapdb/BTreeMap;Ljava/lang/Object;ZLjava/lang/Object;Z)V
    .locals 7
    .param p1, "m"    # Lorg/mapdb/BTreeMap;
    .param p2, "lo"    # Ljava/lang/Object;
    .param p3, "loInclusive"    # Z
    .param p4, "hi"    # Ljava/lang/Object;
    .param p5, "hiInclusive"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 857
    iput-object p1, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->m:Lorg/mapdb/BTreeMap;

    .line 858
    if-nez p2, :cond_2

    .line 859
    invoke-direct {p0}, Lorg/mapdb/BTreeMap$BTreeIterator;->pointToStart()V

    .line 866
    :goto_0
    iput-object p4, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->hi:Ljava/lang/Object;

    .line 867
    iput-boolean p5, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->hiInclusive:Z

    .line 868
    if-eqz p4, :cond_1

    iget-object v3, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentLeaf:Lorg/mapdb/BTreeMap$LeafNode;

    if-eqz v3, :cond_1

    .line 870
    iget-object v3, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentLeaf:Lorg/mapdb/BTreeMap$LeafNode;

    iget-object v3, v3, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    iget v6, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentPos:I

    aget-object v1, v3, v6

    .line 871
    .local v1, "key":Ljava/lang/Object;
    iget-object v3, p1, Lorg/mapdb/BTreeMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v3, v1, p4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 872
    .local v0, "c":I
    if-gtz v0, :cond_0

    if-nez v0, :cond_1

    if-nez p5, :cond_1

    .line 874
    :cond_0
    iput-object v5, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentLeaf:Lorg/mapdb/BTreeMap$LeafNode;

    .line 875
    iput v4, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentPos:I

    .line 879
    .end local v0    # "c":I
    .end local v1    # "key":Ljava/lang/Object;
    :cond_1
    return-void

    .line 861
    :cond_2
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/BTreeMap;->findLargerNode(Ljava/lang/Object;Z)Lorg/mapdb/Fun$Tuple2;

    move-result-object v2

    .line 862
    .local v2, "l":Lorg/mapdb/Fun$Tuple2;, "Lorg/mapdb/Fun$Tuple2<Ljava/lang/Integer;Lorg/mapdb/BTreeMap$LeafNode;>;"
    if-eqz v2, :cond_3

    iget-object v3, v2, Lorg/mapdb/Fun$Tuple2;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_1
    iput v3, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentPos:I

    .line 863
    if-eqz v2, :cond_4

    iget-object v3, v2, Lorg/mapdb/Fun$Tuple2;->b:Ljava/lang/Object;

    check-cast v3, Lorg/mapdb/BTreeMap$LeafNode;

    :goto_2
    iput-object v3, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentLeaf:Lorg/mapdb/BTreeMap$LeafNode;

    goto :goto_0

    :cond_3
    move v3, v4

    .line 862
    goto :goto_1

    :cond_4
    move-object v3, v5

    .line 863
    goto :goto_2
.end method

.method private pointToStart()V
    .locals 8

    .prologue
    .line 884
    iget-object v1, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->m:Lorg/mapdb/BTreeMap;

    iget-object v1, v1, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v4, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->m:Lorg/mapdb/BTreeMap;

    iget-wide v4, v4, Lorg/mapdb/BTreeMap;->rootRecidRef:J

    sget-object v6, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v1, v4, v5, v6}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 885
    .local v2, "rootRecid":J
    iget-object v1, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->m:Lorg/mapdb/BTreeMap;

    iget-object v1, v1, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v4, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->m:Lorg/mapdb/BTreeMap;

    iget-object v4, v4, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v1, v2, v3, v4}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/BTreeMap$BNode;

    .line 886
    .local v0, "node":Lorg/mapdb/BTreeMap$BNode;
    :goto_0
    invoke-interface {v0}, Lorg/mapdb/BTreeMap$BNode;->isLeaf()Z

    move-result v1

    if-nez v1, :cond_0

    .line 887
    iget-object v1, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->m:Lorg/mapdb/BTreeMap;

    iget-object v1, v1, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    invoke-interface {v0}, Lorg/mapdb/BTreeMap$BNode;->child()[J

    move-result-object v4

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    iget-object v6, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->m:Lorg/mapdb/BTreeMap;

    iget-object v6, v6, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v1, v4, v5, v6}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "node":Lorg/mapdb/BTreeMap$BNode;
    check-cast v0, Lorg/mapdb/BTreeMap$BNode;

    .restart local v0    # "node":Lorg/mapdb/BTreeMap$BNode;
    goto :goto_0

    .line 889
    :cond_0
    check-cast v0, Lorg/mapdb/BTreeMap$LeafNode;

    .end local v0    # "node":Lorg/mapdb/BTreeMap$BNode;
    iput-object v0, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentLeaf:Lorg/mapdb/BTreeMap$LeafNode;

    .line 890
    const/4 v1, 0x1

    iput v1, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentPos:I

    .line 892
    :goto_1
    iget-object v1, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentLeaf:Lorg/mapdb/BTreeMap$LeafNode;

    iget-object v1, v1, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 894
    iget-object v1, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentLeaf:Lorg/mapdb/BTreeMap$LeafNode;

    iget-wide v4, v1, Lorg/mapdb/BTreeMap$LeafNode;->next:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    .line 895
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentLeaf:Lorg/mapdb/BTreeMap$LeafNode;

    .line 900
    :cond_1
    return-void

    .line 898
    :cond_2
    iget-object v1, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->m:Lorg/mapdb/BTreeMap;

    iget-object v1, v1, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v4, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentLeaf:Lorg/mapdb/BTreeMap$LeafNode;

    iget-wide v4, v4, Lorg/mapdb/BTreeMap$LeafNode;->next:J

    iget-object v6, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->m:Lorg/mapdb/BTreeMap;

    iget-object v6, v6, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v1, v4, v5, v6}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapdb/BTreeMap$LeafNode;

    iput-object v1, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentLeaf:Lorg/mapdb/BTreeMap$LeafNode;

    goto :goto_1
.end method


# virtual methods
.method protected advance()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 914
    iget-object v2, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentLeaf:Lorg/mapdb/BTreeMap$LeafNode;

    if-nez v2, :cond_1

    .line 945
    :cond_0
    :goto_0
    return-void

    .line 915
    :cond_1
    iget-object v2, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentLeaf:Lorg/mapdb/BTreeMap$LeafNode;

    iget-object v2, v2, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    iget v3, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentPos:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->lastReturnedKey:Ljava/lang/Object;

    .line 916
    iget v2, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentPos:I

    .line 917
    iget v2, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentPos:I

    iget-object v3, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentLeaf:Lorg/mapdb/BTreeMap$LeafNode;

    iget-object v3, v3, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_4

    .line 919
    iget-object v2, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentLeaf:Lorg/mapdb/BTreeMap$LeafNode;

    iget-wide v2, v2, Lorg/mapdb/BTreeMap$LeafNode;->next:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_2

    .line 920
    iput-object v7, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentLeaf:Lorg/mapdb/BTreeMap$LeafNode;

    .line 921
    iput v6, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentPos:I

    goto :goto_0

    .line 924
    :cond_2
    const/4 v2, 0x1

    iput v2, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentPos:I

    .line 925
    iget-object v2, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->m:Lorg/mapdb/BTreeMap;

    iget-object v2, v2, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v3, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentLeaf:Lorg/mapdb/BTreeMap$LeafNode;

    iget-wide v4, v3, Lorg/mapdb/BTreeMap$LeafNode;->next:J

    iget-object v3, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->m:Lorg/mapdb/BTreeMap;

    iget-object v3, v3, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v2, v4, v5, v3}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapdb/BTreeMap$LeafNode;

    iput-object v2, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentLeaf:Lorg/mapdb/BTreeMap$LeafNode;

    .line 926
    :goto_1
    iget-object v2, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentLeaf:Lorg/mapdb/BTreeMap$LeafNode;

    iget-object v2, v2, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    array-length v2, v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 927
    iget-object v2, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentLeaf:Lorg/mapdb/BTreeMap$LeafNode;

    iget-wide v2, v2, Lorg/mapdb/BTreeMap$LeafNode;->next:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_3

    .line 928
    iput-object v7, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentLeaf:Lorg/mapdb/BTreeMap$LeafNode;

    .line 929
    iput v6, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentPos:I

    goto :goto_0

    .line 932
    :cond_3
    iget-object v2, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->m:Lorg/mapdb/BTreeMap;

    iget-object v2, v2, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v3, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentLeaf:Lorg/mapdb/BTreeMap$LeafNode;

    iget-wide v4, v3, Lorg/mapdb/BTreeMap$LeafNode;->next:J

    iget-object v3, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->m:Lorg/mapdb/BTreeMap;

    iget-object v3, v3, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v2, v4, v5, v3}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapdb/BTreeMap$LeafNode;

    iput-object v2, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentLeaf:Lorg/mapdb/BTreeMap$LeafNode;

    goto :goto_1

    .line 935
    :cond_4
    iget-object v2, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->hi:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentLeaf:Lorg/mapdb/BTreeMap$LeafNode;

    if-eqz v2, :cond_0

    .line 937
    iget-object v2, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentLeaf:Lorg/mapdb/BTreeMap$LeafNode;

    iget-object v2, v2, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    iget v3, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentPos:I

    aget-object v1, v2, v3

    .line 938
    .local v1, "key":Ljava/lang/Object;
    iget-object v2, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->m:Lorg/mapdb/BTreeMap;

    iget-object v2, v2, Lorg/mapdb/BTreeMap;->comparator:Ljava/util/Comparator;

    iget-object v3, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->hi:Ljava/lang/Object;

    invoke-interface {v2, v1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 939
    .local v0, "c":I
    if-gtz v0, :cond_5

    if-nez v0, :cond_0

    iget-boolean v2, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->hiInclusive:Z

    if-nez v2, :cond_0

    .line 941
    :cond_5
    iput-object v7, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentLeaf:Lorg/mapdb/BTreeMap$LeafNode;

    .line 942
    iput v6, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentPos:I

    goto/16 :goto_0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->currentLeaf:Lorg/mapdb/BTreeMap$LeafNode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 908
    iget-object v0, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->lastReturnedKey:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 909
    :cond_0
    iget-object v0, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->m:Lorg/mapdb/BTreeMap;

    iget-object v1, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->lastReturnedKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/mapdb/BTreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mapdb/BTreeMap$BTreeIterator;->lastReturnedKey:Ljava/lang/Object;

    .line 911
    return-void
.end method
