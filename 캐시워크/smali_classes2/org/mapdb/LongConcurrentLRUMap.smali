.class public Lorg/mapdb/LongConcurrentLRUMap;
.super Lorg/mapdb/LongMap;
.source "LongConcurrentLRUMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;,
        Lorg/mapdb/LongConcurrentLRUMap$PriorityQueue;,
        Lorg/mapdb/LongConcurrentLRUMap$PQueue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/mapdb/LongMap",
        "<TV;>;"
    }
.end annotation


# instance fields
.field protected final acceptableWaterMark:I

.field protected final accessCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final evictionCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field protected isCleaning:Z

.field protected final lowerWaterMark:I

.field protected final map:Lorg/mapdb/LongConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/LongConcurrentHashMap",
            "<",
            "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field protected final markAndSweepLock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected final missCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field protected oldestEntry:J

.field protected final putCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final size:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected final upperWaterMark:I


# direct methods
.method public constructor <init>(II)V
    .locals 6
    .param p1, "size"    # I
    .param p2, "lowerWatermark"    # I

    .prologue
    .line 71
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap;, "Lorg/mapdb/LongConcurrentLRUMap<TV;>;"
    add-int v0, p2, p1

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    int-to-double v4, p1

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/mapdb/LongConcurrentLRUMap;-><init>(IIII)V

    .line 73
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 4
    .param p1, "upperWaterMark"    # I
    .param p2, "lowerWaterMark"    # I
    .param p3, "acceptableWatermark"    # I
    .param p4, "initialSize"    # I

    .prologue
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap;, "Lorg/mapdb/LongConcurrentLRUMap<TV;>;"
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    .line 60
    invoke-direct {p0}, Lorg/mapdb/LongMap;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lorg/mapdb/LongConcurrentLRUMap;->markAndSweepLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mapdb/LongConcurrentLRUMap;->isCleaning:Z

    .line 48
    iput-wide v2, p0, Lorg/mapdb/LongConcurrentLRUMap;->oldestEntry:J

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/mapdb/LongConcurrentLRUMap;->accessCounter:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/mapdb/LongConcurrentLRUMap;->putCounter:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/mapdb/LongConcurrentLRUMap;->missCounter:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/mapdb/LongConcurrentLRUMap;->evictionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/mapdb/LongConcurrentLRUMap;->size:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 61
    if-ge p1, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "upperWaterMark must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    if-lt p2, p1, :cond_1

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lowerWaterMark must be  < upperWaterMark"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    new-instance v0, Lorg/mapdb/LongConcurrentHashMap;

    invoke-direct {v0, p4}, Lorg/mapdb/LongConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lorg/mapdb/LongConcurrentLRUMap;->map:Lorg/mapdb/LongConcurrentHashMap;

    .line 65
    iput p1, p0, Lorg/mapdb/LongConcurrentLRUMap;->upperWaterMark:I

    .line 66
    iput p2, p0, Lorg/mapdb/LongConcurrentLRUMap;->lowerWaterMark:I

    .line 67
    iput p3, p0, Lorg/mapdb/LongConcurrentLRUMap;->acceptableWaterMark:I

    .line 68
    return-void
.end method

.method private evictEntry(J)V
    .locals 5
    .param p1, "key"    # J

    .prologue
    .line 618
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap;, "Lorg/mapdb/LongConcurrentLRUMap<TV;>;"
    iget-object v1, p0, Lorg/mapdb/LongConcurrentLRUMap;->map:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Lorg/mapdb/LongConcurrentHashMap;->remove(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;

    .line 619
    .local v0, "o":Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;, "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry<TV;>;"
    if-nez v0, :cond_0

    .line 623
    :goto_0
    return-void

    .line 620
    :cond_0
    iget-object v1, p0, Lorg/mapdb/LongConcurrentLRUMap;->size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 621
    iget-object v1, p0, Lorg/mapdb/LongConcurrentLRUMap;->evictionCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 622
    iget-wide v2, v0, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->key:J

    iget-object v1, v0, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->value:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3, v1}, Lorg/mapdb/LongConcurrentLRUMap;->evictedEntry(JLjava/lang/Object;)V

    goto :goto_0
