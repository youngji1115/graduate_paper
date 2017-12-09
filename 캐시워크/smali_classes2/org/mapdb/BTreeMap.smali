.class public Lorg/mapdb/BTreeMap;
.super Ljava/util/AbstractMap;
.source "BTreeMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentNavigableMap;
.implements Lorg/mapdb/Bind$MapWithModificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapdb/BTreeMap$DescendingMap;,
        Lorg/mapdb/BTreeMap$SubMap;,
        Lorg/mapdb/BTreeMap$EntrySet;,
        Lorg/mapdb/BTreeMap$Values;,
        Lorg/mapdb/BTreeMap$KeySet;,
        Lorg/mapdb/BTreeMap$BTreeEntryIterator;,
        Lorg/mapdb/BTreeMap$BTreeValueIterator;,
        Lorg/mapdb/BTreeMap$BTreeKeyIterator;,
        Lorg/mapdb/BTreeMap$BTreeIterator;,
        Lorg/mapdb/BTreeMap$NodeSerializer;,
        Lorg/mapdb/BTreeMap$LeafNode;,
        Lorg/mapdb/BTreeMap$DirNode;,
        Lorg/mapdb/BTreeMap$BNode;,
        Lorg/mapdb/BTreeMap$ValRef;
    }
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
        "<TK;TV;>;",
        "Lorg/mapdb/Bind$MapWithModificationListener",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final B_TREE_NODE_DIR_C:I = 0xbb

.field protected static final B_TREE_NODE_DIR_L:I = 0xb9

.field protected static final B_TREE_NODE_DIR_LR:I = 0xb8

.field protected static final B_TREE_NODE_DIR_R:I = 0xba

.field protected static final B_TREE_NODE_LEAF_C:I = 0xb7

.field protected static final B_TREE_NODE_LEAF_L:I = 0xb5

.field protected static final B_TREE_NODE_LEAF_LR:I = 0xb4

.field protected static final B_TREE_NODE_LEAF_R:I = 0xb6

.field public static final COMPARABLE_COMPARATOR:Ljava/util/Comparator;

.field protected static final EMPTY:Ljava/lang/Object;


# instance fields
.field protected final comparator:Ljava/util/Comparator;

.field protected final counter:Lorg/mapdb/Atomic$Long;

.field private final descendingMap:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field protected final engine:Lorg/mapdb/Engine;

.field private final entrySet:Lorg/mapdb/BTreeMap$EntrySet;

.field protected final hasValues:Z

.field protected final keySerializer:Lorg/mapdb/BTreeKeySerializer;

.field private final keySet:Lorg/mapdb/BTreeMap$KeySet;

.field protected final leftEdges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final maxNodeSize:I

.field protected modListeners:[Lorg/mapdb/Bind$MapListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/mapdb/Bind$MapListener",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field protected final modListenersLock:Ljava/lang/Object;

.field protected final nodeLocks:Lorg/mapdb/LongConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/LongConcurrentHashMap",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field protected final nodeSerializer:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<",
            "Lorg/mapdb/BTreeMap$BNode;",
            ">;"
        }
    .end annotation
.end field

.field protected final numberOfNodeMetas:I

.field protected final rootRecidRef:J

.field protected final valsOutsideNodes:Z

