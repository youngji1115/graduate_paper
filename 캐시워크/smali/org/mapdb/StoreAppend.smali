.class Lorg/mapdb/StoreAppend;
.super Lorg/mapdb/Store;
.source "StoreAppend.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final END:J = -0x2L

.field protected static final FILE_MASK:J = 0xffffffL

.field protected static final FILE_SHIFT:I = 0x18

.field protected static final HEADER:J = 0x11350358c060a059L

.field protected static final MAX_FILE_SIZE_SHIFT:I = 0x14

.field protected static final RECIDP:J = 0x3L

.field protected static final SIZEP:J = 0x2L

.field protected static final SKIP:J = -0x1L


# instance fields
.field protected volatile closed:Z

.field protected currFileNum:J

.field protected currPos:J

.field protected currVolume:Lorg/mapdb/Volume;

.field protected final deleteFilesAfterClose:Z

.field protected final file:Ljava/io/File;

.field protected index:Lorg/mapdb/Volume;

.field protected final indexInTx:Lorg/mapdb/LongMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/LongMap",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected maxRecid:J

.field protected volatile modified:Z

.field protected final readOnly:Z

.field protected rollbackCurrFileNum:J

.field protected rollbackCurrPos:J

.field protected rollbackMaxRecid:J

.field protected final syncOnCommit:Z

.field protected final tx:Z

.field protected final useRandomAccessFile:Z

