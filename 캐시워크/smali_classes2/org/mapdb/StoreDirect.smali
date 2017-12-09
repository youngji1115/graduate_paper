.class public Lorg/mapdb/StoreDirect;
.super Lorg/mapdb/Store;
.source "StoreDirect.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DATA_FILE_EXT:Ljava/lang/String; = ".p"

.field protected static final HEADER:I = 0xdf6459a

.field protected static final IO_FREE_RECID:I = 0x78

.field protected static final IO_FREE_SIZE:I = 0x18

.field protected static final IO_INDEX_SIZE:I = 0x8

.field protected static final IO_INDEX_SUM:I = 0x20

.field protected static final IO_PHYS_SIZE:I = 0x10

.field protected static final IO_USER_START:I = 0x8080

.field protected static final LONG_STACK_PREF_COUNT:I = 0xcc

.field protected static final LONG_STACK_PREF_COUNT_ALTER:I = 0xd4

.field protected static final LONG_STACK_PREF_SIZE:J = 0x4d0L

.field protected static final LONG_STACK_PREF_SIZE_ALTER:J = 0x500L

.field protected static final MASK_ARCHIVE:J = 0x2L

.field protected static final MASK_DISCARD:J = 0x4L

.field protected static final MASK_LINKED:J = 0x8L

.field protected static final MASK_OFFSET:J = 0xfffffffffff0L

.field protected static final MAX_REC_SIZE:I = 0xffff

.field protected static final PHYS_FREE_SLOTS_COUNT:I = 0x1000

.field protected static final STORE_VERSION:S = 0x2710s


# instance fields
.field protected final deleteFilesAfterClose:Z

.field protected freeSize:J

.field protected index:Lorg/mapdb/Volume;

.field protected indexSize:J

.field protected maxUsedIoList:J

.field protected phys:Lorg/mapdb/Volume;

.field protected physSize:J

.field protected final readOnly:Z

.field protected final sizeLimit:J

.field protected final spaceReclaimReuse:Z

.field protected final spaceReclaimSplit:Z

.field protected final spaceReclaimTrack:Z

.field protected final syncOnCommitDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    const-class v0, Lorg/mapdb/StoreDirect;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/mapdb/StoreDirect;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/mapdb/Volume$Factory;)V
    .locals 13
    .param p1, "volFac"    # Lorg/mapdb/Volume$Factory;

    .prologue
    const/4 v2, 0x0

    .line 247
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

    invoke-direct/range {v0 .. v12}, Lorg/mapdb/StoreDirect;-><init>(Lorg/mapdb/Volume$Factory;ZZIZJZZ[BZI)V

    .line 248
    return-void
.end method

.method public constructor <init>(Lorg/mapdb/Volume$Factory;ZZIZJZZ[BZI)V
    .locals 10
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
    .line 189
    move/from16 v0, p8

    move/from16 v1, p9

    move-object/from16 v2, p10

    move/from16 v3, p11

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/mapdb/Store;-><init>(ZZ[BZ)V

    .line 182
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/mapdb/StoreDirect;->maxUsedIoList:J

    .line 190
    iput-boolean p2, p0, Lorg/mapdb/StoreDirect;->readOnly:Z

    .line 191
    iput-boolean p3, p0, Lorg/mapdb/StoreDirect;->deleteFilesAfterClose:Z

    .line 192
    iput-boolean p5, p0, Lorg/mapdb/StoreDirect;->syncOnCommitDisabled:Z

    .line 193
    move-wide/from16 v0, p6

    iput-wide v0, p0, Lorg/mapdb/StoreDirect;->sizeLimit:J

    .line 195
    const/4 v5, 0x4

    if-le p4, v5, :cond_3

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lorg/mapdb/StoreDirect;->spaceReclaimSplit:Z

    .line 196
    const/4 v5, 0x2

    if-le p4, v5, :cond_4

    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, p0, Lorg/mapdb/StoreDirect;->spaceReclaimReuse:Z

    .line 197
    if-lez p4, :cond_5

    const/4 v5, 0x1

    :goto_2
    iput-boolean v5, p0, Lorg/mapdb/StoreDirect;->spaceReclaimTrack:Z

    .line 199
    const/4 v4, 0x0

    .line 202
    .local v4, "allGood":Z
    :try_start_0
    invoke-interface {p1}, Lorg/mapdb/Volume$Factory;->createIndexVolume()Lorg/mapdb/Volume;

    move-result-object v5

    iput-object v5, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    .line 203
    invoke-interface {p1}, Lorg/mapdb/Volume$Factory;->createPhysVolume()Lorg/mapdb/Volume;

    move-result-object v5

    iput-object v5, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    .line 204
    iget-object v5, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    invoke-virtual {v5}, Lorg/mapdb/Volume;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 205
    invoke-virtual {p0}, Lorg/mapdb/StoreDirect;->createStructure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :cond_0
    const/4 v4, 0x1

    .line 218
    if-nez v4, :cond_2

    .line 223
    :try_start_1
    iget-object v5, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v5, :cond_1

    .line 225
    :try_start_2
    iget-object v5, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    invoke-virtual {v5}, Lorg/mapdb/Volume;->sync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 227
    :try_start_3
    iget-object v5, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    invoke-virtual {v5}, Lorg/mapdb/Volume;->close()V

    .line 229
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 232
    :cond_1
    iget-object v5, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    if-eqz v5, :cond_2

    .line 234
    :try_start_4
    iget-object v5, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v5}, Lorg/mapdb/Volume;->sync()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 236
    iget-object v5, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v5}, Lorg/mapdb/Volume;->close()V

    .line 238
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    .line 244
    :cond_2
    return-void

    .line 195
    .end local v4    # "allGood":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 196
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 197
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 207
    .restart local v4    # "allGood":Z
    :cond_6
    :try_start_5
    invoke-virtual {p0}, Lorg/mapdb/StoreDirect;->checkHeaders()V

    .line 208
    iget-object v5, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    const-wide/16 v6, 0x8

    invoke-virtual {v5, v6, v7}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/mapdb/StoreDirect;->indexSize:J

    .line 209
    iget-object v5, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    const-wide/16 v6, 0x10

    invoke-virtual {v5, v6, v7}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/mapdb/StoreDirect;->physSize:J

    .line 210
    iget-object v5, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    const-wide/16 v6, 0x18

    invoke-virtual {v5, v6, v7}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/mapdb/StoreDirect;->freeSize:J

    .line 212
    const-wide/32 v6, 0x8078

    iput-wide v6, p0, Lorg/mapdb/StoreDirect;->maxUsedIoList:J

    .line 213
    :goto_3
    iget-object v5, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    iget-wide v6, p0, Lorg/mapdb/StoreDirect;->maxUsedIoList:J

    invoke-virtual {v5, v6, v7}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    iget-wide v6, p0, Lorg/mapdb/StoreDirect;->maxUsedIoList:J

    const-wide/16 v8, 0x78

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 214
    iget-wide v6, p0, Lorg/mapdb/StoreDirect;->maxUsedIoList:J

    const-wide/16 v8, 0x8

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lorg/mapdb/StoreDirect;->maxUsedIoList:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 218
    :catchall_0
    move-exception v5

    if-nez v4, :cond_8

    .line 223
    :try_start_6
    iget-object v6, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-eqz v6, :cond_7

    .line 225
    :try_start_7
    iget-object v6, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    invoke-virtual {v6}, Lorg/mapdb/Volume;->sync()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 227
    :try_start_8
    iget-object v6, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    invoke-virtual {v6}, Lorg/mapdb/Volume;->close()V

    .line 229
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 232
    :cond_7
    iget-object v6, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    if-eqz v6, :cond_8

    .line 234
    :try_start_9
    iget-object v6, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v6}, Lorg/mapdb/Volume;->sync()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 236
    iget-object v6, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v6}, Lorg/mapdb/Volume;->close()V

    .line 238
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    :cond_8
    throw v5

    .line 227
    :catchall_1
    move-exception v5

    :try_start_a
    iget-object v6, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    invoke-virtual {v6}, Lorg/mapdb/Volume;->close()V

    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 232
    :catchall_2
    move-exception v5

    iget-object v6, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    if-eqz v6, :cond_9

    .line 234
    :try_start_b
    iget-object v6, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v6}, Lorg/mapdb/Volume;->sync()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 236
    iget-object v6, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v6}, Lorg/mapdb/Volume;->close()V

    .line 238
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    :cond_9
    throw v5

    .line 236
    :catchall_3
    move-exception v5

    iget-object v6, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v6}, Lorg/mapdb/Volume;->close()V

    throw v5

    :catchall_4
    move-exception v5

    iget-object v6, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v6}, Lorg/mapdb/Volume;->close()V

    throw v5

    .line 227
    :catchall_5
    move-exception v5

    :try_start_c
    iget-object v6, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    invoke-virtual {v6}, Lorg/mapdb/Volume;->close()V

    throw v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 232
    :catchall_6
    move-exception v5

    iget-object v6, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    if-eqz v6, :cond_a

    .line 234
    :try_start_d
    iget-object v6, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v6}, Lorg/mapdb/Volume;->sync()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 236
    iget-object v6, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v6}, Lorg/mapdb/Volume;->close()V

    .line 238
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    :cond_a
    throw v5

    .line 236
    :catchall_7
    move-exception v5

    iget-object v6, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v6}, Lorg/mapdb/Volume;->close()V

    throw v5

    :catchall_8
    move-exception v5

    iget-object v6, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v6}, Lorg/mapdb/Volume;->close()V

    throw v5
.end method

.method protected static roundTo16(J)J
    .locals 4
    .param p0, "offset"    # J

    .prologue
    .line 694
    const-wide/16 v2, 0xf

    and-long v0, p0, v2

    .line 695
    .local v0, "rem":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x10

    sub-long/2addr v2, v0

    add-long/2addr p0, v2

    .line 696
    :cond_0
    return-wide p0
.end method

.method protected static size2ListIoRecid(J)J
    .locals 6
    .param p0, "size"    # J

    .prologue
    .line 1076
    const-wide/16 v0, 0x80

    const-wide/16 v2, 0x1

    sub-long v2, p0, v2

    const-wide/16 v4, 0x10

    div-long/2addr v2, v4

    const-wide/16 v4, 0x8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public calculateStatistics()Ljava/lang/String;
    .locals 10

    .prologue
    .line 1189
    const-string v0, ""

    .line 1190
    .local v0, "s":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "volume: \n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "  "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "indexSize="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, p0, Lorg/mapdb/StoreDirect;->indexSize:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "physSize="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, p0, Lorg/mapdb/StoreDirect;->physSize:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "freeSize="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, p0, Lorg/mapdb/StoreDirect;->freeSize:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "num of freeRecids: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v6, 0x78

    invoke-virtual {p0, v6, v7}, Lorg/mapdb/StoreDirect;->countLongStackItems(J)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1200
    const/16 v1, 0x10

    .local v1, "size":I
    :goto_0
    const v3, 0x10009

    if-ge v1, v3, :cond_1

    .line 1201
    const-wide/16 v4, 0x0

    .line 1202
    .local v4, "sum":J
    div-int/lit8 v2, v1, 0x2

    .local v2, "ss":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 1203
    int-to-long v6, v2

    invoke-static {v6, v7}, Lorg/mapdb/StoreDirect;->size2ListIoRecid(J)J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lorg/mapdb/StoreDirect;->countLongStackItems(J)J

    move-result-wide v6

    int-to-long v8, v2

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 1202
    add-int/lit8 v2, v2, 0x10

    goto :goto_1

    .line 1205
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "Size occupied by free records (size="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ") = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1200
    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 1209
    .end local v2    # "ss":I
    .end local v4    # "sum":J
    :cond_1
    return-object v0
.end method

.method public canRollback()Z
    .locals 1

    .prologue
    .line 785
    const/4 v0, 0x0

    return v0
.end method

