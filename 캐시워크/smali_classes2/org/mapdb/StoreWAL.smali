.class public Lorg/mapdb/StoreWAL;
.super Lorg/mapdb/StoreDirect;
.source "StoreWAL.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final LOG_MASK_OFFSET:J = 0xffffffffffffL

.field protected static final LOG_SEAL:J = 0x10394246d7fa15L

.field protected static final PREALLOC:[J

.field protected static final TOMBSTONE:[J

.field public static final TRANS_LOG_FILE_EXT:Ljava/lang/String; = ".t"

.field protected static final WAL_INDEX_LONG:B = 0x65t

.field protected static final WAL_LONGSTACK_PAGE:B = 0x66t

.field protected static final WAL_PHYS_ARRAY:B = 0x68t

.field protected static final WAL_PHYS_ARRAY_ONE_LONG:B = 0x67t

.field protected static final WAL_SEAL:B = 0x6ft

.field protected static final WAL_SKIP_REST_OF_BLOCK:B = 0x69t


# instance fields
.field protected final indexVals:[J

.field protected final indexValsModified:[Z

.field protected log:Lorg/mapdb/Volume;

.field protected final logChecksum:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected volatile logSize:J

.field protected final longStackPages:Lorg/mapdb/LongMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/LongMap",
            "<[B>;"
        }
    .end annotation
.end field

.field protected final modified:Lorg/mapdb/LongConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/LongConcurrentHashMap",
            "<[J>;"
        }
    .end annotation
.end field

.field protected replayPending:Z

.field protected final volFac:Lorg/mapdb/Volume$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    const-class v0, Lorg/mapdb/StoreWAL;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    .line 50
    new-array v0, v1, [J

    sput-object v0, Lorg/mapdb/StoreWAL;->TOMBSTONE:[J

    .line 51
    new-array v0, v1, [J

    sput-object v0, Lorg/mapdb/StoreWAL;->PREALLOC:[J

    return-void

    :cond_0
    move v0, v1

    .line 31
    goto :goto_0
.end method

.method public constructor <init>(Lorg/mapdb/Volume$Factory;)V
    .locals 13
    .param p1, "volFac"    # Lorg/mapdb/Volume$Factory;

    .prologue
    const/4 v2, 0x0

    .line 69
    const/4 v4, 0x5

    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v5, v2

    move v8, v2

    move v9, v2

    move v11, v2

    move v12, v2

    invoke-direct/range {v0 .. v12}, Lorg/mapdb/StoreWAL;-><init>(Lorg/mapdb/Volume$Factory;ZZIZJZZ[BZI)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/mapdb/Volume$Factory;ZZIZJZZ[BZI)V
    .locals 4
    .param p1, "volFac"    # Lorg/mapdb/Volume$Factory;
    .param p2, "readOnly"    # Z
    .param p3, "deleteFilesAfterClose"    # Z
    .param p4, "spaceReclaimMode"    # I
    .param p5, "syncOnCommitDisabled"    # Z
    .param p6, "sizeLimit"    # J
    .param p8, "checksum"    # Z
    .param p9, "compress"    # Z
    .param p10, "password"    # [B
    .param p11, "disableLocks"    # Z
    .param p12, "sizeIncrement"    # I

    .prologue
    .line 74
    invoke-direct/range {p0 .. p12}, Lorg/mapdb/StoreDirect;-><init>(Lorg/mapdb/Volume$Factory;ZZIZJZZ[BZI)V

    .line 58
    new-instance v1, Lorg/mapdb/LongConcurrentHashMap;

    invoke-direct {v1}, Lorg/mapdb/LongConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lorg/mapdb/StoreWAL;->modified:Lorg/mapdb/LongConcurrentHashMap;

    .line 59
    new-instance v1, Lorg/mapdb/LongHashMap;

    invoke-direct {v1}, Lorg/mapdb/LongHashMap;-><init>()V

    iput-object v1, p0, Lorg/mapdb/StoreWAL;->longStackPages:Lorg/mapdb/LongMap;

    .line 60
    const/16 v1, 0x1010

    new-array v1, v1, [J

    iput-object v1, p0, Lorg/mapdb/StoreWAL;->indexVals:[J

    .line 61
    iget-object v1, p0, Lorg/mapdb/StoreWAL;->indexVals:[J

    array-length v1, v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lorg/mapdb/StoreWAL;->indexValsModified:[Z

    .line 63
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mapdb/StoreWAL;->replayPending:Z

    .line 66
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lorg/mapdb/StoreWAL;->logChecksum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 76
    iput-object p1, p0, Lorg/mapdb/StoreWAL;->volFac:Lorg/mapdb/Volume$Factory;

    .line 77
    invoke-interface {p1}, Lorg/mapdb/Volume$Factory;->createTransLogVolume()Lorg/mapdb/Volume;

    move-result-object v1

    iput-object v1, p0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "allGood":Z
    iget-object v1, p0, Lorg/mapdb/StoreWAL;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 82
    :try_start_0
    invoke-virtual {p0}, Lorg/mapdb/StoreWAL;->reloadIndexFile()V

    .line 83
    invoke-virtual {p0}, Lorg/mapdb/StoreWAL;->verifyLogFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {p0}, Lorg/mapdb/StoreWAL;->replayLogFile()V

    .line 86
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mapdb/StoreWAL;->replayPending:Z

    .line 87
    invoke-virtual {p0}, Lorg/mapdb/StoreWAL;->checkHeaders()V

    .line 88
    if-nez p2, :cond_1

    .line 89
    invoke-virtual {p0}, Lorg/mapdb/StoreWAL;->logReset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_1
    const/4 v0, 0x1

    .line 92
    if-nez v0, :cond_4

    .line 94
    iget-object v1, p0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    if-eqz v1, :cond_2

    .line 95
    iget-object v1, p0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    invoke-virtual {v1}, Lorg/mapdb/Volume;->close()V

    .line 96
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    .line 98
    :cond_2
    iget-object v1, p0, Lorg/mapdb/StoreWAL;->index:Lorg/mapdb/Volume;

    if-eqz v1, :cond_3

    .line 99
    iget-object v1, p0, Lorg/mapdb/StoreWAL;->index:Lorg/mapdb/Volume;

    invoke-virtual {v1}, Lorg/mapdb/Volume;->close()V

    .line 100
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mapdb/StoreWAL;->index:Lorg/mapdb/Volume;

    .line 102
    :cond_3
    iget-object v1, p0, Lorg/mapdb/StoreWAL;->phys:Lorg/mapdb/Volume;

    if-eqz v1, :cond_4

    .line 103
    iget-object v1, p0, Lorg/mapdb/StoreWAL;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v1}, Lorg/mapdb/Volume;->close()V

    .line 104
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mapdb/StoreWAL;->phys:Lorg/mapdb/Volume;

    .line 108
    :cond_4
    iget-object v1, p0, Lorg/mapdb/StoreWAL;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 110
    return-void

    .line 92
    :catchall_0
    move-exception v1

    if-nez v0, :cond_7

    .line 94
    iget-object v2, p0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    if-eqz v2, :cond_5

    .line 95
    iget-object v2, p0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    invoke-virtual {v2}, Lorg/mapdb/Volume;->close()V

    .line 96
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    .line 98
    :cond_5
    iget-object v2, p0, Lorg/mapdb/StoreWAL;->index:Lorg/mapdb/Volume;

    if-eqz v2, :cond_6

    .line 99
    iget-object v2, p0, Lorg/mapdb/StoreWAL;->index:Lorg/mapdb/Volume;

    invoke-virtual {v2}, Lorg/mapdb/Volume;->close()V

    .line 100
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mapdb/StoreWAL;->index:Lorg/mapdb/Volume;

    .line 102
    :cond_6
    iget-object v2, p0, Lorg/mapdb/StoreWAL;->phys:Lorg/mapdb/Volume;

    if-eqz v2, :cond_7

    .line 103
    iget-object v2, p0, Lorg/mapdb/StoreWAL;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v2}, Lorg/mapdb/Volume;->close()V

    .line 104
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mapdb/StoreWAL;->phys:Lorg/mapdb/Volume;

    .line 108
    :cond_7
    iget-object v2, p0, Lorg/mapdb/StoreWAL;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method protected static longStackGetSixLong([BI)J
    .locals 5
    .param p0, "page"    # [B
    .param p1, "pos"    # I

    .prologue
    .line 1017
    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v2, 0x28

    shl-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x4

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x5

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/4 v4, 0x0

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected static longStackPutSixLong([BIJ)V
    .locals 6
    .param p0, "page"    # [B
    .param p1, "pos"    # I
    .param p2, "value"    # J

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xff

    .line 1028
    sget-boolean v0, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    cmp-long v0, p2, v2

    if-ltz v0, :cond_0

    const/16 v0, 0x30

    ushr-long v0, p2, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "value does not fit"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1029
    :cond_1
    add-int/lit8 v0, p1, 0x0

    const/16 v1, 0x28

    shr-long v2, p2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 1030
    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x20

    shr-long v2, p2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 1031
    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x18

    shr-long v2, p2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 1032
    add-int/lit8 v0, p1, 0x3

    const/16 v1, 0x10

    shr-long v2, p2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 1033
    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x8

    shr-long v2, p2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 1034
    add-int/lit8 v0, p1, 0x5

    const/4 v1, 0x0

    shr-long v2, p2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 1036
    return-void
.end method


# virtual methods
.method public canRollback()Z
    .locals 1

    .prologue
    .line 1111
    const/4 v0, 0x1

    return v0
.end method

.method protected checkHeaders()V
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lorg/mapdb/StoreWAL;->replayPending:Z

    if-eqz v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-super {p0}, Lorg/mapdb/StoreDirect;->checkHeaders()V

    goto :goto_0
.end method

.method protected checkLogRounding()V
    .locals 10

    .prologue
    const-wide/32 v8, 0x100000

    const-wide/32 v6, 0xfffff

    .line 304
    sget-boolean v0, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mapdb/StoreWAL;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 305
    :cond_0
    iget-wide v0, p0, Lorg/mapdb/StoreWAL;->logSize:J

    and-long/2addr v0, v6

    const-wide/32 v2, 0x1fffe

    add-long/2addr v0, v2

    cmp-long v0, v0, v8

    if-lez v0, :cond_1

    .line 306
    iget-object v0, p0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    iget-wide v2, p0, Lorg/mapdb/StoreWAL;->logSize:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lorg/mapdb/Volume;->ensureAvailable(J)V

    .line 307
    iget-object v0, p0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    iget-wide v2, p0, Lorg/mapdb/StoreWAL;->logSize:J

    const/16 v1, 0x69

    invoke-virtual {v0, v2, v3, v1}, Lorg/mapdb/Volume;->putByte(JB)V

    .line 308
    iget-wide v0, p0, Lorg/mapdb/StoreWAL;->logSize:J

    iget-wide v2, p0, Lorg/mapdb/StoreWAL;->logSize:J

    and-long/2addr v2, v6

    sub-long v2, v8, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/mapdb/StoreWAL;->logSize:J

    .line 310
    :cond_1
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 1064
    iget-object v2, p0, Lorg/mapdb/StoreWAL;->closeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1065
    .local v0, "closeListener":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1067
    .end local v0    # "closeListener":Ljava/lang/Runnable;
    :cond_0
    iget-object v2, p0, Lorg/mapdb/StoreWAL;->serializerPojo:Lorg/mapdb/SerializerPojo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/mapdb/StoreWAL;->serializerPojo:Lorg/mapdb/SerializerPojo;

    invoke-virtual {v2}, Lorg/mapdb/SerializerPojo;->hasUnsavedChanges()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1068
    iget-object v2, p0, Lorg/mapdb/StoreWAL;->serializerPojo:Lorg/mapdb/SerializerPojo;

    invoke-virtual {v2, p0}, Lorg/mapdb/SerializerPojo;->save(Lorg/mapdb/Engine;)V

    .line 1071
    :cond_1
    invoke-virtual {p0}, Lorg/mapdb/StoreWAL;->lockAllWrite()V

    .line 1073
    :try_start_0
    iget-object v2, p0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    if-eqz v2, :cond_2

    .line 1074
    iget-object v2, p0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    invoke-virtual {v2}, Lorg/mapdb/Volume;->sync()V

    .line 1075
    iget-object v2, p0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    invoke-virtual {v2}, Lorg/mapdb/Volume;->close()V

    .line 1076
    iget-boolean v2, p0, Lorg/mapdb/StoreWAL;->deleteFilesAfterClose:Z

    if-eqz v2, :cond_2

    .line 1077
    iget-object v2, p0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    invoke-virtual {v2}, Lorg/mapdb/Volume;->deleteFile()V

    .line 1081
    :cond_2
    iget-object v2, p0, Lorg/mapdb/StoreWAL;->index:Lorg/mapdb/Volume;

    invoke-virtual {v2}, Lorg/mapdb/Volume;->sync()V

    .line 1082
    iget-object v2, p0, Lorg/mapdb/StoreWAL;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v2}, Lorg/mapdb/Volume;->sync()V

    .line 1084
    iget-object v2, p0, Lorg/mapdb/StoreWAL;->index:Lorg/mapdb/Volume;

    invoke-virtual {v2}, Lorg/mapdb/Volume;->close()V

    .line 1085
    iget-object v2, p0, Lorg/mapdb/StoreWAL;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v2}, Lorg/mapdb/Volume;->close()V

    .line 1086
    iget-boolean v2, p0, Lorg/mapdb/StoreWAL;->deleteFilesAfterClose:Z

    if-eqz v2, :cond_3

    .line 1087
    iget-object v2, p0, Lorg/mapdb/StoreWAL;->index:Lorg/mapdb/Volume;

    invoke-virtual {v2}, Lorg/mapdb/Volume;->deleteFile()V

    .line 1088
    iget-object v2, p0, Lorg/mapdb/StoreWAL;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v2}, Lorg/mapdb/Volume;->deleteFile()V

    .line 1090
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mapdb/StoreWAL;->index:Lorg/mapdb/Volume;

    .line 1091
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mapdb/StoreWAL;->phys:Lorg/mapdb/Volume;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1093
    invoke-virtual {p0}, Lorg/mapdb/StoreWAL;->unlockAllWrite()V

    .line 1095
    return-void

    .line 1093
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lorg/mapdb/StoreWAL;->unlockAllWrite()V

    throw v2
.end method

.method public commit()V
    .locals 24

    .prologue
    .line 536
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/StoreWAL;->lockAllWrite()V

    .line 538
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreWAL;->serializerPojo:Lorg/mapdb/SerializerPojo;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreWAL;->serializerPojo:Lorg/mapdb/SerializerPojo;

    invoke-virtual {v3}, Lorg/mapdb/SerializerPojo;->hasUnsavedChanges()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 539
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreWAL;->serializerPojo:Lorg/mapdb/SerializerPojo;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lorg/mapdb/SerializerPojo;->save(Lorg/mapdb/Engine;)V

    .line 542
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/StoreWAL;->logDirty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 609
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/StoreWAL;->unlockAllWrite()V

    .line 612
    :goto_0
    return-void

    .line 547
    :cond_1
    const/4 v2, 0x0

    .line 548
    .local v2, "crc":I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreWAL;->longStackPages:Lorg/mapdb/LongMap;

    invoke-virtual {v3}, Lorg/mapdb/LongMap;->longMapIterator()Lorg/mapdb/LongMap$LongMapIterator;

    move-result-object v20

    .line 549
    .local v20, "iter":Lorg/mapdb/LongMap$LongMapIterator;, "Lorg/mapdb/LongMap$LongMapIterator<[B>;"
    :goto_1
    invoke-interface/range {v20 .. v20}, Lorg/mapdb/LongMap$LongMapIterator;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 550
    sget-boolean v3, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    invoke-interface/range {v20 .. v20}, Lorg/mapdb/LongMap$LongMapIterator;->key()J

    move-result-wide v4

    const/16 v3, 0x30

    ushr-long/2addr v4, v3

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 609
    .end local v2    # "crc":I
    .end local v20    # "iter":Lorg/mapdb/LongMap$LongMapIterator;, "Lorg/mapdb/LongMap$LongMapIterator<[B>;"
    :catchall_0
    move-exception v3

    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/StoreWAL;->unlockAllWrite()V

    throw v3

    .line 551
    .restart local v2    # "crc":I
    .restart local v20    # "iter":Lorg/mapdb/LongMap$LongMapIterator;, "Lorg/mapdb/LongMap$LongMapIterator<[B>;"
    :cond_2
    :try_start_2
    invoke-interface/range {v20 .. v20}, Lorg/mapdb/LongMap$LongMapIterator;->value()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 552
    .local v6, "array":[B
    const/4 v3, 0x0

    aget-byte v3, v6, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x1

    aget-byte v4, v6, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-long v0, v3

    move-wide/from16 v22, v0

    .line 553
    .local v22, "pageSize":J
    sget-boolean v3, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    array-length v3, v6

    int-to-long v4, v3

    cmp-long v3, v4, v22

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 554
    :cond_3
    const/16 v3, 0x30

    shl-long v4, v22, v3

    invoke-interface/range {v20 .. v20}, Lorg/mapdb/LongMap$LongMapIterator;->key()J

    move-result-wide v8

    or-long v16, v4, v8

    .line 555
    .local v16, "firstVal":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    const-wide/16 v8, 0x8

    add-long/2addr v4, v8

    add-long v4, v4, v22

    invoke-virtual {v3, v4, v5}, Lorg/mapdb/Volume;->ensureAvailable(J)V

    .line 557
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    const-wide/16 v8, 0x66

    or-long/2addr v4, v8

    or-long v4, v4, v16

    invoke-static {v4, v5}, Lorg/mapdb/LongHashMap;->longHash(J)I

    move-result v3

    or-int/2addr v2, v3

    .line 559
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    const/16 v7, 0x66

    invoke-virtual {v3, v4, v5, v7}, Lorg/mapdb/Volume;->putByte(JB)V

    .line 560
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    .line 561
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v0, v16

    invoke-virtual {v3, v4, v5, v0, v1}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 562
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    const-wide/16 v8, 0x8

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    .line 565
    new-instance v14, Ljava/util/zip/CRC32;

    invoke-direct {v14}, Ljava/util/zip/CRC32;-><init>()V

    .line 566
    .local v14, "crc32":Ljava/util/zip/CRC32;
    invoke-virtual {v14, v6}, Ljava/util/zip/CRC32;->update([B)V

    .line 567
    int-to-long v4, v2

    invoke-virtual {v14}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    or-long/2addr v4, v8

    long-to-int v2, v4

    .line 568
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    const/4 v7, 0x0

    array-length v8, v6

    invoke-virtual/range {v3 .. v8}, Lorg/mapdb/Volume;->putData(J[BII)V

    .line 569
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    array-length v3, v6

    int-to-long v8, v3

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    .line 571
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/StoreWAL;->checkLogRounding()V

    goto/16 :goto_1

    .line 575
    .end local v6    # "array":[B
    .end local v14    # "crc32":Ljava/util/zip/CRC32;
    .end local v16    # "firstVal":J
    .end local v22    # "pageSize":J
    :cond_4
    const/16 v15, 0x78

    .local v15, "i":I
    :goto_2
    const v3, 0x8080

    if-ge v15, v3, :cond_6

    .line 576
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreWAL;->indexValsModified:[Z

    div-int/lit8 v4, v15, 0x8

    aget-boolean v3, v3, v4

    if-nez v3, :cond_5

    .line 575
    :goto_3
    add-int/lit8 v15, v15, 0x8

    goto :goto_2

    .line 577
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    const-wide/16 v8, 0x11

    add-long/2addr v4, v8

    invoke-virtual {v3, v4, v5}, Lorg/mapdb/Volume;->ensureAvailable(J)V

    .line 578
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    const-wide/16 v8, 0x11

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    .line 579
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    const-wide/16 v8, 0x11

    sub-long v8, v4, v8

    int-to-long v10, v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreWAL;->indexVals:[J

    div-int/lit8 v4, v15, 0x8

    aget-wide v12, v3, v4

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v13}, Lorg/mapdb/StoreWAL;->walIndexVal(JJJ)V

    goto :goto_3

    .line 584
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    const-wide/16 v8, 0x12

    add-long/2addr v4, v8

    const-wide/16 v8, 0x8

    add-long/2addr v4, v8

    const-wide/16 v8, 0x4

    add-long/2addr v4, v8

    invoke-virtual {v3, v4, v5}, Lorg/mapdb/Volume;->ensureAvailable(J)V

    .line 585
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/StoreWAL;->indexHeaderChecksumUncommited()J

    move-result-wide v18

    .line 586
    .local v18, "indexChecksum":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    const-wide/16 v8, 0x6f

    or-long/2addr v4, v8

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/mapdb/StoreWAL;->indexSize:J

    or-long/2addr v4, v8

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/mapdb/StoreWAL;->physSize:J

    or-long/2addr v4, v8

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/mapdb/StoreWAL;->freeSize:J

    or-long/2addr v4, v8

    or-long v4, v4, v18

    invoke-static {v4, v5}, Lorg/mapdb/LongHashMap;->longHash(J)I

    move-result v3

    or-int/2addr v2, v3

    .line 587
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    const/16 v7, 0x6f

    invoke-virtual {v3, v4, v5, v7}, Lorg/mapdb/Volume;->putByte(JB)V

    .line 588
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    .line 589
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/mapdb/StoreWAL;->indexSize:J

    invoke-virtual {v3, v4, v5, v8, v9}, Lorg/mapdb/Volume;->putSixLong(JJ)V

    .line 590
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    const-wide/16 v8, 0x6

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    .line 591
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/mapdb/StoreWAL;->physSize:J

    invoke-virtual {v3, v4, v5, v8, v9}, Lorg/mapdb/Volume;->putSixLong(JJ)V

    .line 592
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    const-wide/16 v8, 0x6

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    .line 593
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/mapdb/StoreWAL;->freeSize:J

    invoke-virtual {v3, v4, v5, v8, v9}, Lorg/mapdb/Volume;->putSixLong(JJ)V

    .line 594
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    const-wide/16 v8, 0x6

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    .line 595
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v0, v18

    invoke-virtual {v3, v4, v5, v0, v1}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 596
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    const-wide/16 v8, 0x8

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    .line 597
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapdb/StoreWAL;->logChecksum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    or-int/2addr v7, v2

    invoke-virtual {v3, v4, v5, v7}, Lorg/mapdb/Volume;->putInt(JI)V

    .line 598
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    const-wide/16 v8, 0x4

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    .line 601
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    const-wide/16 v4, 0x8

    const-wide v8, 0x10394246d7fa15L

    invoke-virtual {v3, v4, v5, v8, v9}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 604
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/mapdb/StoreWAL;->syncOnCommitDisabled:Z

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    invoke-virtual {v3}, Lorg/mapdb/Volume;->sync()V

    .line 606
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/StoreWAL;->replayLogFile()V

    .line 607
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/StoreWAL;->reloadIndexFile()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 609
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/StoreWAL;->unlockAllWrite()V

    goto/16 :goto_0
.end method

.method protected compactPostUnderLock()V
    .locals 1

    .prologue
    .line 1104
    sget-boolean v0, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mapdb/StoreWAL;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1105
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/StoreWAL;->reloadIndexFile()V

    .line 1106
    return-void
.end method

.method protected compactPreUnderLock()V
    .locals 2

    .prologue
    .line 1098
    sget-boolean v0, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mapdb/StoreWAL;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1099
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/StoreWAL;->logDirty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1100
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "WAL not empty; commit first, than compact"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1101
    :cond_1
    return-void
.end method

.method public compareAndSwap(JLjava/lang/Object;Ljava/lang/Object;Lorg/mapdb/Serializer;)Z
    .locals 25
    .param p1, "recid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(JTA;TA;",
            "Lorg/mapdb/Serializer",
            "<TA;>;)Z"
        }
    .end annotation

    .prologue
    .line 425
    .local p3, "expectedOldValue":Ljava/lang/Object;, "TA;"
    .local p4, "newValue":Ljava/lang/Object;, "TA;"
    .local p5, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    sget-boolean v5, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-gtz v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 426
    :cond_0
    sget-boolean v5, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    if-eqz p3, :cond_1

    if-nez p4, :cond_2

    :cond_1
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 427
    :cond_2
    const-wide/32 v6, 0x8080

    const-wide/16 v10, 0x8

    mul-long v10, v10, p1

    add-long v8, v6, v10

    .line 428
    .local v8, "ioRecid":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/StoreWAL;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {v8, v9}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v16

    .line 429
    .local v16, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface/range {v16 .. v16}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 433
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v8, v9, v1}, Lorg/mapdb/StoreWAL;->get2(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v18

    .line 434
    .local v18, "oldVal":Ljava/lang/Object;, "TA;"
    if-nez v18, :cond_3

    if-nez p3, :cond_4

    :cond_3
    if-eqz v18, :cond_5

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v5

    if-nez v5, :cond_5

    .line 435
    :cond_4
    const/4 v5, 0x0

    .line 482
    invoke-interface/range {v16 .. v16}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 485
    :goto_0
    return v5

    .line 437
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/StoreWAL;->serialize(Ljava/lang/Object;Lorg/mapdb/Serializer;)Lorg/mapdb/DataOutput2;

    move-result-object v19

    .line 442
    .local v19, "out":Lorg/mapdb/DataOutput2;
    const-wide/16 v14, 0x0

    .line 443
    .local v14, "indexVal":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lorg/mapdb/StoreWAL;->getLinkedRecordsFromLog(J)[J

    move-result-object v13

    .line 444
    .local v13, "linkedRecords":[J
    if-nez v13, :cond_6

    .line 445
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/StoreWAL;->index:Lorg/mapdb/Volume;

    invoke-virtual {v5, v8, v9}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v14

    .line 446
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lorg/mapdb/StoreWAL;->getLinkedRecordsIndexVals(J)[J

    move-result-object v13

    .line 449
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/StoreWAL;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 453
    const/16 v5, 0x30

    ushr-long v6, v14, v5

    const-wide/16 v10, 0x0

    cmp-long v5, v6, v10

    if-lez v5, :cond_7

    .line 454
    const/4 v5, 0x0

    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15, v5}, Lorg/mapdb/StoreWAL;->freePhysPut(JZ)V

    .line 457
    :cond_7
    if-eqz v13, :cond_8

    .line 458
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    array-length v5, v13

    if-ge v12, v5, :cond_8

    aget-wide v6, v13, v12

    const-wide/16 v10, 0x0

    cmp-long v5, v6, v10

    if-eqz v5, :cond_8

    .line 459
    aget-wide v6, v13, v12

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v5}, Lorg/mapdb/StoreWAL;->freePhysPut(JZ)V

    .line 458
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 465
    .end local v12    # "i":I
    :cond_8
    move-object/from16 v0, v19

    iget v5, v0, Lorg/mapdb/DataOutput2;->pos:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lorg/mapdb/StoreWAL;->physAllocate(IZZ)[J

    move-result-object v20

    .line 467
    .local v20, "physPos":[J
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/mapdb/StoreWAL;->logAllocate([J)[J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v17

    .line 470
    .local v17, "logPos":[J
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/StoreWAL;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 474
    const/4 v5, 0x0

    aget-wide v6, v17, v5

    const-wide v10, 0xffffffffffffL

    and-long/2addr v6, v10

    const-wide/16 v10, 0x1

    sub-long/2addr v6, v10

    const-wide/16 v10, 0x8

    sub-long/2addr v6, v10

    const-wide/16 v10, 0x8

    sub-long/2addr v6, v10

    const-wide/16 v10, 0x1

    sub-long/2addr v6, v10

    const-wide/16 v10, 0x8

    sub-long/2addr v6, v10

    const/4 v5, 0x0

    aget-wide v10, v20, v5

    const-wide/16 v22, 0x2

    or-long v10, v10, v22

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, Lorg/mapdb/StoreWAL;->walIndexVal(JJJ)V

    .line 475
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/StoreWAL;->walPhysArray(Lorg/mapdb/DataOutput2;[J[J)V

    .line 477
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/StoreWAL;->modified:Lorg/mapdb/LongConcurrentHashMap;

    move-object/from16 v0, v17

    invoke-virtual {v5, v8, v9, v0}, Lorg/mapdb/LongConcurrentHashMap;->put(JLjava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 482
    invoke-interface/range {v16 .. v16}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 484
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/StoreWAL;->recycledDataOuts:Ljava/util/Queue;

    move-object/from16 v0, v19

    invoke-interface {v5, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 485
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 470
    .end local v17    # "logPos":[J
    .end local v20    # "physPos":[J
    :catchall_0
    move-exception v5

    :try_start_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/StoreWAL;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 479
    .end local v13    # "linkedRecords":[J
    .end local v14    # "indexVal":J
    .end local v18    # "oldVal":Ljava/lang/Object;, "TA;"
    .end local v19    # "out":Lorg/mapdb/DataOutput2;
    :catch_0
    move-exception v4

    .line 480
    .local v4, "e":Ljava/io/IOException;
    :try_start_5
    new-instance v5, Ljava/io/IOError;

    invoke-direct {v5, v4}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 482
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    invoke-interface/range {v16 .. v16}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
.end method

.method public delete(JLorg/mapdb/Serializer;)V
    .locals 15
    .param p1, "recid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(J",
            "Lorg/mapdb/Serializer",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 490
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    sget-boolean v1, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 491
    :cond_0
    const-wide/32 v2, 0x8080

    const-wide/16 v6, 0x8

    mul-long v6, v6, p1

    add-long v4, v2, v6

    .line 492
    .local v4, "ioRecid":J
    iget-object v1, p0, Lorg/mapdb/StoreWAL;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {v4, v5}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v11

    .line 493
    .local v11, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v11}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 497
    const-wide/16 v8, 0x0

    .line 498
    .local v8, "indexVal":J
    :try_start_0
    invoke-virtual {p0, v4, v5}, Lorg/mapdb/StoreWAL;->getLinkedRecordsFromLog(J)[J

    move-result-object v10

    .line 499
    .local v10, "linkedRecords":[J
    if-nez v10, :cond_2

    .line 500
    iget-object v1, p0, Lorg/mapdb/StoreWAL;->index:Lorg/mapdb/Volume;

    invoke-virtual {v1, v4, v5}, Lorg/mapdb/Volume;->getLong(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v8

    .line 501
    const-wide/16 v2, 0x4

    cmp-long v1, v8, v2

    if-nez v1, :cond_1

    .line 530
    invoke-interface {v11}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 532
    :goto_0
    return-void

    .line 502
    :cond_1
    :try_start_1
    invoke-virtual {p0, v8, v9}, Lorg/mapdb/StoreWAL;->getLinkedRecordsIndexVals(J)[J

    move-result-object v10

    .line 504
    :cond_2
    iget-object v1, p0, Lorg/mapdb/StoreWAL;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 506
    :try_start_2
    invoke-virtual {p0}, Lorg/mapdb/StoreWAL;->checkLogRounding()V

    .line 507
    iget-wide v12, p0, Lorg/mapdb/StoreWAL;->logSize:J

    .line 509
    .local v12, "logPos":J
    iget-wide v2, p0, Lorg/mapdb/StoreWAL;->logSize:J

    const-wide/16 v6, 0x11

    add-long/2addr v2, v6

    iput-wide v2, p0, Lorg/mapdb/StoreWAL;->logSize:J

    .line 510
    iget-object v1, p0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    iget-wide v2, p0, Lorg/mapdb/StoreWAL;->logSize:J

    invoke-virtual {v1, v2, v3}, Lorg/mapdb/Volume;->ensureAvailable(J)V

    .line 511
    const-wide/16 v2, 0x78

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/mapdb/StoreWAL;->longStackPut(JJZ)V

    .line 514
    const/16 v1, 0x30

    ushr-long v2, v8, v1

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-lez v1, :cond_3

    .line 515
    const/4 v1, 0x0

    invoke-virtual {p0, v8, v9, v1}, Lorg/mapdb/StoreWAL;->freePhysPut(JZ)V

    .line 518
    :cond_3
    if-eqz v10, :cond_4

    .line 519
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, v10

    if-ge v0, v1, :cond_4

    aget-wide v2, v10, v0

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-eqz v1, :cond_4

    .line 520
    aget-wide v2, v10, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lorg/mapdb/StoreWAL;->freePhysPut(JZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 519
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 525
    .end local v0    # "i":I
    :cond_4
    :try_start_3
    iget-object v1, p0, Lorg/mapdb/StoreWAL;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 527
    const-wide/16 v6, 0x2

    move-object v1, p0

    move-wide v2, v12

    invoke-virtual/range {v1 .. v7}, Lorg/mapdb/StoreWAL;->walIndexVal(JJJ)V

    .line 528
    iget-object v1, p0, Lorg/mapdb/StoreWAL;->modified:Lorg/mapdb/LongConcurrentHashMap;

    sget-object v2, Lorg/mapdb/StoreWAL;->TOMBSTONE:[J

    invoke-virtual {v1, v4, v5, v2}, Lorg/mapdb/LongConcurrentHashMap;->put(JLjava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 530
    invoke-interface {v11}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 525
    .end local v12    # "logPos":J
    :catchall_0
    move-exception v1

    :try_start_4
    iget-object v2, p0, Lorg/mapdb/StoreWAL;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 530
    .end local v10    # "linkedRecords":[J
    :catchall_1
    move-exception v1

    invoke-interface {v11}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public get(JLorg/mapdb/Serializer;)Ljava/lang/Object;
    .locals 9
    .param p1, "recid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(J",
            "Lorg/mapdb/Serializer",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 315
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    sget-boolean v4, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gtz v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 316
    :cond_0
    const-wide/32 v4, 0x8080

    const-wide/16 v6, 0x8

    mul-long/2addr v6, p1

    add-long v2, v4, v6

    .line 317
    .local v2, "ioRecid":J
    iget-object v4, p0, Lorg/mapdb/StoreWAL;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {v2, v3}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    .line 318
    .local v1, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 320
    :try_start_0
    invoke-virtual {p0, v2, v3, p3}, Lorg/mapdb/StoreWAL;->get2(JLorg/mapdb/Serializer;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 324
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v4

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Ljava/io/IOError;

    invoke-direct {v4, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 324
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method

.method protected get2(JLorg/mapdb/Serializer;)Ljava/lang/Object;
    .locals 17
    .param p1, "ioRecid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(J",
            "Lorg/mapdb/Serializer",
            "<TA;>;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    sget-boolean v10, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v10, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapdb/StoreWAL;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static/range {p1 .. p2}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v11

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v10

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapdb/StoreWAL;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static/range {p1 .. p2}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v11

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->isHeldByCurrentThread()Z

    move-result v10

    if-nez v10, :cond_0

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 334
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapdb/StoreWAL;->modified:Lorg/mapdb/LongConcurrentHashMap;

    move-wide/from16 v0, p1

    invoke-virtual {v10, v0, v1}, Lorg/mapdb/LongConcurrentHashMap;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [J

    .line 336
    .local v7, "r":[J
    if-nez v7, :cond_1

    invoke-super/range {p0 .. p3}, Lorg/mapdb/StoreDirect;->get2(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v10

    .line 363
    :goto_0
    return-object v10

    .line 338
    :cond_1
    sget-object v10, Lorg/mapdb/StoreWAL;->TOMBSTONE:[J

    if-eq v7, v10, :cond_2

    sget-object v10, Lorg/mapdb/StoreWAL;->PREALLOC:[J

    if-eq v7, v10, :cond_2

    array-length v10, v7

    if-nez v10, :cond_3

    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 341
    :cond_3
    array-length v10, v7

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 343
    const/4 v10, 0x0

    aget-wide v10, v7, v10

    const/16 v12, 0x30

    ushr-long/2addr v10, v12

    long-to-int v8, v10

    .line 344
    .local v8, "size":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    const/4 v11, 0x0

    aget-wide v12, v7, v11

    const-wide v14, 0xffffffffffffL

    and-long/2addr v12, v14

    invoke-virtual {v10, v12, v13, v8}, Lorg/mapdb/Volume;->getDataInput(JI)Ljava/io/DataInput;

    move-result-object v5

    check-cast v5, Lorg/mapdb/DataInput2;

    .line 345
    .local v5, "in":Lorg/mapdb/DataInput2;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v8, v5}, Lorg/mapdb/StoreWAL;->deserialize(Lorg/mapdb/Serializer;ILjava/io/DataInput;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_0

    .line 348
    .end local v5    # "in":Lorg/mapdb/DataInput2;
    .end local v8    # "size":I
    :cond_4
    const/4 v9, 0x0

    .line 349
    .local v9, "totalSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v10, v7

    if-ge v4, v10, :cond_6

    .line 350
    array-length v10, v7

    add-int/lit8 v10, v10, -0x1

    if-ne v4, v10, :cond_5

    const/4 v3, 0x0

    .line 351
    .local v3, "c":I
    :goto_2
    aget-wide v10, v7, v4

    const/16 v12, 0x30

    ushr-long/2addr v10, v12

    long-to-int v10, v10

    sub-int/2addr v10, v3

    add-int/2addr v9, v10

    .line 349
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 350
    .end local v3    # "c":I
    :cond_5
    const/16 v3, 0x8

    goto :goto_2

    .line 353
    :cond_6
    new-array v2, v9, [B

    .line 354
    .local v2, "b":[B
    const/4 v6, 0x0

    .line 355
    .local v6, "pos":I
    const/4 v4, 0x0

    :goto_3
    array-length v10, v7

    if-ge v4, v10, :cond_8

    .line 356
    array-length v10, v7

    add-int/lit8 v10, v10, -0x1

    if-ne v4, v10, :cond_7

    const/4 v3, 0x0

    .line 357
    .restart local v3    # "c":I
    :goto_4
    aget-wide v10, v7, v4

    const/16 v12, 0x30

    ushr-long/2addr v10, v12

    long-to-int v10, v10

    sub-int v8, v10, v3

    .line 358
    .restart local v8    # "size":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    aget-wide v12, v7, v4

    const-wide v14, 0xffffffffffffL

    and-long/2addr v12, v14

    int-to-long v14, v3

    add-long/2addr v12, v14

    invoke-virtual {v10, v12, v13, v8}, Lorg/mapdb/Volume;->getDataInput(JI)Ljava/io/DataInput;

    move-result-object v10

    invoke-interface {v10, v2, v6, v8}, Ljava/io/DataInput;->readFully([BII)V

    .line 359
    add-int/2addr v6, v8

    .line 355
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 356
    .end local v3    # "c":I
    .end local v8    # "size":I
    :cond_7
    const/16 v3, 0x8

    goto :goto_4

    .line 361
    :cond_8
    if-eq v6, v9, :cond_9

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 363
    :cond_9
    new-instance v10, Lorg/mapdb/DataInput2;

    invoke-direct {v10, v2}, Lorg/mapdb/DataInput2;-><init>([B)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v9, v10}, Lorg/mapdb/StoreWAL;->deserialize(Lorg/mapdb/Serializer;ILjava/io/DataInput;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0
.end method

.method protected getLinkedRecordsFromLog(J)[J
    .locals 11
    .param p1, "ioRecid"    # J

    .prologue
    .line 871
    sget-boolean v5, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/mapdb/StoreWAL;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {p1, p2}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->isHeldByCurrentThread()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 872
    :cond_0
    iget-object v5, p0, Lorg/mapdb/StoreWAL;->modified:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v5, p1, p2}, Lorg/mapdb/LongConcurrentHashMap;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    .line 873
    .local v4, "ret0":[J
    sget-object v5, Lorg/mapdb/StoreWAL;->PREALLOC:[J

    if-ne v4, v5, :cond_1

    .line 884
    .end local v4    # "ret0":[J
    :goto_0
    return-object v4

    .line 875
    .restart local v4    # "ret0":[J
    :cond_1
    if-eqz v4, :cond_3

    sget-object v5, Lorg/mapdb/StoreWAL;->TOMBSTONE:[J

    if-eq v4, v5, :cond_3

    .line 876
    array-length v5, v4

    new-array v1, v5, [J

    .line 877
    .local v1, "ret":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_2

    .line 878
    aget-wide v6, v4, v0

    const-wide v8, 0xffffffffffffL

    and-long v2, v6, v8

    .line 880
    .local v2, "offset":J
    iget-object v5, p0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    const-wide/16 v6, 0x8

    sub-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v6

    aput-wide v6, v1, v0

    .line 877
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2    # "offset":J
    :cond_2
    move-object v4, v1

    .line 882
    goto :goto_0

    .line 884
    .end local v0    # "i":I
    .end local v1    # "ret":[J
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected indexHeaderChecksumUncommited()J
    .locals 8

    .prologue
    .line 628
    const-wide/16 v4, 0x0

    .line 630
    .local v4, "ret":J
    const/4 v2, 0x0

    .local v2, "offset":I
    :goto_0
    const v3, 0x8080

    if-ge v2, v3, :cond_4

    .line 631
    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 630
    :goto_1
    add-int/lit8 v2, v2, 0x8

    goto :goto_0

    .line 634
    :cond_0
    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 635
    iget-wide v0, p0, Lorg/mapdb/StoreWAL;->indexSize:J

    .line 643
    .local v0, "indexVal":J
    :goto_2
    int-to-long v6, v2

    or-long/2addr v6, v0

    invoke-static {v6, v7}, Lorg/mapdb/LongHashMap;->longHash(J)I

    move-result v3

    int-to-long v6, v3

    or-long/2addr v6, v0

    or-long/2addr v4, v6

    goto :goto_1

    .line 636
    .end local v0    # "indexVal":J
    :cond_1
    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    .line 637
    iget-wide v0, p0, Lorg/mapdb/StoreWAL;->physSize:J

    .restart local v0    # "indexVal":J
    goto :goto_2

    .line 638
    .end local v0    # "indexVal":J
    :cond_2
    const/16 v3, 0x18

    if-ne v2, v3, :cond_3

    .line 639
    iget-wide v0, p0, Lorg/mapdb/StoreWAL;->freeSize:J

    .restart local v0    # "indexVal":J
    goto :goto_2

    .line 641
    .end local v0    # "indexVal":J
    :cond_3
    iget-object v3, p0, Lorg/mapdb/StoreWAL;->indexVals:[J

    div-int/lit8 v6, v2, 0x8

    aget-wide v0, v3, v6

    .restart local v0    # "indexVal":J
    goto :goto_2

    .line 646
    .end local v0    # "indexVal":J
    :cond_4
    return-wide v4
.end method

.method protected logAllocate([J)[J
    .locals 9
    .param p1, "physPos"    # [J

    .prologue
    const/16 v8, 0x30

    .line 286
    sget-boolean v4, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/mapdb/StoreWAL;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 287
    :cond_0
    iget-wide v4, p0, Lorg/mapdb/StoreWAL;->logSize:J

    const-wide/16 v6, 0x11

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/mapdb/StoreWAL;->logSize:J

    .line 289
    array-length v4, p1

    new-array v1, v4, [J

    .line 290
    .local v1, "ret":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    .line 291
    aget-wide v4, p1, v0

    ushr-long v2, v4, v8

    .line 293
    .local v2, "size":J
    iget-wide v4, p0, Lorg/mapdb/StoreWAL;->logSize:J

    const-wide/16 v6, 0x9

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/mapdb/StoreWAL;->logSize:J

    .line 294
    shl-long v4, v2, v8

    iget-wide v6, p0, Lorg/mapdb/StoreWAL;->logSize:J

    or-long/2addr v4, v6

    aput-wide v4, v1, v0

    .line 296
    iget-wide v4, p0, Lorg/mapdb/StoreWAL;->logSize:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lorg/mapdb/StoreWAL;->logSize:J

    .line 297
    invoke-virtual {p0}, Lorg/mapdb/StoreWAL;->checkLogRounding()V

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    .end local v2    # "size":J
    :cond_1
    iget-object v4, p0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    iget-wide v6, p0, Lorg/mapdb/StoreWAL;->logSize:J

    invoke-virtual {v4, v6, v7}, Lorg/mapdb/Volume;->ensureAvailable(J)V

    .line 300
    return-object v1
.end method

.method protected logChecksumAdd(I)V
    .locals 3
    .param p1, "cs"    # I

    .prologue
    .line 1116
    :cond_0
    iget-object v1, p0, Lorg/mapdb/StoreWAL;->logChecksum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1117
    .local v0, "old":I
    iget-object v1, p0, Lorg/mapdb/StoreWAL;->logChecksum:Ljava/util/concurrent/atomic/AtomicInteger;

    or-int v2, v0, p1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1118
    return-void
.end method

.method protected logDirty()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    .line 616
    iget-wide v6, p0, Lorg/mapdb/StoreWAL;->logSize:J

    const-wide/16 v8, 0x10

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/mapdb/StoreWAL;->longStackPages:Lorg/mapdb/LongMap;

    invoke-virtual {v5}, Lorg/mapdb/LongMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/mapdb/StoreWAL;->modified:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v5}, Lorg/mapdb/LongConcurrentHashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 624
    :cond_0
    :goto_0
    return v4

    .line 619
    :cond_1
    iget-object v0, p0, Lorg/mapdb/StoreWAL;->indexValsModified:[Z

    .local v0, "arr$":[Z
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-boolean v1, v0, v2

    .line 620
    .local v1, "b":Z
    if-nez v1, :cond_0

    .line 619
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 624
    .end local v1    # "b":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected logReset()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x10

    .line 139
    sget-boolean v0, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mapdb/StoreWAL;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 140
    :cond_0
    iget-object v0, p0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    invoke-virtual {v0, v4, v5}, Lorg/mapdb/Volume;->truncate(J)V

    .line 141
    iget-object v0, p0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    invoke-virtual {v0, v4, v5}, Lorg/mapdb/Volume;->ensureAvailable(J)V

    .line 142
    iget-object v0, p0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    const v1, 0xdf6459a

    invoke-virtual {v0, v6, v7, v1}, Lorg/mapdb/Volume;->putInt(JI)V

    .line 143
    iget-object v0, p0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    const-wide/16 v2, 0x4

    const/16 v1, 0x2710

    invoke-virtual {v0, v2, v3, v1}, Lorg/mapdb/Volume;->putUnsignedShort(JI)V

    .line 144
    iget-object v0, p0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    const-wide/16 v2, 0x6

    invoke-virtual {p0}, Lorg/mapdb/StoreWAL;->expectedMasks()I

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lorg/mapdb/Volume;->putUnsignedShort(JI)V

    .line 145
    iget-object v0, p0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v6, v7}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 146
    iput-wide v4, p0, Lorg/mapdb/StoreWAL;->logSize:J

    .line 147
    return-void
.end method

.method protected longStackGetPage(J)[B
    .locals 9
    .param p1, "offset"    # J

    .prologue
    .line 1040
    sget-boolean v3, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    const-wide/16 v4, 0x10

    cmp-long v3, p1, v4

    if-gez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1041
    :cond_0
    sget-boolean v3, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    const/16 v3, 0x30

    ushr-long v4, p1, v3

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1043
    :cond_1
    iget-object v3, p0, Lorg/mapdb/StoreWAL;->longStackPages:Lorg/mapdb/LongMap;

    invoke-virtual {v3, p1, p2}, Lorg/mapdb/LongMap;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 1044
    .local v1, "ret":[B
    if-nez v1, :cond_3

    .line 1046
    iget-object v3, p0, Lorg/mapdb/StoreWAL;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v3, p1, p2}, Lorg/mapdb/Volume;->getUnsignedShort(J)I

    move-result v2

    .line 1047
    .local v2, "size":I
    sget-boolean v3, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    const/16 v3, 0xe

    if-ge v2, v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1048
    :cond_2
    new-array v1, v2, [B

    .line 1050
    :try_start_0
    iget-object v3, p0, Lorg/mapdb/StoreWAL;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v3, p1, p2, v2}, Lorg/mapdb/Volume;->getDataInput(JI)Ljava/io/DataInput;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/io/DataInput;->readFully([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1056
    iget-object v3, p0, Lorg/mapdb/StoreWAL;->longStackPages:Lorg/mapdb/LongMap;

    invoke-virtual {v3, p1, p2, v1}, Lorg/mapdb/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1059
    .end local v2    # "size":I
    :cond_3
    return-object v1

    .line 1051
    .restart local v2    # "size":I
    :catch_0
    move-exception v0

    .line 1052
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/io/IOError;

    invoke-direct {v3, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected longStackPut(JJZ)V
    .locals 23
    .param p1, "ioList"    # J
    .param p3, "offset"    # J
    .param p5, "recursive"    # Z

    .prologue
    .line 948
    sget-boolean v16, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v16

    if-nez v16, :cond_0

    new-instance v16, Ljava/lang/AssertionError;

    invoke-direct/range {v16 .. v16}, Ljava/lang/AssertionError;-><init>()V

    throw v16

    .line 949
    :cond_0
    sget-boolean v16, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v16, :cond_1

    const/16 v16, 0x30

    ushr-long v16, p3, v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_1

    new-instance v16, Ljava/lang/AssertionError;

    invoke-direct/range {v16 .. v16}, Ljava/lang/AssertionError;-><init>()V

    throw v16

    .line 950
    :cond_1
    sget-boolean v16, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v16, :cond_3

    const-wide/16 v16, 0x78

    cmp-long v16, p1, v16

    if-ltz v16, :cond_2

    const-wide/32 v16, 0x8080

    cmp-long v16, p1, v16

    if-lez v16, :cond_3

    :cond_2
    new-instance v16, Ljava/lang/AssertionError;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "wrong ioList: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v16

    .line 952
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->indexVals:[J

    move-object/from16 v16, v0

    move-wide/from16 v0, p1

    long-to-int v0, v0

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x8

    aget-wide v4, v16, v17

    .line 953
    .local v4, "dataOffset":J
    const/16 v16, 0x30

    ushr-long v12, v4, v16

    .line 954
    .local v12, "pos":J
    const-wide v16, 0xfffffffffff0L

    and-long v4, v4, v16

    .line 956
    const-wide/16 v16, 0x0

    cmp-long v16, v4, v16

    if-nez v16, :cond_7

    .line 958
    const/16 v16, 0x4d0

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/StoreWAL;->freePhysTake(IZZ)J

    move-result-wide v16

    const-wide v18, 0xfffffffffff0L

    and-long v6, v16, v18

    .line 959
    .local v6, "listPhysid":J
    const-wide/16 v16, 0x0

    cmp-long v16, v6, v16

    if-nez v16, :cond_4

    new-instance v16, Ljava/lang/AssertionError;

    invoke-direct/range {v16 .. v16}, Ljava/lang/AssertionError;-><init>()V

    throw v16

    .line 960
    :cond_4
    sget-boolean v16, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v16, :cond_5

    const/16 v16, 0x30

    ushr-long v16, v6, v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_5

    new-instance v16, Ljava/lang/AssertionError;

    invoke-direct/range {v16 .. v16}, Ljava/lang/AssertionError;-><init>()V

    throw v16

    .line 963
    :cond_5
    const/16 v16, 0x4d0

    move/from16 v0, v16

    new-array v9, v0, [B

    .line 964
    .local v9, "page":[B
    const/16 v16, 0x0

    array-length v0, v9

    move/from16 v17, v0

    ushr-int/lit8 v17, v17, 0x8

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v9, v16

    .line 965
    const/16 v16, 0x1

    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v9, v16

    .line 966
    const/16 v16, 0x2

    const-wide/16 v18, 0x0

    move/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-static {v9, v0, v1, v2}, Lorg/mapdb/StoreWAL;->longStackPutSixLong([BIJ)V

    .line 968
    const/16 v16, 0x8

    move/from16 v0, v16

    move-wide/from16 v1, p3

    invoke-static {v9, v0, v1, v2}, Lorg/mapdb/StoreWAL;->longStackPutSixLong([BIJ)V

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->indexVals:[J

    move-object/from16 v16, v0

    move-wide/from16 v0, p1

    long-to-int v0, v0

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x8

    const-wide/high16 v18, 0x8000000000000L

    or-long v18, v18, v6

    aput-wide v18, v16, v17

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->indexValsModified:[Z

    move-object/from16 v16, v0

    move-wide/from16 v0, p1

    long-to-int v0, v0

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x8

    const/16 v18, 0x1

    aput-boolean v18, v16, v17

    .line 972
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->maxUsedIoList:J

    move-wide/from16 v16, v0

    cmp-long v16, v16, p1

    if-gtz v16, :cond_6

    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mapdb/StoreWAL;->maxUsedIoList:J

    .line 973
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->longStackPages:Lorg/mapdb/LongMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7, v9}, Lorg/mapdb/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1014
    .end local v6    # "listPhysid":J
    :goto_0
    return-void

    .line 975
    .end local v9    # "page":[B
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/mapdb/StoreWAL;->longStackGetPage(J)[B

    move-result-object v9

    .line 976
    .restart local v9    # "page":[B
    const/16 v16, 0x0

    aget-byte v16, v9, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x8

    const/16 v17, 0x1

    aget-byte v17, v9, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    or-int v16, v16, v17

    move/from16 v0, v16

    int-to-long v14, v0

    .line 978
    .local v14, "size":J
    sget-boolean v16, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v16, :cond_8

    const-wide/16 v16, 0x6

    add-long v16, v16, v12

    cmp-long v16, v16, v14

    if-lez v16, :cond_8

    new-instance v16, Ljava/lang/AssertionError;

    invoke-direct/range {v16 .. v16}, Ljava/lang/AssertionError;-><init>()V

    throw v16

    .line 979
    :cond_8
    const-wide/16 v16, 0x6

    add-long v16, v16, v12

    cmp-long v16, v16, v14

    if-nez v16, :cond_c

    .line 980
    const-wide/16 v10, 0x4d0

    .line 981
    .local v10, "newPageSize":J
    const-wide/16 v16, 0x4d0

    invoke-static/range {v16 .. v17}, Lorg/mapdb/StoreWAL;->size2ListIoRecid(J)J

    move-result-wide v16

    cmp-long v16, p1, v16

    if-nez v16, :cond_9

    .line 983
    const-wide/16 v10, 0x500

    .line 986
    :cond_9
    long-to-int v0, v10

    move/from16 v16, v0

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/StoreWAL;->freePhysTake(IZZ)J

    move-result-wide v16

    const-wide v18, 0xfffffffffff0L

    and-long v6, v16, v18

    .line 987
    .restart local v6    # "listPhysid":J
    const-wide/16 v16, 0x0

    cmp-long v16, v6, v16

    if-nez v16, :cond_a

    new-instance v16, Ljava/lang/AssertionError;

    invoke-direct/range {v16 .. v16}, Ljava/lang/AssertionError;-><init>()V

    throw v16

    .line 989
    :cond_a
    long-to-int v0, v10

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v8, v0, [B

    .line 992
    .local v8, "newPage":[B
    const/16 v16, 0x0

    const-wide/16 v18, 0xff

    const/16 v17, 0x8

    ushr-long v20, v10, v17

    and-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v8, v16

    .line 993
    const/16 v16, 0x1

    const-wide/16 v18, 0xff

    and-long v18, v18, v10

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v8, v16

    .line 995
    const/16 v16, 0x2

    const-wide v18, 0xfffffffffff0L

    and-long v18, v18, v4

    move/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-static {v8, v0, v1, v2}, Lorg/mapdb/StoreWAL;->longStackPutSixLong([BIJ)V

    .line 999
    const/16 v16, 0x8

    move/from16 v0, v16

    move-wide/from16 v1, p3

    invoke-static {v8, v0, v1, v2}, Lorg/mapdb/StoreWAL;->longStackPutSixLong([BIJ)V

    .line 1000
    sget-boolean v16, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v16, :cond_b

    const/16 v16, 0x30

    ushr-long v16, v6, v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_b

    new-instance v16, Ljava/lang/AssertionError;

    invoke-direct/range {v16 .. v16}, Ljava/lang/AssertionError;-><init>()V

    throw v16

    .line 1001
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->longStackPages:Lorg/mapdb/LongMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7, v8}, Lorg/mapdb/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->indexVals:[J

    move-object/from16 v16, v0

    move-wide/from16 v0, p1

    long-to-int v0, v0

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x8

    const-wide/high16 v18, 0x8000000000000L

    or-long v18, v18, v6

    aput-wide v18, v16, v17

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->indexValsModified:[Z

    move-object/from16 v16, v0

    move-wide/from16 v0, p1

    long-to-int v0, v0

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x8

    const/16 v18, 0x1

    aput-boolean v18, v16, v17

    goto/16 :goto_0

    .line 1008
    .end local v6    # "listPhysid":J
    .end local v8    # "newPage":[B
    .end local v10    # "newPageSize":J
    :cond_c
    const-wide/16 v16, 0x6

    add-long v12, v12, v16

    .line 1009
    long-to-int v0, v12

    move/from16 v16, v0

    move/from16 v0, v16

    move-wide/from16 v1, p3

    invoke-static {v9, v0, v1, v2}, Lorg/mapdb/StoreWAL;->longStackPutSixLong([BIJ)V

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->indexVals:[J

    move-object/from16 v16, v0

    move-wide/from16 v0, p1

    long-to-int v0, v0

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x8

    const/16 v18, 0x30

    shl-long v18, v12, v18

    or-long v18, v18, v4

    aput-wide v18, v16, v17

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->indexValsModified:[Z

    move-object/from16 v16, v0

    move-wide/from16 v0, p1

    long-to-int v0, v0

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x8

    const/16 v18, 0x1

    aput-boolean v18, v16, v17

    goto/16 :goto_0
.end method

.method protected longStackTake(JZ)J
    .locals 23
    .param p1, "ioList"    # J
    .param p3, "recursive"    # Z

    .prologue
    .line 889
    sget-boolean v18, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v18

    if-nez v18, :cond_0

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 890
    :cond_0
    sget-boolean v18, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v18, :cond_2

    const-wide/16 v18, 0x78

    cmp-long v18, p1, v18

    if-ltz v18, :cond_1

    const-wide/32 v18, 0x8080

    cmp-long v18, p1, v18

    if-ltz v18, :cond_2

    :cond_1
    new-instance v18, Ljava/lang/AssertionError;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "wrong ioList: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v18

    .line 893
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->indexVals:[J

    move-object/from16 v18, v0

    move-wide/from16 v0, p1

    long-to-int v0, v0

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x8

    aget-wide v4, v18, v19

    .line 894
    .local v4, "dataOffset":J
    const-wide/16 v18, 0x0

    cmp-long v18, v4, v18

    if-nez v18, :cond_3

    .line 895
    const-wide/16 v14, 0x0

    .line 942
    :goto_0
    return-wide v14

    .line 897
    :cond_3
    const/16 v18, 0x30

    ushr-long v12, v4, v18

    .line 898
    .local v12, "pos":J
    const-wide v18, 0xfffffffffff0L

    and-long v4, v4, v18

    .line 899
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/mapdb/StoreWAL;->longStackGetPage(J)[B

    move-result-object v9

    .line 901
    .local v9, "page":[B
    const-wide/16 v18, 0x8

    cmp-long v18, v12, v18

    if-gez v18, :cond_4

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 903
    :cond_4
    long-to-int v0, v12

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v9, v0}, Lorg/mapdb/StoreWAL;->longStackGetSixLong([BI)J

    move-result-wide v14

    .line 906
    .local v14, "ret":J
    const-wide/16 v18, 0x8

    cmp-long v18, v12, v18

    if-nez v18, :cond_a

    .line 908
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-static {v9, v0}, Lorg/mapdb/StoreWAL;->longStackGetSixLong([BI)J

    move-result-wide v6

    .line 909
    .local v6, "next":J
    const/16 v18, 0x0

    aget-byte v18, v9, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x8

    const/16 v19, 0x1

    aget-byte v19, v9, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    or-int v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 910
    .local v16, "size":J
    sget-boolean v18, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v18, :cond_5

    array-length v0, v9

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v18, v16, v18

    if-eqz v18, :cond_5

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 911
    :cond_5
    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-eqz v18, :cond_8

    .line 913
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lorg/mapdb/StoreWAL;->longStackGetPage(J)[B

    move-result-object v8

    .line 914
    .local v8, "nextPage":[B
    const/16 v18, 0x0

    aget-byte v18, v8, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x8

    const/16 v19, 0x1

    aget-byte v19, v8, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    or-int v18, v18, v19

    move/from16 v0, v18

    int-to-long v10, v0

    .line 915
    .local v10, "nextSize":J
    sget-boolean v18, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v18, :cond_6

    const-wide/16 v18, 0x8

    sub-long v18, v10, v18

    const-wide/16 v20, 0x6

    rem-long v18, v18, v20

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-eqz v18, :cond_6

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 916
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->indexVals:[J

    move-object/from16 v18, v0

    move-wide/from16 v0, p1

    long-to-int v0, v0

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x8

    const-wide/16 v20, 0x6

    sub-long v20, v10, v20

    const/16 v22, 0x30

    shl-long v20, v20, v22

    or-long v20, v20, v6

    aput-wide v20, v18, v19

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->indexValsModified:[Z

    move-object/from16 v18, v0

    move-wide/from16 v0, p1

    long-to-int v0, v0

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x8

    const/16 v20, 0x1

    aput-boolean v20, v18, v19

    .line 930
    .end local v8    # "nextPage":[B
    .end local v10    # "nextSize":J
    :cond_7
    const/16 v18, 0x30

    shl-long v18, v16, v18

    or-long v18, v18, v4

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/StoreWAL;->freePhysPut(JZ)V

    .line 931
    sget-boolean v18, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v18, :cond_9

    const/16 v18, 0x30

    ushr-long v18, v4, v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-eqz v18, :cond_9

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 920
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->indexVals:[J

    move-object/from16 v18, v0

    move-wide/from16 v0, p1

    long-to-int v0, v0

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x8

    const-wide/16 v20, 0x0

    aput-wide v20, v18, v19

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->indexValsModified:[Z

    move-object/from16 v18, v0

    move-wide/from16 v0, p1

    long-to-int v0, v0

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x8

    const/16 v20, 0x1

    aput-boolean v20, v18, v19

    .line 922
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->maxUsedIoList:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, p1

    if-nez v18, :cond_7

    .line 924
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->indexVals:[J

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->maxUsedIoList:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x8

    aget-wide v18, v18, v19

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-nez v18, :cond_7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->maxUsedIoList:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x78

    cmp-long v18, v18, v20

    if-lez v18, :cond_7

    .line 925
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->maxUsedIoList:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x8

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mapdb/StoreWAL;->maxUsedIoList:J

    goto :goto_1

    .line 932
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->longStackPages:Lorg/mapdb/LongMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lorg/mapdb/LongMap;->remove(J)Ljava/lang/Object;

    goto/16 :goto_0

    .line 935
    .end local v6    # "next":J
    .end local v16    # "size":J
    :cond_a
    const-wide/16 v18, 0x6

    sub-long v12, v12, v18

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->indexVals:[J

    move-object/from16 v18, v0

    move-wide/from16 v0, p1

    long-to-int v0, v0

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x8

    const/16 v20, 0x30

    shl-long v20, v12, v20

    or-long v20, v20, v4

    aput-wide v20, v18, v19

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->indexValsModified:[Z

    move-object/from16 v18, v0

    move-wide/from16 v0, p1

    long-to-int v0, v0

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x8

    const/16 v20, 0x1

    aput-boolean v20, v18, v19

    goto/16 :goto_0
.end method

.method public preallocate()J
    .locals 12

    .prologue
    .line 155
    iget-object v1, p0, Lorg/mapdb/StoreWAL;->newRecidLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 157
    :try_start_0
    iget-object v1, p0, Lorg/mapdb/StoreWAL;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 159
    :try_start_1
    invoke-virtual {p0}, Lorg/mapdb/StoreWAL;->checkLogRounding()V

    .line 160
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/mapdb/StoreWAL;->freeIoRecidTake(Z)J

    move-result-wide v4

    .line 161
    .local v4, "ioRecid":J
    iget-wide v2, p0, Lorg/mapdb/StoreWAL;->logSize:J

    .line 163
    .local v2, "logPos":J
    iget-wide v6, p0, Lorg/mapdb/StoreWAL;->logSize:J

    const-wide/16 v10, 0x11

    add-long/2addr v6, v10

    iput-wide v6, p0, Lorg/mapdb/StoreWAL;->logSize:J

    .line 164
    iget-object v1, p0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    iget-wide v6, p0, Lorg/mapdb/StoreWAL;->logSize:J

    invoke-virtual {v1, v6, v7}, Lorg/mapdb/Volume;->ensureAvailable(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    :try_start_2
    iget-object v1, p0, Lorg/mapdb/StoreWAL;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 169
    iget-object v1, p0, Lorg/mapdb/StoreWAL;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {v4, v5}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v6

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 170
    .local v0, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 174
    const-wide/16 v6, 0x4

    move-object v1, p0

    :try_start_3
    invoke-virtual/range {v1 .. v7}, Lorg/mapdb/StoreWAL;->walIndexVal(JJJ)V

    .line 175
    iget-object v1, p0, Lorg/mapdb/StoreWAL;->modified:Lorg/mapdb/LongConcurrentHashMap;

    sget-object v6, Lorg/mapdb/StoreWAL;->PREALLOC:[J

    invoke-virtual {v1, v4, v5, v6}, Lorg/mapdb/LongConcurrentHashMap;->put(JLjava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 177
    :try_start_4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 180
    iget-object v1, p0, Lorg/mapdb/StoreWAL;->newRecidLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 183
    const-wide/32 v6, 0x8080

    sub-long v6, v4, v6

    const-wide/16 v10, 0x8

    div-long v8, v6, v10

    .line 184
    .local v8, "recid":J
    sget-boolean v1, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v1, v8, v6

    if-gtz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 167
    .end local v0    # "lock":Ljava/util/concurrent/locks/Lock;
    .end local v2    # "logPos":J
    .end local v4    # "ioRecid":J
    .end local v8    # "recid":J
    :catchall_0
    move-exception v1

    :try_start_5
    iget-object v6, p0, Lorg/mapdb/StoreWAL;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 180
    :catchall_1
    move-exception v1

    iget-object v6, p0, Lorg/mapdb/StoreWAL;->newRecidLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1

    .line 177
    .restart local v0    # "lock":Ljava/util/concurrent/locks/Lock;
    .restart local v2    # "logPos":J
    .restart local v4    # "ioRecid":J
    :catchall_2
    move-exception v1

    :try_start_6
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 185
    .restart local v8    # "recid":J
    :cond_0
    return-wide v8
.end method

.method public preallocate([J)V
    .locals 4
    .param p1, "recids"    # [J

    .prologue
    .line 191
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 192
    invoke-virtual {p0}, Lorg/mapdb/StoreWAL;->preallocate()J

    move-result-wide v2

    aput-wide v2, p1, v0

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;",
            "Lorg/mapdb/Serializer",
            "<TA;>;)J"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "value":Ljava/lang/Object;, "TA;"
    .local p2, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    sget-boolean v3, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 200
    :cond_0
    invoke-virtual/range {p0 .. p2}, Lorg/mapdb/StoreWAL;->serialize(Ljava/lang/Object;Lorg/mapdb/Serializer;)Lorg/mapdb/DataOutput2;

    move-result-object v11

    .line 206
    .local v11, "out":Lorg/mapdb/DataOutput2;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreWAL;->newRecidLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 209
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreWAL;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 211
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/mapdb/StoreWAL;->freeIoRecidTake(Z)J

    move-result-wide v6

    .line 213
    .local v6, "ioRecid":J
    iget v3, v11, Lorg/mapdb/DataOutput2;->pos:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lorg/mapdb/StoreWAL;->physAllocate(IZZ)[J

    move-result-object v12

    .line 215
    .local v12, "physPos":[J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/mapdb/StoreWAL;->logAllocate([J)[J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 218
    .local v10, "logPos":[J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreWAL;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 221
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreWAL;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {v6, v7}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    .line 222
    .local v2, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 225
    const/4 v3, 0x0

    :try_start_3
    aget-wide v4, v10, v3

    const-wide v8, 0xffffffffffffL

    and-long/2addr v4, v8

    const-wide/16 v8, 0x1

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x8

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x8

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x1

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x8

    sub-long/2addr v4, v8

    const/4 v3, 0x0

    aget-wide v8, v12, v3

    const-wide/16 v16, 0x2

    or-long v8, v8, v16

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lorg/mapdb/StoreWAL;->walIndexVal(JJJ)V

    .line 226
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v10}, Lorg/mapdb/StoreWAL;->walPhysArray(Lorg/mapdb/DataOutput2;[J[J)V

    .line 228
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreWAL;->modified:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v3, v6, v7, v10}, Lorg/mapdb/LongConcurrentHashMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 229
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreWAL;->recycledDataOuts:Ljava/util/Queue;

    invoke-interface {v3, v11}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 231
    :try_start_4
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 234
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreWAL;->newRecidLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 237
    const-wide/32 v4, 0x8080

    sub-long v4, v6, v4

    const-wide/16 v8, 0x8

    div-long v14, v4, v8

    .line 238
    .local v14, "recid":J
    sget-boolean v3, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v3, v14, v4

    if-gtz v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 218
    .end local v2    # "lock":Ljava/util/concurrent/locks/Lock;
    .end local v6    # "ioRecid":J
    .end local v10    # "logPos":[J
    .end local v12    # "physPos":[J
    .end local v14    # "recid":J
    :catchall_0
    move-exception v3

    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapdb/StoreWAL;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 234
    :catchall_1
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapdb/StoreWAL;->newRecidLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v3

    .line 231
    .restart local v2    # "lock":Ljava/util/concurrent/locks/Lock;
    .restart local v6    # "ioRecid":J
    .restart local v10    # "logPos":[J
    .restart local v12    # "physPos":[J
    :catchall_2
    move-exception v3

    :try_start_6
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 239
    .restart local v14    # "recid":J
    :cond_1
    return-wide v14
.end method

.method protected reloadIndexFile()V
    .locals 9

    .prologue
    const-wide/16 v4, 0x10

    const/4 v8, 0x0

    const-wide/16 v6, 0x8

    .line 119
    sget-boolean v1, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/mapdb/StoreWAL;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 120
    :cond_0
    iput-wide v4, p0, Lorg/mapdb/StoreWAL;->logSize:J

    .line 121
    iget-object v1, p0, Lorg/mapdb/StoreWAL;->modified:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v1}, Lorg/mapdb/LongConcurrentHashMap;->clear()V

    .line 122
    iget-object v1, p0, Lorg/mapdb/StoreWAL;->longStackPages:Lorg/mapdb/LongMap;

    invoke-virtual {v1}, Lorg/mapdb/LongMap;->clear()V

    .line 123
    iget-object v1, p0, Lorg/mapdb/StoreWAL;->index:Lorg/mapdb/Volume;

    invoke-virtual {v1, v6, v7}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/mapdb/StoreWAL;->indexSize:J

    .line 124
    iget-object v1, p0, Lorg/mapdb/StoreWAL;->index:Lorg/mapdb/Volume;

    invoke-virtual {v1, v4, v5}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/mapdb/StoreWAL;->physSize:J

    .line 125
    iget-object v1, p0, Lorg/mapdb/StoreWAL;->index:Lorg/mapdb/Volume;

    const-wide/16 v2, 0x18

    invoke-virtual {v1, v2, v3}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/mapdb/StoreWAL;->freeSize:J

    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const v1, 0x8080

    if-ge v0, v1, :cond_1

    .line 127
    iget-object v1, p0, Lorg/mapdb/StoreWAL;->indexVals:[J

    div-int/lit8 v2, v0, 0x8

    iget-object v3, p0, Lorg/mapdb/StoreWAL;->index:Lorg/mapdb/Volume;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v4

    aput-wide v4, v1, v2

    .line 126
    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 129
    :cond_1
    iget-object v1, p0, Lorg/mapdb/StoreWAL;->indexValsModified:[Z

    invoke-static {v1, v8}, Ljava/util/Arrays;->fill([ZZ)V

    .line 131
    iget-object v1, p0, Lorg/mapdb/StoreWAL;->logChecksum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 133
    const-wide/32 v2, 0x8078

    iput-wide v2, p0, Lorg/mapdb/StoreWAL;->maxUsedIoList:J

    .line 134
    :goto_1
    iget-object v1, p0, Lorg/mapdb/StoreWAL;->indexVals:[J

    iget-wide v2, p0, Lorg/mapdb/StoreWAL;->maxUsedIoList:J

    div-long/2addr v2, v6

    long-to-int v2, v2

    aget-wide v2, v1, v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    iget-wide v2, p0, Lorg/mapdb/StoreWAL;->maxUsedIoList:J

    const-wide/16 v4, 0x78

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 135
    iget-wide v2, p0, Lorg/mapdb/StoreWAL;->maxUsedIoList:J

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lorg/mapdb/StoreWAL;->maxUsedIoList:J

    goto :goto_1

    .line 136
    :cond_2
    return-void
.end method

.method protected replayLogFile()V
    .locals 20

    .prologue
    .line 777
    sget-boolean v12, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/StoreWAL;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v12

    if-nez v12, :cond_0

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 779
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/mapdb/StoreWAL;->readOnly:Z

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    if-nez v12, :cond_2

    .line 853
    :cond_1
    :goto_0
    return-void

    .line 782
    :cond_2
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/mapdb/StoreWAL;->logSize:J

    .line 786
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    invoke-virtual {v12}, Lorg/mapdb/Volume;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    const-wide/16 v14, 0x0

    invoke-virtual {v12, v14, v15}, Lorg/mapdb/Volume;->getInt(J)I

    move-result v12

    const v13, 0xdf6459a

    if-ne v12, v13, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    const-wide/16 v14, 0x4

    invoke-virtual {v12, v14, v15}, Lorg/mapdb/Volume;->getUnsignedShort(J)I

    move-result v12

    const/16 v13, 0x2710

    if-gt v12, v13, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    const-wide/16 v14, 0x8

    invoke-virtual {v12, v14, v15}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v12

    const-wide v14, 0x10394246d7fa15L

    cmp-long v12, v12, v14

    if-nez v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    const-wide/16 v14, 0x6

    invoke-virtual {v12, v14, v15}, Lorg/mapdb/Volume;->getUnsignedShort(J)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/StoreWAL;->expectedMasks()I

    move-result v13

    if-eq v12, v13, :cond_4

    .line 790
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/StoreWAL;->logReset()V

    goto :goto_0

    .line 796
    :cond_4
    const-wide/16 v12, 0x10

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/mapdb/StoreWAL;->logSize:J

    .line 797
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/mapdb/StoreWAL;->logSize:J

    invoke-virtual {v12, v14, v15}, Lorg/mapdb/Volume;->getByte(J)B

    move-result v6

    .line 798
    .local v6, "ins":B
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/mapdb/StoreWAL;->logSize:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/mapdb/StoreWAL;->logSize:J

    .line 800
    :goto_1
    const/16 v12, 0x6f

    if-eq v6, v12, :cond_9

    .line 801
    const/16 v12, 0x65

    if-ne v6, v12, :cond_5

    .line 802
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/mapdb/StoreWAL;->logSize:J

    invoke-virtual {v12, v14, v15}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v8

    .line 803
    .local v8, "ioRecid":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/mapdb/StoreWAL;->logSize:J

    const-wide/16 v14, 0x8

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/mapdb/StoreWAL;->logSize:J

    .line 804
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/mapdb/StoreWAL;->logSize:J

    invoke-virtual {v12, v14, v15}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v4

    .line 805
    .local v4, "indexVal":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/mapdb/StoreWAL;->logSize:J

    const-wide/16 v14, 0x8

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/mapdb/StoreWAL;->logSize:J

    .line 806
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/StoreWAL;->index:Lorg/mapdb/Volume;

    const-wide/16 v14, 0x8

    add-long/2addr v14, v8

    invoke-virtual {v12, v14, v15}, Lorg/mapdb/Volume;->ensureAvailable(J)V

    .line 807
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/StoreWAL;->index:Lorg/mapdb/Volume;

    invoke-virtual {v12, v8, v9, v4, v5}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 830
    .end local v4    # "indexVal":J
    .end local v8    # "ioRecid":J
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/mapdb/StoreWAL;->logSize:J

    invoke-virtual {v12, v14, v15}, Lorg/mapdb/Volume;->getByte(J)B

    move-result v6

    .line 831
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/mapdb/StoreWAL;->logSize:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/mapdb/StoreWAL;->logSize:J

    goto :goto_1

    .line 808
    :cond_5
    const/16 v12, 0x68

    if-eq v6, v12, :cond_6

    const/16 v12, 0x66

    if-eq v6, v12, :cond_6

    const/16 v12, 0x67

    if-ne v6, v12, :cond_7

    .line 809
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/mapdb/StoreWAL;->logSize:J

    invoke-virtual {v12, v14, v15}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v10

    .line 810
    .local v10, "offset":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/mapdb/StoreWAL;->logSize:J

    const-wide/16 v14, 0x8

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/mapdb/StoreWAL;->logSize:J

    .line 811
    const/16 v12, 0x30

    ushr-long v12, v10, v12

    long-to-int v7, v12

    .line 812
    .local v7, "size":I
    const-wide v12, 0xfffffffffff0L

    and-long/2addr v10, v12

    .line 815
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/mapdb/StoreWAL;->logSize:J

    invoke-virtual {v12, v14, v15, v7}, Lorg/mapdb/Volume;->getDataInput(JI)Ljava/io/DataInput;

    move-result-object v3

    check-cast v3, Lorg/mapdb/DataInput2;

    .line 816
    .local v3, "input":Lorg/mapdb/DataInput2;
    iget-object v12, v3, Lorg/mapdb/DataInput2;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 818
    .local v2, "buf":Ljava/nio/ByteBuffer;
    iget v12, v3, Lorg/mapdb/DataInput2;->pos:I

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 819
    iget v12, v3, Lorg/mapdb/DataInput2;->pos:I

    add-int/2addr v12, v7

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 820
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/StoreWAL;->phys:Lorg/mapdb/Volume;

    int-to-long v14, v7

    add-long/2addr v14, v10

    invoke-virtual {v12, v14, v15}, Lorg/mapdb/Volume;->ensureAvailable(J)V

    .line 821
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/StoreWAL;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v12, v10, v11, v2}, Lorg/mapdb/Volume;->putData(JLjava/nio/ByteBuffer;)V

    .line 823
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/mapdb/StoreWAL;->logSize:J

    int-to-long v14, v7

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/mapdb/StoreWAL;->logSize:J

    goto :goto_2

    .line 824
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v3    # "input":Lorg/mapdb/DataInput2;
    .end local v7    # "size":I
    .end local v10    # "offset":J
    :cond_7
    const/16 v12, 0x69

    if-ne v6, v12, :cond_8

    .line 825
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/mapdb/StoreWAL;->logSize:J

    const-wide/32 v14, 0x100000

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v16, v0

    const-wide/32 v18, 0xfffff

    and-long v16, v16, v18

    sub-long v14, v14, v16

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/mapdb/StoreWAL;->logSize:J

    goto/16 :goto_2

    .line 827
    :cond_8
    new-instance v12, Ljava/lang/AssertionError;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "unknown trans log instruction \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' at log offset: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/mapdb/StoreWAL;->logSize:J

    const-wide/16 v16, 0x1

    sub-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v12

    .line 833
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/StoreWAL;->index:Lorg/mapdb/Volume;

    const-wide/16 v14, 0x8

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lorg/mapdb/Volume;->getSixLong(J)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0, v1}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 834
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/mapdb/StoreWAL;->logSize:J

    const-wide/16 v14, 0x6

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/mapdb/StoreWAL;->logSize:J

    .line 835
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/StoreWAL;->index:Lorg/mapdb/Volume;

    const-wide/16 v14, 0x10

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lorg/mapdb/Volume;->getSixLong(J)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0, v1}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 836
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/mapdb/StoreWAL;->logSize:J

    const-wide/16 v14, 0x6

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/mapdb/StoreWAL;->logSize:J

    .line 837
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/StoreWAL;->index:Lorg/mapdb/Volume;

    const-wide/16 v14, 0x18

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lorg/mapdb/Volume;->getSixLong(J)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0, v1}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 838
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/mapdb/StoreWAL;->logSize:J

    const-wide/16 v14, 0x6

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/mapdb/StoreWAL;->logSize:J

    .line 839
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/StoreWAL;->index:Lorg/mapdb/Volume;

    const-wide/16 v14, 0x20

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0, v1}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 840
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/mapdb/StoreWAL;->logSize:J

    const-wide/16 v14, 0x8

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/mapdb/StoreWAL;->logSize:J

    .line 845
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/mapdb/StoreWAL;->syncOnCommitDisabled:Z

    if-nez v12, :cond_a

    .line 846
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/StoreWAL;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v12}, Lorg/mapdb/Volume;->sync()V

    .line 847
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/StoreWAL;->index:Lorg/mapdb/Volume;

    invoke-virtual {v12}, Lorg/mapdb/Volume;->sync()V

    .line 850
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/StoreWAL;->logReset()V

    .line 852
    sget-boolean v12, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/StoreWAL;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v12

    if-nez v12, :cond_1

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12
.end method

.method public rollback()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 859
    invoke-virtual {p0}, Lorg/mapdb/StoreWAL;->lockAllWrite()V

    .line 862
    :try_start_0
    invoke-virtual {p0}, Lorg/mapdb/StoreWAL;->logReset()V

    .line 864
    invoke-virtual {p0}, Lorg/mapdb/StoreWAL;->reloadIndexFile()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 866
    invoke-virtual {p0}, Lorg/mapdb/StoreWAL;->unlockAllWrite()V

    .line 868
    return-void

    .line 866
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/mapdb/StoreWAL;->unlockAllWrite()V

    throw v0
.end method

.method public update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V
    .locals 23
    .param p1, "recid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(JTA;",
            "Lorg/mapdb/Serializer",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 369
    .local p3, "value":Ljava/lang/Object;, "TA;"
    .local p4, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    sget-boolean v5, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-gtz v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 370
    :cond_0
    sget-boolean v5, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-nez p3, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 371
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/StoreWAL;->serialize(Ljava/lang/Object;Lorg/mapdb/Serializer;)Lorg/mapdb/DataOutput2;

    move-result-object v17

    .line 372
    .local v17, "out":Lorg/mapdb/DataOutput2;
    const-wide/32 v6, 0x8080

    const-wide/16 v10, 0x8

    mul-long v10, v10, p1

    add-long v8, v6, v10

    .line 373
    .local v8, "ioRecid":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/StoreWAL;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {v8, v9}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v15

    .line 374
    .local v15, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v15}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 379
    const-wide/16 v12, 0x0

    .line 380
    .local v12, "indexVal":J
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lorg/mapdb/StoreWAL;->getLinkedRecordsFromLog(J)[J

    move-result-object v14

    .line 381
    .local v14, "linkedRecords":[J
    if-nez v14, :cond_4

    .line 382
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/StoreWAL;->index:Lorg/mapdb/Volume;

    invoke-virtual {v5, v8, v9}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v12

    .line 383
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lorg/mapdb/StoreWAL;->getLinkedRecordsIndexVals(J)[J

    move-result-object v14

    .line 388
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/StoreWAL;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 392
    const/16 v5, 0x30

    ushr-long v6, v12, v5

    const-wide/16 v10, 0x0

    cmp-long v5, v6, v10

    if-lez v5, :cond_3

    .line 393
    const/4 v5, 0x0

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v5}, Lorg/mapdb/StoreWAL;->freePhysPut(JZ)V

    .line 396
    :cond_3
    if-eqz v14, :cond_5

    .line 397
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v14

    if-ge v4, v5, :cond_5

    aget-wide v6, v14, v4

    const-wide/16 v10, 0x0

    cmp-long v5, v6, v10

    if-eqz v5, :cond_5

    .line 398
    aget-wide v6, v14, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v5}, Lorg/mapdb/StoreWAL;->freePhysPut(JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 384
    .end local v4    # "i":I
    :cond_4
    :try_start_2
    sget-object v5, Lorg/mapdb/StoreWAL;->PREALLOC:[J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v14, v5, :cond_2

    .line 385
    const/4 v14, 0x0

    goto :goto_0

    .line 404
    :cond_5
    :try_start_3
    move-object/from16 v0, v17

    iget v5, v0, Lorg/mapdb/DataOutput2;->pos:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lorg/mapdb/StoreWAL;->physAllocate(IZZ)[J

    move-result-object v18

    .line 406
    .local v18, "physPos":[J
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/mapdb/StoreWAL;->logAllocate([J)[J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v16

    .line 409
    .local v16, "logPos":[J
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/StoreWAL;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 413
    const/4 v5, 0x0

    aget-wide v6, v16, v5

    const-wide v10, 0xffffffffffffL

    and-long/2addr v6, v10

    const-wide/16 v10, 0x1

    sub-long/2addr v6, v10

    const-wide/16 v10, 0x8

    sub-long/2addr v6, v10

    const-wide/16 v10, 0x8

    sub-long/2addr v6, v10

    const-wide/16 v10, 0x1

    sub-long/2addr v6, v10

    const-wide/16 v10, 0x8

    sub-long/2addr v6, v10

    const/4 v5, 0x0

    aget-wide v10, v18, v5

    const-wide/16 v20, 0x2

    or-long v10, v10, v20

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, Lorg/mapdb/StoreWAL;->walIndexVal(JJJ)V

    .line 414
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/StoreWAL;->walPhysArray(Lorg/mapdb/DataOutput2;[J[J)V

    .line 416
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/StoreWAL;->modified:Lorg/mapdb/LongConcurrentHashMap;

    move-object/from16 v0, v16

    invoke-virtual {v5, v8, v9, v0}, Lorg/mapdb/LongConcurrentHashMap;->put(JLjava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 418
    invoke-interface {v15}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 420
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/StoreWAL;->recycledDataOuts:Ljava/util/Queue;

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 421
    return-void

    .line 409
    .end local v16    # "logPos":[J
    .end local v18    # "physPos":[J
    :catchall_0
    move-exception v5

    :try_start_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/StoreWAL;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 418
    .end local v14    # "linkedRecords":[J
    :catchall_1
    move-exception v5

    invoke-interface {v15}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
.end method

.method protected verifyLogFile()Z
    .locals 40

    .prologue
    .line 650
    sget-boolean v31, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v31, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v31

    if-nez v31, :cond_0

    new-instance v31, Ljava/lang/AssertionError;

    invoke-direct/range {v31 .. v31}, Ljava/lang/AssertionError;-><init>()V

    throw v31

    .line 652
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mapdb/StoreWAL;->readOnly:Z

    move/from16 v31, v0

    if-eqz v31, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v31, v0

    if-nez v31, :cond_1

    .line 653
    const/16 v31, 0x0

    .line 770
    :goto_0
    return v31

    .line 655
    :cond_1
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mapdb/StoreWAL;->logSize:J

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/mapdb/Volume;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/mapdb/Volume;->getFile()Ljava/io/File;

    move-result-object v31

    if-eqz v31, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lorg/mapdb/Volume;->getFile()Ljava/io/File;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->length()J

    move-result-wide v32

    const-wide/16 v34, 0x10

    cmp-long v31, v32, v34

    if-ltz v31, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v31, v0

    const-wide/16 v32, 0x0

    invoke-virtual/range {v31 .. v33}, Lorg/mapdb/Volume;->getInt(J)I

    move-result v31

    const v32, 0xdf6459a

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v31, v0

    const-wide/16 v32, 0x8

    invoke-virtual/range {v31 .. v33}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v32

    const-wide v34, 0x10394246d7fa15L

    cmp-long v31, v32, v34

    if-eqz v31, :cond_4

    .line 663
    :cond_3
    const/16 v31, 0x0

    goto :goto_0

    .line 666
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v31, v0

    const-wide/16 v32, 0x4

    invoke-virtual/range {v31 .. v33}, Lorg/mapdb/Volume;->getUnsignedShort(J)I

    move-result v31

    const/16 v32, 0x2710

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_5

    .line 667
    new-instance v31, Ljava/io/IOError;

    new-instance v32, Ljava/io/IOException;

    const-string v33, "New store format version, please use newer MapDB version"

    invoke-direct/range {v32 .. v33}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v31 .. v32}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v31

    .line 670
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v31, v0

    const-wide/16 v32, 0x6

    invoke-virtual/range {v31 .. v33}, Lorg/mapdb/Volume;->getUnsignedShort(J)I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/StoreWAL;->expectedMasks()I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_6

    .line 671
    new-instance v31, Ljava/lang/IllegalArgumentException;

    const-string v32, "Log file created with different features. Please check compression, checksum or encryption"

    invoke-direct/range {v31 .. v32}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 674
    :cond_6
    :try_start_0
    new-instance v6, Ljava/util/zip/CRC32;

    invoke-direct {v6}, Ljava/util/zip/CRC32;-><init>()V

    .line 677
    .local v6, "crc32":Ljava/util/zip/CRC32;
    const-wide/16 v32, 0x10

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mapdb/StoreWAL;->logSize:J

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    invoke-virtual/range {v31 .. v33}, Lorg/mapdb/Volume;->getByte(J)B

    move-result v16

    .line 679
    .local v16, "ins":B
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x1

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mapdb/StoreWAL;->logSize:J

    .line 680
    const/4 v5, 0x0

    .line 682
    .local v5, "crc":I
    :goto_1
    const/16 v31, 0x6f

    move/from16 v0, v16

    move/from16 v1, v31

    if-eq v0, v1, :cond_c

    .line 683
    const/16 v31, 0x65

    move/from16 v0, v16

    move/from16 v1, v31

    if-ne v0, v1, :cond_7

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    invoke-virtual/range {v31 .. v33}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v18

    .line 685
    .local v18, "ioRecid":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x8

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mapdb/StoreWAL;->logSize:J

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    invoke-virtual/range {v31 .. v33}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v14

    .line 687
    .local v14, "indexVal":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x8

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mapdb/StoreWAL;->logSize:J

    .line 688
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x1

    sub-long v32, v32, v34

    const-wide/16 v34, 0x8

    sub-long v32, v32, v34

    const-wide/16 v34, 0x8

    sub-long v32, v32, v34

    const-wide/16 v34, 0x65

    or-long v32, v32, v34

    or-long v32, v32, v18

    or-long v32, v32, v14

    invoke-static/range {v32 .. v33}, Lorg/mapdb/LongHashMap;->longHash(J)I

    move-result v31

    or-int v5, v5, v31

    .line 741
    .end local v14    # "indexVal":J
    .end local v18    # "ioRecid":J
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    invoke-virtual/range {v31 .. v33}, Lorg/mapdb/Volume;->getByte(J)B

    move-result v16

    .line 742
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x1

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mapdb/StoreWAL;->logSize:J

    goto/16 :goto_1

    .line 763
    .end local v5    # "crc":I
    .end local v6    # "crc32":Ljava/util/zip/CRC32;
    .end local v16    # "ins":B
    :catch_0
    move-exception v7

    .line 766
    .local v7, "e":Ljava/io/IOException;
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 689
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v5    # "crc":I
    .restart local v6    # "crc32":Ljava/util/zip/CRC32;
    .restart local v16    # "ins":B
    :cond_7
    const/16 v31, 0x68

    move/from16 v0, v16

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    invoke-virtual/range {v31 .. v33}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v24

    .line 691
    .local v24, "offset2":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x8

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mapdb/StoreWAL;->logSize:J

    .line 692
    const/16 v31, 0x30

    ushr-long v32, v24, v31

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v30, v0

    .line 694
    .local v30, "size":I
    move/from16 v0, v30

    new-array v4, v0, [B

    .line 695
    .local v4, "b":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    move-object/from16 v0, v31

    move-wide/from16 v1, v32

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/Volume;->getDataInput(JI)Ljava/io/DataInput;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/io/DataInput;->readFully([B)V

    .line 697
    invoke-virtual {v6}, Ljava/util/zip/CRC32;->reset()V

    .line 698
    invoke-virtual {v6, v4}, Ljava/util/zip/CRC32;->update([B)V

    .line 700
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x68

    or-long v32, v32, v34

    or-long v32, v32, v24

    invoke-virtual {v6}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v34

    or-long v32, v32, v34

    invoke-static/range {v32 .. v33}, Lorg/mapdb/LongHashMap;->longHash(J)I

    move-result v31

    or-int v5, v5, v31

    .line 702
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v34, v0

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mapdb/StoreWAL;->logSize:J

    goto/16 :goto_2

    .line 767
    .end local v4    # "b":[B
    .end local v5    # "crc":I
    .end local v6    # "crc32":Ljava/util/zip/CRC32;
    .end local v16    # "ins":B
    .end local v24    # "offset2":J
    .end local v30    # "size":I
    :catch_1
    move-exception v7

    .line 770
    .local v7, "e":Ljava/io/IOError;
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 703
    .end local v7    # "e":Ljava/io/IOError;
    .restart local v5    # "crc":I
    .restart local v6    # "crc32":Ljava/util/zip/CRC32;
    .restart local v16    # "ins":B
    :cond_8
    const/16 v31, 0x67

    move/from16 v0, v16

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    invoke-virtual/range {v31 .. v33}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v24

    .line 705
    .restart local v24    # "offset2":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x8

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mapdb/StoreWAL;->logSize:J

    .line 706
    const/16 v31, 0x30

    ushr-long v32, v24, v31

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v31, v0

    add-int/lit8 v30, v31, -0x8

    .line 708
    .restart local v30    # "size":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    invoke-virtual/range {v31 .. v33}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v20

    .line 709
    .local v20, "nextPageLink":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x8

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mapdb/StoreWAL;->logSize:J

    .line 711
    move/from16 v0, v30

    new-array v4, v0, [B

    .line 712
    .restart local v4    # "b":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    move-object/from16 v0, v31

    move-wide/from16 v1, v32

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/Volume;->getDataInput(JI)Ljava/io/DataInput;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/io/DataInput;->readFully([B)V

    .line 713
    invoke-virtual {v6}, Ljava/util/zip/CRC32;->reset()V

    .line 714
    invoke-virtual {v6, v4}, Ljava/util/zip/CRC32;->update([B)V

    .line 716
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x67

    or-long v32, v32, v34

    or-long v32, v32, v24

    or-long v32, v32, v20

    invoke-virtual {v6}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v34

    or-long v32, v32, v34

    invoke-static/range {v32 .. v33}, Lorg/mapdb/LongHashMap;->longHash(J)I

    move-result v31

    or-int v5, v5, v31

    .line 718
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v34, v0

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mapdb/StoreWAL;->logSize:J

    goto/16 :goto_2

    .line 719
    .end local v4    # "b":[B
    .end local v20    # "nextPageLink":J
    .end local v24    # "offset2":J
    .end local v30    # "size":I
    :cond_9
    const/16 v31, 0x66

    move/from16 v0, v16

    move/from16 v1, v31

    if-ne v0, v1, :cond_a

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    invoke-virtual/range {v31 .. v33}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v22

    .line 721
    .local v22, "offset":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x8

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mapdb/StoreWAL;->logSize:J

    .line 722
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v26, v0

    .line 723
    .local v26, "origLogSize":J
    const/16 v31, 0x30

    ushr-long v32, v22, v31

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v30, v0

    .line 725
    .restart local v30    # "size":I
    const-wide/16 v32, 0x66

    or-long v32, v32, v26

    or-long v32, v32, v22

    invoke-static/range {v32 .. v33}, Lorg/mapdb/LongHashMap;->longHash(J)I

    move-result v31

    or-int v5, v5, v31

    .line 727
    move/from16 v0, v30

    new-array v4, v0, [B

    .line 728
    .restart local v4    # "b":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    move-object/from16 v0, v31

    move-wide/from16 v1, v32

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/Volume;->getDataInput(JI)Ljava/io/DataInput;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/io/DataInput;->readFully([B)V

    .line 729
    invoke-virtual {v6}, Ljava/util/zip/CRC32;->reset()V

    .line 730
    invoke-virtual {v6, v4}, Ljava/util/zip/CRC32;->update([B)V

    .line 731
    int-to-long v0, v5

    move-wide/from16 v32, v0

    invoke-virtual {v6}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v34

    or-long v32, v32, v34

    move-wide/from16 v0, v32

    long-to-int v5, v0

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    move-object/from16 v0, v31

    move-wide/from16 v1, v32

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/Volume;->getDataInput(JI)Ljava/io/DataInput;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/io/DataInput;->readFully([B)V

    .line 734
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v34, v0

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mapdb/StoreWAL;->logSize:J

    goto/16 :goto_2

    .line 735
    .end local v4    # "b":[B
    .end local v22    # "offset":J
    .end local v26    # "origLogSize":J
    .end local v30    # "size":I
    :cond_a
    const/16 v31, 0x69

    move/from16 v0, v16

    move/from16 v1, v31

    if-ne v0, v1, :cond_b

    .line 736
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    const-wide/32 v34, 0x100000

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v36, v0

    const-wide/32 v38, 0xfffff

    and-long v36, v36, v38

    sub-long v34, v34, v36

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mapdb/StoreWAL;->logSize:J

    goto/16 :goto_2

    .line 738
    :cond_b
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 745
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    invoke-virtual/range {v31 .. v33}, Lorg/mapdb/Volume;->getSixLong(J)J

    move-result-wide v10

    .line 746
    .local v10, "indexSize":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x6

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mapdb/StoreWAL;->logSize:J

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    invoke-virtual/range {v31 .. v33}, Lorg/mapdb/Volume;->getSixLong(J)J

    move-result-wide v28

    .line 748
    .local v28, "physSize":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x6

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mapdb/StoreWAL;->logSize:J

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    invoke-virtual/range {v31 .. v33}, Lorg/mapdb/Volume;->getSixLong(J)J

    move-result-wide v8

    .line 750
    .local v8, "freeSize":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x6

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mapdb/StoreWAL;->logSize:J

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    invoke-virtual/range {v31 .. v33}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v12

    .line 752
    .local v12, "indexSum":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x8

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mapdb/StoreWAL;->logSize:J

    .line 753
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x1

    sub-long v32, v32, v34

    const-wide/16 v34, 0x12

    sub-long v32, v32, v34

    const-wide/16 v34, 0x8

    sub-long v32, v32, v34

    or-long v32, v32, v10

    or-long v32, v32, v28

    or-long v32, v32, v8

    or-long v32, v32, v12

    invoke-static/range {v32 .. v33}, Lorg/mapdb/LongHashMap;->longHash(J)I

    move-result v31

    or-int v5, v5, v31

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    invoke-virtual/range {v31 .. v33}, Lorg/mapdb/Volume;->getInt(J)I

    move-result v17

    .line 756
    .local v17, "realCrc":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreWAL;->logSize:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x4

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mapdb/StoreWAL;->logSize:J

    .line 758
    const-wide/16 v32, 0x0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mapdb/StoreWAL;->logSize:J

    .line 759
    sget-boolean v31, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v31, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreWAL;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v31

    if-nez v31, :cond_d

    new-instance v31, Ljava/lang/AssertionError;

    invoke-direct/range {v31 .. v31}, Ljava/lang/AssertionError;-><init>()V

    throw v31
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOError; {:try_start_0 .. :try_end_0} :catch_1

    .line 762
    :cond_d
    const/16 v31, 0x1

    goto/16 :goto_0
.end method

.method protected walIndexVal(JJJ)V
    .locals 9
    .param p1, "logPos"    # J
    .param p3, "ioRecid"    # J
    .param p5, "indexVal"    # J

    .prologue
    const-wide/16 v6, 0x8

    const-wide/16 v4, 0x1

    .line 275
    sget-boolean v0, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mapdb/StoreWAL;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {p3, p4}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 276
    :cond_0
    sget-boolean v0, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lorg/mapdb/StoreWAL;->logSize:J

    add-long v2, p1, v4

    add-long/2addr v2, v6

    add-long/2addr v2, v6

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 277
    :cond_1
    iget-object v0, p0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    const/16 v1, 0x65

    invoke-virtual {v0, p1, p2, v1}, Lorg/mapdb/Volume;->putByte(JB)V

    .line 278
    iget-object v0, p0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    add-long v2, p1, v4

    invoke-virtual {v0, v2, v3, p3, p4}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 279
    iget-object v0, p0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    const-wide/16 v2, 0x9

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3, p5, p6}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 281
    const-wide/16 v0, 0x65

    or-long/2addr v0, p1

    or-long/2addr v0, p3

    or-long/2addr v0, p5

    invoke-static {v0, v1}, Lorg/mapdb/LongHashMap;->longHash(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mapdb/StoreWAL;->logChecksumAdd(I)V

    .line 282
    return-void
.end method

.method protected walPhysArray(Lorg/mapdb/DataOutput2;[J[J)V
    .locals 18
    .param p1, "out"    # Lorg/mapdb/DataOutput2;
    .param p2, "physPos"    # [J
    .param p3, "logPos"    # [J

    .prologue
    .line 244
    const/4 v7, 0x0

    .line 245
    .local v7, "outPos":I
    const/4 v12, 0x0

    .line 246
    .local v12, "logC":I
    new-instance v9, Ljava/util/zip/CRC32;

    invoke-direct {v9}, Ljava/util/zip/CRC32;-><init>()V

    .line 248
    .local v9, "crc32":Ljava/util/zip/CRC32;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p3

    array-length v3, v0

    if-ge v11, v3, :cond_5

    .line 249
    move-object/from16 v0, p3

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ne v11, v3, :cond_1

    const/4 v2, 0x0

    .line 250
    .local v2, "c":I
    :goto_1
    aget-wide v4, p3, v11

    const-wide v16, 0xffffffffffffL

    and-long v14, v4, v16

    .line 251
    .local v14, "pos":J
    aget-wide v4, p3, v11

    const/16 v3, 0x30

    ushr-long/2addr v4, v3

    long-to-int v13, v4

    .line 253
    .local v13, "size":I
    if-nez v2, :cond_2

    const/16 v10, 0x68

    .line 254
    .local v10, "header":B
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    const-wide/16 v4, 0x8

    sub-long v4, v14, v4

    const-wide/16 v16, 0x1

    sub-long v4, v4, v16

    invoke-virtual {v3, v4, v5, v10}, Lorg/mapdb/Volume;->putByte(JB)V

    .line 255
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    const-wide/16 v4, 0x8

    sub-long v4, v14, v4

    aget-wide v16, p2, v11

    move-wide/from16 v0, v16

    invoke-virtual {v3, v4, v5, v0, v1}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 257
    if-lez v2, :cond_0

    .line 258
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    add-int/lit8 v4, v11, 0x1

    aget-wide v4, p2, v4

    invoke-virtual {v3, v14, v15, v4, v5}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 260
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreWAL;->log:Lorg/mapdb/Volume;

    int-to-long v4, v2

    add-long/2addr v4, v14

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/mapdb/DataOutput2;->buf:[B

    sub-int v8, v13, v2

    invoke-virtual/range {v3 .. v8}, Lorg/mapdb/Volume;->putData(J[BII)V

    .line 262
    invoke-virtual {v9}, Ljava/util/zip/CRC32;->reset()V

    .line 263
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/mapdb/DataOutput2;->buf:[B

    sub-int v4, v13, v2

    invoke-virtual {v9, v3, v7, v4}, Ljava/util/zip/CRC32;->update([BII)V

    .line 264
    int-to-long v4, v10

    or-long/2addr v4, v14

    aget-wide v16, p2, v11

    or-long v16, v16, v4

    if-lez v2, :cond_3

    add-int/lit8 v3, v11, 0x1

    aget-wide v4, p2, v3

    :goto_3
    or-long v4, v4, v16

    invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v16

    or-long v4, v4, v16

    invoke-static {v4, v5}, Lorg/mapdb/LongHashMap;->longHash(J)I

    move-result v3

    or-int/2addr v12, v3

    .line 266
    sub-int v3, v13, v2

    add-int/2addr v7, v3

    .line 267
    sget-boolean v3, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/mapdb/StoreWAL;->logSize:J

    int-to-long v0, v7

    move-wide/from16 v16, v0

    cmp-long v3, v4, v16

    if-gez v3, :cond_4

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 249
    .end local v2    # "c":I
    .end local v10    # "header":B
    .end local v13    # "size":I
    .end local v14    # "pos":J
    :cond_1
    const/16 v2, 0x8

    goto/16 :goto_1

    .line 253
    .restart local v2    # "c":I
    .restart local v13    # "size":I
    .restart local v14    # "pos":J
    :cond_2
    const/16 v10, 0x67

    goto :goto_2

    .line 264
    .restart local v10    # "header":B
    :cond_3
    const-wide/16 v4, 0x0

    goto :goto_3

    .line 248
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 269
    .end local v2    # "c":I
    .end local v10    # "header":B
    .end local v13    # "size":I
    .end local v14    # "pos":J
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/mapdb/StoreWAL;->logChecksumAdd(I)V

    .line 270
    sget-boolean v3, Lorg/mapdb/StoreWAL;->$assertionsDisabled:Z

    if-nez v3, :cond_6

    move-object/from16 v0, p1

    iget v3, v0, Lorg/mapdb/DataOutput2;->pos:I

    if-eq v7, v3, :cond_6

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 271
    :cond_6
    return-void
.end method