.field protected final volumes:Lorg/mapdb/LongConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/LongConcurrentHashMap",
            "<",
            "Lorg/mapdb/Volume;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/mapdb/StoreAppend;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/mapdb/StoreAppend;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 11
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 231
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v10, v2

    invoke-direct/range {v0 .. v10}, Lorg/mapdb/StoreAppend;-><init>(Ljava/io/File;ZZZZZZZ[BZ)V

    .line 232
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZZZZZZZ[BZ)V
    .locals 35
    .param p1, "file"    # Ljava/io/File;
    .param p2, "useRandomAccessFile"    # Z
    .param p3, "readOnly"    # Z
    .param p4, "transactionDisabled"    # Z
    .param p5, "deleteFilesAfterClose"    # Z
    .param p6, "syncOnCommitDisabled"    # Z
    .param p7, "checksum"    # Z
    .param p8, "compress"    # Z
    .param p9, "password"    # [B
    .param p10, "disableLocks"    # Z

    .prologue
    .line 102
    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v2, p8

    move-object/from16 v3, p9

    move/from16 v4, p10

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mapdb/Store;-><init>(ZZ[BZ)V

    .line 67
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lorg/mapdb/StoreAppend;->closed:Z

    .line 69
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lorg/mapdb/StoreAppend;->modified:Z

    .line 73
    new-instance v8, Lorg/mapdb/LongConcurrentHashMap;

    invoke-direct {v8}, Lorg/mapdb/LongConcurrentHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v8, v0, Lorg/mapdb/StoreAppend;->volumes:Lorg/mapdb/LongConcurrentHashMap;

    .line 92
    new-instance v8, Lorg/mapdb/Volume$MemoryVol;

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/16 v12, 0x14

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/mapdb/Volume$MemoryVol;-><init>(ZJI)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lorg/mapdb/StoreAppend;->index:Lorg/mapdb/Volume;

    .line 103
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mapdb/StoreAppend;->file:Ljava/io/File;

    .line 104
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mapdb/StoreAppend;->useRandomAccessFile:Z

    .line 105
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mapdb/StoreAppend;->readOnly:Z

    .line 106
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mapdb/StoreAppend;->deleteFilesAfterClose:Z

    .line 107
    if-nez p6, :cond_1

    const/4 v8, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lorg/mapdb/StoreAppend;->syncOnCommit:Z

    .line 108
    if-nez p4, :cond_2

    const/4 v8, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lorg/mapdb/StoreAppend;->tx:Z

    .line 109
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/mapdb/StoreAppend;->tx:Z

    if-eqz v8, :cond_3

    new-instance v8, Lorg/mapdb/LongConcurrentHashMap;

    invoke-direct {v8}, Lorg/mapdb/LongConcurrentHashMap;-><init>()V

    :goto_2
    move-object/from16 v0, p0

    iput-object v8, v0, Lorg/mapdb/StoreAppend;->indexInTx:Lorg/mapdb/LongMap;

    .line 111
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v22

    .line 112
    .local v22, "parent":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_4

    .line 113
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Parent dir does not exist: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 107
    .end local v22    # "parent":Ljava/io/File;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 108
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 109
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 116
    .restart local v22    # "parent":Ljava/io/File;
    :cond_4
    new-instance v30, Ljava/util/TreeSet;

    invoke-direct/range {v30 .. v30}, Ljava/util/TreeSet;-><init>()V

    .line 117
    .local v30, "sortedFiles":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lorg/mapdb/Fun$Tuple2<Ljava/lang/Long;Ljava/io/File;>;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    .line 118
    .local v23, "prefix":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .local v6, "arr$":[Ljava/io/File;
    array-length v15, v6

    .local v15, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_3
    if-ge v14, v15, :cond_7

    aget-object v7, v6, v14

    .line 119
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    .line 120
    .local v18, "name":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    if-gt v8, v9, :cond_6

    .line 118
    :cond_5
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 121
    :cond_6
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 122
    .local v21, "number":Ljava/lang/String;
    const-string v8, "^[0-9]+$"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 123
    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v8, v7}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v8

    move-object/from16 v0, v30

    invoke-interface {v0, v8}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 127
    .end local v7    # "f":Ljava/io/File;
    .end local v18    # "name":Ljava/lang/String;
    .end local v21    # "number":Ljava/lang/String;
    :cond_7
    invoke-interface/range {v30 .. v30}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 129
    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lorg/mapdb/StoreAppend;->getFileFromNum(J)Ljava/io/File;

    move-result-object v7

    const-wide/16 v10, 0x0

    const/16 v12, 0x14

    const/4 v13, 0x0

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-static/range {v7 .. v13}, Lorg/mapdb/Volume;->volumeForFile(Ljava/io/File;ZZJII)Lorg/mapdb/Volume;

    move-result-object v34

    .line 130
    .local v34, "zero":Lorg/mapdb/Volume;
    const-wide/16 v8, 0x40

    move-object/from16 v0, v34

    invoke-virtual {v0, v8, v9}, Lorg/mapdb/Volume;->ensureAvailable(J)V

    .line 131
    const-wide/16 v8, 0x0

    const-wide v10, 0x11350358c060a059L    # 8.870188104755862E-226

    move-object/from16 v0, v34

    invoke-virtual {v0, v8, v9, v10, v11}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 132
    const-wide/16 v24, 0x8

    .line 134
    .local v24, "pos":J
    const-wide/16 v26, 0x1

    .local v26, "recid":J
    :goto_5
    const-wide/16 v8, 0x7

    cmp-long v8, v26, v8

    if-gtz v8, :cond_8

    .line 135
    const-wide/16 v8, 0x3

    add-long v8, v8, v26

    move-object/from16 v0, v34

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2, v8, v9}, Lorg/mapdb/Volume;->putPackedLong(JJ)I

    move-result v8

    int-to-long v8, v8

    add-long v24, v24, v8

    .line 136
    const-wide/16 v8, 0x2

    move-object/from16 v0, v34

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2, v8, v9}, Lorg/mapdb/Volume;->putPackedLong(JJ)I

    move-result v8

    int-to-long v8, v8

    add-long v24, v24, v8

    .line 134
    const-wide/16 v8, 0x1

    add-long v26, v26, v8

    goto :goto_5

    .line 138
    :cond_8
    const-wide/16 v8, 0x7

    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/mapdb/StoreAppend;->maxRecid:J

    .line 139
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/mapdb/StoreAppend;->index:Lorg/mapdb/Volume;

    const-wide/16 v10, 0x40

    invoke-virtual {v8, v10, v11}, Lorg/mapdb/Volume;->ensureAvailable(J)V

    .line 141
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/mapdb/StoreAppend;->volumes:Lorg/mapdb/LongConcurrentHashMap;

    const-wide/16 v10, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v8, v10, v11, v0}, Lorg/mapdb/LongConcurrentHashMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 143
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/mapdb/StoreAppend;->tx:Z

    if-eqz v8, :cond_9

    .line 144
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mapdb/StoreAppend;->rollbackCurrPos:J

    .line 145
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/mapdb/StoreAppend;->maxRecid:J

    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/mapdb/StoreAppend;->rollbackMaxRecid:J

    .line 146
    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/mapdb/StoreAppend;->rollbackCurrFileNum:J

    .line 147
    const/4 v8, 0x1

    move-object/from16 v0, v34

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2, v8}, Lorg/mapdb/Volume;->putUnsignedByte(JI)V

    .line 148
    const-wide/16 v8, 0x1

    add-long v24, v24, v8

    .line 151
    :cond_9
    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mapdb/StoreAppend;->currVolume:Lorg/mapdb/Volume;

    .line 152
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mapdb/StoreAppend;->currPos:J

    .line 228
    .end local v14    # "i$":I
    .end local v34    # "zero":Lorg/mapdb/Volume;
    :goto_6
    return-void

    .line 155
    .end local v24    # "pos":J
    .end local v26    # "recid":J
    .restart local v14    # "i$":I
    :cond_a
    invoke-interface/range {v30 .. v30}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lorg/mapdb/Fun$Tuple2;

    .line 156
    .local v31, "t":Lorg/mapdb/Fun$Tuple2;, "Lorg/mapdb/Fun$Tuple2<Ljava/lang/Long;Ljava/io/File;>;"
    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/mapdb/Fun$Tuple2;->a:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Long;

    .line 157
    .local v20, "num":Ljava/lang/Long;
    move-object/from16 v0, v31

    iget-object v7, v0, Lorg/mapdb/Fun$Tuple2;->b:Ljava/lang/Object;

    check-cast v7, Ljava/io/File;

    .line 158
    .restart local v7    # "f":Ljava/io/File;
    const-wide/16 v10, 0x0

    const/16 v12, 0x14

    const/4 v13, 0x0

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-static/range {v7 .. v13}, Lorg/mapdb/Volume;->volumeForFile(Ljava/io/File;ZZJII)Lorg/mapdb/Volume;

    move-result-object v32

    .line 159
    .local v32, "vol":Lorg/mapdb/Volume;
    invoke-virtual/range {v32 .. v32}, Lorg/mapdb/Volume;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_c

    const-wide/16 v8, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v8, v9}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v8

    const-wide v10, 0x11350358c060a059L    # 8.870188104755862E-226

    cmp-long v8, v8, v10

    if-eqz v8, :cond_e

    .line 160
    :cond_c
    invoke-virtual/range {v32 .. v32}, Lorg/mapdb/Volume;->sync()V

    .line 161
    invoke-virtual/range {v32 .. v32}, Lorg/mapdb/Volume;->close()V

    .line 162
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/mapdb/StoreAppend;->volumes:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v8}, Lorg/mapdb/LongConcurrentHashMap;->valuesIterator()Ljava/util/Iterator;

    move-result-object v33

    .line 163
    .local v33, "vols":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/mapdb/Volume;>;"
    :goto_7
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 164
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/mapdb/Volume;

    .line 165
    .local v19, "next":Lorg/mapdb/Volume;
    invoke-virtual/range {v19 .. v19}, Lorg/mapdb/Volume;->sync()V

    .line 166
    invoke-virtual/range {v19 .. v19}, Lorg/mapdb/Volume;->close()V

    goto :goto_7

    .line 168
    .end local v19    # "next":Lorg/mapdb/Volume;
    :cond_d
    new-instance v8, Ljava/io/IOError;

    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File corrupted: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 170
    .end local v33    # "vols":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/mapdb/Volume;>;"
    :cond_e
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/mapdb/StoreAppend;->volumes:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object/from16 v0, v32

    invoke-virtual {v8, v10, v11, v0}, Lorg/mapdb/LongConcurrentHashMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-wide/16 v24, 0x8

    .line 173
    .restart local v24    # "pos":J
    :cond_f
    :goto_8
    const-wide/32 v8, 0xffffff

    cmp-long v8, v24, v8

    if-gtz v8, :cond_b

    .line 174
    move-object/from16 v0, v32

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/Volume;->getPackedLong(J)J

    move-result-wide v26

    .line 175
    .restart local v26    # "recid":J
    invoke-static/range {v26 .. v27}, Lorg/mapdb/StoreAppend;->packedLongSize(J)I

    move-result v8

    int-to-long v8, v8

    add-long v24, v24, v8

    .line 176
    const-wide/16 v8, 0x3

    sub-long v26, v26, v8

    .line 177
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/mapdb/StoreAppend;->maxRecid:J

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/mapdb/StoreAppend;->maxRecid:J

    .line 180
    const-wide/16 v8, -0x2

    cmp-long v8, v26, v8

    if-nez v8, :cond_10

    .line 182
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mapdb/StoreAppend;->currVolume:Lorg/mapdb/Volume;

    .line 183
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mapdb/StoreAppend;->currPos:J

    .line 184
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/mapdb/StoreAppend;->currFileNum:J

    .line 185
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/mapdb/StoreAppend;->rollbackCurrFileNum:J

    .line 186
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/mapdb/StoreAppend;->maxRecid:J

    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/mapdb/StoreAppend;->rollbackMaxRecid:J

    .line 187
    const-wide/16 v8, 0x1

    sub-long v8, v24, v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/mapdb/StoreAppend;->rollbackCurrPos:J

    goto/16 :goto_6

    .line 191
    :cond_10
    const-wide/16 v8, -0x1

    cmp-long v8, v26, v8

    if-eqz v8, :cond_f

    .line 194
    const-wide/16 v8, 0x0

    cmp-long v8, v26, v8

    if-gtz v8, :cond_12

    .line 195
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/mapdb/StoreAppend;->volumes:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v8}, Lorg/mapdb/LongConcurrentHashMap;->valuesIterator()Ljava/util/Iterator;

    move-result-object v33

    .line 196
    .restart local v33    # "vols":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/mapdb/Volume;>;"
    :goto_9
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 197
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/mapdb/Volume;

    .line 198
    .restart local v19    # "next":Lorg/mapdb/Volume;
    invoke-virtual/range {v19 .. v19}, Lorg/mapdb/Volume;->sync()V

    .line 199
    invoke-virtual/range {v19 .. v19}, Lorg/mapdb/Volume;->close()V

    goto :goto_9

    .line 201
    .end local v19    # "next":Lorg/mapdb/Volume;
    :cond_11
    new-instance v8, Ljava/io/IOError;

    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File corrupted: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 204
    .end local v33    # "vols":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/mapdb/Volume;>;"
    :cond_12
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/mapdb/StoreAppend;->index:Lorg/mapdb/Volume;

    const-wide/16 v10, 0x8

    mul-long v10, v10, v26

    const-wide/16 v12, 0x8

    add-long/2addr v10, v12

    invoke-virtual {v8, v10, v11}, Lorg/mapdb/Volume;->ensureAvailable(J)V

    .line 205
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/16 v10, 0x18

    shl-long/2addr v8, v10

    or-long v16, v8, v24

    .line 206
    .local v16, "indexVal":J
    move-object/from16 v0, v32

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/Volume;->getPackedLong(J)J

    move-result-wide v28

    .line 207
    .local v28, "size":J
    invoke-static/range {v28 .. v29}, Lorg/mapdb/StoreAppend;->packedLongSize(J)I

    move-result v8

    int-to-long v8, v8

    add-long v24, v24, v8

    .line 208
    const-wide/16 v8, 0x2

    sub-long v28, v28, v8

    .line 210
    const-wide/16 v8, 0x0

    cmp-long v8, v28, v8

    if-nez v8, :cond_13

    .line 211
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/mapdb/StoreAppend;->index:Lorg/mapdb/Volume;

    const-wide/16 v10, 0x8

    mul-long v10, v10, v26

    const-wide/16 v12, 0x0

    invoke-virtual {v8, v10, v11, v12, v13}, Lorg/mapdb/Volume;->putLong(JJ)V

    goto/16 :goto_8

    .line 212
    :cond_13
    const-wide/16 v8, 0x0

    cmp-long v8, v28, v8

    if-lez v8, :cond_14

    .line 213
    add-long v24, v24, v28

    .line 214
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/mapdb/StoreAppend;->index:Lorg/mapdb/Volume;

    const-wide/16 v10, 0x8

    mul-long v10, v10, v26

    move-wide/from16 v0, v16

    invoke-virtual {v8, v10, v11, v0, v1}, Lorg/mapdb/Volume;->putLong(JJ)V

    goto/16 :goto_8

    .line 216
    :cond_14
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/mapdb/StoreAppend;->index:Lorg/mapdb/Volume;

    const-wide/16 v10, 0x8

    mul-long v10, v10, v26

    const-wide/high16 v12, -0x8000000000000000L

    invoke-virtual {v8, v10, v11, v12, v13}, Lorg/mapdb/Volume;->putLong(JJ)V

    goto/16 :goto_8

    .line 220
    .end local v7    # "f":Ljava/io/File;
    .end local v16    # "indexVal":J
    .end local v20    # "num":Ljava/lang/Long;
    .end local v24    # "pos":J
    .end local v26    # "recid":J
    .end local v28    # "size":J
    .end local v31    # "t":Lorg/mapdb/Fun$Tuple2;, "Lorg/mapdb/Fun$Tuple2<Ljava/lang/Long;Ljava/io/File;>;"
    .end local v32    # "vol":Lorg/mapdb/Volume;
    :cond_15
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/mapdb/StoreAppend;->volumes:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v8}, Lorg/mapdb/LongConcurrentHashMap;->valuesIterator()Ljava/util/Iterator;

    move-result-object v33

    .line 221
    .restart local v33    # "vols":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/mapdb/Volume;>;"
    :goto_a
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16

    .line 222
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/mapdb/Volume;

    .line 223
    .restart local v19    # "next":Lorg/mapdb/Volume;
    invoke-virtual/range {v19 .. v19}, Lorg/mapdb/Volume;->sync()V

    .line 224
    invoke-virtual/range {v19 .. v19}, Lorg/mapdb/Volume;->close()V

    goto :goto_a

    .line 226
    .end local v19    # "next":Lorg/mapdb/Volume;
    :cond_16
    new-instance v8, Ljava/io/IOError;

    new-instance v9, Ljava/io/IOException;

    const-string v10, "File not sealed, data possibly corrupted"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method