.method protected checkHeaders()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x6

    const-wide/16 v8, 0x4

    const-wide/16 v6, 0x0

    const v5, 0xdf6459a

    const/16 v4, 0x2710

    .line 253
    iget-object v3, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    invoke-virtual {v3, v6, v7}, Lorg/mapdb/Volume;->getInt(J)I

    move-result v3

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v3, v6, v7}, Lorg/mapdb/Volume;->getInt(J)I

    move-result v3

    if-eq v3, v5, :cond_1

    .line 254
    :cond_0
    new-instance v3, Ljava/io/IOError;

    new-instance v4, Ljava/io/IOException;

    const-string v5, "storage has invalid header"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 256
    :cond_1
    iget-object v3, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    invoke-virtual {v3, v8, v9}, Lorg/mapdb/Volume;->getUnsignedShort(J)I

    move-result v3

    if-gt v3, v4, :cond_2

    iget-object v3, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v3, v8, v9}, Lorg/mapdb/Volume;->getUnsignedShort(J)I

    move-result v3

    if-le v3, v4, :cond_3

    .line 257
    :cond_2
    new-instance v3, Ljava/io/IOError;

    new-instance v4, Ljava/io/IOException;

    const-string v5, "New store format version, please use newer MapDB version"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 259
    :cond_3
    iget-object v3, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    invoke-virtual {v3, v10, v11}, Lorg/mapdb/Volume;->getUnsignedShort(J)I

    move-result v2

    .line 260
    .local v2, "masks":I
    iget-object v3, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v3, v10, v11}, Lorg/mapdb/Volume;->getUnsignedShort(J)I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 261
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Index and Phys file have different feature masks"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 263
    :cond_4
    invoke-virtual {p0}, Lorg/mapdb/StoreDirect;->expectedMasks()I

    move-result v3

    if-eq v2, v3, :cond_5

    .line 264
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "File created with different features. Please check compression, checksum or encryption"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 267
    :cond_5
    iget-object v3, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    const-wide/16 v4, 0x20

    invoke-virtual {v3, v4, v5}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v0

    .line 268
    .local v0, "checksum":J
    invoke-virtual {p0}, Lorg/mapdb/StoreDirect;->indexHeaderChecksum()J

    move-result-wide v4

    cmp-long v3, v0, v4

    if-eqz v3, :cond_6

    .line 269
    new-instance v3, Ljava/io/IOError;

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Wrong index checksum, store was not closed properly and could be corrupted."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 270
    :cond_6
    return-void
.end method

.method public clearCache()V
    .locals 0

    .prologue
    .line 790
    return-void
.end method

.method public close()V
    .locals 8

    .prologue
    .line 701
    iget-object v2, p0, Lorg/mapdb/StoreDirect;->closeListeners:Ljava/util/List;

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

    .line 702
    .local v0, "closeListener":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 705
    .end local v0    # "closeListener":Ljava/lang/Runnable;
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/StoreDirect;->lockAllWrite()V

    .line 708
    :try_start_0
    iget-boolean v2, p0, Lorg/mapdb/StoreDirect;->readOnly:Z

    if-nez v2, :cond_2

    .line 709
    iget-object v2, p0, Lorg/mapdb/StoreDirect;->serializerPojo:Lorg/mapdb/SerializerPojo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/mapdb/StoreDirect;->serializerPojo:Lorg/mapdb/SerializerPojo;

    invoke-virtual {v2}, Lorg/mapdb/SerializerPojo;->hasUnsavedChanges()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 710
    iget-object v2, p0, Lorg/mapdb/StoreDirect;->serializerPojo:Lorg/mapdb/SerializerPojo;

    invoke-virtual {v2, p0}, Lorg/mapdb/SerializerPojo;->save(Lorg/mapdb/Engine;)V

    .line 713
    :cond_1
    iget-object v2, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    const-wide/16 v4, 0x10

    iget-wide v6, p0, Lorg/mapdb/StoreDirect;->physSize:J

    invoke-virtual {v2, v4, v5, v6, v7}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 714
    iget-object v2, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    const-wide/16 v4, 0x8

    iget-wide v6, p0, Lorg/mapdb/StoreDirect;->indexSize:J

    invoke-virtual {v2, v4, v5, v6, v7}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 715
    iget-object v2, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    const-wide/16 v4, 0x18

    iget-wide v6, p0, Lorg/mapdb/StoreDirect;->freeSize:J

    invoke-virtual {v2, v4, v5, v6, v7}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 717
    iget-object v2, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    const-wide/16 v4, 0x20

    invoke-virtual {p0}, Lorg/mapdb/StoreDirect;->indexHeaderChecksum()J

    move-result-wide v6

    invoke-virtual {v2, v4, v5, v6, v7}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 722
    :cond_2
    iget-boolean v2, p0, Lorg/mapdb/StoreDirect;->deleteFilesAfterClose:Z

    if-nez v2, :cond_3

    .line 723
    iget-object v2, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    invoke-virtual {v2}, Lorg/mapdb/Volume;->sync()V

    .line 724
    iget-object v2, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v2}, Lorg/mapdb/Volume;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 728
    :cond_3
    :try_start_1
    iget-object v2, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    invoke-virtual {v2}, Lorg/mapdb/Volume;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 731
    :try_start_2
    iget-object v2, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v2}, Lorg/mapdb/Volume;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 733
    :try_start_3
    iget-boolean v2, p0, Lorg/mapdb/StoreDirect;->deleteFilesAfterClose:Z

    if-eqz v2, :cond_4

    .line 734
    iget-object v2, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    invoke-virtual {v2}, Lorg/mapdb/Volume;->deleteFile()V

    .line 735
    iget-object v2, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v2}, Lorg/mapdb/Volume;->deleteFile()V

    .line 737
    :cond_4
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    .line 738
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 744
    invoke-virtual {p0}, Lorg/mapdb/StoreDirect;->unlockAllWrite()V

    .line 746
    return-void

    .line 733
    :catchall_0
    move-exception v2

    :try_start_4
    iget-boolean v3, p0, Lorg/mapdb/StoreDirect;->deleteFilesAfterClose:Z

    if-eqz v3, :cond_5

    .line 734
    iget-object v3, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    invoke-virtual {v3}, Lorg/mapdb/Volume;->deleteFile()V

    .line 735
    iget-object v3, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v3}, Lorg/mapdb/Volume;->deleteFile()V

    .line 737
    :cond_5
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    .line 738
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 744
    :catchall_1
    move-exception v2

    invoke-virtual {p0}, Lorg/mapdb/StoreDirect;->unlockAllWrite()V

    throw v2

    .line 730
    :catchall_2
    move-exception v2

    .line 731
    :try_start_5
    iget-object v3, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v3}, Lorg/mapdb/Volume;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 733
    :try_start_6
    iget-boolean v3, p0, Lorg/mapdb/StoreDirect;->deleteFilesAfterClose:Z

    if-eqz v3, :cond_6

    .line 734
    iget-object v3, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    invoke-virtual {v3}, Lorg/mapdb/Volume;->deleteFile()V

    .line 735
    iget-object v3, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v3}, Lorg/mapdb/Volume;->deleteFile()V

    .line 737
    :cond_6
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    .line 738
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    throw v2

    .line 733
    :catchall_3
    move-exception v2

    iget-boolean v3, p0, Lorg/mapdb/StoreDirect;->deleteFilesAfterClose:Z

    if-eqz v3, :cond_7

    .line 734
    iget-object v3, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    invoke-virtual {v3}, Lorg/mapdb/Volume;->deleteFile()V

    .line 735
    iget-object v3, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v3}, Lorg/mapdb/Volume;->deleteFile()V

    .line 737
    :cond_7
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    .line 738
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 727
    :catchall_4
    move-exception v2

    .line 728
    :try_start_7
    iget-object v3, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    invoke-virtual {v3}, Lorg/mapdb/Volume;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 731
    :try_start_8
    iget-object v3, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v3}, Lorg/mapdb/Volume;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 733
    :try_start_9
    iget-boolean v3, p0, Lorg/mapdb/StoreDirect;->deleteFilesAfterClose:Z

    if-eqz v3, :cond_8

    .line 734
    iget-object v3, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    invoke-virtual {v3}, Lorg/mapdb/Volume;->deleteFile()V

    .line 735
    iget-object v3, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v3}, Lorg/mapdb/Volume;->deleteFile()V

    .line 737
    :cond_8
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    .line 738
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    throw v2

    .line 733
    :catchall_5
    move-exception v2

    iget-boolean v3, p0, Lorg/mapdb/StoreDirect;->deleteFilesAfterClose:Z

    if-eqz v3, :cond_9

    .line 734
    iget-object v3, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    invoke-virtual {v3}, Lorg/mapdb/Volume;->deleteFile()V

    .line 735
    iget-object v3, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v3}, Lorg/mapdb/Volume;->deleteFile()V

    .line 737
    :cond_9
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    .line 738
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 730
    :catchall_6
    move-exception v2

    .line 731
    :try_start_a
    iget-object v3, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v3}, Lorg/mapdb/Volume;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 733
    :try_start_b
    iget-boolean v3, p0, Lorg/mapdb/StoreDirect;->deleteFilesAfterClose:Z

    if-eqz v3, :cond_a

    .line 734
    iget-object v3, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    invoke-virtual {v3}, Lorg/mapdb/Volume;->deleteFile()V

    .line 735
    iget-object v3, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v3}, Lorg/mapdb/Volume;->deleteFile()V

    .line 737
    :cond_a
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    .line 738
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    throw v2

    .line 733
    :catchall_7
    move-exception v2

    iget-boolean v3, p0, Lorg/mapdb/StoreDirect;->deleteFilesAfterClose:Z

    if-eqz v3, :cond_b

    .line 734
    iget-object v3, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    invoke-virtual {v3}, Lorg/mapdb/Volume;->deleteFile()V

    .line 735
    iget-object v3, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v3}, Lorg/mapdb/Volume;->deleteFile()V

    .line 737
    :cond_b
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    .line 738
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
.end method

.method public commit()V
    .locals 6

    .prologue
    .line 755
    iget-boolean v0, p0, Lorg/mapdb/StoreDirect;->readOnly:Z

    if-nez v0, :cond_1

    .line 757
    iget-object v0, p0, Lorg/mapdb/StoreDirect;->serializerPojo:Lorg/mapdb/SerializerPojo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mapdb/StoreDirect;->serializerPojo:Lorg/mapdb/SerializerPojo;

    invoke-virtual {v0}, Lorg/mapdb/SerializerPojo;->hasUnsavedChanges()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lorg/mapdb/StoreDirect;->serializerPojo:Lorg/mapdb/SerializerPojo;

    invoke-virtual {v0, p0}, Lorg/mapdb/SerializerPojo;->save(Lorg/mapdb/Engine;)V

    .line 761
    :cond_0
    iget-object v0, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    const-wide/16 v2, 0x10

    iget-wide v4, p0, Lorg/mapdb/StoreDirect;->physSize:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 762
    iget-object v0, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    const-wide/16 v2, 0x8

    iget-wide v4, p0, Lorg/mapdb/StoreDirect;->indexSize:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 763
    iget-object v0, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    const-wide/16 v2, 0x18

    iget-wide v4, p0, Lorg/mapdb/StoreDirect;->freeSize:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 765
    iget-object v0, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    const-wide/16 v2, 0x20

    invoke-virtual {p0}, Lorg/mapdb/StoreDirect;->indexHeaderChecksum()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 767
    :cond_1
    iget-boolean v0, p0, Lorg/mapdb/StoreDirect;->syncOnCommitDisabled:Z

    if-nez v0, :cond_2

    .line 768
    iget-object v0, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    invoke-virtual {v0}, Lorg/mapdb/Volume;->sync()V

    .line 769
    iget-object v0, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v0}, Lorg/mapdb/Volume;->sync()V

    .line 771
    :cond_2
    return-void
.end method

