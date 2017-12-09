.class public Lorg/mapdb/LongConcurrentHashMap;
.super Lorg/mapdb/LongMap;
.source "LongConcurrentHashMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapdb/LongConcurrentHashMap$MapIterator;,
        Lorg/mapdb/LongConcurrentHashMap$ValueIterator;,
        Lorg/mapdb/LongConcurrentHashMap$KeyIterator;,
        Lorg/mapdb/LongConcurrentHashMap$HashIterator;,
        Lorg/mapdb/LongConcurrentHashMap$Segment;,
        Lorg/mapdb/LongConcurrentHashMap$HashEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/mapdb/LongMap",
        "<TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final DEFAULT_CONCURRENCY_LEVEL:I = 0x10

.field static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_SEGMENTS:I = 0x10000

.field static final RETRIES_BEFORE_LOCK:I = 0x2

.field private static final serialVersionUID:J = 0x6499de129d87293dL


# instance fields
.field protected final hashSalt:J

.field final segmentMask:I

.field final segmentShift:I

.field final segments:[Lorg/mapdb/LongConcurrentHashMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/mapdb/LongConcurrentHashMap$Segment",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap;, "Lorg/mapdb/LongConcurrentHashMap<TV;>;"
    const/16 v1, 0x10

    .line 584
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, v1, v0, v1}, Lorg/mapdb/LongConcurrentHashMap;-><init>(IFI)V

    .line 585
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .prologue
    .line 576
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap;, "Lorg/mapdb/LongConcurrentHashMap<TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1}, Lorg/mapdb/LongConcurrentHashMap;-><init>(IFI)V

    .line 577
    return-void
.end method