.method protected static packedLongSize(J)I
    .locals 6
    .param p0, "value"    # J

    .prologue
    .line 677
    const/4 v0, 0x1

    .line 678
    .local v0, "ret":I
    :goto_0
    const-wide/16 v2, -0x80

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 679
    add-int/lit8 v0, v0, 0x1

    .line 680
    const/4 v1, 0x7

    ushr-long/2addr p0, v1

    goto :goto_0

    .line 682
    :cond_0
    return v0
.end method


# virtual methods
.method public calculateStatistics()Ljava/lang/String;
    .locals 1

    .prologue
    .line 671
    const/4 v0, 0x0

    return-object v0
.end method

.method public canRollback()Z
    .locals 1

    .prologue
    .line 575
    iget-boolean v0, p0, Lorg/mapdb/StoreAppend;->tx:Z

    return v0
.end method

.method public clearCache()V
    .locals 0

    .prologue
    .line 587
    return-void
.end method

.method public close()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 481
    iget-boolean v4, p0, Lorg/mapdb/StoreAppend;->closed:Z

    if-eqz v4, :cond_0

    .line 505
    :goto_0
    return-void

    .line 483
    :cond_0
    iget-object v4, p0, Lorg/mapdb/StoreAppend;->closeListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 484
    .local v0, "closeListener":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 486
    .end local v0    # "closeListener":Ljava/lang/Runnable;
    :cond_1
    iget-object v4, p0, Lorg/mapdb/StoreAppend;->serializerPojo:Lorg/mapdb/SerializerPojo;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/mapdb/StoreAppend;->serializerPojo:Lorg/mapdb/SerializerPojo;

    invoke-virtual {v4}, Lorg/mapdb/SerializerPojo;->hasUnsavedChanges()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 487
    iget-object v4, p0, Lorg/mapdb/StoreAppend;->serializerPojo:Lorg/mapdb/SerializerPojo;

    invoke-virtual {v4, p0}, Lorg/mapdb/SerializerPojo;->save(Lorg/mapdb/Engine;)V

    .line 490
    :cond_2
    iget-object v4, p0, Lorg/mapdb/StoreAppend;->volumes:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v4}, Lorg/mapdb/LongConcurrentHashMap;->valuesIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 491
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/mapdb/Volume;>;"
    iget-boolean v4, p0, Lorg/mapdb/StoreAppend;->readOnly:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lorg/mapdb/StoreAppend;->modified:Z

    if-eqz v4, :cond_3

    .line 492
    invoke-virtual {p0}, Lorg/mapdb/StoreAppend;->rollover()V

    .line 493
    iget-object v4, p0, Lorg/mapdb/StoreAppend;->currVolume:Lorg/mapdb/Volume;

    iget-wide v6, p0, Lorg/mapdb/StoreAppend;->currPos:J

    invoke-virtual {v4, v6, v7, v5}, Lorg/mapdb/Volume;->putUnsignedByte(JI)V

    .line 495
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 496
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mapdb/Volume;

    .line 497
    .local v3, "v":Lorg/mapdb/Volume;
    invoke-virtual {v3}, Lorg/mapdb/Volume;->sync()V

    .line 498
    invoke-virtual {v3}, Lorg/mapdb/Volume;->close()V

    .line 499
    iget-boolean v4, p0, Lorg/mapdb/StoreAppend;->deleteFilesAfterClose:Z

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lorg/mapdb/Volume;->deleteFile()V

    goto :goto_2

    .line 501
    .end local v3    # "v":Lorg/mapdb/Volume;
    :cond_4
    iget-object v4, p0, Lorg/mapdb/StoreAppend;->volumes:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v4}, Lorg/mapdb/LongConcurrentHashMap;->clear()V

    .line 502
    iget-object v4, p0, Lorg/mapdb/StoreAppend;->index:Lorg/mapdb/Volume;

    invoke-virtual {v4}, Lorg/mapdb/Volume;->close()V

    .line 503
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/mapdb/StoreAppend;->index:Lorg/mapdb/Volume;

    .line 504
    iput-boolean v5, p0, Lorg/mapdb/StoreAppend;->closed:Z

    goto :goto_0