.method public compact()V
    .locals 50

    .prologue
    .line 795
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/mapdb/StoreDirect;->readOnly:Z

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/IllegalAccessError;

    invoke-direct {v9}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v9

    .line 797
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    invoke-virtual {v9}, Lorg/mapdb/Volume;->getFile()Ljava/io/File;

    move-result-object v35

    .line 798
    .local v35, "indexFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v9}, Lorg/mapdb/Volume;->getFile()Ljava/io/File;

    move-result-object v43

    .line 801
    .local v43, "physFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    instance-of v9, v9, Lorg/mapdb/Volume$FileChannelVol;

    if-eqz v9, :cond_1

    .line 802
    const/4 v8, 0x2

    .line 810
    .local v8, "rafMode":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/StoreDirect;->lockAllWrite()V

    .line 812
    const/16 v32, 0x0

    .line 813
    .local v32, "f1del":Ljava/io/File;
    :try_start_0
    new-instance v7, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v35, :cond_3

    move-object/from16 v9, v35

    :goto_1
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".compact"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 814
    .local v7, "compactedFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    instance-of v9, v9, Lorg/mapdb/Volume$ByteBufferVol;

    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    check-cast v9, Lorg/mapdb/Volume$ByteBufferVol;

    iget-boolean v9, v9, Lorg/mapdb/Volume$ByteBufferVol;->asyncWriteEnabled:Z

    if-eqz v9, :cond_4

    const/16 v16, 0x1

    .line 815
    .local v16, "asyncWriteEnabled":Z
    :goto_2
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/mapdb/StoreDirect;->sizeLimit:J

    const/16 v12, 0x14

    const/4 v13, 0x0

    new-instance v14, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v20, ".p"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v15, Ljava/io/File;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".t"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v7 .. v16}, Lorg/mapdb/Volume;->fileFactory(Ljava/io/File;IZJIILjava/io/File;Ljava/io/File;Z)Lorg/mapdb/Volume$Factory;

    move-result-object v19

    .line 819
    .local v19, "fab":Lorg/mapdb/Volume$Factory;
    new-instance v18, Lorg/mapdb/StoreDirect;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x5

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mapdb/StoreDirect;->checksum:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mapdb/StoreDirect;->compress:Z

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreDirect;->password:[B

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-direct/range {v18 .. v30}, Lorg/mapdb/StoreDirect;-><init>(Lorg/mapdb/Volume$Factory;ZZIZJZZ[BZI)V

    .line 821
    .local v18, "store2":Lorg/mapdb/StoreDirect;
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/StoreDirect;->compactPreUnderLock()V

    .line 823
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    const-wide/16 v10, 0x10

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/mapdb/StoreDirect;->physSize:J

    invoke-virtual {v9, v10, v11, v14, v15}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 824
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    const-wide/16 v10, 0x8

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/mapdb/StoreDirect;->indexSize:J

    invoke-virtual {v9, v10, v11, v14, v15}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 825
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    const-wide/16 v10, 0x18

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/mapdb/StoreDirect;->freeSize:J

    invoke-virtual {v9, v10, v11, v14, v15}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 828
    invoke-virtual/range {v18 .. v18}, Lorg/mapdb/StoreDirect;->lockAllWrite()V

    .line 832
    const-wide/16 v10, 0x78

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v9}, Lorg/mapdb/StoreDirect;->longStackTake(JZ)J

    move-result-wide v12

    .line 833
    .local v12, "recid":J
    :goto_3
    const-wide/16 v10, 0x0

    cmp-long v9, v12, v10

    if-eqz v9, :cond_5

    .line 834
    const-wide/16 v10, 0x78

    const/4 v14, 0x0

    move-object/from16 v9, v18

    invoke-virtual/range {v9 .. v14}, Lorg/mapdb/StoreDirect;->longStackPut(JJZ)V

    .line 833
    const-wide/16 v10, 0x78

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v9}, Lorg/mapdb/StoreDirect;->longStackTake(JZ)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v12

    goto :goto_3

    .line 803
    .end local v7    # "compactedFile":Ljava/io/File;
    .end local v8    # "rafMode":I
    .end local v12    # "recid":J
    .end local v16    # "asyncWriteEnabled":Z
    .end local v18    # "store2":Lorg/mapdb/StoreDirect;
    .end local v19    # "fab":Lorg/mapdb/Volume$Factory;
    .end local v32    # "f1del":Ljava/io/File;
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    instance-of v9, v9, Lorg/mapdb/Volume$MappedFileVol;

    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    instance-of v9, v9, Lorg/mapdb/Volume$FileChannelVol;

    if-eqz v9, :cond_2

    .line 804
    const/4 v8, 0x1

    .restart local v8    # "rafMode":I
    goto/16 :goto_0

    .line 806
    .end local v8    # "rafMode":I
    :cond_2
    const/4 v8, 0x0

    .restart local v8    # "rafMode":I
    goto/16 :goto_0

    .line 813
    .restart local v32    # "f1del":Ljava/io/File;
    :cond_3
    :try_start_1
    const-string v9, "mapdb"

    const-string v11, "compact"

    invoke-static {v9, v11}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v32

    move-object/from16 v9, v32

    goto/16 :goto_1

    .line 814
    .restart local v7    # "compactedFile":Ljava/io/File;
    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 838
    .restart local v12    # "recid":J
    .restart local v16    # "asyncWriteEnabled":Z
    .restart local v18    # "store2":Lorg/mapdb/StoreDirect;
    .restart local v19    # "fab":Lorg/mapdb/Volume$Factory;
    :cond_5
    move-object/from16 v0, v18

    iget-object v9, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    const-wide/16 v10, 0x8

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/mapdb/StoreDirect;->indexSize:J

    invoke-virtual {v9, v10, v11, v14, v15}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 840
    const-wide/32 v40, 0x8080

    .local v40, "ioRecid":J
    :goto_4
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/mapdb/StoreDirect;->indexSize:J

    cmp-long v9, v40, v10

    if-gez v9, :cond_8

    .line 841
    sget-object v9, Lorg/mapdb/Serializer;->BYTE_ARRAY_NOSIZE:Lorg/mapdb/Serializer;

    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2, v9}, Lorg/mapdb/StoreDirect;->get2(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 842
    .local v6, "bb":[B
    move-object/from16 v0, v18

    iget-object v9, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    const-wide/16 v10, 0x8

    add-long v10, v10, v40

    invoke-virtual {v9, v10, v11}, Lorg/mapdb/Volume;->ensureAvailable(J)V

    .line 843
    if-eqz v6, :cond_6

    array-length v9, v6

    if-nez v9, :cond_7

    .line 844
    :cond_6
    move-object/from16 v0, v18

    iget-object v9, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    const-wide/16 v10, 0x0

    move-wide/from16 v0, v40

    invoke-virtual {v9, v0, v1, v10, v11}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 840
    :goto_5
    const-wide/16 v10, 0x8

    add-long v40, v40, v10

    goto :goto_4

    .line 846
    :cond_7
    sget-object v9, Lorg/mapdb/Serializer;->BYTE_ARRAY_NOSIZE:Lorg/mapdb/Serializer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9}, Lorg/mapdb/StoreDirect;->serialize(Ljava/lang/Object;Lorg/mapdb/Serializer;)Lorg/mapdb/DataOutput2;

    move-result-object v42

    .line 847
    .local v42, "out":Lorg/mapdb/DataOutput2;
    move-object/from16 v0, v42

    iget v9, v0, Lorg/mapdb/DataOutput2;->pos:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10, v11}, Lorg/mapdb/StoreDirect;->physAllocate(IZZ)[J

    move-result-object v38

    .line 848
    .local v38, "indexVals":[J
    move-object/from16 v0, v18

    move-object/from16 v1, v42

    move-wide/from16 v2, v40

    move-object/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mapdb/StoreDirect;->put2(Lorg/mapdb/DataOutput2;J[J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 930
    .end local v6    # "bb":[B
    .end local v7    # "compactedFile":Ljava/io/File;
    .end local v12    # "recid":J
    .end local v16    # "asyncWriteEnabled":Z
    .end local v18    # "store2":Lorg/mapdb/StoreDirect;
    .end local v19    # "fab":Lorg/mapdb/Volume$Factory;
    .end local v38    # "indexVals":[J
    .end local v40    # "ioRecid":J
    .end local v42    # "out":Lorg/mapdb/DataOutput2;
    :catch_0
    move-exception v17

    .line 931
    .local v17, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v9, Ljava/io/IOError;

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 933
    .end local v17    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/StoreDirect;->unlockAllWrite()V

    throw v9

    .line 852
    .restart local v7    # "compactedFile":Ljava/io/File;
    .restart local v12    # "recid":J
    .restart local v16    # "asyncWriteEnabled":Z
    .restart local v18    # "store2":Lorg/mapdb/StoreDirect;
    .restart local v19    # "fab":Lorg/mapdb/Volume$Factory;
    .restart local v40    # "ioRecid":J
    :cond_8
    :try_start_3
    move-object/from16 v0, v18

    iget-object v9, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    invoke-virtual {v9}, Lorg/mapdb/Volume;->getFile()Ljava/io/File;

    move-result-object v36

    .line 853
    .local v36, "indexFile2":Ljava/io/File;
    move-object/from16 v0, v18

    iget-object v9, v0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v9}, Lorg/mapdb/Volume;->getFile()Ljava/io/File;

    move-result-object v44

    .line 854
    .local v44, "physFile2":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Lorg/mapdb/StoreDirect;->unlockAllWrite()V

    .line 856
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    instance-of v9, v9, Lorg/mapdb/Volume$MemoryVol;

    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    check-cast v9, Lorg/mapdb/Volume$MemoryVol;

    iget-boolean v9, v9, Lorg/mapdb/Volume$MemoryVol;->useDirectBuffer:Z

    if-eqz v9, :cond_9

    const/16 v47, 0x1

    .line 858
    .local v47, "useDirectBuffer":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    invoke-virtual {v9}, Lorg/mapdb/Volume;->sync()V

    .line 859
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    invoke-virtual {v9}, Lorg/mapdb/Volume;->close()V

    .line 860
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    .line 861
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v9}, Lorg/mapdb/Volume;->sync()V

    .line 862
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v9}, Lorg/mapdb/Volume;->close()V

    .line 863
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    .line 865
    if-eqz v35, :cond_11

    .line 866
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v48

    .line 867
    .local v48, "time":J
    if-eqz v35, :cond_a

    new-instance v37, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v48

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_orig"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v37

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 868
    .local v37, "indexFile_":Ljava/io/File;
    :goto_7
    if-eqz v43, :cond_b

    new-instance v45, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v43 .. v43}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v48

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_orig"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v45

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 870
    .local v45, "physFile_":Ljava/io/File;
    :goto_8
    invoke-virtual/range {v18 .. v18}, Lorg/mapdb/StoreDirect;->close()V

    .line 872
    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 873
    new-instance v9, Ljava/lang/AssertionError;

    const-string v10, "could not rename file"

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    .line 856
    .end local v37    # "indexFile_":Ljava/io/File;
    .end local v45    # "physFile_":Ljava/io/File;
    .end local v47    # "useDirectBuffer":Z
    .end local v48    # "time":J
    :cond_9
    const/16 v47, 0x0

    goto/16 :goto_6

    .line 867
    .restart local v47    # "useDirectBuffer":Z
    .restart local v48    # "time":J
    :cond_a
    const/16 v37, 0x0

    goto :goto_7

    .line 868
    .restart local v37    # "indexFile_":Ljava/io/File;
    :cond_b
    const/16 v45, 0x0

    goto :goto_8

    .line 874
    .restart local v45    # "physFile_":Ljava/io/File;
    :cond_c
    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 875
    new-instance v9, Ljava/lang/AssertionError;

    const-string v10, "could not rename file"

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    .line 877
    :cond_d
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 878
    new-instance v9, Ljava/lang/AssertionError;

    const-string v10, "could not rename file"

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    .line 880
    :cond_e
    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 881
    new-instance v9, Ljava/lang/AssertionError;

    const-string v10, "could not rename file"

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v9

    .line 883
    :cond_f
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreDirect;->sizeLimit:J

    move-wide/from16 v24, v0

    const/16 v26, 0x14

    const/16 v27, 0x0

    new-instance v28, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".p"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v28

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v29, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v29

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v21, v35

    move/from16 v22, v8

    move/from16 v30, v16

    invoke-static/range {v21 .. v30}, Lorg/mapdb/Volume;->fileFactory(Ljava/io/File;IZJIILjava/io/File;Ljava/io/File;Z)Lorg/mapdb/Volume$Factory;

    move-result-object v34

    .line 887
    .local v34, "fac2":Lorg/mapdb/Volume$Factory;
    invoke-interface/range {v34 .. v34}, Lorg/mapdb/Volume$Factory;->createIndexVolume()Lorg/mapdb/Volume;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    .line 888
    invoke-interface/range {v34 .. v34}, Lorg/mapdb/Volume$Factory;->createPhysVolume()Lorg/mapdb/Volume;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    .line 890
    invoke-virtual/range {v37 .. v37}, Ljava/io/File;->delete()Z

    .line 891
    invoke-virtual/range {v45 .. v45}, Ljava/io/File;->delete()Z

    .line 912
    .end local v34    # "fac2":Lorg/mapdb/Volume$Factory;
    .end local v37    # "indexFile_":Ljava/io/File;
    .end local v45    # "physFile_":Ljava/io/File;
    .end local v48    # "time":J
    :goto_9
    if-eqz v32, :cond_10

    .line 913
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->delete()Z

    .line 917
    :cond_10
    move-object/from16 v0, v18

    iget-wide v10, v0, Lorg/mapdb/StoreDirect;->physSize:J

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/mapdb/StoreDirect;->physSize:J

    .line 918
    move-object/from16 v0, v18

    iget-wide v10, v0, Lorg/mapdb/StoreDirect;->freeSize:J

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/mapdb/StoreDirect;->freeSize:J

    .line 919
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    const-wide/16 v10, 0x10

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/mapdb/StoreDirect;->physSize:J

    invoke-virtual {v9, v10, v11, v14, v15}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 920
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    const-wide/16 v10, 0x8

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/mapdb/StoreDirect;->indexSize:J

    invoke-virtual {v9, v10, v11, v14, v15}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 921
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    const-wide/16 v10, 0x18

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/mapdb/StoreDirect;->freeSize:J

    invoke-virtual {v9, v10, v11, v14, v15}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 922
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    const-wide/16 v10, 0x20

    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/StoreDirect;->indexHeaderChecksum()J

    move-result-wide v14

    invoke-virtual {v9, v10, v11, v14, v15}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 924
    const-wide/32 v10, 0x8078

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/mapdb/StoreDirect;->maxUsedIoList:J

    .line 925
    :goto_a
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/mapdb/StoreDirect;->maxUsedIoList:J

    invoke-virtual {v9, v10, v11}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v10

    const-wide/16 v14, 0x0

    cmp-long v9, v10, v14

    if-eqz v9, :cond_12

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/mapdb/StoreDirect;->maxUsedIoList:J

    const-wide/16 v14, 0x78

    cmp-long v9, v10, v14

    if-lez v9, :cond_12

    .line 926
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/mapdb/StoreDirect;->maxUsedIoList:J

    const-wide/16 v14, 0x8

    sub-long/2addr v10, v14

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/mapdb/StoreDirect;->maxUsedIoList:J

    goto :goto_a

    .line 894
    :cond_11
    new-instance v39, Lorg/mapdb/Volume$MemoryVol;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/mapdb/StoreDirect;->sizeLimit:J

    const/16 v9, 0x14

    move-object/from16 v0, v39

    move/from16 v1, v47

    invoke-direct {v0, v1, v10, v11, v9}, Lorg/mapdb/Volume$MemoryVol;-><init>(ZJI)V

    .line 895
    .local v39, "indexVol2":Lorg/mapdb/Volume;
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/mapdb/StoreDirect;->indexSize:J

    move-object/from16 v0, v18

    iget-object v9, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    move-object/from16 v0, v39

    invoke-static {v10, v11, v9, v0}, Lorg/mapdb/Volume;->volumeTransfer(JLorg/mapdb/Volume;Lorg/mapdb/Volume;)V

    .line 896
    new-instance v46, Lorg/mapdb/Volume$MemoryVol;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/mapdb/StoreDirect;->sizeLimit:J

    const/16 v9, 0x14

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-direct {v0, v1, v10, v11, v9}, Lorg/mapdb/Volume$MemoryVol;-><init>(ZJI)V

    .line 897
    .local v46, "physVol2":Lorg/mapdb/Volume;
    move-object/from16 v0, v18

    iget-wide v10, v0, Lorg/mapdb/StoreDirect;->physSize:J

    move-object/from16 v0, v18

    iget-object v9, v0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    move-object/from16 v0, v46

    invoke-static {v10, v11, v9, v0}, Lorg/mapdb/Volume;->volumeTransfer(JLorg/mapdb/Volume;Lorg/mapdb/Volume;)V

    .line 899
    move-object/from16 v0, v18

    iget-object v9, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    invoke-virtual {v9}, Lorg/mapdb/Volume;->getFile()Ljava/io/File;

    move-result-object v31

    .line 900
    .local v31, "f1":Ljava/io/File;
    move-object/from16 v0, v18

    iget-object v9, v0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v9}, Lorg/mapdb/Volume;->getFile()Ljava/io/File;

    move-result-object v33

    .line 902
    .local v33, "f2":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Lorg/mapdb/StoreDirect;->close()V

    .line 904
    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->delete()Z

    .line 905
    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->delete()Z

    .line 907
    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    .line 908
    move-object/from16 v0, v46

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    goto/16 :goto_9

    .line 928
    .end local v31    # "f1":Ljava/io/File;
    .end local v33    # "f2":Ljava/io/File;
    .end local v39    # "indexVol2":Lorg/mapdb/Volume;
    .end local v46    # "physVol2":Lorg/mapdb/Volume;
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/StoreDirect;->compactPostUnderLock()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 933
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/StoreDirect;->unlockAllWrite()V

    .line 936
    return-void