.field protected final valueSerializer:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final values:Lorg/mapdb/BTreeMap$Values;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-class v0, Lorg/mapdb/BTreeMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/mapdb/BTreeMap;->$assertionsDisabled:Z

    .line 99
    new-instance v0, Lorg/mapdb/BTreeMap$1;

    invoke-direct {v0}, Lorg/mapdb/BTreeMap$1;-><init>()V

    sput-object v0, Lorg/mapdb/BTreeMap;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/mapdb/BTreeMap;->EMPTY:Ljava/lang/Object;

    return-void

    .line 94
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/mapdb/Engine;JIZJLorg/mapdb/BTreeKeySerializer;Lorg/mapdb/Serializer;Ljava/util/Comparator;IZ)V
    .locals 14
    .param p1, "engine"    # Lorg/mapdb/Engine;
    .param p2, "rootRecidRef"    # J
    .param p4, "maxNodeSize"    # I
    .param p5, "valsOutsideNodes"    # Z
    .param p6, "counterRecid"    # J
    .param p11, "numberOfNodeMetas"    # I
    .param p12, "disableLocks"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/Engine;",
            "JIZJ",
            "Lorg/mapdb/BTreeKeySerializer",
            "<TK;>;",
            "Lorg/mapdb/Serializer",
            "<TV;>;",
            "Ljava/util/Comparator",
            "<TK;>;IZ)V"
        }
    .end annotation

    .prologue
    .line 494
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    .local p8, "keySerializer":Lorg/mapdb/BTreeKeySerializer;, "Lorg/mapdb/BTreeKeySerializer<TK;>;"
    .local p9, "valueSerializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TV;>;"
    .local p10, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TK;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 133
    new-instance v2, Lorg/mapdb/LongConcurrentHashMap;

    invoke-direct {v2}, Lorg/mapdb/LongConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    .line 152
    new-instance v2, Lorg/mapdb/BTreeMap$EntrySet;

    invoke-direct {v2, p0}, Lorg/mapdb/BTreeMap$EntrySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v2, p0, Lorg/mapdb/BTreeMap;->entrySet:Lorg/mapdb/BTreeMap$EntrySet;

    .line 154
    new-instance v2, Lorg/mapdb/BTreeMap$Values;

    invoke-direct {v2, p0}, Lorg/mapdb/BTreeMap$Values;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v2, p0, Lorg/mapdb/BTreeMap;->values:Lorg/mapdb/BTreeMap$Values;

    .line 156
    new-instance v2, Lorg/mapdb/BTreeMap$DescendingMap;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/mapdb/BTreeMap$DescendingMap;-><init>(Lorg/mapdb/BTreeMap;Ljava/lang/Object;ZLjava/lang/Object;Z)V

    iput-object v2, p0, Lorg/mapdb/BTreeMap;->descendingMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 2763
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lorg/mapdb/BTreeMap;->modListenersLock:Ljava/lang/Object;

    .line 2764
    const/4 v2, 0x0

    new-array v2, v2, [Lorg/mapdb/Bind$MapListener;

    iput-object v2, p0, Lorg/mapdb/BTreeMap;->modListeners:[Lorg/mapdb/Bind$MapListener;

    .line 495
    rem-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "maxNodeSize must be dividable by 2"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 496
    :cond_0
    const/4 v2, 0x6

    move/from16 v0, p4

    if-ge v0, v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "maxNodeSize too low"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 497
    :cond_1
    const/16 v2, 0x7e

    move/from16 v0, p4

    if-le v0, v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "maxNodeSize too high"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 498
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_3

    const-wide/16 v2, 0x0

    cmp-long v2, p6, v2

    if-ltz v2, :cond_3

    if-gez p11, :cond_4

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 499
    :cond_4
    if-nez p8, :cond_5

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 500
    :cond_5
    if-nez p10, :cond_6

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 501
    :cond_6
    invoke-static/range {p8 .. p8}, Lorg/mapdb/SerializerBase;->assertSerializable(Ljava/lang/Object;)V

    .line 502
    invoke-static/range {p9 .. p9}, Lorg/mapdb/SerializerBase;->assertSerializable(Ljava/lang/Object;)V

    .line 503
    invoke-static/range {p10 .. p10}, Lorg/mapdb/SerializerBase;->assertSerializable(Ljava/lang/Object;)V

    .line 507
    move-wide/from16 v0, p2

    iput-wide v0, p0, Lorg/mapdb/BTreeMap;->rootRecidRef:J

    .line 508
    if-eqz p9, :cond_7

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lorg/mapdb/BTreeMap;->hasValues:Z

    .line 509
    move/from16 v0, p5

    iput-boolean v0, p0, Lorg/mapdb/BTreeMap;->valsOutsideNodes:Z

    .line 510
    iput-object p1, p0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    .line 511
    move/from16 v0, p4

    iput v0, p0, Lorg/mapdb/BTreeMap;->maxNodeSize:I

    .line 512
    move-object/from16 v0, p10

    iput-object v0, p0, Lorg/mapdb/BTreeMap;->comparator:Ljava/util/Comparator;

    .line 513
    move/from16 v0, p11

    iput v0, p0, Lorg/mapdb/BTreeMap;->numberOfNodeMetas:I

    .line 516
    invoke-virtual/range {p8 .. p8}, Lorg/mapdb/BTreeKeySerializer;->getComparator()Ljava/util/Comparator;

    move-result-object v12

    .line 517
    .local v12, "requiredComparator":Ljava/util/Comparator;
    if-eqz v12, :cond_8

    move-object/from16 v0, p10

    invoke-interface {v12, v0}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 518
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "KeySerializers requires its own comparator"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 508
    .end local v12    # "requiredComparator":Ljava/util/Comparator;
    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    .line 521
    .restart local v12    # "requiredComparator":Ljava/util/Comparator;
    :cond_8
    move-object/from16 v0, p8

    iput-object v0, p0, Lorg/mapdb/BTreeMap;->keySerializer:Lorg/mapdb/BTreeKeySerializer;

    .line 522
    move-object/from16 v0, p9

    iput-object v0, p0, Lorg/mapdb/BTreeMap;->valueSerializer:Lorg/mapdb/Serializer;

    .line 525
    new-instance v2, Lorg/mapdb/BTreeMap$NodeSerializer;

    move/from16 v3, p5

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move/from16 v7, p11

    invoke-direct/range {v2 .. v7}, Lorg/mapdb/BTreeMap$NodeSerializer;-><init>(ZLorg/mapdb/BTreeKeySerializer;Lorg/mapdb/Serializer;Ljava/util/Comparator;I)V

    iput-object v2, p0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    .line 527
    new-instance v2, Lorg/mapdb/BTreeMap$KeySet;

    iget-boolean v3, p0, Lorg/mapdb/BTreeMap;->hasValues:Z

    invoke-direct {v2, p0, v3}, Lorg/mapdb/BTreeMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;Z)V

    iput-object v2, p0, Lorg/mapdb/BTreeMap;->keySet:Lorg/mapdb/BTreeMap$KeySet;

    .line 530
    const-wide/16 v2, 0x0

    cmp-long v2, p6, v2

    if-eqz v2, :cond_9

    .line 531
    new-instance v2, Lorg/mapdb/Atomic$Long;

    move-wide/from16 v0, p6

    invoke-direct {v2, p1, v0, v1}, Lorg/mapdb/Atomic$Long;-><init>(Lorg/mapdb/Engine;J)V

    iput-object v2, p0, Lorg/mapdb/BTreeMap;->counter:Lorg/mapdb/Atomic$Long;

    .line 532
    iget-object v2, p0, Lorg/mapdb/BTreeMap;->counter:Lorg/mapdb/Atomic$Long;

    invoke-static {p0, v2}, Lorg/mapdb/Bind;->size(Lorg/mapdb/Bind$MapWithModificationListener;Lorg/mapdb/Atomic$Long;)V

    .line 538
    :goto_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v8, "leftEdges2":Ljava/util/ArrayList;
    sget-object v2, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    move-wide/from16 v0, p2

    invoke-interface {p1, v0, v1, v2}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 541
    .local v10, "r":J
    :goto_2
    iget-object v2, p0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {p1, v10, v11, v2}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/mapdb/BTreeMap$BNode;

    .line 542
    .local v9, "n":Lorg/mapdb/BTreeMap$BNode;
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    invoke-interface {v9}, Lorg/mapdb/BTreeMap$BNode;->isLeaf()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 546
    invoke-static {v8}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 547
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lorg/mapdb/BTreeMap;->leftEdges:Ljava/util/List;

    .line 548
    return-void

    .line 534
    .end local v8    # "leftEdges2":Ljava/util/ArrayList;
    .end local v9    # "n":Lorg/mapdb/BTreeMap$BNode;
    .end local v10    # "r":J
    :cond_9
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mapdb/BTreeMap;->counter:Lorg/mapdb/Atomic$Long;

    goto :goto_1

    .line 544
    .restart local v8    # "leftEdges2":Ljava/util/ArrayList;
    .restart local v9    # "n":Lorg/mapdb/BTreeMap$BNode;
    .restart local v10    # "r":J
    :cond_a
    invoke-interface {v9}, Lorg/mapdb/BTreeMap$BNode;->child()[J

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v10, v2, v3

    .line 545
    goto :goto_2
.end method

.method protected static arrayLongPut([JIJ)[J
    .locals 4
    .param p0, "array"    # [J
    .param p1, "pos"    # I
    .param p2, "value"    # J

    .prologue
    .line 2830
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    .line 2831
    .local v0, "ret":[J
    array-length v1, p0

    if-ge p1, v1, :cond_0

    .line 2832
    add-int/lit8 v1, p1, 0x1

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2834
    :cond_0
    aput-wide p2, v0, p1

    .line 2835
    return-object v0
.end method

.method protected static arrayPut([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "pos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 2840
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 2841
    .local v0, "ret":[Ljava/lang/Object;
    array-length v1, p0

    if-ge p1, v1, :cond_0

    .line 2842
    add-int/lit8 v1, p1, 0x1

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2844
    :cond_0
    aput-object p2, v0, p1

    .line 2845
    return-object v0
.end method

.method protected static assertNoLocks(Lorg/mapdb/LongConcurrentHashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/LongConcurrentHashMap",
            "<",
            "Ljava/lang/Thread;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2849
    .local p0, "locks":Lorg/mapdb/LongConcurrentHashMap;, "Lorg/mapdb/LongConcurrentHashMap<Ljava/lang/Thread;>;"
    invoke-virtual {p0}, Lorg/mapdb/LongConcurrentHashMap;->longMapIterator()Lorg/mapdb/LongMap$LongMapIterator;

    move-result-object v0

    .line 2850
    .local v0, "i":Lorg/mapdb/LongMap$LongMapIterator;, "Lorg/mapdb/LongMap$LongMapIterator<Ljava/lang/Thread;>;"
    const/4 v1, 0x0

    .line 2851
    .local v1, "t":Ljava/lang/Thread;
    :cond_0
    invoke-interface {v0}, Lorg/mapdb/LongMap$LongMapIterator;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2852
    if-nez v1, :cond_1

    .line 2853
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 2854
    :cond_1
    invoke-interface {v0}, Lorg/mapdb/LongMap$LongMapIterator;->value()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_0

    .line 2855
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Node "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lorg/mapdb/LongMap$LongMapIterator;->key()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is still locked"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 2858
    :cond_2
    return-void
.end method

.method protected static createRootRef(Lorg/mapdb/Engine;Lorg/mapdb/BTreeKeySerializer;Lorg/mapdb/Serializer;Ljava/util/Comparator;I)J
    .locals 10
    .param p0, "engine"    # Lorg/mapdb/Engine;
    .param p1, "keySer"    # Lorg/mapdb/BTreeKeySerializer;
    .param p2, "valueSer"    # Lorg/mapdb/Serializer;
    .param p3, "comparator"    # Ljava/util/Comparator;
    .param p4, "numberOfNodeMetas"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 552
    new-instance v6, Lorg/mapdb/BTreeMap$LeafNode;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v1

    const/4 v2, 0x1

    aput-object v3, v0, v2

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v4, 0x0

    invoke-direct {v6, v0, v2, v4, v5}, Lorg/mapdb/BTreeMap$LeafNode;-><init>([Ljava/lang/Object;[Ljava/lang/Object;J)V

    .line 554
    .local v6, "emptyRoot":Lorg/mapdb/BTreeMap$LeafNode;
    new-instance v0, Lorg/mapdb/BTreeMap$NodeSerializer;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/mapdb/BTreeMap$NodeSerializer;-><init>(ZLorg/mapdb/BTreeKeySerializer;Lorg/mapdb/Serializer;Ljava/util/Comparator;I)V

    invoke-interface {p0, v6, v0}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v8

    .line 555
    .local v8, "rootRecidVal":J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {p0, v0, v1}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v0

    return-wide v0
.end method

.method private findSmallerRecur(Lorg/mapdb/BTreeMap$BNode;Ljava/lang/Object;Z)Ljava/util/Map$Entry;
    .locals 18
    .param p1, "n"    # Lorg/mapdb/BTreeMap$BNode;
    .param p3, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/BTreeMap$BNode;",
            "TK;Z)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1319
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    invoke-interface/range {p1 .. p1}, Lorg/mapdb/BTreeMap$BNode;->isLeaf()Z

    move-result v8

    .line 1320
    .local v8, "leaf":Z
    if-eqz v8, :cond_0

    invoke-interface/range {p1 .. p1}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v15

    array-length v15, v15

    add-int/lit8 v14, v15, -0x2

    .line 1321
    .local v14, "start":I
    :goto_0
    if-eqz v8, :cond_1

    const/4 v5, 0x1

    .line 1322
    .local v5, "end":I
    :goto_1
    if-eqz p3, :cond_2

    const/4 v12, 0x1

    .line 1323
    .local v12, "res":I
    :goto_2
    move v6, v14

    .local v6, "i":I
    :goto_3
    if-lt v6, v5, :cond_8

    .line 1324
    invoke-interface/range {p1 .. p1}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v15

    aget-object v7, v15, v6

    .line 1325
    .local v7, "key2":Ljava/lang/Object;
    if-nez v7, :cond_3

    const/4 v4, -0x1

    .line 1326
    .local v4, "comp":I
    :goto_4
    if-ge v4, v12, :cond_6

    .line 1327
    if-eqz v8, :cond_5

    .line 1328
    if-nez v7, :cond_4

    const/4 v15, 0x0

    .line 1340
    .end local v4    # "comp":I
    .end local v7    # "key2":Ljava/lang/Object;
    :goto_5
    return-object v15

    .line 1320
    .end local v5    # "end":I
    .end local v6    # "i":I
    .end local v12    # "res":I
    .end local v14    # "start":I
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v15

    array-length v15, v15

    add-int/lit8 v14, v15, -0x1

    goto :goto_0

    .line 1321
    .restart local v14    # "start":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 1322
    .restart local v5    # "end":I
    :cond_2
    const/4 v12, 0x0

    goto :goto_2

    .line 1325
    .restart local v6    # "i":I
    .restart local v7    # "key2":Ljava/lang/Object;
    .restart local v12    # "res":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/mapdb/BTreeMap;->comparator:Ljava/util/Comparator;

    move-object/from16 v0, p2

    invoke-interface {v15, v7, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    goto :goto_4

    .line 1328
    .restart local v4    # "comp":I
    :cond_4
    invoke-interface/range {p1 .. p1}, Lorg/mapdb/BTreeMap$BNode;->vals()[Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v16, v6, -0x1

    aget-object v15, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/mapdb/BTreeMap;->valExpand(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v15}, Lorg/mapdb/BTreeMap;->makeEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v15

    goto :goto_5

    .line 1331
    :cond_5
    invoke-interface/range {p1 .. p1}, Lorg/mapdb/BTreeMap$BNode;->child()[J

    move-result-object v15

    aget-wide v10, v15, v6

    .line 1332
    .local v10, "recid":J
    const-wide/16 v16, 0x0

    cmp-long v15, v10, v16

    if-nez v15, :cond_7

    .line 1323
    .end local v10    # "recid":J
    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 1333
    .restart local v10    # "recid":J
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v15, v10, v11, v0}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/mapdb/BTreeMap$BNode;

    .line 1334
    .local v9, "n2":Lorg/mapdb/BTreeMap$BNode;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v9, v1, v2}, Lorg/mapdb/BTreeMap;->findSmallerRecur(Lorg/mapdb/BTreeMap$BNode;Ljava/lang/Object;Z)Ljava/util/Map$Entry;

    move-result-object v13

    .line 1335
    .local v13, "ret":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v13, :cond_6

    move-object v15, v13

    goto :goto_5

    .line 1340
    .end local v4    # "comp":I
    .end local v7    # "key2":Ljava/lang/Object;
    .end local v9    # "n2":Lorg/mapdb/BTreeMap$BNode;
    .end local v10    # "recid":J
    .end local v13    # "ret":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_8
    const/4 v15, 0x0

    goto :goto_5
.end method

.method private lastEntryRecur(Lorg/mapdb/BTreeMap$BNode;)Ljava/util/Map$Entry;
    .locals 12
    .param p1, "n"    # Lorg/mapdb/BTreeMap$BNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/BTreeMap$BNode;",
            ")",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    const-wide/16 v10, 0x0

    .line 1355
    invoke-interface {p1}, Lorg/mapdb/BTreeMap$BNode;->isLeaf()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1357
    invoke-interface {p1}, Lorg/mapdb/BTreeMap$BNode;->next()J

    move-result-wide v8

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .line 1358
    iget-object v7, p0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    invoke-interface {p1}, Lorg/mapdb/BTreeMap$BNode;->next()J

    move-result-wide v8

    iget-object v10, p0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v7, v8, v9, v10}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mapdb/BTreeMap$BNode;

    .line 1359
    .local v4, "n2":Lorg/mapdb/BTreeMap$BNode;
    invoke-direct {p0, v4}, Lorg/mapdb/BTreeMap;->lastEntryRecur(Lorg/mapdb/BTreeMap$BNode;)Ljava/util/Map$Entry;

    move-result-object v5

    .line 1360
    .local v5, "ret":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v5, :cond_0

    .line 1385
    .end local v4    # "n2":Lorg/mapdb/BTreeMap$BNode;
    .end local v5    # "ret":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :goto_0
    return-object v5

    .line 1365
    :cond_0
    invoke-interface {p1}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v7

    array-length v7, v7

    add-int/lit8 v2, v7, -0x2

    .local v2, "i":I
    :goto_1
    if-lez v2, :cond_5

    .line 1366
    invoke-interface {p1}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v7

    aget-object v3, v7, v2

    .line 1367
    .local v3, "k":Ljava/lang/Object;
    if-eqz v3, :cond_1

    invoke-interface {p1}, Lorg/mapdb/BTreeMap$BNode;->vals()[Ljava/lang/Object;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_1

    .line 1368
    invoke-interface {p1}, Lorg/mapdb/BTreeMap$BNode;->vals()[Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v2, -0x1

    aget-object v7, v7, v8

    invoke-virtual {p0, v7}, Lorg/mapdb/BTreeMap;->valExpand(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1369
    .local v6, "val":Ljava/lang/Object;
    if-eqz v6, :cond_1

    .line 1370
    invoke-virtual {p0, v3, v6}, Lorg/mapdb/BTreeMap;->makeEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    goto :goto_0

    .line 1365
    .end local v6    # "val":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1376
    .end local v2    # "i":I
    .end local v3    # "k":Ljava/lang/Object;
    :cond_2
    invoke-interface {p1}, Lorg/mapdb/BTreeMap$BNode;->child()[J

    move-result-object v7

    array-length v7, v7

    add-int/lit8 v2, v7, -0x1

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_5

    .line 1377
    invoke-interface {p1}, Lorg/mapdb/BTreeMap$BNode;->child()[J

    move-result-object v7

    aget-wide v0, v7, v2

    .line 1378
    .local v0, "childRecid":J
    cmp-long v7, v0, v10

    if-nez v7, :cond_4

    .line 1376
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1379
    :cond_4
    iget-object v7, p0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v8, p0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v7, v0, v1, v8}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mapdb/BTreeMap$BNode;

    .line 1380
    .restart local v4    # "n2":Lorg/mapdb/BTreeMap$BNode;
    invoke-direct {p0, v4}, Lorg/mapdb/BTreeMap;->lastEntryRecur(Lorg/mapdb/BTreeMap$BNode;)Ljava/util/Map$Entry;

    move-result-object v5

    .line 1381
    .restart local v5    # "ret":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v5, :cond_3

    goto :goto_0

    .line 1385
    .end local v0    # "childRecid":J
    .end local v4    # "n2":Lorg/mapdb/BTreeMap$BNode;
    .end local v5    # "ret":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_5
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected static lock(Lorg/mapdb/LongConcurrentHashMap;J)V
    .locals 5
    .param p1, "recid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/LongConcurrentHashMap",
            "<",
            "Ljava/lang/Thread;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 2878
    .local p0, "locks":Lorg/mapdb/LongConcurrentHashMap;, "Lorg/mapdb/LongConcurrentHashMap<Ljava/lang/Thread;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 2880
    .local v0, "currentThread":Ljava/lang/Thread;
    sget-boolean v1, Lorg/mapdb/BTreeMap;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/mapdb/LongConcurrentHashMap;->get(J)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "node already locked by current thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 2882
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/mapdb/LongConcurrentHashMap;->putIfAbsent(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2883
    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    goto :goto_0

    .line 2885
    :cond_1
    return-void
.end method

.method protected static preinitCatalog(Lorg/mapdb/DB;)Ljava/util/SortedMap;
    .locals 19
    .param p0, "db"    # Lorg/mapdb/DB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/DB;",
            ")",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getEngine()Lorg/mapdb/Engine;

    move-result-object v3

    const-wide/16 v4, 0x1

    sget-object v6, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v3, v4, v5, v6}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    .line 167
    .local v18, "rootRef":Ljava/lang/Long;
    if-nez v18, :cond_1

    .line 168
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getEngine()Lorg/mapdb/Engine;

    move-result-object v3

    invoke-interface {v3}, Lorg/mapdb/Engine;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v4

    .line 178
    :goto_0
    return-object v4

    .line 171
    :cond_0
    new-instance v2, Lorg/mapdb/BTreeMap$NodeSerializer;

    const/4 v3, 0x0

    sget-object v4, Lorg/mapdb/BTreeKeySerializer;->STRING:Lorg/mapdb/BTreeKeySerializer;

    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v5

    sget-object v6, Lorg/mapdb/BTreeMap;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lorg/mapdb/BTreeMap$NodeSerializer;-><init>(ZLorg/mapdb/BTreeKeySerializer;Lorg/mapdb/Serializer;Ljava/util/Comparator;I)V

    .line 173
    .local v2, "rootSerializer":Lorg/mapdb/BTreeMap$NodeSerializer;
    new-instance v17, Lorg/mapdb/BTreeMap$LeafNode;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const-wide/16 v6, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4, v6, v7}, Lorg/mapdb/BTreeMap$LeafNode;-><init>([Ljava/lang/Object;[Ljava/lang/Object;J)V

    .line 174
    .local v17, "root":Lorg/mapdb/BTreeMap$BNode;
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getEngine()Lorg/mapdb/Engine;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v3, v0, v2}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    .line 175
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getEngine()Lorg/mapdb/Engine;

    move-result-object v3

    const-wide/16 v4, 0x1

    sget-object v6, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    move-object/from16 v0, v18

    invoke-interface {v3, v4, v5, v0, v6}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 176
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getEngine()Lorg/mapdb/Engine;

    move-result-object v3

    invoke-interface {v3}, Lorg/mapdb/Engine;->commit()V

    .line 178
    .end local v2    # "rootSerializer":Lorg/mapdb/BTreeMap$NodeSerializer;
    .end local v17    # "root":Lorg/mapdb/BTreeMap$BNode;
    :cond_1
    new-instance v4, Lorg/mapdb/BTreeMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    const-wide/16 v6, 0x1

    const/16 v8, 0x20

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    sget-object v12, Lorg/mapdb/BTreeKeySerializer;->STRING:Lorg/mapdb/BTreeKeySerializer;

    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v13

    sget-object v14, Lorg/mapdb/BTreeMap;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v4 .. v16}, Lorg/mapdb/BTreeMap;-><init>(Lorg/mapdb/Engine;JIZJLorg/mapdb/BTreeKeySerializer;Lorg/mapdb/Serializer;Ljava/util/Comparator;IZ)V

    goto :goto_0
.end method

.method private static printRecur(Lorg/mapdb/BTreeMap;JLjava/lang/String;)V
    .locals 7
    .param p0, "m"    # Lorg/mapdb/BTreeMap;
    .param p1, "recid"    # J
    .param p3, "s"    # Ljava/lang/String;

    .prologue
    .line 2817
    iget-object v4, p0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v5, p0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v4, p1, p2, v5}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapdb/BTreeMap$BNode;

    .line 2818
    .local v1, "n":Lorg/mapdb/BTreeMap$BNode;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2819
    invoke-interface {v1}, Lorg/mapdb/BTreeMap$BNode;->isLeaf()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2820
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/mapdb/BTreeMap$BNode;->child()[J

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_1

    .line 2821
    invoke-interface {v1}, Lorg/mapdb/BTreeMap$BNode;->child()[J

    move-result-object v4

    aget-wide v2, v4, v0

    .line 2822
    .local v2, "recid2":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 2823
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v2, v3, v4}, Lorg/mapdb/BTreeMap;->printRecur(Lorg/mapdb/BTreeMap;JLjava/lang/String;)V

    .line 2820
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2826
    .end local v0    # "i":I
    .end local v2    # "recid2":J
    :cond_1
    return-void
.end method

.method private remove2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 954
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/mapdb/BTreeMap;->rootRecidRef:J

    sget-object v13, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v12, v14, v15, v13}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 956
    .local v4, "current":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v12, v4, v5, v13}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapdb/BTreeMap$BNode;

    .line 957
    .local v2, "A":Lorg/mapdb/BTreeMap$BNode;
    :goto_0
    invoke-interface {v2}, Lorg/mapdb/BTreeMap$BNode;->isLeaf()Z

    move-result v12

    if-nez v12, :cond_0

    .line 958
    check-cast v2, Lorg/mapdb/BTreeMap$DirNode;

    .end local v2    # "A":Lorg/mapdb/BTreeMap$BNode;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lorg/mapdb/BTreeMap;->nextDir(Lorg/mapdb/BTreeMap$DirNode;Ljava/lang/Object;)J

    move-result-wide v4

    .line 959
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v12, v4, v5, v13}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapdb/BTreeMap$BNode;

    .restart local v2    # "A":Lorg/mapdb/BTreeMap$BNode;
    goto :goto_0

    .line 965
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    invoke-static {v12, v4, v5}, Lorg/mapdb/BTreeMap;->lock(Lorg/mapdb/LongConcurrentHashMap;J)V

    .line 966
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v12, v4, v5, v13}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lorg/mapdb/BTreeMap$BNode;

    move-object v2, v0

    .line 967
    invoke-interface {v2}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lorg/mapdb/BTreeMap;->findChildren(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v9

    .line 968
    .local v9, "pos":I
    invoke-interface {v2}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v12

    array-length v12, v12

    if-ge v9, v12, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {v2}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v12

    aget-object v12, v12, v9

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/BTreeMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v2}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v13

    aget-object v13, v13, v9

    move-object/from16 v0, p1

    invoke-interface {v12, v0, v13}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v12

    if-nez v12, :cond_4

    .line 971
    invoke-interface {v2}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v12

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    if-ne v9, v12, :cond_1

    if-nez p2, :cond_1

    .line 972
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    invoke-static {v12, v4, v5}, Lorg/mapdb/BTreeMap;->unlock(Lorg/mapdb/LongConcurrentHashMap;J)V

    .line 973
    const/4 v8, 0x0

    .line 1010
    :goto_1
    return-object v8

    .line 977
    :cond_1
    invoke-interface {v2}, Lorg/mapdb/BTreeMap$BNode;->vals()[Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v13, v9, -0x1

    aget-object v8, v12, v13

    .line 978
    .local v8, "oldVal":Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/mapdb/BTreeMap;->valExpand(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 979
    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 980
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    invoke-static {v12, v4, v5}, Lorg/mapdb/BTreeMap;->unlock(Lorg/mapdb/LongConcurrentHashMap;J)V

    .line 981
    const/4 v8, 0x0

    goto :goto_1

    .line 984
    :cond_2
    invoke-interface {v2}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v12

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    new-array v7, v12, [Ljava/lang/Object;

    .line 985
    .local v7, "keys2":[Ljava/lang/Object;
    invoke-interface {v2}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v7, v14, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 986
    invoke-interface {v2}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v13, v9, 0x1

    array-length v14, v7

    sub-int/2addr v14, v9

    invoke-static {v12, v13, v7, v9, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 988
    invoke-interface {v2}, Lorg/mapdb/BTreeMap$BNode;->vals()[Ljava/lang/Object;

    move-result-object v12

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    new-array v11, v12, [Ljava/lang/Object;

    .line 989
    .local v11, "vals2":[Ljava/lang/Object;
    invoke-interface {v2}, Lorg/mapdb/BTreeMap$BNode;->vals()[Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    add-int/lit8 v15, v9, -0x1

    invoke-static {v12, v13, v11, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 990
    invoke-interface {v2}, Lorg/mapdb/BTreeMap$BNode;->vals()[Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v13, v9, -0x1

    array-length v14, v11

    add-int/lit8 v15, v9, -0x1

    sub-int/2addr v14, v15

    invoke-static {v12, v9, v11, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 993
    new-instance v3, Lorg/mapdb/BTreeMap$LeafNode;

    move-object v0, v2

    check-cast v0, Lorg/mapdb/BTreeMap$LeafNode;

    move-object v12, v0

    iget-wide v12, v12, Lorg/mapdb/BTreeMap$LeafNode;->next:J

    invoke-direct {v3, v7, v11, v12, v13}, Lorg/mapdb/BTreeMap$LeafNode;-><init>([Ljava/lang/Object;[Ljava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 994
    .end local v2    # "A":Lorg/mapdb/BTreeMap$BNode;
    .local v3, "A":Lorg/mapdb/BTreeMap$BNode;
    :try_start_1
    sget-boolean v12, Lorg/mapdb/BTreeMap;->$assertionsDisabled:Z

    if-nez v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v12, v4, v5}, Lorg/mapdb/LongConcurrentHashMap;->get(J)Ljava/lang/Object;

    move-result-object v12

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    if-eq v12, v13, :cond_3

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1014
    :catch_0
    move-exception v6

    move-object v2, v3

    .line 1015
    .end local v3    # "A":Lorg/mapdb/BTreeMap$BNode;
    .end local v7    # "keys2":[Ljava/lang/Object;
    .end local v8    # "oldVal":Ljava/lang/Object;
    .end local v9    # "pos":I
    .end local v11    # "vals2":[Ljava/lang/Object;
    .restart local v2    # "A":Lorg/mapdb/BTreeMap$BNode;
    .local v6, "e":Ljava/lang/RuntimeException;
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    invoke-static {v12}, Lorg/mapdb/BTreeMap;->unlockAll(Lorg/mapdb/LongConcurrentHashMap;)V

    .line 1016
    throw v6

    .line 995
    .end local v2    # "A":Lorg/mapdb/BTreeMap$BNode;
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .restart local v3    # "A":Lorg/mapdb/BTreeMap$BNode;
    .restart local v7    # "keys2":[Ljava/lang/Object;
    .restart local v8    # "oldVal":Ljava/lang/Object;
    .restart local v9    # "pos":I
    .restart local v11    # "vals2":[Ljava/lang/Object;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v12, v4, v5, v3, v13}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 996
    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v12}, Lorg/mapdb/BTreeMap;->notify(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 997
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    invoke-static {v12, v4, v5}, Lorg/mapdb/BTreeMap;->unlock(Lorg/mapdb/LongConcurrentHashMap;J)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .line 998
    .end local v3    # "A":Lorg/mapdb/BTreeMap$BNode;
    .restart local v2    # "A":Lorg/mapdb/BTreeMap$BNode;
    goto/16 :goto_1

    .line 1000
    .end local v7    # "keys2":[Ljava/lang/Object;
    .end local v8    # "oldVal":Ljava/lang/Object;
    .end local v11    # "vals2":[Ljava/lang/Object;
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    invoke-static {v12, v4, v5}, Lorg/mapdb/BTreeMap;->unlock(Lorg/mapdb/LongConcurrentHashMap;J)V

    .line 1002
    invoke-interface {v2}, Lorg/mapdb/BTreeMap$BNode;->highKey()Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/BTreeMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v2}, Lorg/mapdb/BTreeMap$BNode;->highKey()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v12, v0, v13}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v12

    if-lez v12, :cond_5

    .line 1003
    invoke-interface {v2}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lorg/mapdb/BTreeMap;->findChildren(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v10

    .line 1004
    .local v10, "pos2":I
    :goto_3
    invoke-interface {v2}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v12

    array-length v12, v12

    if-ne v10, v12, :cond_0

    .line 1006
    move-object v0, v2

    check-cast v0, Lorg/mapdb/BTreeMap$LeafNode;

    move-object v12, v0

    iget-wide v4, v12, Lorg/mapdb/BTreeMap$LeafNode;->next:J

    .line 1007
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v12, v4, v5, v13}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lorg/mapdb/BTreeMap$BNode;

    move-object v2, v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 1010
    .end local v10    # "pos2":I
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 1017
    .end local v9    # "pos":I
    :catch_1
    move-exception v6

    .line 1018
    .local v6, "e":Ljava/lang/Exception;
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    invoke-static {v12}, Lorg/mapdb/BTreeMap;->unlockAll(Lorg/mapdb/LongConcurrentHashMap;)V

    .line 1019
    new-instance v12, Ljava/lang/RuntimeException;

    invoke-direct {v12, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 1017
    .end local v2    # "A":Lorg/mapdb/BTreeMap$BNode;
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v3    # "A":Lorg/mapdb/BTreeMap$BNode;
    .restart local v7    # "keys2":[Ljava/lang/Object;
    .restart local v8    # "oldVal":Ljava/lang/Object;
    .restart local v9    # "pos":I
    .restart local v11    # "vals2":[Ljava/lang/Object;
    :catch_2
    move-exception v6

    move-object v2, v3

    .end local v3    # "A":Lorg/mapdb/BTreeMap$BNode;
    .restart local v2    # "A":Lorg/mapdb/BTreeMap$BNode;
    goto :goto_4

    .line 1014
    .end local v7    # "keys2":[Ljava/lang/Object;
    .end local v8    # "oldVal":Ljava/lang/Object;
    .end local v9    # "pos":I
    .end local v11    # "vals2":[Ljava/lang/Object;
    :catch_3
    move-exception v6

    goto/16 :goto_2
.end method

.method static toList(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1628
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1629
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1630
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1632
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    return-object v2
.end method

.method protected static unlock(Lorg/mapdb/LongConcurrentHashMap;J)V
    .locals 3
    .param p1, "recid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/LongConcurrentHashMap",
            "<",
            "Ljava/lang/Thread;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 2862
    .local p0, "locks":Lorg/mapdb/LongConcurrentHashMap;, "Lorg/mapdb/LongConcurrentHashMap<Ljava/lang/Thread;>;"
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/LongConcurrentHashMap;->remove(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 2863
    .local v0, "t":Ljava/lang/Thread;
    sget-boolean v1, Lorg/mapdb/BTreeMap;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "unlocked wrong thread"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 2864
    :cond_0
    return-void
.end method

.method protected static unlockAll(Lorg/mapdb/LongConcurrentHashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/LongConcurrentHashMap",
            "<",
            "Ljava/lang/Thread;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2867
    .local p0, "locks":Lorg/mapdb/LongConcurrentHashMap;, "Lorg/mapdb/LongConcurrentHashMap<Ljava/lang/Thread;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 2868
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {p0}, Lorg/mapdb/LongConcurrentHashMap;->longMapIterator()Lorg/mapdb/LongMap$LongMapIterator;

    move-result-object v0

    .line 2869
    .local v0, "iter":Lorg/mapdb/LongMap$LongMapIterator;, "Lorg/mapdb/LongMap$LongMapIterator<Ljava/lang/Thread;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/mapdb/LongMap$LongMapIterator;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2870
    invoke-interface {v0}, Lorg/mapdb/LongMap$LongMapIterator;->value()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_0

    .line 2871
    invoke-interface {v0}, Lorg/mapdb/LongMap$LongMapIterator;->remove()V

    goto :goto_0

    .line 2872
    :cond_1
    return-void
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1414
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1415
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/mapdb/BTreeMap;->findLarger(Ljava/lang/Object;Z)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 1485
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1486
    :cond_0
    invoke-virtual {p0, p1}, Lorg/mapdb/BTreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 1487
    .local v0, "n":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 1026
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap;->keyIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1027
    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1028
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1029
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1031
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 2803
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    invoke-interface {v0}, Lorg/mapdb/Engine;->close()V

    .line 2804
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
    .line 1266
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 1505
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1506
    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/mapdb/BTreeMap;->get(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1511
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1512
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap;->valueIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1513
    .local v0, "valueIter":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1514
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1515
    const/4 v1, 0x1

    .line 1517
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1623
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap;->descendingMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->keySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap;->descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1618
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap;->descendingMap:Ljava/util/concurrent/ConcurrentNavigableMap;

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 1
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
    .line 1590
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    new-instance v0, Lorg/mapdb/BTreeMap$BTreeEntryIterator;

    invoke-direct {v0, p0}, Lorg/mapdb/BTreeMap$BTreeEntryIterator;-><init>(Lorg/mapdb/BTreeMap;)V

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
    .line 1613
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap;->entrySet:Lorg/mapdb/BTreeMap$EntrySet;

    return-object v0
.end method

.method protected final findChildren(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "keys"    # [Ljava/lang/Object;

    .prologue
    .line 565
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 566
    .local v0, "left":I
    const/4 v3, 0x0

    aget-object v3, p2, v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 567
    :cond_0
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, p2, v3

    if-nez v3, :cond_2

    array-length v3, p2

    add-int/lit8 v2, v3, -0x1

    .line 573
    .local v2, "right":I
    :cond_1
    :goto_0
    add-int v3, v0, v2

    div-int/lit8 v1, v3, 0x2

    .line 574
    .local v1, "middle":I
    aget-object v3, p2, v1

    if-nez v3, :cond_3

    .line 581
    .end local v1    # "middle":I
    :goto_1
    return v1

    .line 567
    .end local v2    # "right":I
    :cond_2
    array-length v2, p2

    goto :goto_0

    .line 575
    .restart local v1    # "middle":I
    .restart local v2    # "right":I
    :cond_3
    iget-object v3, p0, Lorg/mapdb/BTreeMap;->comparator:Ljava/util/Comparator;

    aget-object v4, p2, v1

    invoke-interface {v3, v4, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_4

    .line 576
    add-int/lit8 v0, v1, 0x1

    .line 580
    :goto_2
    if-lt v0, v2, :cond_1

    move v1, v2

    .line 581
    goto :goto_1

    .line 578
    :cond_4
    move v2, v1

    goto :goto_2
.end method

.method protected findLarger(Ljava/lang/Object;Z)Ljava/util/Map$Entry;
    .locals 12
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v7, 0x0

    .line 1419
    if-nez p1, :cond_0

    move-object v6, v7

    .line 1445
    :goto_0
    return-object v6

    .line 1421
    :cond_0
    iget-object v6, p0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    iget-wide v8, p0, Lorg/mapdb/BTreeMap;->rootRecidRef:J

    sget-object v10, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v6, v8, v9, v10}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1423
    .local v2, "current":J
    iget-object v6, p0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v8, p0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v6, v2, v3, v8}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/BTreeMap$BNode;

    .line 1426
    .local v0, "A":Lorg/mapdb/BTreeMap$BNode;
    :goto_1
    invoke-interface {v0}, Lorg/mapdb/BTreeMap$BNode;->isLeaf()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1427
    check-cast v0, Lorg/mapdb/BTreeMap$DirNode;

    .end local v0    # "A":Lorg/mapdb/BTreeMap$BNode;
    invoke-virtual {p0, v0, p1}, Lorg/mapdb/BTreeMap;->nextDir(Lorg/mapdb/BTreeMap$DirNode;Ljava/lang/Object;)J

    move-result-wide v2

    .line 1428
    iget-object v6, p0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v8, p0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v6, v2, v3, v8}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/BTreeMap$BNode;

    .restart local v0    # "A":Lorg/mapdb/BTreeMap$BNode;
    goto :goto_1

    :cond_1
    move-object v5, v0

    .line 1432
    check-cast v5, Lorg/mapdb/BTreeMap$LeafNode;

    .line 1434
    .local v5, "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    if-eqz p2, :cond_3

    const/4 v1, 0x1

    .line 1436
    .local v1, "comp":I
    :goto_2
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_3
    iget-object v6, v5, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_5

    .line 1437
    iget-object v6, v5, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    aget-object v6, v6, v4

    if-nez v6, :cond_4

    .line 1436
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1434
    .end local v1    # "comp":I
    .end local v4    # "i":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 1439
    .restart local v1    # "comp":I
    .restart local v4    # "i":I
    :cond_4
    iget-object v6, p0, Lorg/mapdb/BTreeMap;->comparator:Ljava/util/Comparator;

    iget-object v8, v5, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    aget-object v8, v8, v4

    invoke-interface {v6, p1, v8}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-ge v6, v1, :cond_2

    .line 1440
    iget-object v6, v5, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    aget-object v6, v6, v4

    iget-object v7, v5, Lorg/mapdb/BTreeMap$LeafNode;->vals:[Ljava/lang/Object;

    add-int/lit8 v8, v4, -0x1

    aget-object v7, v7, v8

    invoke-virtual {p0, v7}, Lorg/mapdb/BTreeMap;->valExpand(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lorg/mapdb/BTreeMap;->makeEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    goto :goto_0

    .line 1445
    :cond_5
    iget-wide v8, v5, Lorg/mapdb/BTreeMap$LeafNode;->next:J

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-nez v6, :cond_6

    move-object v6, v7

    goto :goto_0

    .line 1446
    :cond_6
    iget-object v6, p0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    iget-wide v8, v5, Lorg/mapdb/BTreeMap$LeafNode;->next:J

    iget-object v10, p0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v6, v8, v9, v10}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    check-cast v5, Lorg/mapdb/BTreeMap$LeafNode;

    .restart local v5    # "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    goto :goto_2
.end method

.method protected findLargerNode(Ljava/lang/Object;Z)Lorg/mapdb/Fun$Tuple2;
    .locals 12
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lorg/mapdb/Fun$Tuple2",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/mapdb/BTreeMap$LeafNode;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v7, 0x0

    .line 1452
    if-nez p1, :cond_0

    move-object v6, v7

    .line 1476
    :goto_0
    return-object v6

    .line 1454
    :cond_0
    iget-object v6, p0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    iget-wide v8, p0, Lorg/mapdb/BTreeMap;->rootRecidRef:J

    sget-object v10, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v6, v8, v9, v10}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1456
    .local v2, "current":J
    iget-object v6, p0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v8, p0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v6, v2, v3, v8}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/BTreeMap$BNode;

    .line 1459
    .local v0, "A":Lorg/mapdb/BTreeMap$BNode;
    :goto_1
    invoke-interface {v0}, Lorg/mapdb/BTreeMap$BNode;->isLeaf()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1460
    check-cast v0, Lorg/mapdb/BTreeMap$DirNode;

    .end local v0    # "A":Lorg/mapdb/BTreeMap$BNode;
    invoke-virtual {p0, v0, p1}, Lorg/mapdb/BTreeMap;->nextDir(Lorg/mapdb/BTreeMap$DirNode;Ljava/lang/Object;)J

    move-result-wide v2

    .line 1461
    iget-object v6, p0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v8, p0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v6, v2, v3, v8}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/BTreeMap$BNode;

    .restart local v0    # "A":Lorg/mapdb/BTreeMap$BNode;
    goto :goto_1

    :cond_1
    move-object v5, v0

    .line 1465
    check-cast v5, Lorg/mapdb/BTreeMap$LeafNode;

    .line 1467
    .local v5, "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    if-eqz p2, :cond_3

    const/4 v1, 0x1

    .line 1469
    .local v1, "comp":I
    :goto_2
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_3
    iget-object v6, v5, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_5

    .line 1470
    iget-object v6, v5, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    aget-object v6, v6, v4

    if-nez v6, :cond_4

    .line 1469
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1467
    .end local v1    # "comp":I
    .end local v4    # "i":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 1472
    .restart local v1    # "comp":I
    .restart local v4    # "i":I
    :cond_4
    iget-object v6, p0, Lorg/mapdb/BTreeMap;->comparator:Ljava/util/Comparator;

    iget-object v8, v5, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    aget-object v8, v8, v4

    invoke-interface {v6, p1, v8}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-ge v6, v1, :cond_2

    .line 1473
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6, v5}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v6

    goto :goto_0

    .line 1476
    :cond_5
    iget-wide v8, v5, Lorg/mapdb/BTreeMap$LeafNode;->next:J

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-nez v6, :cond_6

    move-object v6, v7

    goto :goto_0

    .line 1477
    :cond_6
    iget-object v6, p0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    iget-wide v8, v5, Lorg/mapdb/BTreeMap$LeafNode;->next:J

    iget-object v10, p0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v6, v8, v9, v10}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    check-cast v5, Lorg/mapdb/BTreeMap$LeafNode;

    .restart local v5    # "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    goto :goto_2
.end method

.method protected findSmaller(Ljava/lang/Object;Z)Ljava/util/Map$Entry;
    .locals 8
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1309
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 1310
    :cond_0
    iget-object v4, p0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    iget-wide v6, p0, Lorg/mapdb/BTreeMap;->rootRecidRef:J

    sget-object v5, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v4, v6, v7, v5}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1311
    .local v2, "rootRecid":J
    iget-object v4, p0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v5, p0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v4, v2, v3, v5}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapdb/BTreeMap$BNode;

    .line 1313
    .local v1, "n":Lorg/mapdb/BTreeMap$BNode;
    invoke-direct {p0, v1, p1, p2}, Lorg/mapdb/BTreeMap;->findSmallerRecur(Lorg/mapdb/BTreeMap$BNode;Ljava/lang/Object;Z)Ljava/util/Map$Entry;

    move-result-object v0

    .line 1314
    .local v0, "k":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 1315
    .end local v0    # "k":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_2
    return-object v0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    const/4 v8, 0x0

    .line 1272
    iget-object v4, p0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    iget-wide v6, p0, Lorg/mapdb/BTreeMap;->rootRecidRef:J

    sget-object v5, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v4, v6, v7, v5}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1273
    .local v2, "rootRecid":J
    iget-object v4, p0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v5, p0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v4, v2, v3, v5}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapdb/BTreeMap$BNode;

    .line 1274
    .local v1, "n":Lorg/mapdb/BTreeMap$BNode;
    :goto_0
    invoke-interface {v1}, Lorg/mapdb/BTreeMap$BNode;->isLeaf()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1275
    iget-object v4, p0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    invoke-interface {v1}, Lorg/mapdb/BTreeMap$BNode;->child()[J

    move-result-object v5

    aget-wide v6, v5, v8

    iget-object v5, p0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v4, v6, v7, v5}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "n":Lorg/mapdb/BTreeMap$BNode;
    check-cast v1, Lorg/mapdb/BTreeMap$BNode;

    .restart local v1    # "n":Lorg/mapdb/BTreeMap$BNode;
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1277
    check-cast v0, Lorg/mapdb/BTreeMap$LeafNode;

    .line 1279
    .local v0, "l":Lorg/mapdb/BTreeMap$LeafNode;
    :goto_1
    iget-object v4, v0, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    array-length v4, v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 1280
    iget-wide v4, v0, Lorg/mapdb/BTreeMap$LeafNode;->next:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    const/4 v4, 0x0

    .line 1283
    :goto_2
    return-object v4

    .line 1281
    :cond_1
    iget-object v4, p0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    iget-wide v6, v0, Lorg/mapdb/BTreeMap$LeafNode;->next:J

    iget-object v5, p0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v4, v6, v7, v5}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "l":Lorg/mapdb/BTreeMap$LeafNode;
    check-cast v0, Lorg/mapdb/BTreeMap$LeafNode;

    .restart local v0    # "l":Lorg/mapdb/BTreeMap$LeafNode;
    goto :goto_1

    .line 1283
    :cond_2
    iget-object v4, v0, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    iget-object v5, v0, Lorg/mapdb/BTreeMap$LeafNode;->vals:[Ljava/lang/Object;

    aget-object v5, v5, v8

    invoke-virtual {p0, v5}, Lorg/mapdb/BTreeMap;->valExpand(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/mapdb/BTreeMap;->makeEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    goto :goto_2
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1523
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 1524
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1525
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1402
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1403
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/mapdb/BTreeMap;->findSmaller(Ljava/lang/Object;Z)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 1408
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/mapdb/BTreeMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 1409
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
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 589
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/mapdb/BTreeMap;->get(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected get(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 11
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "expandValue"    # Z

    .prologue
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    const/4 v5, 0x0

    .line 593
    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 594
    :cond_0
    move-object v6, p1

    .line 595
    .local v6, "v":Ljava/lang/Object;, "TK;"
    iget-object v7, p0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    iget-wide v8, p0, Lorg/mapdb/BTreeMap;->rootRecidRef:J

    sget-object v10, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v7, v8, v9, v10}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 597
    .local v2, "current":J
    iget-object v7, p0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v8, p0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v7, v2, v3, v8}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/BTreeMap$BNode;

    .line 600
    .local v0, "A":Lorg/mapdb/BTreeMap$BNode;
    :goto_0
    invoke-interface {v0}, Lorg/mapdb/BTreeMap$BNode;->isLeaf()Z

    move-result v7

    if-nez v7, :cond_1

    .line 601
    check-cast v0, Lorg/mapdb/BTreeMap$DirNode;

    .end local v0    # "A":Lorg/mapdb/BTreeMap$BNode;
    invoke-virtual {p0, v0, v6}, Lorg/mapdb/BTreeMap;->nextDir(Lorg/mapdb/BTreeMap$DirNode;Ljava/lang/Object;)J

    move-result-wide v2

    .line 602
    iget-object v7, p0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v8, p0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v7, v2, v3, v8}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/BTreeMap$BNode;

    .restart local v0    # "A":Lorg/mapdb/BTreeMap$BNode;
    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 606
    check-cast v1, Lorg/mapdb/BTreeMap$LeafNode;

    .line 607
    .local v1, "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    iget-object v7, v1, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    invoke-virtual {p0, v6, v7}, Lorg/mapdb/BTreeMap;->findChildren(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v4

    .line 608
    .local v4, "pos":I
    :goto_1
    iget-object v7, v1, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    array-length v7, v7

    if-ne v4, v7, :cond_2

    .line 610
    iget-object v7, p0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    iget-wide v8, v1, Lorg/mapdb/BTreeMap$LeafNode;->next:J

    iget-object v10, p0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v7, v8, v9, v10}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    check-cast v1, Lorg/mapdb/BTreeMap$LeafNode;

    .line 611
    .restart local v1    # "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    iget-object v7, v1, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    invoke-virtual {p0, v6, v7}, Lorg/mapdb/BTreeMap;->findChildren(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v4

    goto :goto_1

    .line 614
    :cond_2
    iget-object v7, v1, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_4

    .line 622
    :cond_3
    :goto_2
    return-object v5

    .line 618
    :cond_4
    iget-object v7, v1, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    aget-object v7, v7, v4

    if-eqz v7, :cond_3

    iget-object v7, p0, Lorg/mapdb/BTreeMap;->comparator:Ljava/util/Comparator;

    iget-object v8, v1, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    aget-object v8, v8, v4

    invoke-interface {v7, v6, v8}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_3

    .line 619
    iget-object v7, v1, Lorg/mapdb/BTreeMap$LeafNode;->vals:[Ljava/lang/Object;

    add-int/lit8 v8, v4, -0x1

    aget-object v5, v7, v8

    .line 620
    .local v5, "ret":Ljava/lang/Object;
    if-eqz p2, :cond_3

    invoke-virtual {p0, v5}, Lorg/mapdb/BTreeMap;->valExpand(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_2
.end method

.method public getEngine()Lorg/mapdb/Engine;
    .locals 1

    .prologue
    .line 2807
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 94
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/BTreeMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 94
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/mapdb/BTreeMap;->headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1572
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mapdb/BTreeMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 6
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1550
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    .line 1551
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1552
    :cond_0
    new-instance v0, Lorg/mapdb/BTreeMap$SubMap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/mapdb/BTreeMap$SubMap;-><init>(Lorg/mapdb/BTreeMap;Ljava/lang/Object;ZLjava/lang/Object;Z)V

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1492
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1493
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mapdb/BTreeMap;->findLarger(Ljava/lang/Object;Z)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 1498
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1499
    :cond_0
    invoke-virtual {p0, p1}, Lorg/mapdb/BTreeMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 1500
    .local v0, "n":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1107
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap;->keyIterator()Ljava/util/Iterator;

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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1582
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    new-instance v0, Lorg/mapdb/BTreeMap$BTreeKeyIterator;

    invoke-direct {v0, p0}, Lorg/mapdb/BTreeMap$BTreeKeyIterator;-><init>(Lorg/mapdb/BTreeMap;)V

    return-object v0
.end method

.method public keySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1598
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap;->keySet:Lorg/mapdb/BTreeMap$KeySet;

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap;->keySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1346
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    iget-object v4, p0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    iget-wide v6, p0, Lorg/mapdb/BTreeMap;->rootRecidRef:J

    sget-object v5, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v4, v6, v7, v5}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1347
    .local v2, "rootRecid":J
    iget-object v4, p0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v5, p0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v4, v2, v3, v5}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapdb/BTreeMap$BNode;

    .line 1348
    .local v1, "n":Lorg/mapdb/BTreeMap$BNode;
    invoke-direct {p0, v1}, Lorg/mapdb/BTreeMap;->lastEntryRecur(Lorg/mapdb/BTreeMap$BNode;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 1349
    .local v0, "e":Ljava/util/Map$Entry;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v0, 0x0

    .line 1350
    .end local v0    # "e":Ljava/util/Map$Entry;
    :cond_0
    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1530
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 1531
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1532
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1390
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1391
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mapdb/BTreeMap;->findSmaller(Ljava/lang/Object;Z)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 1396
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/mapdb/BTreeMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 1397
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

.method protected makeEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1100
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    sget-boolean v0, Lorg/mapdb/BTreeMap;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/mapdb/BTreeMap$ValRef;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1101
    :cond_0
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, p1, p2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public modificationListenerAdd(Lorg/mapdb/Bind$MapListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/Bind$MapListener",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2768
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    .local p1, "listener":Lorg/mapdb/Bind$MapListener;, "Lorg/mapdb/Bind$MapListener<TK;TV;>;"
    iget-object v2, p0, Lorg/mapdb/BTreeMap;->modListenersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2769
    :try_start_0
    iget-object v1, p0, Lorg/mapdb/BTreeMap;->modListeners:[Lorg/mapdb/Bind$MapListener;

    iget-object v3, p0, Lorg/mapdb/BTreeMap;->modListeners:[Lorg/mapdb/Bind$MapListener;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mapdb/Bind$MapListener;

    .line 2771
    .local v0, "modListeners2":[Lorg/mapdb/Bind$MapListener;, "[Lorg/mapdb/Bind$MapListener<TK;TV;>;"
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 2772
    iput-object v0, p0, Lorg/mapdb/BTreeMap;->modListeners:[Lorg/mapdb/Bind$MapListener;

    .line 2773
    monitor-exit v2

    .line 2775
    return-void

    .line 2773
    .end local v0    # "modListeners2":[Lorg/mapdb/Bind$MapListener;, "[Lorg/mapdb/Bind$MapListener<TK;TV;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public modificationListenerRemove(Lorg/mapdb/Bind$MapListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/Bind$MapListener",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2779
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    .local p1, "listener":Lorg/mapdb/Bind$MapListener;, "Lorg/mapdb/Bind$MapListener<TK;TV;>;"
    iget-object v2, p0, Lorg/mapdb/BTreeMap;->modListenersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2780
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/mapdb/BTreeMap;->modListeners:[Lorg/mapdb/Bind$MapListener;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2781
    iget-object v1, p0, Lorg/mapdb/BTreeMap;->modListeners:[Lorg/mapdb/Bind$MapListener;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lorg/mapdb/BTreeMap;->modListeners:[Lorg/mapdb/Bind$MapListener;

    const/4 v3, 0x0

    aput-object v3, v1, v0

    .line 2780
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2783
    :cond_1
    monitor-exit v2

    .line 2784
    return-void

    .line 2783
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1603
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap;->keySet:Lorg/mapdb/BTreeMap$KeySet;

    return-object v0
.end method

.method protected nextDir(Lorg/mapdb/BTreeMap$DirNode;Ljava/lang/Object;)J
    .locals 4
    .param p1, "d"    # Lorg/mapdb/BTreeMap$DirNode;
    .param p2, "key"    # Ljava/lang/Object;

    .prologue
    .line 634
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    iget-object v1, p1, Lorg/mapdb/BTreeMap$DirNode;->keys:[Ljava/lang/Object;

    invoke-virtual {p0, p2, v1}, Lorg/mapdb/BTreeMap;->findChildren(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 635
    .local v0, "pos":I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 636
    :cond_0
    iget-object v1, p1, Lorg/mapdb/BTreeMap$DirNode;->child:[J

    aget-wide v2, v1, v0

    return-wide v2
.end method

.method protected notify(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)V"
        }
    .end annotation

    .prologue
    .line 2787
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    sget-boolean v5, Lorg/mapdb/BTreeMap;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    instance-of v5, p2, Lorg/mapdb/BTreeMap$ValRef;

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 2788
    :cond_0
    sget-boolean v5, Lorg/mapdb/BTreeMap;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    instance-of v5, p3, Lorg/mapdb/BTreeMap$ValRef;

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 2790
    :cond_1
    iget-object v4, p0, Lorg/mapdb/BTreeMap;->modListeners:[Lorg/mapdb/Bind$MapListener;

    .line 2791
    .local v4, "modListeners2":[Lorg/mapdb/Bind$MapListener;, "[Lorg/mapdb/Bind$MapListener<TK;TV;>;"
    move-object v0, v4

    .local v0, "arr$":[Lorg/mapdb/Bind$MapListener;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 2792
    .local v3, "listener":Lorg/mapdb/Bind$MapListener;, "Lorg/mapdb/Bind$MapListener<TK;TV;>;"
    if-eqz v3, :cond_2

    .line 2793
    invoke-interface {v3, p1, p2, p3}, Lorg/mapdb/Bind$MapListener;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2791
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2795
    .end local v3    # "listener":Lorg/mapdb/Bind$MapListener;, "Lorg/mapdb/Bind$MapListener<TK;TV;>;"
    :cond_3
    return-void
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
    .line 1290
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 1291
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/mapdb/BTreeMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1292
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
    .line 1300
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 1301
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/mapdb/BTreeMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1302
    :cond_1
    return-object v0
.end method

.method public printTreeStructure()V
    .locals 6

    .prologue
    .line 2812
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    iget-object v2, p0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    iget-wide v4, p0, Lorg/mapdb/BTreeMap;->rootRecidRef:J

    sget-object v3, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v2, v4, v5, v3}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2813
    .local v0, "rootRecid":J
    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lorg/mapdb/BTreeMap;->printRecur(Lorg/mapdb/BTreeMap;JLjava/lang/String;)V

    .line 2814
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 642
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 643
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/mapdb/BTreeMap;->put2(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected put2(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 50
    .param p3, "putOnlyIfAbsent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    .prologue
    .line 647
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value2":Ljava/lang/Object;, "TV;"
    move-object/from16 v39, p1

    .line 648
    .local v39, "v":Ljava/lang/Object;, "TK;"
    if-nez v39, :cond_0

    new-instance v45, Ljava/lang/IllegalArgumentException;

    const-string v46, "null key"

    invoke-direct/range {v45 .. v46}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 649
    :cond_0
    if-nez p2, :cond_1

    new-instance v45, Ljava/lang/IllegalArgumentException;

    const-string v46, "null value"

    invoke-direct/range {v45 .. v46}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 651
    :cond_1
    move-object/from16 v44, p2

    .line 652
    .local v44, "value":Ljava/lang/Object;, "TV;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mapdb/BTreeMap;->valsOutsideNodes:Z

    move/from16 v45, v0

    if-eqz v45, :cond_2

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->valueSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v46, v0

    move-object/from16 v0, v45

    move-object/from16 v1, p2

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v30

    .line 654
    .local v30, "recid":J
    new-instance v44, Lorg/mapdb/BTreeMap$ValRef;

    .end local v44    # "value":Ljava/lang/Object;, "TV;"
    move-object/from16 v0, v44

    move-wide/from16 v1, v30

    invoke-direct {v0, v1, v2}, Lorg/mapdb/BTreeMap$ValRef;-><init>(J)V

    .line 657
    .end local v30    # "recid":J
    :cond_2
    const/16 v36, -0x1

    .line 658
    .local v36, "stackPos":I
    const/16 v45, 0x4

    move/from16 v0, v45

    new-array v0, v0, [J

    move-object/from16 v38, v0

    .line 660
    .local v38, "stackVals":[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/BTreeMap;->rootRecidRef:J

    move-wide/from16 v46, v0

    sget-object v48, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface/range {v45 .. v48}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Ljava/lang/Long;

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    .line 661
    .local v34, "rootRecid":J
    move-wide/from16 v10, v34

    .line 663
    .local v10, "current":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v46, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    invoke-interface {v0, v10, v11, v1}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mapdb/BTreeMap$BNode;

    .line 664
    .local v4, "A":Lorg/mapdb/BTreeMap$BNode;
    :goto_0
    invoke-interface {v4}, Lorg/mapdb/BTreeMap$BNode;->isLeaf()Z

    move-result v45

    if-nez v45, :cond_6

    .line 665
    move-wide/from16 v40, v10

    .local v40, "t":J
    move-object/from16 v45, v4

    .line 666
    check-cast v45, Lorg/mapdb/BTreeMap$DirNode;

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/BTreeMap;->nextDir(Lorg/mapdb/BTreeMap$DirNode;Ljava/lang/Object;)J

    move-result-wide v10

    .line 667
    sget-boolean v45, Lorg/mapdb/BTreeMap;->$assertionsDisabled:Z

    if-nez v45, :cond_3

    const-wide/16 v46, 0x0

    cmp-long v45, v10, v46

    if-gtz v45, :cond_3

    new-instance v45, Ljava/lang/AssertionError;

    move-object/from16 v0, v45

    invoke-direct {v0, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v45

    .line 668
    :cond_3
    invoke-interface {v4}, Lorg/mapdb/BTreeMap$BNode;->child()[J

    move-result-object v45

    invoke-interface {v4}, Lorg/mapdb/BTreeMap$BNode;->child()[J

    move-result-object v46

    move-object/from16 v0, v46

    array-length v0, v0

    move/from16 v46, v0

    add-int/lit8 v46, v46, -0x1

    aget-wide v46, v45, v46

    cmp-long v45, v10, v46

    if-nez v45, :cond_4

    .line 677
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v46, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    invoke-interface {v0, v10, v11, v1}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "A":Lorg/mapdb/BTreeMap$BNode;
    check-cast v4, Lorg/mapdb/BTreeMap$BNode;

    .line 678
    .restart local v4    # "A":Lorg/mapdb/BTreeMap$BNode;
    goto :goto_0

    .line 672
    :cond_4
    add-int/lit8 v36, v36, 0x1

    .line 673
    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v45, v0

    move/from16 v0, v45

    move/from16 v1, v36

    if-ne v0, v1, :cond_5

    .line 674
    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v45, v0

    mul-int/lit8 v45, v45, 0x2

    move-object/from16 v0, v38

    move/from16 v1, v45

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v38

    .line 675
    :cond_5
    aput-wide v40, v38, v36

    goto :goto_1

    .line 679
    .end local v40    # "t":J
    :cond_6
    const/16 v17, 0x0

    .line 681
    .local v17, "level":I
    const-wide/16 v24, 0x0

    .local v24, "p":J
    move/from16 v37, v36

    .line 686
    .end local v36    # "stackPos":I
    .local v37, "stackPos":I
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-static {v0, v10, v11}, Lorg/mapdb/BTreeMap;->lock(Lorg/mapdb/LongConcurrentHashMap;J)V

    .line 687
    const/4 v14, 0x1

    .line 688
    .local v14, "found":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v46, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    invoke-interface {v0, v10, v11, v1}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v45

    move-object/from16 v0, v45

    check-cast v0, Lorg/mapdb/BTreeMap$BNode;

    move-object v4, v0

    .line 689
    invoke-interface {v4}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/BTreeMap;->findChildren(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v26

    .line 691
    .local v26, "pos":I
    invoke-interface {v4}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v45

    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v45, v0

    add-int/lit8 v45, v45, -0x1

    move/from16 v0, v26

    move/from16 v1, v45

    if-ge v0, v1, :cond_9

    if-eqz v39, :cond_9

    invoke-interface {v4}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v45

    aget-object v45, v45, v26

    if-eqz v45, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->comparator:Ljava/util/Comparator;

    move-object/from16 v45, v0

    invoke-interface {v4}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v46

    aget-object v46, v46, v26

    move-object/from16 v0, v45

    move-object/from16 v1, v39

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v45

    if-nez v45, :cond_9

    .line 694
    invoke-interface {v4}, Lorg/mapdb/BTreeMap$BNode;->vals()[Ljava/lang/Object;

    move-result-object v45

    add-int/lit8 v46, v26, -0x1

    aget-object v19, v45, v46

    .line 695
    .local v19, "oldVal":Ljava/lang/Object;
    if-eqz p3, :cond_7

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-static {v0, v10, v11}, Lorg/mapdb/BTreeMap;->unlock(Lorg/mapdb/LongConcurrentHashMap;J)V

    .line 699
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/mapdb/BTreeMap;->valExpand(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    .line 824
    .end local v19    # "oldVal":Ljava/lang/Object;
    :goto_3
    return-object v32

    .line 702
    .restart local v19    # "oldVal":Ljava/lang/Object;
    :cond_7
    invoke-interface {v4}, Lorg/mapdb/BTreeMap$BNode;->vals()[Ljava/lang/Object;

    move-result-object v45

    invoke-interface {v4}, Lorg/mapdb/BTreeMap$BNode;->vals()[Ljava/lang/Object;

    move-result-object v46

    move-object/from16 v0, v46

    array-length v0, v0

    move/from16 v46, v0

    invoke-static/range {v45 .. v46}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v42

    .line 703
    .local v42, "vals":[Ljava/lang/Object;
    add-int/lit8 v45, v26, -0x1

    aput-object v44, v42, v45

    .line 705
    new-instance v5, Lorg/mapdb/BTreeMap$LeafNode;

    invoke-interface {v4}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v45

    invoke-interface {v4}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v46

    move-object/from16 v0, v46

    array-length v0, v0

    move/from16 v46, v0

    invoke-static/range {v45 .. v46}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v46

    move-object v0, v4

    check-cast v0, Lorg/mapdb/BTreeMap$LeafNode;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-wide v0, v0, Lorg/mapdb/BTreeMap$LeafNode;->next:J

    move-wide/from16 v48, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v42

    move-wide/from16 v2, v48

    invoke-direct {v5, v0, v1, v2, v3}, Lorg/mapdb/BTreeMap$LeafNode;-><init>([Ljava/lang/Object;[Ljava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 706
    .end local v4    # "A":Lorg/mapdb/BTreeMap$BNode;
    .local v5, "A":Lorg/mapdb/BTreeMap$BNode;
    :try_start_1
    sget-boolean v45, Lorg/mapdb/BTreeMap;->$assertionsDisabled:Z

    if-nez v45, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v0, v10, v11}, Lorg/mapdb/LongConcurrentHashMap;->get(J)Ljava/lang/Object;

    move-result-object v45

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v46

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    if-eq v0, v1, :cond_8

    new-instance v45, Ljava/lang/AssertionError;

    invoke-direct/range {v45 .. v45}, Ljava/lang/AssertionError;-><init>()V

    throw v45
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 828
    .end local v19    # "oldVal":Ljava/lang/Object;
    .end local v42    # "vals":[Ljava/lang/Object;
    :catch_0
    move-exception v13

    move-object v4, v5

    .end local v5    # "A":Lorg/mapdb/BTreeMap$BNode;
    .restart local v4    # "A":Lorg/mapdb/BTreeMap$BNode;
    move/from16 v36, v37

    .line 829
    .end local v14    # "found":Z
    .end local v26    # "pos":I
    .end local v37    # "stackPos":I
    .local v13, "e":Ljava/lang/RuntimeException;
    .restart local v36    # "stackPos":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lorg/mapdb/BTreeMap;->unlockAll(Lorg/mapdb/LongConcurrentHashMap;)V

    .line 830
    throw v13

    .line 707
    .end local v4    # "A":Lorg/mapdb/BTreeMap$BNode;
    .end local v13    # "e":Ljava/lang/RuntimeException;
    .end local v36    # "stackPos":I
    .restart local v5    # "A":Lorg/mapdb/BTreeMap$BNode;
    .restart local v14    # "found":Z
    .restart local v19    # "oldVal":Ljava/lang/Object;
    .restart local v26    # "pos":I
    .restart local v37    # "stackPos":I
    .restart local v42    # "vals":[Ljava/lang/Object;
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v46, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    invoke-interface {v0, v10, v11, v5, v1}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 709
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/mapdb/BTreeMap;->valExpand(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    .line 710
    .local v32, "ret":Ljava/lang/Object;, "TV;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/BTreeMap;->notify(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-static {v0, v10, v11}, Lorg/mapdb/BTreeMap;->unlock(Lorg/mapdb/LongConcurrentHashMap;J)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v4, v5

    .line 713
    .end local v5    # "A":Lorg/mapdb/BTreeMap$BNode;
    .restart local v4    # "A":Lorg/mapdb/BTreeMap$BNode;
    goto/16 :goto_3

    .line 717
    .end local v19    # "oldVal":Ljava/lang/Object;
    .end local v32    # "ret":Ljava/lang/Object;, "TV;"
    .end local v42    # "vals":[Ljava/lang/Object;
    :cond_9
    :try_start_3
    invoke-interface {v4}, Lorg/mapdb/BTreeMap$BNode;->highKey()Ljava/lang/Object;

    move-result-object v45

    if-eqz v45, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->comparator:Ljava/util/Comparator;

    move-object/from16 v45, v0

    invoke-interface {v4}, Lorg/mapdb/BTreeMap$BNode;->highKey()Ljava/lang/Object;

    move-result-object v46

    move-object/from16 v0, v45

    move-object/from16 v1, v39

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v45

    if-lez v45, :cond_1c

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-static {v0, v10, v11}, Lorg/mapdb/BTreeMap;->unlock(Lorg/mapdb/LongConcurrentHashMap;J)V

    .line 720
    const/4 v14, 0x0

    .line 721
    invoke-interface {v4}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/BTreeMap;->findChildren(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v27

    .line 722
    .local v27, "pos2":I
    :goto_5
    if-eqz v4, :cond_1c

    invoke-interface {v4}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v45

    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v45, v0

    move/from16 v0, v27

    move/from16 v1, v45

    if-ne v0, v1, :cond_1c

    .line 724
    invoke-interface {v4}, Lorg/mapdb/BTreeMap$BNode;->next()J
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-wide v22

    .line 726
    .local v22, "next":J
    const-wide/16 v46, 0x0

    cmp-long v45, v22, v46

    if-nez v45, :cond_a

    move-object v5, v4

    .line 735
    .end local v4    # "A":Lorg/mapdb/BTreeMap$BNode;
    .end local v22    # "next":J
    .end local v27    # "pos2":I
    .restart local v5    # "A":Lorg/mapdb/BTreeMap$BNode;
    :goto_6
    if-eqz v14, :cond_1b

    .line 738
    :try_start_4
    invoke-interface {v5}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v45

    move-object/from16 v0, v45

    array-length v0, v0

    move/from16 v46, v0

    invoke-interface {v5}, Lorg/mapdb/BTreeMap$BNode;->isLeaf()Z

    move-result v45

    if-eqz v45, :cond_b

    const/16 v45, 0x2

    :goto_7
    sub-int v45, v46, v45

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mapdb/BTreeMap;->maxNodeSize:I

    move/from16 v46, v0

    move/from16 v0, v45

    move/from16 v1, v46

    if-ge v0, v1, :cond_10

    .line 739
    invoke-interface {v5}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/BTreeMap;->findChildren(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v26

    .line 740
    invoke-interface {v5}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v26

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Lorg/mapdb/BTreeMap;->arrayPut([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    .line 742
    .local v15, "keys":[Ljava/lang/Object;
    invoke-interface {v5}, Lorg/mapdb/BTreeMap$BNode;->isLeaf()Z

    move-result v45

    if-eqz v45, :cond_d

    .line 743
    invoke-interface {v5}, Lorg/mapdb/BTreeMap$BNode;->vals()[Ljava/lang/Object;

    move-result-object v45

    add-int/lit8 v46, v26, -0x1

    move-object/from16 v0, v45

    move/from16 v1, v46

    move-object/from16 v2, v44

    invoke-static {v0, v1, v2}, Lorg/mapdb/BTreeMap;->arrayPut([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v42

    .line 744
    .restart local v42    # "vals":[Ljava/lang/Object;
    new-instance v18, Lorg/mapdb/BTreeMap$LeafNode;

    move-object v0, v5

    check-cast v0, Lorg/mapdb/BTreeMap$LeafNode;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-wide v0, v0, Lorg/mapdb/BTreeMap$LeafNode;->next:J

    move-wide/from16 v46, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v42

    move-wide/from16 v2, v46

    invoke-direct {v0, v15, v1, v2, v3}, Lorg/mapdb/BTreeMap$LeafNode;-><init>([Ljava/lang/Object;[Ljava/lang/Object;J)V

    .line 745
    .local v18, "n":Lorg/mapdb/BTreeMap$LeafNode;
    sget-boolean v45, Lorg/mapdb/BTreeMap;->$assertionsDisabled:Z

    if-nez v45, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v0, v10, v11}, Lorg/mapdb/LongConcurrentHashMap;->get(J)Ljava/lang/Object;

    move-result-object v45

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v46

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    if-eq v0, v1, :cond_c

    new-instance v45, Ljava/lang/AssertionError;

    invoke-direct/range {v45 .. v45}, Ljava/lang/AssertionError;-><init>()V

    throw v45
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 831
    .end local v15    # "keys":[Ljava/lang/Object;
    .end local v18    # "n":Lorg/mapdb/BTreeMap$LeafNode;
    .end local v42    # "vals":[Ljava/lang/Object;
    :catch_1
    move-exception v13

    move-object v4, v5

    .end local v5    # "A":Lorg/mapdb/BTreeMap$BNode;
    .restart local v4    # "A":Lorg/mapdb/BTreeMap$BNode;
    move/from16 v36, v37

    .line 832
    .end local v14    # "found":Z
    .end local v26    # "pos":I
    .end local v37    # "stackPos":I
    .local v13, "e":Ljava/lang/Exception;
    .restart local v36    # "stackPos":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    move-object/from16 v45, v0

    invoke-static/range {v45 .. v45}, Lorg/mapdb/BTreeMap;->unlockAll(Lorg/mapdb/LongConcurrentHashMap;)V

    .line 833
    new-instance v45, Ljava/lang/RuntimeException;

    move-object/from16 v0, v45

    invoke-direct {v0, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v45

    .line 727
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v36    # "stackPos":I
    .restart local v14    # "found":Z
    .restart local v22    # "next":J
    .restart local v26    # "pos":I
    .restart local v27    # "pos2":I
    .restart local v37    # "stackPos":I
    :cond_a
    move-wide/from16 v10, v22

    .line 728
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v46, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    invoke-interface {v0, v10, v11, v1}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v45

    move-object/from16 v0, v45

    check-cast v0, Lorg/mapdb/BTreeMap$BNode;

    move-object v4, v0

    .line 729
    invoke-interface {v4}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/BTreeMap;->findChildren(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result v27

    .line 730
    goto/16 :goto_5

    .line 738
    .end local v4    # "A":Lorg/mapdb/BTreeMap$BNode;
    .end local v22    # "next":J
    .end local v27    # "pos2":I
    .restart local v5    # "A":Lorg/mapdb/BTreeMap$BNode;
    :cond_b
    const/16 v45, 0x1

    goto/16 :goto_7

    .line 746
    .restart local v15    # "keys":[Ljava/lang/Object;
    .restart local v18    # "n":Lorg/mapdb/BTreeMap$LeafNode;
    .restart local v42    # "vals":[Ljava/lang/Object;
    :cond_c
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v46, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v18

    move-object/from16 v2, v46

    invoke-interface {v0, v10, v11, v1, v2}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 755
    .end local v18    # "n":Lorg/mapdb/BTreeMap$LeafNode;
    .end local v42    # "vals":[Ljava/lang/Object;
    :goto_9
    const/16 v45, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/BTreeMap;->notify(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-static {v0, v10, v11}, Lorg/mapdb/BTreeMap;->unlock(Lorg/mapdb/LongConcurrentHashMap;J)V

    .line 758
    const/16 v32, 0x0

    move-object v4, v5

    .end local v5    # "A":Lorg/mapdb/BTreeMap$BNode;
    .restart local v4    # "A":Lorg/mapdb/BTreeMap$BNode;
    goto/16 :goto_3

    .line 748
    .end local v4    # "A":Lorg/mapdb/BTreeMap$BNode;
    .restart local v5    # "A":Lorg/mapdb/BTreeMap$BNode;
    :cond_d
    sget-boolean v45, Lorg/mapdb/BTreeMap;->$assertionsDisabled:Z

    if-nez v45, :cond_e

    const-wide/16 v46, 0x0

    cmp-long v45, v24, v46

    if-nez v45, :cond_e

    new-instance v45, Ljava/lang/AssertionError;

    invoke-direct/range {v45 .. v45}, Ljava/lang/AssertionError;-><init>()V

    throw v45

    .line 749
    :cond_e
    invoke-interface {v5}, Lorg/mapdb/BTreeMap$BNode;->child()[J

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Lorg/mapdb/BTreeMap;->arrayLongPut([JIJ)[J

    move-result-object v8

    .line 750
    .local v8, "child":[J
    new-instance v12, Lorg/mapdb/BTreeMap$DirNode;

    invoke-direct {v12, v15, v8}, Lorg/mapdb/BTreeMap$DirNode;-><init>([Ljava/lang/Object;[J)V

    .line 751
    .local v12, "d":Lorg/mapdb/BTreeMap$DirNode;
    sget-boolean v45, Lorg/mapdb/BTreeMap;->$assertionsDisabled:Z

    if-nez v45, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v0, v10, v11}, Lorg/mapdb/LongConcurrentHashMap;->get(J)Ljava/lang/Object;

    move-result-object v45

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v46

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    if-eq v0, v1, :cond_f

    new-instance v45, Ljava/lang/AssertionError;

    invoke-direct/range {v45 .. v45}, Ljava/lang/AssertionError;-><init>()V

    throw v45

    .line 752
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v46, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    invoke-interface {v0, v10, v11, v12, v1}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    goto :goto_9

    .line 761
    .end local v8    # "child":[J
    .end local v12    # "d":Lorg/mapdb/BTreeMap$DirNode;
    .end local v15    # "keys":[Ljava/lang/Object;
    :cond_10
    invoke-interface {v5}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/BTreeMap;->findChildren(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v26

    .line 762
    invoke-interface {v5}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v26

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Lorg/mapdb/BTreeMap;->arrayPut([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    .line 763
    .restart local v15    # "keys":[Ljava/lang/Object;
    invoke-interface {v5}, Lorg/mapdb/BTreeMap$BNode;->isLeaf()Z

    move-result v45

    if-eqz v45, :cond_11

    invoke-interface {v5}, Lorg/mapdb/BTreeMap$BNode;->vals()[Ljava/lang/Object;

    move-result-object v45

    add-int/lit8 v46, v26, -0x1

    move-object/from16 v0, v45

    move/from16 v1, v46

    move-object/from16 v2, v44

    invoke-static {v0, v1, v2}, Lorg/mapdb/BTreeMap;->arrayPut([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v42

    .line 764
    .restart local v42    # "vals":[Ljava/lang/Object;
    :goto_a
    invoke-interface {v5}, Lorg/mapdb/BTreeMap$BNode;->isLeaf()Z

    move-result v45

    if-eqz v45, :cond_12

    const/4 v8, 0x0

    .line 765
    .restart local v8    # "child":[J
    :goto_b
    array-length v0, v15

    move/from16 v45, v0

    div-int/lit8 v33, v45, 0x2

    .line 767
    .local v33, "splitPos":I
    invoke-interface {v5}, Lorg/mapdb/BTreeMap$BNode;->isLeaf()Z

    move-result v45

    if-eqz v45, :cond_13

    .line 768
    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v45, v0

    move-object/from16 v0, v42

    move/from16 v1, v33

    move/from16 v2, v45

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v43

    .line 770
    .local v43, "vals2":[Ljava/lang/Object;
    new-instance v6, Lorg/mapdb/BTreeMap$LeafNode;

    array-length v0, v15

    move/from16 v45, v0

    move/from16 v0, v33

    move/from16 v1, v45

    invoke-static {v15, v0, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v46

    move-object v0, v5

    check-cast v0, Lorg/mapdb/BTreeMap$LeafNode;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-wide v0, v0, Lorg/mapdb/BTreeMap$LeafNode;->next:J

    move-wide/from16 v48, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v43

    move-wide/from16 v2, v48

    invoke-direct {v6, v0, v1, v2, v3}, Lorg/mapdb/BTreeMap$LeafNode;-><init>([Ljava/lang/Object;[Ljava/lang/Object;J)V

    .line 778
    .end local v43    # "vals2":[Ljava/lang/Object;
    .local v6, "B":Lorg/mapdb/BTreeMap$BNode;
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v46, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    invoke-interface {v0, v6, v1}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v28

    .line 779
    .local v28, "q":J
    invoke-interface {v5}, Lorg/mapdb/BTreeMap$BNode;->isLeaf()Z

    move-result v45

    if-eqz v45, :cond_14

    .line 780
    add-int/lit8 v45, v33, 0x2

    move/from16 v0, v45

    invoke-static {v15, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v16

    .line 781
    .local v16, "keys2":[Ljava/lang/Object;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v45, v0

    add-int/lit8 v45, v45, -0x1

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v46, v0

    add-int/lit8 v46, v46, -0x2

    aget-object v46, v16, v46

    aput-object v46, v16, v45

    .line 782
    move-object/from16 v0, v42

    move/from16 v1, v33

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v43

    .line 785
    .restart local v43    # "vals2":[Ljava/lang/Object;
    new-instance v4, Lorg/mapdb/BTreeMap$LeafNode;

    move-object/from16 v0, v16

    move-object/from16 v1, v43

    move-wide/from16 v2, v28

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/mapdb/BTreeMap$LeafNode;-><init>([Ljava/lang/Object;[Ljava/lang/Object;J)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 791
    .end local v5    # "A":Lorg/mapdb/BTreeMap$BNode;
    .end local v16    # "keys2":[Ljava/lang/Object;
    .end local v43    # "vals2":[Ljava/lang/Object;
    .restart local v4    # "A":Lorg/mapdb/BTreeMap$BNode;
    :goto_d
    :try_start_7
    sget-boolean v45, Lorg/mapdb/BTreeMap;->$assertionsDisabled:Z

    if-nez v45, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-virtual {v0, v10, v11}, Lorg/mapdb/LongConcurrentHashMap;->get(J)Ljava/lang/Object;

    move-result-object v45

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v46

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    if-eq v0, v1, :cond_15

    new-instance v45, Ljava/lang/AssertionError;

    invoke-direct/range {v45 .. v45}, Ljava/lang/AssertionError;-><init>()V

    throw v45
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 828
    .end local v6    # "B":Lorg/mapdb/BTreeMap$BNode;
    .end local v8    # "child":[J
    .end local v14    # "found":Z
    .end local v15    # "keys":[Ljava/lang/Object;
    .end local v26    # "pos":I
    .end local v28    # "q":J
    .end local v33    # "splitPos":I
    .end local v42    # "vals":[Ljava/lang/Object;
    :catch_2
    move-exception v13

    move/from16 v36, v37

    .end local v37    # "stackPos":I
    .restart local v36    # "stackPos":I
    goto/16 :goto_4

    .line 763
    .end local v4    # "A":Lorg/mapdb/BTreeMap$BNode;
    .end local v36    # "stackPos":I
    .restart local v5    # "A":Lorg/mapdb/BTreeMap$BNode;
    .restart local v14    # "found":Z
    .restart local v15    # "keys":[Ljava/lang/Object;
    .restart local v26    # "pos":I
    .restart local v37    # "stackPos":I
    :cond_11
    const/16 v42, 0x0

    goto/16 :goto_a

    .line 764
    .restart local v42    # "vals":[Ljava/lang/Object;
    :cond_12
    :try_start_8
    invoke-interface {v5}, Lorg/mapdb/BTreeMap$BNode;->child()[J

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v26

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Lorg/mapdb/BTreeMap;->arrayLongPut([JIJ)[J

    move-result-object v8

    goto/16 :goto_b

    .line 775
    .restart local v8    # "child":[J
    .restart local v33    # "splitPos":I
    :cond_13
    new-instance v6, Lorg/mapdb/BTreeMap$DirNode;

    array-length v0, v15

    move/from16 v45, v0

    move/from16 v0, v33

    move/from16 v1, v45

    invoke-static {v15, v0, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v45

    array-length v0, v15

    move/from16 v46, v0

    move/from16 v0, v33

    move/from16 v1, v46

    invoke-static {v8, v0, v1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v46

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    invoke-direct {v6, v0, v1}, Lorg/mapdb/BTreeMap$DirNode;-><init>([Ljava/lang/Object;[J)V

    .restart local v6    # "B":Lorg/mapdb/BTreeMap$BNode;
    goto/16 :goto_c

    .line 787
    .restart local v28    # "q":J
    :cond_14
    add-int/lit8 v45, v33, 0x1

    move/from16 v0, v45

    invoke-static {v8, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v9

    .line 788
    .local v9, "child2":[J
    aput-wide v28, v9, v33

    .line 789
    new-instance v4, Lorg/mapdb/BTreeMap$DirNode;

    add-int/lit8 v45, v33, 0x1

    move/from16 v0, v45

    invoke-static {v15, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-direct {v4, v0, v9}, Lorg/mapdb/BTreeMap$DirNode;-><init>([Ljava/lang/Object;[J)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .end local v5    # "A":Lorg/mapdb/BTreeMap$BNode;
    .restart local v4    # "A":Lorg/mapdb/BTreeMap$BNode;
    goto :goto_d

    .line 792
    .end local v9    # "child2":[J
    :cond_15
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v46, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    invoke-interface {v0, v10, v11, v4, v1}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 794
    cmp-long v45, v10, v34

    if-eqz v45, :cond_17

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-static {v0, v10, v11}, Lorg/mapdb/BTreeMap;->unlock(Lorg/mapdb/LongConcurrentHashMap;J)V

    .line 796
    move-wide/from16 v24, v28

    .line 797
    invoke-interface {v4}, Lorg/mapdb/BTreeMap$BNode;->highKey()Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    move-result-object v39

    .line 798
    add-int/lit8 v17, v17, 0x1

    .line 799
    const/16 v45, -0x1

    move/from16 v0, v37

    move/from16 v1, v45

    if-eq v0, v1, :cond_16

    .line 800
    add-int/lit8 v36, v37, -0x1

    .end local v37    # "stackPos":I
    .restart local v36    # "stackPos":I
    :try_start_a
    aget-wide v10, v38, v37

    .line 805
    :goto_e
    sget-boolean v45, Lorg/mapdb/BTreeMap;->$assertionsDisabled:Z

    if-nez v45, :cond_1a

    const-wide/16 v46, 0x0

    cmp-long v45, v10, v46

    if-gtz v45, :cond_1a

    new-instance v45, Ljava/lang/AssertionError;

    invoke-direct/range {v45 .. v45}, Ljava/lang/AssertionError;-><init>()V

    throw v45
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 828
    :catch_3
    move-exception v13

    goto/16 :goto_4

    .line 803
    .end local v36    # "stackPos":I
    .restart local v37    # "stackPos":I
    :cond_16
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->leftEdges:Ljava/util/List;

    move-object/from16 v45, v0

    add-int/lit8 v46, v17, -0x1

    invoke-interface/range {v45 .. v46}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Ljava/lang/Long;

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move/from16 v36, v37

    .end local v37    # "stackPos":I
    .restart local v36    # "stackPos":I
    goto :goto_e

    .line 807
    .end local v36    # "stackPos":I
    .restart local v37    # "stackPos":I
    :cond_17
    new-instance v7, Lorg/mapdb/BTreeMap$DirNode;

    const/16 v45, 0x3

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v45, 0x0

    invoke-interface {v4}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v47

    const/16 v48, 0x0

    aget-object v47, v47, v48

    aput-object v47, v46, v45

    const/16 v45, 0x1

    invoke-interface {v4}, Lorg/mapdb/BTreeMap$BNode;->highKey()Ljava/lang/Object;

    move-result-object v47

    aput-object v47, v46, v45

    const/16 v47, 0x2

    invoke-interface {v6}, Lorg/mapdb/BTreeMap$BNode;->isLeaf()Z

    move-result v45

    if-eqz v45, :cond_18

    const/16 v45, 0x0

    :goto_f
    aput-object v45, v46, v47

    const/16 v45, 0x3

    move/from16 v0, v45

    new-array v0, v0, [J

    move-object/from16 v45, v0

    const/16 v47, 0x0

    aput-wide v10, v45, v47

    const/16 v47, 0x1

    aput-wide v28, v45, v47

    const/16 v47, 0x2

    const-wide/16 v48, 0x0

    aput-wide v48, v45, v47

    move-object/from16 v0, v46

    move-object/from16 v1, v45

    invoke-direct {v7, v0, v1}, Lorg/mapdb/BTreeMap$DirNode;-><init>([Ljava/lang/Object;[J)V

    .line 811
    .local v7, "R":Lorg/mapdb/BTreeMap$BNode;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/BTreeMap;->rootRecidRef:J

    move-wide/from16 v46, v0

    invoke-static/range {v45 .. v47}, Lorg/mapdb/BTreeMap;->lock(Lorg/mapdb/LongConcurrentHashMap;J)V

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-static {v0, v10, v11}, Lorg/mapdb/BTreeMap;->unlock(Lorg/mapdb/LongConcurrentHashMap;J)V

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v46, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    invoke-interface {v0, v7, v1}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v20

    .line 815
    .local v20, "newRootRecid":J
    sget-boolean v45, Lorg/mapdb/BTreeMap;->$assertionsDisabled:Z

    if-nez v45, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/BTreeMap;->rootRecidRef:J

    move-wide/from16 v46, v0

    invoke-virtual/range {v45 .. v47}, Lorg/mapdb/LongConcurrentHashMap;->get(J)Ljava/lang/Object;

    move-result-object v45

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v46

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    if-eq v0, v1, :cond_19

    new-instance v45, Ljava/lang/AssertionError;

    invoke-direct/range {v45 .. v45}, Ljava/lang/AssertionError;-><init>()V

    throw v45

    .line 831
    .end local v6    # "B":Lorg/mapdb/BTreeMap$BNode;
    .end local v7    # "R":Lorg/mapdb/BTreeMap$BNode;
    .end local v8    # "child":[J
    .end local v14    # "found":Z
    .end local v15    # "keys":[Ljava/lang/Object;
    .end local v20    # "newRootRecid":J
    .end local v26    # "pos":I
    .end local v28    # "q":J
    .end local v33    # "splitPos":I
    .end local v42    # "vals":[Ljava/lang/Object;
    :catch_4
    move-exception v13

    move/from16 v36, v37

    .end local v37    # "stackPos":I
    .restart local v36    # "stackPos":I
    goto/16 :goto_8

    .line 807
    .end local v36    # "stackPos":I
    .restart local v6    # "B":Lorg/mapdb/BTreeMap$BNode;
    .restart local v8    # "child":[J
    .restart local v14    # "found":Z
    .restart local v15    # "keys":[Ljava/lang/Object;
    .restart local v26    # "pos":I
    .restart local v28    # "q":J
    .restart local v33    # "splitPos":I
    .restart local v37    # "stackPos":I
    .restart local v42    # "vals":[Ljava/lang/Object;
    :cond_18
    invoke-interface {v6}, Lorg/mapdb/BTreeMap$BNode;->highKey()Ljava/lang/Object;

    move-result-object v45

    goto :goto_f

    .line 817
    .restart local v7    # "R":Lorg/mapdb/BTreeMap$BNode;
    .restart local v20    # "newRootRecid":J
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->leftEdges:Ljava/util/List;

    move-object/from16 v45, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v46

    invoke-interface/range {v45 .. v46}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/BTreeMap;->rootRecidRef:J

    move-wide/from16 v46, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    sget-object v49, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface/range {v45 .. v49}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 821
    const/16 v45, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/BTreeMap;->notify(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 822
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/BTreeMap;->rootRecidRef:J

    move-wide/from16 v46, v0

    invoke-static/range {v45 .. v47}, Lorg/mapdb/BTreeMap;->unlock(Lorg/mapdb/LongConcurrentHashMap;J)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 824
    const/16 v32, 0x0

    goto/16 :goto_3

    .end local v7    # "R":Lorg/mapdb/BTreeMap$BNode;
    .end local v20    # "newRootRecid":J
    .end local v37    # "stackPos":I
    .restart local v36    # "stackPos":I
    :cond_1a
    move/from16 v37, v36

    .line 827
    .end local v36    # "stackPos":I
    .restart local v37    # "stackPos":I
    goto/16 :goto_2

    .line 831
    .end local v37    # "stackPos":I
    .restart local v36    # "stackPos":I
    :catch_5
    move-exception v13

    goto/16 :goto_8

    .end local v4    # "A":Lorg/mapdb/BTreeMap$BNode;
    .end local v6    # "B":Lorg/mapdb/BTreeMap$BNode;
    .end local v8    # "child":[J
    .end local v15    # "keys":[Ljava/lang/Object;
    .end local v28    # "q":J
    .end local v33    # "splitPos":I
    .end local v36    # "stackPos":I
    .end local v42    # "vals":[Ljava/lang/Object;
    .restart local v5    # "A":Lorg/mapdb/BTreeMap$BNode;
    .restart local v37    # "stackPos":I
    :cond_1b
    move-object v4, v5

    .end local v5    # "A":Lorg/mapdb/BTreeMap$BNode;
    .restart local v4    # "A":Lorg/mapdb/BTreeMap$BNode;
    goto/16 :goto_2

    :cond_1c
    move-object v5, v4

    .end local v4    # "A":Lorg/mapdb/BTreeMap$BNode;
    .restart local v5    # "A":Lorg/mapdb/BTreeMap$BNode;
    goto/16 :goto_6
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1133
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1134
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/mapdb/BTreeMap;->put2(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 950
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mapdb/BTreeMap;->remove2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 1139
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1140
    :cond_0
    if-nez p2, :cond_2

    .line 1141
    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/mapdb/BTreeMap;->remove2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1207
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v16, Ljava/lang/NullPointerException;

    invoke-direct/range {v16 .. v16}, Ljava/lang/NullPointerException;-><init>()V

    throw v16

    .line 1208
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/BTreeMap;->rootRecidRef:J

    move-wide/from16 v18, v0

    sget-object v17, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    move-object/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1210
    .local v4, "current":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v4, v5, v1}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/mapdb/BTreeMap$BNode;

    .line 1212
    .local v9, "node":Lorg/mapdb/BTreeMap$BNode;
    :goto_0
    invoke-interface {v9}, Lorg/mapdb/BTreeMap$BNode;->isLeaf()Z

    move-result v16

    if-nez v16, :cond_2

    .line 1213
    check-cast v9, Lorg/mapdb/BTreeMap$DirNode;

    .end local v9    # "node":Lorg/mapdb/BTreeMap$BNode;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v9, v1}, Lorg/mapdb/BTreeMap;->nextDir(Lorg/mapdb/BTreeMap$DirNode;Ljava/lang/Object;)J

    move-result-wide v4

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v4, v5, v1}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/mapdb/BTreeMap$BNode;

    .restart local v9    # "node":Lorg/mapdb/BTreeMap$BNode;
    goto :goto_0

    .line 1217
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v4, v5}, Lorg/mapdb/BTreeMap;->lock(Lorg/mapdb/LongConcurrentHashMap;J)V

    .line 1220
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v4, v5, v1}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mapdb/BTreeMap$LeafNode;

    .line 1221
    .local v7, "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    iget-object v0, v7, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/BTreeMap;->findChildren(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v11

    .local v11, "pos":I
    move-object v8, v7

    .line 1223
    .end local v7    # "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    .local v8, "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    :goto_1
    iget-object v0, v8, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v11, v0, :cond_3

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    move-object/from16 v16, v0

    iget-wide v0, v8, Lorg/mapdb/BTreeMap$LeafNode;->next:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lorg/mapdb/BTreeMap;->lock(Lorg/mapdb/LongConcurrentHashMap;J)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v4, v5}, Lorg/mapdb/BTreeMap;->unlock(Lorg/mapdb/LongConcurrentHashMap;J)V

    .line 1227
    iget-wide v4, v8, Lorg/mapdb/BTreeMap$LeafNode;->next:J

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v4, v5, v1}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mapdb/BTreeMap$LeafNode;

    .line 1229
    .end local v8    # "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    .restart local v7    # "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    iget-object v0, v7, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/BTreeMap;->findChildren(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v11

    move-object v8, v7

    .end local v7    # "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    .restart local v8    # "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    goto :goto_1

    .line 1232
    :cond_3
    const/4 v14, 0x0

    .line 1233
    .local v14, "ret":Ljava/lang/Object;
    if-eqz p1, :cond_6

    invoke-virtual {v8}, Lorg/mapdb/BTreeMap$LeafNode;->keys()[Ljava/lang/Object;

    move-result-object v16

    aget-object v16, v16, v11

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->comparator:Ljava/util/Comparator;

    move-object/from16 v16, v0

    iget-object v0, v8, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    move-object/from16 v17, v0

    aget-object v17, v17, v11

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v16

    if-nez v16, :cond_6

    .line 1235
    iget-object v0, v8, Lorg/mapdb/BTreeMap$LeafNode;->vals:[Ljava/lang/Object;

    move-object/from16 v16, v0

    iget-object v0, v8, Lorg/mapdb/BTreeMap$LeafNode;->vals:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v15

    .line 1236
    .local v15, "vals":[Ljava/lang/Object;
    add-int/lit8 v16, v11, -0x1

    aget-object v10, v15, v16

    .line 1237
    .local v10, "oldVal":Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/mapdb/BTreeMap;->valExpand(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 1238
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v14, v2}, Lorg/mapdb/BTreeMap;->notify(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1239
    add-int/lit8 v16, v11, -0x1

    aput-object p2, v15, v16

    .line 1240
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mapdb/BTreeMap;->valsOutsideNodes:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    if-eqz p2, :cond_4

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->valueSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v12

    .line 1242
    .local v12, "recid":J
    add-int/lit8 v16, v11, -0x1

    new-instance v17, Lorg/mapdb/BTreeMap$ValRef;

    move-object/from16 v0, v17

    invoke-direct {v0, v12, v13}, Lorg/mapdb/BTreeMap$ValRef;-><init>(J)V

    aput-object v17, v15, v16

    .line 1245
    .end local v12    # "recid":J
    :cond_4
    new-instance v7, Lorg/mapdb/BTreeMap$LeafNode;

    iget-object v0, v8, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    move-object/from16 v16, v0

    iget-object v0, v8, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v16

    iget-wide v0, v8, Lorg/mapdb/BTreeMap$LeafNode;->next:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-direct {v7, v0, v15, v1, v2}, Lorg/mapdb/BTreeMap$LeafNode;-><init>([Ljava/lang/Object;[Ljava/lang/Object;J)V

    .line 1246
    .end local v8    # "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    .restart local v7    # "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    sget-boolean v16, Lorg/mapdb/BTreeMap;->$assertionsDisabled:Z

    if-nez v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Lorg/mapdb/LongConcurrentHashMap;->get(J)Ljava/lang/Object;

    move-result-object v16

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_5

    new-instance v16, Ljava/lang/AssertionError;

    invoke-direct/range {v16 .. v16}, Ljava/lang/AssertionError;-><init>()V

    throw v16
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1253
    .end local v7    # "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    .end local v10    # "oldVal":Ljava/lang/Object;
    .end local v11    # "pos":I
    .end local v14    # "ret":Ljava/lang/Object;
    .end local v15    # "vals":[Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 1254
    .local v6, "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/mapdb/BTreeMap;->unlockAll(Lorg/mapdb/LongConcurrentHashMap;)V

    .line 1255
    throw v6

    .line 1247
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .restart local v7    # "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    .restart local v10    # "oldVal":Ljava/lang/Object;
    .restart local v11    # "pos":I
    .restart local v14    # "ret":Ljava/lang/Object;
    .restart local v15    # "vals":[Ljava/lang/Object;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v4, v5, v7, v1}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 1251
    .end local v10    # "oldVal":Ljava/lang/Object;
    .end local v14    # "ret":Ljava/lang/Object;
    .end local v15    # "vals":[Ljava/lang/Object;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v4, v5}, Lorg/mapdb/BTreeMap;->unlock(Lorg/mapdb/LongConcurrentHashMap;J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1252
    return-object v14

    .line 1256
    .end local v7    # "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    .end local v11    # "pos":I
    :catch_1
    move-exception v6

    .line 1257
    .local v6, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/mapdb/BTreeMap;->unlockAll(Lorg/mapdb/LongConcurrentHashMap;)V

    .line 1258
    new-instance v16, Ljava/lang/RuntimeException;

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v16

    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v8    # "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    .restart local v11    # "pos":I
    .restart local v14    # "ret":Ljava/lang/Object;
    :cond_6
    move-object v7, v8

    .end local v8    # "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    .restart local v7    # "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    goto :goto_2
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 1146
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v14, Ljava/lang/NullPointerException;

    invoke-direct {v14}, Ljava/lang/NullPointerException;-><init>()V

    throw v14

    .line 1148
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/BTreeMap;->rootRecidRef:J

    move-wide/from16 v16, v0

    sget-object v15, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    move-wide/from16 v0, v16

    invoke-interface {v14, v0, v1, v15}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1150
    .local v2, "current":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v14, v2, v3, v15}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mapdb/BTreeMap$BNode;

    .line 1152
    .local v7, "node":Lorg/mapdb/BTreeMap$BNode;
    :goto_0
    invoke-interface {v7}, Lorg/mapdb/BTreeMap$BNode;->isLeaf()Z

    move-result v14

    if-nez v14, :cond_2

    .line 1153
    check-cast v7, Lorg/mapdb/BTreeMap$DirNode;

    .end local v7    # "node":Lorg/mapdb/BTreeMap$BNode;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v7, v1}, Lorg/mapdb/BTreeMap;->nextDir(Lorg/mapdb/BTreeMap$DirNode;Ljava/lang/Object;)J

    move-result-wide v2

    .line 1154
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v14, v2, v3, v15}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mapdb/BTreeMap$BNode;

    .restart local v7    # "node":Lorg/mapdb/BTreeMap$BNode;
    goto :goto_0

    .line 1157
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    invoke-static {v14, v2, v3}, Lorg/mapdb/BTreeMap;->lock(Lorg/mapdb/LongConcurrentHashMap;J)V

    .line 1160
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v14, v2, v3, v15}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapdb/BTreeMap$LeafNode;

    .line 1161
    .local v5, "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    iget-object v14, v5, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lorg/mapdb/BTreeMap;->findChildren(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v8

    .local v8, "pos":I
    move-object v6, v5

    .line 1163
    .end local v5    # "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    .local v6, "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    :goto_1
    iget-object v14, v6, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    array-length v14, v14

    if-ne v8, v14, :cond_3

    .line 1165
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    iget-wide v0, v6, Lorg/mapdb/BTreeMap$LeafNode;->next:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Lorg/mapdb/BTreeMap;->lock(Lorg/mapdb/LongConcurrentHashMap;J)V

    .line 1166
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    invoke-static {v14, v2, v3}, Lorg/mapdb/BTreeMap;->unlock(Lorg/mapdb/LongConcurrentHashMap;J)V

    .line 1167
    iget-wide v2, v6, Lorg/mapdb/BTreeMap$LeafNode;->next:J

    .line 1168
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v14, v2, v3, v15}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapdb/BTreeMap$LeafNode;

    .line 1169
    .end local v6    # "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    .restart local v5    # "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    iget-object v14, v5, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lorg/mapdb/BTreeMap;->findChildren(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v8

    move-object v6, v5

    .end local v5    # "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    .restart local v6    # "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    goto :goto_1

    .line 1172
    :cond_3
    const/4 v9, 0x0

    .line 1173
    .local v9, "ret":Z
    if-eqz p1, :cond_6

    iget-object v14, v6, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    aget-object v14, v14, v8

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapdb/BTreeMap;->comparator:Ljava/util/Comparator;

    iget-object v15, v6, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    aget-object v15, v15, v8

    move-object/from16 v0, p1

    invoke-interface {v14, v0, v15}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v14

    if-nez v14, :cond_6

    .line 1175
    iget-object v14, v6, Lorg/mapdb/BTreeMap$LeafNode;->vals:[Ljava/lang/Object;

    add-int/lit8 v15, v8, -0x1

    aget-object v12, v14, v15

    .line 1176
    .local v12, "val":Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/mapdb/BTreeMap;->valExpand(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 1177
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1178
    iget-object v14, v6, Lorg/mapdb/BTreeMap$LeafNode;->vals:[Ljava/lang/Object;

    iget-object v15, v6, Lorg/mapdb/BTreeMap$LeafNode;->vals:[Ljava/lang/Object;

    array-length v15, v15

    invoke-static {v14, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v13

    .line 1179
    .local v13, "vals":[Ljava/lang/Object;
    invoke-virtual/range {p0 .. p3}, Lorg/mapdb/BTreeMap;->notify(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1180
    add-int/lit8 v14, v8, -0x1

    aput-object p3, v13, v14

    .line 1181
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/mapdb/BTreeMap;->valsOutsideNodes:Z

    if-eqz v14, :cond_4

    .line 1182
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/mapdb/BTreeMap;->valueSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v0, p3

    invoke-interface {v14, v0, v15}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v10

    .line 1183
    .local v10, "recid":J
    add-int/lit8 v14, v8, -0x1

    new-instance v15, Lorg/mapdb/BTreeMap$ValRef;

    invoke-direct {v15, v10, v11}, Lorg/mapdb/BTreeMap$ValRef;-><init>(J)V

    aput-object v15, v13, v14

    .line 1186
    .end local v10    # "recid":J
    :cond_4
    new-instance v5, Lorg/mapdb/BTreeMap$LeafNode;

    iget-object v14, v6, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    iget-object v15, v6, Lorg/mapdb/BTreeMap$LeafNode;->keys:[Ljava/lang/Object;

    array-length v15, v15

    invoke-static {v14, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v14

    iget-wide v0, v6, Lorg/mapdb/BTreeMap$LeafNode;->next:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v5, v14, v13, v0, v1}, Lorg/mapdb/BTreeMap$LeafNode;-><init>([Ljava/lang/Object;[Ljava/lang/Object;J)V

    .line 1188
    .end local v6    # "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    .restart local v5    # "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    sget-boolean v14, Lorg/mapdb/BTreeMap;->$assertionsDisabled:Z

    if-nez v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v14, v2, v3}, Lorg/mapdb/LongConcurrentHashMap;->get(J)Ljava/lang/Object;

    move-result-object v14

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    if-eq v14, v15, :cond_5

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1196
    .end local v5    # "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    .end local v8    # "pos":I
    .end local v9    # "ret":Z
    .end local v12    # "val":Ljava/lang/Object;
    .end local v13    # "vals":[Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 1197
    .local v4, "e":Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    invoke-static {v14}, Lorg/mapdb/BTreeMap;->unlockAll(Lorg/mapdb/LongConcurrentHashMap;)V

    .line 1198
    throw v4

    .line 1189
    .end local v4    # "e":Ljava/lang/RuntimeException;
    .restart local v5    # "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    .restart local v8    # "pos":I
    .restart local v9    # "ret":Z
    .restart local v12    # "val":Ljava/lang/Object;
    .restart local v13    # "vals":[Ljava/lang/Object;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/mapdb/BTreeMap;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v14, v2, v3, v5, v15}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 1191
    const/4 v9, 0x1

    .line 1194
    .end local v12    # "val":Ljava/lang/Object;
    .end local v13    # "vals":[Ljava/lang/Object;
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    invoke-static {v14, v2, v3}, Lorg/mapdb/BTreeMap;->unlock(Lorg/mapdb/LongConcurrentHashMap;J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1195
    return v9

    .line 1199
    .end local v5    # "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    .end local v8    # "pos":I
    .end local v9    # "ret":Z
    :catch_1
    move-exception v4

    .line 1200
    .local v4, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapdb/BTreeMap;->nodeLocks:Lorg/mapdb/LongConcurrentHashMap;

    invoke-static {v14}, Lorg/mapdb/BTreeMap;->unlockAll(Lorg/mapdb/LongConcurrentHashMap;)V

    .line 1201
    new-instance v14, Ljava/lang/RuntimeException;

    invoke-direct {v14, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    .restart local v8    # "pos":I
    .restart local v9    # "ret":Z
    :cond_6
    move-object v5, v6

    .end local v6    # "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    .restart local v5    # "leaf":Lorg/mapdb/BTreeMap$LeafNode;
    goto :goto_2
.end method

.method public size()I
    .locals 4

    .prologue
    .line 1112
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap;->sizeLong()J

    move-result-wide v0

    .line 1113
    .local v0, "size":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const v2, 0x7fffffff

    .line 1114
    :goto_0
    return v2

    :cond_0
    long-to-int v2, v0

    goto :goto_0
.end method

.method public sizeLong()J
    .locals 6

    .prologue
    .line 1119
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    iget-object v1, p0, Lorg/mapdb/BTreeMap;->counter:Lorg/mapdb/Atomic$Long;

    if-eqz v1, :cond_1

    .line 1120
    iget-object v1, p0, Lorg/mapdb/BTreeMap;->counter:Lorg/mapdb/Atomic$Long;

    invoke-virtual {v1}, Lorg/mapdb/Atomic$Long;->get()J

    move-result-wide v2

    .line 1128
    :cond_0
    return-wide v2

    .line 1122
    :cond_1
    const-wide/16 v2, 0x0

    .line 1123
    .local v2, "size":J
    new-instance v0, Lorg/mapdb/BTreeMap$BTreeIterator;

    invoke-direct {v0, p0}, Lorg/mapdb/BTreeMap$BTreeIterator;-><init>(Lorg/mapdb/BTreeMap;)V

    .line 1124
    .local v0, "iter":Lorg/mapdb/BTreeMap$BTreeIterator;
    :goto_0
    invoke-virtual {v0}, Lorg/mapdb/BTreeMap$BTreeIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1125
    invoke-virtual {v0}, Lorg/mapdb/BTreeMap$BTreeIterator;->advance()V

    .line 1126
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0
.end method

.method public snapshot()Ljava/util/NavigableMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2754
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    invoke-static {v0}, Lorg/mapdb/TxEngine;->createSnapshotFor(Lorg/mapdb/Engine;)Lorg/mapdb/Engine;

    move-result-object v1

    .line 2756
    .local v1, "snapshot":Lorg/mapdb/Engine;
    new-instance v0, Lorg/mapdb/BTreeMap;

    iget-wide v2, p0, Lorg/mapdb/BTreeMap;->rootRecidRef:J

    iget v4, p0, Lorg/mapdb/BTreeMap;->maxNodeSize:I

    iget-boolean v5, p0, Lorg/mapdb/BTreeMap;->valsOutsideNodes:Z

    iget-object v6, p0, Lorg/mapdb/BTreeMap;->counter:Lorg/mapdb/Atomic$Long;

    if-nez v6, :cond_0

    const-wide/16 v6, 0x0

    :goto_0
    iget-object v8, p0, Lorg/mapdb/BTreeMap;->keySerializer:Lorg/mapdb/BTreeKeySerializer;

    iget-object v9, p0, Lorg/mapdb/BTreeMap;->valueSerializer:Lorg/mapdb/Serializer;

    iget-object v10, p0, Lorg/mapdb/BTreeMap;->comparator:Ljava/util/Comparator;

    iget v11, p0, Lorg/mapdb/BTreeMap;->numberOfNodeMetas:I

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Lorg/mapdb/BTreeMap;-><init>(Lorg/mapdb/Engine;JIZJLorg/mapdb/BTreeKeySerializer;Lorg/mapdb/Serializer;Ljava/util/Comparator;IZ)V

    return-object v0

    :cond_0
    iget-object v6, p0, Lorg/mapdb/BTreeMap;->counter:Lorg/mapdb/Atomic$Long;

    iget-wide v6, v6, Lorg/mapdb/Atomic$Long;->recid:J

    goto :goto_0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Z

    .prologue
    .line 94
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mapdb/BTreeMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 94
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/BTreeMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1567
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lorg/mapdb/BTreeMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 6
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1541
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 1542
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1543
    :cond_1
    new-instance v0, Lorg/mapdb/BTreeMap$SubMap;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/mapdb/BTreeMap$SubMap;-><init>(Lorg/mapdb/BTreeMap;Ljava/lang/Object;ZLjava/lang/Object;Z)V

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Z

    .prologue
    .line 94
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/BTreeMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 94
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/mapdb/BTreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1577
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/mapdb/BTreeMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 6
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1559
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_0

    .line 1560
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1561
    :cond_0
    new-instance v0, Lorg/mapdb/BTreeMap$SubMap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/mapdb/BTreeMap$SubMap;-><init>(Lorg/mapdb/BTreeMap;Ljava/lang/Object;ZLjava/lang/Object;Z)V

    return-object v0
.end method

.method protected valExpand(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "ret"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 626
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    iget-boolean v2, p0, Lorg/mapdb/BTreeMap;->valsOutsideNodes:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 627
    check-cast p1, Lorg/mapdb/BTreeMap$ValRef;

    .end local p1    # "ret":Ljava/lang/Object;
    iget-wide v0, p1, Lorg/mapdb/BTreeMap$ValRef;->recid:J

    .line 628
    .local v0, "recid":J
    iget-object v2, p0, Lorg/mapdb/BTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v3, p0, Lorg/mapdb/BTreeMap;->valueSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v2, v0, v1, v3}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object p1

    .line 630
    .end local v0    # "recid":J
    .restart local p1    # "ret":Ljava/lang/Object;
    :cond_0
    return-object p1
.end method

.method valueIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1586
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    new-instance v0, Lorg/mapdb/BTreeMap$BTreeValueIterator;

    invoke-direct {v0, p0}, Lorg/mapdb/BTreeMap$BTreeValueIterator;-><init>(Lorg/mapdb/BTreeMap;)V

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1608
    .local p0, "this":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap;->values:Lorg/mapdb/BTreeMap$Values;

    return-object v0
.end method