.end method

.method public commit()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x8

    .line 515
    iget-boolean v2, p0, Lorg/mapdb/StoreAppend;->tx:Z

    if-nez v2, :cond_0

    .line 516
    iget-object v2, p0, Lorg/mapdb/StoreAppend;->currVolume:Lorg/mapdb/Volume;

    invoke-virtual {v2}, Lorg/mapdb/Volume;->sync()V

    .line 550
    :goto_0
    return-void

    .line 520
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/StoreAppend;->lockAllWrite()V

    .line 523
    :try_start_0
    iget-object v2, p0, Lorg/mapdb/StoreAppend;->indexInTx:Lorg/mapdb/LongMap;

    invoke-virtual {v2}, Lorg/mapdb/LongMap;->longMapIterator()Lorg/mapdb/LongMap$LongMapIterator;

    move-result-object v0

    .line 524
    .local v0, "iter":Lorg/mapdb/LongMap$LongMapIterator;, "Lorg/mapdb/LongMap$LongMapIterator<Ljava/lang/Long;>;"
    :goto_1
    invoke-interface {v0}, Lorg/mapdb/LongMap$LongMapIterator;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 525
    iget-object v2, p0, Lorg/mapdb/StoreAppend;->index:Lorg/mapdb/Volume;

    invoke-interface {v0}, Lorg/mapdb/LongMap$LongMapIterator;->key()J

    move-result-wide v4

    mul-long/2addr v4, v8

    add-long/2addr v4, v8

    invoke-virtual {v2, v4, v5}, Lorg/mapdb/Volume;->ensureAvailable(J)V

    .line 526
    iget-object v3, p0, Lorg/mapdb/StoreAppend;->index:Lorg/mapdb/Volume;

    invoke-interface {v0}, Lorg/mapdb/LongMap$LongMapIterator;->key()J

    move-result-wide v4

    mul-long/2addr v4, v8

    invoke-interface {v0}, Lorg/mapdb/LongMap$LongMapIterator;->value()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/mapdb/Volume;->putLong(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 547
    .end local v0    # "iter":Lorg/mapdb/LongMap$LongMapIterator;, "Lorg/mapdb/LongMap$LongMapIterator<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lorg/mapdb/StoreAppend;->unlockAllWrite()V

    throw v2

    .line 528
    .restart local v0    # "iter":Lorg/mapdb/LongMap$LongMapIterator;, "Lorg/mapdb/LongMap$LongMapIterator<Ljava/lang/Long;>;"
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/mapdb/StoreAppend;->volumes:Lorg/mapdb/LongConcurrentHashMap;

    iget-wide v4, p0, Lorg/mapdb/StoreAppend;->rollbackCurrFileNum:J

    invoke-virtual {v2, v4, v5}, Lorg/mapdb/LongConcurrentHashMap;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapdb/Volume;

    .line 529
    .local v1, "rollbackCurrVolume":Lorg/mapdb/Volume;
    iget-wide v2, p0, Lorg/mapdb/StoreAppend;->rollbackCurrPos:J

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lorg/mapdb/Volume;->putUnsignedByte(JI)V

    .line 530
    iget-boolean v2, p0, Lorg/mapdb/StoreAppend;->syncOnCommit:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lorg/mapdb/Volume;->sync()V

    .line 532
    :cond_2
    iget-object v2, p0, Lorg/mapdb/StoreAppend;->indexInTx:Lorg/mapdb/LongMap;

    invoke-virtual {v2}, Lorg/mapdb/LongMap;->clear()V

    .line 534
    invoke-virtual {p0}, Lorg/mapdb/StoreAppend;->rollover()V

    .line 535
    iget-wide v2, p0, Lorg/mapdb/StoreAppend;->currPos:J

    iput-wide v2, p0, Lorg/mapdb/StoreAppend;->rollbackCurrPos:J

    .line 536
    iget-wide v2, p0, Lorg/mapdb/StoreAppend;->maxRecid:J

    iput-wide v2, p0, Lorg/mapdb/StoreAppend;->rollbackMaxRecid:J

    .line 537
    iget-wide v2, p0, Lorg/mapdb/StoreAppend;->currFileNum:J

    iput-wide v2, p0, Lorg/mapdb/StoreAppend;->rollbackCurrFileNum:J

    .line 539
    iget-object v2, p0, Lorg/mapdb/StoreAppend;->currVolume:Lorg/mapdb/Volume;

    iget-wide v4, p0, Lorg/mapdb/StoreAppend;->rollbackCurrPos:J

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v5, v3}, Lorg/mapdb/Volume;->putUnsignedByte(JI)V

    .line 540
    iget-wide v2, p0, Lorg/mapdb/StoreAppend;->currPos:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/mapdb/StoreAppend;->currPos:J

    .line 542
    iget-object v2, p0, Lorg/mapdb/StoreAppend;->serializerPojo:Lorg/mapdb/SerializerPojo;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/mapdb/StoreAppend;->serializerPojo:Lorg/mapdb/SerializerPojo;

    invoke-virtual {v2}, Lorg/mapdb/SerializerPojo;->hasUnsavedChanges()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 543
    iget-object v2, p0, Lorg/mapdb/StoreAppend;->serializerPojo:Lorg/mapdb/SerializerPojo;

    invoke-virtual {v2, p0}, Lorg/mapdb/SerializerPojo;->save(Lorg/mapdb/Engine;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    :cond_3
    invoke-virtual {p0}, Lorg/mapdb/StoreAppend;->unlockAllWrite()V

    goto/16 :goto_0
.end method

.method public compact()V
    .locals 12

    .prologue
    .line 591
    iget-boolean v9, p0, Lorg/mapdb/StoreAppend;->readOnly:Z

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/IllegalAccessError;

    const-string v10, "readonly"

    invoke-direct {v9, v10}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v9

    .line 592
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/StoreAppend;->lockAllWrite()V

    .line 595
    :try_start_0
    iget-object v9, p0, Lorg/mapdb/StoreAppend;->indexInTx:Lorg/mapdb/LongMap;

    invoke-virtual {v9}, Lorg/mapdb/LongMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    new-instance v9, Ljava/lang/IllegalAccessError;

    const-string/jumbo v10, "uncommited changes"

    invoke-direct {v9, v10}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    :catchall_0
    move-exception v9

    invoke-virtual {p0}, Lorg/mapdb/StoreAppend;->unlockAllWrite()V

    throw v9

    .line 597
    :cond_1
    :try_start_1
    new-instance v0, Lorg/mapdb/LongHashMap;

    invoke-direct {v0}, Lorg/mapdb/LongHashMap;-><init>()V

    .line 598
    .local v0, "ff":Lorg/mapdb/LongHashMap;, "Lorg/mapdb/LongHashMap<Ljava/lang/Boolean;>;"
    const-wide/16 v6, 0x0

    .local v6, "recid":J
    :goto_0
    iget-wide v10, p0, Lorg/mapdb/StoreAppend;->maxRecid:J

    cmp-long v9, v6, v10

    if-gtz v9, :cond_3

    .line 599
    iget-object v9, p0, Lorg/mapdb/StoreAppend;->index:Lorg/mapdb/Volume;

    const-wide/16 v10, 0x8

    mul-long/2addr v10, v6

    invoke-virtual {v9, v10, v11}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v4

    .line 600
    .local v4, "indexVal":J
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-nez v9, :cond_2

    .line 598
    :goto_1
    const-wide/16 v10, 0x1

    add-long/2addr v6, v10

    goto :goto_0

    .line 601
    :cond_2
    const/16 v9, 0x18

    ushr-long v2, v4, v9

    .line 602
    .local v2, "fileNum":J
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v2, v3, v9}, Lorg/mapdb/LongHashMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 606
    .end local v2    # "fileNum":J
    .end local v4    # "indexVal":J
    :cond_3
    iget-object v9, p0, Lorg/mapdb/StoreAppend;->volumes:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v9}, Lorg/mapdb/LongConcurrentHashMap;->longMapIterator()Lorg/mapdb/LongMap$LongMapIterator;

    move-result-object v1

    .line 607
    .local v1, "iter":Lorg/mapdb/LongMap$LongMapIterator;, "Lorg/mapdb/LongMap$LongMapIterator<Lorg/mapdb/Volume;>;"
    :cond_4
    :goto_2
    invoke-interface {v1}, Lorg/mapdb/LongMap$LongMapIterator;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 608
    invoke-interface {v1}, Lorg/mapdb/LongMap$LongMapIterator;->key()J

    move-result-wide v2

    .line 609
    .restart local v2    # "fileNum":J
    iget-wide v10, p0, Lorg/mapdb/StoreAppend;->currFileNum:J

    cmp-long v9, v2, v10

    if-eqz v9, :cond_4

    invoke-virtual {v0, v2, v3}, Lorg/mapdb/LongHashMap;->get(J)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_4

    .line 610
    invoke-interface {v1}, Lorg/mapdb/LongMap$LongMapIterator;->value()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/mapdb/Volume;

    .line 611
    .local v8, "v":Lorg/mapdb/Volume;
    invoke-virtual {v8}, Lorg/mapdb/Volume;->sync()V

    .line 612
    invoke-virtual {v8}, Lorg/mapdb/Volume;->close()V

    .line 613
    invoke-virtual {v8}, Lorg/mapdb/Volume;->deleteFile()V

    .line 614
    invoke-interface {v1}, Lorg/mapdb/LongMap$LongMapIterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 617
    .end local v2    # "fileNum":J
    .end local v8    # "v":Lorg/mapdb/Volume;
    :cond_5
    invoke-virtual {p0}, Lorg/mapdb/StoreAppend;->unlockAllWrite()V

    .line 620
    return-void