.end method

.method private markAndSweep()V
    .locals 36

    .prologue
    .line 148
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap;, "Lorg/mapdb/LongConcurrentLRUMap<TV;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/LongConcurrentLRUMap;->markAndSweepLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v33

    if-nez v33, :cond_0

    .line 331
    :goto_0
    return-void

    .line 150
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/LongConcurrentLRUMap;->oldestEntry:J

    move-wide/from16 v22, v0

    .line 151
    .local v22, "oldestEntry":J
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mapdb/LongConcurrentLRUMap;->isCleaning:Z

    .line 152
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mapdb/LongConcurrentLRUMap;->oldestEntry:J

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/LongConcurrentLRUMap;->accessCounter:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v30

    .line 155
    .local v30, "timeCurrent":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/LongConcurrentLRUMap;->size:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v26

    .line 157
    .local v26, "sz":I
    const/16 v20, 0x0

    .line 158
    .local v20, "numRemoved":I
    const/16 v18, 0x0

    .line 159
    .local v18, "numKept":I
    move-wide/from16 v16, v30

    .line 160
    .local v16, "newestEntry":J
    const-wide/16 v12, -0x1

    .line 161
    .local v12, "newNewestEntry":J
    const-wide v14, 0x7fffffffffffffffL

    .line 163
    .local v14, "newOldestEntry":J
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mapdb/LongConcurrentLRUMap;->lowerWaterMark:I

    move/from16 v27, v0

    .line 164
    .local v27, "wantToKeep":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mapdb/LongConcurrentLRUMap;->lowerWaterMark:I

    move/from16 v33, v0

    sub-int v32, v26, v33

    .line 166
    .local v32, "wantToRemove":I
    move/from16 v0, v26

    new-array v8, v0, [Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;

    .line 167
    .local v8, "eset":[Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;
    const/4 v6, 0x0

    .line 172
    .local v6, "eSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/LongConcurrentLRUMap;->map:Lorg/mapdb/LongConcurrentHashMap;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lorg/mapdb/LongConcurrentHashMap;->valuesIterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/mapdb/LongConcurrentLRUMap$CacheEntry<TV;>;>;"
    move v7, v6

    .end local v6    # "eSize":I
    .local v7, "eSize":I
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_3

    .line 173
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;

    .line 175
    .local v5, "ce":Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;, "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry<TV;>;"
    iget-wide v0, v5, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->lastAccessed:J

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    iput-wide v0, v5, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->lastAccessedCopy:J

    .line 176
    iget-wide v0, v5, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->lastAccessedCopy:J

    move-wide/from16 v28, v0

    .line 179
    .local v28, "thisEntry":J
    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v34, v0

    sub-long v34, v16, v34

    cmp-long v33, v28, v34

    if-lez v33, :cond_1

    .line 182
    add-int/lit8 v18, v18, 0x1

    .line 183
    move-wide/from16 v0, v28

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    move v6, v7

    .end local v7    # "eSize":I
    .restart local v6    # "eSize":I
    :goto_2
    move v7, v6

    .line 200
    .end local v6    # "eSize":I
    .restart local v7    # "eSize":I
    goto :goto_1

    .line 184
    :cond_1
    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v34, v0

    add-long v34, v34, v22

    cmp-long v33, v28, v34

    if-gez v33, :cond_2

    .line 187
    iget-wide v0, v5, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->key:J

    move-wide/from16 v34, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-direct {v0, v1, v2}, Lorg/mapdb/LongConcurrentLRUMap;->evictEntry(J)V

    .line 188
    add-int/lit8 v20, v20, 0x1

    move v6, v7

    .end local v7    # "eSize":I
    .restart local v6    # "eSize":I
    goto :goto_2

    .line 194
    .end local v6    # "eSize":I
    .restart local v7    # "eSize":I
    :cond_2
    array-length v0, v8

    move/from16 v33, v0

    add-int/lit8 v33, v33, -0x1

    move/from16 v0, v33

    if-ge v7, v0, :cond_13

    .line 195
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "eSize":I
    .restart local v6    # "eSize":I
    aput-object v5, v8, v7

    .line 196
    move-wide/from16 v0, v28

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 197
    move-wide/from16 v0, v28

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    goto :goto_2

    .line 204
    .end local v5    # "ce":Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;, "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry<TV;>;"
    .end local v6    # "eSize":I
    .end local v28    # "thisEntry":J
    .restart local v7    # "eSize":I
    :cond_3
    const/16 v19, 0x1

    .local v19, "numPasses":I
    move v6, v7

    .line 208
    .end local v7    # "eSize":I
    .restart local v6    # "eSize":I
    :cond_4
    sub-int v33, v26, v20

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mapdb/LongConcurrentLRUMap;->acceptableWaterMark:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_8

    add-int/lit8 v19, v19, -0x1

    if-ltz v19, :cond_8

    .line 210
    const-wide v34, 0x7fffffffffffffffL

    cmp-long v33, v14, v34

    if-nez v33, :cond_5

    .line 211
    :goto_3
    const-wide v14, 0x7fffffffffffffffL

    .line 212
    move-wide/from16 v16, v12

    .line 213
    const-wide/16 v12, -0x1

    .line 214
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mapdb/LongConcurrentLRUMap;->lowerWaterMark:I

    move/from16 v33, v0

    sub-int v27, v33, v18

    .line 215
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mapdb/LongConcurrentLRUMap;->lowerWaterMark:I

    move/from16 v33, v0

    sub-int v33, v26, v33

    sub-int v32, v33, v20

    .line 218
    add-int/lit8 v9, v6, -0x1

    .local v9, "i":I
    :goto_4
    if-ltz v9, :cond_4

    .line 219
    aget-object v4, v8, v9

    .line 220
    .local v4, "ce":Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;
    iget-wide v0, v4, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->lastAccessedCopy:J

    move-wide/from16 v28, v0

    .line 222
    .restart local v28    # "thisEntry":J
    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v34, v0

    sub-long v34, v16, v34

    cmp-long v33, v28, v34

    if-lez v33, :cond_6

    .line 225
    add-int/lit8 v18, v18, 0x1

    .line 227
    add-int/lit8 v33, v6, -0x1

    aget-object v33, v8, v33

    aput-object v33, v8, v9

    .line 228
    add-int/lit8 v6, v6, -0x1

    .line 230
    move-wide/from16 v0, v28

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 218
    :goto_5
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .end local v4    # "ce":Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;
    .end local v9    # "i":I
    .end local v28    # "thisEntry":J
    :cond_5
    move-wide/from16 v22, v14

    .line 210
    goto :goto_3

    .line 232
    .restart local v4    # "ce":Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;
    .restart local v9    # "i":I
    .restart local v28    # "thisEntry":J
    :cond_6
    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v34, v0

    add-long v34, v34, v22

    cmp-long v33, v28, v34

    if-gez v33, :cond_7

    .line 236
    iget-wide v0, v4, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->key:J

    move-wide/from16 v34, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-direct {v0, v1, v2}, Lorg/mapdb/LongConcurrentLRUMap;->evictEntry(J)V

    .line 237
    add-int/lit8 v20, v20, 0x1

    .line 240
    add-int/lit8 v33, v6, -0x1

    aget-object v33, v8, v33

    aput-object v33, v8, v9

    .line 241
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 245
    :cond_7
    move-wide/from16 v0, v28

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 246
    move-wide/from16 v0, v28

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    goto :goto_5

    .line 256
    .end local v4    # "ce":Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;
    .end local v9    # "i":I
    .end local v28    # "thisEntry":J
    :cond_8
    sub-int v33, v26, v20

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mapdb/LongConcurrentLRUMap;->acceptableWaterMark:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_11

    .line 258
    const-wide v34, 0x7fffffffffffffffL

    cmp-long v33, v14, v34

    if-nez v33, :cond_a

    .line 259
    :goto_6
    const-wide v14, 0x7fffffffffffffffL

    .line 260
    move-wide/from16 v16, v12

    .line 261
    const-wide/16 v12, -0x1

    .line 262
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mapdb/LongConcurrentLRUMap;->lowerWaterMark:I

    move/from16 v33, v0

    sub-int v27, v33, v18

    .line 263
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mapdb/LongConcurrentLRUMap;->lowerWaterMark:I

    move/from16 v33, v0

    sub-int v33, v26, v33

    sub-int v32, v33, v20

    .line 265
    new-instance v25, Lorg/mapdb/LongConcurrentLRUMap$PQueue;

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/mapdb/LongConcurrentLRUMap$PQueue;-><init>(I)V

    .line 267
    .local v25, "queue":Lorg/mapdb/LongConcurrentLRUMap$PQueue;, "Lorg/mapdb/LongConcurrentLRUMap$PQueue<TV;>;"
    add-int/lit8 v9, v6, -0x1

    .restart local v9    # "i":I
    :goto_7
    if-ltz v9, :cond_e

    .line 268
    aget-object v5, v8, v9

    .line 269
    .restart local v5    # "ce":Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;, "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry<TV;>;"
    iget-wide v0, v5, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->lastAccessedCopy:J

    move-wide/from16 v28, v0

    .line 271
    .restart local v28    # "thisEntry":J
    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v34, v0

    sub-long v34, v16, v34

    cmp-long v33, v28, v34

    if-lez v33, :cond_b

    .line 274
    add-int/lit8 v18, v18, 0x1

    .line 279
    move-wide/from16 v0, v28

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 267
    :cond_9
    :goto_8
    add-int/lit8 v9, v9, -0x1

    goto :goto_7

    .end local v5    # "ce":Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;, "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry<TV;>;"
    .end local v9    # "i":I
    .end local v25    # "queue":Lorg/mapdb/LongConcurrentLRUMap$PQueue;, "Lorg/mapdb/LongConcurrentLRUMap$PQueue<TV;>;"
    .end local v28    # "thisEntry":J
    :cond_a
    move-wide/from16 v22, v14

    .line 258
    goto :goto_6

    .line 281
    .restart local v5    # "ce":Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;, "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry<TV;>;"
    .restart local v9    # "i":I
    .restart local v25    # "queue":Lorg/mapdb/LongConcurrentLRUMap$PQueue;, "Lorg/mapdb/LongConcurrentLRUMap$PQueue<TV;>;"
    .restart local v28    # "thisEntry":J
    :cond_b
    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v34, v0

    add-long v34, v34, v22

    cmp-long v33, v28, v34

    if-gez v33, :cond_c

    .line 284
    iget-wide v0, v5, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->key:J

    move-wide/from16 v34, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-direct {v0, v1, v2}, Lorg/mapdb/LongConcurrentLRUMap;->evictEntry(J)V

    .line 285
    add-int/lit8 v20, v20, 0x1

    goto :goto_8

    .line 300
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mapdb/LongConcurrentLRUMap;->lowerWaterMark:I

    move/from16 v33, v0

    sub-int v33, v26, v33

    sub-int v33, v33, v20

    move/from16 v0, v33

    move-object/from16 v1, v25

    iput v0, v1, Lorg/mapdb/LongConcurrentLRUMap$PQueue;->myMaxSize:I

    .line 301
    :goto_9
    invoke-virtual/range {v25 .. v25}, Lorg/mapdb/LongConcurrentLRUMap$PQueue;->size()I

    move-result v33

    move-object/from16 v0, v25

    iget v0, v0, Lorg/mapdb/LongConcurrentLRUMap$PQueue;->myMaxSize:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_d

    invoke-virtual/range {v25 .. v25}, Lorg/mapdb/LongConcurrentLRUMap$PQueue;->size()I

    move-result v33

    if-lez v33, :cond_d

    .line 302
    invoke-virtual/range {v25 .. v25}, Lorg/mapdb/LongConcurrentLRUMap$PQueue;->pop()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;

    .line 303
    .local v24, "otherEntry":Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;
    move-object/from16 v0, v24

    iget-wide v0, v0, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->lastAccessedCopy:J

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 304
    goto :goto_9

    .line 305
    .end local v24    # "otherEntry":Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;
    :cond_d
    move-object/from16 v0, v25

    iget v0, v0, Lorg/mapdb/LongConcurrentLRUMap$PQueue;->myMaxSize:I

    move/from16 v33, v0

    if-gtz v33, :cond_10

    .line 316
    .end local v5    # "ce":Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;, "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry<TV;>;"
    .end local v28    # "thisEntry":J
    :cond_e
    invoke-virtual/range {v25 .. v25}, Lorg/mapdb/LongConcurrentLRUMap$PQueue;->getValues()Ljava/lang/Iterable;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;

    .line 317
    .restart local v5    # "ce":Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;, "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry<TV;>;"
    if-eqz v5, :cond_f

    .line 318
    iget-wide v0, v5, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->key:J

    move-wide/from16 v34, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-direct {v0, v1, v2}, Lorg/mapdb/LongConcurrentLRUMap;->evictEntry(J)V

    .line 319
    add-int/lit8 v20, v20, 0x1

    .line 320
    goto :goto_a

    .line 307
    .end local v10    # "i$":Ljava/util/Iterator;
    .restart local v28    # "thisEntry":J
    :cond_10
    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lorg/mapdb/LongConcurrentLRUMap$PQueue;->myInsertWithOverflow(Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;)Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;

    move-result-object v21

    .line 308
    .local v21, "o":Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;
    if-eqz v21, :cond_9

    .line 309
    check-cast v21, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;

    .end local v21    # "o":Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;
    move-object/from16 v0, v21

    iget-wide v0, v0, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->lastAccessedCopy:J

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    goto/16 :goto_8

    .line 325
    .end local v5    # "ce":Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;, "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry<TV;>;"
    .end local v9    # "i":I
    .end local v25    # "queue":Lorg/mapdb/LongConcurrentLRUMap$PQueue;, "Lorg/mapdb/LongConcurrentLRUMap$PQueue<TV;>;"
    .end local v28    # "thisEntry":J
    :cond_11
    const-wide v34, 0x7fffffffffffffffL

    cmp-long v33, v14, v34

    if-nez v33, :cond_12

    .line 326
    :goto_b
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mapdb/LongConcurrentLRUMap;->oldestEntry:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mapdb/LongConcurrentLRUMap;->isCleaning:Z

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/LongConcurrentLRUMap;->markAndSweepLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :cond_12
    move-wide/from16 v22, v14

    .line 325
    goto :goto_b

    .line 328
    .end local v6    # "eSize":I
    .end local v8    # "eset":[Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;
    .end local v11    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/mapdb/LongConcurrentLRUMap$CacheEntry<TV;>;>;"
    .end local v12    # "newNewestEntry":J
    .end local v14    # "newOldestEntry":J
    .end local v16    # "newestEntry":J
    .end local v18    # "numKept":I
    .end local v19    # "numPasses":I
    .end local v20    # "numRemoved":I
    .end local v22    # "oldestEntry":J
    .end local v26    # "sz":I
    .end local v27    # "wantToKeep":I
    .end local v30    # "timeCurrent":J
    .end local v32    # "wantToRemove":I
    :catchall_0
    move-exception v33

    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mapdb/LongConcurrentLRUMap;->isCleaning:Z

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/LongConcurrentLRUMap;->markAndSweepLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v33

    .restart local v5    # "ce":Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;, "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry<TV;>;"
    .restart local v7    # "eSize":I
    .restart local v8    # "eset":[Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;
    .restart local v11    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/mapdb/LongConcurrentLRUMap$CacheEntry<TV;>;>;"
    .restart local v12    # "newNewestEntry":J
    .restart local v14    # "newOldestEntry":J
    .restart local v16    # "newestEntry":J
    .restart local v18    # "numKept":I
    .restart local v20    # "numRemoved":I
    .restart local v22    # "oldestEntry":J
    .restart local v26    # "sz":I
    .restart local v27    # "wantToKeep":I
    .restart local v28    # "thisEntry":J
    .restart local v30    # "timeCurrent":J
    .restart local v32    # "wantToRemove":I
    :cond_13
    move v6, v7

    .end local v7    # "eSize":I
    .restart local v6    # "eSize":I
    goto/16 :goto_2
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 679
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap;, "Lorg/mapdb/LongConcurrentLRUMap<TV;>;"
    iget-object v0, p0, Lorg/mapdb/LongConcurrentLRUMap;->map:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v0}, Lorg/mapdb/LongConcurrentHashMap;->clear()V

    .line 680
    return-void
.end method

.method protected evictedEntry(JLjava/lang/Object;)V
    .locals 0
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    .prologue
    .line 729
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap;, "Lorg/mapdb/LongConcurrentLRUMap<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    return-void
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
    .line 76
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap;, "Lorg/mapdb/LongConcurrentLRUMap<TV;>;"
    iget-object v1, p0, Lorg/mapdb/LongConcurrentLRUMap;->map:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Lorg/mapdb/LongConcurrentHashMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;

    .line 77
    .local v0, "e":Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;, "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry<TV;>;"
    if-nez v0, :cond_0

    .line 78
    iget-object v1, p0, Lorg/mapdb/LongConcurrentLRUMap;->missCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 79
    const/4 v1, 0x0

    .line 82
    :goto_0
    return-object v1

    .line 81
    :cond_0
    iget-object v1, p0, Lorg/mapdb/LongConcurrentLRUMap;->accessCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->lastAccessed:J

    .line 82
    iget-object v1, v0, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getMap()Lorg/mapdb/LongMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mapdb/LongMap",
            "<",
            "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 683
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap;, "Lorg/mapdb/LongConcurrentLRUMap<TV;>;"
    iget-object v0, p0, Lorg/mapdb/LongConcurrentLRUMap;->map:Lorg/mapdb/LongConcurrentHashMap;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 87
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap;, "Lorg/mapdb/LongConcurrentLRUMap<TV;>;"
    iget-object v0, p0, Lorg/mapdb/LongConcurrentLRUMap;->map:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v0}, Lorg/mapdb/LongConcurrentHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public longMapIterator()Lorg/mapdb/LongMap$LongMapIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mapdb/LongMap$LongMapIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 654
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap;, "Lorg/mapdb/LongConcurrentLRUMap<TV;>;"
    iget-object v1, p0, Lorg/mapdb/LongConcurrentLRUMap;->map:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v1}, Lorg/mapdb/LongConcurrentHashMap;->longMapIterator()Lorg/mapdb/LongMap$LongMapIterator;

    move-result-object v0

    .line 655
    .local v0, "iter":Lorg/mapdb/LongMap$LongMapIterator;, "Lorg/mapdb/LongMap$LongMapIterator<Lorg/mapdb/LongConcurrentLRUMap$CacheEntry<TV;>;>;"
    new-instance v1, Lorg/mapdb/LongConcurrentLRUMap$2;

    invoke-direct {v1, p0, v0}, Lorg/mapdb/LongConcurrentLRUMap$2;-><init>(Lorg/mapdb/LongConcurrentLRUMap;Lorg/mapdb/LongMap$LongMapIterator;)V

    return-object v1
