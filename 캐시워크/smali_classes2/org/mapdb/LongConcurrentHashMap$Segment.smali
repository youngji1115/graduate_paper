.class final Lorg/mapdb/LongConcurrentHashMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "LongConcurrentHashMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/LongConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1f364c905893293dL


# instance fields
.field volatile transient count:I

.field final loadFactor:F

.field transient modCount:I

.field volatile transient table:[Lorg/mapdb/LongConcurrentHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/mapdb/LongConcurrentHashMap$HashEntry",
            "<TV;>;"
        }
    .end annotation
.end field

.field transient threshold:I


# direct methods
.method constructor <init>(IF)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "lf"    # F

    .prologue
    .line 241
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap$Segment;, "Lorg/mapdb/LongConcurrentHashMap$Segment<TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    .line 242
    iput p2, p0, Lorg/mapdb/LongConcurrentHashMap$Segment;->loadFactor:F

    .line 243
    invoke-static {p1}, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->newArray(I)[Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mapdb/LongConcurrentHashMap$Segment;->setTable([Lorg/mapdb/LongConcurrentHashMap$HashEntry;)V

    .line 244
    return-void
.end method

.method static newArray(I)[Lorg/mapdb/LongConcurrentHashMap$Segment;
    .locals 1
    .param p0, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Lorg/mapdb/LongConcurrentHashMap$Segment",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 248
    new-array v0, p0, [Lorg/mapdb/LongConcurrentHashMap$Segment;

    return-object v0
.end method


# virtual methods
.method clear()V
    .locals 3

    .prologue
    .line 499
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap$Segment;, "Lorg/mapdb/LongConcurrentHashMap$Segment<TV;>;"
    iget v2, p0, Lorg/mapdb/LongConcurrentHashMap$Segment;->count:I

    if-eqz v2, :cond_1

    .line 500
    invoke-virtual {p0}, Lorg/mapdb/LongConcurrentHashMap$Segment;->lock()V

    .line 502
    :try_start_0
    iget-object v1, p0, Lorg/mapdb/LongConcurrentHashMap$Segment;->table:[Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    .line 503
    .local v1, "tab":[Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "[Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 504
    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 503
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 505
    :cond_0
    iget v2, p0, Lorg/mapdb/LongConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/mapdb/LongConcurrentHashMap$Segment;->modCount:I

    .line 506
    const/4 v2, 0x0

    iput v2, p0, Lorg/mapdb/LongConcurrentHashMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    invoke-virtual {p0}, Lorg/mapdb/LongConcurrentHashMap$Segment;->unlock()V

    .line 511
    .end local v0    # "i":I
    .end local v1    # "tab":[Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "[Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    :cond_1
    return-void

    .line 508
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lorg/mapdb/LongConcurrentHashMap$Segment;->unlock()V

    throw v2
.end method

.method containsKey(JI)Z
    .locals 5
    .param p1, "key"    # J
    .param p3, "hash"    # I

    .prologue
    .line 303
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap$Segment;, "Lorg/mapdb/LongConcurrentHashMap$Segment<TV;>;"
    iget v1, p0, Lorg/mapdb/LongConcurrentHashMap$Segment;->count:I

    if-eqz v1, :cond_1

    .line 304
    invoke-virtual {p0, p3}, Lorg/mapdb/LongConcurrentHashMap$Segment;->getFirst(I)Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    move-result-object v0

    .line 305
    .local v0, "e":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 306
    iget v1, v0, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->hash:I

    if-ne v1, p3, :cond_0

    iget-wide v2, v0, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->key:J

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 307
    const/4 v1, 0x1

    .line 311
    .end local v0    # "e":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    :goto_1
    return v1

    .line 308
    .restart local v0    # "e":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    :cond_0
    iget-object v0, v0, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->next:Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    goto :goto_0

    .line 311
    .end local v0    # "e":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method containsValue(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 315
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap$Segment;, "Lorg/mapdb/LongConcurrentHashMap$Segment<TV;>;"
    iget v7, p0, Lorg/mapdb/LongConcurrentHashMap$Segment;->count:I

    if-eqz v7, :cond_3

    .line 316
    iget-object v5, p0, Lorg/mapdb/LongConcurrentHashMap$Segment;->table:[Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    .line 318
    .local v5, "tab":[Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "[Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    move-object v1, v5

    .local v1, "arr$":[Lorg/mapdb/LongConcurrentHashMap$HashEntry;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v0, v1, v3

    .line 319
    .local v0, "aTab":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    move-object v2, v0

    .local v2, "e":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    :goto_1
    if-eqz v2, :cond_2

    .line 320
    iget-object v6, v2, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 321
    .local v6, "v":Ljava/lang/Object;, "TV;"
    if-nez v6, :cond_0

    .line 322
    invoke-virtual {p0, v2}, Lorg/mapdb/LongConcurrentHashMap$Segment;->readValueUnderLock(Lorg/mapdb/LongConcurrentHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v6

    .line 323
    :cond_0
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 324
    const/4 v7, 0x1

    .line 328
    .end local v0    # "aTab":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    .end local v1    # "arr$":[Lorg/mapdb/LongConcurrentHashMap$HashEntry;
    .end local v2    # "e":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "tab":[Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "[Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    .end local v6    # "v":Ljava/lang/Object;, "TV;"
    :goto_2
    return v7

    .line 319
    .restart local v0    # "aTab":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    .restart local v1    # "arr$":[Lorg/mapdb/LongConcurrentHashMap$HashEntry;
    .restart local v2    # "e":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "tab":[Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "[Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    .restart local v6    # "v":Ljava/lang/Object;, "TV;"
    :cond_1
    iget-object v2, v2, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->next:Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    goto :goto_1

    .line 318
    .end local v6    # "v":Ljava/lang/Object;, "TV;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 328
    .end local v0    # "aTab":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    .end local v1    # "arr$":[Lorg/mapdb/LongConcurrentHashMap$HashEntry;
    .end local v2    # "e":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "tab":[Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "[Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    :cond_3
    const/4 v7, 0x0

    goto :goto_2
.end method

.method get(JI)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # J
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)TV;"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap$Segment;, "Lorg/mapdb/LongConcurrentHashMap$Segment<TV;>;"
    iget v2, p0, Lorg/mapdb/LongConcurrentHashMap$Segment;->count:I

    if-eqz v2, :cond_2

    .line 288
    invoke-virtual {p0, p3}, Lorg/mapdb/LongConcurrentHashMap$Segment;->getFirst(I)Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    move-result-object v0

    .line 289
    .local v0, "e":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 290
    iget v2, v0, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->hash:I

    if-ne v2, p3, :cond_1

    iget-wide v2, v0, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->key:J

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 291
    iget-object v1, v0, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 292
    .local v1, "v":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_0

    .line 299
    .end local v0    # "e":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :goto_1
    return-object v1

    .line 294
    .restart local v0    # "e":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    .restart local v1    # "v":Ljava/lang/Object;, "TV;"
    :cond_0
    invoke-virtual {p0, v0}, Lorg/mapdb/LongConcurrentHashMap$Segment;->readValueUnderLock(Lorg/mapdb/LongConcurrentHashMap$HashEntry;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 296
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :cond_1
    iget-object v0, v0, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->next:Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    goto :goto_0

    .line 299
    .end local v0    # "e":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method getFirst(I)Lorg/mapdb/LongConcurrentHashMap$HashEntry;
    .locals 2
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/mapdb/LongConcurrentHashMap$HashEntry",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 264
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap$Segment;, "Lorg/mapdb/LongConcurrentHashMap$Segment<TV;>;"
    iget-object v0, p0, Lorg/mapdb/LongConcurrentHashMap$Segment;->table:[Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    .line 265
    .local v0, "tab":[Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "[Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    aget-object v1, v0, v1

    return-object v1
.end method

.method put(JILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 15
    .param p1, "key"    # J
    .param p3, "hash"    # I
    .param p5, "onlyIfAbsent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JITV;Z)TV;"
        }
    .end annotation

    .prologue
    .line 369
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap$Segment;, "Lorg/mapdb/LongConcurrentHashMap$Segment<TV;>;"
    .local p4, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/mapdb/LongConcurrentHashMap$Segment;->lock()V

    .line 371
    :try_start_0
    iget v2, p0, Lorg/mapdb/LongConcurrentHashMap$Segment;->count:I

    .line 372
    .local v2, "c":I
    add-int/lit8 v9, v2, 0x1

    .end local v2    # "c":I
    .local v9, "c":I
    iget v3, p0, Lorg/mapdb/LongConcurrentHashMap$Segment;->threshold:I

    if-le v2, v3, :cond_0

    .line 373
    invoke-virtual {p0}, Lorg/mapdb/LongConcurrentHashMap$Segment;->rehash()V

    .line 374
    :cond_0
    iget-object v13, p0, Lorg/mapdb/LongConcurrentHashMap$Segment;->table:[Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    .line 375
    .local v13, "tab":[Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "[Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    array-length v3, v13

    add-int/lit8 v3, v3, -0x1

    and-int v11, p3, v3

    .line 376
    .local v11, "index":I
    aget-object v7, v13, v11

    .line 377
    .local v7, "first":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    move-object v10, v7

    .line 378
    .local v10, "e":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    :goto_0
    if-eqz v10, :cond_2

    iget v3, v10, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->hash:I

    move/from16 v0, p3

    if-ne v3, v0, :cond_1

    iget-wide v4, v10, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->key:J

    cmp-long v3, p1, v4

    if-eqz v3, :cond_2

    .line 379
    :cond_1
    iget-object v10, v10, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->next:Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    goto :goto_0

    .line 382
    :cond_2
    if-eqz v10, :cond_4

    .line 383
    iget-object v12, v10, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 384
    .local v12, "oldValue":Ljava/lang/Object;, "TV;"
    if-nez p5, :cond_3

    .line 385
    move-object/from16 v0, p4

    iput-object v0, v10, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    .end local v12    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/mapdb/LongConcurrentHashMap$Segment;->unlock()V

    return-object v12

    .line 388
    :cond_4
    const/4 v12, 0x0

    .line 389
    .restart local v12    # "oldValue":Ljava/lang/Object;, "TV;"
    :try_start_1
    iget v3, p0, Lorg/mapdb/LongConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/mapdb/LongConcurrentHashMap$Segment;->modCount:I

    .line 390
    new-instance v3, Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Lorg/mapdb/LongConcurrentHashMap$HashEntry;-><init>(JILorg/mapdb/LongConcurrentHashMap$HashEntry;Ljava/lang/Object;)V

    aput-object v3, v13, v11

    .line 391
    iput v9, p0, Lorg/mapdb/LongConcurrentHashMap$Segment;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 395
    .end local v7    # "first":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    .end local v9    # "c":I
    .end local v10    # "e":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    .end local v11    # "index":I
    .end local v12    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v13    # "tab":[Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "[Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lorg/mapdb/LongConcurrentHashMap$Segment;->unlock()V

    throw v3
.end method

.method readValueUnderLock(Lorg/mapdb/LongConcurrentHashMap$HashEntry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/LongConcurrentHashMap$HashEntry",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap$Segment;, "Lorg/mapdb/LongConcurrentHashMap$Segment<TV;>;"
    .local p1, "e":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    invoke-virtual {p0}, Lorg/mapdb/LongConcurrentHashMap$Segment;->lock()V

    .line 278
    :try_start_0
    iget-object v0, p1, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    invoke-virtual {p0}, Lorg/mapdb/LongConcurrentHashMap$Segment;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/mapdb/LongConcurrentHashMap$Segment;->unlock()V

    throw v0
.end method

.method rehash()V
    .locals 23

    .prologue
    .line 400
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap$Segment;, "Lorg/mapdb/LongConcurrentHashMap$Segment<TV;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/LongConcurrentHashMap$Segment;->table:[Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    move-object/from16 v20, v0

    .line 401
    .local v20, "oldTable":[Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "[Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v19, v0

    .line 402
    .local v19, "oldCapacity":I
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v19

    if-lt v0, v3, :cond_0

    .line 459
    :goto_0
    return-void

    .line 419
    :cond_0
    shl-int/lit8 v3, v19, 0x1

    invoke-static {v3}, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->newArray(I)[Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    move-result-object v17

    .line 420
    .local v17, "newTable":[Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "[Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    move-object/from16 v0, v17

    array-length v3, v0

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/mapdb/LongConcurrentHashMap$Segment;->loadFactor:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/mapdb/LongConcurrentHashMap$Segment;->threshold:I

    .line 421
    move-object/from16 v0, v17

    array-length v3, v0

    add-int/lit8 v22, v3, -0x1

    .line 422
    .local v22, "sizeMask":I
    move-object/from16 v2, v20

    .local v2, "arr$":[Lorg/mapdb/LongConcurrentHashMap$HashEntry;
    array-length v0, v2

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1
    move/from16 v0, v16

    if-ge v10, v0, :cond_5

    aget-object v9, v2, v10

    .line 425
    .local v9, "e":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    if-eqz v9, :cond_1

    .line 426
    iget-object v0, v9, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->next:Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    move-object/from16 v18, v0

    .line 427
    .local v18, "next":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    iget v3, v9, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->hash:I

    and-int v11, v3, v22

    .line 430
    .local v11, "idx":I
    if-nez v18, :cond_2

    .line 431
    aput-object v9, v17, v11

    .line 422
    .end local v11    # "idx":I
    .end local v18    # "next":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 435
    .restart local v11    # "idx":I
    .restart local v18    # "next":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    :cond_2
    move-object v15, v9

    .line 436
    .local v15, "lastRun":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    move v14, v11

    .line 437
    .local v14, "lastIdx":I
    move-object/from16 v13, v18

    .line 438
    .local v13, "last":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    :goto_2
    if-eqz v13, :cond_4

    .line 440
    iget v3, v13, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->hash:I

    and-int v12, v3, v22

    .line 441
    .local v12, "k":I
    if-eq v12, v14, :cond_3

    .line 442
    move v14, v12

    .line 443
    move-object v15, v13

    .line 439
    :cond_3
    iget-object v13, v13, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->next:Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    goto :goto_2

    .line 446
    .end local v12    # "k":I
    :cond_4
    aput-object v15, v17, v14

    .line 449
    move-object/from16 v21, v9

    .local v21, "p":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    :goto_3
    move-object/from16 v0, v21

    if-eq v0, v15, :cond_1

    .line 450
    move-object/from16 v0, v21

    iget v3, v0, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->hash:I

    and-int v12, v3, v22

    .line 451
    .restart local v12    # "k":I
    aget-object v7, v17, v12

    .line 452
    .local v7, "n":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    new-instance v3, Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    move-object/from16 v0, v21

    iget-wide v4, v0, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->key:J

    move-object/from16 v0, v21

    iget v6, v0, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->hash:I

    move-object/from16 v0, v21

    iget-object v8, v0, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    invoke-direct/range {v3 .. v8}, Lorg/mapdb/LongConcurrentHashMap$HashEntry;-><init>(JILorg/mapdb/LongConcurrentHashMap$HashEntry;Ljava/lang/Object;)V

    aput-object v3, v17, v12

    .line 449
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->next:Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    move-object/from16 v21, v0

    goto :goto_3

    .line 458
    .end local v7    # "n":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    .end local v9    # "e":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    .end local v11    # "idx":I
    .end local v12    # "k":I
    .end local v13    # "last":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    .end local v14    # "lastIdx":I
    .end local v15    # "lastRun":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    .end local v18    # "next":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    .end local v21    # "p":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    :cond_5
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mapdb/LongConcurrentHashMap$Segment;->table:[Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    goto :goto_0
.end method

.method remove(JILjava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .param p1, "key"    # J
    .param p3, "hash"    # I
    .param p4, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 465
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap$Segment;, "Lorg/mapdb/LongConcurrentHashMap$Segment<TV;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/LongConcurrentHashMap$Segment;->lock()V

    .line 467
    :try_start_0
    move-object/from16 v0, p0

    iget v4, v0, Lorg/mapdb/LongConcurrentHashMap$Segment;->count:I

    add-int/lit8 v2, v4, -0x1

    .line 468
    .local v2, "c":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapdb/LongConcurrentHashMap$Segment;->table:[Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    .line 469
    .local v14, "tab":[Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "[Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    array-length v4, v14

    add-int/lit8 v4, v4, -0x1

    and-int v11, p3, v4

    .line 470
    .local v11, "index":I
    aget-object v10, v14, v11

    .line 471
    .local v10, "first":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    move-object v9, v10

    .line 472
    .local v9, "e":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    :goto_0
    if-eqz v9, :cond_1

    iget v4, v9, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->hash:I

    move/from16 v0, p3

    if-ne v4, v0, :cond_0

    iget-wide v4, v9, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->key:J

    cmp-long v4, p1, v4

    if-eqz v4, :cond_1

    .line 473
    :cond_0
    iget-object v9, v9, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->next:Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    goto :goto_0

    .line 475
    :cond_1
    const/4 v12, 0x0

    .line 476
    .local v12, "oldValue":Ljava/lang/Object;, "TV;"
    if-eqz v9, :cond_4

    .line 477
    iget-object v15, v9, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 478
    .local v15, "v":Ljava/lang/Object;, "TV;"
    if-eqz p4, :cond_2

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 479
    :cond_2
    move-object v12, v15

    .line 483
    move-object/from16 v0, p0

    iget v4, v0, Lorg/mapdb/LongConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/mapdb/LongConcurrentHashMap$Segment;->modCount:I

    .line 484
    iget-object v3, v9, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->next:Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    .line 485
    .local v3, "newFirst":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    move-object v13, v10

    .local v13, "p":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    move-object v7, v3

    .end local v3    # "newFirst":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    .local v7, "newFirst":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    :goto_1
    if-eq v13, v9, :cond_3

    .line 486
    new-instance v3, Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    iget-wide v4, v13, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->key:J

    iget v6, v13, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->hash:I

    iget-object v8, v13, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    invoke-direct/range {v3 .. v8}, Lorg/mapdb/LongConcurrentHashMap$HashEntry;-><init>(JILorg/mapdb/LongConcurrentHashMap$HashEntry;Ljava/lang/Object;)V

    .line 485
    .end local v7    # "newFirst":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    .restart local v3    # "newFirst":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    iget-object v13, v13, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->next:Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    move-object v7, v3

    .end local v3    # "newFirst":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    .restart local v7    # "newFirst":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    goto :goto_1

    .line 488
    :cond_3
    aput-object v7, v14, v11

    .line 489
    move-object/from16 v0, p0

    iput v2, v0, Lorg/mapdb/LongConcurrentHashMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    .end local v7    # "newFirst":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    .end local v12    # "oldValue":Ljava/lang/Object;, "TV;"
    .end local v13    # "p":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    .end local v15    # "v":Ljava/lang/Object;, "TV;"
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/LongConcurrentHashMap$Segment;->unlock()V

    return-object v12

    .end local v2    # "c":I
    .end local v9    # "e":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    .end local v10    # "first":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    .end local v11    # "index":I
    .end local v14    # "tab":[Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "[Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    :catchall_0
    move-exception v4

    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/LongConcurrentHashMap$Segment;->unlock()V

    throw v4
.end method

.method replace(JILjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # J
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JITV;)TV;"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap$Segment;, "Lorg/mapdb/LongConcurrentHashMap$Segment<TV;>;"
    .local p4, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/mapdb/LongConcurrentHashMap$Segment;->lock()V

    .line 352
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/mapdb/LongConcurrentHashMap$Segment;->getFirst(I)Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    move-result-object v0

    .line 353
    .local v0, "e":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->hash:I

    if-ne v2, p3, :cond_0

    iget-wide v2, v0, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->key:J

    cmp-long v2, p1, v2

    if-eqz v2, :cond_1

    .line 354
    :cond_0
    iget-object v0, v0, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->next:Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    goto :goto_0

    .line 356
    :cond_1
    const/4 v1, 0x0

    .line 357
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_2

    .line 358
    iget-object v1, v0, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 359
    iput-object p4, v0, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2
    invoke-virtual {p0}, Lorg/mapdb/LongConcurrentHashMap$Segment;->unlock()V

    return-object v1

    .end local v0    # "e":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lorg/mapdb/LongConcurrentHashMap$Segment;->unlock()V

    throw v2
.end method

.method replace(JILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "key"    # J
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JITV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 332
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap$Segment;, "Lorg/mapdb/LongConcurrentHashMap$Segment<TV;>;"
    .local p4, "oldValue":Ljava/lang/Object;, "TV;"
    .local p5, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/mapdb/LongConcurrentHashMap$Segment;->lock()V

    .line 334
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/mapdb/LongConcurrentHashMap$Segment;->getFirst(I)Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    move-result-object v0

    .line 335
    .local v0, "e":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->hash:I

    if-ne v2, p3, :cond_0

    iget-wide v2, v0, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->key:J

    cmp-long v2, p1, v2

    if-eqz v2, :cond_1

    .line 336
    :cond_0
    iget-object v0, v0, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->next:Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    goto :goto_0

    .line 338
    :cond_1
    const/4 v1, 0x0

    .line 339
    .local v1, "replaced":Z
    if-eqz v0, :cond_2

    iget-object v2, v0, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    invoke-virtual {p4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 340
    const/4 v1, 0x1

    .line 341
    iput-object p5, v0, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    :cond_2
    invoke-virtual {p0}, Lorg/mapdb/LongConcurrentHashMap$Segment;->unlock()V

    return v1

    .end local v0    # "e":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    .end local v1    # "replaced":Z
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lorg/mapdb/LongConcurrentHashMap$Segment;->unlock()V

    throw v2
.end method

.method setTable([Lorg/mapdb/LongConcurrentHashMap$HashEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/mapdb/LongConcurrentHashMap$HashEntry",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap$Segment;, "Lorg/mapdb/LongConcurrentHashMap$Segment<TV;>;"
    .local p1, "newTable":[Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "[Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    array-length v0, p1

    int-to-float v0, v0

    iget v1, p0, Lorg/mapdb/LongConcurrentHashMap$Segment;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/mapdb/LongConcurrentHashMap$Segment;->threshold:I

    .line 257
    iput-object p1, p0, Lorg/mapdb/LongConcurrentHashMap$Segment;->table:[Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    .line 258
    return-void
.end method
