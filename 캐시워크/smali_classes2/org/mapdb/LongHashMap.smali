.class public Lorg/mapdb/LongHashMap;
.super Lorg/mapdb/LongMap;
.source "LongHashMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapdb/LongHashMap$ValueIterator;,
        Lorg/mapdb/LongHashMap$EntryIterator;,
        Lorg/mapdb/LongHashMap$AbstractMapIterator;,
        Lorg/mapdb/LongHashMap$Entry;
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
.field private static final DEFAULT_SIZE:I = 0x10

.field private static final serialVersionUID:J = 0x5074a85f56c18f9L


# instance fields
.field transient elementCount:I

.field transient elementData:[Lorg/mapdb/LongHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/mapdb/LongHashMap$Entry",
            "<TV;>;"
        }
    .end annotation
.end field

.field protected final hashSalt:J

.field final loadFactor:F

.field transient modCount:I

.field threshold:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 215
    .local p0, "this":Lorg/mapdb/LongHashMap;, "Lorg/mapdb/LongHashMap<TV;>;"
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/mapdb/LongHashMap;-><init>(I)V

    .line 216
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 227
    .local p0, "this":Lorg/mapdb/LongHashMap;, "Lorg/mapdb/LongHashMap<TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Lorg/mapdb/LongHashMap;-><init>(IF)V

    .line 228
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3
    .param p1, "capacity"    # I
    .param p2, "loadFactor"    # F

    .prologue
    .local p0, "this":Lorg/mapdb/LongHashMap;, "Lorg/mapdb/LongHashMap<TV;>;"
    const/4 v2, 0x0

    .line 266
    invoke-direct {p0}, Lorg/mapdb/LongMap;-><init>()V

    .line 45
    iput v2, p0, Lorg/mapdb/LongHashMap;->modCount:I

    .line 62
    invoke-virtual {p0}, Lorg/mapdb/LongHashMap;->hashSaltValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapdb/LongHashMap;->hashSalt:J

    .line 267
    if-ltz p1, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 268
    invoke-static {p1}, Lorg/mapdb/LongHashMap;->calculateCapacity(I)I

    move-result p1

    .line 269
    iput v2, p0, Lorg/mapdb/LongHashMap;->elementCount:I

    .line 270
    invoke-virtual {p0, p1}, Lorg/mapdb/LongHashMap;->newElementArray(I)[Lorg/mapdb/LongHashMap$Entry;

    move-result-object v0

    iput-object v0, p0, Lorg/mapdb/LongHashMap;->elementData:[Lorg/mapdb/LongHashMap$Entry;

    .line 271
    iput p2, p0, Lorg/mapdb/LongHashMap;->loadFactor:F

    .line 272
    invoke-direct {p0}, Lorg/mapdb/LongHashMap;->computeThreshold()V

    .line 276
    return-void

    .line 274
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static calculateCapacity(I)I
    .locals 1
    .param p0, "x"    # I

    .prologue
    const/high16 v0, 0x40000000    # 2.0f

    .line 239
    if-lt p0, v0, :cond_0

    .line 251
    :goto_0
    return v0

    .line 242
    :cond_0
    if-nez p0, :cond_1

    .line 243
    const/16 v0, 0x10

    goto :goto_0

    .line 245
    :cond_1
    add-int/lit8 p0, p0, -0x1

    .line 246
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 247
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 248
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 249
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 250
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 251
    add-int/lit8 v0, p0, 0x1

    goto :goto_0
.end method

.method private computeThreshold()V
    .locals 2

    .prologue
    .line 298
    .local p0, "this":Lorg/mapdb/LongHashMap;, "Lorg/mapdb/LongHashMap<TV;>;"
    iget-object v0, p0, Lorg/mapdb/LongHashMap;->elementData:[Lorg/mapdb/LongHashMap$Entry;

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p0, Lorg/mapdb/LongHashMap;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/mapdb/LongHashMap;->threshold:I

    .line 299
    return-void
.end method

.method public static intHash(I)I
    .locals 2
    .param p0, "h"    # I

    .prologue
    .line 484
    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr p0, v0

    .line 485
    ushr-int/lit8 v0, p0, 0x7

    xor-int/2addr v0, p0

    ushr-int/lit8 v1, p0, 0x4

    xor-int/2addr v0, v1

    return v0
.end method

.method public static longHash(J)I
    .locals 4
    .param p0, "key"    # J

    .prologue
    .line 476
    const/16 v1, 0x20

    ushr-long v2, p0, v1

    xor-long/2addr v2, p0

    long-to-int v0, v2

    .line 477
    .local v0, "h":I
    ushr-int/lit8 v1, v0, 0x14

    ushr-int/lit8 v2, v0, 0xc

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    .line 478
    ushr-int/lit8 v1, v0, 0x7

    xor-int/2addr v1, v0

    ushr-int/lit8 v2, v0, 0x4

    xor-int/2addr v1, v2

    return v1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 286
    .local p0, "this":Lorg/mapdb/LongHashMap;, "Lorg/mapdb/LongHashMap<TV;>;"
    iget v0, p0, Lorg/mapdb/LongHashMap;->elementCount:I

    if-lez v0, :cond_0

    .line 287
    const/4 v0, 0x0

    iput v0, p0, Lorg/mapdb/LongHashMap;->elementCount:I

    .line 288
    iget-object v0, p0, Lorg/mapdb/LongHashMap;->elementData:[Lorg/mapdb/LongHashMap$Entry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 289
    iget v0, p0, Lorg/mapdb/LongHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mapdb/LongHashMap;->modCount:I

    .line 291
    :cond_0
    return-void
.end method

.method createHashedEntry(JII)Lorg/mapdb/LongHashMap$Entry;
    .locals 3
    .param p1, "key"    # J
    .param p3, "index"    # I
    .param p4, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII)",
            "Lorg/mapdb/LongHashMap$Entry",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 378
    .local p0, "this":Lorg/mapdb/LongHashMap;, "Lorg/mapdb/LongHashMap<TV;>;"
    new-instance v0, Lorg/mapdb/LongHashMap$Entry;

    invoke-direct {v0, p1, p2, p4}, Lorg/mapdb/LongHashMap$Entry;-><init>(JI)V

    .line 379
    .local v0, "entry":Lorg/mapdb/LongHashMap$Entry;, "Lorg/mapdb/LongHashMap$Entry<TV;>;"
    iget-object v1, p0, Lorg/mapdb/LongHashMap;->elementData:[Lorg/mapdb/LongHashMap$Entry;

    aget-object v1, v1, p3

    iput-object v1, v0, Lorg/mapdb/LongHashMap$Entry;->next:Lorg/mapdb/LongHashMap$Entry;

    .line 380
    iget-object v1, p0, Lorg/mapdb/LongHashMap;->elementData:[Lorg/mapdb/LongHashMap$Entry;

    aput-object v0, v1, p3

    .line 381
    return-object v0
.end method

.method final findNonNullKeyEntry(JII)Lorg/mapdb/LongHashMap$Entry;
    .locals 5
    .param p1, "key"    # J
    .param p3, "index"    # I
    .param p4, "keyHash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII)",
            "Lorg/mapdb/LongHashMap$Entry",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, "this":Lorg/mapdb/LongHashMap;, "Lorg/mapdb/LongHashMap<TV;>;"
    iget-object v1, p0, Lorg/mapdb/LongHashMap;->elementData:[Lorg/mapdb/LongHashMap$Entry;

    aget-object v0, v1, p3

    .line 326
    .local v0, "m":Lorg/mapdb/LongHashMap$Entry;, "Lorg/mapdb/LongHashMap$Entry<TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lorg/mapdb/LongHashMap$Entry;->origKeyHash:I

    if-ne v1, p4, :cond_0

    iget-wide v2, v0, Lorg/mapdb/LongHashMap$Entry;->key:J

    cmp-long v1, p1, v2

    if-eqz v1, :cond_1

    .line 328
    :cond_0
    iget-object v0, v0, Lorg/mapdb/LongHashMap$Entry;->next:Lorg/mapdb/LongHashMap$Entry;

    goto :goto_0

    .line 330
    :cond_1
    return-object v0
.end method

.method public get(J)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .prologue
    .line 311
    .local p0, "this":Lorg/mapdb/LongHashMap;, "Lorg/mapdb/LongHashMap<TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/LongHashMap;->getEntry(J)Lorg/mapdb/LongHashMap$Entry;

    move-result-object v0

    .line 312
    .local v0, "m":Lorg/mapdb/LongHashMap$Entry;, "Lorg/mapdb/LongHashMap$Entry<TV;>;"
    if-eqz v0, :cond_0

    .line 313
    iget-object v1, v0, Lorg/mapdb/LongHashMap$Entry;->value:Ljava/lang/Object;

    .line 315
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final getEntry(J)Lorg/mapdb/LongHashMap$Entry;
    .locals 5
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/mapdb/LongHashMap$Entry",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, "this":Lorg/mapdb/LongHashMap;, "Lorg/mapdb/LongHashMap<TV;>;"
    iget-wide v2, p0, Lorg/mapdb/LongHashMap;->hashSalt:J

    xor-long/2addr v2, p1

    invoke-static {v2, v3}, Lorg/mapdb/LongHashMap;->longHash(J)I

    move-result v0

    .line 320
    .local v0, "hash":I
    iget-object v2, p0, Lorg/mapdb/LongHashMap;->elementData:[Lorg/mapdb/LongHashMap$Entry;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int v1, v0, v2

    .line 321
    .local v1, "index":I
    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/mapdb/LongHashMap;->findNonNullKeyEntry(JII)Lorg/mapdb/LongHashMap$Entry;

    move-result-object v2

    return-object v2
.end method

.method protected hashSaltValue()J
    .locals 2

    .prologue
    .line 65
    .local p0, "this":Lorg/mapdb/LongHashMap;, "Lorg/mapdb/LongHashMap<TV;>;"
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 344
    .local p0, "this":Lorg/mapdb/LongHashMap;, "Lorg/mapdb/LongHashMap<TV;>;"
    iget v0, p0, Lorg/mapdb/LongHashMap;->elementCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 470
    .local p0, "this":Lorg/mapdb/LongHashMap;, "Lorg/mapdb/LongHashMap<TV;>;"
    new-instance v0, Lorg/mapdb/LongHashMap$EntryIterator;

    invoke-direct {v0, p0}, Lorg/mapdb/LongHashMap$EntryIterator;-><init>(Lorg/mapdb/LongHashMap;)V

    return-object v0
.end method

.method newElementArray(I)[Lorg/mapdb/LongHashMap$Entry;
    .locals 1
    .param p1, "s"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lorg/mapdb/LongHashMap$Entry",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Lorg/mapdb/LongHashMap;, "Lorg/mapdb/LongHashMap<TV;>;"
    new-array v0, p1, [Lorg/mapdb/LongHashMap$Entry;

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
    .line 360
    .local p0, "this":Lorg/mapdb/LongHashMap;, "Lorg/mapdb/LongHashMap<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget-wide v4, p0, Lorg/mapdb/LongHashMap;->hashSalt:J

    xor-long/2addr v4, p1

    invoke-static {v4, v5}, Lorg/mapdb/LongHashMap;->longHash(J)I

    move-result v1

    .line 361
    .local v1, "hash":I
    iget-object v4, p0, Lorg/mapdb/LongHashMap;->elementData:[Lorg/mapdb/LongHashMap$Entry;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    and-int v2, v1, v4

    .line 362
    .local v2, "index":I
    invoke-virtual {p0, p1, p2, v2, v1}, Lorg/mapdb/LongHashMap;->findNonNullKeyEntry(JII)Lorg/mapdb/LongHashMap$Entry;

    move-result-object v0

    .line 363
    .local v0, "entry":Lorg/mapdb/LongHashMap$Entry;, "Lorg/mapdb/LongHashMap$Entry<TV;>;"
    if-nez v0, :cond_0

    .line 364
    iget v4, p0, Lorg/mapdb/LongHashMap;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/mapdb/LongHashMap;->modCount:I

    .line 365
    invoke-virtual {p0, p1, p2, v2, v1}, Lorg/mapdb/LongHashMap;->createHashedEntry(JII)Lorg/mapdb/LongHashMap$Entry;

    move-result-object v0

    .line 366
    iget v4, p0, Lorg/mapdb/LongHashMap;->elementCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/mapdb/LongHashMap;->elementCount:I

    iget v5, p0, Lorg/mapdb/LongHashMap;->threshold:I

    if-le v4, v5, :cond_0

    .line 367
    invoke-virtual {p0}, Lorg/mapdb/LongHashMap;->rehash()V

    .line 371
    :cond_0
    iget-object v3, v0, Lorg/mapdb/LongHashMap$Entry;->value:Ljava/lang/Object;

    .line 372
    .local v3, "result":Ljava/lang/Object;, "TV;"
    iput-object p3, v0, Lorg/mapdb/LongHashMap$Entry;->value:Ljava/lang/Object;

    .line 373
    return-object v3
.end method

.method rehash()V
    .locals 1

    .prologue
    .line 406
    .local p0, "this":Lorg/mapdb/LongHashMap;, "Lorg/mapdb/LongHashMap<TV;>;"
    iget-object v0, p0, Lorg/mapdb/LongHashMap;->elementData:[Lorg/mapdb/LongHashMap$Entry;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/mapdb/LongHashMap;->rehash(I)V

    .line 407
    return-void
.end method

.method rehash(I)V
    .locals 8
    .param p1, "capacity"    # I

    .prologue
    .line 387
    .local p0, "this":Lorg/mapdb/LongHashMap;, "Lorg/mapdb/LongHashMap<TV;>;"
    if-nez p1, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-static {v6}, Lorg/mapdb/LongHashMap;->calculateCapacity(I)I

    move-result v3

    .line 389
    .local v3, "length":I
    invoke-virtual {p0, v3}, Lorg/mapdb/LongHashMap;->newElementArray(I)[Lorg/mapdb/LongHashMap$Entry;

    move-result-object v4

    .line 390
    .local v4, "newData":[Lorg/mapdb/LongHashMap$Entry;, "[Lorg/mapdb/LongHashMap$Entry<TV;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lorg/mapdb/LongHashMap;->elementData:[Lorg/mapdb/LongHashMap$Entry;

    array-length v6, v6

    if-ge v1, v6, :cond_2

    .line 391
    iget-object v6, p0, Lorg/mapdb/LongHashMap;->elementData:[Lorg/mapdb/LongHashMap$Entry;

    aget-object v0, v6, v1

    .line 392
    .local v0, "entry":Lorg/mapdb/LongHashMap$Entry;, "Lorg/mapdb/LongHashMap$Entry<TV;>;"
    iget-object v6, p0, Lorg/mapdb/LongHashMap;->elementData:[Lorg/mapdb/LongHashMap$Entry;

    const/4 v7, 0x0

    aput-object v7, v6, v1

    .line 393
    :goto_2
    if-eqz v0, :cond_1

    .line 394
    iget v6, v0, Lorg/mapdb/LongHashMap$Entry;->origKeyHash:I

    add-int/lit8 v7, v3, -0x1

    and-int v2, v6, v7

    .line 395
    .local v2, "index":I
    iget-object v5, v0, Lorg/mapdb/LongHashMap$Entry;->next:Lorg/mapdb/LongHashMap$Entry;

    .line 396
    .local v5, "next":Lorg/mapdb/LongHashMap$Entry;, "Lorg/mapdb/LongHashMap$Entry<TV;>;"
    aget-object v6, v4, v2

    iput-object v6, v0, Lorg/mapdb/LongHashMap$Entry;->next:Lorg/mapdb/LongHashMap$Entry;

    .line 397
    aput-object v0, v4, v2

    .line 398
    move-object v0, v5

    .line 399
    goto :goto_2

    .line 387
    .end local v0    # "entry":Lorg/mapdb/LongHashMap$Entry;, "Lorg/mapdb/LongHashMap$Entry<TV;>;"
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v3    # "length":I
    .end local v4    # "newData":[Lorg/mapdb/LongHashMap$Entry;, "[Lorg/mapdb/LongHashMap$Entry<TV;>;"
    .end local v5    # "next":Lorg/mapdb/LongHashMap$Entry;, "Lorg/mapdb/LongHashMap$Entry<TV;>;"
    :cond_0
    shl-int/lit8 v6, p1, 0x1

    goto :goto_0

    .line 390
    .restart local v0    # "entry":Lorg/mapdb/LongHashMap$Entry;, "Lorg/mapdb/LongHashMap$Entry<TV;>;"
    .restart local v1    # "i":I
    .restart local v3    # "length":I
    .restart local v4    # "newData":[Lorg/mapdb/LongHashMap$Entry;, "[Lorg/mapdb/LongHashMap$Entry<TV;>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 401
    .end local v0    # "entry":Lorg/mapdb/LongHashMap$Entry;, "Lorg/mapdb/LongHashMap$Entry<TV;>;"
    :cond_2
    iput-object v4, p0, Lorg/mapdb/LongHashMap;->elementData:[Lorg/mapdb/LongHashMap$Entry;

    .line 402
    invoke-direct {p0}, Lorg/mapdb/LongHashMap;->computeThreshold()V

    .line 403
    return-void
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
    .line 419
    .local p0, "this":Lorg/mapdb/LongHashMap;, "Lorg/mapdb/LongHashMap<TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/LongHashMap;->removeEntry(J)Lorg/mapdb/LongHashMap$Entry;

    move-result-object v0

    .line 420
    .local v0, "entry":Lorg/mapdb/LongHashMap$Entry;, "Lorg/mapdb/LongHashMap$Entry<TV;>;"
    if-eqz v0, :cond_0

    .line 421
    iget-object v1, v0, Lorg/mapdb/LongHashMap$Entry;->value:Ljava/lang/Object;

    .line 423
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final removeEntry(J)Lorg/mapdb/LongHashMap$Entry;
    .locals 7
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/mapdb/LongHashMap$Entry",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 428
    .local p0, "this":Lorg/mapdb/LongHashMap;, "Lorg/mapdb/LongHashMap<TV;>;"
    const/4 v2, 0x0

    .line 430
    .local v2, "index":I
    const/4 v3, 0x0

    .line 432
    .local v3, "last":Lorg/mapdb/LongHashMap$Entry;, "Lorg/mapdb/LongHashMap$Entry<TV;>;"
    iget-wide v4, p0, Lorg/mapdb/LongHashMap;->hashSalt:J

    xor-long/2addr v4, p1

    invoke-static {v4, v5}, Lorg/mapdb/LongHashMap;->longHash(J)I

    move-result v1

    .line 433
    .local v1, "hash":I
    iget-object v4, p0, Lorg/mapdb/LongHashMap;->elementData:[Lorg/mapdb/LongHashMap$Entry;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    and-int v2, v1, v4

    .line 434
    iget-object v4, p0, Lorg/mapdb/LongHashMap;->elementData:[Lorg/mapdb/LongHashMap$Entry;

    aget-object v0, v4, v2

    .line 435
    .local v0, "entry":Lorg/mapdb/LongHashMap$Entry;, "Lorg/mapdb/LongHashMap$Entry<TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    iget v4, v0, Lorg/mapdb/LongHashMap$Entry;->origKeyHash:I

    if-ne v4, v1, :cond_0

    iget-wide v4, v0, Lorg/mapdb/LongHashMap$Entry;->key:J

    cmp-long v4, p1, v4

    if-eqz v4, :cond_1

    .line 436
    :cond_0
    move-object v3, v0

    .line 437
    iget-object v0, v0, Lorg/mapdb/LongHashMap$Entry;->next:Lorg/mapdb/LongHashMap$Entry;

    goto :goto_0

    .line 440
    :cond_1
    if-nez v0, :cond_2

    .line 441
    const/4 v0, 0x0

    .line 450
    .end local v0    # "entry":Lorg/mapdb/LongHashMap$Entry;, "Lorg/mapdb/LongHashMap$Entry<TV;>;"
    :goto_1
    return-object v0

    .line 443
    .restart local v0    # "entry":Lorg/mapdb/LongHashMap$Entry;, "Lorg/mapdb/LongHashMap$Entry<TV;>;"
    :cond_2
    if-nez v3, :cond_3

    .line 444
    iget-object v4, p0, Lorg/mapdb/LongHashMap;->elementData:[Lorg/mapdb/LongHashMap$Entry;

    iget-object v5, v0, Lorg/mapdb/LongHashMap$Entry;->next:Lorg/mapdb/LongHashMap$Entry;

    aput-object v5, v4, v2

    .line 448
    :goto_2
    iget v4, p0, Lorg/mapdb/LongHashMap;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/mapdb/LongHashMap;->modCount:I

    .line 449
    iget v4, p0, Lorg/mapdb/LongHashMap;->elementCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/mapdb/LongHashMap;->elementCount:I

    goto :goto_1

    .line 446
    :cond_3
    iget-object v4, v0, Lorg/mapdb/LongHashMap$Entry;->next:Lorg/mapdb/LongHashMap$Entry;

    iput-object v4, v3, Lorg/mapdb/LongHashMap$Entry;->next:Lorg/mapdb/LongHashMap$Entry;

    goto :goto_2
.end method

.method public size()I
    .locals 1

    .prologue
    .line 460
    .local p0, "this":Lorg/mapdb/LongHashMap;, "Lorg/mapdb/LongHashMap<TV;>;"
    iget v0, p0, Lorg/mapdb/LongHashMap;->elementCount:I

    return v0
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
    .line 465
    .local p0, "this":Lorg/mapdb/LongHashMap;, "Lorg/mapdb/LongHashMap<TV;>;"
    new-instance v0, Lorg/mapdb/LongHashMap$ValueIterator;

    invoke-direct {v0, p0}, Lorg/mapdb/LongHashMap$ValueIterator;-><init>(Lorg/mapdb/LongHashMap;)V

    return-object v0
.end method