.end method

.method public put(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap;, "Lorg/mapdb/LongConcurrentLRUMap<TV;>;"
    .local p3, "val":Ljava/lang/Object;, "TV;"
    const/4 v8, 0x0

    .line 100
    if-nez p3, :cond_0

    .line 125
    :goto_0
    return-object v8

    .line 101
    :cond_0
    new-instance v0, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;

    iget-object v1, p0, Lorg/mapdb/LongConcurrentLRUMap;->accessCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v4

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;-><init>(JLjava/lang/Object;J)V

    .line 102
    .local v0, "e":Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;, "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry<TV;>;"
    iget-object v1, p0, Lorg/mapdb/LongConcurrentLRUMap;->map:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v1, p1, p2, v0}, Lorg/mapdb/LongConcurrentHashMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;

    .line 104
    .local v7, "oldCacheEntry":Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;, "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry<TV;>;"
    if-nez v7, :cond_2

    .line 105
    iget-object v1, p0, Lorg/mapdb/LongConcurrentLRUMap;->size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v6

    .line 110
    .local v6, "currentSize":I
    :goto_1
    iget-object v1, p0, Lorg/mapdb/LongConcurrentLRUMap;->putCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 122
    iget v1, p0, Lorg/mapdb/LongConcurrentLRUMap;->upperWaterMark:I

    if-le v6, v1, :cond_1

    iget-boolean v1, p0, Lorg/mapdb/LongConcurrentLRUMap;->isCleaning:Z

    if-nez v1, :cond_1

    .line 123
    invoke-direct {p0}, Lorg/mapdb/LongConcurrentLRUMap;->markAndSweep()V

    .line 125
    :cond_1
    if-nez v7, :cond_3

    move-object v1, v8

    :goto_2
    move-object v8, v1

    goto :goto_0

    .line 107
    .end local v6    # "currentSize":I
    :cond_2
    iget-object v1, p0, Lorg/mapdb/LongConcurrentLRUMap;->size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    .restart local v6    # "currentSize":I
    goto :goto_1

    .line 125
    :cond_3
    iget-object v1, v7, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->value:Ljava/lang/Object;

    goto :goto_2
