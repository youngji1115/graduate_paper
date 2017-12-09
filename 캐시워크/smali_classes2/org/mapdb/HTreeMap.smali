.class public Lorg/mapdb/HTreeMap;
.super Ljava/util/AbstractMap;
.source "HTreeMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Lorg/mapdb/Bind$MapWithModificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapdb/HTreeMap$ExpireRunnable;,
        Lorg/mapdb/HTreeMap$ExpireLinkNode;,
        Lorg/mapdb/HTreeMap$Entry2;,
        Lorg/mapdb/HTreeMap$EntryIterator;,
        Lorg/mapdb/HTreeMap$ValueIterator;,
        Lorg/mapdb/HTreeMap$KeyIterator;,
        Lorg/mapdb/HTreeMap$HashIterator;,
        Lorg/mapdb/HTreeMap$KeySet;,
        Lorg/mapdb/HTreeMap$LinkedNode;
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
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;",
        "Lorg/mapdb/Bind$MapWithModificationListener",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final BUCKET_OVERFLOW:I = 0x4

.field protected static final DIR_SERIALIZER:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<[[J>;"
        }
    .end annotation
.end field

.field protected static final DIV8:I = 0x3

.field protected static final MOD8:I = 0x7


# instance fields
.field protected final LN_SERIALIZER:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<",
            "Lorg/mapdb/HTreeMap$LinkedNode",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final _entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final _keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final _values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field protected final closeLatch:Ljava/util/concurrent/CountDownLatch;

.field protected final closeListener:Ljava/lang/Runnable;

.field protected final counter:Lorg/mapdb/Atomic$Long;

.field protected final engine:Lorg/mapdb/Engine;

.field protected final expire:J

.field protected final expireAccess:J

.field protected final expireAccessFlag:Z

.field protected final expireFlag:Z

.field protected final expireHeads:[J

.field protected final expireMaxSize:J

.field protected final expireMaxSizeFlag:Z

.field protected final expireStoreSize:J

.field protected final expireTails:[J

.field protected final expireTimeStart:J

.field protected final hasValues:Z

.field protected final hashSalt:I

.field protected final hasher:Lorg/mapdb/Hasher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Hasher",
            "<TK;>;"
        }
    .end annotation
.end field

.field protected final keySerializer:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<TK;>;"
        }
    .end annotation
.end field

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

.field protected final segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field protected final segmentRecids:[J

.field protected final valueCreator:Lorg/mapdb/Fun$Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Fun$Function1",
            "<TV;TK;>;"
        }
    .end annotation
.end field

.field protected final valueSerializer:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lorg/mapdb/HTreeMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/mapdb/HTreeMap;->$assertionsDisabled:Z

    .line 151
    new-instance v0, Lorg/mapdb/HTreeMap$3;

    invoke-direct {v0}, Lorg/mapdb/HTreeMap$3;-><init>()V

    sput-object v0, Lorg/mapdb/HTreeMap;->DIR_SERIALIZER:Lorg/mapdb/Serializer;

    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/mapdb/Engine;JI[JLorg/mapdb/Serializer;Lorg/mapdb/Serializer;JJJJJ[J[JLorg/mapdb/Fun$Function1;Lorg/mapdb/Hasher;Z)V
    .locals 8
    .param p1, "engine"    # Lorg/mapdb/Engine;
    .param p2, "counterRecid"    # J
    .param p4, "hashSalt"    # I
    .param p5, "segmentRecids"    # [J
    .param p8, "expireTimeStart"    # J
    .param p10, "expire"    # J
    .param p12, "expireAccess"    # J
    .param p14, "expireMaxSize"    # J
    .param p16, "expireStoreSize"    # J
    .param p18, "expireHeads"    # [J
    .param p19, "expireTails"    # [J
    .param p21, "hasher"    # Lorg/mapdb/Hasher;
    .param p22, "disableLocks"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/Engine;",
            "JI[J",
            "Lorg/mapdb/Serializer",
            "<TK;>;",
            "Lorg/mapdb/Serializer",
            "<TV;>;JJJJJ[J[J",
            "Lorg/mapdb/Fun$Function1",
            "<TV;TK;>;",
            "Lorg/mapdb/Hasher;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    .local p6, "keySerializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TK;>;"
    .local p7, "valueSerializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TV;>;"
    .local p20, "valueCreator":Lorg/mapdb/Fun$Function1;, "Lorg/mapdb/Fun$Function1<TV;TK;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 82
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, p0, Lorg/mapdb/HTreeMap;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    .line 84
    new-instance v4, Lorg/mapdb/HTreeMap$1;

    invoke-direct {v4, p0}, Lorg/mapdb/HTreeMap$1;-><init>(Lorg/mapdb/HTreeMap;)V

    iput-object v4, p0, Lorg/mapdb/HTreeMap;->closeListener:Ljava/lang/Runnable;

    .line 121
    new-instance v4, Lorg/mapdb/HTreeMap$2;

    invoke-direct {v4, p0}, Lorg/mapdb/HTreeMap$2;-><init>(Lorg/mapdb/HTreeMap;)V

    iput-object v4, p0, Lorg/mapdb/HTreeMap;->LN_SERIALIZER:Lorg/mapdb/Serializer;

    .line 213
    const/16 v4, 0x10

    new-array v4, v4, [Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    iput-object v4, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 215
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v4, 0x10

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v5, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 862
    :cond_0
    new-instance v4, Lorg/mapdb/HTreeMap$KeySet;

    invoke-direct {v4, p0}, Lorg/mapdb/HTreeMap$KeySet;-><init>(Lorg/mapdb/HTreeMap;)V

    iput-object v4, p0, Lorg/mapdb/HTreeMap;->_keySet:Ljava/util/Set;

    .line 869
    new-instance v4, Lorg/mapdb/HTreeMap$4;

    invoke-direct {v4, p0}, Lorg/mapdb/HTreeMap$4;-><init>(Lorg/mapdb/HTreeMap;)V

    iput-object v4, p0, Lorg/mapdb/HTreeMap;->_values:Ljava/util/Collection;

    .line 900
    new-instance v4, Lorg/mapdb/HTreeMap$5;

    invoke-direct {v4, p0}, Lorg/mapdb/HTreeMap$5;-><init>(Lorg/mapdb/HTreeMap;)V

    iput-object v4, p0, Lorg/mapdb/HTreeMap;->_entrySet:Ljava/util/Set;

    .line 1664
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lorg/mapdb/HTreeMap;->modListenersLock:Ljava/lang/Object;

    .line 1665
    const/4 v4, 0x0

    new-array v4, v4, [Lorg/mapdb/Bind$MapListener;

    iput-object v4, p0, Lorg/mapdb/HTreeMap;->modListeners:[Lorg/mapdb/Bind$MapListener;

    .line 229
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-gez v4, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 230
    :cond_1
    if-nez p1, :cond_2

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 231
    :cond_2
    if-nez p5, :cond_3

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 232
    :cond_3
    if-nez p6, :cond_4

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 234
    :cond_4
    invoke-static {p6}, Lorg/mapdb/SerializerBase;->assertSerializable(Ljava/lang/Object;)V

    .line 235
    if-eqz p7, :cond_6

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, p0, Lorg/mapdb/HTreeMap;->hasValues:Z

    .line 236
    iget-boolean v4, p0, Lorg/mapdb/HTreeMap;->hasValues:Z

    if-eqz v4, :cond_5

    .line 237
    invoke-static {p7}, Lorg/mapdb/SerializerBase;->assertSerializable(Ljava/lang/Object;)V

    .line 241
    :cond_5
    array-length v4, p5

    const/16 v5, 0x10

    if-eq v4, v5, :cond_7

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 235
    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 243
    :cond_7
    iput-object p1, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    .line 244
    iput p4, p0, Lorg/mapdb/HTreeMap;->hashSalt:I

    .line 245
    const/16 v4, 0x10

    invoke-static {p5, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    iput-object v4, p0, Lorg/mapdb/HTreeMap;->segmentRecids:[J

    .line 246
    iput-object p6, p0, Lorg/mapdb/HTreeMap;->keySerializer:Lorg/mapdb/Serializer;

    .line 247
    iput-object p7, p0, Lorg/mapdb/HTreeMap;->valueSerializer:Lorg/mapdb/Serializer;

    .line 248
    if-eqz p21, :cond_9

    .end local p21    # "hasher":Lorg/mapdb/Hasher;
    :goto_2
    move-object/from16 v0, p21

    iput-object v0, p0, Lorg/mapdb/HTreeMap;->hasher:Lorg/mapdb/Hasher;

    .line 249
    const-wide/16 v4, 0x0

    cmp-long v4, p10, v4

    if-nez v4, :cond_8

    const-wide/16 v4, 0x0

    cmp-long v4, p12, v4

    if-eqz v4, :cond_8

    .line 250
    move-wide/from16 p10, p12

    .line 252
    :cond_8
    const-wide/16 v4, 0x0

    cmp-long v4, p14, v4

    if-eqz v4, :cond_a

    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-nez v4, :cond_a

    .line 253
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "expireMaxSize must have counter enabled"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 248
    .restart local p21    # "hasher":Lorg/mapdb/Hasher;
    :cond_9
    sget-object p21, Lorg/mapdb/Hasher;->BASIC:Lorg/mapdb/Hasher;

    goto :goto_2

    .line 257
    .end local p21    # "hasher":Lorg/mapdb/Hasher;
    :cond_a
    const-wide/16 v4, 0x0

    cmp-long v4, p10, v4

    if-nez v4, :cond_b

    const-wide/16 v4, 0x0

    cmp-long v4, p12, v4

    if-nez v4, :cond_b

    const-wide/16 v4, 0x0

    cmp-long v4, p14, v4

    if-nez v4, :cond_b

    const-wide/16 v4, 0x0

    cmp-long v4, p16, v4

    if-eqz v4, :cond_e

    :cond_b
    const/4 v4, 0x1

    :goto_3
    iput-boolean v4, p0, Lorg/mapdb/HTreeMap;->expireFlag:Z

    .line 258
    move-wide/from16 v0, p10

    iput-wide v0, p0, Lorg/mapdb/HTreeMap;->expire:J

    .line 259
    move-wide/from16 v0, p8

    iput-wide v0, p0, Lorg/mapdb/HTreeMap;->expireTimeStart:J

    .line 260
    const-wide/16 v4, 0x0

    cmp-long v4, p12, v4

    if-nez v4, :cond_c

    const-wide/16 v4, 0x0

    cmp-long v4, p14, v4

    if-nez v4, :cond_c

    const-wide/16 v4, 0x0

    cmp-long v4, p16, v4

    if-eqz v4, :cond_f

    :cond_c
    const/4 v4, 0x1

    :goto_4
    iput-boolean v4, p0, Lorg/mapdb/HTreeMap;->expireAccessFlag:Z

    .line 261
    move-wide/from16 v0, p12

    iput-wide v0, p0, Lorg/mapdb/HTreeMap;->expireAccess:J

    .line 262
    if-nez p18, :cond_10

    const/4 v4, 0x0

    :goto_5
    iput-object v4, p0, Lorg/mapdb/HTreeMap;->expireHeads:[J

    .line 263
    if-nez p19, :cond_11

    const/4 v4, 0x0

    :goto_6
    iput-object v4, p0, Lorg/mapdb/HTreeMap;->expireTails:[J

    .line 264
    const-wide/16 v4, 0x0

    cmp-long v4, p14, v4

    if-eqz v4, :cond_12

    const/4 v4, 0x1

    :goto_7
    iput-boolean v4, p0, Lorg/mapdb/HTreeMap;->expireMaxSizeFlag:Z

    .line 265
    move-wide/from16 v0, p14

    iput-wide v0, p0, Lorg/mapdb/HTreeMap;->expireMaxSize:J

    .line 266
    move-wide/from16 v0, p16

    iput-wide v0, p0, Lorg/mapdb/HTreeMap;->expireStoreSize:J

    .line 267
    move-object/from16 v0, p20

    iput-object v0, p0, Lorg/mapdb/HTreeMap;->valueCreator:Lorg/mapdb/Fun$Function1;

    .line 269
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-eqz v4, :cond_13

    .line 270
    new-instance v4, Lorg/mapdb/Atomic$Long;

    invoke-direct {v4, p1, p2, p3}, Lorg/mapdb/Atomic$Long;-><init>(Lorg/mapdb/Engine;J)V

    iput-object v4, p0, Lorg/mapdb/HTreeMap;->counter:Lorg/mapdb/Atomic$Long;

    .line 271
    iget-object v4, p0, Lorg/mapdb/HTreeMap;->counter:Lorg/mapdb/Atomic$Long;

    invoke-static {p0, v4}, Lorg/mapdb/Bind;->size(Lorg/mapdb/Bind$MapWithModificationListener;Lorg/mapdb/Atomic$Long;)V

    .line 276
    :goto_8
    iget-boolean v4, p0, Lorg/mapdb/HTreeMap;->expireFlag:Z

    if-eqz v4, :cond_d

    .line 277
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lorg/mapdb/HTreeMap$ExpireRunnable;

    invoke-direct {v4, p0}, Lorg/mapdb/HTreeMap$ExpireRunnable;-><init>(Lorg/mapdb/HTreeMap;)V

    const-string v5, "HTreeMap expirator"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 278
    .local v3, "t":Ljava/lang/Thread;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 279
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 281
    iget-object v4, p0, Lorg/mapdb/HTreeMap;->closeListener:Ljava/lang/Runnable;

    invoke-interface {p1, v4}, Lorg/mapdb/Engine;->closeListenerRegister(Ljava/lang/Runnable;)V

    .line 284
    .end local v3    # "t":Ljava/lang/Thread;
    :cond_d
    return-void

    .line 257
    :cond_e
    const/4 v4, 0x0

    goto :goto_3

    .line 260
    :cond_f
    const/4 v4, 0x0

    goto :goto_4

    .line 262
    :cond_10
    const/16 v4, 0x10

    move-object/from16 v0, p18

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    goto :goto_5

    .line 263
    :cond_11
    const/16 v4, 0x10

    move-object/from16 v0, p19

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    goto :goto_6

    .line 264
    :cond_12
    const/4 v4, 0x0

    goto :goto_7

    .line 273
    :cond_13
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/mapdb/HTreeMap;->counter:Lorg/mapdb/Atomic$Long;

    goto :goto_8
.end method

.method protected static preallocateSegments(Lorg/mapdb/Engine;)[J
    .locals 5
    .param p0, "engine"    # Lorg/mapdb/Engine;

    .prologue
    const/16 v4, 0x10

    .line 290
    new-array v1, v4, [J

    .line 291
    .local v1, "ret":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 292
    new-array v2, v4, [[J

    sget-object v3, Lorg/mapdb/HTreeMap;->DIR_SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {p0, v2, v3}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_0
    return-object v1
.end method

.method private putInner(Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 43
    .param p3, "h"    # I
    .param p4, "segment"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;II)TV;"
        }
    .end annotation

    .prologue
    .line 496
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/HTreeMap;->segmentRecids:[J

    aget-wide v26, v6, p4

    .line 498
    .local v26, "dirRecid":J
    const/16 v25, 0x3

    .line 500
    .local v25, "level":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    sget-object v8, Lorg/mapdb/HTreeMap;->DIR_SERIALIZER:Lorg/mapdb/Serializer;

    move-wide/from16 v0, v26

    invoke-interface {v6, v0, v1, v8}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [[J

    .line 501
    .local v24, "dir":[[J
    mul-int/lit8 v6, v25, 0x7

    ushr-int v6, p3, v6

    and-int/lit8 v42, v6, 0x7f

    .line 502
    .local v42, "slot":I
    sget-boolean v6, Lorg/mapdb/HTreeMap;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    const/16 v6, 0x7f

    move/from16 v0, v42

    if-le v0, v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 504
    :cond_0
    if-nez v24, :cond_1

    .line 506
    const/16 v6, 0x10

    new-array v0, v6, [[J

    move-object/from16 v24, v0

    .line 509
    :cond_1
    ushr-int/lit8 v6, v42, 0x3

    aget-object v6, v24, v6

    if-nez v6, :cond_2

    .line 510
    const/16 v6, 0x10

    move-object/from16 v0, v24

    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v24

    .end local v24    # "dir":[[J
    check-cast v24, [[J

    .line 511
    .restart local v24    # "dir":[[J
    ushr-int/lit8 v6, v42, 0x3

    const/16 v8, 0x8

    new-array v8, v8, [J

    aput-object v8, v24, v6

    .line 514
    :cond_2
    const/4 v4, 0x0

    .line 515
    .local v4, "counter":I
    ushr-int/lit8 v6, v42, 0x3

    aget-object v6, v24, v6

    and-int/lit8 v8, v42, 0x7

    aget-wide v18, v6, v8

    .line 517
    .local v18, "recid":J
    const-wide/16 v8, 0x0

    cmp-long v6, v18, v8

    if-eqz v6, :cond_7

    .line 518
    const-wide/16 v8, 0x1

    and-long v8, v8, v18

    const-wide/16 v16, 0x0

    cmp-long v6, v8, v16

    if-nez v6, :cond_3

    .line 519
    const/4 v6, 0x1

    ushr-long v26, v18, v6

    .line 520
    add-int/lit8 v25, v25, -0x1

    .line 521
    goto :goto_0

    .line 523
    :cond_3
    const/4 v6, 0x1

    ushr-long v18, v18, v6

    .line 526
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/mapdb/HTreeMap;->LN_SERIALIZER:Lorg/mapdb/Serializer;

    move-wide/from16 v0, v18

    invoke-interface {v6, v0, v1, v8}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapdb/HTreeMap$LinkedNode;

    .local v5, "ln":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    move-object/from16 v28, v5

    .line 528
    .end local v5    # "ln":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    .local v28, "ln":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    :goto_1
    if-eqz v28, :cond_7

    .line 529
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/HTreeMap;->hasher:Lorg/mapdb/Hasher;

    move-object/from16 v0, v28

    iget-object v8, v0, Lorg/mapdb/HTreeMap$LinkedNode;->key:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-interface {v6, v8, v0}, Lorg/mapdb/Hasher;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 531
    move-object/from16 v0, v28

    iget-object v0, v0, Lorg/mapdb/HTreeMap$LinkedNode;->value:Ljava/lang/Object;

    move-object/from16 v31, v0

    .line 532
    .local v31, "oldVal":Ljava/lang/Object;, "TV;"
    new-instance v5, Lorg/mapdb/HTreeMap$LinkedNode;

    move-object/from16 v0, v28

    iget-wide v6, v0, Lorg/mapdb/HTreeMap$LinkedNode;->next:J

    move-object/from16 v0, v28

    iget-wide v8, v0, Lorg/mapdb/HTreeMap$LinkedNode;->expireLinkNodeRecid:J

    move-object/from16 v0, v28

    iget-object v10, v0, Lorg/mapdb/HTreeMap$LinkedNode;->key:Ljava/lang/Object;

    move-object/from16 v11, p2

    invoke-direct/range {v5 .. v11}, Lorg/mapdb/HTreeMap$LinkedNode;-><init>(JJLjava/lang/Object;Ljava/lang/Object;)V

    .line 533
    .end local v28    # "ln":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    .restart local v5    # "ln":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/mapdb/HTreeMap;->LN_SERIALIZER:Lorg/mapdb/Serializer;

    move-wide/from16 v0, v18

    invoke-interface {v6, v0, v1, v5, v8}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 534
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/mapdb/HTreeMap;->expireFlag:Z

    if-eqz v6, :cond_4

    iget-wide v8, v5, Lorg/mapdb/HTreeMap$LinkedNode;->expireLinkNodeRecid:J

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1, v8, v9, v6}, Lorg/mapdb/HTreeMap;->expireLinkBump(IJZ)V

    .line 535
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/HTreeMap;->notify(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 596
    .end local v5    # "ln":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    .end local v31    # "oldVal":Ljava/lang/Object;, "TV;"
    :goto_2
    return-object v31

    .line 538
    .restart local v28    # "ln":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    :cond_5
    move-object/from16 v0, v28

    iget-wide v0, v0, Lorg/mapdb/HTreeMap$LinkedNode;->next:J

    move-wide/from16 v18, v0

    .line 539
    const-wide/16 v8, 0x0

    cmp-long v6, v18, v8

    if-nez v6, :cond_6

    const/4 v5, 0x0

    .line 540
    .end local v28    # "ln":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    .restart local v5    # "ln":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v28, v5

    .end local v5    # "ln":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    .restart local v28    # "ln":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    goto :goto_1

    .line 539
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/mapdb/HTreeMap;->LN_SERIALIZER:Lorg/mapdb/Serializer;

    move-wide/from16 v0, v18

    invoke-interface {v6, v0, v1, v8}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mapdb/HTreeMap$LinkedNode;

    move-object v5, v6

    goto :goto_3

    .end local v28    # "ln":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    :cond_7
    move-wide/from16 v40, v18

    .line 547
    .end local v18    # "recid":J
    .local v40, "recid":J
    const/4 v6, 0x4

    if-lt v4, v6, :cond_c

    const/4 v6, 0x1

    move/from16 v0, v25

    if-lt v0, v6, :cond_c

    .line 548
    const/16 v6, 0x10

    new-array v0, v6, [[J

    move-object/from16 v30, v0

    .line 551
    .local v30, "nextDir":[[J
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/mapdb/HTreeMap;->expireFlag:Z

    if-eqz v6, :cond_a

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    invoke-interface {v6}, Lorg/mapdb/Engine;->preallocate()J

    move-result-wide v10

    .line 552
    .local v10, "expireNodeRecid":J
    :goto_4
    new-instance v7, Lorg/mapdb/HTreeMap$LinkedNode;

    const-wide/16 v8, 0x0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-direct/range {v7 .. v13}, Lorg/mapdb/HTreeMap$LinkedNode;-><init>(JJLjava/lang/Object;Ljava/lang/Object;)V

    .line 553
    .local v7, "node":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/mapdb/HTreeMap;->LN_SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v6, v7, v8}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v12

    .line 555
    .local v12, "newRecid":J
    add-int/lit8 v6, v25, -0x1

    mul-int/lit8 v6, v6, 0x7

    ushr-int v6, p3, v6

    and-int/lit8 v39, v6, 0x7f

    .line 556
    .local v39, "pos":I
    ushr-int/lit8 v6, v39, 0x3

    const/16 v8, 0x8

    new-array v8, v8, [J

    aput-object v8, v30, v6

    .line 557
    ushr-int/lit8 v6, v39, 0x3

    aget-object v6, v30, v6

    and-int/lit8 v8, v39, 0x7

    const/4 v9, 0x1

    shl-long v16, v12, v9

    const-wide/16 v20, 0x1

    or-long v16, v16, v20

    aput-wide v16, v6, v8

    .line 558
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/mapdb/HTreeMap;->expireFlag:Z

    if-eqz v6, :cond_8

    move-object/from16 v8, p0

    move/from16 v9, p4

    move/from16 v14, p3

    invoke-virtual/range {v8 .. v14}, Lorg/mapdb/HTreeMap;->expireLinkAdd(IJJI)V

    .line 563
    :cond_8
    ushr-int/lit8 v6, v42, 0x3

    aget-object v6, v24, v6

    and-int/lit8 v8, v42, 0x7

    aget-wide v8, v6, v8

    const/4 v6, 0x1

    ushr-long v36, v8, v6

    .line 564
    .local v36, "nodeRecid":J
    :goto_5
    const-wide/16 v8, 0x0

    cmp-long v6, v36, v8

    if-eqz v6, :cond_b

    .line 565
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/mapdb/HTreeMap;->LN_SERIALIZER:Lorg/mapdb/Serializer;

    move-wide/from16 v0, v36

    invoke-interface {v6, v0, v1, v8}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/mapdb/HTreeMap$LinkedNode;

    .line 566
    .local v29, "n":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    move-object/from16 v0, v29

    iget-wide v0, v0, Lorg/mapdb/HTreeMap$LinkedNode;->next:J

    move-wide/from16 v34, v0

    .line 567
    .local v34, "nextRecid":J
    move-object/from16 v0, v29

    iget-object v6, v0, Lorg/mapdb/HTreeMap$LinkedNode;->key:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/mapdb/HTreeMap;->hash(Ljava/lang/Object;)I

    move-result v6

    add-int/lit8 v8, v25, -0x1

    mul-int/lit8 v8, v8, 0x7

    ushr-int/2addr v6, v8

    and-int/lit8 v39, v6, 0x7f

    .line 568
    ushr-int/lit8 v6, v39, 0x3

    aget-object v6, v30, v6

    if-nez v6, :cond_9

    ushr-int/lit8 v6, v39, 0x3

    const/16 v8, 0x8

    new-array v8, v8, [J

    aput-object v8, v30, v6

    .line 569
    :cond_9
    new-instance v15, Lorg/mapdb/HTreeMap$LinkedNode;

    ushr-int/lit8 v6, v39, 0x3

    aget-object v6, v30, v6

    and-int/lit8 v8, v39, 0x7

    aget-wide v8, v6, v8

    const/4 v6, 0x1

    ushr-long v16, v8, v6

    move-object/from16 v0, v29

    iget-wide v0, v0, Lorg/mapdb/HTreeMap$LinkedNode;->expireLinkNodeRecid:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/mapdb/HTreeMap$LinkedNode;->key:Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lorg/mapdb/HTreeMap$LinkedNode;->value:Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-direct/range {v15 .. v21}, Lorg/mapdb/HTreeMap$LinkedNode;-><init>(JJLjava/lang/Object;Ljava/lang/Object;)V

    .line 570
    .end local v29    # "n":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    .local v15, "n":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    ushr-int/lit8 v6, v39, 0x3

    aget-object v6, v30, v6

    and-int/lit8 v8, v39, 0x7

    const/4 v9, 0x1

    shl-long v16, v36, v9

    const-wide/16 v20, 0x1

    or-long v16, v16, v20

    aput-wide v16, v6, v8

    .line 571
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/mapdb/HTreeMap;->LN_SERIALIZER:Lorg/mapdb/Serializer;

    move-wide/from16 v0, v36

    invoke-interface {v6, v0, v1, v15, v8}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 572
    move-wide/from16 v36, v34

    .line 573
    goto :goto_5

    .line 551
    .end local v7    # "node":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    .end local v10    # "expireNodeRecid":J
    .end local v12    # "newRecid":J
    .end local v15    # "n":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    .end local v34    # "nextRecid":J
    .end local v36    # "nodeRecid":J
    .end local v39    # "pos":I
    :cond_a
    const-wide/16 v10, 0x0

    goto/16 :goto_4

    .line 576
    .restart local v7    # "node":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    .restart local v10    # "expireNodeRecid":J
    .restart local v12    # "newRecid":J
    .restart local v36    # "nodeRecid":J
    .restart local v39    # "pos":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    sget-object v8, Lorg/mapdb/HTreeMap;->DIR_SERIALIZER:Lorg/mapdb/Serializer;

    move-object/from16 v0, v30

    invoke-interface {v6, v0, v8}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v32

    .line 577
    .local v32, "nextDirRecid":J
    mul-int/lit8 v6, v25, 0x7

    ushr-int v6, p3, v6

    and-int/lit8 v38, v6, 0x7f

    .line 578
    .local v38, "parentPos":I
    const/16 v6, 0x10

    move-object/from16 v0, v24

    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v24

    .end local v24    # "dir":[[J
    check-cast v24, [[J

    .line 579
    .restart local v24    # "dir":[[J
    ushr-int/lit8 v6, v38, 0x3

    ushr-int/lit8 v8, v38, 0x3

    aget-object v8, v24, v8

    const/16 v9, 0x8

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v8

    aput-object v8, v24, v6

    .line 580
    ushr-int/lit8 v6, v38, 0x3

    aget-object v6, v24, v6

    and-int/lit8 v8, v38, 0x7

    const/4 v9, 0x1

    shl-long v16, v32, v9

    const-wide/16 v20, 0x0

    or-long v16, v16, v20

    aput-wide v16, v6, v8

    .line 581
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    sget-object v8, Lorg/mapdb/HTreeMap;->DIR_SERIALIZER:Lorg/mapdb/Serializer;

    move-wide/from16 v0, v26

    move-object/from16 v2, v24

    invoke-interface {v6, v0, v1, v2, v8}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 582
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v6, v2}, Lorg/mapdb/HTreeMap;->notify(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 583
    const/16 v31, 0x0

    move-wide/from16 v18, v40

    .end local v40    # "recid":J
    .restart local v18    # "recid":J
    goto/16 :goto_2

    .line 586
    .end local v7    # "node":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    .end local v10    # "expireNodeRecid":J
    .end local v12    # "newRecid":J
    .end local v18    # "recid":J
    .end local v30    # "nextDir":[[J
    .end local v32    # "nextDirRecid":J
    .end local v36    # "nodeRecid":J
    .end local v38    # "parentPos":I
    .end local v39    # "pos":I
    .restart local v40    # "recid":J
    :cond_c
    ushr-int/lit8 v6, v42, 0x3

    aget-object v6, v24, v6

    and-int/lit8 v8, v42, 0x7

    aget-wide v8, v6, v8

    const/4 v6, 0x1

    ushr-long v18, v8, v6

    .line 587
    .end local v40    # "recid":J
    .restart local v18    # "recid":J
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/mapdb/HTreeMap;->expireFlag:Z

    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    sget-object v8, Lorg/mapdb/HTreeMap$ExpireLinkNode;->EMPTY:Lorg/mapdb/HTreeMap$ExpireLinkNode;

    sget-object v9, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v6, v8, v9}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v10

    .line 589
    .restart local v10    # "expireNodeRecid":J
    :goto_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    new-instance v17, Lorg/mapdb/HTreeMap$LinkedNode;

    move-wide/from16 v20, v10

    move-object/from16 v22, p1

    move-object/from16 v23, p2

    invoke-direct/range {v17 .. v23}, Lorg/mapdb/HTreeMap$LinkedNode;-><init>(JJLjava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/mapdb/HTreeMap;->LN_SERIALIZER:Lorg/mapdb/Serializer;

    move-object/from16 v0, v17

    invoke-interface {v6, v0, v8}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v12

    .line 590
    .restart local v12    # "newRecid":J
    const/16 v6, 0x10

    move-object/from16 v0, v24

    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v24

    .end local v24    # "dir":[[J
    check-cast v24, [[J

    .line 591
    .restart local v24    # "dir":[[J
    ushr-int/lit8 v6, v42, 0x3

    ushr-int/lit8 v8, v42, 0x3

    aget-object v8, v24, v8

    const/16 v9, 0x8

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v8

    aput-object v8, v24, v6

    .line 592
    ushr-int/lit8 v6, v42, 0x3

    aget-object v6, v24, v6

    and-int/lit8 v8, v42, 0x7

    const/4 v9, 0x1

    shl-long v16, v12, v9

    const-wide/16 v20, 0x1

    or-long v16, v16, v20

    aput-wide v16, v6, v8

    .line 593
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    sget-object v8, Lorg/mapdb/HTreeMap;->DIR_SERIALIZER:Lorg/mapdb/Serializer;

    move-wide/from16 v0, v26

    move-object/from16 v2, v24

    invoke-interface {v6, v0, v1, v2, v8}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 594
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/mapdb/HTreeMap;->expireFlag:Z

    if-eqz v6, :cond_d

    move-object/from16 v8, p0

    move/from16 v9, p4

    move/from16 v14, p3

    invoke-virtual/range {v8 .. v14}, Lorg/mapdb/HTreeMap;->expireLinkAdd(IJJI)V

    .line 595
    :cond_d
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v6, v2}, Lorg/mapdb/HTreeMap;->notify(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 596
    const/16 v31, 0x0

    goto/16 :goto_2

    .line 587
    .end local v10    # "expireNodeRecid":J
    .end local v12    # "newRecid":J
    :cond_e
    const-wide/16 v10, 0x0

    goto :goto_6
.end method

.method private recursiveDirClear(J)V
    .locals 19
    .param p1, "dirRecid"    # J

    .prologue
    .line 761
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    sget-object v14, Lorg/mapdb/HTreeMap;->DIR_SERIALIZER:Lorg/mapdb/Serializer;

    move-wide/from16 v0, p1

    invoke-interface {v13, v0, v1, v14}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[J

    .line 762
    .local v4, "dir":[[J
    if-nez v4, :cond_1

    .line 786
    :cond_0
    return-void

    .line 763
    :cond_1
    move-object v2, v4

    .local v2, "arr$":[[J
    array-length v7, v2

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v6, v5

    .end local v2    # "arr$":[[J
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v12, v2, v6

    .line 764
    .local v12, "subdir":[J
    if-nez v12, :cond_3

    .line 763
    .end local v6    # "i$":I
    :cond_2
    add-int/lit8 v5, v6, 0x1

    .restart local v5    # "i$":I
    move v6, v5

    .end local v5    # "i$":I
    .restart local v6    # "i$":I
    goto :goto_0

    .line 765
    :cond_3
    move-object v3, v12

    .local v3, "arr$":[J
    array-length v8, v3

    .local v8, "len$":I
    const/4 v5, 0x0

    .end local v6    # "i$":I
    .restart local v5    # "i$":I
    :goto_1
    if-ge v5, v8, :cond_2

    aget-wide v10, v3, v5

    .line 766
    .local v10, "recid":J
    const-wide/16 v14, 0x0

    cmp-long v13, v10, v14

    if-nez v13, :cond_5

    .line 765
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 767
    :cond_5
    const-wide/16 v14, 0x1

    and-long/2addr v14, v10

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_6

    .line 769
    const/4 v13, 0x1

    ushr-long/2addr v10, v13

    .line 771
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lorg/mapdb/HTreeMap;->recursiveDirClear(J)V

    .line 772
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    sget-object v14, Lorg/mapdb/HTreeMap;->DIR_SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v13, v10, v11, v14}, Lorg/mapdb/Engine;->delete(JLorg/mapdb/Serializer;)V

    goto :goto_2

    .line 775
    :cond_6
    const/4 v13, 0x1

    ushr-long/2addr v10, v13

    .line 776
    :goto_3
    const-wide/16 v14, 0x0

    cmp-long v13, v10, v14

    if-eqz v13, :cond_4

    .line 777
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapdb/HTreeMap;->LN_SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v13, v10, v11, v14}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/mapdb/HTreeMap$LinkedNode;

    .line 778
    .local v9, "n":Lorg/mapdb/HTreeMap$LinkedNode;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapdb/HTreeMap;->LN_SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v13, v10, v11, v14}, Lorg/mapdb/Engine;->delete(JLorg/mapdb/Serializer;)V

    .line 779
    iget-object v13, v9, Lorg/mapdb/HTreeMap$LinkedNode;->key:Ljava/lang/Object;

    iget-object v14, v9, Lorg/mapdb/HTreeMap$LinkedNode;->value:Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lorg/mapdb/HTreeMap;->notify(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 780
    iget-wide v10, v9, Lorg/mapdb/HTreeMap$LinkedNode;->next:J

    .line 781
    goto :goto_3
.end method

.method private recursiveDirCount(J)J
    .locals 23
    .param p1, "dirRecid"    # J

    .prologue
    .line 336
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v17, v0

    sget-object v18, Lorg/mapdb/HTreeMap;->DIR_SERIALIZER:Lorg/mapdb/Serializer;

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    move-object/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[J

    .line 337
    .local v8, "dir":[[J
    const-wide/16 v6, 0x0

    .line 338
    .local v6, "counter":J
    move-object v4, v8

    .local v4, "arr$":[[J
    array-length v11, v4

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    move v10, v9

    .end local v4    # "arr$":[[J
    .end local v9    # "i$":I
    .end local v11    # "len$":I
    .local v10, "i$":I
    :goto_0
    if-ge v10, v11, :cond_6

    aget-object v16, v4, v10

    .line 339
    .local v16, "subdir":[J
    if-nez v16, :cond_1

    .line 338
    .end local v10    # "i$":I
    :cond_0
    add-int/lit8 v9, v10, 0x1

    .restart local v9    # "i$":I
    move v10, v9

    .end local v9    # "i$":I
    .restart local v10    # "i$":I
    goto :goto_0

    .line 340
    :cond_1
    move-object/from16 v5, v16

    .local v5, "arr$":[J
    array-length v12, v5

    .local v12, "len$":I
    const/4 v9, 0x0

    .end local v10    # "i$":I
    .restart local v9    # "i$":I
    :goto_1
    if-ge v9, v12, :cond_0

    aget-wide v14, v5, v9

    .line 341
    .local v14, "recid":J
    const-wide/16 v18, 0x0

    cmp-long v17, v14, v18

    if-nez v17, :cond_3

    .line 340
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 342
    :cond_3
    const-wide/16 v18, 0x1

    and-long v18, v18, v14

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-nez v17, :cond_4

    .line 344
    const/16 v17, 0x1

    ushr-long v14, v14, v17

    .line 345
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/mapdb/HTreeMap;->recursiveDirCount(J)J

    move-result-wide v18

    add-long v6, v6, v18

    goto :goto_2

    .line 348
    :cond_4
    const/16 v17, 0x1

    ushr-long v14, v14, v17

    .line 349
    :goto_3
    const-wide/16 v18, 0x0

    cmp-long v17, v14, v18

    if-eqz v17, :cond_2

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/HTreeMap;->LN_SERIALIZER:Lorg/mapdb/Serializer;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v14, v15, v1}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/mapdb/HTreeMap$LinkedNode;

    .line 351
    .local v13, "n":Lorg/mapdb/HTreeMap$LinkedNode;
    if-eqz v13, :cond_5

    .line 352
    const-wide/16 v18, 0x1

    add-long v6, v6, v18

    .line 353
    iget-wide v14, v13, Lorg/mapdb/HTreeMap$LinkedNode;->next:J

    goto :goto_3

    .line 355
    :cond_5
    const-wide/16 v14, 0x0

    goto :goto_3

    .line 361
    .end local v5    # "arr$":[J
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "n":Lorg/mapdb/HTreeMap$LinkedNode;
    .end local v14    # "recid":J
    .end local v16    # "subdir":[J
    .restart local v10    # "i$":I
    :cond_6
    return-wide v6
.end method

.method private recursiveDirDelete(II[J[[JI)V
    .locals 15
    .param p1, "h"    # I
    .param p2, "level"    # I
    .param p3, "dirRecids"    # [J
    .param p4, "dir"    # [[J
    .param p5, "slot"    # I

    .prologue
    .line 699
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    const/16 v2, 0x10

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p4

    .end local p4    # "dir":[[J
    check-cast p4, [[J

    .line 700
    .restart local p4    # "dir":[[J
    ushr-int/lit8 v2, p5, 0x3

    ushr-int/lit8 v3, p5, 0x3

    aget-object v3, p4, v3

    const/16 v4, 0x8

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    aput-object v3, p4, v2

    .line 701
    ushr-int/lit8 v2, p5, 0x3

    aget-object v2, p4, v2

    and-int/lit8 v3, p5, 0x7

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    .line 703
    const/4 v8, 0x1

    .line 704
    .local v8, "allZero":Z
    ushr-int/lit8 v2, p5, 0x3

    aget-object v9, p4, v2

    .local v9, "arr$":[J
    array-length v11, v9

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v11, :cond_0

    aget-wide v12, v9, v10

    .line 705
    .local v12, "l":J
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-eqz v2, :cond_3

    .line 706
    const/4 v8, 0x0

    .line 710
    .end local v12    # "l":J
    :cond_0
    if-eqz v8, :cond_1

    .line 711
    ushr-int/lit8 v2, p5, 0x3

    const/4 v3, 0x0

    aput-object v3, p4, v2

    .line 713
    :cond_1
    const/4 v8, 0x1

    .line 714
    move-object/from16 v9, p4

    .local v9, "arr$":[[J
    array-length v11, v9

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v11, :cond_2

    aget-object v12, v9, v10

    .line 715
    .local v12, "l":[J
    if-eqz v12, :cond_4

    .line 716
    const/4 v8, 0x0

    .line 721
    .end local v12    # "l":[J
    :cond_2
    if-eqz v8, :cond_6

    .line 723
    const/4 v2, 0x3

    move/from16 v0, p2

    if-ne v0, v2, :cond_5

    .line 725
    iget-object v2, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    aget-wide v4, p3, p2

    const/16 v3, 0x10

    new-array v3, v3, [[J

    sget-object v14, Lorg/mapdb/HTreeMap;->DIR_SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v2, v4, v5, v3, v14}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 739
    :goto_2
    return-void

    .line 704
    .local v9, "arr$":[J
    .local v12, "l":J
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 714
    .local v9, "arr$":[[J
    .local v12, "l":[J
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 727
    .end local v12    # "l":[J
    :cond_5
    iget-object v2, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    aget-wide v4, p3, p2

    sget-object v3, Lorg/mapdb/HTreeMap;->DIR_SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v2, v4, v5, v3}, Lorg/mapdb/Engine;->delete(JLorg/mapdb/Serializer;)V

    .line 729
    iget-object v2, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    add-int/lit8 v3, p2, 0x1

    aget-wide v4, p3, v3

    sget-object v3, Lorg/mapdb/HTreeMap;->DIR_SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v2, v4, v5, v3}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[J

    .line 730
    .local v6, "parentDir":[[J
    add-int/lit8 v2, p2, 0x1

    mul-int/lit8 v2, v2, 0x7

    ushr-int v2, p1, v2

    and-int/lit8 v7, v2, 0x7f

    .line 731
    .local v7, "parentPos":I
    add-int/lit8 v4, p2, 0x1

    move-object v2, p0

    move/from16 v3, p1

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v7}, Lorg/mapdb/HTreeMap;->recursiveDirDelete(II[J[[JI)V

    goto :goto_2

    .line 737
    .end local v6    # "parentDir":[[J
    .end local v7    # "parentPos":I
    :cond_6
    iget-object v2, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    aget-wide v4, p3, p2

    sget-object v3, Lorg/mapdb/HTreeMap;->DIR_SERIALIZER:Lorg/mapdb/Serializer;

    move-object/from16 v0, p4

    invoke-interface {v2, v4, v5, v0, v3}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    goto :goto_2
.end method


# virtual methods
.method public clear()V
    .locals 7

    .prologue
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    const/16 v6, 0x10

    .line 743
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_2

    .line 744
    :try_start_0
    iget-object v3, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 746
    iget-object v3, p0, Lorg/mapdb/HTreeMap;->segmentRecids:[J

    aget-wide v0, v3, v2

    .line 747
    .local v0, "dirRecid":J
    invoke-direct {p0, v0, v1}, Lorg/mapdb/HTreeMap;->recursiveDirClear(J)V

    .line 750
    iget-object v3, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    const/16 v4, 0x10

    new-array v4, v4, [[J

    sget-object v5, Lorg/mapdb/HTreeMap;->DIR_SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v3, v0, v1, v4, v5}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 752
    iget-boolean v3, p0, Lorg/mapdb/HTreeMap;->expireFlag:Z

    if-eqz v3, :cond_1

    .line 753
    :cond_0
    invoke-virtual {p0, v2}, Lorg/mapdb/HTreeMap;->expireLinkRemoveLast(I)Lorg/mapdb/HTreeMap$ExpireLinkNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_0

    .line 756
    :cond_1
    iget-object v3, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 743
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 756
    .end local v0    # "dirRecid":J
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v3

    .line 758
    :cond_2
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 1701
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    invoke-interface {v0}, Lorg/mapdb/Engine;->close()V

    .line 1702
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 300
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/mapdb/HTreeMap;->getPeek(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 791
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/mapdb/HTreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 792
    .local v1, "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 794
    .end local v1    # "v":Ljava/lang/Object;, "TV;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
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
    .line 957
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/mapdb/HTreeMap;->_entrySet:Ljava/util/Set;

    return-object v0
.end method

.method protected expireCheckSegment(I)V
    .locals 12
    .param p1, "segment"    # I

    .prologue
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    const-wide/16 v10, 0x0

    .line 1629
    iget-object v1, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v6, p0, Lorg/mapdb/HTreeMap;->expireTails:[J

    aget-wide v6, v6, p1

    sget-object v8, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v1, v6, v7, v8}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1630
    .local v2, "current":J
    cmp-long v1, v2, v10

    if-nez v1, :cond_0

    .line 1631
    iget-object v1, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v6, p0, Lorg/mapdb/HTreeMap;->expireHeads:[J

    aget-wide v6, v6, p1

    sget-object v8, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v1, v6, v7, v8}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v6, v10

    if-eqz v1, :cond_3

    .line 1632
    new-instance v1, Ljava/lang/AssertionError;

    const-string v6, "head not 0"

    invoke-direct {v1, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1636
    :cond_0
    const-wide/16 v4, 0x0

    .line 1637
    .local v4, "prev":J
    :goto_0
    cmp-long v1, v2, v10

    if-eqz v1, :cond_2

    .line 1638
    iget-object v1, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    sget-object v6, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v1, v2, v3, v6}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/HTreeMap$ExpireLinkNode;

    .line 1639
    .local v0, "curr":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    sget-boolean v1, Lorg/mapdb/HTreeMap;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-wide v6, v0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->prev:J

    cmp-long v1, v6, v4

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wrong prev "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->prev:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1640
    :cond_1
    move-wide v4, v2

    .line 1641
    iget-wide v2, v0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->next:J

    .line 1642
    goto :goto_0

    .line 1643
    .end local v0    # "curr":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    :cond_2
    iget-object v1, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v6, p0, Lorg/mapdb/HTreeMap;->expireHeads:[J

    aget-wide v6, v6, p1

    sget-object v8, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v1, v6, v7, v8}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-eqz v1, :cond_3

    .line 1644
    new-instance v1, Ljava/lang/AssertionError;

    const-string v6, "wrong head"

    invoke-direct {v1, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1646
    .end local v4    # "prev":J
    :cond_3
    return-void
.end method

.method protected expireLinkAdd(IJJI)V
    .locals 12
    .param p1, "segment"    # I
    .param p2, "expireNodeRecid"    # J
    .param p4, "keyRecid"    # J
    .param p6, "hash"    # I

    .prologue
    .line 1330
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    sget-boolean v4, Lorg/mapdb/HTreeMap;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->isHeldByCurrentThread()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1331
    :cond_0
    sget-boolean v4, Lorg/mapdb/HTreeMap;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-gtz v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1332
    :cond_1
    sget-boolean v4, Lorg/mapdb/HTreeMap;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v4, p4, v4

    if-gtz v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1334
    :cond_2
    iget-wide v4, p0, Lorg/mapdb/HTreeMap;->expire:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    const-wide/16 v8, 0x0

    .line 1335
    .local v8, "time":J
    :goto_0
    iget-object v4, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v5, p0, Lorg/mapdb/HTreeMap;->expireHeads:[J

    aget-wide v6, v5, p1

    sget-object v5, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v4, v6, v7, v5}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1336
    .local v2, "head":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_4

    .line 1338
    new-instance v1, Lorg/mapdb/HTreeMap$ExpireLinkNode;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-wide/from16 v6, p4

    move/from16 v10, p6

    invoke-direct/range {v1 .. v10}, Lorg/mapdb/HTreeMap$ExpireLinkNode;-><init>(JJJJI)V

    .line 1339
    .end local v2    # "head":J
    .local v1, "n":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    iget-object v4, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    sget-object v5, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v4, p2, p3, v1, v5}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 1340
    iget-object v4, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v5, p0, Lorg/mapdb/HTreeMap;->expireHeads:[J

    aget-wide v6, v5, p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v10, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v4, v6, v7, v5, v10}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 1341
    iget-object v4, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v5, p0, Lorg/mapdb/HTreeMap;->expireTails:[J

    aget-wide v6, v5, p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v10, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v4, v6, v7, v5, v10}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 1355
    :goto_1
    return-void

    .line 1334
    .end local v1    # "n":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    .end local v8    # "time":J
    :cond_3
    iget-wide v4, p0, Lorg/mapdb/HTreeMap;->expire:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v4, v6

    iget-wide v6, p0, Lorg/mapdb/HTreeMap;->expireTimeStart:J

    sub-long v8, v4, v6

    goto :goto_0

    .line 1344
    .restart local v2    # "head":J
    .restart local v8    # "time":J
    :cond_4
    new-instance v1, Lorg/mapdb/HTreeMap$ExpireLinkNode;

    const-wide/16 v4, 0x0

    move-wide/from16 v6, p4

    move/from16 v10, p6

    invoke-direct/range {v1 .. v10}, Lorg/mapdb/HTreeMap$ExpireLinkNode;-><init>(JJJJI)V

    .line 1345
    .restart local v1    # "n":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    iget-object v4, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    sget-object v5, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v4, p2, p3, v1, v5}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 1348
    iget-object v4, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    sget-object v5, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v4, v2, v3, v5}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/HTreeMap$ExpireLinkNode;

    .line 1349
    .local v0, "oldHead":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    invoke-virtual {v0, p2, p3}, Lorg/mapdb/HTreeMap$ExpireLinkNode;->copyNext(J)Lorg/mapdb/HTreeMap$ExpireLinkNode;

    move-result-object v0

    .line 1350
    iget-object v4, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    sget-object v5, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v4, v2, v3, v0, v5}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 1353
    iget-object v4, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v5, p0, Lorg/mapdb/HTreeMap;->expireHeads:[J

    aget-wide v6, v5, p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v10, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v4, v6, v7, v5, v10}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    goto :goto_1
.end method

.method protected expireLinkBump(IJZ)V
    .locals 18
    .param p1, "segment"    # I
    .param p2, "nodeRecid"    # J
    .param p4, "access"    # Z

    .prologue
    .line 1358
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    sget-boolean v6, Lorg/mapdb/HTreeMap;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->isHeldByCurrentThread()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1360
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    sget-object v7, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    move-wide/from16 v0, p2

    invoke-interface {v6, v0, v1, v7}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapdb/HTreeMap$ExpireLinkNode;

    .line 1361
    .local v2, "n":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    if-eqz p4, :cond_2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/mapdb/HTreeMap;->expireAccess:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    iget-wide v10, v2, Lorg/mapdb/HTreeMap$ExpireLinkNode;->time:J

    .line 1369
    .local v10, "newTime":J
    :goto_0
    iget-wide v6, v2, Lorg/mapdb/HTreeMap$ExpireLinkNode;->next:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 1371
    invoke-virtual {v2, v10, v11}, Lorg/mapdb/HTreeMap$ExpireLinkNode;->copyTime(J)Lorg/mapdb/HTreeMap$ExpireLinkNode;

    move-result-object v3

    .line 1372
    .end local v2    # "n":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    .local v3, "n":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    sget-object v7, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    move-wide/from16 v0, p2

    invoke-interface {v6, v0, v1, v3, v7}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 1402
    :goto_1
    return-void

    .line 1361
    .end local v3    # "n":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    .end local v10    # "newTime":J
    .restart local v2    # "n":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    :cond_1
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/mapdb/HTreeMap;->expireAccess:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/mapdb/HTreeMap;->expireTimeStart:J

    sub-long v10, v6, v8

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/mapdb/HTreeMap;->expire:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    iget-wide v10, v2, Lorg/mapdb/HTreeMap$ExpireLinkNode;->time:J

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/mapdb/HTreeMap;->expire:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/mapdb/HTreeMap;->expireTimeStart:J

    sub-long v10, v6, v8

    goto :goto_0

    .line 1375
    .restart local v10    # "newTime":J
    :cond_4
    iget-wide v6, v2, Lorg/mapdb/HTreeMap$ExpireLinkNode;->prev:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    .line 1377
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-wide v8, v2, Lorg/mapdb/HTreeMap$ExpireLinkNode;->prev:J

    sget-object v7, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v6, v8, v9, v7}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/mapdb/HTreeMap$ExpireLinkNode;

    .line 1378
    .local v15, "prev":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    iget-wide v6, v2, Lorg/mapdb/HTreeMap$ExpireLinkNode;->next:J

    invoke-virtual {v15, v6, v7}, Lorg/mapdb/HTreeMap$ExpireLinkNode;->copyNext(J)Lorg/mapdb/HTreeMap$ExpireLinkNode;

    move-result-object v15

    .line 1379
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-wide v8, v2, Lorg/mapdb/HTreeMap$ExpireLinkNode;->prev:J

    sget-object v7, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v6, v8, v9, v15, v7}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 1386
    .end local v15    # "prev":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-wide v8, v2, Lorg/mapdb/HTreeMap$ExpireLinkNode;->next:J

    sget-object v7, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v6, v8, v9, v7}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/mapdb/HTreeMap$ExpireLinkNode;

    .line 1387
    .local v13, "next":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    iget-wide v6, v2, Lorg/mapdb/HTreeMap$ExpireLinkNode;->prev:J

    invoke-virtual {v13, v6, v7}, Lorg/mapdb/HTreeMap$ExpireLinkNode;->copyPrev(J)Lorg/mapdb/HTreeMap$ExpireLinkNode;

    move-result-object v13

    .line 1388
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-wide v8, v2, Lorg/mapdb/HTreeMap$ExpireLinkNode;->next:J

    sget-object v7, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v6, v8, v9, v13, v7}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 1393
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapdb/HTreeMap;->expireHeads:[J

    aget-wide v8, v7, p1

    sget-object v7, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v6, v8, v9, v7}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1394
    .local v4, "oldHeadRecid":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    sget-object v7, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v6, v4, v5, v7}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/mapdb/HTreeMap$ExpireLinkNode;

    .line 1395
    .local v14, "oldHead":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    move-wide/from16 v0, p2

    invoke-virtual {v14, v0, v1}, Lorg/mapdb/HTreeMap$ExpireLinkNode;->copyNext(J)Lorg/mapdb/HTreeMap$ExpireLinkNode;

    move-result-object v14

    .line 1396
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    sget-object v7, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v6, v4, v5, v14, v7}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 1397
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapdb/HTreeMap;->expireHeads:[J

    aget-wide v8, v7, p1

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    sget-object v12, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v6, v8, v9, v7, v12}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 1399
    new-instance v3, Lorg/mapdb/HTreeMap$ExpireLinkNode;

    const-wide/16 v6, 0x0

    iget-wide v8, v2, Lorg/mapdb/HTreeMap$ExpireLinkNode;->keyRecid:J

    iget v12, v2, Lorg/mapdb/HTreeMap$ExpireLinkNode;->hash:I

    invoke-direct/range {v3 .. v12}, Lorg/mapdb/HTreeMap$ExpireLinkNode;-><init>(JJJJI)V

    .line 1400
    .end local v2    # "n":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    .restart local v3    # "n":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    sget-object v7, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    move-wide/from16 v0, p2

    invoke-interface {v6, v0, v1, v3, v7}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    goto/16 :goto_1

    .line 1382
    .end local v3    # "n":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    .end local v4    # "oldHeadRecid":J
    .end local v13    # "next":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    .end local v14    # "oldHead":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    .restart local v2    # "n":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapdb/HTreeMap;->expireTails:[J

    aget-wide v8, v7, p1

    iget-wide v0, v2, Lorg/mapdb/HTreeMap$ExpireLinkNode;->next:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    sget-object v12, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v6, v8, v9, v7, v12}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    goto/16 :goto_2
.end method

.method protected expireLinkRemove(IJ)Lorg/mapdb/HTreeMap$ExpireLinkNode;
    .locals 10
    .param p1, "segment"    # I
    .param p2, "nodeRecid"    # J

    .prologue
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    const-wide/16 v8, 0x0

    .line 1430
    sget-boolean v3, Lorg/mapdb/HTreeMap;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->isHeldByCurrentThread()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1432
    :cond_0
    iget-object v3, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    sget-object v4, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v3, p2, p3, v4}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/HTreeMap$ExpireLinkNode;

    .line 1433
    .local v0, "n":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    iget-object v3, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    sget-object v4, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v3, p2, p3, v4}, Lorg/mapdb/Engine;->delete(JLorg/mapdb/Serializer;)V

    .line 1434
    iget-wide v4, v0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->next:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_1

    iget-wide v4, v0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->prev:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_1

    .line 1435
    iget-object v3, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v4, p0, Lorg/mapdb/HTreeMap;->expireHeads:[J

    aget-wide v4, v4, p1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    sget-object v7, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v3, v4, v5, v6, v7}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 1436
    iget-object v3, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v4, p0, Lorg/mapdb/HTreeMap;->expireTails:[J

    aget-wide v4, v4, p1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    sget-object v7, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v3, v4, v5, v6, v7}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 1457
    :goto_0
    return-object v0

    .line 1437
    :cond_1
    iget-wide v4, v0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->next:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_2

    .line 1438
    iget-object v3, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-wide v4, v0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->prev:J

    sget-object v6, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v3, v4, v5, v6}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapdb/HTreeMap$ExpireLinkNode;

    .line 1439
    .local v2, "prev":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    invoke-virtual {v2, v8, v9}, Lorg/mapdb/HTreeMap$ExpireLinkNode;->copyNext(J)Lorg/mapdb/HTreeMap$ExpireLinkNode;

    move-result-object v2

    .line 1440
    iget-object v3, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-wide v4, v0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->prev:J

    sget-object v6, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v3, v4, v5, v2, v6}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 1441
    iget-object v3, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v4, p0, Lorg/mapdb/HTreeMap;->expireHeads:[J

    aget-wide v4, v4, p1

    iget-wide v6, v0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->prev:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    sget-object v7, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v3, v4, v5, v6, v7}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    goto :goto_0

    .line 1442
    .end local v2    # "prev":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    :cond_2
    iget-wide v4, v0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->prev:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_3

    .line 1443
    iget-object v3, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-wide v4, v0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->next:J

    sget-object v6, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v3, v4, v5, v6}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapdb/HTreeMap$ExpireLinkNode;

    .line 1444
    .local v1, "next":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    invoke-virtual {v1, v8, v9}, Lorg/mapdb/HTreeMap$ExpireLinkNode;->copyPrev(J)Lorg/mapdb/HTreeMap$ExpireLinkNode;

    move-result-object v1

    .line 1445
    iget-object v3, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-wide v4, v0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->next:J

    sget-object v6, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v3, v4, v5, v1, v6}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 1446
    iget-object v3, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v4, p0, Lorg/mapdb/HTreeMap;->expireTails:[J

    aget-wide v4, v4, p1

    iget-wide v6, v0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->next:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    sget-object v7, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v3, v4, v5, v6, v7}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    goto :goto_0

    .line 1448
    .end local v1    # "next":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    :cond_3
    iget-object v3, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-wide v4, v0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->next:J

    sget-object v6, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v3, v4, v5, v6}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapdb/HTreeMap$ExpireLinkNode;

    .line 1449
    .restart local v1    # "next":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    iget-wide v4, v0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->prev:J

    invoke-virtual {v1, v4, v5}, Lorg/mapdb/HTreeMap$ExpireLinkNode;->copyPrev(J)Lorg/mapdb/HTreeMap$ExpireLinkNode;

    move-result-object v1

    .line 1450
    iget-object v3, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-wide v4, v0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->next:J

    sget-object v6, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v3, v4, v5, v1, v6}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 1452
    iget-object v3, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-wide v4, v0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->prev:J

    sget-object v6, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v3, v4, v5, v6}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapdb/HTreeMap$ExpireLinkNode;

    .line 1453
    .restart local v2    # "prev":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    iget-wide v4, v0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->next:J

    invoke-virtual {v2, v4, v5}, Lorg/mapdb/HTreeMap$ExpireLinkNode;->copyNext(J)Lorg/mapdb/HTreeMap$ExpireLinkNode;

    move-result-object v2

    .line 1454
    iget-object v3, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-wide v4, v0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->prev:J

    sget-object v6, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v3, v4, v5, v2, v6}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    goto/16 :goto_0
.end method

.method protected expireLinkRemoveLast(I)Lorg/mapdb/HTreeMap$ExpireLinkNode;
    .locals 12
    .param p1, "segment"    # I

    .prologue
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    const-wide/16 v10, 0x0

    .line 1405
    sget-boolean v4, Lorg/mapdb/HTreeMap;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->isHeldByCurrentThread()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1407
    :cond_0
    iget-object v4, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v5, p0, Lorg/mapdb/HTreeMap;->expireTails:[J

    aget-wide v6, v5, p1

    sget-object v5, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v4, v6, v7, v5}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1408
    .local v2, "tail":J
    cmp-long v4, v2, v10

    if-nez v4, :cond_1

    const/4 v0, 0x0

    .line 1425
    :goto_0
    return-object v0

    .line 1410
    :cond_1
    iget-object v4, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    sget-object v5, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v4, v2, v3, v5}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/HTreeMap$ExpireLinkNode;

    .line 1411
    .local v0, "n":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    iget-wide v4, v0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->next:J

    cmp-long v4, v4, v10

    if-nez v4, :cond_2

    .line 1413
    iget-object v4, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v5, p0, Lorg/mapdb/HTreeMap;->expireHeads:[J

    aget-wide v6, v5, p1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v8, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v4, v6, v7, v5, v8}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 1414
    iget-object v4, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v5, p0, Lorg/mapdb/HTreeMap;->expireTails:[J

    aget-wide v6, v5, p1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v8, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v4, v6, v7, v5, v8}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 1424
    :goto_1
    iget-object v4, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    sget-object v5, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v4, v2, v3, v5}, Lorg/mapdb/Engine;->delete(JLorg/mapdb/Serializer;)V

    goto :goto_0

    .line 1417
    :cond_2
    iget-object v4, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v5, p0, Lorg/mapdb/HTreeMap;->expireTails:[J

    aget-wide v6, v5, p1

    iget-wide v8, v0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->next:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v8, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v4, v6, v7, v5, v8}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 1419
    iget-object v4, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-wide v6, v0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->next:J

    sget-object v5, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v4, v6, v7, v5}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapdb/HTreeMap$ExpireLinkNode;

    .line 1420
    .local v1, "next":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    invoke-virtual {v1, v10, v11}, Lorg/mapdb/HTreeMap$ExpireLinkNode;->copyPrev(J)Lorg/mapdb/HTreeMap$ExpireLinkNode;

    move-result-object v1

    .line 1421
    iget-object v4, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-wide v6, v0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->next:J

    sget-object v5, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v4, v6, v7, v1, v5}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    goto :goto_1
.end method

.method protected expirePurge()V
    .locals 14

    .prologue
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    const-wide/16 v12, 0x0

    .line 1555
    iget-boolean v6, p0, Lorg/mapdb/HTreeMap;->expireFlag:Z

    if-nez v6, :cond_1

    .line 1579
    :cond_0
    return-void

    .line 1557
    :cond_1
    const-wide/16 v0, 0x0

    .line 1558
    .local v0, "removePerSegment":J
    iget-boolean v6, p0, Lorg/mapdb/HTreeMap;->expireMaxSizeFlag:Z

    if-eqz v6, :cond_2

    .line 1559
    iget-object v6, p0, Lorg/mapdb/HTreeMap;->counter:Lorg/mapdb/Atomic$Long;

    invoke-virtual {v6}, Lorg/mapdb/Atomic$Long;->get()J

    move-result-wide v4

    .line 1560
    .local v4, "size":J
    iget-wide v6, p0, Lorg/mapdb/HTreeMap;->expireMaxSize:J

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    .line 1561
    const-wide/16 v6, 0x1

    iget-wide v8, p0, Lorg/mapdb/HTreeMap;->expireMaxSize:J

    sub-long v8, v4, v8

    const-wide/16 v10, 0x10

    div-long/2addr v8, v10

    add-long v0, v6, v8

    .line 1566
    .end local v4    # "size":J
    :cond_2
    iget-wide v6, p0, Lorg/mapdb/HTreeMap;->expireStoreSize:J

    cmp-long v6, v6, v12

    if-eqz v6, :cond_3

    cmp-long v6, v0, v12

    if-nez v6, :cond_3

    .line 1567
    iget-object v6, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    invoke-static {v6}, Lorg/mapdb/Store;->forEngine(Lorg/mapdb/Engine;)Lorg/mapdb/Store;

    move-result-object v3

    .line 1568
    .local v3, "store":Lorg/mapdb/Store;
    iget-wide v6, p0, Lorg/mapdb/HTreeMap;->expireStoreSize:J

    invoke-virtual {v3}, Lorg/mapdb/Store;->getCurrSize()J

    move-result-wide v8

    invoke-virtual {v3}, Lorg/mapdb/Store;->getFreeSize()J

    move-result-wide v10

    sub-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    .line 1569
    const-wide/16 v0, 0x280

    .line 1573
    .end local v3    # "store":Lorg/mapdb/Store;
    :cond_3
    const/4 v2, 0x0

    .local v2, "seg":I
    :goto_0
    const/16 v6, 0x10

    if-ge v2, v6, :cond_0

    .line 1574
    iget-object v6, p0, Lorg/mapdb/HTreeMap;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    .line 1576
    invoke-virtual {p0, v2, v0, v1}, Lorg/mapdb/HTreeMap;->expirePurgeSegment(IJ)V

    .line 1573
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected expirePurgeSegment(IJ)V
    .locals 14
    .param p1, "seg"    # I
    .param p2, "removePerSegment"    # J

    .prologue
    .line 1582
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    iget-object v8, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v8, v8, p1

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1585
    :try_start_0
    iget-object v8, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v9, p0, Lorg/mapdb/HTreeMap;->expireTails:[J

    aget-wide v10, v9, p1

    sget-object v9, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v8, v10, v11, v9}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1586
    .local v6, "recid":J
    const-wide/16 v0, 0x0

    .line 1587
    .local v0, "counter":J
    const/4 v2, 0x0

    .local v2, "last":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    const/4 v4, 0x0

    .line 1588
    .local v4, "n":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_5

    .line 1589
    iget-object v8, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    sget-object v9, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v8, v6, v7, v9}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "n":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    check-cast v4, Lorg/mapdb/HTreeMap$ExpireLinkNode;

    .line 1590
    .restart local v4    # "n":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    sget-boolean v8, Lorg/mapdb/HTreeMap;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    sget-object v8, Lorg/mapdb/HTreeMap$ExpireLinkNode;->EMPTY:Lorg/mapdb/HTreeMap$ExpireLinkNode;

    if-ne v4, v8, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1623
    .end local v0    # "counter":J
    .end local v2    # "last":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    .end local v4    # "n":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    .end local v6    # "recid":J
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v9, v9, p1

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v8

    .line 1591
    .restart local v0    # "counter":J
    .restart local v2    # "last":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    .restart local v4    # "n":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    .restart local v6    # "recid":J
    :cond_0
    :try_start_1
    sget-boolean v8, Lorg/mapdb/HTreeMap;->$assertionsDisabled:Z

    if-nez v8, :cond_1

    iget v8, v4, Lorg/mapdb/HTreeMap$ExpireLinkNode;->hash:I

    ushr-int/lit8 v8, v8, 0x1c

    if-eq v8, p1, :cond_1

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 1593
    :cond_1
    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    cmp-long v8, v0, p2

    if-ltz v8, :cond_3

    iget-wide v8, p0, Lorg/mapdb/HTreeMap;->expire:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    iget-wide v8, p0, Lorg/mapdb/HTreeMap;->expireAccess:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_4

    :cond_2
    iget-wide v8, v4, Lorg/mapdb/HTreeMap$ExpireLinkNode;->time:J

    iget-wide v10, p0, Lorg/mapdb/HTreeMap;->expireTimeStart:J

    add-long/2addr v8, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_4

    :cond_3
    const/4 v5, 0x1

    .line 1596
    .local v5, "remove":Z
    :goto_1
    if-eqz v5, :cond_5

    .line 1597
    iget-object v8, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    sget-object v9, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v8, v6, v7, v9}, Lorg/mapdb/Engine;->delete(JLorg/mapdb/Serializer;)V

    .line 1598
    iget-object v8, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-wide v10, v4, Lorg/mapdb/HTreeMap$ExpireLinkNode;->keyRecid:J

    iget-object v9, p0, Lorg/mapdb/HTreeMap;->LN_SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v8, v10, v11, v9}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mapdb/HTreeMap$LinkedNode;

    .line 1599
    .local v3, "ln":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    iget-object v8, v3, Lorg/mapdb/HTreeMap$LinkedNode;->key:Ljava/lang/Object;

    iget v9, v4, Lorg/mapdb/HTreeMap$ExpireLinkNode;->hash:I

    const/4 v10, 0x0

    invoke-virtual {p0, v8, p1, v9, v10}, Lorg/mapdb/HTreeMap;->removeInternal(Ljava/lang/Object;IIZ)Ljava/lang/Object;

    .line 1603
    move-object v2, v4

    .line 1604
    iget-wide v6, v4, Lorg/mapdb/HTreeMap$ExpireLinkNode;->next:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1605
    goto :goto_0

    .line 1593
    .end local v3    # "ln":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    .end local v5    # "remove":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 1607
    :cond_5
    if-nez v2, :cond_6

    .line 1623
    :goto_2
    iget-object v8, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v8, v8, p1

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1625
    return-void

    .line 1609
    :cond_6
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_7

    .line 1611
    :try_start_2
    iget-object v8, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v9, p0, Lorg/mapdb/HTreeMap;->expireTails:[J

    aget-wide v10, v9, p1

    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sget-object v12, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v8, v10, v11, v9, v12}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 1612
    iget-object v8, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v9, p0, Lorg/mapdb/HTreeMap;->expireHeads:[J

    aget-wide v10, v9, p1

    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sget-object v12, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v8, v10, v11, v9, v12}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    goto :goto_2

    .line 1615
    :cond_7
    iget-object v8, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v9, p0, Lorg/mapdb/HTreeMap;->expireTails:[J

    aget-wide v10, v9, p1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sget-object v12, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v8, v10, v11, v9, v12}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 1617
    iget-object v8, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    sget-object v9, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v8, v6, v7, v9}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "n":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    check-cast v4, Lorg/mapdb/HTreeMap$ExpireLinkNode;

    .line 1618
    .restart local v4    # "n":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    const-wide/16 v8, 0x0

    invoke-virtual {v4, v8, v9}, Lorg/mapdb/HTreeMap$ExpireLinkNode;->copyPrev(J)Lorg/mapdb/HTreeMap$ExpireLinkNode;

    move-result-object v4

    .line 1619
    iget-object v8, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    sget-object v9, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v8, v6, v7, v4, v9}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    const/4 v3, 0x0

    .line 389
    if-nez p1, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-object v3

    .line 390
    :cond_1
    invoke-virtual {p0, p1}, Lorg/mapdb/HTreeMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 391
    .local v0, "h":I
    ushr-int/lit8 v4, v0, 0x1c

    .line 393
    .local v4, "segment":I
    iget-boolean v6, p0, Lorg/mapdb/HTreeMap;->expireAccessFlag:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    :goto_1
    check-cast v2, Ljava/util/concurrent/locks/Lock;

    .line 394
    .local v2, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 397
    :try_start_0
    invoke-virtual {p0, p1, v0, v4}, Lorg/mapdb/HTreeMap;->getInner(Ljava/lang/Object;II)Lorg/mapdb/HTreeMap$LinkedNode;

    move-result-object v1

    .line 399
    .local v1, "ln":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    if-eqz v1, :cond_2

    iget-boolean v6, p0, Lorg/mapdb/HTreeMap;->expireAccessFlag:Z

    if-eqz v6, :cond_2

    .line 400
    iget-wide v6, v1, Lorg/mapdb/HTreeMap$LinkedNode;->expireLinkNodeRecid:J

    const/4 v8, 0x1

    invoke-virtual {p0, v4, v6, v7, v8}, Lorg/mapdb/HTreeMap;->expireLinkBump(IJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    :cond_2
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 404
    iget-object v6, p0, Lorg/mapdb/HTreeMap;->valueCreator:Lorg/mapdb/Fun$Function1;

    if-nez v6, :cond_4

    .line 405
    if-eqz v1, :cond_0

    .line 407
    iget-object v3, v1, Lorg/mapdb/HTreeMap$LinkedNode;->value:Ljava/lang/Object;

    goto :goto_0

    .line 393
    .end local v1    # "ln":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    .end local v2    # "lock":Ljava/util/concurrent/locks/Lock;
    :cond_3
    iget-object v6, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    goto :goto_1

    .line 402
    .restart local v2    # "lock":Ljava/util/concurrent/locks/Lock;
    :catchall_0
    move-exception v6

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v6

    .line 411
    .restart local v1    # "ln":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    :cond_4
    iget-object v6, p0, Lorg/mapdb/HTreeMap;->valueCreator:Lorg/mapdb/Fun$Function1;

    invoke-interface {v6, p1}, Lorg/mapdb/Fun$Function1;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 413
    .local v5, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, v5}, Lorg/mapdb/HTreeMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 414
    .local v3, "prevVal":Ljava/lang/Object;, "TV;"
    if-nez v3, :cond_0

    move-object v3, v5

    .line 416
    goto :goto_0
.end method

.method public getEngine()Lorg/mapdb/Engine;
    .locals 1

    .prologue
    .line 1705
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    return-object v0
.end method

.method protected getInner(Ljava/lang/Object;II)Lorg/mapdb/HTreeMap$LinkedNode;
    .locals 10
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "h"    # I
    .param p3, "segment"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "II)",
            "Lorg/mapdb/HTreeMap$LinkedNode",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 446
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    iget-object v6, p0, Lorg/mapdb/HTreeMap;->segmentRecids:[J

    aget-wide v4, v6, p3

    .line 447
    .local v4, "recid":J
    const/4 v1, 0x3

    .local v1, "level":I
    :goto_0
    if-ltz v1, :cond_9

    .line 448
    iget-object v6, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    sget-object v7, Lorg/mapdb/HTreeMap;->DIR_SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v6, v4, v5, v7}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    .line 449
    .local v0, "dir":[[J
    if-nez v0, :cond_1

    const/4 v2, 0x0

    .line 472
    .end local v0    # "dir":[[J
    :cond_0
    :goto_1
    return-object v2

    .line 450
    .restart local v0    # "dir":[[J
    :cond_1
    mul-int/lit8 v6, v1, 0x7

    ushr-int v6, p2, v6

    and-int/lit8 v3, v6, 0x7f

    .line 451
    .local v3, "slot":I
    sget-boolean v6, Lorg/mapdb/HTreeMap;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    const/16 v6, 0x80

    if-lt v3, v6, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 452
    :cond_2
    ushr-int/lit8 v6, v3, 0x3

    aget-object v6, v0, v6

    if-nez v6, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    .line 453
    :cond_3
    ushr-int/lit8 v6, v3, 0x3

    aget-object v6, v0, v6

    and-int/lit8 v7, v3, 0x7

    aget-wide v4, v6, v7

    .line 454
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    .line 455
    :cond_4
    const-wide/16 v6, 0x1

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_8

    .line 456
    const/4 v6, 0x1

    ushr-long/2addr v4, v6

    .line 458
    :goto_2
    iget-object v6, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v7, p0, Lorg/mapdb/HTreeMap;->LN_SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v6, v4, v5, v7}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapdb/HTreeMap$LinkedNode;

    .line 459
    .local v2, "ln":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_1

    .line 460
    :cond_5
    iget-object v6, p0, Lorg/mapdb/HTreeMap;->hasher:Lorg/mapdb/Hasher;

    iget-object v7, v2, Lorg/mapdb/HTreeMap$LinkedNode;->key:Ljava/lang/Object;

    invoke-interface {v6, v7, p1}, Lorg/mapdb/Hasher;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 461
    sget-boolean v6, Lorg/mapdb/HTreeMap;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    iget-object v6, v2, Lorg/mapdb/HTreeMap$LinkedNode;->key:Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lorg/mapdb/HTreeMap;->hash(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, p2, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 464
    :cond_6
    iget-wide v6, v2, Lorg/mapdb/HTreeMap$LinkedNode;->next:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    const/4 v2, 0x0

    goto :goto_1

    .line 465
    :cond_7
    iget-wide v4, v2, Lorg/mapdb/HTreeMap$LinkedNode;->next:J

    .line 466
    goto :goto_2

    .line 469
    .end local v2    # "ln":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    :cond_8
    const/4 v6, 0x1

    ushr-long/2addr v4, v6

    .line 447
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 472
    .end local v0    # "dir":[[J
    .end local v3    # "slot":I
    :cond_9
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getMaxExpireTime()J
    .locals 12

    .prologue
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    const-wide/16 v8, 0x0

    .line 1464
    iget-boolean v6, p0, Lorg/mapdb/HTreeMap;->expireFlag:Z

    if-nez v6, :cond_1

    move-wide v4, v8

    .line 1478
    :cond_0
    return-wide v4

    .line 1465
    :cond_1
    const-wide/16 v4, 0x0

    .line 1466
    .local v4, "ret":J
    const/4 v3, 0x0

    .local v3, "segment":I
    :goto_0
    const/16 v6, 0x10

    if-ge v3, v6, :cond_0

    .line 1467
    iget-object v6, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1469
    :try_start_0
    iget-object v6, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v7, p0, Lorg/mapdb/HTreeMap;->expireHeads:[J

    aget-wide v10, v7, v3

    sget-object v7, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v6, v10, v11, v7}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 1470
    .local v0, "head":J
    cmp-long v6, v0, v8

    if-nez v6, :cond_2

    .line 1475
    iget-object v6, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1466
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1471
    :cond_2
    :try_start_1
    iget-object v6, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    sget-object v7, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v6, v0, v1, v7}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapdb/HTreeMap$ExpireLinkNode;

    .line 1472
    .local v2, "ln":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    if-eqz v2, :cond_3

    iget-wide v6, v2, Lorg/mapdb/HTreeMap$ExpireLinkNode;->time:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 1475
    :cond_3
    iget-object v6, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_1

    .line 1473
    :cond_4
    :try_start_2
    iget-wide v6, v2, Lorg/mapdb/HTreeMap$ExpireLinkNode;->time:J

    iget-wide v10, p0, Lorg/mapdb/HTreeMap;->expireTimeStart:J

    add-long/2addr v6, v10

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v4

    .line 1475
    iget-object v6, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_1

    .end local v0    # "head":J
    .end local v2    # "ln":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v6
.end method

.method public getMinExpireTime()J
    .locals 12

    .prologue
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    const-wide/16 v8, 0x0

    .line 1485
    iget-boolean v6, p0, Lorg/mapdb/HTreeMap;->expireFlag:Z

    if-nez v6, :cond_1

    move-wide v2, v8

    .line 1500
    :cond_0
    :goto_0
    return-wide v2

    .line 1486
    :cond_1
    const-wide v2, 0x7fffffffffffffffL

    .line 1487
    .local v2, "ret":J
    const/4 v1, 0x0

    .local v1, "segment":I
    :goto_1
    const/16 v6, 0x10

    if-ge v1, v6, :cond_5

    .line 1488
    iget-object v6, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1490
    :try_start_0
    iget-object v6, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    iget-object v7, p0, Lorg/mapdb/HTreeMap;->expireTails:[J

    aget-wide v10, v7, v1

    sget-object v7, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v6, v10, v11, v7}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 1491
    .local v4, "tail":J
    cmp-long v6, v4, v8

    if-nez v6, :cond_2

    .line 1496
    iget-object v6, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1487
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1492
    :cond_2
    :try_start_1
    iget-object v6, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    sget-object v7, Lorg/mapdb/HTreeMap$ExpireLinkNode;->SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v6, v4, v5, v7}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/HTreeMap$ExpireLinkNode;

    .line 1493
    .local v0, "ln":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    if-eqz v0, :cond_3

    iget-wide v6, v0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->time:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 1496
    :cond_3
    iget-object v6, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_2

    .line 1494
    :cond_4
    :try_start_2
    iget-wide v6, v0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->time:J

    iget-wide v10, p0, Lorg/mapdb/HTreeMap;->expireTimeStart:J

    add-long/2addr v6, v10

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v2

    .line 1496
    iget-object v6, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_2

    .end local v0    # "ln":Lorg/mapdb/HTreeMap$ExpireLinkNode;
    .end local v4    # "tail":J
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v6

    .line 1499
    :cond_5
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v6, v2, v6

    if-nez v6, :cond_0

    const-wide/16 v2, 0x0

    goto/16 :goto_0
.end method

.method public getPeek(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 428
    if-nez p1, :cond_0

    .line 440
    :goto_0
    return-object v4

    .line 429
    :cond_0
    invoke-virtual {p0, p1}, Lorg/mapdb/HTreeMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 430
    .local v0, "h":I
    ushr-int/lit8 v3, v0, 0x1c

    .line 432
    .local v3, "segment":I
    iget-object v5, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    .line 433
    .local v2, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 436
    :try_start_0
    invoke-virtual {p0, p1, v0, v3}, Lorg/mapdb/HTreeMap;->getInner(Ljava/lang/Object;II)Lorg/mapdb/HTreeMap$LinkedNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 437
    .local v1, "ln":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    if-nez v1, :cond_1

    .line 440
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 438
    :cond_1
    :try_start_1
    iget-object v4, v1, Lorg/mapdb/HTreeMap$LinkedNode;->value:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 440
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v1    # "ln":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    :catchall_0
    move-exception v4

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method

.method protected hash(Ljava/lang/Object;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 962
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    iget-object v1, p0, Lorg/mapdb/HTreeMap;->hasher:Lorg/mapdb/Hasher;

    invoke-interface {v1, p1}, Lorg/mapdb/Hasher;->hashCode(Ljava/lang/Object;)I

    move-result v1

    iget v2, p0, Lorg/mapdb/HTreeMap;->hashSalt:I

    xor-int v0, v1, v2

    .line 963
    .local v0, "h":I
    ushr-int/lit8 v1, v0, 0x14

    ushr-int/lit8 v2, v0, 0xc

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    .line 964
    ushr-int/lit8 v1, v0, 0x7

    xor-int/2addr v1, v0

    ushr-int/lit8 v2, v0, 0x4

    xor-int/2addr v1, v2

    return v1
.end method

.method public isEmpty()Z
    .locals 10

    .prologue
    .line 367
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v8, 0x10

    if-ge v3, v8, :cond_2

    .line 369
    :try_start_0
    iget-object v8, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 371
    iget-object v8, p0, Lorg/mapdb/HTreeMap;->segmentRecids:[J

    aget-wide v4, v8, v3

    .line 372
    .local v4, "dirRecid":J
    iget-object v8, p0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    sget-object v9, Lorg/mapdb/HTreeMap;->DIR_SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v8, v4, v5, v9}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[J

    .line 373
    .local v2, "dir":[[J
    move-object v0, v2

    .local v0, "arr$":[[J
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_1

    aget-object v1, v0, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    .local v1, "d":[J
    if-eqz v1, :cond_0

    const/4 v8, 0x0

    .line 378
    iget-object v9, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 382
    .end local v0    # "arr$":[[J
    .end local v1    # "d":[J
    .end local v2    # "dir":[[J
    .end local v4    # "dirRecid":J
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :goto_2
    return v8

    .line 373
    .restart local v0    # "arr$":[[J
    .restart local v1    # "d":[J
    .restart local v2    # "dir":[[J
    .restart local v4    # "dirRecid":J
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 378
    .end local v1    # "d":[J
    :cond_1
    iget-object v8, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 367
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 378
    .end local v0    # "arr$":[[J
    .end local v2    # "dir":[[J
    .end local v4    # "dirRecid":J
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v8

    .line 382
    :cond_2
    const/4 v8, 0x1

    goto :goto_2
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 866
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/mapdb/HTreeMap;->_keySet:Ljava/util/Set;

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
    .line 1669
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    .local p1, "listener":Lorg/mapdb/Bind$MapListener;, "Lorg/mapdb/Bind$MapListener<TK;TV;>;"
    iget-object v2, p0, Lorg/mapdb/HTreeMap;->modListenersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1670
    :try_start_0
    iget-object v1, p0, Lorg/mapdb/HTreeMap;->modListeners:[Lorg/mapdb/Bind$MapListener;

    iget-object v3, p0, Lorg/mapdb/HTreeMap;->modListeners:[Lorg/mapdb/Bind$MapListener;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mapdb/Bind$MapListener;

    .line 1672
    .local v0, "modListeners2":[Lorg/mapdb/Bind$MapListener;, "[Lorg/mapdb/Bind$MapListener<TK;TV;>;"
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 1673
    iput-object v0, p0, Lorg/mapdb/HTreeMap;->modListeners:[Lorg/mapdb/Bind$MapListener;

    .line 1674
    monitor-exit v2

    .line 1676
    return-void

    .line 1674
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
    .line 1680
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    .local p1, "listener":Lorg/mapdb/Bind$MapListener;, "Lorg/mapdb/Bind$MapListener<TK;TV;>;"
    iget-object v2, p0, Lorg/mapdb/HTreeMap;->modListenersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1681
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/mapdb/HTreeMap;->modListeners:[Lorg/mapdb/Bind$MapListener;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1682
    iget-object v1, p0, Lorg/mapdb/HTreeMap;->modListeners:[Lorg/mapdb/Bind$MapListener;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lorg/mapdb/HTreeMap;->modListeners:[Lorg/mapdb/Bind$MapListener;

    const/4 v3, 0x0

    aput-object v3, v1, v0

    .line 1681
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1684
    :cond_1
    monitor-exit v2

    .line 1685
    return-void

    .line 1684
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected notify(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)V"
        }
    .end annotation

    .prologue
    .line 1688
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    sget-boolean v5, Lorg/mapdb/HTreeMap;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0, p1}, Lorg/mapdb/HTreeMap;->hash(Ljava/lang/Object;)I

    move-result v6

    ushr-int/lit8 v6, v6, 0x1c

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLockedByCurrentThread()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1689
    :cond_0
    iget-object v4, p0, Lorg/mapdb/HTreeMap;->modListeners:[Lorg/mapdb/Bind$MapListener;

    .line 1690
    .local v4, "modListeners2":[Lorg/mapdb/Bind$MapListener;, "[Lorg/mapdb/Bind$MapListener<TK;TV;>;"
    move-object v0, v4

    .local v0, "arr$":[Lorg/mapdb/Bind$MapListener;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 1691
    .local v3, "listener":Lorg/mapdb/Bind$MapListener;, "Lorg/mapdb/Bind$MapListener<TK;TV;>;"
    if-eqz v3, :cond_1

    .line 1692
    invoke-interface {v3, p1, p2, p3}, Lorg/mapdb/Bind$MapListener;->update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1690
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1694
    .end local v3    # "listener":Lorg/mapdb/Bind$MapListener;, "Lorg/mapdb/Bind$MapListener<TK;TV;>;"
    :cond_2
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 477
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    .line 478
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "null key"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 480
    :cond_0
    if-nez p2, :cond_1

    .line 481
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "null value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 483
    :cond_1
    invoke-virtual {p0, p1}, Lorg/mapdb/HTreeMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 484
    .local v0, "h":I
    ushr-int/lit8 v1, v0, 0x1c

    .line 485
    .local v1, "segment":I
    iget-object v2, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 488
    :try_start_0
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/mapdb/HTreeMap;->putInner(Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 491
    iget-object v3, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v2

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v2
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1191
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1193
    :cond_1
    invoke-virtual {p0, p1}, Lorg/mapdb/HTreeMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1194
    .local v0, "h":I
    ushr-int/lit8 v2, v0, 0x1c

    .line 1196
    .local v2, "segment":I
    :try_start_0
    iget-object v3, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1198
    invoke-virtual {p0, p1, v0, v2}, Lorg/mapdb/HTreeMap;->getInner(Ljava/lang/Object;II)Lorg/mapdb/HTreeMap$LinkedNode;

    move-result-object v1

    .line 1199
    .local v1, "ln":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    if-nez v1, :cond_2

    .line 1200
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/HTreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1205
    iget-object v4, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    :goto_0
    return-object v3

    .line 1202
    :cond_2
    :try_start_1
    iget-object v3, v1, Lorg/mapdb/HTreeMap$LinkedNode;->value:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1205
    iget-object v4, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .end local v1    # "ln":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v3
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 605
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/mapdb/HTreeMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 606
    .local v0, "h":I
    ushr-int/lit8 v1, v0, 0x1c

    .line 607
    .local v1, "segment":I
    iget-object v2, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 609
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v1, v0, v2}, Lorg/mapdb/HTreeMap;->removeInternal(Ljava/lang/Object;IIZ)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 611
    iget-object v3, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v2

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v2
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    const/4 v3, 0x1

    .line 1211
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1212
    :cond_1
    invoke-virtual {p0, p1}, Lorg/mapdb/HTreeMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1213
    .local v0, "h":I
    ushr-int/lit8 v2, v0, 0x1c

    .line 1215
    .local v2, "segment":I
    :try_start_0
    iget-object v4, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1217
    invoke-virtual {p0, p1, v0, v2}, Lorg/mapdb/HTreeMap;->getInner(Ljava/lang/Object;II)Lorg/mapdb/HTreeMap$LinkedNode;

    move-result-object v1

    .line 1218
    .local v1, "otherVal":Lorg/mapdb/HTreeMap$LinkedNode;
    if-eqz v1, :cond_2

    iget-object v4, v1, Lorg/mapdb/HTreeMap$LinkedNode;->value:Ljava/lang/Object;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1219
    const/4 v4, 0x1

    invoke-virtual {p0, p1, v2, v0, v4}, Lorg/mapdb/HTreeMap;->removeInternal(Ljava/lang/Object;IIZ)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1225
    iget-object v4, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    :goto_0
    return v3

    .line 1222
    :cond_2
    const/4 v3, 0x0

    .line 1225
    iget-object v4, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .end local v1    # "otherVal":Lorg/mapdb/HTreeMap$LinkedNode;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v3
.end method

.method protected removeInternal(Ljava/lang/Object;IIZ)Ljava/lang/Object;
    .locals 22
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "segment"    # I
    .param p3, "h"    # I
    .param p4, "removeExpire"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "IIZ)TV;"
        }
    .end annotation

    .prologue
    .line 617
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    const/4 v2, 0x4

    new-array v5, v2, [J

    .line 618
    .local v5, "dirRecids":[J
    const/4 v4, 0x3

    .line 619
    .local v4, "level":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mapdb/HTreeMap;->segmentRecids:[J

    aget-wide v2, v2, p2

    aput-wide v2, v5, v4

    .line 621
    sget-boolean v2, Lorg/mapdb/HTreeMap;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    ushr-int/lit8 v2, p3, 0x1c

    move/from16 v0, p2

    if-eq v0, v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 628
    .local v6, "dir":[[J
    .local v7, "slot":I
    :cond_0
    if-nez v6, :cond_1

    .line 630
    const/16 v2, 0x10

    new-array v6, v2, [[J

    .line 633
    :cond_1
    ushr-int/lit8 v2, v7, 0x3

    aget-object v2, v6, v2

    if-nez v2, :cond_2

    .line 634
    const/16 v2, 0x10

    invoke-static {v6, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "dir":[[J
    check-cast v6, [[J

    .line 635
    .restart local v6    # "dir":[[J
    ushr-int/lit8 v2, v7, 0x3

    const/16 v3, 0x8

    new-array v3, v3, [J

    aput-object v3, v6, v2

    .line 639
    :cond_2
    ushr-int/lit8 v2, v7, 0x3

    aget-object v2, v6, v2

    and-int/lit8 v3, v7, 0x7

    aget-wide v20, v2, v3

    .line 641
    .local v20, "recid":J
    const-wide/16 v2, 0x0

    cmp-long v2, v20, v2

    if-eqz v2, :cond_c

    .line 642
    const-wide/16 v2, 0x1

    and-long v2, v2, v20

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-nez v2, :cond_4

    .line 643
    add-int/lit8 v4, v4, -0x1

    .line 644
    const/4 v2, 0x1

    ushr-long v2, v20, v2

    aput-wide v2, v5, v4

    .line 624
    .end local v6    # "dir":[[J
    .end local v7    # "slot":I
    .end local v20    # "recid":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    aget-wide v10, v5, v4

    sget-object v3, Lorg/mapdb/HTreeMap;->DIR_SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v2, v10, v11, v3}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[J

    .line 625
    .restart local v6    # "dir":[[J
    mul-int/lit8 v2, v4, 0x7

    ushr-int v2, p3, v2

    and-int/lit8 v7, v2, 0x7f

    .line 626
    .restart local v7    # "slot":I
    sget-boolean v2, Lorg/mapdb/HTreeMap;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const/16 v2, 0x7f

    if-le v7, v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 647
    .restart local v20    # "recid":J
    :cond_4
    const/4 v2, 0x1

    ushr-long v20, v20, v2

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/HTreeMap;->LN_SERIALIZER:Lorg/mapdb/Serializer;

    move-wide/from16 v0, v20

    invoke-interface {v2, v0, v1, v3}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/mapdb/HTreeMap$LinkedNode;

    .line 651
    .local v8, "ln":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    const/4 v9, 0x0

    .line 652
    .local v9, "prevLn":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    const-wide/16 v18, 0x0

    .local v18, "prevRecid":J
    move-object/from16 v16, v9

    .line 653
    .end local v9    # "prevLn":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    .local v16, "prevLn":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    :goto_0
    if-eqz v8, :cond_b

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mapdb/HTreeMap;->hasher:Lorg/mapdb/Hasher;

    iget-object v3, v8, Lorg/mapdb/HTreeMap$LinkedNode;->key:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-interface {v2, v3, v0}, Lorg/mapdb/Hasher;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 656
    if-nez v16, :cond_6

    .line 658
    iget-wide v2, v8, Lorg/mapdb/HTreeMap$LinkedNode;->next:J

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-nez v2, :cond_5

    move-object/from16 v2, p0

    move/from16 v3, p3

    .line 659
    invoke-direct/range {v2 .. v7}, Lorg/mapdb/HTreeMap;->recursiveDirDelete(II[J[[JI)V

    move-object/from16 v9, v16

    .line 675
    .end local v16    # "prevLn":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    .restart local v9    # "prevLn":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    :goto_1
    sget-boolean v2, Lorg/mapdb/HTreeMap;->$assertionsDisabled:Z

    if-nez v2, :cond_7

    iget-object v2, v8, Lorg/mapdb/HTreeMap$LinkedNode;->key:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/mapdb/HTreeMap;->hash(Ljava/lang/Object;)I

    move-result v2

    move/from16 v0, p3

    if-eq v2, v0, :cond_7

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 663
    .end local v9    # "prevLn":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    .restart local v16    # "prevLn":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    :cond_5
    const/16 v2, 0x10

    invoke-static {v6, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "dir":[[J
    check-cast v6, [[J

    .line 664
    .restart local v6    # "dir":[[J
    ushr-int/lit8 v2, v7, 0x3

    ushr-int/lit8 v3, v7, 0x3

    aget-object v3, v6, v3

    const/16 v10, 0x8

    invoke-static {v3, v10}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    aput-object v3, v6, v2

    .line 665
    ushr-int/lit8 v2, v7, 0x3

    aget-object v2, v6, v2

    and-int/lit8 v3, v7, 0x7

    iget-wide v10, v8, Lorg/mapdb/HTreeMap$LinkedNode;->next:J

    const/4 v12, 0x1

    shl-long/2addr v10, v12

    const-wide/16 v12, 0x1

    or-long/2addr v10, v12

    aput-wide v10, v2, v3

    .line 666
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    aget-wide v10, v5, v4

    sget-object v3, Lorg/mapdb/HTreeMap;->DIR_SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v2, v10, v11, v6, v3}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    move-object/from16 v9, v16

    .end local v16    # "prevLn":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    .restart local v9    # "prevLn":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    goto :goto_1

    .line 671
    .end local v9    # "prevLn":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    .restart local v16    # "prevLn":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    :cond_6
    new-instance v9, Lorg/mapdb/HTreeMap$LinkedNode;

    iget-wide v10, v8, Lorg/mapdb/HTreeMap$LinkedNode;->next:J

    move-object/from16 v0, v16

    iget-wide v12, v0, Lorg/mapdb/HTreeMap$LinkedNode;->expireLinkNodeRecid:J

    move-object/from16 v0, v16

    iget-object v14, v0, Lorg/mapdb/HTreeMap$LinkedNode;->key:Ljava/lang/Object;

    move-object/from16 v0, v16

    iget-object v15, v0, Lorg/mapdb/HTreeMap$LinkedNode;->value:Ljava/lang/Object;

    invoke-direct/range {v9 .. v15}, Lorg/mapdb/HTreeMap$LinkedNode;-><init>(JJLjava/lang/Object;Ljava/lang/Object;)V

    .line 672
    .end local v16    # "prevLn":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    .restart local v9    # "prevLn":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/HTreeMap;->LN_SERIALIZER:Lorg/mapdb/Serializer;

    move-wide/from16 v0, v18

    invoke-interface {v2, v0, v1, v9, v3}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    goto :goto_1

    .line 676
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/HTreeMap;->LN_SERIALIZER:Lorg/mapdb/Serializer;

    move-wide/from16 v0, v20

    invoke-interface {v2, v0, v1, v3}, Lorg/mapdb/Engine;->delete(JLorg/mapdb/Serializer;)V

    .line 677
    if-eqz p4, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/mapdb/HTreeMap;->expireFlag:Z

    if-eqz v2, :cond_8

    iget-wide v2, v8, Lorg/mapdb/HTreeMap$LinkedNode;->expireLinkNodeRecid:J

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/HTreeMap;->expireLinkRemove(IJ)Lorg/mapdb/HTreeMap$ExpireLinkNode;

    .line 678
    :cond_8
    iget-object v2, v8, Lorg/mapdb/HTreeMap$LinkedNode;->value:Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/HTreeMap;->notify(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 679
    iget-object v2, v8, Lorg/mapdb/HTreeMap$LinkedNode;->value:Ljava/lang/Object;

    .line 691
    .end local v8    # "ln":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    .end local v9    # "prevLn":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    .end local v18    # "prevRecid":J
    :goto_2
    return-object v2

    .line 681
    .restart local v8    # "ln":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    .restart local v16    # "prevLn":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    .restart local v18    # "prevRecid":J
    :cond_9
    move-wide/from16 v18, v20

    .line 682
    move-object v9, v8

    .line 683
    .end local v16    # "prevLn":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    .restart local v9    # "prevLn":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    iget-wide v0, v8, Lorg/mapdb/HTreeMap$LinkedNode;->next:J

    move-wide/from16 v20, v0

    .line 684
    const-wide/16 v2, 0x0

    cmp-long v2, v20, v2

    if-nez v2, :cond_a

    const/4 v8, 0x0

    :goto_3
    move-object/from16 v16, v9

    .end local v9    # "prevLn":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    .restart local v16    # "prevLn":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    goto/16 :goto_0

    .end local v16    # "prevLn":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    .restart local v9    # "prevLn":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/HTreeMap;->LN_SERIALIZER:Lorg/mapdb/Serializer;

    move-wide/from16 v0, v20

    invoke-interface {v2, v0, v1, v3}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapdb/HTreeMap$LinkedNode;

    move-object v8, v2

    goto :goto_3

    .line 688
    .end local v9    # "prevLn":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    .restart local v16    # "prevLn":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    :cond_b
    const/4 v2, 0x0

    goto :goto_2

    .line 691
    .end local v8    # "ln":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    .end local v16    # "prevLn":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    .end local v18    # "prevRecid":J
    :cond_c
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1251
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 1252
    :cond_1
    invoke-virtual {p0, p1}, Lorg/mapdb/HTreeMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1253
    .local v0, "h":I
    ushr-int/lit8 v1, v0, 0x1c

    .line 1255
    .local v1, "segment":I
    :try_start_0
    iget-object v2, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1257
    invoke-virtual {p0, p1, v0, v1}, Lorg/mapdb/HTreeMap;->getInner(Ljava/lang/Object;II)Lorg/mapdb/HTreeMap$LinkedNode;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1258
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/mapdb/HTreeMap;->putInner(Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1262
    iget-object v3, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    :goto_0
    return-object v2

    .line 1260
    :cond_2
    const/4 v2, 0x0

    .line 1262
    iget-object v3, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v2
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 1231
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1232
    :cond_1
    invoke-virtual {p0, p1}, Lorg/mapdb/HTreeMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1233
    .local v0, "h":I
    ushr-int/lit8 v2, v0, 0x1c

    .line 1235
    .local v2, "segment":I
    :try_start_0
    iget-object v3, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1237
    invoke-virtual {p0, p1, v0, v2}, Lorg/mapdb/HTreeMap;->getInner(Ljava/lang/Object;II)Lorg/mapdb/HTreeMap$LinkedNode;

    move-result-object v1

    .line 1238
    .local v1, "ln":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    if-eqz v1, :cond_2

    iget-object v3, v1, Lorg/mapdb/HTreeMap$LinkedNode;->value:Ljava/lang/Object;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1239
    invoke-direct {p0, p1, p3, v0, v2}, Lorg/mapdb/HTreeMap;->putInner(Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1240
    const/4 v3, 0x1

    .line 1245
    iget-object v4, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    :goto_0
    return v3

    .line 1242
    :cond_2
    const/4 v3, 0x0

    .line 1245
    iget-object v4, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .end local v1    # "ln":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v3
.end method

.method public size()I
    .locals 4

    .prologue
    .line 305
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/mapdb/HTreeMap;->sizeLong()J

    move-result-wide v0

    .line 306
    .local v0, "size":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const v2, 0x7fffffff

    .line 307
    :goto_0
    return v2

    :cond_0
    long-to-int v2, v0

    goto :goto_0
.end method

.method public sizeLong()J
    .locals 8

    .prologue
    .line 313
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    iget-object v5, p0, Lorg/mapdb/HTreeMap;->counter:Lorg/mapdb/Atomic$Long;

    if-eqz v5, :cond_1

    .line 314
    iget-object v5, p0, Lorg/mapdb/HTreeMap;->counter:Lorg/mapdb/Atomic$Long;

    invoke-virtual {v5}, Lorg/mapdb/Atomic$Long;->get()J

    move-result-wide v0

    .line 332
    :cond_0
    return-wide v0

    .line 317
    :cond_1
    const-wide/16 v0, 0x0

    .line 320
    .local v0, "counter":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v5, 0x10

    if-ge v4, v5, :cond_0

    .line 322
    :try_start_0
    iget-object v5, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 324
    iget-object v5, p0, Lorg/mapdb/HTreeMap;->segmentRecids:[J

    aget-wide v2, v5, v4

    .line 325
    .local v2, "dirRecid":J
    invoke-direct {p0, v2, v3}, Lorg/mapdb/HTreeMap;->recursiveDirCount(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    add-long/2addr v0, v6

    .line 327
    iget-object v5, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 320
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 327
    .end local v2    # "dirRecid":J
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v5
.end method

.method public snapshot()Ljava/util/Map;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1658
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    invoke-static {v2}, Lorg/mapdb/TxEngine;->createSnapshotFor(Lorg/mapdb/Engine;)Lorg/mapdb/Engine;

    move-result-object v3

    .line 1659
    .local v3, "snapshot":Lorg/mapdb/Engine;
    new-instance v2, Lorg/mapdb/HTreeMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapdb/HTreeMap;->counter:Lorg/mapdb/Atomic$Long;

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v6, v0, Lorg/mapdb/HTreeMap;->hashSalt:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapdb/HTreeMap;->segmentRecids:[J

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/mapdb/HTreeMap;->keySerializer:Lorg/mapdb/Serializer;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mapdb/HTreeMap;->valueSerializer:Lorg/mapdb/Serializer;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v2 .. v24}, Lorg/mapdb/HTreeMap;-><init>(Lorg/mapdb/Engine;JI[JLorg/mapdb/Serializer;Lorg/mapdb/Serializer;JJJJJ[J[JLorg/mapdb/Fun$Function1;Lorg/mapdb/Hasher;Z)V

    return-object v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapdb/HTreeMap;->counter:Lorg/mapdb/Atomic$Long;

    iget-wide v4, v4, Lorg/mapdb/Atomic$Long;->recid:J

    goto :goto_0
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
    .line 897
    .local p0, "this":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/mapdb/HTreeMap;->_values:Ljava/util/Collection;

    return-object v0
.end method