.end method

.method protected compactPostUnderLock()V
    .locals 0

    .prologue
    .line 944
    return-void
.end method

.method protected compactPreUnderLock()V
    .locals 0

    .prologue
    .line 940
    return-void
.end method

.method public compareAndSwap(JLjava/lang/Object;Ljava/lang/Object;Lorg/mapdb/Serializer;)Z
    .locals 13
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
    .line 559
    .local p3, "expectedOldValue":Ljava/lang/Object;, "TA;"
    .local p4, "newValue":Ljava/lang/Object;, "TA;"
    .local p5, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    sget-boolean v8, Lorg/mapdb/StoreDirect;->$assertionsDisabled:Z

    if-nez v8, :cond_1

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 560
    :cond_1
    sget-boolean v8, Lorg/mapdb/StoreDirect;->$assertionsDisabled:Z

    if-nez v8, :cond_2

    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gtz v8, :cond_2

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 561
    :cond_2
    const-wide/32 v8, 0x8080

    const-wide/16 v10, 0x8

    mul-long/2addr v10, p1

    add-long v4, v8, v10

    .line 562
    .local v4, "ioRecid":J
    iget-object v8, p0, Lorg/mapdb/StoreDirect;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {v4, v5}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    .line 563
    .local v3, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 571
    :try_start_0
    move-object/from16 v0, p5

    invoke-virtual {p0, v4, v5, v0}, Lorg/mapdb/StoreDirect;->get2(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v6

    .line 576
    .local v6, "oldVal":Ljava/lang/Object;, "TA;"
    if-nez v6, :cond_3

    if-nez p3, :cond_4

    :cond_3
    if-eqz v6, :cond_5

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_5

    .line 577
    :cond_4
    const/4 v8, 0x0

    .line 589
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 592
    :goto_0
    return v8

    .line 582
    :cond_5
    :try_start_1
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {p0, v0, v1}, Lorg/mapdb/StoreDirect;->serialize(Ljava/lang/Object;Lorg/mapdb/Serializer;)Lorg/mapdb/DataOutput2;

    move-result-object v7

    .line 584
    .local v7, "out":Lorg/mapdb/DataOutput2;
    invoke-virtual {p0, v7, v4, v5}, Lorg/mapdb/StoreDirect;->update2(Lorg/mapdb/DataOutput2;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 589
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 591
    iget-object v8, p0, Lorg/mapdb/StoreDirect;->recycledDataOuts:Ljava/util/Queue;

    invoke-interface {v8, v7}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 592
    const/4 v8, 0x1

    goto :goto_0

    .line 586
    .end local v6    # "oldVal":Ljava/lang/Object;, "TA;"
    .end local v7    # "out":Lorg/mapdb/DataOutput2;
    :catch_0
    move-exception v2

    .line 587
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v8, Ljava/io/IOError;

    invoke-direct {v8, v2}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 589
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v8
.end method

.method protected countLongStackItems(J)J
    .locals 9
    .param p1, "ioList"    # J

    .prologue
    .line 1213
    const-wide/16 v2, 0x0

    .line 1214
    .local v2, "ret":J
    iget-object v6, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    invoke-virtual {v6, p1, p2}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v4

    .line 1217
    .local v4, "v":J
    :goto_0
    const-wide v6, 0xfffffffffff0L

    and-long v0, v4, v6

    .line 1218
    .local v0, "next":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    return-wide v2

    .line 1219
    :cond_0
    const/16 v6, 0x30

    ushr-long v6, v4, v6

    add-long/2addr v2, v6

    .line 1220
    iget-object v6, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v6, v0, v1}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v4

    .line 1221
    goto :goto_0
.end method

.method protected createStructure()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x6

    const-wide/16 v10, 0x4

    const v9, 0xdf6459a

    const/16 v8, 0x2710

    const-wide/16 v6, 0x0

    .line 273
    const-wide/32 v2, 0x80c0

    iput-wide v2, p0, Lorg/mapdb/StoreDirect;->indexSize:J

    .line 274
    sget-boolean v1, Lorg/mapdb/StoreDirect;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-wide v2, p0, Lorg/mapdb/StoreDirect;->indexSize:J

    const-wide/32 v4, 0x8080

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 275
    :cond_0
    iget-object v1, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    iget-wide v2, p0, Lorg/mapdb/StoreDirect;->indexSize:J

    invoke-virtual {v1, v2, v3}, Lorg/mapdb/Volume;->ensureAvailable(J)V

    .line 276
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    int-to-long v2, v0

    iget-wide v4, p0, Lorg/mapdb/StoreDirect;->indexSize:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    iget-object v1, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3, v6, v7}, Lorg/mapdb/Volume;->putLong(JJ)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 277
    :cond_1
    iget-object v1, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    invoke-virtual {v1, v6, v7, v9}, Lorg/mapdb/Volume;->putInt(JI)V

    .line 278
    iget-object v1, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    invoke-virtual {v1, v10, v11, v8}, Lorg/mapdb/Volume;->putUnsignedShort(JI)V

    .line 279
    iget-object v1, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    invoke-virtual {p0}, Lorg/mapdb/StoreDirect;->expectedMasks()I

    move-result v2

    invoke-virtual {v1, v12, v13, v2}, Lorg/mapdb/Volume;->putUnsignedShort(JI)V

    .line 280
    iget-object v1, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    const-wide/16 v2, 0x8

    iget-wide v4, p0, Lorg/mapdb/StoreDirect;->indexSize:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 281
    const-wide/16 v2, 0x10

    iput-wide v2, p0, Lorg/mapdb/StoreDirect;->physSize:J

    .line 282
    iget-object v1, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    const-wide/16 v2, 0x10

    iget-wide v4, p0, Lorg/mapdb/StoreDirect;->physSize:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 283
    iget-object v1, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    iget-wide v2, p0, Lorg/mapdb/StoreDirect;->physSize:J

    invoke-virtual {v1, v2, v3}, Lorg/mapdb/Volume;->ensureAvailable(J)V

    .line 284
    iget-object v1, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v1, v6, v7, v9}, Lorg/mapdb/Volume;->putInt(JI)V

    .line 285
    iget-object v1, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v1, v10, v11, v8}, Lorg/mapdb/Volume;->putUnsignedShort(JI)V

    .line 286
    iget-object v1, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {p0}, Lorg/mapdb/StoreDirect;->expectedMasks()I

    move-result v2

    invoke-virtual {v1, v12, v13, v2}, Lorg/mapdb/Volume;->putUnsignedShort(JI)V

    .line 287
    iput-wide v6, p0, Lorg/mapdb/StoreDirect;->freeSize:J

    .line 288
    iget-object v1, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    const-wide/16 v2, 0x18

    iget-wide v4, p0, Lorg/mapdb/StoreDirect;->freeSize:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 289
    iget-object v1, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    const-wide/16 v2, 0x20

    invoke-virtual {p0}, Lorg/mapdb/StoreDirect;->indexHeaderChecksum()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 290
    return-void
.end method