.end method

.method public compareAndSwap(JLjava/lang/Object;Ljava/lang/Object;Lorg/mapdb/Serializer;)Z
    .locals 9
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
    .line 433
    .local p3, "expectedOldValue":Ljava/lang/Object;, "TA;"
    .local p4, "newValue":Ljava/lang/Object;, "TA;"
    .local p5, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    sget-boolean v5, Lorg/mapdb/StoreAppend;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 434
    :cond_1
    sget-boolean v5, Lorg/mapdb/StoreAppend;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-gtz v5, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 435
    :cond_2
    invoke-virtual {p0, p4, p5}, Lorg/mapdb/StoreAppend;->serialize(Ljava/lang/Object;Lorg/mapdb/Serializer;)Lorg/mapdb/DataOutput2;

    move-result-object v3

    .line 436
    .local v3, "out":Lorg/mapdb/DataOutput2;
    iget-object v5, p0, Lorg/mapdb/StoreAppend;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {p1, p2}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    .line 437
    .local v1, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 440
    :try_start_0
    invoke-virtual {p0, p1, p2, p5}, Lorg/mapdb/StoreAppend;->getNoLock(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v2

    .line 441
    .local v2, "old":Ljava/lang/Object;
    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 442
    invoke-virtual {p0, p1, p2, v3}, Lorg/mapdb/StoreAppend;->updateNoLock(JLorg/mapdb/DataOutput2;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    const/4 v4, 0x1

    .line 450
    .local v4, "ret":Z
    :goto_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 452
    iget-object v5, p0, Lorg/mapdb/StoreAppend;->recycledDataOuts:Ljava/util/Queue;

    invoke-interface {v5, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 453
    return v4

    .line 445
    .end local v4    # "ret":Z
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "ret":Z
    goto :goto_0

    .line 447
    .end local v2    # "old":Ljava/lang/Object;
    .end local v4    # "ret":Z
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v5, Ljava/io/IOError;

    invoke-direct {v5, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
.end method

.method public delete(JLorg/mapdb/Serializer;)V
    .locals 9
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
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    const-wide/16 v6, 0x0

    .line 458
    sget-boolean v1, Lorg/mapdb/StoreAppend;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    cmp-long v1, p1, v6

    if-gtz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 459
    :cond_0
    iget-object v1, p0, Lorg/mapdb/StoreAppend;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {p1, p2}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 460
    .local v0, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 462
    :try_start_0
    iget-object v1, p0, Lorg/mapdb/StoreAppend;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 464
    :try_start_1
    invoke-virtual {p0}, Lorg/mapdb/StoreAppend;->rollover()V

    .line 465
    iget-object v1, p0, Lorg/mapdb/StoreAppend;->currVolume:Lorg/mapdb/Volume;

    iget-wide v2, p0, Lorg/mapdb/StoreAppend;->currPos:J

    const-wide/16 v4, 0x6

    add-long/2addr v2, v4

    add-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Lorg/mapdb/Volume;->ensureAvailable(J)V

    .line 466
    iget-wide v2, p0, Lorg/mapdb/StoreAppend;->currPos:J

    iget-object v1, p0, Lorg/mapdb/StoreAppend;->currVolume:Lorg/mapdb/Volume;

    iget-wide v4, p0, Lorg/mapdb/StoreAppend;->currPos:J

    const-wide/16 v6, 0x2

    add-long/2addr v6, p1

    invoke-virtual {v1, v4, v5, v6, v7}, Lorg/mapdb/Volume;->putPackedLong(JJ)I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/mapdb/StoreAppend;->currPos:J

    .line 467
    iget-wide v2, p0, Lorg/mapdb/StoreAppend;->currFileNum:J

    const/16 v1, 0x18

    shl-long/2addr v2, v1

    iget-wide v4, p0, Lorg/mapdb/StoreAppend;->currPos:J

    or-long/2addr v2, v4

    invoke-virtual {p0, p1, p2, v2, v3}, Lorg/mapdb/StoreAppend;->setIndexVal(JJ)V

    .line 469
    iget-wide v2, p0, Lorg/mapdb/StoreAppend;->currPos:J

    iget-object v1, p0, Lorg/mapdb/StoreAppend;->currVolume:Lorg/mapdb/Volume;

    iget-wide v4, p0, Lorg/mapdb/StoreAppend;->currPos:J

    const-wide/16 v6, 0x1

    invoke-virtual {v1, v4, v5, v6, v7}, Lorg/mapdb/Volume;->putPackedLong(JJ)I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/mapdb/StoreAppend;->currPos:J

    .line 470
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mapdb/StoreAppend;->modified:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    :try_start_2
    iget-object v1, p0, Lorg/mapdb/StoreAppend;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 475
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 477
    return-void

    .line 472
    :catchall_0
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lorg/mapdb/StoreAppend;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 475
    :catchall_1
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public get(JLorg/mapdb/Serializer;)Ljava/lang/Object;
    .locals 5
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
    .line 361
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    sget-boolean v2, Lorg/mapdb/StoreAppend;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 362
    :cond_0
    iget-object v2, p0, Lorg/mapdb/StoreAppend;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {p1, p2}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    .line 363
    .local v1, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 365
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/mapdb/StoreAppend;->getNoLock(JLorg/mapdb/Serializer;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 369
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Ljava/io/IOError;

    invoke-direct {v2, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method public getCurrSize()J
    .locals 4

    .prologue
    .line 661
    iget-wide v0, p0, Lorg/mapdb/StoreAppend;->currFileNum:J

    const-wide/32 v2, 0xffffff

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method protected getFileFromNum(J)Ljava/io/File;
    .locals 3
    .param p1, "fileNumber"    # J

    .prologue
    .line 236
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/mapdb/StoreAppend;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
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
    .line 637
    sget-object v0, Lorg/mapdb/Fun;->EMPTY_ITERATOR:Ljava/util/Iterator;

    return-object v0
.end method

.method public getFreeSize()J
    .locals 2

    .prologue
    .line 666
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMaxRecid()J
    .locals 2

    .prologue
    .line 624
    iget-wide v0, p0, Lorg/mapdb/StoreAppend;->maxRecid:J

    return-wide v0
.end method

.method protected getNoLock(JLorg/mapdb/Serializer;)Ljava/lang/Object;
    .locals 15
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 374
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    invoke-virtual/range {p0 .. p2}, Lorg/mapdb/StoreAppend;->indexVal(J)J

    move-result-wide v6

    .line 376
    .local v6, "indexVal":J
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-nez v10, :cond_0

    const/4 v10, 0x0

    .line 386
    :goto_0
    return-object v10

    .line 377
    :cond_0
    iget-object v10, p0, Lorg/mapdb/StoreAppend;->volumes:Lorg/mapdb/LongConcurrentHashMap;

    const/16 v11, 0x18

    ushr-long v12, v6, v11

    invoke-virtual {v10, v12, v13}, Lorg/mapdb/LongConcurrentHashMap;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapdb/Volume;

    .line 378
    .local v5, "vol":Lorg/mapdb/Volume;
    const-wide/32 v10, 0xffffff

    and-long v2, v6, v10

    .line 379
    .local v2, "fileOffset":J
    invoke-virtual {v5, v2, v3}, Lorg/mapdb/Volume;->getPackedLong(J)J

    move-result-wide v8

    .line 380
    .local v8, "size":J
    invoke-static {v8, v9}, Lorg/mapdb/StoreAppend;->packedLongSize(J)I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v2, v10

    .line 381
    const-wide/16 v10, 0x2

    sub-long/2addr v8, v10

    .line 382
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gez v10, :cond_1

    const/4 v10, 0x0

    goto :goto_0

    .line 383
    :cond_1
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-nez v10, :cond_2

    new-instance v10, Lorg/mapdb/DataInput2;

    const/4 v11, 0x0

    new-array v11, v11, [B

    invoke-direct {v10, v11}, Lorg/mapdb/DataInput2;-><init>([B)V

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v10, v11}, Lorg/mapdb/Serializer;->deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;

    move-result-object v10

    goto :goto_0

    .line 384
    :cond_2
    long-to-int v10, v8

    invoke-virtual {v5, v2, v3, v10}, Lorg/mapdb/Volume;->getDataInput(JI)Ljava/io/DataInput;

    move-result-object v4

    check-cast v4, Lorg/mapdb/DataInput2;

    .line 386
    .local v4, "in":Lorg/mapdb/DataInput2;
    long-to-int v10, v8

    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v10, v4}, Lorg/mapdb/StoreAppend;->deserialize(Lorg/mapdb/Serializer;ILjava/io/DataInput;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_0
.end method

.method public getRaw(J)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "recid"    # J

    .prologue
    .line 630
    sget-object v1, Lorg/mapdb/Serializer;->BYTE_ARRAY_NOSIZE:Lorg/mapdb/Serializer;

    invoke-virtual {p0, p1, p2, v1}, Lorg/mapdb/StoreAppend;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 631
    .local v0, "bb":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 632
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
    .line 656
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected indexVal(J)J
    .locals 5
    .param p1, "recid"    # J

    .prologue
    .line 255
    iget-boolean v1, p0, Lorg/mapdb/StoreAppend;->tx:Z

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lorg/mapdb/StoreAppend;->indexInTx:Lorg/mapdb/LongMap;

    invoke-virtual {v1, p1, p2}, Lorg/mapdb/LongMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 257
    .local v0, "val":Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 259
    .end local v0    # "val":Ljava/lang/Long;
    :goto_0
    return-wide v2

    :cond_0
    iget-object v1, p0, Lorg/mapdb/StoreAppend;->index:Lorg/mapdb/Volume;

    const-wide/16 v2, 0x8

    mul-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v2

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 509
    iget-boolean v0, p0, Lorg/mapdb/StoreAppend;->closed:Z

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 581
    iget-boolean v0, p0, Lorg/mapdb/StoreAppend;->readOnly:Z

    return v0
.end method

.method public preallocate()J
    .locals 8

    .prologue
    .line 272
    iget-object v1, p0, Lorg/mapdb/StoreAppend;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iget-object v5, p0, Lorg/mapdb/StoreAppend;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    .line 273
    .local v0, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 275
    :try_start_0
    iget-object v1, p0, Lorg/mapdb/StoreAppend;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :try_start_1
    iget-wide v4, p0, Lorg/mapdb/StoreAppend;->maxRecid:J

    const-wide/16 v6, 0x1

    add-long v2, v4, v6

    iput-wide v2, p0, Lorg/mapdb/StoreAppend;->maxRecid:J

    .line 280
    .local v2, "recid":J
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mapdb/StoreAppend;->modified:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 282
    :try_start_2
    iget-object v1, p0, Lorg/mapdb/StoreAppend;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 285
    sget-boolean v1, Lorg/mapdb/StoreAppend;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 288
    .end local v2    # "recid":J
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    .line 282
    :catchall_1
    move-exception v1

    :try_start_3
    iget-object v4, p0, Lorg/mapdb/StoreAppend;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 288
    .restart local v2    # "recid":J
    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v2
.end method

.method public preallocate([J)V
    .locals 6
    .param p1, "recids"    # [J

    .prologue
    .line 296
    iget-object v2, p0, Lorg/mapdb/StoreAppend;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    iget-object v4, p0, Lorg/mapdb/StoreAppend;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    .line 297
    .local v1, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 299
    :try_start_0
    iget-object v2, p0, Lorg/mapdb/StoreAppend;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 301
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 302
    iget-wide v2, p0, Lorg/mapdb/StoreAppend;->maxRecid:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/mapdb/StoreAppend;->maxRecid:J

    aput-wide v2, p1, v0

    .line 303
    sget-boolean v2, Lorg/mapdb/StoreAppend;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    aget-wide v2, p1, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    :catchall_0
    move-exception v2

    :try_start_2
    iget-object v3, p0, Lorg/mapdb/StoreAppend;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 311
    .end local v0    # "i":I
    :catchall_1
    move-exception v2

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .line 301
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    :cond_1
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lorg/mapdb/StoreAppend;->modified:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 308
    :try_start_4
    iget-object v2, p0, Lorg/mapdb/StoreAppend;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 311
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 314
    return-void
.end method

.method public put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J
    .locals 20
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
    .line 318
    .local p1, "value":Ljava/lang/Object;, "TA;"
    .local p2, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    sget-boolean v3, Lorg/mapdb/StoreAppend;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 319
    :cond_0
    invoke-virtual/range {p0 .. p2}, Lorg/mapdb/StoreAppend;->serialize(Ljava/lang/Object;Lorg/mapdb/Serializer;)Lorg/mapdb/DataOutput2;

    move-result-object v9

    .line 321
    .local v9, "out":Lorg/mapdb/DataOutput2;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreAppend;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapdb/StoreAppend;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    .line 322
    .local v2, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 325
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreAppend;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/StoreAppend;->rollover()V

    .line 329
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreAppend;->currVolume:Lorg/mapdb/Volume;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/mapdb/StoreAppend;->currPos:J

    const-wide/16 v14, 0x6

    add-long/2addr v6, v14

    const-wide/16 v14, 0x4

    add-long/2addr v6, v14

    iget v8, v9, Lorg/mapdb/DataOutput2;->pos:I

    int-to-long v14, v8

    add-long/2addr v6, v14

    invoke-virtual {v3, v6, v7}, Lorg/mapdb/Volume;->ensureAvailable(J)V

    .line 330
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/mapdb/StoreAppend;->maxRecid:J

    const-wide/16 v14, 0x1

    add-long v12, v6, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/mapdb/StoreAppend;->maxRecid:J

    .line 333
    .local v12, "recid":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/mapdb/StoreAppend;->currPos:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreAppend;->currVolume:Lorg/mapdb/Volume;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/mapdb/StoreAppend;->currPos:J

    const-wide/16 v16, 0x3

    add-long v16, v16, v12

    move-wide/from16 v0, v16

    invoke-virtual {v3, v14, v15, v0, v1}, Lorg/mapdb/Volume;->putPackedLong(JJ)I

    move-result v3

    int-to-long v14, v3

    add-long/2addr v6, v14

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/mapdb/StoreAppend;->currPos:J

    .line 334
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/mapdb/StoreAppend;->currFileNum:J

    const/16 v3, 0x18

    shl-long/2addr v6, v3

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/mapdb/StoreAppend;->currPos:J

    or-long v10, v6, v14

    .line 336
    .local v10, "indexVal":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/mapdb/StoreAppend;->currPos:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreAppend;->currVolume:Lorg/mapdb/Volume;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/mapdb/StoreAppend;->currPos:J

    iget v8, v9, Lorg/mapdb/DataOutput2;->pos:I

    int-to-long v0, v8

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x2

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v3, v14, v15, v0, v1}, Lorg/mapdb/Volume;->putPackedLong(JJ)I

    move-result v3

    int-to-long v14, v3

    add-long/2addr v6, v14

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/mapdb/StoreAppend;->currPos:J

    .line 338
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/mapdb/StoreAppend;->currPos:J

    .line 339
    .local v4, "oldPos":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/mapdb/StoreAppend;->currPos:J

    iget v3, v9, Lorg/mapdb/DataOutput2;->pos:I

    int-to-long v14, v3

    add-long/2addr v6, v14

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/mapdb/StoreAppend;->currPos:J

    .line 341
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/mapdb/StoreAppend;->modified:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 343
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreAppend;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 347
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreAppend;->currVolume:Lorg/mapdb/Volume;

    iget-object v6, v9, Lorg/mapdb/DataOutput2;->buf:[B

    const/4 v7, 0x0

    iget v8, v9, Lorg/mapdb/DataOutput2;->pos:I

    invoke-virtual/range {v3 .. v8}, Lorg/mapdb/Volume;->putData(J[BII)V

    .line 349
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/StoreAppend;->recycledDataOuts:Ljava/util/Queue;

    invoke-interface {v3, v9}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 350
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v10, v11}, Lorg/mapdb/StoreAppend;->setIndexVal(JJ)V

    .line 352
    sget-boolean v3, Lorg/mapdb/StoreAppend;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v3, v12, v6

    if-gtz v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 355
    .end local v4    # "oldPos":J
    .end local v10    # "indexVal":J
    .end local v12    # "recid":J
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    .line 343
    :catchall_1
    move-exception v3

    :try_start_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/StoreAppend;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 355
    .restart local v4    # "oldPos":J
    .restart local v10    # "indexVal":J
    .restart local v12    # "recid":J
    :cond_1
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-wide v12
.end method

.method public rollback()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 555
    iget-boolean v0, p0, Lorg/mapdb/StoreAppend;->tx:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Transactions are disabled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/StoreAppend;->lockAllWrite()V

    .line 560
    :try_start_0
    iget-object v0, p0, Lorg/mapdb/StoreAppend;->indexInTx:Lorg/mapdb/LongMap;

    invoke-virtual {v0}, Lorg/mapdb/LongMap;->clear()V

    .line 561
    iget-object v0, p0, Lorg/mapdb/StoreAppend;->volumes:Lorg/mapdb/LongConcurrentHashMap;

    iget-wide v2, p0, Lorg/mapdb/StoreAppend;->rollbackCurrFileNum:J

    invoke-virtual {v0, v2, v3}, Lorg/mapdb/LongConcurrentHashMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Volume;

    iput-object v0, p0, Lorg/mapdb/StoreAppend;->currVolume:Lorg/mapdb/Volume;

    .line 562
    iget-wide v0, p0, Lorg/mapdb/StoreAppend;->rollbackCurrPos:J

    iput-wide v0, p0, Lorg/mapdb/StoreAppend;->currPos:J

    .line 563
    iget-wide v0, p0, Lorg/mapdb/StoreAppend;->rollbackMaxRecid:J

    iput-wide v0, p0, Lorg/mapdb/StoreAppend;->maxRecid:J

    .line 564
    iget-wide v0, p0, Lorg/mapdb/StoreAppend;->rollbackCurrFileNum:J

    iput-wide v0, p0, Lorg/mapdb/StoreAppend;->currFileNum:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    invoke-virtual {p0}, Lorg/mapdb/StoreAppend;->unlockAllWrite()V

    .line 571
    return-void

    .line 568
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/mapdb/StoreAppend;->unlockAllWrite()V

    throw v0
.end method

.method protected rollover()V
    .locals 12

    .prologue
    const-wide v10, 0x11350358c060a059L    # 8.870188104755862E-226

    const-wide/16 v8, 0x8

    const-wide/16 v4, 0x0

    .line 240
    iget-object v0, p0, Lorg/mapdb/StoreAppend;->currVolume:Lorg/mapdb/Volume;

    invoke-virtual {v0, v4, v5}, Lorg/mapdb/Volume;->getLong(J)J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 241
    :cond_0
    iget-wide v0, p0, Lorg/mapdb/StoreAppend;->currPos:J

    const-wide/32 v2, 0xffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lorg/mapdb/StoreAppend;->readOnly:Z

    if-eqz v0, :cond_2

    .line 250
    :cond_1
    :goto_0
    return-void

    .line 243
    :cond_2
    iget-object v0, p0, Lorg/mapdb/StoreAppend;->currVolume:Lorg/mapdb/Volume;

    invoke-virtual {v0}, Lorg/mapdb/Volume;->sync()V

    .line 244
    iget-wide v0, p0, Lorg/mapdb/StoreAppend;->currFileNum:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/mapdb/StoreAppend;->currFileNum:J

    .line 245
    iget-wide v0, p0, Lorg/mapdb/StoreAppend;->currFileNum:J

    invoke-virtual {p0, v0, v1}, Lorg/mapdb/StoreAppend;->getFileFromNum(J)Ljava/io/File;

    move-result-object v1

    iget-boolean v2, p0, Lorg/mapdb/StoreAppend;->useRandomAccessFile:Z

    iget-boolean v3, p0, Lorg/mapdb/StoreAppend;->readOnly:Z

    const/16 v6, 0x14

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/mapdb/Volume;->volumeForFile(Ljava/io/File;ZZJII)Lorg/mapdb/Volume;

    move-result-object v0

    iput-object v0, p0, Lorg/mapdb/StoreAppend;->currVolume:Lorg/mapdb/Volume;

    .line 246
    iget-object v0, p0, Lorg/mapdb/StoreAppend;->currVolume:Lorg/mapdb/Volume;

    invoke-virtual {v0, v8, v9}, Lorg/mapdb/Volume;->ensureAvailable(J)V

    .line 247
    iget-object v0, p0, Lorg/mapdb/StoreAppend;->currVolume:Lorg/mapdb/Volume;

    invoke-virtual {v0, v4, v5, v10, v11}, Lorg/mapdb/Volume;->putLong(JJ)V

    .line 248
    iput-wide v8, p0, Lorg/mapdb/StoreAppend;->currPos:J

    .line 249
    iget-object v0, p0, Lorg/mapdb/StoreAppend;->volumes:Lorg/mapdb/LongConcurrentHashMap;

    iget-wide v2, p0, Lorg/mapdb/StoreAppend;->currFileNum:J

    iget-object v1, p0, Lorg/mapdb/StoreAppend;->currVolume:Lorg/mapdb/Volume;

    invoke-virtual {v0, v2, v3, v1}, Lorg/mapdb/LongConcurrentHashMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected setIndexVal(JJ)V
    .locals 7
    .param p1, "recid"    # J
    .param p3, "indexVal"    # J

    .prologue
    const-wide/16 v4, 0x8

    .line 263
    iget-boolean v0, p0, Lorg/mapdb/StoreAppend;->tx:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mapdb/StoreAppend;->indexInTx:Lorg/mapdb/LongMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lorg/mapdb/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 268
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lorg/mapdb/StoreAppend;->index:Lorg/mapdb/Volume;

    mul-long v2, p1, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lorg/mapdb/Volume;->ensureAvailable(J)V

    .line 266
    iget-object v0, p0, Lorg/mapdb/StoreAppend;->index:Lorg/mapdb/Volume;

    mul-long v2, p1, v4

    invoke-virtual {v0, v2, v3, p3, p4}, Lorg/mapdb/Volume;->putLong(JJ)V

    goto :goto_0
.end method

.method public update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V
    .locals 5
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
    .line 392
    .local p3, "value":Ljava/lang/Object;, "TA;"
    .local p4, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    sget-boolean v2, Lorg/mapdb/StoreAppend;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 393
    :cond_0
    sget-boolean v2, Lorg/mapdb/StoreAppend;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 394
    :cond_1
    invoke-virtual {p0, p3, p4}, Lorg/mapdb/StoreAppend;->serialize(Ljava/lang/Object;Lorg/mapdb/Serializer;)Lorg/mapdb/DataOutput2;

    move-result-object v1

    .line 396
    .local v1, "out":Lorg/mapdb/DataOutput2;
    iget-object v2, p0, Lorg/mapdb/StoreAppend;->locks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-static {p1, p2}, Lorg/mapdb/Store;->lockPos(J)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    .line 397
    .local v0, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 399
    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lorg/mapdb/StoreAppend;->updateNoLock(JLorg/mapdb/DataOutput2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 403
    iget-object v2, p0, Lorg/mapdb/StoreAppend;->recycledDataOuts:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 404
    return-void

    .line 401
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method protected updateNoLock(JLorg/mapdb/DataOutput2;)V
    .locals 19
    .param p1, "recid"    # J
    .param p3, "out"    # Lorg/mapdb/DataOutput2;

    .prologue
    .line 409
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapdb/StoreAppend;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 411
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/StoreAppend;->rollover()V

    .line 412
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapdb/StoreAppend;->currVolume:Lorg/mapdb/Volume;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/mapdb/StoreAppend;->currPos:J

    const-wide/16 v10, 0x6

    add-long/2addr v8, v10

    const-wide/16 v10, 0x4

    add-long/2addr v8, v10

    move-object/from16 v0, p3

    iget v5, v0, Lorg/mapdb/DataOutput2;->pos:I

    int-to-long v10, v5

    add-long/2addr v8, v10

    invoke-virtual {v4, v8, v9}, Lorg/mapdb/Volume;->ensureAvailable(J)V

    .line 414
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/mapdb/StoreAppend;->currPos:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/mapdb/StoreAppend;->currVolume:Lorg/mapdb/Volume;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/mapdb/StoreAppend;->currPos:J

    const-wide/16 v14, 0x3

    add-long v14, v14, p1

    invoke-virtual {v8, v10, v11, v14, v15}, Lorg/mapdb/Volume;->putPackedLong(JJ)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/mapdb/StoreAppend;->currPos:J

    .line 415
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/mapdb/StoreAppend;->currFileNum:J

    const/16 v8, 0x18

    shl-long/2addr v4, v8

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/mapdb/StoreAppend;->currPos:J

    or-long v12, v4, v8

    .line 417
    .local v12, "indexVal":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/mapdb/StoreAppend;->currPos:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/mapdb/StoreAppend;->currVolume:Lorg/mapdb/Volume;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/mapdb/StoreAppend;->currPos:J

    move-object/from16 v0, p3

    iget v9, v0, Lorg/mapdb/DataOutput2;->pos:I

    int-to-long v14, v9

    const-wide/16 v16, 0x2

    add-long v14, v14, v16

    invoke-virtual {v8, v10, v11, v14, v15}, Lorg/mapdb/Volume;->putPackedLong(JJ)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/mapdb/StoreAppend;->currPos:J

    .line 418
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/mapdb/StoreAppend;->currPos:J

    .line 419
    .local v6, "oldPos":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/mapdb/StoreAppend;->currPos:J

    move-object/from16 v0, p3

    iget v8, v0, Lorg/mapdb/DataOutput2;->pos:I

    int-to-long v8, v8

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/mapdb/StoreAppend;->currPos:J

    .line 420
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/mapdb/StoreAppend;->modified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapdb/StoreAppend;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 425
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/StoreAppend;->currVolume:Lorg/mapdb/Volume;

    move-object/from16 v0, p3

    iget-object v8, v0, Lorg/mapdb/DataOutput2;->buf:[B

    const/4 v9, 0x0

    move-object/from16 v0, p3

    iget v10, v0, Lorg/mapdb/DataOutput2;->pos:I

    invoke-virtual/range {v5 .. v10}, Lorg/mapdb/Volume;->putData(J[BII)V

    .line 427
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2, v12, v13}, Lorg/mapdb/StoreAppend;->setIndexVal(JJ)V

    .line 428
    return-void

    .line 422
    .end local v6    # "oldPos":J
    .end local v12    # "indexVal":J
    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/StoreAppend;->structuralLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public updateRaw(JLjava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "recid"    # J
    .param p3, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 642
    invoke-virtual {p0}, Lorg/mapdb/StoreAppend;->rollover()V

    .line 643
    const/4 v0, 0x0

    .line 644
    .local v0, "b":[B
    if-eqz p3, :cond_0

    .line 645
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 646
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v0, v1, [B

    .line 647
    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 650
    :cond_0
    sget-object v1, Lorg/mapdb/Serializer;->BYTE_ARRAY_NOSIZE:Lorg/mapdb/Serializer;

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/mapdb/StoreAppend;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 651
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mapdb/StoreAppend;->modified:Z

    .line 652
    return-void
.end method
