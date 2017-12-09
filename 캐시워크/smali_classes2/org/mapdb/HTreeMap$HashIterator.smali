.class abstract Lorg/mapdb/HTreeMap$HashIterator;
.super Ljava/lang/Object;
.source "HTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/HTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "HashIterator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected currentLinkedList:[Lorg/mapdb/HTreeMap$LinkedNode;

.field protected currentLinkedListPos:I

.field private lastReturnedKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private lastSegment:I

.field final synthetic this$0:Lorg/mapdb/HTreeMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 968
    const-class v0, Lorg/mapdb/HTreeMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/mapdb/HTreeMap$HashIterator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/mapdb/HTreeMap;)V
    .locals 2

    .prologue
    .local p0, "this":Lorg/mapdb/HTreeMap$HashIterator;, "Lorg/mapdb/HTreeMap<TK;TV;>.HashIterator;"
    const/4 v1, 0x0

    .line 977
    iput-object p1, p0, Lorg/mapdb/HTreeMap$HashIterator;->this$0:Lorg/mapdb/HTreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 971
    iput v1, p0, Lorg/mapdb/HTreeMap$HashIterator;->currentLinkedListPos:I

    .line 973
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mapdb/HTreeMap$HashIterator;->lastReturnedKey:Ljava/lang/Object;

    .line 975
    iput v1, p0, Lorg/mapdb/HTreeMap$HashIterator;->lastSegment:I

    .line 978
    invoke-direct {p0, v1}, Lorg/mapdb/HTreeMap$HashIterator;->findNextLinkedNode(I)[Lorg/mapdb/HTreeMap$LinkedNode;

    move-result-object v0

    iput-object v0, p0, Lorg/mapdb/HTreeMap$HashIterator;->currentLinkedList:[Lorg/mapdb/HTreeMap$LinkedNode;

    .line 979
    return-void
.end method

.method private advance(I)[Lorg/mapdb/HTreeMap$LinkedNode;
    .locals 12
    .param p1, "lastHash"    # I

    .prologue
    .local p0, "this":Lorg/mapdb/HTreeMap$HashIterator;, "Lorg/mapdb/HTreeMap<TK;TV;>.HashIterator;"
    const-wide/16 v10, 0x1

    .line 1007
    ushr-int/lit8 v5, p1, 0x1c

    .line 1011
    .local v5, "segment":I
    :try_start_0
    iget-object v6, p0, Lorg/mapdb/HTreeMap$HashIterator;->this$0:Lorg/mapdb/HTreeMap;

    iget-object v6, v6, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1013
    iget-object v6, p0, Lorg/mapdb/HTreeMap$HashIterator;->this$0:Lorg/mapdb/HTreeMap;

    iget-object v6, v6, Lorg/mapdb/HTreeMap;->segmentRecids:[J

    aget-wide v2, v6, v5

    .line 1014
    .local v2, "dirRecid":J
    const/4 v1, 0x3

    .line 1017
    .local v1, "level":I
    :goto_0
    iget-object v6, p0, Lorg/mapdb/HTreeMap$HashIterator;->this$0:Lorg/mapdb/HTreeMap;

    iget-object v6, v6, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    sget-object v7, Lorg/mapdb/HTreeMap;->DIR_SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v6, v2, v3, v7}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    .line 1018
    .local v0, "dir":[[J
    mul-int/lit8 v6, v1, 0x7

    ushr-int v6, p1, v6

    and-int/lit8 v4, v6, 0x7f

    .line 1021
    .local v4, "pos":I
    ushr-int/lit8 v6, v4, 0x3

    aget-object v6, v0, v6

    if-eqz v6, :cond_0

    ushr-int/lit8 v6, v4, 0x3

    aget-object v6, v0, v6

    and-int/lit8 v7, v4, 0x7

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    ushr-int/lit8 v6, v4, 0x3

    aget-object v6, v0, v6

    and-int/lit8 v7, v4, 0x7

    aget-wide v6, v6, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-long/2addr v6, v10

    cmp-long v6, v6, v10

    if-nez v6, :cond_2

    .line 1023
    :cond_0
    if-eqz v1, :cond_1

    .line 1024
    mul-int/lit8 v6, v1, 0x7

    ushr-int v6, p1, v6

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v7, v1, 0x7

    shl-int p1, v6, v7

    .line 1027
    :goto_1
    if-nez p1, :cond_3

    .line 1028
    const/4 v6, 0x0

    .line 1039
    iget-object v7, p0, Lorg/mapdb/HTreeMap$HashIterator;->this$0:Lorg/mapdb/HTreeMap;

    iget-object v7, v7, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1041
    :goto_2
    return-object v6

    .line 1026
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1034
    :cond_2
    ushr-int/lit8 v6, v4, 0x3

    :try_start_1
    aget-object v6, v0, v6

    and-int/lit8 v7, v4, 0x7

    aget-wide v6, v6, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x1

    ushr-long v2, v6, v8

    .line 1035
    add-int/lit8 v1, v1, -0x1

    .line 1036
    goto :goto_0

    .line 1039
    :cond_3
    iget-object v6, p0, Lorg/mapdb/HTreeMap$HashIterator;->this$0:Lorg/mapdb/HTreeMap;

    iget-object v6, v6, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1041
    invoke-direct {p0, p1}, Lorg/mapdb/HTreeMap$HashIterator;->findNextLinkedNode(I)[Lorg/mapdb/HTreeMap$LinkedNode;

    move-result-object v6

    goto :goto_2

    .line 1039
    .end local v0    # "dir":[[J
    .end local v1    # "level":I
    .end local v2    # "dirRecid":J
    .end local v4    # "pos":I
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lorg/mapdb/HTreeMap$HashIterator;->this$0:Lorg/mapdb/HTreeMap;

    iget-object v7, v7, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v6
.end method

.method private findNextLinkedNode(I)[Lorg/mapdb/HTreeMap$LinkedNode;
    .locals 13
    .param p1, "hash"    # I

    .prologue
    .line 1048
    .local p0, "this":Lorg/mapdb/HTreeMap$HashIterator;, "Lorg/mapdb/HTreeMap<TK;TV;>.HashIterator;"
    ushr-int/lit8 v9, p1, 0x1c

    iget v10, p0, Lorg/mapdb/HTreeMap$HashIterator;->lastSegment:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .local v8, "segment":I
    :goto_0
    const/16 v9, 0x10

    if-ge v8, v9, :cond_5

    .line 1049
    iget-object v9, p0, Lorg/mapdb/HTreeMap$HashIterator;->this$0:Lorg/mapdb/HTreeMap;

    iget-boolean v9, v9, Lorg/mapdb/HTreeMap;->expireAccessFlag:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lorg/mapdb/HTreeMap$HashIterator;->this$0:Lorg/mapdb/HTreeMap;

    iget-object v9, v9, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v6

    :goto_1
    check-cast v6, Ljava/util/concurrent/locks/Lock;

    .line 1050
    .local v6, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1052
    :try_start_0
    iget v9, p0, Lorg/mapdb/HTreeMap$HashIterator;->lastSegment:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lorg/mapdb/HTreeMap$HashIterator;->lastSegment:I

    .line 1053
    iget-object v9, p0, Lorg/mapdb/HTreeMap$HashIterator;->this$0:Lorg/mapdb/HTreeMap;

    iget-object v9, v9, Lorg/mapdb/HTreeMap;->segmentRecids:[J

    aget-wide v2, v9, v8

    .line 1054
    .local v2, "dirRecid":J
    const/4 v9, 0x3

    invoke-direct {p0, v2, v3, p1, v9}, Lorg/mapdb/HTreeMap$HashIterator;->findNextLinkedNodeRecur(JII)[Lorg/mapdb/HTreeMap$LinkedNode;

    move-result-object v7

    .line 1055
    .local v7, "ret":[Lorg/mapdb/HTreeMap$LinkedNode;
    if-eqz v7, :cond_2

    move-object v0, v7

    .local v0, "arr$":[Lorg/mapdb/HTreeMap$LinkedNode;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_2
    if-ge v1, v4, :cond_2

    aget-object v5, v0, v1

    .line 1056
    .local v5, "ln":Lorg/mapdb/HTreeMap$LinkedNode;
    sget-boolean v9, Lorg/mapdb/HTreeMap$HashIterator;->$assertionsDisabled:Z

    if-nez v9, :cond_1

    iget-object v9, p0, Lorg/mapdb/HTreeMap$HashIterator;->this$0:Lorg/mapdb/HTreeMap;

    iget-object v10, v5, Lorg/mapdb/HTreeMap$LinkedNode;->key:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Lorg/mapdb/HTreeMap;->hash(Ljava/lang/Object;)I

    move-result v9

    ushr-int/lit8 v9, v9, 0x1c

    if-eq v9, v8, :cond_1

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1067
    .end local v0    # "arr$":[Lorg/mapdb/HTreeMap$LinkedNode;
    .end local v1    # "i$":I
    .end local v2    # "dirRecid":J
    .end local v4    # "len$":I
    .end local v5    # "ln":Lorg/mapdb/HTreeMap$LinkedNode;
    .end local v7    # "ret":[Lorg/mapdb/HTreeMap$LinkedNode;
    :catchall_0
    move-exception v9

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v9

    .line 1049
    .end local v6    # "lock":Ljava/util/concurrent/locks/Lock;
    :cond_0
    iget-object v9, p0, Lorg/mapdb/HTreeMap$HashIterator;->this$0:Lorg/mapdb/HTreeMap;

    iget-object v9, v9, Lorg/mapdb/HTreeMap;->segmentLocks:[Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    aget-object v9, v9, v8

    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v6

    goto :goto_1

    .line 1055
    .restart local v0    # "arr$":[Lorg/mapdb/HTreeMap$LinkedNode;
    .restart local v1    # "i$":I
    .restart local v2    # "dirRecid":J
    .restart local v4    # "len$":I
    .restart local v5    # "ln":Lorg/mapdb/HTreeMap$LinkedNode;
    .restart local v6    # "lock":Ljava/util/concurrent/locks/Lock;
    .restart local v7    # "ret":[Lorg/mapdb/HTreeMap$LinkedNode;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1059
    .end local v0    # "arr$":[Lorg/mapdb/HTreeMap$LinkedNode;
    .end local v1    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "ln":Lorg/mapdb/HTreeMap$LinkedNode;
    :cond_2
    if-eqz v7, :cond_4

    .line 1060
    :try_start_1
    iget-object v9, p0, Lorg/mapdb/HTreeMap$HashIterator;->this$0:Lorg/mapdb/HTreeMap;

    iget-boolean v9, v9, Lorg/mapdb/HTreeMap;->expireAccessFlag:Z

    if-eqz v9, :cond_3

    .line 1061
    move-object v0, v7

    .restart local v0    # "arr$":[Lorg/mapdb/HTreeMap$LinkedNode;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_3
    if-ge v1, v4, :cond_3

    aget-object v5, v0, v1

    .restart local v5    # "ln":Lorg/mapdb/HTreeMap$LinkedNode;
    iget-object v9, p0, Lorg/mapdb/HTreeMap$HashIterator;->this$0:Lorg/mapdb/HTreeMap;

    iget-wide v10, v5, Lorg/mapdb/HTreeMap$LinkedNode;->expireLinkNodeRecid:J

    const/4 v12, 0x1

    invoke-virtual {v9, v8, v10, v11, v12}, Lorg/mapdb/HTreeMap;->expireLinkBump(IJZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1067
    .end local v0    # "arr$":[Lorg/mapdb/HTreeMap$LinkedNode;
    .end local v1    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "ln":Lorg/mapdb/HTreeMap$LinkedNode;
    :cond_3
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1071
    .end local v2    # "dirRecid":J
    .end local v6    # "lock":Ljava/util/concurrent/locks/Lock;
    .end local v7    # "ret":[Lorg/mapdb/HTreeMap$LinkedNode;
    :goto_4
    return-object v7

    .line 1065
    .restart local v2    # "dirRecid":J
    .restart local v6    # "lock":Ljava/util/concurrent/locks/Lock;
    .restart local v7    # "ret":[Lorg/mapdb/HTreeMap$LinkedNode;
    :cond_4
    const/4 p1, 0x0

    .line 1067
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1048
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1071
    .end local v2    # "dirRecid":J
    .end local v6    # "lock":Ljava/util/concurrent/locks/Lock;
    .end local v7    # "ret":[Lorg/mapdb/HTreeMap$LinkedNode;
    :cond_5
    const/4 v7, 0x0

    goto :goto_4
.end method

.method private findNextLinkedNodeRecur(JII)[Lorg/mapdb/HTreeMap$LinkedNode;
    .locals 17
    .param p1, "dirRecid"    # J
    .param p3, "newHash"    # I
    .param p4, "level"    # I

    .prologue
    .line 1075
    .local p0, "this":Lorg/mapdb/HTreeMap$HashIterator;, "Lorg/mapdb/HTreeMap<TK;TV;>.HashIterator;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/HTreeMap$HashIterator;->this$0:Lorg/mapdb/HTreeMap;

    iget-object v12, v12, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    sget-object v13, Lorg/mapdb/HTreeMap;->DIR_SERIALIZER:Lorg/mapdb/Serializer;

    move-wide/from16 v0, p1

    invoke-interface {v12, v0, v1, v13}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[J

    .line 1076
    .local v5, "dir":[[J
    if-nez v5, :cond_1

    const/4 v2, 0x0

    .line 1112
    :cond_0
    :goto_0
    return-object v2

    .line 1077
    :cond_1
    mul-int/lit8 v12, p4, 0x7

    ushr-int v12, p3, v12

    and-int/lit8 v8, v12, 0x7f

    .line 1078
    .local v8, "pos":I
    const/4 v6, 0x1

    .line 1079
    .local v6, "first":Z
    :goto_1
    const/16 v12, 0x80

    if-ge v8, v12, :cond_7

    .line 1080
    ushr-int/lit8 v12, v8, 0x3

    aget-object v12, v5, v12

    if-eqz v12, :cond_6

    .line 1081
    ushr-int/lit8 v12, v8, 0x3

    aget-object v12, v5, v12

    and-int/lit8 v13, v8, 0x7

    aget-wide v10, v12, v13

    .line 1082
    .local v10, "recid":J
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-eqz v12, :cond_6

    .line 1083
    const-wide/16 v12, 0x1

    and-long/2addr v12, v10

    const-wide/16 v14, 0x1

    cmp-long v12, v12, v14

    if-nez v12, :cond_4

    .line 1084
    const/4 v12, 0x1

    shr-long/2addr v10, v12

    .line 1086
    const/4 v12, 0x1

    new-array v2, v12, [Lorg/mapdb/HTreeMap$LinkedNode;

    .line 1087
    .local v2, "array":[Lorg/mapdb/HTreeMap$LinkedNode;
    const/4 v3, 0x0

    .local v3, "arrayPos":I
    move v4, v3

    .line 1088
    .end local v3    # "arrayPos":I
    .local v4, "arrayPos":I
    :goto_2
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-eqz v12, :cond_0

    .line 1089
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/HTreeMap$HashIterator;->this$0:Lorg/mapdb/HTreeMap;

    iget-object v12, v12, Lorg/mapdb/HTreeMap;->engine:Lorg/mapdb/Engine;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mapdb/HTreeMap$HashIterator;->this$0:Lorg/mapdb/HTreeMap;

    iget-object v13, v13, Lorg/mapdb/HTreeMap;->LN_SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v12, v10, v11, v13}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mapdb/HTreeMap$LinkedNode;

    .line 1090
    .local v7, "ln":Lorg/mapdb/HTreeMap$LinkedNode;
    if-nez v7, :cond_2

    .line 1091
    const-wide/16 v10, 0x0

    .line 1092
    goto :goto_2

    .line 1095
    :cond_2
    array-length v12, v2

    if-ne v4, v12, :cond_3

    .line 1096
    array-length v12, v2

    add-int/lit8 v12, v12, 0x1

    invoke-static {v2, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "array":[Lorg/mapdb/HTreeMap$LinkedNode;
    check-cast v2, [Lorg/mapdb/HTreeMap$LinkedNode;

    .line 1097
    .restart local v2    # "array":[Lorg/mapdb/HTreeMap$LinkedNode;
    :cond_3
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "arrayPos":I
    .restart local v3    # "arrayPos":I
    aput-object v7, v2, v4

    .line 1098
    iget-wide v10, v7, Lorg/mapdb/HTreeMap$LinkedNode;->next:J

    move v4, v3

    .line 1099
    .end local v3    # "arrayPos":I
    .restart local v4    # "arrayPos":I
    goto :goto_2

    .line 1103
    .end local v2    # "array":[Lorg/mapdb/HTreeMap$LinkedNode;
    .end local v4    # "arrayPos":I
    .end local v7    # "ln":Lorg/mapdb/HTreeMap$LinkedNode;
    :cond_4
    const/4 v12, 0x1

    shr-long/2addr v10, v12

    .line 1104
    if-eqz v6, :cond_5

    move/from16 v12, p3

    :goto_3
    add-int/lit8 v13, p4, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v12, v13}, Lorg/mapdb/HTreeMap$HashIterator;->findNextLinkedNodeRecur(JII)[Lorg/mapdb/HTreeMap$LinkedNode;

    move-result-object v9

    .line 1105
    .local v9, "ret":[Lorg/mapdb/HTreeMap$LinkedNode;
    if-eqz v9, :cond_6

    move-object v2, v9

    goto :goto_0

    .line 1104
    .end local v9    # "ret":[Lorg/mapdb/HTreeMap$LinkedNode;
    :cond_5
    const/4 v12, 0x0

    goto :goto_3

    .line 1109
    .end local v10    # "recid":J
    :cond_6
    const/4 v6, 0x0

    .line 1110
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1112
    :cond_7
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 991
    .local p0, "this":Lorg/mapdb/HTreeMap$HashIterator;, "Lorg/mapdb/HTreeMap<TK;TV;>.HashIterator;"
    iget-object v0, p0, Lorg/mapdb/HTreeMap$HashIterator;->currentLinkedList:[Lorg/mapdb/HTreeMap$LinkedNode;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/mapdb/HTreeMap$HashIterator;->currentLinkedListPos:I

    iget-object v1, p0, Lorg/mapdb/HTreeMap$HashIterator;->currentLinkedList:[Lorg/mapdb/HTreeMap$LinkedNode;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected moveToNext()V
    .locals 3

    .prologue
    .line 996
    .local p0, "this":Lorg/mapdb/HTreeMap$HashIterator;, "Lorg/mapdb/HTreeMap<TK;TV;>.HashIterator;"
    iget-object v1, p0, Lorg/mapdb/HTreeMap$HashIterator;->currentLinkedList:[Lorg/mapdb/HTreeMap$LinkedNode;

    iget v2, p0, Lorg/mapdb/HTreeMap$HashIterator;->currentLinkedListPos:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/mapdb/HTreeMap$LinkedNode;->key:Ljava/lang/Object;

    iput-object v1, p0, Lorg/mapdb/HTreeMap$HashIterator;->lastReturnedKey:Ljava/lang/Object;

    .line 997
    iget v1, p0, Lorg/mapdb/HTreeMap$HashIterator;->currentLinkedListPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mapdb/HTreeMap$HashIterator;->currentLinkedListPos:I

    .line 998
    iget v1, p0, Lorg/mapdb/HTreeMap$HashIterator;->currentLinkedListPos:I

    iget-object v2, p0, Lorg/mapdb/HTreeMap$HashIterator;->currentLinkedList:[Lorg/mapdb/HTreeMap$LinkedNode;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 999
    iget-object v1, p0, Lorg/mapdb/HTreeMap$HashIterator;->this$0:Lorg/mapdb/HTreeMap;

    iget-object v2, p0, Lorg/mapdb/HTreeMap$HashIterator;->lastReturnedKey:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/mapdb/HTreeMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1000
    .local v0, "lastHash":I
    invoke-direct {p0, v0}, Lorg/mapdb/HTreeMap$HashIterator;->advance(I)[Lorg/mapdb/HTreeMap$LinkedNode;

    move-result-object v1

    iput-object v1, p0, Lorg/mapdb/HTreeMap$HashIterator;->currentLinkedList:[Lorg/mapdb/HTreeMap$LinkedNode;

    .line 1001
    const/4 v1, 0x0

    iput v1, p0, Lorg/mapdb/HTreeMap$HashIterator;->currentLinkedListPos:I

    .line 1003
    .end local v0    # "lastHash":I
    :cond_0
    return-void
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 982
    .local p0, "this":Lorg/mapdb/HTreeMap$HashIterator;, "Lorg/mapdb/HTreeMap<TK;TV;>.HashIterator;"
    iget-object v0, p0, Lorg/mapdb/HTreeMap$HashIterator;->lastReturnedKey:Ljava/lang/Object;

    .line 983
    .local v0, "keyToRemove":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/mapdb/HTreeMap$HashIterator;->lastReturnedKey:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 984
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 986
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mapdb/HTreeMap$HashIterator;->lastReturnedKey:Ljava/lang/Object;

    .line 987
    iget-object v1, p0, Lorg/mapdb/HTreeMap$HashIterator;->this$0:Lorg/mapdb/HTreeMap;

    invoke-virtual {v1, v0}, Lorg/mapdb/HTreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    return-void
.end method