.end method

.method public remove(J)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap;, "Lorg/mapdb/LongConcurrentLRUMap<TV;>;"
    iget-object v1, p0, Lorg/mapdb/LongConcurrentLRUMap;->map:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Lorg/mapdb/LongConcurrentHashMap;->remove(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;

    .line 92
    .local v0, "cacheEntry":Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;, "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry<TV;>;"
    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Lorg/mapdb/LongConcurrentLRUMap;->size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 94
    iget-object v1, v0, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->value:Ljava/lang/Object;

    .line 96
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 627
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap;, "Lorg/mapdb/LongConcurrentLRUMap<TV;>;"
    iget-object v0, p0, Lorg/mapdb/LongConcurrentLRUMap;->size:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public valuesIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 632
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap;, "Lorg/mapdb/LongConcurrentLRUMap<TV;>;"
    iget-object v1, p0, Lorg/mapdb/LongConcurrentLRUMap;->map:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v1}, Lorg/mapdb/LongConcurrentHashMap;->valuesIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 633
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/mapdb/LongConcurrentLRUMap$CacheEntry<TV;>;>;"
    new-instance v1, Lorg/mapdb/LongConcurrentLRUMap$1;

    invoke-direct {v1, p0, v0}, Lorg/mapdb/LongConcurrentLRUMap$1;-><init>(Lorg/mapdb/LongConcurrentLRUMap;Ljava/util/Iterator;)V

    return-object v1
.end method