.method public delete(JLorg/mapdb/Serializer;)V
    .locals 13
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
    .line 597
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    sget-boolean v7, Lorg/mapdb/StoreDirect;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v7, p1, v8

    if-gtz v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 598
    :cond_0
    const-wide/32 v8, 0x8080

    const-wide/16 v10, 0x8

    mul-long/2addr v10, p1

    add-long v4, v8, v10

    .line 599
    .local v4, "ioRecid":J
    iget-object v7, p0, Lorg/mapdb/StoreDirect;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {v4, v5}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v6

    .line 600
    .local v6, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 603
    :try_start_0
    iget-object v7, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    invoke-virtual {v7, v4, v5}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v2

    .line 604
    .local v2, "indexVal":J
    iget-object v7, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    const-wide/16 v8, 0x2

    invoke-virtual {v7, v4, v5, v8, v9}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 606
    iget-boolean v7, p0, Lorg/mapdb/StoreDirect;->spaceReclaimTrack:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v7, :cond_1

    .line 630
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 632
    :goto_0
    return-void

    .line 608
    :cond_1
    :try_start_1
    invoke-virtual {p0, v2, v3}, Lorg/mapdb/StoreDirect;->getLinkedRecordsIndexVals(J)[J

    move-result-object v1

    .line 611
    .local v1, "linkedRecords":[J
    iget-object v7, p0, Lorg/mapdb/StoreDirect;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 614
    :try_start_2
    invoke-virtual {p0, v4, v5}, Lorg/mapdb/StoreDirect;->freeIoRecidPut(J)V

    .line 616
    const/16 v7, 0x30

    ushr-long v8, v2, v7

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_2

    .line 617
    const/4 v7, 0x0

    invoke-virtual {p0, v2, v3, v7}, Lorg/mapdb/StoreDirect;->freePhysPut(JZ)V

    .line 620
    :cond_2
    if-eqz v1, :cond_3

    .line 621
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v7, v1

    if-ge v0, v7, :cond_3

    aget-wide v8, v1, v0

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_3

    .line 622
    aget-wide v8, v1, v0

    const/4 v7, 0x0

    invoke-virtual {p0, v8, v9, v7}, Lorg/mapdb/StoreDirect;->freePhysPut(JZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 621
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 626
    .end local v0    # "i":I
    :cond_3
    :try_start_3
    iget-object v7, p0, Lorg/mapdb/StoreDirect;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 630
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 626
    :catchall_0
    move-exception v7

    :try_start_4
    iget-object v8, p0, Lorg/mapdb/StoreDirect;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 630
    .end local v1    # "linkedRecords":[J
    .end local v2    # "indexVal":J
    :catchall_1
    move-exception v7

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v7
.end method

.method protected freeIoRecidPut(J)V
    .locals 7
    .param p1, "ioRecid"    # J

    .prologue
    .line 1054
    sget-boolean v0, Lorg/mapdb/StoreDirect;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-wide/32 v0, 0x8080

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1055
    :cond_0
    sget-boolean v0, Lorg/mapdb/StoreDirect;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mapdb/StoreDirect;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {p1, p2}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1056
    :cond_1
    iget-boolean v0, p0, Lorg/mapdb/StoreDirect;->spaceReclaimTrack:Z

    if-eqz v0, :cond_2

    .line 1057
    const-wide/16 v2, 0x78

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/mapdb/StoreDirect;->longStackPut(JJZ)V

    .line 1058
    :cond_2
    return-void
.end method

.method protected freeIoRecidTake(Z)J
    .locals 10
    .param p1, "ensureAvail"    # Z

    .prologue
    const-wide/32 v8, 0x8080

    const-wide/16 v6, 0x8

    .line 1061
    iget-boolean v2, p0, Lorg/mapdb/StoreDirect;->spaceReclaimTrack:Z

    if-eqz v2, :cond_0

    .line 1062
    const-wide/16 v2, 0x78

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lorg/mapdb/StoreDirect;->longStackTake(JZ)J

    move-result-wide v0

    .line 1063
    .local v0, "ioRecid":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 1064
    sget-boolean v2, Lorg/mapdb/StoreDirect;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    cmp-long v2, v0, v8

    if-gtz v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1068
    .end local v0    # "ioRecid":J
    :cond_0
    iget-wide v2, p0, Lorg/mapdb/StoreDirect;->indexSize:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lorg/mapdb/StoreDirect;->indexSize:J

    .line 1069
    if-eqz p1, :cond_1

    .line 1070
    iget-object v2, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    iget-wide v4, p0, Lorg/mapdb/StoreDirect;->indexSize:J

    invoke-virtual {v2, v4, v5}, Lorg/mapdb/Volume;->ensureAvailable(J)V

    .line 1071
    :cond_1
    sget-boolean v2, Lorg/mapdb/StoreDirect;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    iget-wide v2, p0, Lorg/mapdb/StoreDirect;->indexSize:J

    sub-long/2addr v2, v6

    cmp-long v2, v2, v8

    if-gtz v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1072
    :cond_2
    iget-wide v2, p0, Lorg/mapdb/StoreDirect;->indexSize:J

    sub-long v0, v2, v6

    :cond_3
    return-wide v0
.end method

.method protected freePhysPut(JZ)V
    .locals 11
    .param p1, "indexVal"    # J
    .param p3, "recursive"    # Z

    .prologue
    .line 1079
    sget-boolean v0, Lorg/mapdb/StoreDirect;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mapdb/StoreDirect;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1080
    :cond_0
    const/16 v0, 0x30

    ushr-long v8, p1, v0

    .line 1081
    .local v8, "size":J
    sget-boolean v0, Lorg/mapdb/StoreDirect;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1082
    :cond_1
    const-wide v0, 0xfffffffffff0L

    and-long/2addr p1, v0

    .line 1083
    iget-wide v0, p0, Lorg/mapdb/StoreDirect;->physSize:J

    invoke-static {v8, v9}, Lorg/mapdb/StoreDirect;->roundTo16(J)J

    move-result-wide v2

    add-long/2addr v2, p1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1085
    iput-wide p1, p0, Lorg/mapdb/StoreDirect;->physSize:J

    .line 1091
    :goto_0
    return-void

    .line 1089
    :cond_2
    iget-wide v0, p0, Lorg/mapdb/StoreDirect;->freeSize:J

    invoke-static {v8, v9}, Lorg/mapdb/StoreDirect;->roundTo16(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/mapdb/StoreDirect;->freeSize:J

    .line 1090
    invoke-static {v8, v9}, Lorg/mapdb/StoreDirect;->size2ListIoRecid(J)J

    move-result-wide v2

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/mapdb/StoreDirect;->longStackPut(JJZ)V

    goto :goto_0
.end method

.method protected freePhysTake(IZZ)J
    .locals 26
    .param p1, "size"    # I
    .param p2, "ensureAvail"    # Z
    .param p3, "recursive"    # Z

    .prologue
    .line 1094
    sget-boolean v18, Lorg/mapdb/StoreDirect;->$assertionsDisabled:Z

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreDirect;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v18

    if-nez v18, :cond_0

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 1095
    :cond_0
    sget-boolean v18, Lorg/mapdb/StoreDirect;->$assertionsDisabled:Z

    if-nez v18, :cond_1

    if-gtz p1, :cond_1

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 1097
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mapdb/StoreDirect;->spaceReclaimReuse:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 1098
    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lorg/mapdb/StoreDirect;->size2ListIoRecid(J)J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/StoreDirect;->longStackTake(JZ)J

    move-result-wide v14

    .line 1099
    .local v14, "ret":J
    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-eqz v18, :cond_2

    .line 1100
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreDirect;->freeSize:J

    move-wide/from16 v18, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lorg/mapdb/StoreDirect;->roundTo16(J)J

    move-result-wide v20

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mapdb/StoreDirect;->freeSize:J

    .line 1131
    .end local v14    # "ret":J
    :goto_0
    return-wide v14

    .line 1105
    :cond_2
    if-nez p3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mapdb/StoreDirect;->spaceReclaimSplit:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 1106
    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lorg/mapdb/StoreDirect;->roundTo16(J)J

    move-result-wide v18

    const-wide/16 v20, 0x10

    add-long v16, v18, v20

    .local v16, "s":J
    :goto_1
    const-wide/32 v18, 0xffff

    cmp-long v18, v16, v18

    if-gez v18, :cond_3

    .line 1107
    invoke-static/range {v16 .. v17}, Lorg/mapdb/StoreDirect;->size2ListIoRecid(J)J

    move-result-wide v4

    .line 1108
    .local v4, "ioList":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreDirect;->maxUsedIoList:J

    move-wide/from16 v18, v0

    cmp-long v18, v4, v18

    if-lez v18, :cond_6

    .line 1125
    .end local v4    # "ioList":J
    .end local v16    # "s":J
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreDirect;->physSize:J

    move-wide/from16 v18, v0

    const-wide/32 v20, 0xfffff

    and-long v18, v18, v20

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    const-wide/32 v20, 0x100000

    cmp-long v18, v18, v20

    if-lez v18, :cond_4

    .line 1126
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreDirect;->physSize:J

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x100000

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreDirect;->physSize:J

    move-wide/from16 v22, v0

    const-wide/32 v24, 0xfffff

    and-long v22, v22, v24

    sub-long v20, v20, v22

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mapdb/StoreDirect;->physSize:J

    .line 1127
    :cond_4
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/mapdb/StoreDirect;->physSize:J

    .line 1128
    .local v10, "physSize2":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreDirect;->physSize:J

    move-wide/from16 v18, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Lorg/mapdb/StoreDirect;->roundTo16(J)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mapdb/StoreDirect;->physSize:J

    .line 1129
    if-eqz p2, :cond_5

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreDirect;->physSize:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/Volume;->ensureAvailable(J)V

    :cond_5
    move-wide v14, v10

    .line 1131
    goto/16 :goto_0

    .line 1109
    .end local v10    # "physSize2":J
    .restart local v4    # "ioList":J
    .restart local v16    # "s":J
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v5, v1}, Lorg/mapdb/StoreDirect;->longStackTake(JZ)J

    move-result-wide v14

    .line 1110
    .restart local v14    # "ret":J
    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-eqz v18, :cond_7

    .line 1112
    const-wide v18, 0xfffffffffff0L

    and-long v8, v14, v18

    .line 1114
    .local v8, "offset":J
    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lorg/mapdb/StoreDirect;->roundTo16(J)J

    move-result-wide v18

    sub-long v12, v16, v18

    .line 1115
    .local v12, "remaining":J
    const/16 v18, 0x30

    shl-long v18, v12, v18

    add-long v20, v8, v16

    sub-long v20, v20, v12

    or-long v6, v18, v20

    .line 1116
    .local v6, "markFree":J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v6, v7, v1}, Lorg/mapdb/StoreDirect;->freePhysPut(JZ)V

    .line 1118
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreDirect;->freeSize:J

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v17}, Lorg/mapdb/StoreDirect;->roundTo16(J)J

    move-result-wide v20

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mapdb/StoreDirect;->freeSize:J

    .line 1119
    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const/16 v20, 0x30

    shl-long v18, v18, v20

    or-long v14, v18, v8

    goto/16 :goto_0

    .line 1106
    .end local v6    # "markFree":J
    .end local v8    # "offset":J
    .end local v12    # "remaining":J
    :cond_7
    const-wide/16 v18, 0x10

    add-long v16, v16, v18

    goto/16 :goto_1
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
    .line 434
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    sget-boolean v4, Lorg/mapdb/StoreDirect;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gtz v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 435
    :cond_0
    const-wide/32 v4, 0x8080

    const-wide/16 v6, 0x8

    mul-long/2addr v6, p1

    add-long v2, v4, v6

    .line 436
    .local v2, "ioRecid":J
    iget-object v4, p0, Lorg/mapdb/StoreDirect;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {v2, v3}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    .line 437
    .local v1, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 439
    :try_start_0
    invoke-virtual {p0, v2, v3, p3}, Lorg/mapdb/StoreDirect;->get2(JLorg/mapdb/Serializer;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 443
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v4

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Ljava/io/IOError;

    invoke-direct {v4, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method

.method protected get2(JLorg/mapdb/Serializer;)Ljava/lang/Object;
    .locals 19
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
    .line 448
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    sget-boolean v14, Lorg/mapdb/StoreDirect;->$assertionsDisabled:Z

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapdb/StoreDirect;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static/range {p1 .. p2}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v15

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapdb/StoreDirect;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static/range {p1 .. p2}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v15

    aget-object v14, v14, v15

    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->isHeldByCurrentThread()Z

    move-result v14

    if-nez v14, :cond_0

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 451
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v6

    .line 452
    .local v6, "indexVal":J
    const-wide/16 v14, 0x4

    cmp-long v14, v6, v14

    if-nez v14, :cond_1

    const/4 v14, 0x0

    .line 486
    :goto_0
    return-object v14

    .line 454
    :cond_1
    const/16 v14, 0x30

    ushr-long v14, v6, v14

    long-to-int v13, v14

    .line 456
    .local v13, "size":I
    const-wide v14, 0xfffffffffff0L

    and-long v10, v6, v14

    .line 457
    .local v10, "offset":J
    const-wide/16 v14, 0x8

    and-long/2addr v14, v6

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_2

    .line 459
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v14, v10, v11, v13}, Lorg/mapdb/Volume;->getDataInput(JI)Ljava/io/DataInput;

    move-result-object v4

    check-cast v4, Lorg/mapdb/DataInput2;

    .line 486
    .local v4, "di":Lorg/mapdb/DataInput2;
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v13, v4}, Lorg/mapdb/StoreDirect;->deserialize(Lorg/mapdb/Serializer;ILjava/io/DataInput;)Ljava/lang/Object;

    move-result-object v14

    goto :goto_0

    .line 463
    .end local v4    # "di":Lorg/mapdb/DataInput2;
    :cond_2
    const/4 v12, 0x0

    .line 464
    .local v12, "pos":I
    const/16 v3, 0x8

    .line 466
    .local v3, "c":I
    const/16 v14, 0x40

    new-array v2, v14, [B

    .line 469
    .local v2, "buf":[B
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    int-to-long v0, v3

    move-wide/from16 v16, v0

    add-long v16, v16, v10

    sub-int v15, v13, v3

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1, v15}, Lorg/mapdb/Volume;->getDataInput(JI)Ljava/io/DataInput;

    move-result-object v5

    check-cast v5, Lorg/mapdb/DataInput2;

    .line 471
    .local v5, "in":Lorg/mapdb/DataInput2;
    array-length v14, v2

    add-int v15, v12, v13

    sub-int/2addr v15, v3

    if-ge v14, v15, :cond_3

    .line 472
    add-int v14, v12, v13

    sub-int/2addr v14, v3

    array-length v15, v2

    mul-int/lit8 v15, v15, 0x2

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-static {v2, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 473
    :cond_3
    sub-int v14, v13, v3

    invoke-virtual {v5, v2, v12, v14}, Lorg/mapdb/DataInput2;->readFully([BII)V

    .line 474
    sub-int v14, v13, v3

    add-int/2addr v12, v14

    .line 475
    if-nez v3, :cond_4

    .line 483
    new-instance v4, Lorg/mapdb/DataInput2;

    invoke-direct {v4, v2}, Lorg/mapdb/DataInput2;-><init>([B)V

    .line 484
    .restart local v4    # "di":Lorg/mapdb/DataInput2;
    move v13, v12

    goto :goto_1

    .line 477
    .end local v4    # "di":Lorg/mapdb/DataInput2;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    invoke-virtual {v14, v10, v11}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v8

    .line 478
    .local v8, "next":J
    const-wide v14, 0xfffffffffff0L

    and-long v10, v8, v14

    .line 479
    const/16 v14, 0x30

    ushr-long v14, v8, v14

    long-to-int v13, v14

    .line 481
    const-wide/16 v14, 0x8

    and-long/2addr v14, v8

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_5

    const/4 v3, 0x0

    .line 482
    :goto_3
    goto :goto_2

    .line 481
    :cond_5
    const/16 v3, 0x8

    goto :goto_3
.end method

.method public getCurrSize()J
    .locals 2

    .prologue
    .line 1179
    iget-wide v0, p0, Lorg/mapdb/StoreDirect;->physSize:J

    return-wide v0
.end method

.method public getFreeRecids()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1150
    sget-object v0, Lorg/mapdb/Fun;->EMPTY_ITERATOR:Ljava/util/Iterator;

    return-object v0
.end method

.method public getFreeSize()J
    .locals 2

    .prologue
    .line 1184
    iget-wide v0, p0, Lorg/mapdb/StoreDirect;->freeSize:J

    return-wide v0
.end method

.method protected getLinkedRecordsIndexVals(J)[J
    .locals 9
    .param p1, "indexVal"    # J

    .prologue
    .line 635
    const/4 v1, 0x0

    .line 637
    .local v1, "linkedRecords":[J
    const/4 v0, 0x0

    .line 638
    .local v0, "linkedPos":I
    const-wide/16 v4, 0x8

    and-long/2addr v4, p1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 640
    const/4 v4, 0x2

    new-array v1, v4, [J

    .line 643
    iget-object v4, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    const-wide v6, 0xfffffffffff0L

    and-long/2addr v6, p1

    invoke-virtual {v4, v6, v7}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v2

    .line 645
    .local v2, "linkedVal":J
    :goto_0
    array-length v4, v1

    if-ne v0, v4, :cond_0

    .line 646
    array-length v4, v1

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    .line 648
    :cond_0
    aput-wide v2, v1, v0

    .line 650
    const-wide/16 v4, 0x8

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 658
    .end local v2    # "linkedVal":J
    :cond_1
    return-object v1

    .line 654
    .restart local v2    # "linkedVal":J
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 655
    iget-object v4, p0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    const-wide v6, 0xfffffffffff0L

    and-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getMaxRecid()J
    .locals 4

    .prologue
    .line 1137
    iget-wide v0, p0, Lorg/mapdb/StoreDirect;->indexSize:J

    const-wide/32 v2, 0x8080

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getRaw(J)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "recid"    # J

    .prologue
    .line 1143
    sget-object v1, Lorg/mapdb/Serializer;->BYTE_ARRAY_NOSIZE:Lorg/mapdb/Serializer;

    invoke-virtual {p0, p1, p2, v1}, Lorg/mapdb/StoreDirect;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1144
    .local v0, "bb":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1145
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0
.end method

.method public getSizeLimit()J
    .locals 2

    .prologue
    .line 1174
    iget-wide v0, p0, Lorg/mapdb/StoreDirect;->sizeLimit:J

    return-wide v0
.end method

.method protected indexHeaderChecksum()J
    .locals 8

    .prologue
    .line 293
    const-wide/16 v4, 0x0

    .line 294
    .local v4, "ret":J
    const-wide/16 v2, 0x0

    .local v2, "offset":J
    :goto_0
    const-wide/32 v6, 0x8080

    cmp-long v6, v2, v6

    if-gez v6, :cond_1

    .line 295
    const-wide/16 v6, 0x20

    cmp-long v6, v2, v6

    if-nez v6, :cond_0

    .line 294
    :goto_1
    const-wide/16 v6, 0x8

    add-long/2addr v2, v6

    goto :goto_0

    .line 296
    :cond_0
    iget-object v6, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    invoke-virtual {v6, v2, v3}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v0

    .line 297
    .local v0, "indexVal":J
    or-long v6, v0, v2

    invoke-static {v6, v7}, Lorg/mapdb/LongHashMap;->longHash(J)I

    move-result v6

    int-to-long v6, v6

    or-long/2addr v6, v0

    or-long/2addr v4, v6

    goto :goto_1

    .line 299
    .end local v0    # "indexVal":J
    :cond_1
    return-wide v4
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 780
    iget-boolean v0, p0, Lorg/mapdb/StoreDirect;->readOnly:Z

    return v0
.end method

.method protected longStackPut(JJZ)V
    .locals 25
    .param p1, "ioList"    # J
    .param p3, "offset"    # J
    .param p5, "recursive"    # Z

    .prologue
    .line 998
    sget-boolean v18, Lorg/mapdb/StoreDirect;->$assertionsDisabled:Z

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreDirect;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v18

    if-nez v18, :cond_0

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 999
    :cond_0
    sget-boolean v18, Lorg/mapdb/StoreDirect;->$assertionsDisabled:Z

    if-nez v18, :cond_1

    const/16 v18, 0x30

    ushr-long v18, p3, v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-eqz v18, :cond_1

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 1000
    :cond_1
    sget-boolean v18, Lorg/mapdb/StoreDirect;->$assertionsDisabled:Z

    if-nez v18, :cond_3

    const-wide/16 v18, 0x78

    cmp-long v18, p1, v18

    if-ltz v18, :cond_2

    const-wide/32 v18, 0x8080

    cmp-long v18, p1, v18

    if-lez v18, :cond_3

    :cond_2
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

    .line 1002
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v6

    .line 1003
    .local v6, "dataOffset":J
    const/16 v18, 0x30

    ushr-long v14, v6, v18

    .line 1004
    .local v14, "pos":J
    const-wide v18, 0xfffffffffff0L

    and-long v6, v6, v18

    .line 1006
    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-nez v18, :cond_6

    .line 1009
    const/16 v18, 0x4d0

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/StoreDirect;->freePhysTake(IZZ)J

    move-result-wide v18

    const-wide v20, 0xfffffffffff0L

    and-long v8, v18, v20

    .line 1010
    .local v8, "listPhysid":J
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-nez v18, :cond_4

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 1013
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    move-object/from16 v18, v0

    const-wide/high16 v20, 0x4d0000000000000L

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v8, v9, v1, v2}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    move-object/from16 v18, v0

    const-wide/16 v20, 0x8

    add-long v20, v20, v8

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mapdb/Volume;->putSixLong(JJ)V

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    move-object/from16 v18, v0

    const-wide/high16 v20, 0x8000000000000L

    or-long v20, v20, v8

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 1018
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreDirect;->maxUsedIoList:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, p1

    if-gtz v18, :cond_5

    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mapdb/StoreDirect;->maxUsedIoList:J

    .line 1049
    .end local v8    # "listPhysid":J
    :cond_5
    :goto_0
    return-void

    .line 1020
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v12

    .line 1021
    .local v12, "next":J
    const/16 v18, 0x30

    ushr-long v16, v12, v18

    .line 1022
    .local v16, "size":J
    const-wide v18, 0xfffffffffff0L

    and-long v12, v12, v18

    .line 1023
    sget-boolean v18, Lorg/mapdb/StoreDirect;->$assertionsDisabled:Z

    if-nez v18, :cond_7

    const-wide/16 v18, 0x6

    add-long v18, v18, v14

    cmp-long v18, v18, v16

    if-lez v18, :cond_7

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 1024
    :cond_7
    const-wide/16 v18, 0x6

    add-long v18, v18, v14

    cmp-long v18, v18, v16

    if-nez v18, :cond_a

    .line 1025
    const-wide/16 v10, 0x4d0

    .line 1026
    .local v10, "newPageSize":J
    const-wide/16 v18, 0x4d0

    invoke-static/range {v18 .. v19}, Lorg/mapdb/StoreDirect;->size2ListIoRecid(J)J

    move-result-wide v18

    cmp-long v18, p1, v18

    if-nez v18, :cond_8

    .line 1028
    const-wide/16 v10, 0x500

    .line 1031
    :cond_8
    long-to-int v0, v10

    move/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/StoreDirect;->freePhysTake(IZZ)J

    move-result-wide v18

    const-wide v20, 0xfffffffffff0L

    and-long v8, v18, v20

    .line 1032
    .restart local v8    # "listPhysid":J
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-nez v18, :cond_9

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 1035
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    move-object/from16 v18, v0

    const/16 v19, 0x30

    shl-long v20, v10, v19

    const-wide v22, 0xfffffffffff0L

    and-long v22, v22, v6

    or-long v20, v20, v22

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v8, v9, v1, v2}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    move-object/from16 v18, v0

    const-wide/16 v20, 0x8

    add-long v20, v20, v8

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mapdb/Volume;->putSixLong(JJ)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    move-object/from16 v18, v0

    const-wide/high16 v20, 0x8000000000000L

    or-long v20, v20, v8

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mapdb/Volume;->putLong(JJ)V

    goto/16 :goto_0

    .line 1044
    .end local v8    # "listPhysid":J
    .end local v10    # "newPageSize":J
    :cond_a
    const-wide/16 v18, 0x6

    add-long v14, v14, v18

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    move-object/from16 v18, v0

    add-long v20, v6, v14

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mapdb/Volume;->putSixLong(JJ)V

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    move-object/from16 v18, v0

    const/16 v19, 0x30

    shl-long v20, v14, v19

    or-long v20, v20, v6

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mapdb/Volume;->putLong(JJ)V

    goto/16 :goto_0
.end method

.method protected longStackTake(JZ)J
    .locals 23
    .param p1, "ioList"    # J
    .param p3, "recursive"    # Z

    .prologue
    .line 948
    sget-boolean v18, Lorg/mapdb/StoreDirect;->$assertionsDisabled:Z

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreDirect;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v18

    if-nez v18, :cond_0

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 949
    :cond_0
    sget-boolean v18, Lorg/mapdb/StoreDirect;->$assertionsDisabled:Z

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

    .line 951
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v6

    .line 952
    .local v6, "dataOffset":J
    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-nez v18, :cond_3

    const-wide/16 v14, 0x0

    .line 992
    :goto_0
    return-wide v14

    .line 954
    :cond_3
    const/16 v18, 0x30

    ushr-long v12, v6, v18

    .line 955
    .local v12, "pos":J
    const-wide v18, 0xfffffffffff0L

    and-long v6, v6, v18

    .line 957
    const-wide/16 v18, 0x8

    cmp-long v18, v12, v18

    if-gez v18, :cond_4

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 959
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    move-object/from16 v18, v0

    add-long v20, v6, v12

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/Volume;->getSixLong(J)J

    move-result-wide v14

    .line 962
    .local v14, "ret":J
    const-wide/16 v18, 0x8

    cmp-long v18, v12, v18

    if-nez v18, :cond_8

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v8

    .line 965
    .local v8, "next":J
    const/16 v18, 0x30

    ushr-long v16, v8, v18

    .line 966
    .local v16, "size":J
    const-wide v18, 0xfffffffffff0L

    and-long v8, v8, v18

    .line 967
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-eqz v18, :cond_7

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Lorg/mapdb/Volume;->getUnsignedShort(J)I

    move-result v18

    move/from16 v0, v18

    int-to-long v10, v0

    .line 970
    .local v10, "nextSize":J
    sget-boolean v18, Lorg/mapdb/StoreDirect;->$assertionsDisabled:Z

    if-nez v18, :cond_5

    const-wide/16 v18, 0x8

    sub-long v18, v10, v18

    const-wide/16 v20, 0x6

    rem-long v18, v18, v20

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-eqz v18, :cond_5

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 971
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    move-object/from16 v18, v0

    const-wide/16 v20, 0x6

    sub-long v20, v10, v20

    const/16 v19, 0x30

    shl-long v20, v20, v19

    or-long v20, v20, v8

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 983
    .end local v10    # "nextSize":J
    :cond_6
    const/16 v18, 0x30

    shl-long v18, v16, v18

    or-long v18, v18, v6

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/mapdb/StoreDirect;->freePhysPut(JZ)V

    goto/16 :goto_0

    .line 974
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    move-object/from16 v18, v0

    const-wide/16 v20, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 975
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreDirect;->maxUsedIoList:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, p1

    if-nez v18, :cond_6

    .line 977
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreDirect;->maxUsedIoList:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-nez v18, :cond_6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreDirect;->maxUsedIoList:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x78

    cmp-long v18, v18, v20

    if-lez v18, :cond_6

    .line 978
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/mapdb/StoreDirect;->maxUsedIoList:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x8

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mapdb/StoreDirect;->maxUsedIoList:J

    goto :goto_1

    .line 986
    .end local v8    # "next":J
    .end local v16    # "size":J
    :cond_8
    const-wide/16 v18, 0x6

    sub-long v12, v12, v18

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    move-object/from16 v18, v0

    const/16 v19, 0x30

    shl-long v20, v12, v19

    or-long v20, v20, v6

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mapdb/Volume;->putLong(JJ)V

    goto/16 :goto_0
.end method

.method protected physAllocate(IZZ)[J
    .locals 12
    .param p1, "size"    # I
    .param p2, "ensureAvail"    # Z
    .param p3, "recursive"    # Z

    .prologue
    .line 662
    sget-boolean v7, Lorg/mapdb/StoreDirect;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lorg/mapdb/StoreDirect;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 663
    :cond_0
    int-to-long v8, p1

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_1

    const/4 v7, 0x1

    new-array v7, v7, [J

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    aput-wide v10, v7, v8

    .line 689
    :goto_0
    return-object v7

    .line 665
    :cond_1
    const v7, 0xffff

    if-ge p1, v7, :cond_2

    .line 666
    invoke-virtual {p0, p1, p2, p3}, Lorg/mapdb/StoreDirect;->freePhysTake(IZZ)J

    move-result-wide v2

    .line 667
    .local v2, "indexVal":J
    int-to-long v8, p1

    const/16 v7, 0x30

    shl-long/2addr v8, v7

    or-long/2addr v2, v8

    .line 668
    const/4 v7, 0x1

    new-array v7, v7, [J

    const/4 v8, 0x0

    aput-wide v2, v7, v8

    goto :goto_0

    .line 670
    .end local v2    # "indexVal":J
    :cond_2
    const/4 v7, 0x2

    new-array v4, v7, [J

    .line 671
    .local v4, "ret":[J
    const/4 v5, 0x0

    .line 672
    .local v5, "retPos":I
    const/16 v1, 0x8

    .local v1, "c":I
    move v6, v5

    .line 674
    .end local v5    # "retPos":I
    .local v6, "retPos":I
    :goto_1
    if-lez p1, :cond_6

    .line 675
    array-length v7, v4

    if-ne v6, v7, :cond_3

    array-length v7, v4

    mul-int/lit8 v7, v7, 0x2

    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    .line 676
    :cond_3
    const v7, 0xffff

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 677
    .local v0, "allocSize":I
    sub-int v7, v0, v1

    sub-int/2addr p1, v7

    .line 680
    invoke-virtual {p0, v0, p2, p3}, Lorg/mapdb/StoreDirect;->freePhysTake(IZZ)J

    move-result-wide v2

    .line 681
    .restart local v2    # "indexVal":J
    int-to-long v8, v0

    const/16 v7, 0x30

    shl-long/2addr v8, v7

    or-long/2addr v2, v8

    .line 682
    if-eqz v1, :cond_4

    const-wide/16 v8, 0x8

    or-long/2addr v2, v8

    .line 683
    :cond_4
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "retPos":I
    .restart local v5    # "retPos":I
    aput-wide v2, v4, v6

    .line 685
    const v7, 0xffff

    if-gt p1, v7, :cond_5

    const/4 v1, 0x0

    :goto_2
    move v6, v5

    .line 686
    .end local v5    # "retPos":I
    .restart local v6    # "retPos":I
    goto :goto_1

    .line 685
    .end local v6    # "retPos":I
    .restart local v5    # "retPos":I
    :cond_5
    const/16 v1, 0x8

    goto :goto_2

    .line 687
    .end local v0    # "allocSize":I
    .end local v2    # "indexVal":J
    .end local v5    # "retPos":I
    .restart local v6    # "retPos":I
    :cond_6
    if-eqz p1, :cond_7

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 689
    :cond_7
    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v7

    goto :goto_0
.end method

.method public preallocate()J
    .locals 10

    .prologue
    .line 304
    iget-object v3, p0, Lorg/mapdb/StoreDirect;->newRecidLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 306
    :try_start_0
    iget-object v3, p0, Lorg/mapdb/StoreDirect;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {p0, v3}, Lorg/mapdb/StoreDirect;->freeIoRecidTake(Z)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    .line 311
    .local v0, "ioRecid":J
    :try_start_2
    iget-object v3, p0, Lorg/mapdb/StoreDirect;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 314
    iget-object v3, p0, Lorg/mapdb/StoreDirect;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {v0, v1}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v6

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    .line 315
    .local v2, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 317
    :try_start_3
    iget-object v3, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    const-wide/16 v6, 0x4

    invoke-virtual {v3, v0, v1, v6, v7}, Lorg/mapdb/Volume;->putLong(JJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 319
    :try_start_4
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 321
    const-wide/32 v6, 0x8080

    sub-long v6, v0, v6

    const-wide/16 v8, 0x8

    div-long v4, v6, v8

    .line 322
    .local v4, "recid":J
    sget-boolean v3, Lorg/mapdb/StoreDirect;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 327
    .end local v0    # "ioRecid":J
    .end local v2    # "lock":Ljava/util/concurrent/locks/Lock;
    .end local v4    # "recid":J
    :catchall_0
    move-exception v3

    iget-object v6, p0, Lorg/mapdb/StoreDirect;->newRecidLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v3

    .line 311
    :catchall_1
    move-exception v3

    :try_start_5
    iget-object v6, p0, Lorg/mapdb/StoreDirect;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 319
    .restart local v0    # "ioRecid":J
    .restart local v2    # "lock":Ljava/util/concurrent/locks/Lock;
    :catchall_2
    move-exception v3

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 327
    .restart local v4    # "recid":J
    :cond_0
    iget-object v3, p0, Lorg/mapdb/StoreDirect;->newRecidLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-wide v4
.end method

.method public preallocate([J)V
    .locals 8
    .param p1, "recids"    # [J

    .prologue
    .line 333
    iget-object v4, p0, Lorg/mapdb/StoreDirect;->newRecidLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 335
    :try_start_0
    iget-object v4, p0, Lorg/mapdb/StoreDirect;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_1
    array-length v4, p1

    if-ge v0, v4, :cond_0

    .line 338
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lorg/mapdb/StoreDirect;->freeIoRecidTake(Z)J

    move-result-wide v4

    aput-wide v4, p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    :cond_0
    :try_start_2
    iget-object v4, p0, Lorg/mapdb/StoreDirect;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 342
    const/4 v0, 0x0

    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_2

    .line 343
    aget-wide v2, p1, v0

    .line 344
    .local v2, "ioRecid":J
    iget-object v4, p0, Lorg/mapdb/StoreDirect;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {v2, v3}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    .line 345
    .local v1, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    :try_start_3
    iget-object v4, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    const-wide/16 v6, 0x4

    invoke-virtual {v4, v2, v3, v6, v7}, Lorg/mapdb/Volume;->putLong(JJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 349
    :try_start_4
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 351
    const-wide/32 v4, 0x8080

    sub-long v4, v2, v4

    const-wide/16 v6, 0x8

    div-long/2addr v4, v6

    aput-wide v4, p1, v0

    .line 352
    sget-boolean v4, Lorg/mapdb/StoreDirect;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    aget-wide v4, p1, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 357
    .end local v0    # "i":I
    .end local v1    # "lock":Ljava/util/concurrent/locks/Lock;
    .end local v2    # "ioRecid":J
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lorg/mapdb/StoreDirect;->newRecidLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v4

    .line 340
    .restart local v0    # "i":I
    :catchall_1
    move-exception v4

    :try_start_5
    iget-object v5, p0, Lorg/mapdb/StoreDirect;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 349
    .restart local v1    # "lock":Ljava/util/concurrent/locks/Lock;
    .restart local v2    # "ioRecid":J
    :catchall_2
    move-exception v4

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 342
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 357
    .end local v1    # "lock":Ljava/util/concurrent/locks/Lock;
    .end local v2    # "ioRecid":J
    :cond_2
    iget-object v4, p0, Lorg/mapdb/StoreDirect;->newRecidLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 359
    return-void
.end method

.method public put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J
    .locals 12
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
    .line 364
    .local p1, "value":Ljava/lang/Object;, "TA;"
    .local p2, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    sget-boolean v5, Lorg/mapdb/StoreDirect;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 365
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/StoreDirect;->serialize(Ljava/lang/Object;Lorg/mapdb/Serializer;)Lorg/mapdb/DataOutput2;

    move-result-object v4

    .line 367
    .local v4, "out":Lorg/mapdb/DataOutput2;
    iget-object v5, p0, Lorg/mapdb/StoreDirect;->newRecidLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 370
    :try_start_0
    iget-object v5, p0, Lorg/mapdb/StoreDirect;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 374
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {p0, v5}, Lorg/mapdb/StoreDirect;->freeIoRecidTake(Z)J

    move-result-wide v2

    .line 375
    .local v2, "ioRecid":J
    iget v5, v4, Lorg/mapdb/DataOutput2;->pos:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v5, v8, v9}, Lorg/mapdb/StoreDirect;->physAllocate(IZZ)[J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 377
    .local v0, "indexVals":[J
    :try_start_2
    iget-object v5, p0, Lorg/mapdb/StoreDirect;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 379
    iget-object v5, p0, Lorg/mapdb/StoreDirect;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {v2, v3}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v8

    aget-object v5, v5, v8

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    .line 380
    .local v1, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 382
    :try_start_3
    invoke-virtual {p0, v4, v2, v3, v0}, Lorg/mapdb/StoreDirect;->put2(Lorg/mapdb/DataOutput2;J[J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 384
    :try_start_4
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 387
    iget-object v5, p0, Lorg/mapdb/StoreDirect;->newRecidLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 390
    const-wide/32 v8, 0x8080

    sub-long v8, v2, v8

    const-wide/16 v10, 0x8

    div-long v6, v8, v10

    .line 391
    .local v6, "recid":J
    sget-boolean v5, Lorg/mapdb/StoreDirect;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gtz v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 377
    .end local v0    # "indexVals":[J
    .end local v1    # "lock":Ljava/util/concurrent/locks/Lock;
    .end local v2    # "ioRecid":J
    .end local v6    # "recid":J
    :catchall_0
    move-exception v5

    :try_start_5
    iget-object v8, p0, Lorg/mapdb/StoreDirect;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 387
    :catchall_1
    move-exception v5

    iget-object v8, p0, Lorg/mapdb/StoreDirect;->newRecidLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v5

    .line 384
    .restart local v0    # "indexVals":[J
    .restart local v1    # "lock":Ljava/util/concurrent/locks/Lock;
    .restart local v2    # "ioRecid":J
    :catchall_2
    move-exception v5

    :try_start_6
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 394
    .restart local v6    # "recid":J
    :cond_1
    iget-object v5, p0, Lorg/mapdb/StoreDirect;->recycledDataOuts:Ljava/util/Queue;

    invoke-interface {v5, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 395
    return-wide v6
.end method

.method protected put2(Lorg/mapdb/DataOutput2;J[J)V
    .locals 18
    .param p1, "out"    # Lorg/mapdb/DataOutput2;
    .param p2, "ioRecid"    # J
    .param p4, "indexVals"    # [J

    .prologue
    .line 399
    sget-boolean v3, Lorg/mapdb/StoreDirect;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreDirect;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static/range {p2 .. p3}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->isHeldByCurrentThread()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 400
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    const/4 v4, 0x0

    aget-wide v4, p4, v4

    const-wide/16 v16, 0x2

    or-long v4, v4, v16

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1, v4, v5}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 402
    move-object/from16 v0, p4

    array-length v3, v0

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    aget-wide v4, p4, v3

    const-wide/16 v16, 0x0

    cmp-long v3, v4, v16

    if-nez v3, :cond_3

    .line 405
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    const/4 v4, 0x0

    aget-wide v4, p4, v4

    const-wide v16, 0xfffffffffff0L

    and-long v4, v4, v16

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/mapdb/DataOutput2;->buf:[B

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget v8, v0, Lorg/mapdb/DataOutput2;->pos:I

    invoke-virtual/range {v3 .. v8}, Lorg/mapdb/Volume;->putData(J[BII)V

    .line 429
    :cond_2
    return-void

    .line 408
    :cond_3
    const/4 v7, 0x0

    .line 410
    .local v7, "outPos":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p4

    array-length v3, v0

    if-ge v9, v3, :cond_9

    .line 411
    move-object/from16 v0, p4

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ne v9, v3, :cond_4

    const/4 v2, 0x0

    .line 412
    .local v2, "c":I
    :goto_1
    aget-wide v10, p4, v9

    .line 413
    .local v10, "indexVal":J
    const-wide/16 v4, 0x8

    and-long/2addr v4, v10

    const-wide/16 v16, 0x0

    cmp-long v3, v4, v16

    if-nez v3, :cond_5

    const/4 v12, 0x1

    .line 414
    .local v12, "isLast":Z
    :goto_2
    sget-boolean v3, Lorg/mapdb/StoreDirect;->$assertionsDisabled:Z

    if-nez v3, :cond_7

    move-object/from16 v0, p4

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ne v9, v3, :cond_6

    const/4 v3, 0x1

    :goto_3
    if-eq v12, v3, :cond_7

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 411
    .end local v2    # "c":I
    .end local v10    # "indexVal":J
    .end local v12    # "isLast":Z
    :cond_4
    const/16 v2, 0x8

    goto :goto_1

    .line 413
    .restart local v2    # "c":I
    .restart local v10    # "indexVal":J
    :cond_5
    const/4 v12, 0x0

    goto :goto_2

    .line 414
    .restart local v12    # "isLast":Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    .line 415
    :cond_7
    const/16 v3, 0x30

    ushr-long v4, v10, v3

    long-to-int v13, v4

    .line 416
    .local v13, "size":I
    const-wide v4, 0xfffffffffff0L

    and-long v14, v10, v4

    .line 419
    .local v14, "offset":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    int-to-long v4, v2

    add-long/2addr v4, v14

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/mapdb/DataOutput2;->buf:[B

    sub-int v8, v13, v2

    invoke-virtual/range {v3 .. v8}, Lorg/mapdb/Volume;->putData(J[BII)V

    .line 420
    sub-int v3, v13, v2

    add-int/2addr v7, v3

    .line 422
    if-lez v2, :cond_8

    .line 424
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    add-int/lit8 v4, v9, 0x1

    aget-wide v4, p4, v4

    invoke-virtual {v3, v14, v15, v4, v5}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 410
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 427
    .end local v2    # "c":I
    .end local v10    # "indexVal":J
    .end local v12    # "isLast":Z
    .end local v13    # "size":I
    .end local v14    # "offset":J
    :cond_9
    move-object/from16 v0, p1

    iget v3, v0, Lorg/mapdb/DataOutput2;->pos:I

    if-eq v7, v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method public rollback()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 775
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "rollback not supported with journal disabled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V
    .locals 9
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
    .line 493
    .local p3, "value":Ljava/lang/Object;, "TA;"
    .local p4, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    sget-boolean v4, Lorg/mapdb/StoreDirect;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p3, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 494
    :cond_0
    sget-boolean v4, Lorg/mapdb/StoreDirect;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gtz v4, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 495
    :cond_1
    invoke-virtual {p0, p3, p4}, Lorg/mapdb/StoreDirect;->serialize(Ljava/lang/Object;Lorg/mapdb/Serializer;)Lorg/mapdb/DataOutput2;

    move-result-object v3

    .line 497
    .local v3, "out":Lorg/mapdb/DataOutput2;
    const-wide/32 v4, 0x8080

    const-wide/16 v6, 0x8

    mul-long/2addr v6, p1

    add-long v0, v4, v6

    .line 499
    .local v0, "ioRecid":J
    iget-object v4, p0, Lorg/mapdb/StoreDirect;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {v0, v1}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    .line 500
    .local v2, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 502
    :try_start_0
    invoke-virtual {p0, v3, v0, v1}, Lorg/mapdb/StoreDirect;->update2(Lorg/mapdb/DataOutput2;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 509
    iget-object v4, p0, Lorg/mapdb/StoreDirect;->recycledDataOuts:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 510
    return-void

    .line 504
    :catchall_0
    move-exception v4

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method

.method protected update2(Lorg/mapdb/DataOutput2;J)V
    .locals 18
    .param p1, "out"    # Lorg/mapdb/DataOutput2;
    .param p2, "ioRecid"    # J

    .prologue
    .line 513
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v12

    .line 514
    .local v12, "indexVal":J
    const/16 v5, 0x30

    ushr-long v8, v12, v5

    long-to-int v15, v8

    .line 515
    .local v15, "size":I
    const-wide/16 v8, 0x8

    and-long/2addr v8, v12

    const-wide/16 v16, 0x0

    cmp-long v5, v8, v16

    if-eqz v5, :cond_0

    const/4 v14, 0x1

    .line 516
    .local v14, "linked":Z
    :goto_0
    sget-boolean v5, Lorg/mapdb/StoreDirect;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/StoreDirect;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static/range {p2 .. p3}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v8

    aget-object v5, v5, v8

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->isHeldByCurrentThread()Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 515
    .end local v14    # "linked":Z
    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    .line 518
    .restart local v14    # "linked":Z
    :cond_1
    if-nez v14, :cond_2

    move-object/from16 v0, p1

    iget v5, v0, Lorg/mapdb/DataOutput2;->pos:I

    if-lez v5, :cond_2

    if-lez v15, :cond_2

    int-to-long v8, v15

    invoke-static {v8, v9}, Lorg/mapdb/StoreDirect;->size2ListIoRecid(J)J

    move-result-wide v8

    move-object/from16 v0, p1

    iget v5, v0, Lorg/mapdb/DataOutput2;->pos:I

    int-to-long v0, v5

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Lorg/mapdb/StoreDirect;->size2ListIoRecid(J)J

    move-result-wide v16

    cmp-long v5, v8, v16

    if-nez v5, :cond_2

    .line 520
    const-wide v8, 0xfffffffffff0L

    and-long v6, v12, v8

    .line 523
    .local v6, "offset":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    move-object/from16 v0, p1

    iget v8, v0, Lorg/mapdb/DataOutput2;->pos:I

    int-to-long v8, v8

    const/16 v10, 0x30

    shl-long/2addr v8, v10

    or-long/2addr v8, v6

    const-wide/16 v16, 0x2

    or-long v8, v8, v16

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1, v8, v9}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 525
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/StoreDirect;->phys:Lorg/mapdb/Volume;

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/mapdb/DataOutput2;->buf:[B

    const/4 v9, 0x0

    move-object/from16 v0, p1

    iget v10, v0, Lorg/mapdb/DataOutput2;->pos:I

    invoke-virtual/range {v5 .. v10}, Lorg/mapdb/Volume;->putData(J[BII)V

    .line 553
    .end local v6    # "offset":J
    :goto_1
    sget-boolean v5, Lorg/mapdb/StoreDirect;->$assertionsDisabled:Z

    if-nez v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/StoreDirect;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static/range {p2 .. p3}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v8

    aget-object v5, v5, v8

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->isHeldByCurrentThread()Z

    move-result v5

    if-nez v5, :cond_6

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 528
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/mapdb/StoreDirect;->spaceReclaimTrack:Z

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lorg/mapdb/StoreDirect;->getLinkedRecordsIndexVals(J)[J

    move-result-object v11

    .line 530
    .local v11, "indexVals":[J
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/StoreDirect;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 533
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/mapdb/StoreDirect;->spaceReclaimTrack:Z

    if-eqz v5, :cond_5

    .line 535
    if-lez v15, :cond_3

    .line 536
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v5}, Lorg/mapdb/StoreDirect;->freePhysPut(JZ)V

    .line 539
    :cond_3
    if-eqz v11, :cond_5

    .line 540
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    array-length v5, v11

    if-ge v4, v5, :cond_5

    aget-wide v8, v11, v4

    const-wide/16 v16, 0x0

    cmp-long v5, v8, v16

    if-eqz v5, :cond_5

    .line 541
    aget-wide v8, v11, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9, v5}, Lorg/mapdb/StoreDirect;->freePhysPut(JZ)V

    .line 540
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 528
    .end local v4    # "i":I
    .end local v11    # "indexVals":[J
    :cond_4
    const/4 v11, 0x0

    goto :goto_2

    .line 546
    .restart local v11    # "indexVals":[J
    :cond_5
    move-object/from16 v0, p1

    iget v5, v0, Lorg/mapdb/DataOutput2;->pos:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v8, v9}, Lorg/mapdb/StoreDirect;->physAllocate(IZZ)[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 548
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/StoreDirect;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 551
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3, v11}, Lorg/mapdb/StoreDirect;->put2(Lorg/mapdb/DataOutput2;J[J)V

    goto :goto_1

    .line 548
    :catchall_0
    move-exception v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/mapdb/StoreDirect;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5

    .line 554
    .end local v11    # "indexVals":[J
    :cond_6
    return-void
.end method

.method public updateRaw(JLjava/nio/ByteBuffer;)V
    .locals 11
    .param p1, "recid"    # J
    .param p3, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    const-wide/16 v8, 0x8

    .line 1155
    mul-long v4, p1, v8

    const-wide/32 v6, 0x8080

    add-long v2, v4, v6

    .line 1156
    .local v2, "ioRecid":J
    iget-wide v4, p0, Lorg/mapdb/StoreDirect;->indexSize:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 1157
    add-long v4, v2, v8

    iput-wide v4, p0, Lorg/mapdb/StoreDirect;->indexSize:J

    .line 1158
    iget-object v1, p0, Lorg/mapdb/StoreDirect;->index:Lorg/mapdb/Volume;

    iget-wide v4, p0, Lorg/mapdb/StoreDirect;->indexSize:J

    invoke-virtual {v1, v4, v5}, Lorg/mapdb/Volume;->ensureAvailable(J)V

    .line 1161
    :cond_0
    const/4 v0, 0x0

    .line 1163
    .local v0, "b":[B
    if-eqz p3, :cond_1

    .line 1164
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 1165
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [B

    .line 1166
    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1169
    :cond_1
    sget-object v1, Lorg/mapdb/Serializer;->BYTE_ARRAY_NOSIZE:Lorg/mapdb/Serializer;

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/mapdb/StoreDirect;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 1170
    return-void
.end method