.method public constructor <init>(IFI)V
    .locals 8
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F
    .param p3, "concurrencyLevel"    # I

    .prologue
    .line 535
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap;, "Lorg/mapdb/LongConcurrentHashMap<TV;>;"
    invoke-direct {p0}, Lorg/mapdb/LongMap;-><init>()V

    .line 58
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    invoke-virtual {v5}, Ljava/util/Random;->nextLong()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/mapdb/LongConcurrentHashMap;->hashSalt:J

    .line 536
    const/4 v5, 0x0

    cmpl-float v5, p2, v5

    if-lez v5, :cond_0

    if-ltz p1, :cond_0

    if-gtz p3, :cond_1

    .line 537
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 539
    :cond_1
    const/high16 v5, 0x10000

    if-le p3, v5, :cond_2

    .line 540
    const/high16 p3, 0x10000

    .line 543
    :cond_2
    const/4 v3, 0x0

    .line 544
    .local v3, "sshift":I
    const/4 v4, 0x1

    .line 545
    .local v4, "ssize":I
    :goto_0
    if-ge v4, p3, :cond_3

    .line 546
    add-int/lit8 v3, v3, 0x1

    .line 547
    shl-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 549
    :cond_3
    rsub-int/lit8 v5, v3, 0x20

    iput v5, p0, Lorg/mapdb/LongConcurrentHashMap;->segmentShift:I

    .line 550
    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Lorg/mapdb/LongConcurrentHashMap;->segmentMask:I

    .line 551
    invoke-static {v4}, Lorg/mapdb/LongConcurrentHashMap$Segment;->newArray(I)[Lorg/mapdb/LongConcurrentHashMap$Segment;

    move-result-object v5

    iput-object v5, p0, Lorg/mapdb/LongConcurrentHashMap;->segments:[Lorg/mapdb/LongConcurrentHashMap$Segment;

    .line 553
    const/high16 v5, 0x40000000    # 2.0f

    if-le p1, v5, :cond_4

    .line 554
    const/high16 p1, 0x40000000    # 2.0f

    .line 555
    :cond_4
    div-int v0, p1, v4

    .line 556
    .local v0, "c":I
    mul-int v5, v0, v4

    if-ge v5, p1, :cond_5

    .line 557
    add-int/lit8 v0, v0, 0x1

    .line 558
    :cond_5
    const/4 v1, 0x1

    .line 559
    .local v1, "cap":I
    :goto_1
    if-ge v1, v0, :cond_6

    .line 560
    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 562
    :cond_6
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v5, p0, Lorg/mapdb/LongConcurrentHashMap;->segments:[Lorg/mapdb/LongConcurrentHashMap$Segment;

    array-length v5, v5

    if-ge v2, v5, :cond_7

    .line 563
    iget-object v5, p0, Lorg/mapdb/LongConcurrentHashMap;->segments:[Lorg/mapdb/LongConcurrentHashMap$Segment;

    new-instance v6, Lorg/mapdb/LongConcurrentHashMap$Segment;

    invoke-direct {v6, v1, p2}, Lorg/mapdb/LongConcurrentHashMap$Segment;-><init>(IF)V

    aput-object v6, v5, v2

    .line 562
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 564
    :cond_7
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 865
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap;, "Lorg/mapdb/LongConcurrentHashMap<TV;>;"
    iget-object v0, p0, Lorg/mapdb/LongConcurrentHashMap;->segments:[Lorg/mapdb/LongConcurrentHashMap$Segment;

    .local v0, "arr$":[Lorg/mapdb/LongConcurrentHashMap$Segment;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .local v3, "segment":Lorg/mapdb/LongConcurrentHashMap$Segment;, "Lorg/mapdb/LongConcurrentHashMap$Segment<TV;>;"
    invoke-virtual {v3}, Lorg/mapdb/LongConcurrentHashMap$Segment;->clear()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 866
    .end local v3    # "segment":Lorg/mapdb/LongConcurrentHashMap$Segment;, "Lorg/mapdb/LongConcurrentHashMap$Segment<TV;>;"
    :cond_0
    return-void
.end method

.method public containsKey(J)Z
    .locals 5
    .param p1, "key"    # J

    .prologue
    .line 709
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap;, "Lorg/mapdb/LongConcurrentHashMap<TV;>;"
    iget-wide v2, p0, Lorg/mapdb/LongConcurrentHashMap;->hashSalt:J

    xor-long/2addr v2, p1

    invoke-static {v2, v3}, Lorg/mapdb/LongHashMap;->longHash(J)I

    move-result v0

    .line 710
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/mapdb/LongConcurrentHashMap;->segmentFor(I)Lorg/mapdb/LongConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lorg/mapdb/LongConcurrentHashMap$Segment;->containsKey(JI)Z

    move-result v1

    return v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 13
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 725
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap;, "Lorg/mapdb/LongConcurrentHashMap<TV;>;"
    if-nez p1, :cond_0

    .line 726
    new-instance v11, Ljava/lang/NullPointerException;

    invoke-direct {v11}, Ljava/lang/NullPointerException;-><init>()V

    throw v11

    .line 730
    :cond_0
    iget-object v10, p0, Lorg/mapdb/LongConcurrentHashMap;->segments:[Lorg/mapdb/LongConcurrentHashMap$Segment;

    .line 731
    .local v10, "segments":[Lorg/mapdb/LongConcurrentHashMap$Segment;, "[Lorg/mapdb/LongConcurrentHashMap$Segment<TV;>;"
    array-length v11, v10

    new-array v7, v11, [I

    .line 734
    .local v7, "mc":[I
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_0
    const/4 v11, 0x2

    if-ge v5, v11, :cond_7

    .line 736
    const/4 v8, 0x0

    .line 737
    .local v8, "mcsum":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v11, v10

    if-ge v3, v11, :cond_3

    .line 739
    aget-object v11, v10, v3

    iget v11, v11, Lorg/mapdb/LongConcurrentHashMap$Segment;->modCount:I

    aput v11, v7, v3

    add-int/2addr v8, v11

    .line 740
    aget-object v11, v10, v3

    invoke-virtual {v11, p1}, Lorg/mapdb/LongConcurrentHashMap$Segment;->containsValue(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 741
    const/4 v2, 0x1

    .line 769
    .end local v3    # "i":I
    .end local v8    # "mcsum":I
    :cond_1
    :goto_2
    return v2

    .line 737
    .restart local v3    # "i":I
    .restart local v8    # "mcsum":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 743
    :cond_3
    const/4 v1, 0x1

    .line 744
    .local v1, "cleanSweep":Z
    if-eqz v8, :cond_4

    .line 745
    const/4 v3, 0x0

    :goto_3
    array-length v11, v10

    if-ge v3, v11, :cond_4

    .line 747
    aget v11, v7, v3

    aget-object v12, v10, v3

    iget v12, v12, Lorg/mapdb/LongConcurrentHashMap$Segment;->modCount:I

    if-eq v11, v12, :cond_5

    .line 748
    const/4 v1, 0x0

    .line 753
    :cond_4
    if-eqz v1, :cond_6

    .line 754
    const/4 v2, 0x0

    goto :goto_2

    .line 745
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 734
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 757
    .end local v1    # "cleanSweep":Z
    .end local v3    # "i":I
    .end local v8    # "mcsum":I
    :cond_7
    move-object v0, v10

    .local v0, "arr$":[Lorg/mapdb/LongConcurrentHashMap$Segment;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_4
    if-ge v4, v6, :cond_8

    aget-object v9, v0, v4

    .local v9, "segment":Lorg/mapdb/LongConcurrentHashMap$Segment;, "Lorg/mapdb/LongConcurrentHashMap$Segment<TV;>;"
    invoke-virtual {v9}, Lorg/mapdb/LongConcurrentHashMap$Segment;->lock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 758
    .end local v9    # "segment":Lorg/mapdb/LongConcurrentHashMap$Segment;, "Lorg/mapdb/LongConcurrentHashMap$Segment<TV;>;"
    :cond_8
    const/4 v2, 0x0

    .line 760
    .local v2, "found":Z
    move-object v0, v10

    :try_start_0
    array-length v6, v0

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v6, :cond_9

    aget-object v9, v0, v4

    .line 761
    .restart local v9    # "segment":Lorg/mapdb/LongConcurrentHashMap$Segment;, "Lorg/mapdb/LongConcurrentHashMap$Segment<TV;>;"
    invoke-virtual {v9, p1}, Lorg/mapdb/LongConcurrentHashMap$Segment;->containsValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-eqz v11, :cond_a

    .line 762
    const/4 v2, 0x1

    .line 767
    .end local v9    # "segment":Lorg/mapdb/LongConcurrentHashMap$Segment;, "Lorg/mapdb/LongConcurrentHashMap$Segment<TV;>;"
    :cond_9
    move-object v0, v10

    array-length v6, v0

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v6, :cond_1

    aget-object v9, v0, v4

    .restart local v9    # "segment":Lorg/mapdb/LongConcurrentHashMap$Segment;, "Lorg/mapdb/LongConcurrentHashMap$Segment<TV;>;"
    invoke-virtual {v9}, Lorg/mapdb/LongConcurrentHashMap$Segment;->unlock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 760
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 767
    .end local v9    # "segment":Lorg/mapdb/LongConcurrentHashMap$Segment;, "Lorg/mapdb/LongConcurrentHashMap$Segment<TV;>;"
    :catchall_0
    move-exception v11

    move-object v0, v10

    array-length v6, v0

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v6, :cond_b

    aget-object v9, v0, v4

    .restart local v9    # "segment":Lorg/mapdb/LongConcurrentHashMap$Segment;, "Lorg/mapdb/LongConcurrentHashMap$Segment<TV;>;"
    invoke-virtual {v9}, Lorg/mapdb/LongConcurrentHashMap$Segment;->unlock()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .end local v9    # "segment":Lorg/mapdb/LongConcurrentHashMap$Segment;, "Lorg/mapdb/LongConcurrentHashMap$Segment<TV;>;"
    :cond_b
    throw v11
.end method

.method public get(J)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .prologue
    .line 695
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap;, "Lorg/mapdb/LongConcurrentHashMap<TV;>;"
    iget-wide v2, p0, Lorg/mapdb/LongConcurrentHashMap;->hashSalt:J

    xor-long/2addr v2, p1

    invoke-static {v2, v3}, Lorg/mapdb/LongHashMap;->longHash(J)I

    move-result v0

    .line 696
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/mapdb/LongConcurrentHashMap;->segmentFor(I)Lorg/mapdb/LongConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lorg/mapdb/LongConcurrentHashMap$Segment;->get(JI)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isEmpty()Z
    .locals 7

    .prologue
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap;, "Lorg/mapdb/LongConcurrentHashMap<TV;>;"
    const/4 v4, 0x0

    .line 594
    iget-object v3, p0, Lorg/mapdb/LongConcurrentHashMap;->segments:[Lorg/mapdb/LongConcurrentHashMap$Segment;

    .line 604
    .local v3, "segments":[Lorg/mapdb/LongConcurrentHashMap$Segment;, "[Lorg/mapdb/LongConcurrentHashMap$Segment<TV;>;"
    array-length v5, v3

    new-array v1, v5, [I

    .line 605
    .local v1, "mc":[I
    const/4 v2, 0x0

    .line 606
    .local v2, "mcsum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_2

    .line 607
    aget-object v5, v3, v0

    iget v5, v5, Lorg/mapdb/LongConcurrentHashMap$Segment;->count:I

    if-eqz v5, :cond_1

    .line 622
    :cond_0
    :goto_1
    return v4

    .line 610
    :cond_1
    aget-object v5, v3, v0

    iget v5, v5, Lorg/mapdb/LongConcurrentHashMap$Segment;->modCount:I

    aput v5, v1, v0

    add-int/2addr v2, v5

    .line 606
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 615
    :cond_2
    if-eqz v2, :cond_3

    .line 616
    const/4 v0, 0x0

    :goto_2
    array-length v5, v3

    if-ge v0, v5, :cond_3

    .line 617
    aget-object v5, v3, v0

    iget v5, v5, Lorg/mapdb/LongConcurrentHashMap$Segment;->count:I

    if-nez v5, :cond_0

    aget v5, v1, v0

    aget-object v6, v3, v0

    iget v6, v6, Lorg/mapdb/LongConcurrentHashMap$Segment;->modCount:I

    if-ne v5, v6, :cond_0

    .line 616
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 622
    :cond_3
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public longMapIterator()Lorg/mapdb/LongMap$LongMapIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mapdb/LongMap$LongMapIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 679
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap;, "Lorg/mapdb/LongConcurrentHashMap<TV;>;"
    new-instance v0, Lorg/mapdb/LongConcurrentHashMap$MapIterator;

    invoke-direct {v0, p0}, Lorg/mapdb/LongConcurrentHashMap$MapIterator;-><init>(Lorg/mapdb/LongConcurrentHashMap;)V

    return-object v0
.end method

.method public put(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)TV;"
        }
    .end annotation

    .prologue
    .line 788
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap;, "Lorg/mapdb/LongConcurrentHashMap<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    if-nez p3, :cond_0

    .line 789
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 790
    :cond_0
    iget-wide v0, p0, Lorg/mapdb/LongConcurrentHashMap;->hashSalt:J

    xor-long/2addr v0, p1

    invoke-static {v0, v1}, Lorg/mapdb/LongHashMap;->longHash(J)I

    move-result v4

    .line 791
    .local v4, "hash":I
    invoke-virtual {p0, v4}, Lorg/mapdb/LongConcurrentHashMap;->segmentFor(I)Lorg/mapdb/LongConcurrentHashMap$Segment;

    move-result-object v1

    const/4 v6, 0x0

    move-wide v2, p1

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lorg/mapdb/LongConcurrentHashMap$Segment;->put(JILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putIfAbsent(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)TV;"
        }
    .end annotation

    .prologue
    .line 802
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap;, "Lorg/mapdb/LongConcurrentHashMap<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    if-nez p3, :cond_0

    .line 803
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 804
    :cond_0
    iget-wide v0, p0, Lorg/mapdb/LongConcurrentHashMap;->hashSalt:J

    xor-long/2addr v0, p1

    invoke-static {v0, v1}, Lorg/mapdb/LongHashMap;->longHash(J)I

    move-result v4

    .line 805
    .local v4, "hash":I
    invoke-virtual {p0, v4}, Lorg/mapdb/LongConcurrentHashMap;->segmentFor(I)Lorg/mapdb/LongConcurrentHashMap$Segment;

    move-result-object v1

    const/4 v6, 0x1

    move-wide v2, p1

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lorg/mapdb/LongConcurrentHashMap$Segment;->put(JILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(J)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .prologue
    .line 820
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap;, "Lorg/mapdb/LongConcurrentHashMap<TV;>;"
    iget-wide v2, p0, Lorg/mapdb/LongConcurrentHashMap;->hashSalt:J

    xor-long/2addr v2, p1

    invoke-static {v2, v3}, Lorg/mapdb/LongHashMap;->longHash(J)I

    move-result v0

    .line 821
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/mapdb/LongConcurrentHashMap;->segmentFor(I)Lorg/mapdb/LongConcurrentHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v0, v2}, Lorg/mapdb/LongConcurrentHashMap$Segment;->remove(JILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove(JLjava/lang/Object;)Z
    .locals 5
    .param p1, "key"    # J
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 830
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap;, "Lorg/mapdb/LongConcurrentHashMap<TV;>;"
    iget-wide v2, p0, Lorg/mapdb/LongConcurrentHashMap;->hashSalt:J

    xor-long/2addr v2, p1

    invoke-static {v2, v3}, Lorg/mapdb/LongHashMap;->longHash(J)I

    move-result v0

    .line 831
    .local v0, "hash":I
    if-eqz p3, :cond_0

    invoke-virtual {p0, v0}, Lorg/mapdb/LongConcurrentHashMap;->segmentFor(I)Lorg/mapdb/LongConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0, p3}, Lorg/mapdb/LongConcurrentHashMap$Segment;->remove(JILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public replace(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)TV;"
        }
    .end annotation

    .prologue
    .line 854
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap;, "Lorg/mapdb/LongConcurrentHashMap<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    if-nez p3, :cond_0

    .line 855
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 856
    :cond_0
    iget-wide v2, p0, Lorg/mapdb/LongConcurrentHashMap;->hashSalt:J

    xor-long/2addr v2, p1

    invoke-static {v2, v3}, Lorg/mapdb/LongHashMap;->longHash(J)I

    move-result v0

    .line 857
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lorg/mapdb/LongConcurrentHashMap;->segmentFor(I)Lorg/mapdb/LongConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0, p3}, Lorg/mapdb/LongConcurrentHashMap$Segment;->replace(JILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public replace(JLjava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 840
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap;, "Lorg/mapdb/LongConcurrentHashMap<TV;>;"
    .local p3, "oldValue":Ljava/lang/Object;, "TV;"
    .local p4, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 841
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 842
    :cond_1
    iget-wide v0, p0, Lorg/mapdb/LongConcurrentHashMap;->hashSalt:J

    xor-long/2addr v0, p1

    invoke-static {v0, v1}, Lorg/mapdb/LongHashMap;->longHash(J)I

    move-result v4

    .line 843
    .local v4, "hash":I
    invoke-virtual {p0, v4}, Lorg/mapdb/LongConcurrentHashMap;->segmentFor(I)Lorg/mapdb/LongConcurrentHashMap$Segment;

    move-result-object v1

    move-wide v2, p1

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/mapdb/LongConcurrentHashMap$Segment;->replace(JILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final segmentFor(I)Lorg/mapdb/LongConcurrentHashMap$Segment;
    .locals 3
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/mapdb/LongConcurrentHashMap$Segment",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap;, "Lorg/mapdb/LongConcurrentHashMap<TV;>;"
    iget-object v0, p0, Lorg/mapdb/LongConcurrentHashMap;->segments:[Lorg/mapdb/LongConcurrentHashMap$Segment;

    iget v1, p0, Lorg/mapdb/LongConcurrentHashMap;->segmentShift:I

    ushr-int v1, p1, v1

    iget v2, p0, Lorg/mapdb/LongConcurrentHashMap;->segmentMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public size()I
    .locals 18

    .prologue
    .line 634
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap;, "Lorg/mapdb/LongConcurrentHashMap<TV;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/LongConcurrentHashMap;->segments:[Lorg/mapdb/LongConcurrentHashMap$Segment;

    .line 635
    .local v12, "segments":[Lorg/mapdb/LongConcurrentHashMap$Segment;, "[Lorg/mapdb/LongConcurrentHashMap$Segment<TV;>;"
    const-wide/16 v14, 0x0

    .line 636
    .local v14, "sum":J
    const-wide/16 v4, 0x0

    .line 637
    .local v4, "check":J
    array-length v13, v12

    new-array v9, v13, [I

    .line 640
    .local v9, "mc":[I
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_0
    const/4 v13, 0x2

    if-ge v7, v13, :cond_2

    .line 641
    const-wide/16 v4, 0x0

    .line 642
    const-wide/16 v14, 0x0

    .line 643
    const/4 v10, 0x0

    .line 644
    .local v10, "mcsum":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v13, v12

    if-ge v3, v13, :cond_0

    .line 645
    aget-object v13, v12, v3

    iget v13, v13, Lorg/mapdb/LongConcurrentHashMap$Segment;->count:I

    int-to-long v0, v13

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    .line 646
    aget-object v13, v12, v3

    iget v13, v13, Lorg/mapdb/LongConcurrentHashMap$Segment;->modCount:I

    aput v13, v9, v3

    add-int/2addr v10, v13

    .line 644
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 648
    :cond_0
    if-eqz v10, :cond_1

    .line 649
    const/4 v3, 0x0

    :goto_2
    array-length v13, v12

    if-ge v3, v13, :cond_1

    .line 650
    aget-object v13, v12, v3

    iget v13, v13, Lorg/mapdb/LongConcurrentHashMap$Segment;->count:I

    int-to-long v0, v13

    move-wide/from16 v16, v0

    add-long v4, v4, v16

    .line 651
    aget v13, v9, v3

    aget-object v16, v12, v3

    move-object/from16 v0, v16

    iget v0, v0, Lorg/mapdb/LongConcurrentHashMap$Segment;->modCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v13, v0, :cond_3

    .line 652
    const-wide/16 v4, -0x1

    .line 657
    :cond_1
    cmp-long v13, v4, v14

    if-nez v13, :cond_4

    .line 660
    .end local v3    # "i":I
    .end local v10    # "mcsum":I
    :cond_2
    cmp-long v13, v4, v14

    if-eqz v13, :cond_7

    .line 661
    const-wide/16 v14, 0x0

    .line 662
    move-object v2, v12

    .local v2, "arr$":[Lorg/mapdb/LongConcurrentHashMap$Segment;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_3
    if-ge v6, v8, :cond_5

    aget-object v11, v2, v6

    .local v11, "segment":Lorg/mapdb/LongConcurrentHashMap$Segment;, "Lorg/mapdb/LongConcurrentHashMap$Segment<TV;>;"
    invoke-virtual {v11}, Lorg/mapdb/LongConcurrentHashMap$Segment;->lock()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 649
    .end local v2    # "arr$":[Lorg/mapdb/LongConcurrentHashMap$Segment;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .end local v11    # "segment":Lorg/mapdb/LongConcurrentHashMap$Segment;, "Lorg/mapdb/LongConcurrentHashMap$Segment<TV;>;"
    .restart local v3    # "i":I
    .restart local v10    # "mcsum":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 640
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 663
    .end local v3    # "i":I
    .end local v10    # "mcsum":I
    .restart local v2    # "arr$":[Lorg/mapdb/LongConcurrentHashMap$Segment;
    .restart local v6    # "i$":I
    .restart local v8    # "len$":I
    :cond_5
    move-object v2, v12

    array-length v8, v2

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v8, :cond_6

    aget-object v11, v2, v6

    .restart local v11    # "segment":Lorg/mapdb/LongConcurrentHashMap$Segment;, "Lorg/mapdb/LongConcurrentHashMap$Segment<TV;>;"
    iget v13, v11, Lorg/mapdb/LongConcurrentHashMap$Segment;->count:I

    int-to-long v0, v13

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 664
    .end local v11    # "segment":Lorg/mapdb/LongConcurrentHashMap$Segment;, "Lorg/mapdb/LongConcurrentHashMap$Segment<TV;>;"
    :cond_6
    move-object v2, v12

    array-length v8, v2

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v8, :cond_7

    aget-object v11, v2, v6

    .restart local v11    # "segment":Lorg/mapdb/LongConcurrentHashMap$Segment;, "Lorg/mapdb/LongConcurrentHashMap$Segment<TV;>;"
    invoke-virtual {v11}, Lorg/mapdb/LongConcurrentHashMap$Segment;->unlock()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 666
    .end local v2    # "arr$":[Lorg/mapdb/LongConcurrentHashMap$Segment;
    .end local v6    # "i$":I
    .end local v8    # "len$":I
    .end local v11    # "segment":Lorg/mapdb/LongConcurrentHashMap$Segment;, "Lorg/mapdb/LongConcurrentHashMap$Segment<TV;>;"
    :cond_7
    const-wide/32 v16, 0x7fffffff

    cmp-long v13, v14, v16

    if-lez v13, :cond_8

    .line 667
    const v13, 0x7fffffff

    .line 669
    :goto_6
    return v13

    :cond_8
    long-to-int v13, v14

    goto :goto_6
.end method

.method public valuesIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 674
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap;, "Lorg/mapdb/LongConcurrentHashMap<TV;>;"
    new-instance v0, Lorg/mapdb/LongConcurrentHashMap$ValueIterator;

    invoke-direct {v0, p0}, Lorg/mapdb/LongConcurrentHashMap$ValueIterator;-><init>(Lorg/mapdb/LongConcurrentHashMap;)V

    return-object v0
.end method
