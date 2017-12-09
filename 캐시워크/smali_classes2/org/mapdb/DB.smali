.class public Lorg/mapdb/DB;
.super Ljava/lang/Object;
.source "DB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapdb/DB$BTreeSetMaker;,
        Lorg/mapdb/DB$BTreeMapMaker;,
        Lorg/mapdb/DB$HTreeSetMaker;,
        Lorg/mapdb/DB$HTreeMapMaker;,
        Lorg/mapdb/DB$IdentityWrapper;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected catalog:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected engine:Lorg/mapdb/Engine;

.field protected namesInstanciated:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected namesLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/mapdb/DB$IdentityWrapper;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final strictDBGet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/mapdb/DB;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/mapdb/DB;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/mapdb/Engine;)V
    .locals 1
    .param p1, "engine"    # Lorg/mapdb/Engine;

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0, v0}, Lorg/mapdb/DB;-><init>(Lorg/mapdb/Engine;ZZ)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/mapdb/Engine;ZZ)V
    .locals 2
    .param p1, "engine"    # Lorg/mapdb/Engine;
    .param p2, "strictDBGet"    # Z
    .param p3, "disableLocks"    # Z

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/mapdb/DB;->namesInstanciated:Ljava/util/Map;

    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/mapdb/DB;->namesLookup:Ljava/util/Map;

    .line 75
    instance-of v1, p1, Lorg/mapdb/EngineWrapper;

    if-nez v1, :cond_0

    .line 78
    new-instance v0, Lorg/mapdb/EngineWrapper;

    invoke-direct {v0, p1}, Lorg/mapdb/EngineWrapper;-><init>(Lorg/mapdb/Engine;)V

    .end local p1    # "engine":Lorg/mapdb/Engine;
    .local v0, "engine":Lorg/mapdb/Engine;
    move-object p1, v0

    .line 80
    .end local v0    # "engine":Lorg/mapdb/Engine;
    .restart local p1    # "engine":Lorg/mapdb/Engine;
    :cond_0
    iput-object p1, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    .line 81
    iput-boolean p2, p0, Lorg/mapdb/DB;->strictDBGet:Z

    .line 82
    invoke-interface {p1}, Lorg/mapdb/Engine;->getSerializerPojo()Lorg/mapdb/SerializerPojo;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/mapdb/SerializerPojo;->setDb(Lorg/mapdb/DB;)V

    .line 83
    invoke-virtual {p0}, Lorg/mapdb/DB;->reinit()V

    .line 84
    return-void
.end method


# virtual methods
.method public catGet(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TA;"
        }
    .end annotation

    .prologue
    .line 99
    sget-boolean v0, Lorg/mapdb/DB;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/mapdb/DB;->catalog:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TA;)TA;"
        }
    .end annotation

    .prologue
    .line 92
    .local p2, "init":Ljava/lang/Object;, "TA;"
    sget-boolean v1, Lorg/mapdb/DB;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 93
    :cond_0
    iget-object v1, p0, Lorg/mapdb/DB;->catalog:Ljava/util/SortedMap;

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 94
    .local v0, "ret":Ljava/lang/Object;, "TA;"
    if-eqz v0, :cond_1

    .end local v0    # "ret":Ljava/lang/Object;, "TA;"
    :goto_0
    return-object v0

    .restart local v0    # "ret":Ljava/lang/Object;, "TA;"
    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method public catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TA;)TA;"
        }
    .end annotation

    .prologue
    .line 104
    .local p2, "value":Ljava/lang/Object;, "TA;"
    sget-boolean v0, Lorg/mapdb/DB;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/mapdb/DB;->catalog:Ljava/util/SortedMap;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-object p2
.end method

.method public catPut(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TA;TA;)TA;"
        }
    .end annotation

    .prologue
    .line 110
    .local p2, "value":Ljava/lang/Object;, "TA;"
    .local p3, "retValueIfNull":Ljava/lang/Object;, "TA;"
    sget-boolean v0, Lorg/mapdb/DB;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 111
    :cond_0
    if-nez p2, :cond_1

    .line 113
    .end local p3    # "retValueIfNull":Ljava/lang/Object;, "TA;"
    :goto_0
    return-object p3

    .line 112
    .restart local p3    # "retValueIfNull":Ljava/lang/Object;, "TA;"
    :cond_1
    iget-object v0, p0, Lorg/mapdb/DB;->catalog:Ljava/util/SortedMap;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p3, p2

    .line 113
    goto :goto_0
.end method

.method public checkNameNotExists(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1591
    iget-object v0, p0, Lorg/mapdb/DB;->catalog:Ljava/util/SortedMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1592
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name already used: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1593
    :cond_0
    return-void
.end method

.method public checkNotClosed()V
    .locals 2

    .prologue
    .line 1626
    iget-object v0, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "DB was already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1627
    :cond_0
    return-void
.end method

.method public checkShouldCreate(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1378
    iget-boolean v0, p0, Lorg/mapdb/DB;->strictDBGet:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No record with this name was found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1379
    :cond_0
    return-void
.end method

.method public checkType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "expected"    # Ljava/lang/String;

    .prologue
    .line 1695
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1696
    :cond_0
    return-void
.end method

.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 1603
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1609
    :goto_0
    monitor-exit p0

    return-void

    .line 1604
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    invoke-interface {v0}, Lorg/mapdb/Engine;->close()V

    .line 1606
    sget-object v0, Lorg/mapdb/EngineWrapper;->CLOSED:Lorg/mapdb/Engine;

    iput-object v0, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    .line 1607
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/mapdb/DB;->namesInstanciated:Ljava/util/Map;

    .line 1608
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/mapdb/DB;->namesLookup:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1603
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized commit()V
    .locals 1

    .prologue
    .line 1642
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/mapdb/DB;->checkNotClosed()V

    .line 1643
    iget-object v0, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    invoke-interface {v0}, Lorg/mapdb/Engine;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1644
    monitor-exit p0

    return-void

    .line 1642
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized compact()V
    .locals 1

    .prologue
    .line 1664
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    invoke-interface {v0}, Lorg/mapdb/Engine;->compact()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1665
    monitor-exit p0

    return-void

    .line 1664
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createAtomicBoolean(Ljava/lang/String;Z)Lorg/mapdb/Atomic$Boolean;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "initValue"    # Z

    .prologue
    .line 1343
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mapdb/DB;->checkNameNotExists(Ljava/lang/String;)V

    .line 1344
    iget-object v3, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Lorg/mapdb/Serializer;->BOOLEAN:Lorg/mapdb/Serializer;

    invoke-interface {v3, v4, v5}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v0

    .line 1345
    .local v0, "recid":J
    new-instance v2, Lorg/mapdb/Atomic$Boolean;

    iget-object v4, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".recid"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v2, v4, v6, v7}, Lorg/mapdb/Atomic$Boolean;-><init>(Lorg/mapdb/Engine;J)V

    .line 1348
    .local v2, "ret":Lorg/mapdb/Atomic$Boolean;
    iget-object v3, p0, Lorg/mapdb/DB;->catalog:Ljava/util/SortedMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AtomicBoolean"

    invoke-interface {v3, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    invoke-virtual {p0, p1, v2}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1350
    monitor-exit p0

    return-object v2

    .line 1343
    .end local v0    # "recid":J
    .end local v2    # "ret":Lorg/mapdb/Atomic$Boolean;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized createAtomicInteger(Ljava/lang/String;I)Lorg/mapdb/Atomic$Integer;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "initValue"    # I

    .prologue
    .line 1306
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mapdb/DB;->checkNameNotExists(Ljava/lang/String;)V

    .line 1307
    iget-object v3, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lorg/mapdb/Serializer;->INTEGER:Lorg/mapdb/Serializer;

    invoke-interface {v3, v4, v5}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v0

    .line 1308
    .local v0, "recid":J
    new-instance v2, Lorg/mapdb/Atomic$Integer;

    iget-object v4, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".recid"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v2, v4, v6, v7}, Lorg/mapdb/Atomic$Integer;-><init>(Lorg/mapdb/Engine;J)V

    .line 1311
    .local v2, "ret":Lorg/mapdb/Atomic$Integer;
    iget-object v3, p0, Lorg/mapdb/DB;->catalog:Ljava/util/SortedMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AtomicInteger"

    invoke-interface {v3, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    invoke-virtual {p0, p1, v2}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1313
    monitor-exit p0

    return-object v2

    .line 1306
    .end local v0    # "recid":J
    .end local v2    # "ret":Lorg/mapdb/Atomic$Integer;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized createAtomicLong(Ljava/lang/String;J)Lorg/mapdb/Atomic$Long;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "initValue"    # J

    .prologue
    .line 1269
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mapdb/DB;->checkNameNotExists(Ljava/lang/String;)V

    .line 1270
    iget-object v3, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v5, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v3, v4, v5}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v0

    .line 1271
    .local v0, "recid":J
    new-instance v2, Lorg/mapdb/Atomic$Long;

    iget-object v4, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".recid"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v2, v4, v6, v7}, Lorg/mapdb/Atomic$Long;-><init>(Lorg/mapdb/Engine;J)V

    .line 1274
    .local v2, "ret":Lorg/mapdb/Atomic$Long;
    iget-object v3, p0, Lorg/mapdb/DB;->catalog:Ljava/util/SortedMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AtomicLong"

    invoke-interface {v3, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    invoke-virtual {p0, p1, v2}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1276
    monitor-exit p0

    return-object v2

    .line 1269
    .end local v0    # "recid":J
    .end local v2    # "ret":Lorg/mapdb/Atomic$Long;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized createAtomicString(Ljava/lang/String;Ljava/lang/String;)Lorg/mapdb/Atomic$String;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "initValue"    # Ljava/lang/String;

    .prologue
    .line 1383
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mapdb/DB;->checkNameNotExists(Ljava/lang/String;)V

    .line 1384
    if-nez p2, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "initValue may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1383
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1385
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    sget-object v4, Lorg/mapdb/Serializer;->STRING_NOSIZE:Lorg/mapdb/Serializer;

    invoke-interface {v3, p2, v4}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v0

    .line 1386
    .local v0, "recid":J
    new-instance v2, Lorg/mapdb/Atomic$String;

    iget-object v4, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".recid"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v2, v4, v6, v7}, Lorg/mapdb/Atomic$String;-><init>(Lorg/mapdb/Engine;J)V

    .line 1389
    .local v2, "ret":Lorg/mapdb/Atomic$String;
    iget-object v3, p0, Lorg/mapdb/DB;->catalog:Ljava/util/SortedMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AtomicString"

    invoke-interface {v3, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    invoke-virtual {p0, p1, v2}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1391
    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized createAtomicVar(Ljava/lang/String;Ljava/lang/Object;Lorg/mapdb/Serializer;)Lorg/mapdb/Atomic$Var;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TE;",
            "Lorg/mapdb/Serializer",
            "<TE;>;)",
            "Lorg/mapdb/Atomic$Var",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1419
    .local p2, "initValue":Ljava/lang/Object;, "TE;"
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TE;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mapdb/DB;->checkNameNotExists(Ljava/lang/String;)V

    .line 1420
    if-nez p3, :cond_0

    invoke-virtual {p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object p3

    .line 1421
    :cond_0
    invoke-static {p3}, Lorg/mapdb/SerializerPojo;->assertSerializable(Ljava/lang/Object;)V

    .line 1422
    iget-object v3, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    invoke-interface {v3, p2, p3}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v0

    .line 1423
    .local v0, "recid":J
    new-instance v2, Lorg/mapdb/Atomic$Var;

    iget-object v4, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".recid"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".serializer"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mapdb/Serializer;

    invoke-direct {v2, v4, v6, v7, v3}, Lorg/mapdb/Atomic$Var;-><init>(Lorg/mapdb/Engine;JLorg/mapdb/Serializer;)V

    .line 1427
    .local v2, "ret":Lorg/mapdb/Atomic$Var;
    iget-object v3, p0, Lorg/mapdb/DB;->catalog:Ljava/util/SortedMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AtomicVar"

    invoke-interface {v3, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    invoke-virtual {p0, p1, v2}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1429
    monitor-exit p0

    return-object v2

    .line 1419
    .end local v0    # "recid":J
    .end local v2    # "ret":Lorg/mapdb/Atomic$Var;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized createCircularQueue(Ljava/lang/String;Lorg/mapdb/Serializer;J)Ljava/util/concurrent/BlockingQueue;
    .locals 25
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/mapdb/Serializer",
            "<TE;>;J)",
            "Ljava/util/concurrent/BlockingQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1234
    .local p2, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TE;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lorg/mapdb/DB;->checkNameNotExists(Ljava/lang/String;)V

    .line 1235
    if-nez p2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object p2

    .line 1237
    :cond_0
    invoke-static/range {p2 .. p2}, Lorg/mapdb/SerializerPojo;->assertSerializable(Ljava/lang/Object;)V

    .line 1241
    const-wide/16 v22, 0x0

    .line 1242
    .local v22, "prevRecid":J
    const-wide/16 v12, 0x0

    .line 1243
    .local v12, "firstRecid":J
    new-instance v20, Lorg/mapdb/Queues$SimpleQueue$NodeSerializer;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/mapdb/Queues$SimpleQueue$NodeSerializer;-><init>(Lorg/mapdb/Serializer;)V

    .line 1244
    .local v20, "nodeSer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<Lorg/mapdb/Queues$SimpleQueue$Node<TE;>;>;"
    const-wide/16 v18, 0x0

    .local v18, "i":J
    :goto_0
    cmp-long v4, v18, p3

    if-gez v4, :cond_2

    .line 1245
    new-instance v2, Lorg/mapdb/Queues$SimpleQueue$Node;

    const/4 v4, 0x0

    move-wide/from16 v0, v22

    invoke-direct {v2, v0, v1, v4}, Lorg/mapdb/Queues$SimpleQueue$Node;-><init>(JLjava/lang/Object;)V

    .line 1246
    .local v2, "n":Lorg/mapdb/Queues$SimpleQueue$Node;, "Lorg/mapdb/Queues$SimpleQueue$Node<TE;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    move-object/from16 v0, v20

    invoke-interface {v4, v2, v0}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v22

    .line 1247
    const-wide/16 v4, 0x0

    cmp-long v4, v12, v4

    if-nez v4, :cond_1

    move-wide/from16 v12, v22

    .line 1244
    :cond_1
    const-wide/16 v4, 0x1

    add-long v18, v18, v4

    goto :goto_0

    .line 1250
    .end local v2    # "n":Lorg/mapdb/Queues$SimpleQueue$Node;, "Lorg/mapdb/Queues$SimpleQueue$Node<TE;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    new-instance v5, Lorg/mapdb/Queues$SimpleQueue$Node;

    const/4 v6, 0x0

    move-wide/from16 v0, v22

    invoke-direct {v5, v0, v1, v6}, Lorg/mapdb/Queues$SimpleQueue$Node;-><init>(JLjava/lang/Object;)V

    move-object/from16 v0, v20

    invoke-interface {v4, v12, v13, v5, v0}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 1252
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v4, v5, v6}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v16

    .line 1253
    .local v16, "headRecid":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v4, v5, v6}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v14

    .line 1257
    .local v14, "headInsertRecid":J
    new-instance v3, Lorg/mapdb/Queues$CircularQueue;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".serializer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v1}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapdb/Serializer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".headRecid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".headInsertRecid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".size"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct/range {v3 .. v11}, Lorg/mapdb/Queues$CircularQueue;-><init>(Lorg/mapdb/Engine;Lorg/mapdb/Serializer;JJJ)V

    .line 1263
    .local v3, "ret":Lorg/mapdb/Queues$CircularQueue;, "Lorg/mapdb/Queues$CircularQueue<TE;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapdb/DB;->catalog:Ljava/util/SortedMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CircularQueue"

    invoke-interface {v4, v5, v6}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1265
    monitor-exit p0

    return-object v3

    .line 1234
    .end local v3    # "ret":Lorg/mapdb/Queues$CircularQueue;, "Lorg/mapdb/Queues$CircularQueue<TE;>;"
    .end local v12    # "firstRecid":J
    .end local v14    # "headInsertRecid":J
    .end local v16    # "headRecid":J
    .end local v18    # "i":J
    .end local v20    # "nodeSer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<Lorg/mapdb/Queues$SimpleQueue$Node<TE;>;>;"
    .end local v22    # "prevRecid":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public createHashMap(Ljava/lang/String;)Lorg/mapdb/DB$HTreeMapMaker;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 400
    new-instance v0, Lorg/mapdb/DB$HTreeMapMaker;

    invoke-direct {v0, p0, p1}, Lorg/mapdb/DB$HTreeMapMaker;-><init>(Lorg/mapdb/DB;Ljava/lang/String;)V

    return-object v0
.end method

.method protected declared-synchronized createHashMap(Lorg/mapdb/DB$HTreeMapMaker;)Lorg/mapdb/HTreeMap;
    .locals 29
    .param p1, "m"    # Lorg/mapdb/DB$HTreeMapMaker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mapdb/DB$HTreeMapMaker;",
            ")",
            "Lorg/mapdb/HTreeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 412
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mapdb/DB$HTreeMapMaker;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 413
    .local v28, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/mapdb/DB;->checkNameNotExists(Ljava/lang/String;)V

    .line 415
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/mapdb/DB$HTreeMapMaker;->valueSerializer:Lorg/mapdb/Serializer;

    invoke-static {v5}, Lorg/mapdb/SerializerPojo;->assertSerializable(Ljava/lang/Object;)V

    .line 416
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/mapdb/DB$HTreeMapMaker;->keySerializer:Lorg/mapdb/Serializer;

    invoke-static {v5}, Lorg/mapdb/SerializerPojo;->assertSerializable(Ljava/lang/Object;)V

    .line 417
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/mapdb/DB$HTreeMapMaker;->hasher:Lorg/mapdb/Hasher;

    invoke-static {v5}, Lorg/mapdb/SerializerPojo;->assertSerializable(Ljava/lang/Object;)V

    .line 419
    const-wide/16 v12, 0x0

    .local v12, "expireTimeStart":J
    const-wide/16 v14, 0x0

    .local v14, "expire":J
    const-wide/16 v16, 0x0

    .local v16, "expireAccess":J
    const-wide/16 v18, 0x0

    .local v18, "expireMaxSize":J
    const-wide/16 v20, 0x0

    .line 420
    .local v20, "expireStoreSize":J
    const/16 v22, 0x0

    .local v22, "expireHeads":[J
    const/16 v23, 0x0

    .line 422
    .local v23, "expireTails":[J
    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/mapdb/DB$HTreeMapMaker;->expire:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/mapdb/DB$HTreeMapMaker;->expireAccess:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/mapdb/DB$HTreeMapMaker;->expireMaxSize:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/mapdb/DB$HTreeMapMaker;->expireStoreSize:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 423
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".expireTimeStart"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 424
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".expire"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/mapdb/DB$HTreeMapMaker;->expire:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 425
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".expireAccess"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/mapdb/DB$HTreeMapMaker;->expireAccess:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 426
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".expireMaxSize"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/mapdb/DB$HTreeMapMaker;->expireMaxSize:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 427
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".expireStoreSize"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/mapdb/DB$HTreeMapMaker;->expireStoreSize:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 428
    const/16 v5, 0x10

    new-array v0, v5, [J

    move-object/from16 v22, v0

    .line 429
    const/16 v5, 0x10

    new-array v0, v5, [J

    move-object/from16 v23, v0

    .line 430
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_0
    const/16 v5, 0x10

    move/from16 v0, v27

    if-ge v0, v5, :cond_1

    .line 431
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    sget-object v7, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v5, v6, v7}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v6

    aput-wide v6, v22, v27

    .line 432
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    sget-object v7, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v5, v6, v7}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v6

    aput-wide v6, v23, v27

    .line 430
    add-int/lit8 v27, v27, 0x1

    goto :goto_0

    .line 434
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".expireHeads"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".expireTails"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v5, v1}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .end local v27    # "i":I
    :cond_2
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/mapdb/DB$HTreeMapMaker;->hasher:Lorg/mapdb/Hasher;

    if-eqz v5, :cond_3

    .line 439
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".hasher"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/mapdb/DB$HTreeMapMaker;->hasher:Lorg/mapdb/Hasher;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    :cond_3
    new-instance v4, Lorg/mapdb/HTreeMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".counterRecid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    iget-boolean v6, v0, Lorg/mapdb/DB$HTreeMapMaker;->counter:Z

    if-nez v6, :cond_4

    const-wide/16 v6, 0x0

    :goto_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v6}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".hashSalt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    invoke-virtual {v9}, Ljava/util/Random;->nextInt()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".segmentRecids"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    invoke-static {v10}, Lorg/mapdb/HTreeMap;->preallocateSegments(Lorg/mapdb/Engine;)[J

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [J

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".keySerializer"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v11, v0, Lorg/mapdb/DB$HTreeMapMaker;->keySerializer:Lorg/mapdb/Serializer;

    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v10, v11, v1}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapdb/Serializer;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v24, ".valueSerializer"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mapdb/DB$HTreeMapMaker;->valueSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v11, v1, v2}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/mapdb/Serializer;

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mapdb/DB$HTreeMapMaker;->valueCreator:Lorg/mapdb/Fun$Function1;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mapdb/DB$HTreeMapMaker;->hasher:Lorg/mapdb/Hasher;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-direct/range {v4 .. v26}, Lorg/mapdb/HTreeMap;-><init>(Lorg/mapdb/Engine;JI[JLorg/mapdb/Serializer;Lorg/mapdb/Serializer;JJJJJ[J[JLorg/mapdb/Fun$Function1;Lorg/mapdb/Hasher;Z)V

    .line 454
    .local v4, "ret":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/DB;->catalog:Ljava/util/SortedMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "HashMap"

    invoke-interface {v5, v6, v7}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v4}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    monitor-exit p0

    return-object v4

    .line 443
    .end local v4    # "ret":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    sget-object v9, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v6, v7, v9}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    goto/16 :goto_1

    .line 412
    .end local v12    # "expireTimeStart":J
    .end local v14    # "expire":J
    .end local v16    # "expireAccess":J
    .end local v18    # "expireMaxSize":J
    .end local v20    # "expireStoreSize":J
    .end local v22    # "expireHeads":[J
    .end local v23    # "expireTails":[J
    .end local v28    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method protected declared-synchronized createHashSet(Lorg/mapdb/DB$HTreeSetMaker;)Ljava/util/Set;
    .locals 30
    .param p1, "m"    # Lorg/mapdb/DB$HTreeSetMaker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mapdb/DB$HTreeSetMaker;",
            ")",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 518
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mapdb/DB$HTreeSetMaker;->name:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 519
    .local v28, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/mapdb/DB;->checkNameNotExists(Ljava/lang/String;)V

    .line 521
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/mapdb/DB$HTreeSetMaker;->serializer:Lorg/mapdb/Serializer;

    invoke-static {v5}, Lorg/mapdb/SerializerPojo;->assertSerializable(Ljava/lang/Object;)V

    .line 522
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/mapdb/DB$HTreeSetMaker;->hasher:Lorg/mapdb/Hasher;

    invoke-static {v5}, Lorg/mapdb/SerializerPojo;->assertSerializable(Ljava/lang/Object;)V

    .line 524
    const-wide/16 v12, 0x0

    .local v12, "expireTimeStart":J
    const-wide/16 v14, 0x0

    .local v14, "expire":J
    const-wide/16 v16, 0x0

    .local v16, "expireAccess":J
    const-wide/16 v18, 0x0

    .local v18, "expireMaxSize":J
    const-wide/16 v20, 0x0

    .line 525
    .local v20, "expireStoreSize":J
    const/16 v22, 0x0

    .local v22, "expireHeads":[J
    const/16 v23, 0x0

    .line 527
    .local v23, "expireTails":[J
    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/mapdb/DB$HTreeSetMaker;->expire:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/mapdb/DB$HTreeSetMaker;->expireAccess:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/mapdb/DB$HTreeSetMaker;->expireMaxSize:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 528
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".expireTimeStart"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 529
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".expire"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/mapdb/DB$HTreeSetMaker;->expire:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 530
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".expireAccess"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/mapdb/DB$HTreeSetMaker;->expireAccess:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 531
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".expireMaxSize"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/mapdb/DB$HTreeSetMaker;->expireMaxSize:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 532
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".expireStoreSize"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/mapdb/DB$HTreeSetMaker;->expireStoreSize:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 533
    const/16 v5, 0x10

    new-array v0, v5, [J

    move-object/from16 v22, v0

    .line 534
    const/16 v5, 0x10

    new-array v0, v5, [J

    move-object/from16 v23, v0

    .line 535
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_0
    const/16 v5, 0x10

    move/from16 v0, v27

    if-ge v0, v5, :cond_1

    .line 536
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    sget-object v7, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v5, v6, v7}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v6

    aput-wide v6, v22, v27

    .line 537
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    sget-object v7, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v5, v6, v7}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v6

    aput-wide v6, v23, v27

    .line 535
    add-int/lit8 v27, v27, 0x1

    goto :goto_0

    .line 539
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".expireHeads"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".expireTails"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v5, v1}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    .end local v27    # "i":I
    :cond_2
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/mapdb/DB$HTreeSetMaker;->hasher:Lorg/mapdb/Hasher;

    if-eqz v5, :cond_3

    .line 544
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".hasher"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/mapdb/DB$HTreeSetMaker;->hasher:Lorg/mapdb/Hasher;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    :cond_3
    new-instance v4, Lorg/mapdb/HTreeMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".counterRecid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    iget-boolean v6, v0, Lorg/mapdb/DB$HTreeSetMaker;->counter:Z

    if-nez v6, :cond_4

    const-wide/16 v6, 0x0

    :goto_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v6}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".hashSalt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    invoke-virtual {v9}, Ljava/util/Random;->nextInt()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".segmentRecids"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    invoke-static {v10}, Lorg/mapdb/HTreeMap;->preallocateSegments(Lorg/mapdb/Engine;)[J

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [J

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".serializer"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v11, v0, Lorg/mapdb/DB$HTreeSetMaker;->serializer:Lorg/mapdb/Serializer;

    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v10, v11, v1}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapdb/Serializer;

    const/4 v11, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mapdb/DB$HTreeSetMaker;->hasher:Lorg/mapdb/Hasher;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-direct/range {v4 .. v26}, Lorg/mapdb/HTreeMap;-><init>(Lorg/mapdb/Engine;JI[JLorg/mapdb/Serializer;Lorg/mapdb/Serializer;JJJJJ[J[JLorg/mapdb/Fun$Function1;Lorg/mapdb/Hasher;Z)V

    .line 558
    .local v4, "ret":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;Ljava/lang/Object;>;"
    invoke-virtual {v4}, Lorg/mapdb/HTreeMap;->keySet()Ljava/util/Set;

    move-result-object v29

    .line 560
    .local v29, "ret2":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/DB;->catalog:Ljava/util/SortedMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "HashSet"

    invoke-interface {v5, v6, v7}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    monitor-exit p0

    return-object v29

    .line 548
    .end local v4    # "ret":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;Ljava/lang/Object;>;"
    .end local v29    # "ret2":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    sget-object v9, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v6, v7, v9}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    goto/16 :goto_1

    .line 518
    .end local v12    # "expireTimeStart":J
    .end local v14    # "expire":J
    .end local v16    # "expireAccess":J
    .end local v18    # "expireMaxSize":J
    .end local v20    # "expireStoreSize":J
    .end local v22    # "expireHeads":[J
    .end local v23    # "expireTails":[J
    .end local v28    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized createHashSet(Ljava/lang/String;)Lorg/mapdb/DB$HTreeSetMaker;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 513
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/mapdb/DB$HTreeSetMaker;

    invoke-direct {v0, p0, p1}, Lorg/mapdb/DB$HTreeSetMaker;-><init>(Lorg/mapdb/DB;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createQueue(Ljava/lang/String;Lorg/mapdb/Serializer;Z)Ljava/util/concurrent/BlockingQueue;
    .locals 18
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "useLocks"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/mapdb/Serializer",
            "<TE;>;Z)",
            "Ljava/util/concurrent/BlockingQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1132
    .local p2, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TE;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lorg/mapdb/DB;->checkNameNotExists(Ljava/lang/String;)V

    .line 1134
    invoke-static/range {p2 .. p2}, Lorg/mapdb/SerializerPojo;->assertSerializable(Ljava/lang/Object;)V

    .line 1136
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    sget-object v4, Lorg/mapdb/Queues$SimpleQueue$Node;->EMPTY:Lorg/mapdb/Queues$SimpleQueue$Node;

    new-instance v5, Lorg/mapdb/Queues$SimpleQueue$NodeSerializer;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Lorg/mapdb/Queues$SimpleQueue$NodeSerializer;-><init>(Lorg/mapdb/Serializer;)V

    invoke-interface {v2, v4, v5}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v14

    .line 1137
    .local v14, "node":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v5, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v2, v4, v5}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v12

    .line 1138
    .local v12, "headRecid":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v5, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v2, v4, v5}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v16

    .line 1140
    .local v16, "tailRecid":J
    new-instance v3, Lorg/mapdb/Queues$Queue;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".serializer"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v5}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapdb/Serializer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ".headRecid"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ".tailRecid"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ".useLocks"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-direct/range {v3 .. v10}, Lorg/mapdb/Queues$Queue;-><init>(Lorg/mapdb/Engine;Lorg/mapdb/Serializer;JJZ)V

    .line 1146
    .local v3, "ret":Lorg/mapdb/Queues$Queue;, "Lorg/mapdb/Queues$Queue<TE;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mapdb/DB;->catalog:Ljava/util/SortedMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Queue"

    invoke-interface {v2, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1148
    monitor-exit p0

    return-object v3

    .line 1132
    .end local v3    # "ret":Lorg/mapdb/Queues$Queue;, "Lorg/mapdb/Queues$Queue<TE;>;"
    .end local v12    # "headRecid":J
    .end local v14    # "node":J
    .end local v16    # "tailRecid":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized createStack(Ljava/lang/String;Lorg/mapdb/Serializer;Z)Ljava/util/concurrent/BlockingQueue;
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "useLocks"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/mapdb/Serializer",
            "<TE;>;Z)",
            "Ljava/util/concurrent/BlockingQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1184
    .local p2, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TE;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mapdb/DB;->checkNameNotExists(Ljava/lang/String;)V

    .line 1186
    invoke-static {p2}, Lorg/mapdb/SerializerPojo;->assertSerializable(Ljava/lang/Object;)V

    .line 1188
    iget-object v0, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    sget-object v2, Lorg/mapdb/Queues$SimpleQueue$Node;->EMPTY:Lorg/mapdb/Queues$SimpleQueue$Node;

    new-instance v3, Lorg/mapdb/Queues$SimpleQueue$NodeSerializer;

    invoke-direct {v3, p2}, Lorg/mapdb/Queues$SimpleQueue$NodeSerializer;-><init>(Lorg/mapdb/Serializer;)V

    invoke-interface {v0, v2, v3}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v10

    .line 1189
    .local v10, "node":J
    iget-object v0, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v3, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v0, v2, v3}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v8

    .line 1191
    .local v8, "headRecid":J
    new-instance v1, Lorg/mapdb/Queues$Stack;

    iget-object v2, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".serializer"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v3

    invoke-virtual {p0, v0, p2, v3}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mapdb/Serializer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".headRecid"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ".useLocks"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-direct/range {v1 .. v6}, Lorg/mapdb/Queues$Stack;-><init>(Lorg/mapdb/Engine;Lorg/mapdb/Serializer;JZ)V

    .line 1196
    .local v1, "ret":Lorg/mapdb/Queues$Stack;, "Lorg/mapdb/Queues$Stack<TE;>;"
    iget-object v0, p0, Lorg/mapdb/DB;->catalog:Ljava/util/SortedMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Stack"

    invoke-interface {v0, v2, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    invoke-virtual {p0, p1, v1}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1198
    monitor-exit p0

    return-object v1

    .line 1184
    .end local v1    # "ret":Lorg/mapdb/Queues$Stack;, "Lorg/mapdb/Queues$Stack<TE;>;"
    .end local v8    # "headRecid":J
    .end local v10    # "node":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized createTreeMap(Lorg/mapdb/DB$BTreeMapMaker;)Lorg/mapdb/BTreeMap;
    .locals 30
    .param p1, "m"    # Lorg/mapdb/DB$BTreeMapMaker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mapdb/DB$BTreeMapMaker;",
            ")",
            "Lorg/mapdb/BTreeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 833
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/mapdb/DB$BTreeMapMaker;->name:Ljava/lang/String;

    .line 834
    .local v4, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/mapdb/DB;->checkNameNotExists(Ljava/lang/String;)V

    .line 835
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/mapdb/DB$BTreeMapMaker;->keySerializer:Lorg/mapdb/BTreeKeySerializer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/mapdb/DB;->fillNulls(Lorg/mapdb/BTreeKeySerializer;)Lorg/mapdb/BTreeKeySerializer;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Lorg/mapdb/DB$BTreeMapMaker;->keySerializer:Lorg/mapdb/BTreeKeySerializer;

    .line 836
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/mapdb/DB$BTreeMapMaker;->keySerializer:Lorg/mapdb/BTreeKeySerializer;

    if-nez v5, :cond_0

    .line 837
    new-instance v5, Lorg/mapdb/BTreeKeySerializer$BasicKeySerializer;

    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/mapdb/BTreeKeySerializer$BasicKeySerializer;-><init>(Lorg/mapdb/Serializer;)V

    move-object/from16 v0, p1

    iput-object v5, v0, Lorg/mapdb/DB$BTreeMapMaker;->keySerializer:Lorg/mapdb/BTreeKeySerializer;

    .line 838
    :cond_0
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/mapdb/DB$BTreeMapMaker;->valueSerializer:Lorg/mapdb/Serializer;

    if-nez v5, :cond_1

    .line 839
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Lorg/mapdb/DB$BTreeMapMaker;->valueSerializer:Lorg/mapdb/Serializer;

    .line 841
    :cond_1
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/mapdb/DB$BTreeMapMaker;->valueSerializer:Lorg/mapdb/Serializer;

    invoke-static {v5}, Lorg/mapdb/SerializerPojo;->assertSerializable(Ljava/lang/Object;)V

    .line 842
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/mapdb/DB$BTreeMapMaker;->keySerializer:Lorg/mapdb/BTreeKeySerializer;

    invoke-static {v5}, Lorg/mapdb/SerializerPojo;->assertSerializable(Ljava/lang/Object;)V

    .line 843
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/mapdb/DB$BTreeMapMaker;->comparator:Ljava/util/Comparator;

    invoke-static {v5}, Lorg/mapdb/SerializerPojo;->assertSerializable(Ljava/lang/Object;)V

    .line 845
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".keySerializer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/mapdb/DB$BTreeMapMaker;->keySerializer:Lorg/mapdb/BTreeKeySerializer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapdb/BTreeKeySerializer;

    move-object/from16 v0, p1

    iput-object v5, v0, Lorg/mapdb/DB$BTreeMapMaker;->keySerializer:Lorg/mapdb/BTreeKeySerializer;

    .line 846
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".valueSerializer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/mapdb/DB$BTreeMapMaker;->valueSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapdb/Serializer;

    move-object/from16 v0, p1

    iput-object v5, v0, Lorg/mapdb/DB$BTreeMapMaker;->valueSerializer:Lorg/mapdb/Serializer;

    .line 847
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/mapdb/DB$BTreeMapMaker;->comparator:Ljava/util/Comparator;

    if-nez v5, :cond_2

    .line 848
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/mapdb/DB$BTreeMapMaker;->keySerializer:Lorg/mapdb/BTreeKeySerializer;

    invoke-virtual {v5}, Lorg/mapdb/BTreeKeySerializer;->getComparator()Ljava/util/Comparator;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Lorg/mapdb/DB$BTreeMapMaker;->comparator:Ljava/util/Comparator;

    .line 849
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/mapdb/DB$BTreeMapMaker;->comparator:Ljava/util/Comparator;

    if-nez v5, :cond_2

    .line 850
    sget-object v5, Lorg/mapdb/BTreeMap;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, p1

    iput-object v5, v0, Lorg/mapdb/DB$BTreeMapMaker;->comparator:Ljava/util/Comparator;

    .line 854
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".comparator"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/mapdb/DB$BTreeMapMaker;->comparator:Ljava/util/Comparator;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Comparator;

    move-object/from16 v0, p1

    iput-object v5, v0, Lorg/mapdb/DB$BTreeMapMaker;->comparator:Ljava/util/Comparator;

    .line 856
    move-object/from16 v0, p1

    iget v5, v0, Lorg/mapdb/DB$BTreeMapMaker;->pumpPresortBatchSize:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/mapdb/DB$BTreeMapMaker;->pumpSource:Ljava/util/Iterator;

    if-eqz v5, :cond_3

    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/mapdb/DB$BTreeMapMaker;->pumpSource:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 857
    new-instance v27, Lorg/mapdb/DB$1;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mapdb/DB$1;-><init>(Lorg/mapdb/DB;Lorg/mapdb/DB$BTreeMapMaker;)V

    .line 865
    .local v27, "presortComp":Ljava/util/Comparator;
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/mapdb/DB$BTreeMapMaker;->pumpSource:Ljava/util/Iterator;

    move-object/from16 v0, p1

    iget-boolean v6, v0, Lorg/mapdb/DB$BTreeMapMaker;->pumpIgnoreDuplicates:Z

    move-object/from16 v0, p1

    iget v7, v0, Lorg/mapdb/DB$BTreeMapMaker;->pumpPresortBatchSize:I

    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v8

    move-object/from16 v0, v27

    invoke-static {v5, v6, v7, v0, v8}, Lorg/mapdb/Pump;->sort(Ljava/util/Iterator;ZILjava/util/Comparator;Lorg/mapdb/Serializer;)Ljava/util/Iterator;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Lorg/mapdb/DB$BTreeMapMaker;->pumpSource:Ljava/util/Iterator;

    .line 869
    .end local v27    # "presortComp":Ljava/util/Comparator;
    :cond_3
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lorg/mapdb/DB$BTreeMapMaker;->counter:Z

    if-nez v5, :cond_5

    const-wide/16 v12, 0x0

    .line 872
    .local v12, "counterRecid":J
    :goto_0
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/mapdb/DB$BTreeMapMaker;->pumpSource:Ljava/util/Iterator;

    if-eqz v5, :cond_4

    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/mapdb/DB$BTreeMapMaker;->pumpSource:Ljava/util/Iterator;

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    .line 873
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/mapdb/DB$BTreeMapMaker;->keySerializer:Lorg/mapdb/BTreeKeySerializer;

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/mapdb/DB$BTreeMapMaker;->valueSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/mapdb/DB$BTreeMapMaker;->comparator:Ljava/util/Comparator;

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lorg/mapdb/BTreeMap;->createRootRef(Lorg/mapdb/Engine;Lorg/mapdb/BTreeKeySerializer;Lorg/mapdb/Serializer;Ljava/util/Comparator;I)J

    move-result-wide v28

    .line 888
    .local v28, "rootRecidRef":J
    :goto_1
    new-instance v14, Lorg/mapdb/BTreeMap;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".rootRecidRef"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".maxNodeSize"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Lorg/mapdb/DB$BTreeMapMaker;->nodeSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v18

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".valuesOutsideNodes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-boolean v6, v0, Lorg/mapdb/DB$BTreeMapMaker;->valuesOutsideNodes:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".counterRecid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mapdb/DB$BTreeMapMaker;->keySerializer:Lorg/mapdb/BTreeKeySerializer;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mapdb/DB$BTreeMapMaker;->valueSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mapdb/DB$BTreeMapMaker;->comparator:Ljava/util/Comparator;

    move-object/from16 v24, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/mapdb/DB$BTreeMapMaker;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".numberOfNodeMetas"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v25

    const/16 v26, 0x0

    invoke-direct/range {v14 .. v26}, Lorg/mapdb/BTreeMap;-><init>(Lorg/mapdb/Engine;JIZJLorg/mapdb/BTreeKeySerializer;Lorg/mapdb/Serializer;Ljava/util/Comparator;IZ)V

    .line 899
    .local v14, "ret":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/DB;->catalog:Ljava/util/SortedMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TreeMap"

    invoke-interface {v5, v6, v7}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    monitor-exit p0

    return-object v14

    .line 869
    .end local v12    # "counterRecid":J
    .end local v14    # "ret":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    .end local v28    # "rootRecidRef":J
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    sget-object v7, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v5, v6, v7}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v12

    goto/16 :goto_0

    .line 875
    .restart local v12    # "counterRecid":J
    :cond_6
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/mapdb/DB$BTreeMapMaker;->pumpSource:Ljava/util/Iterator;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/mapdb/DB$BTreeMapMaker;->pumpKeyExtractor:Lorg/mapdb/Fun$Function1;

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/mapdb/DB$BTreeMapMaker;->pumpValueExtractor:Lorg/mapdb/Fun$Function1;

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lorg/mapdb/DB$BTreeMapMaker;->pumpIgnoreDuplicates:Z

    move-object/from16 v0, p1

    iget v10, v0, Lorg/mapdb/DB$BTreeMapMaker;->nodeSize:I

    move-object/from16 v0, p1

    iget-boolean v11, v0, Lorg/mapdb/DB$BTreeMapMaker;->valuesOutsideNodes:Z

    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/mapdb/DB$BTreeMapMaker;->keySerializer:Lorg/mapdb/BTreeKeySerializer;

    move-object/from16 v0, p1

    iget-object v15, v0, Lorg/mapdb/DB$BTreeMapMaker;->valueSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mapdb/DB$BTreeMapMaker;->comparator:Ljava/util/Comparator;

    move-object/from16 v16, v0

    invoke-static/range {v5 .. v16}, Lorg/mapdb/Pump;->buildTreeMap(Ljava/util/Iterator;Lorg/mapdb/Engine;Lorg/mapdb/Fun$Function1;Lorg/mapdb/Fun$Function1;ZIZJLorg/mapdb/BTreeKeySerializer;Lorg/mapdb/Serializer;Ljava/util/Comparator;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v28

    .restart local v28    # "rootRecidRef":J
    goto/16 :goto_1

    .line 833
    .end local v4    # "name":Ljava/lang/String;
    .end local v12    # "counterRecid":J
    .end local v28    # "rootRecidRef":J
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public createTreeMap(Ljava/lang/String;)Lorg/mapdb/DB$BTreeMapMaker;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 828
    new-instance v0, Lorg/mapdb/DB$BTreeMapMaker;

    invoke-direct {v0, p0, p1}, Lorg/mapdb/DB$BTreeMapMaker;-><init>(Lorg/mapdb/DB;Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized createTreeSet(Lorg/mapdb/DB$BTreeSetMaker;)Ljava/util/NavigableSet;
    .locals 28
    .param p1, "m"    # Lorg/mapdb/DB$BTreeSetMaker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mapdb/DB$BTreeSetMaker;",
            ")",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1051
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/mapdb/DB$BTreeSetMaker;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/mapdb/DB;->checkNameNotExists(Ljava/lang/String;)V

    .line 1053
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/mapdb/DB$BTreeSetMaker;->serializer:Lorg/mapdb/BTreeKeySerializer;

    if-nez v3, :cond_0

    .line 1054
    new-instance v3, Lorg/mapdb/BTreeKeySerializer$BasicKeySerializer;

    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/mapdb/BTreeKeySerializer$BasicKeySerializer;-><init>(Lorg/mapdb/Serializer;)V

    move-object/from16 v0, p1

    iput-object v3, v0, Lorg/mapdb/DB$BTreeSetMaker;->serializer:Lorg/mapdb/BTreeKeySerializer;

    .line 1055
    :cond_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/mapdb/DB$BTreeSetMaker;->serializer:Lorg/mapdb/BTreeKeySerializer;

    invoke-static {v3}, Lorg/mapdb/SerializerPojo;->assertSerializable(Ljava/lang/Object;)V

    .line 1056
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/mapdb/DB$BTreeSetMaker;->comparator:Ljava/util/Comparator;

    invoke-static {v3}, Lorg/mapdb/SerializerPojo;->assertSerializable(Ljava/lang/Object;)V

    .line 1058
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/mapdb/DB$BTreeSetMaker;->serializer:Lorg/mapdb/BTreeKeySerializer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/mapdb/DB;->fillNulls(Lorg/mapdb/BTreeKeySerializer;)Lorg/mapdb/BTreeKeySerializer;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Lorg/mapdb/DB$BTreeSetMaker;->serializer:Lorg/mapdb/BTreeKeySerializer;

    .line 1059
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/mapdb/DB$BTreeSetMaker;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".keySerializer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/mapdb/DB$BTreeSetMaker;->serializer:Lorg/mapdb/BTreeKeySerializer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mapdb/BTreeKeySerializer;

    move-object/from16 v0, p1

    iput-object v3, v0, Lorg/mapdb/DB$BTreeSetMaker;->serializer:Lorg/mapdb/BTreeKeySerializer;

    .line 1060
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/mapdb/DB$BTreeSetMaker;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".comparator"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/mapdb/DB$BTreeSetMaker;->comparator:Ljava/util/Comparator;

    sget-object v5, Lorg/mapdb/BTreeMap;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Comparator;

    move-object/from16 v0, p1

    iput-object v3, v0, Lorg/mapdb/DB$BTreeSetMaker;->comparator:Ljava/util/Comparator;

    .line 1062
    move-object/from16 v0, p1

    iget v3, v0, Lorg/mapdb/DB$BTreeSetMaker;->pumpPresortBatchSize:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/mapdb/DB$BTreeSetMaker;->pumpSource:Ljava/util/Iterator;

    if-eqz v3, :cond_1

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/mapdb/DB$BTreeSetMaker;->pumpSource:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1063
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/mapdb/DB$BTreeSetMaker;->pumpSource:Ljava/util/Iterator;

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lorg/mapdb/DB$BTreeSetMaker;->pumpIgnoreDuplicates:Z

    move-object/from16 v0, p1

    iget v5, v0, Lorg/mapdb/DB$BTreeSetMaker;->pumpPresortBatchSize:I

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/mapdb/DB$BTreeSetMaker;->comparator:Ljava/util/Comparator;

    invoke-static {v6}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lorg/mapdb/Pump;->sort(Ljava/util/Iterator;ZILjava/util/Comparator;Lorg/mapdb/Serializer;)Ljava/util/Iterator;

    move-result-object v3

    move-object/from16 v0, p1

    iput-object v3, v0, Lorg/mapdb/DB$BTreeSetMaker;->pumpSource:Ljava/util/Iterator;

    .line 1066
    :cond_1
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lorg/mapdb/DB$BTreeSetMaker;->counter:Z

    if-nez v3, :cond_3

    const-wide/16 v10, 0x0

    .line 1069
    .local v10, "counterRecid":J
    :goto_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/mapdb/DB$BTreeSetMaker;->pumpSource:Ljava/util/Iterator;

    if-eqz v3, :cond_2

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/mapdb/DB$BTreeSetMaker;->pumpSource:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1070
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/mapdb/DB$BTreeSetMaker;->serializer:Lorg/mapdb/BTreeKeySerializer;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/mapdb/DB$BTreeSetMaker;->comparator:Ljava/util/Comparator;

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lorg/mapdb/BTreeMap;->createRootRef(Lorg/mapdb/Engine;Lorg/mapdb/BTreeKeySerializer;Lorg/mapdb/Serializer;Ljava/util/Comparator;I)J

    move-result-wide v26

    .line 1086
    .local v26, "rootRecidRef":J
    :goto_1
    new-instance v12, Lorg/mapdb/BTreeMap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/mapdb/DB$BTreeSetMaker;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".rootRecidRef"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/mapdb/DB$BTreeSetMaker;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".maxNodeSize"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Lorg/mapdb/DB$BTreeSetMaker;->nodeSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/16 v17, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/mapdb/DB$BTreeSetMaker;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".counterRecid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mapdb/DB$BTreeSetMaker;->serializer:Lorg/mapdb/BTreeKeySerializer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mapdb/DB$BTreeSetMaker;->comparator:Ljava/util/Comparator;

    move-object/from16 v22, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/mapdb/DB$BTreeSetMaker;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".numberOfNodeMetas"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/mapdb/DB;->catPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v23

    const/16 v24, 0x0

    invoke-direct/range {v12 .. v24}, Lorg/mapdb/BTreeMap;-><init>(Lorg/mapdb/Engine;JIZJLorg/mapdb/BTreeKeySerializer;Lorg/mapdb/Serializer;Ljava/util/Comparator;IZ)V

    invoke-virtual {v12}, Lorg/mapdb/BTreeMap;->keySet()Ljava/util/NavigableSet;

    move-result-object v2

    .line 1098
    .local v2, "ret":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TK;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/DB;->catalog:Ljava/util/SortedMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/mapdb/DB$BTreeSetMaker;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TreeSet"

    invoke-interface {v3, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/mapdb/DB$BTreeSetMaker;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1100
    monitor-exit p0

    return-object v2

    .line 1066
    .end local v2    # "ret":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TK;>;"
    .end local v10    # "counterRecid":J
    .end local v26    # "rootRecidRef":J
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sget-object v5, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v3, v4, v5}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v10

    goto/16 :goto_0

    .line 1072
    .restart local v10    # "counterRecid":J
    :cond_4
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/mapdb/DB$BTreeSetMaker;->pumpSource:Ljava/util/Iterator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    invoke-static {}, Lorg/mapdb/Fun;->extractNoTransform()Lorg/mapdb/Fun$Function1;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-boolean v7, v0, Lorg/mapdb/DB$BTreeSetMaker;->pumpIgnoreDuplicates:Z

    move-object/from16 v0, p1

    iget v8, v0, Lorg/mapdb/DB$BTreeSetMaker;->nodeSize:I

    const/4 v9, 0x0

    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/mapdb/DB$BTreeSetMaker;->serializer:Lorg/mapdb/BTreeKeySerializer;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/mapdb/DB$BTreeSetMaker;->comparator:Ljava/util/Comparator;

    invoke-static/range {v3 .. v14}, Lorg/mapdb/Pump;->buildTreeMap(Ljava/util/Iterator;Lorg/mapdb/Engine;Lorg/mapdb/Fun$Function1;Lorg/mapdb/Fun$Function1;ZIZJLorg/mapdb/BTreeKeySerializer;Lorg/mapdb/Serializer;Ljava/util/Comparator;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v26

    .restart local v26    # "rootRecidRef":J
    goto/16 :goto_1

    .line 1051
    .end local v10    # "counterRecid":J
    .end local v26    # "rootRecidRef":J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized createTreeSet(Ljava/lang/String;)Lorg/mapdb/DB$BTreeSetMaker;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1047
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/mapdb/DB$BTreeSetMaker;

    invoke-direct {v0, p0, p1}, Lorg/mapdb/DB$BTreeSetMaker;-><init>(Lorg/mapdb/DB;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized delete(Ljava/lang/String;)V
    .locals 16
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1490
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lorg/mapdb/DB;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 1491
    .local v8, "r":Ljava/lang/Object;
    instance-of v12, v8, Lorg/mapdb/Atomic$Boolean;

    if-eqz v12, :cond_2

    .line 1492
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    move-object v0, v8

    check-cast v0, Lorg/mapdb/Atomic$Boolean;

    move-object v12, v0

    iget-wide v14, v12, Lorg/mapdb/Atomic$Boolean;->recid:J

    sget-object v12, Lorg/mapdb/Serializer;->BOOLEAN:Lorg/mapdb/Serializer;

    invoke-interface {v13, v14, v15, v12}, Lorg/mapdb/Engine;->delete(JLorg/mapdb/Serializer;)V

    .line 1524
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/DB;->catalog:Ljava/util/SortedMap;

    invoke-interface {v12}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1525
    .local v6, "n":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1527
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 1528
    .local v9, "suffix":Ljava/lang/String;
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x2e

    if-ne v12, v13, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_1

    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1529
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/DB;->catalog:Ljava/util/SortedMap;

    invoke-interface {v12, v6}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1490
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "n":Ljava/lang/String;
    .end local v8    # "r":Ljava/lang/Object;
    .end local v9    # "suffix":Ljava/lang/String;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 1493
    .restart local v8    # "r":Ljava/lang/Object;
    :cond_2
    :try_start_1
    instance-of v12, v8, Lorg/mapdb/Atomic$Integer;

    if-eqz v12, :cond_3

    .line 1494
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    move-object v0, v8

    check-cast v0, Lorg/mapdb/Atomic$Integer;

    move-object v12, v0

    iget-wide v14, v12, Lorg/mapdb/Atomic$Integer;->recid:J

    sget-object v12, Lorg/mapdb/Serializer;->INTEGER:Lorg/mapdb/Serializer;

    invoke-interface {v13, v14, v15, v12}, Lorg/mapdb/Engine;->delete(JLorg/mapdb/Serializer;)V

    goto :goto_0

    .line 1495
    :cond_3
    instance-of v12, v8, Lorg/mapdb/Atomic$Long;

    if-eqz v12, :cond_4

    .line 1496
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    move-object v0, v8

    check-cast v0, Lorg/mapdb/Atomic$Long;

    move-object v12, v0

    iget-wide v14, v12, Lorg/mapdb/Atomic$Long;->recid:J

    sget-object v12, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v13, v14, v15, v12}, Lorg/mapdb/Engine;->delete(JLorg/mapdb/Serializer;)V

    goto :goto_0

    .line 1497
    :cond_4
    instance-of v12, v8, Lorg/mapdb/Atomic$String;

    if-eqz v12, :cond_5

    .line 1498
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    move-object v0, v8

    check-cast v0, Lorg/mapdb/Atomic$String;

    move-object v12, v0

    iget-wide v14, v12, Lorg/mapdb/Atomic$String;->recid:J

    sget-object v12, Lorg/mapdb/Serializer;->STRING_NOSIZE:Lorg/mapdb/Serializer;

    invoke-interface {v13, v14, v15, v12}, Lorg/mapdb/Engine;->delete(JLorg/mapdb/Serializer;)V

    goto/16 :goto_0

    .line 1499
    :cond_5
    instance-of v12, v8, Lorg/mapdb/Atomic$Var;

    if-eqz v12, :cond_6

    .line 1500
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    move-object v0, v8

    check-cast v0, Lorg/mapdb/Atomic$Var;

    move-object v12, v0

    iget-wide v14, v12, Lorg/mapdb/Atomic$Var;->recid:J

    move-object v0, v8

    check-cast v0, Lorg/mapdb/Atomic$Var;

    move-object v12, v0

    iget-object v12, v12, Lorg/mapdb/Atomic$Var;->serializer:Lorg/mapdb/Serializer;

    invoke-interface {v13, v14, v15, v12}, Lorg/mapdb/Engine;->delete(JLorg/mapdb/Serializer;)V

    goto/16 :goto_0

    .line 1501
    :cond_6
    instance-of v12, v8, Ljava/util/Queue;

    if-eqz v12, :cond_7

    .line 1503
    move-object v0, v8

    check-cast v0, Ljava/util/Queue;

    move-object v7, v0

    .line 1504
    .local v7, "q":Ljava/util/Queue;
    :goto_2
    invoke-interface {v7}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_0

    goto :goto_2

    .line 1507
    .end local v7    # "q":Ljava/util/Queue;
    :cond_7
    instance-of v12, v8, Lorg/mapdb/HTreeMap;

    if-nez v12, :cond_8

    instance-of v12, v8, Lorg/mapdb/HTreeMap$KeySet;

    if-eqz v12, :cond_a

    .line 1508
    :cond_8
    instance-of v12, v8, Lorg/mapdb/HTreeMap;

    if-eqz v12, :cond_9

    move-object v0, v8

    check-cast v0, Lorg/mapdb/HTreeMap;

    move-object v12, v0

    move-object v5, v12

    .line 1509
    .local v5, "m":Lorg/mapdb/HTreeMap;
    :goto_3
    invoke-virtual {v5}, Lorg/mapdb/HTreeMap;->clear()V

    .line 1511
    iget-object v2, v5, Lorg/mapdb/HTreeMap;->segmentRecids:[J

    .local v2, "arr$":[J
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_4
    if-ge v3, v4, :cond_0

    aget-wide v10, v2, v3

    .line 1512
    .local v10, "segmentRecid":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    sget-object v13, Lorg/mapdb/HTreeMap;->DIR_SERIALIZER:Lorg/mapdb/Serializer;

    invoke-interface {v12, v10, v11, v13}, Lorg/mapdb/Engine;->delete(JLorg/mapdb/Serializer;)V

    .line 1511
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1508
    .end local v2    # "arr$":[J
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "m":Lorg/mapdb/HTreeMap;
    .end local v10    # "segmentRecid":J
    :cond_9
    move-object v0, v8

    check-cast v0, Lorg/mapdb/HTreeMap$KeySet;

    move-object v12, v0

    invoke-virtual {v12}, Lorg/mapdb/HTreeMap$KeySet;->parent()Lorg/mapdb/HTreeMap;

    move-result-object v5

    goto :goto_3

    .line 1514
    :cond_a
    instance-of v12, v8, Lorg/mapdb/BTreeMap;

    if-nez v12, :cond_b

    instance-of v12, v8, Lorg/mapdb/BTreeMap$KeySet;

    if-eqz v12, :cond_0

    .line 1515
    :cond_b
    instance-of v12, v8, Lorg/mapdb/BTreeMap;

    if-eqz v12, :cond_c

    move-object v0, v8

    check-cast v0, Lorg/mapdb/BTreeMap;

    move-object v12, v0

    move-object v5, v12

    .line 1518
    .local v5, "m":Lorg/mapdb/BTreeMap;
    :goto_5
    invoke-virtual {v5}, Lorg/mapdb/BTreeMap;->clear()V

    .line 1520
    iget-object v12, v5, Lorg/mapdb/BTreeMap;->counter:Lorg/mapdb/Atomic$Long;

    if-eqz v12, :cond_0

    .line 1521
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    iget-object v13, v5, Lorg/mapdb/BTreeMap;->counter:Lorg/mapdb/Atomic$Long;

    iget-wide v14, v13, Lorg/mapdb/Atomic$Long;->recid:J

    sget-object v13, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v12, v14, v15, v13}, Lorg/mapdb/Engine;->delete(JLorg/mapdb/Serializer;)V

    goto/16 :goto_0

    .line 1515
    .end local v5    # "m":Lorg/mapdb/BTreeMap;
    :cond_c
    move-object v0, v8

    check-cast v0, Lorg/mapdb/BTreeMap$KeySet;

    move-object v12, v0

    iget-object v12, v12, Lorg/mapdb/BTreeMap$KeySet;->m:Ljava/util/concurrent/ConcurrentNavigableMap;

    check-cast v12, Lorg/mapdb/BTreeMap;

    move-object v5, v12

    goto :goto_5

    .line 1531
    .local v3, "i$":Ljava/util/Iterator;
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/DB;->namesInstanciated:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1532
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapdb/DB;->namesLookup:Ljava/util/Map;

    new-instance v13, Lorg/mapdb/DB$IdentityWrapper;

    invoke-direct {v13, v8}, Lorg/mapdb/DB$IdentityWrapper;-><init>(Ljava/lang/Object;)V

    invoke-interface {v12, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1533
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized exists(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1485
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected fillNulls(Lorg/mapdb/BTreeKeySerializer;)Lorg/mapdb/BTreeKeySerializer;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mapdb/BTreeKeySerializer",
            "<TK;>;)",
            "Lorg/mapdb/BTreeKeySerializer",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 911
    .local p1, "keySerializer":Lorg/mapdb/BTreeKeySerializer;, "Lorg/mapdb/BTreeKeySerializer<TK;>;"
    if-nez p1, :cond_0

    .line 912
    const/4 v1, 0x0

    .line 981
    .end local p1    # "keySerializer":Lorg/mapdb/BTreeKeySerializer;, "Lorg/mapdb/BTreeKeySerializer<TK;>;"
    :goto_0
    return-object v1

    .line 913
    .restart local p1    # "keySerializer":Lorg/mapdb/BTreeKeySerializer;, "Lorg/mapdb/BTreeKeySerializer<TK;>;"
    :cond_0
    move-object/from16 v0, p1

    instance-of v1, v0, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;

    if-eqz v1, :cond_4

    move-object/from16 v13, p1

    .line 914
    check-cast v13, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;

    .line 916
    .local v13, "s":Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer<**>;"
    new-instance p1, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;

    .end local p1    # "keySerializer":Lorg/mapdb/BTreeKeySerializer;, "Lorg/mapdb/BTreeKeySerializer<TK;>;"
    iget-object v1, v13, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;->aComparator:Ljava/util/Comparator;

    if-eqz v1, :cond_1

    iget-object v1, v13, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;->aComparator:Ljava/util/Comparator;

    :goto_1
    iget-object v2, v13, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    if-eqz v2, :cond_2

    iget-object v2, v13, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    :goto_2
    iget-object v3, v13, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    if-eqz v3, :cond_3

    iget-object v3, v13, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    :goto_3
    move-object/from16 v0, p1

    invoke-direct {v0, v1, v2, v3}, Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;-><init>(Ljava/util/Comparator;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;)V

    move-object/from16 v1, p1

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/mapdb/BTreeMap;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v3

    goto :goto_3

    .line 922
    .end local v13    # "s":Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple2KeySerializer<**>;"
    .restart local p1    # "keySerializer":Lorg/mapdb/BTreeKeySerializer;, "Lorg/mapdb/BTreeKeySerializer<TK;>;"
    :cond_4
    move-object/from16 v0, p1

    instance-of v1, v0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;

    if-eqz v1, :cond_a

    move-object/from16 v14, p1

    .line 923
    check-cast v14, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;

    .line 925
    .local v14, "s":Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer<***>;"
    new-instance v1, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;

    iget-object v2, v14, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->aComparator:Ljava/util/Comparator;

    if-eqz v2, :cond_5

    iget-object v2, v14, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->aComparator:Ljava/util/Comparator;

    :goto_4
    iget-object v3, v14, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->bComparator:Ljava/util/Comparator;

    if-eqz v3, :cond_6

    iget-object v3, v14, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->bComparator:Ljava/util/Comparator;

    :goto_5
    iget-object v4, v14, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    if-eqz v4, :cond_7

    iget-object v4, v14, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    :goto_6
    iget-object v5, v14, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    if-eqz v5, :cond_8

    iget-object v5, v14, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    :goto_7
    iget-object v6, v14, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    if-eqz v6, :cond_9

    iget-object v6, v14, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    :goto_8
    invoke-direct/range {v1 .. v6}, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;)V

    goto :goto_0

    :cond_5
    sget-object v2, Lorg/mapdb/BTreeMap;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    goto :goto_4

    :cond_6
    sget-object v3, Lorg/mapdb/BTreeMap;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    goto :goto_5

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v4

    goto :goto_6

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v5

    goto :goto_7

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v6

    goto :goto_8

    .line 933
    .end local v14    # "s":Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer<***>;"
    :cond_a
    move-object/from16 v0, p1

    instance-of v1, v0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;

    if-eqz v1, :cond_12

    move-object/from16 v15, p1

    .line 934
    check-cast v15, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;

    .line 936
    .local v15, "s":Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer<****>;"
    new-instance v1, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;

    iget-object v2, v15, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->aComparator:Ljava/util/Comparator;

    if-eqz v2, :cond_b

    iget-object v2, v15, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->aComparator:Ljava/util/Comparator;

    :goto_9
    iget-object v3, v15, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->bComparator:Ljava/util/Comparator;

    if-eqz v3, :cond_c

    iget-object v3, v15, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->bComparator:Ljava/util/Comparator;

    :goto_a
    iget-object v4, v15, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->cComparator:Ljava/util/Comparator;

    if-eqz v4, :cond_d

    iget-object v4, v15, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->cComparator:Ljava/util/Comparator;

    :goto_b
    iget-object v5, v15, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    if-eqz v5, :cond_e

    iget-object v5, v15, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    :goto_c
    iget-object v6, v15, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    if-eqz v6, :cond_f

    iget-object v6, v15, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    :goto_d
    iget-object v7, v15, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    if-eqz v7, :cond_10

    iget-object v7, v15, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    :goto_e
    iget-object v8, v15, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->dSerializer:Lorg/mapdb/Serializer;

    if-eqz v8, :cond_11

    iget-object v8, v15, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->dSerializer:Lorg/mapdb/Serializer;

    :goto_f
    invoke-direct/range {v1 .. v8}, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;Ljava/util/Comparator;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;)V

    goto/16 :goto_0

    :cond_b
    sget-object v2, Lorg/mapdb/BTreeMap;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    goto :goto_9

    :cond_c
    sget-object v3, Lorg/mapdb/BTreeMap;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    goto :goto_a

    :cond_d
    sget-object v4, Lorg/mapdb/BTreeMap;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    goto :goto_b

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v5

    goto :goto_c

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v6

    goto :goto_d

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v7

    goto :goto_e

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v8

    goto :goto_f

    .line 947
    .end local v15    # "s":Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer<****>;"
    :cond_12
    move-object/from16 v0, p1

    instance-of v1, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;

    if-eqz v1, :cond_1c

    move-object/from16 v16, p1

    .line 948
    check-cast v16, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;

    .line 950
    .local v16, "s":Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer<*****>;"
    new-instance v1, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;

    move-object/from16 v0, v16

    iget-object v2, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->aComparator:Ljava/util/Comparator;

    if-eqz v2, :cond_13

    move-object/from16 v0, v16

    iget-object v2, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->aComparator:Ljava/util/Comparator;

    :goto_10
    move-object/from16 v0, v16

    iget-object v3, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->bComparator:Ljava/util/Comparator;

    if-eqz v3, :cond_14

    move-object/from16 v0, v16

    iget-object v3, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->bComparator:Ljava/util/Comparator;

    :goto_11
    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->cComparator:Ljava/util/Comparator;

    if-eqz v4, :cond_15

    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->cComparator:Ljava/util/Comparator;

    :goto_12
    move-object/from16 v0, v16

    iget-object v5, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->dComparator:Ljava/util/Comparator;

    if-eqz v5, :cond_16

    move-object/from16 v0, v16

    iget-object v5, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->dComparator:Ljava/util/Comparator;

    :goto_13
    move-object/from16 v0, v16

    iget-object v6, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    if-eqz v6, :cond_17

    move-object/from16 v0, v16

    iget-object v6, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    :goto_14
    move-object/from16 v0, v16

    iget-object v7, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    if-eqz v7, :cond_18

    move-object/from16 v0, v16

    iget-object v7, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    :goto_15
    move-object/from16 v0, v16

    iget-object v8, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    if-eqz v8, :cond_19

    move-object/from16 v0, v16

    iget-object v8, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    :goto_16
    move-object/from16 v0, v16

    iget-object v9, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->dSerializer:Lorg/mapdb/Serializer;

    if-eqz v9, :cond_1a

    move-object/from16 v0, v16

    iget-object v9, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->dSerializer:Lorg/mapdb/Serializer;

    :goto_17
    move-object/from16 v0, v16

    iget-object v10, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->eSerializer:Lorg/mapdb/Serializer;

    if-eqz v10, :cond_1b

    move-object/from16 v0, v16

    iget-object v10, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->eSerializer:Lorg/mapdb/Serializer;

    :goto_18
    invoke-direct/range {v1 .. v10}, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;Ljava/util/Comparator;Ljava/util/Comparator;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;)V

    goto/16 :goto_0

    :cond_13
    sget-object v2, Lorg/mapdb/BTreeMap;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    goto :goto_10

    :cond_14
    sget-object v3, Lorg/mapdb/BTreeMap;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    goto :goto_11

    :cond_15
    sget-object v4, Lorg/mapdb/BTreeMap;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    goto :goto_12

    :cond_16
    sget-object v5, Lorg/mapdb/BTreeMap;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    goto :goto_13

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v6

    goto :goto_14

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v7

    goto :goto_15

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v8

    goto :goto_16

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v9

    goto :goto_17

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v10

    goto :goto_18

    .line 963
    .end local v16    # "s":Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer<*****>;"
    :cond_1c
    move-object/from16 v0, p1

    instance-of v1, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;

    if-eqz v1, :cond_28

    move-object/from16 v17, p1

    .line 964
    check-cast v17, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;

    .line 966
    .local v17, "s":Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer<******>;"
    new-instance v1, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;

    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->aComparator:Ljava/util/Comparator;

    if-eqz v2, :cond_1d

    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->aComparator:Ljava/util/Comparator;

    :goto_19
    move-object/from16 v0, v17

    iget-object v3, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->bComparator:Ljava/util/Comparator;

    if-eqz v3, :cond_1e

    move-object/from16 v0, v17

    iget-object v3, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->bComparator:Ljava/util/Comparator;

    :goto_1a
    move-object/from16 v0, v17

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->cComparator:Ljava/util/Comparator;

    if-eqz v4, :cond_1f

    move-object/from16 v0, v17

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->cComparator:Ljava/util/Comparator;

    :goto_1b
    move-object/from16 v0, v17

    iget-object v5, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->dComparator:Ljava/util/Comparator;

    if-eqz v5, :cond_20

    move-object/from16 v0, v17

    iget-object v5, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->dComparator:Ljava/util/Comparator;

    :goto_1c
    move-object/from16 v0, v17

    iget-object v6, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->eComparator:Ljava/util/Comparator;

    if-eqz v6, :cond_21

    move-object/from16 v0, v17

    iget-object v6, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->eComparator:Ljava/util/Comparator;

    :goto_1d
    move-object/from16 v0, v17

    iget-object v7, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    if-eqz v7, :cond_22

    move-object/from16 v0, v17

    iget-object v7, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    :goto_1e
    move-object/from16 v0, v17

    iget-object v8, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    if-eqz v8, :cond_23

    move-object/from16 v0, v17

    iget-object v8, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    :goto_1f
    move-object/from16 v0, v17

    iget-object v9, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    if-eqz v9, :cond_24

    move-object/from16 v0, v17

    iget-object v9, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    :goto_20
    move-object/from16 v0, v17

    iget-object v10, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->dSerializer:Lorg/mapdb/Serializer;

    if-eqz v10, :cond_25

    move-object/from16 v0, v17

    iget-object v10, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->dSerializer:Lorg/mapdb/Serializer;

    :goto_21
    move-object/from16 v0, v17

    iget-object v11, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->eSerializer:Lorg/mapdb/Serializer;

    if-eqz v11, :cond_26

    move-object/from16 v0, v17

    iget-object v11, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->eSerializer:Lorg/mapdb/Serializer;

    :goto_22
    move-object/from16 v0, v17

    iget-object v12, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->fSerializer:Lorg/mapdb/Serializer;

    if-eqz v12, :cond_27

    move-object/from16 v0, v17

    iget-object v12, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->fSerializer:Lorg/mapdb/Serializer;

    :goto_23
    invoke-direct/range {v1 .. v12}, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;Ljava/util/Comparator;Ljava/util/Comparator;Ljava/util/Comparator;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;)V

    goto/16 :goto_0

    :cond_1d
    sget-object v2, Lorg/mapdb/BTreeMap;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    goto :goto_19

    :cond_1e
    sget-object v3, Lorg/mapdb/BTreeMap;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    goto :goto_1a

    :cond_1f
    sget-object v4, Lorg/mapdb/BTreeMap;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    goto :goto_1b

    :cond_20
    sget-object v5, Lorg/mapdb/BTreeMap;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    goto :goto_1c

    :cond_21
    sget-object v6, Lorg/mapdb/BTreeMap;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    goto :goto_1d

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v7

    goto :goto_1e

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v8

    goto :goto_1f

    :cond_24
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v9

    goto :goto_20

    :cond_25
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v10

    goto :goto_21

    :cond_26
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v11

    goto :goto_22

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v12

    goto :goto_23

    .end local v17    # "s":Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer<******>;"
    :cond_28
    move-object/from16 v1, p1

    .line 981
    goto/16 :goto_0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 1467
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1468
    .local v0, "type":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1480
    :goto_0
    monitor-exit p0

    return-object v1

    .line 1469
    :cond_0
    :try_start_1
    const-string v1, "HashMap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/mapdb/DB;->getHashMap(Ljava/lang/String;)Lorg/mapdb/HTreeMap;

    move-result-object v1

    goto :goto_0

    .line 1470
    :cond_1
    const-string v1, "HashSet"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lorg/mapdb/DB;->getHashSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    .line 1471
    :cond_2
    const-string v1, "TreeMap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lorg/mapdb/DB;->getTreeMap(Ljava/lang/String;)Lorg/mapdb/BTreeMap;

    move-result-object v1

    goto :goto_0

    .line 1472
    :cond_3
    const-string v1, "TreeSet"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1}, Lorg/mapdb/DB;->getTreeSet(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object v1

    goto :goto_0

    .line 1473
    :cond_4
    const-string v1, "AtomicBoolean"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1}, Lorg/mapdb/DB;->getAtomicBoolean(Ljava/lang/String;)Lorg/mapdb/Atomic$Boolean;

    move-result-object v1

    goto :goto_0

    .line 1474
    :cond_5
    const-string v1, "AtomicInteger"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, p1}, Lorg/mapdb/DB;->getAtomicInteger(Ljava/lang/String;)Lorg/mapdb/Atomic$Integer;

    move-result-object v1

    goto :goto_0

    .line 1475
    :cond_6
    const-string v1, "AtomicLong"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Lorg/mapdb/DB;->getAtomicLong(Ljava/lang/String;)Lorg/mapdb/Atomic$Long;

    move-result-object v1

    goto :goto_0

    .line 1476
    :cond_7
    const-string v1, "AtomicString"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0, p1}, Lorg/mapdb/DB;->getAtomicString(Ljava/lang/String;)Lorg/mapdb/Atomic$String;

    move-result-object v1

    goto :goto_0

    .line 1477
    :cond_8
    const-string v1, "AtomicVar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, p1}, Lorg/mapdb/DB;->getAtomicVar(Ljava/lang/String;)Lorg/mapdb/Atomic$Var;

    move-result-object v1

    goto :goto_0

    .line 1478
    :cond_9
    const-string v1, "Queue"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0, p1}, Lorg/mapdb/DB;->getQueue(Ljava/lang/String;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    goto/16 :goto_0

    .line 1479
    :cond_a
    const-string v1, "Stack"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0, p1}, Lorg/mapdb/DB;->getStack(Ljava/lang/String;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    goto/16 :goto_0

    .line 1480
    :cond_b
    const-string v1, "CircularQueue"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0, p1}, Lorg/mapdb/DB;->getCircularQueue(Ljava/lang/String;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    goto/16 :goto_0

    .line 1481
    :cond_c
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1467
    .end local v0    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getAll()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1540
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 1542
    .local v2, "ret":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lorg/mapdb/DB;->catalog:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1543
    .local v1, "name":Ljava/lang/String;
    const-string v3, ".type"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1544
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1545
    invoke-virtual {p0, v1}, Lorg/mapdb/DB;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1540
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "ret":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1548
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "ret":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    :try_start_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    monitor-exit p0

    return-object v3
.end method

.method public declared-synchronized getAtomicBoolean(Ljava/lang/String;)Lorg/mapdb/Atomic$Boolean;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1356
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/mapdb/DB;->checkNotClosed()V

    .line 1357
    invoke-virtual {p0, p1}, Lorg/mapdb/DB;->getFromWeakCollection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapdb/Atomic$Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1358
    .local v1, "ret":Lorg/mapdb/Atomic$Boolean;
    if-eqz v1, :cond_0

    move-object v3, v1

    .line 1374
    :goto_0
    monitor-exit p0

    return-object v3

    .line 1359
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1360
    .local v2, "type":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 1361
    invoke-virtual {p0, p1}, Lorg/mapdb/DB;->checkShouldCreate(Ljava/lang/String;)V

    .line 1362
    iget-object v3, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    invoke-interface {v3}, Lorg/mapdb/Engine;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1363
    new-instance v0, Lorg/mapdb/StoreHeap;

    invoke-direct {v0}, Lorg/mapdb/StoreHeap;-><init>()V

    .line 1364
    .local v0, "e":Lorg/mapdb/Engine;
    new-instance v3, Lorg/mapdb/DB;

    invoke-direct {v3, v0}, Lorg/mapdb/DB;-><init>(Lorg/mapdb/Engine;)V

    const-string v4, "a"

    invoke-virtual {v3, v4}, Lorg/mapdb/DB;->getAtomicBoolean(Ljava/lang/String;)Lorg/mapdb/Atomic$Boolean;

    .line 1365
    new-instance v3, Lorg/mapdb/DB;

    new-instance v4, Lorg/mapdb/EngineWrapper$ReadOnlyEngine;

    invoke-direct {v4, v0}, Lorg/mapdb/EngineWrapper$ReadOnlyEngine;-><init>(Lorg/mapdb/Engine;)V

    invoke-direct {v3, v4}, Lorg/mapdb/DB;-><init>(Lorg/mapdb/Engine;)V

    const-string v4, "a"

    invoke-virtual {v3, v4}, Lorg/mapdb/DB;->getAtomicBoolean(Ljava/lang/String;)Lorg/mapdb/Atomic$Boolean;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mapdb/Atomic$Boolean;

    goto :goto_0

    .line 1368
    .end local v0    # "e":Lorg/mapdb/Engine;
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lorg/mapdb/DB;->createAtomicBoolean(Ljava/lang/String;Z)Lorg/mapdb/Atomic$Boolean;

    move-result-object v3

    goto :goto_0

    .line 1370
    :cond_2
    const-string v3, "AtomicBoolean"

    invoke-virtual {p0, v2, v3}, Lorg/mapdb/DB;->checkType(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    new-instance v1, Lorg/mapdb/Atomic$Boolean;

    .end local v1    # "ret":Lorg/mapdb/Atomic$Boolean;
    iget-object v4, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".recid"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v1, v4, v6, v7}, Lorg/mapdb/Atomic$Boolean;-><init>(Lorg/mapdb/Engine;J)V

    .line 1373
    .restart local v1    # "ret":Lorg/mapdb/Atomic$Boolean;
    invoke-virtual {p0, p1, v1}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v1

    .line 1374
    goto/16 :goto_0

    .line 1356
    .end local v1    # "ret":Lorg/mapdb/Atomic$Boolean;
    .end local v2    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getAtomicInteger(Ljava/lang/String;)Lorg/mapdb/Atomic$Integer;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1319
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/mapdb/DB;->checkNotClosed()V

    .line 1320
    invoke-virtual {p0, p1}, Lorg/mapdb/DB;->getFromWeakCollection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapdb/Atomic$Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1321
    .local v1, "ret":Lorg/mapdb/Atomic$Integer;
    if-eqz v1, :cond_0

    move-object v3, v1

    .line 1337
    :goto_0
    monitor-exit p0

    return-object v3

    .line 1322
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1323
    .local v2, "type":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 1324
    invoke-virtual {p0, p1}, Lorg/mapdb/DB;->checkShouldCreate(Ljava/lang/String;)V

    .line 1325
    iget-object v3, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    invoke-interface {v3}, Lorg/mapdb/Engine;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1326
    new-instance v0, Lorg/mapdb/StoreHeap;

    invoke-direct {v0}, Lorg/mapdb/StoreHeap;-><init>()V

    .line 1327
    .local v0, "e":Lorg/mapdb/Engine;
    new-instance v3, Lorg/mapdb/DB;

    invoke-direct {v3, v0}, Lorg/mapdb/DB;-><init>(Lorg/mapdb/Engine;)V

    const-string v4, "a"

    invoke-virtual {v3, v4}, Lorg/mapdb/DB;->getAtomicInteger(Ljava/lang/String;)Lorg/mapdb/Atomic$Integer;

    .line 1328
    new-instance v3, Lorg/mapdb/DB;

    new-instance v4, Lorg/mapdb/EngineWrapper$ReadOnlyEngine;

    invoke-direct {v4, v0}, Lorg/mapdb/EngineWrapper$ReadOnlyEngine;-><init>(Lorg/mapdb/Engine;)V

    invoke-direct {v3, v4}, Lorg/mapdb/DB;-><init>(Lorg/mapdb/Engine;)V

    const-string v4, "a"

    invoke-virtual {v3, v4}, Lorg/mapdb/DB;->getAtomicInteger(Ljava/lang/String;)Lorg/mapdb/Atomic$Integer;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mapdb/Atomic$Integer;

    goto :goto_0

    .line 1331
    .end local v0    # "e":Lorg/mapdb/Engine;
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lorg/mapdb/DB;->createAtomicInteger(Ljava/lang/String;I)Lorg/mapdb/Atomic$Integer;

    move-result-object v3

    goto :goto_0

    .line 1333
    :cond_2
    const-string v3, "AtomicInteger"

    invoke-virtual {p0, v2, v3}, Lorg/mapdb/DB;->checkType(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    new-instance v1, Lorg/mapdb/Atomic$Integer;

    .end local v1    # "ret":Lorg/mapdb/Atomic$Integer;
    iget-object v4, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".recid"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v1, v4, v6, v7}, Lorg/mapdb/Atomic$Integer;-><init>(Lorg/mapdb/Engine;J)V

    .line 1336
    .restart local v1    # "ret":Lorg/mapdb/Atomic$Integer;
    invoke-virtual {p0, p1, v1}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v1

    .line 1337
    goto/16 :goto_0

    .line 1319
    .end local v1    # "ret":Lorg/mapdb/Atomic$Integer;
    .end local v2    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getAtomicLong(Ljava/lang/String;)Lorg/mapdb/Atomic$Long;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1282
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/mapdb/DB;->checkNotClosed()V

    .line 1283
    invoke-virtual {p0, p1}, Lorg/mapdb/DB;->getFromWeakCollection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapdb/Atomic$Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1284
    .local v1, "ret":Lorg/mapdb/Atomic$Long;
    if-eqz v1, :cond_0

    move-object v3, v1

    .line 1300
    :goto_0
    monitor-exit p0

    return-object v3

    .line 1285
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1286
    .local v2, "type":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 1287
    invoke-virtual {p0, p1}, Lorg/mapdb/DB;->checkShouldCreate(Ljava/lang/String;)V

    .line 1288
    iget-object v3, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    invoke-interface {v3}, Lorg/mapdb/Engine;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1289
    new-instance v0, Lorg/mapdb/StoreHeap;

    invoke-direct {v0}, Lorg/mapdb/StoreHeap;-><init>()V

    .line 1290
    .local v0, "e":Lorg/mapdb/Engine;
    new-instance v3, Lorg/mapdb/DB;

    invoke-direct {v3, v0}, Lorg/mapdb/DB;-><init>(Lorg/mapdb/Engine;)V

    const-string v4, "a"

    invoke-virtual {v3, v4}, Lorg/mapdb/DB;->getAtomicLong(Ljava/lang/String;)Lorg/mapdb/Atomic$Long;

    .line 1291
    new-instance v3, Lorg/mapdb/DB;

    new-instance v4, Lorg/mapdb/EngineWrapper$ReadOnlyEngine;

    invoke-direct {v4, v0}, Lorg/mapdb/EngineWrapper$ReadOnlyEngine;-><init>(Lorg/mapdb/Engine;)V

    invoke-direct {v3, v4}, Lorg/mapdb/DB;-><init>(Lorg/mapdb/Engine;)V

    const-string v4, "a"

    invoke-virtual {v3, v4}, Lorg/mapdb/DB;->getAtomicLong(Ljava/lang/String;)Lorg/mapdb/Atomic$Long;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mapdb/Atomic$Long;

    goto :goto_0

    .line 1294
    .end local v0    # "e":Lorg/mapdb/Engine;
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {p0, p1, v4, v5}, Lorg/mapdb/DB;->createAtomicLong(Ljava/lang/String;J)Lorg/mapdb/Atomic$Long;

    move-result-object v3

    goto :goto_0

    .line 1296
    :cond_2
    const-string v3, "AtomicLong"

    invoke-virtual {p0, v2, v3}, Lorg/mapdb/DB;->checkType(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    new-instance v1, Lorg/mapdb/Atomic$Long;

    .end local v1    # "ret":Lorg/mapdb/Atomic$Long;
    iget-object v4, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".recid"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v1, v4, v6, v7}, Lorg/mapdb/Atomic$Long;-><init>(Lorg/mapdb/Engine;J)V

    .line 1299
    .restart local v1    # "ret":Lorg/mapdb/Atomic$Long;
    invoke-virtual {p0, p1, v1}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v1

    .line 1300
    goto/16 :goto_0

    .line 1282
    .end local v1    # "ret":Lorg/mapdb/Atomic$Long;
    .end local v2    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getAtomicString(Ljava/lang/String;)Lorg/mapdb/Atomic$String;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1397
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/mapdb/DB;->checkNotClosed()V

    .line 1398
    invoke-virtual {p0, p1}, Lorg/mapdb/DB;->getFromWeakCollection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapdb/Atomic$String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1399
    .local v1, "ret":Lorg/mapdb/Atomic$String;
    if-eqz v1, :cond_0

    move-object v3, v1

    .line 1415
    :goto_0
    monitor-exit p0

    return-object v3

    .line 1400
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1401
    .local v2, "type":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 1402
    invoke-virtual {p0, p1}, Lorg/mapdb/DB;->checkShouldCreate(Ljava/lang/String;)V

    .line 1403
    iget-object v3, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    invoke-interface {v3}, Lorg/mapdb/Engine;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1404
    new-instance v0, Lorg/mapdb/StoreHeap;

    invoke-direct {v0}, Lorg/mapdb/StoreHeap;-><init>()V

    .line 1405
    .local v0, "e":Lorg/mapdb/Engine;
    new-instance v3, Lorg/mapdb/DB;

    invoke-direct {v3, v0}, Lorg/mapdb/DB;-><init>(Lorg/mapdb/Engine;)V

    const-string v4, "a"

    invoke-virtual {v3, v4}, Lorg/mapdb/DB;->getAtomicString(Ljava/lang/String;)Lorg/mapdb/Atomic$String;

    .line 1406
    new-instance v3, Lorg/mapdb/DB;

    new-instance v4, Lorg/mapdb/EngineWrapper$ReadOnlyEngine;

    invoke-direct {v4, v0}, Lorg/mapdb/EngineWrapper$ReadOnlyEngine;-><init>(Lorg/mapdb/Engine;)V

    invoke-direct {v3, v4}, Lorg/mapdb/DB;-><init>(Lorg/mapdb/Engine;)V

    const-string v4, "a"

    invoke-virtual {v3, v4}, Lorg/mapdb/DB;->getAtomicString(Ljava/lang/String;)Lorg/mapdb/Atomic$String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mapdb/Atomic$String;

    goto :goto_0

    .line 1409
    .end local v0    # "e":Lorg/mapdb/Engine;
    :cond_1
    const-string v3, ""

    invoke-virtual {p0, p1, v3}, Lorg/mapdb/DB;->createAtomicString(Ljava/lang/String;Ljava/lang/String;)Lorg/mapdb/Atomic$String;

    move-result-object v3

    goto :goto_0

    .line 1411
    :cond_2
    const-string v3, "AtomicString"

    invoke-virtual {p0, v2, v3}, Lorg/mapdb/DB;->checkType(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    new-instance v1, Lorg/mapdb/Atomic$String;

    .end local v1    # "ret":Lorg/mapdb/Atomic$String;
    iget-object v4, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".recid"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v1, v4, v6, v7}, Lorg/mapdb/Atomic$String;-><init>(Lorg/mapdb/Engine;J)V

    .line 1414
    .restart local v1    # "ret":Lorg/mapdb/Atomic$String;
    invoke-virtual {p0, p1, v1}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v1

    .line 1415
    goto/16 :goto_0

    .line 1397
    .end local v1    # "ret":Lorg/mapdb/Atomic$String;
    .end local v2    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getAtomicVar(Ljava/lang/String;)Lorg/mapdb/Atomic$Var;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/mapdb/Atomic$Var",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1444
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/mapdb/DB;->checkNotClosed()V

    .line 1445
    invoke-virtual {p0, p1}, Lorg/mapdb/DB;->getFromWeakCollection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapdb/Atomic$Var;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1446
    .local v1, "ret":Lorg/mapdb/Atomic$Var;
    if-eqz v1, :cond_0

    move-object v3, v1

    .line 1462
    :goto_0
    monitor-exit p0

    return-object v3

    .line 1447
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1448
    .local v2, "type":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 1449
    invoke-virtual {p0, p1}, Lorg/mapdb/DB;->checkShouldCreate(Ljava/lang/String;)V

    .line 1450
    iget-object v3, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    invoke-interface {v3}, Lorg/mapdb/Engine;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1451
    new-instance v0, Lorg/mapdb/StoreHeap;

    invoke-direct {v0}, Lorg/mapdb/StoreHeap;-><init>()V

    .line 1452
    .local v0, "e":Lorg/mapdb/Engine;
    new-instance v3, Lorg/mapdb/DB;

    invoke-direct {v3, v0}, Lorg/mapdb/DB;-><init>(Lorg/mapdb/Engine;)V

    const-string v4, "a"

    invoke-virtual {v3, v4}, Lorg/mapdb/DB;->getAtomicVar(Ljava/lang/String;)Lorg/mapdb/Atomic$Var;

    .line 1453
    new-instance v3, Lorg/mapdb/DB;

    new-instance v4, Lorg/mapdb/EngineWrapper$ReadOnlyEngine;

    invoke-direct {v4, v0}, Lorg/mapdb/EngineWrapper$ReadOnlyEngine;-><init>(Lorg/mapdb/Engine;)V

    invoke-direct {v3, v4}, Lorg/mapdb/DB;-><init>(Lorg/mapdb/Engine;)V

    const-string v4, "a"

    invoke-virtual {v3, v4}, Lorg/mapdb/DB;->getAtomicVar(Ljava/lang/String;)Lorg/mapdb/Atomic$Var;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mapdb/Atomic$Var;

    goto :goto_0

    .line 1456
    .end local v0    # "e":Lorg/mapdb/Engine;
    :cond_1
    const-string v3, ""

    invoke-virtual {p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v4

    invoke-virtual {p0, p1, v3, v4}, Lorg/mapdb/DB;->createAtomicVar(Ljava/lang/String;Ljava/lang/Object;Lorg/mapdb/Serializer;)Lorg/mapdb/Atomic$Var;

    move-result-object v3

    goto :goto_0

    .line 1458
    :cond_2
    const-string v3, "AtomicVar"

    invoke-virtual {p0, v2, v3}, Lorg/mapdb/DB;->checkType(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    new-instance v1, Lorg/mapdb/Atomic$Var;

    .end local v1    # "ret":Lorg/mapdb/Atomic$Var;
    iget-object v4, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".recid"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".serializer"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mapdb/Serializer;

    invoke-direct {v1, v4, v6, v7, v3}, Lorg/mapdb/Atomic$Var;-><init>(Lorg/mapdb/Engine;JLorg/mapdb/Serializer;)V

    .line 1461
    .restart local v1    # "ret":Lorg/mapdb/Atomic$Var;
    invoke-virtual {p0, p1, v1}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v1

    .line 1462
    goto/16 :goto_0

    .line 1444
    .end local v1    # "ret":Lorg/mapdb/Atomic$Var;
    .end local v2    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getCatalog()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 995
    iget-object v0, p0, Lorg/mapdb/DB;->catalog:Ljava/util/SortedMap;

    return-object v0
.end method

.method public declared-synchronized getCircularQueue(Ljava/lang/String;)Ljava/util/concurrent/BlockingQueue;
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/BlockingQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1203
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/mapdb/DB;->checkNotClosed()V

    .line 1204
    invoke-virtual {p0, p1}, Lorg/mapdb/DB;->getFromWeakCollection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/BlockingQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1205
    .local v1, "ret":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<TE;>;"
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 1228
    :goto_0
    monitor-exit p0

    return-object v2

    .line 1206
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1207
    .local v10, "type":Ljava/lang/String;
    if-nez v10, :cond_2

    .line 1208
    invoke-virtual {p0, p1}, Lorg/mapdb/DB;->checkShouldCreate(Ljava/lang/String;)V

    .line 1209
    iget-object v2, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    invoke-interface {v2}, Lorg/mapdb/Engine;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1210
    new-instance v0, Lorg/mapdb/StoreHeap;

    invoke-direct {v0}, Lorg/mapdb/StoreHeap;-><init>()V

    .line 1211
    .local v0, "e":Lorg/mapdb/Engine;
    new-instance v2, Lorg/mapdb/DB;

    invoke-direct {v2, v0}, Lorg/mapdb/DB;-><init>(Lorg/mapdb/Engine;)V

    const-string v3, "a"

    invoke-virtual {v2, v3}, Lorg/mapdb/DB;->getCircularQueue(Ljava/lang/String;)Ljava/util/concurrent/BlockingQueue;

    .line 1212
    new-instance v2, Lorg/mapdb/DB;

    new-instance v3, Lorg/mapdb/EngineWrapper$ReadOnlyEngine;

    invoke-direct {v3, v0}, Lorg/mapdb/EngineWrapper$ReadOnlyEngine;-><init>(Lorg/mapdb/Engine;)V

    invoke-direct {v2, v3}, Lorg/mapdb/DB;-><init>(Lorg/mapdb/Engine;)V

    const-string v3, "a"

    invoke-virtual {v2, v3}, Lorg/mapdb/DB;->getCircularQueue(Ljava/lang/String;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/BlockingQueue;

    goto :goto_0

    .line 1215
    .end local v0    # "e":Lorg/mapdb/Engine;
    :cond_1
    const/4 v2, 0x0

    const-wide/16 v4, 0x400

    invoke-virtual {p0, p1, v2, v4, v5}, Lorg/mapdb/DB;->createCircularQueue(Ljava/lang/String;Lorg/mapdb/Serializer;J)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    goto :goto_0

    .line 1218
    :cond_2
    const-string v2, "CircularQueue"

    invoke-virtual {p0, v10, v2}, Lorg/mapdb/DB;->checkType(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    new-instance v1, Lorg/mapdb/Queues$CircularQueue;

    .end local v1    # "ret":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<TE;>;"
    iget-object v2, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".serializer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mapdb/Serializer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".headRecid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".headInsertRecid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".size"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct/range {v1 .. v9}, Lorg/mapdb/Queues$CircularQueue;-><init>(Lorg/mapdb/Engine;Lorg/mapdb/Serializer;JJJ)V

    .line 1227
    .restart local v1    # "ret":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<TE;>;"
    invoke-virtual {p0, p1, v1}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    .line 1228
    goto/16 :goto_0

    .line 1203
    .end local v1    # "ret":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<TE;>;"
    .end local v10    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getDefaultSerializer()Lorg/mapdb/Serializer;
    .locals 1

    .prologue
    .line 1684
    iget-object v0, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    invoke-interface {v0}, Lorg/mapdb/Engine;->getSerializerPojo()Lorg/mapdb/SerializerPojo;

    move-result-object v0

    return-object v0
.end method

.method public getEngine()Lorg/mapdb/Engine;
    .locals 1

    .prologue
    .line 1691
    iget-object v0, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    return-object v0
.end method

.method public getFromWeakCollection(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1616
    iget-object v2, p0, Lorg/mapdb/DB;->namesInstanciated:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1617
    .local v1, "r":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<*>;"
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 1620
    :cond_0
    :goto_0
    return-object v0

    .line 1618
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 1619
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/mapdb/DB;->namesInstanciated:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public declared-synchronized getHashMap(Ljava/lang/String;)Lorg/mapdb/HTreeMap;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/mapdb/HTreeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 329
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/mapdb/DB;->getHashMap(Ljava/lang/String;Lorg/mapdb/Fun$Function1;)Lorg/mapdb/HTreeMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHashMap(Ljava/lang/String;Lorg/mapdb/Fun$Function1;)Lorg/mapdb/HTreeMap;
    .locals 29
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/mapdb/Fun$Function1",
            "<TV;TK;>;)",
            "Lorg/mapdb/HTreeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 342
    .local p2, "valueCreator":Lorg/mapdb/Fun$Function1;, "Lorg/mapdb/Fun$Function1<TV;TK;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->checkNotClosed()V

    .line 343
    invoke-virtual/range {p0 .. p1}, Lorg/mapdb/DB;->getFromWeakCollection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mapdb/HTreeMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    .local v4, "ret":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    if-eqz v4, :cond_0

    move-object v5, v4

    .line 382
    :goto_0
    monitor-exit p0

    return-object v5

    .line 345
    :cond_0
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 346
    .local v28, "type":Ljava/lang/String;
    if-nez v28, :cond_3

    .line 347
    invoke-virtual/range {p0 .. p1}, Lorg/mapdb/DB;->checkShouldCreate(Ljava/lang/String;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    invoke-interface {v5}, Lorg/mapdb/Engine;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 349
    new-instance v27, Lorg/mapdb/StoreHeap;

    invoke-direct/range {v27 .. v27}, Lorg/mapdb/StoreHeap;-><init>()V

    .line 350
    .local v27, "e":Lorg/mapdb/Engine;
    new-instance v5, Lorg/mapdb/DB;

    move-object/from16 v0, v27

    invoke-direct {v5, v0}, Lorg/mapdb/DB;-><init>(Lorg/mapdb/Engine;)V

    const-string v6, "a"

    invoke-virtual {v5, v6}, Lorg/mapdb/DB;->getHashMap(Ljava/lang/String;)Lorg/mapdb/HTreeMap;

    .line 351
    new-instance v5, Lorg/mapdb/DB;

    new-instance v6, Lorg/mapdb/EngineWrapper$ReadOnlyEngine;

    move-object/from16 v0, v27

    invoke-direct {v6, v0}, Lorg/mapdb/EngineWrapper$ReadOnlyEngine;-><init>(Lorg/mapdb/Engine;)V

    invoke-direct {v5, v6}, Lorg/mapdb/DB;-><init>(Lorg/mapdb/Engine;)V

    const-string v6, "a"

    invoke-virtual {v5, v6}, Lorg/mapdb/DB;->getHashMap(Ljava/lang/String;)Lorg/mapdb/HTreeMap;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapdb/HTreeMap;

    goto :goto_0

    .line 354
    .end local v27    # "e":Lorg/mapdb/Engine;
    :cond_1
    if-eqz p2, :cond_2

    .line 355
    invoke-virtual/range {p0 .. p1}, Lorg/mapdb/DB;->createHashMap(Ljava/lang/String;)Lorg/mapdb/DB$HTreeMapMaker;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lorg/mapdb/DB$HTreeMapMaker;->valueCreator(Lorg/mapdb/Fun$Function1;)Lorg/mapdb/DB$HTreeMapMaker;

    move-result-object v5

    invoke-virtual {v5}, Lorg/mapdb/DB$HTreeMapMaker;->make()Lorg/mapdb/HTreeMap;

    move-result-object v5

    goto :goto_0

    .line 356
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lorg/mapdb/DB;->createHashMap(Ljava/lang/String;)Lorg/mapdb/DB$HTreeMapMaker;

    move-result-object v5

    invoke-virtual {v5}, Lorg/mapdb/DB$HTreeMapMaker;->make()Lorg/mapdb/HTreeMap;

    move-result-object v5

    goto :goto_0

    .line 361
    :cond_3
    const-string v5, "HashMap"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v5}, Lorg/mapdb/DB;->checkType(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    new-instance v4, Lorg/mapdb/HTreeMap;

    .end local v4    # "ret":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".counterRecid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".hashSalt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".segmentRecids"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [J

    check-cast v9, [J

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".keySerializer"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapdb/Serializer;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".valueSerializer"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/mapdb/Serializer;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".expireTimeStart"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".expire"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".expireAccess"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-wide/16 v18, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".expireMaxSize"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-wide/16 v20, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".expireStoreSize"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ".expireHeads"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [J

    check-cast v22, [J

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ".expireTails"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [J

    check-cast v23, [J

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".hasher"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    sget-object v25, Lorg/mapdb/Hasher;->BASIC:Lorg/mapdb/Hasher;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/mapdb/Hasher;

    const/16 v26, 0x0

    move-object/from16 v24, p2

    invoke-direct/range {v4 .. v26}, Lorg/mapdb/HTreeMap;-><init>(Lorg/mapdb/Engine;JI[JLorg/mapdb/Serializer;Lorg/mapdb/Serializer;JJJJJ[J[JLorg/mapdb/Fun$Function1;Lorg/mapdb/Hasher;Z)V

    .line 381
    .restart local v4    # "ret":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v4

    .line 382
    goto/16 :goto_0

    .line 342
    .end local v4    # "ret":Lorg/mapdb/HTreeMap;, "Lorg/mapdb/HTreeMap<TK;TV;>;"
    .end local v28    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getHashSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 30
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 466
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->checkNotClosed()V

    .line 467
    invoke-virtual/range {p0 .. p1}, Lorg/mapdb/DB;->getFromWeakCollection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    .local v28, "ret":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-eqz v28, :cond_0

    move-object/from16 v4, v28

    .line 504
    :goto_0
    monitor-exit p0

    return-object v4

    .line 469
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 470
    .local v29, "type":Ljava/lang/String;
    if-nez v29, :cond_2

    .line 471
    invoke-virtual/range {p0 .. p1}, Lorg/mapdb/DB;->checkShouldCreate(Ljava/lang/String;)V

    .line 472
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    invoke-interface {v4}, Lorg/mapdb/Engine;->isReadOnly()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 473
    new-instance v27, Lorg/mapdb/StoreHeap;

    invoke-direct/range {v27 .. v27}, Lorg/mapdb/StoreHeap;-><init>()V

    .line 474
    .local v27, "e":Lorg/mapdb/Engine;
    new-instance v4, Lorg/mapdb/DB;

    move-object/from16 v0, v27

    invoke-direct {v4, v0}, Lorg/mapdb/DB;-><init>(Lorg/mapdb/Engine;)V

    const-string v5, "a"

    invoke-virtual {v4, v5}, Lorg/mapdb/DB;->getHashSet(Ljava/lang/String;)Ljava/util/Set;

    .line 475
    new-instance v4, Lorg/mapdb/DB;

    new-instance v5, Lorg/mapdb/EngineWrapper$ReadOnlyEngine;

    move-object/from16 v0, v27

    invoke-direct {v5, v0}, Lorg/mapdb/EngineWrapper$ReadOnlyEngine;-><init>(Lorg/mapdb/Engine;)V

    invoke-direct {v4, v5}, Lorg/mapdb/DB;-><init>(Lorg/mapdb/Engine;)V

    const-string v5, "a"

    invoke-virtual {v4, v5}, Lorg/mapdb/DB;->getHashSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    goto :goto_0

    .line 478
    .end local v27    # "e":Lorg/mapdb/Engine;
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lorg/mapdb/DB;->createHashSet(Ljava/lang/String;)Lorg/mapdb/DB$HTreeSetMaker;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mapdb/DB$HTreeSetMaker;->makeOrGet()Ljava/util/Set;

    move-result-object v4

    goto :goto_0

    .line 483
    :cond_2
    const-string v4, "HashSet"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v4}, Lorg/mapdb/DB;->checkType(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    new-instance v4, Lorg/mapdb/HTreeMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".counterRecid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".hashSalt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".segmentRecids"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [J

    check-cast v9, [J

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".serializer"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapdb/Serializer;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".expireTimeStart"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".expire"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".expireAccess"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-wide/16 v18, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".expireMaxSize"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-wide/16 v20, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".expireStoreSize"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ".expireHeads"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [J

    check-cast v22, [J

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ".expireTails"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [J

    check-cast v23, [J

    const/16 v24, 0x0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ".hasher"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sget-object v26, Lorg/mapdb/Hasher;->BASIC:Lorg/mapdb/Hasher;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/mapdb/Hasher;

    const/16 v26, 0x0

    invoke-direct/range {v4 .. v26}, Lorg/mapdb/HTreeMap;-><init>(Lorg/mapdb/Engine;JI[JLorg/mapdb/Serializer;Lorg/mapdb/Serializer;JJJJJ[J[JLorg/mapdb/Fun$Function1;Lorg/mapdb/Hasher;Z)V

    invoke-virtual {v4}, Lorg/mapdb/HTreeMap;->keySet()Ljava/util/Set;

    move-result-object v28

    .line 503
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v4, v28

    .line 504
    goto/16 :goto_0

    .line 466
    .end local v28    # "ret":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    .end local v29    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getNameForObject(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/mapdb/DB;->namesLookup:Ljava/util/Map;

    new-instance v1, Lorg/mapdb/DB$IdentityWrapper;

    invoke-direct {v1, p1}, Lorg/mapdb/DB$IdentityWrapper;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getQueue(Ljava/lang/String;)Ljava/util/concurrent/BlockingQueue;
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/BlockingQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1104
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/mapdb/DB;->checkNotClosed()V

    .line 1105
    invoke-virtual {p0, p1}, Lorg/mapdb/DB;->getFromWeakCollection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapdb/Queues$Queue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    .local v1, "ret":Lorg/mapdb/Queues$Queue;, "Lorg/mapdb/Queues$Queue<TE;>;"
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 1128
    :goto_0
    monitor-exit p0

    return-object v2

    .line 1107
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1108
    .local v9, "type":Ljava/lang/String;
    if-nez v9, :cond_2

    .line 1109
    invoke-virtual {p0, p1}, Lorg/mapdb/DB;->checkShouldCreate(Ljava/lang/String;)V

    .line 1110
    iget-object v2, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    invoke-interface {v2}, Lorg/mapdb/Engine;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1111
    new-instance v0, Lorg/mapdb/StoreHeap;

    invoke-direct {v0}, Lorg/mapdb/StoreHeap;-><init>()V

    .line 1112
    .local v0, "e":Lorg/mapdb/Engine;
    new-instance v2, Lorg/mapdb/DB;

    invoke-direct {v2, v0}, Lorg/mapdb/DB;-><init>(Lorg/mapdb/Engine;)V

    const-string v3, "a"

    invoke-virtual {v2, v3}, Lorg/mapdb/DB;->getQueue(Ljava/lang/String;)Ljava/util/concurrent/BlockingQueue;

    .line 1113
    new-instance v2, Lorg/mapdb/DB;

    new-instance v3, Lorg/mapdb/EngineWrapper$ReadOnlyEngine;

    invoke-direct {v3, v0}, Lorg/mapdb/EngineWrapper$ReadOnlyEngine;-><init>(Lorg/mapdb/Engine;)V

    invoke-direct {v2, v3}, Lorg/mapdb/DB;-><init>(Lorg/mapdb/Engine;)V

    const-string v3, "a"

    invoke-virtual {v2, v3}, Lorg/mapdb/DB;->getQueue(Ljava/lang/String;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/BlockingQueue;

    goto :goto_0

    .line 1116
    .end local v0    # "e":Lorg/mapdb/Engine;
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v2, v3}, Lorg/mapdb/DB;->createQueue(Ljava/lang/String;Lorg/mapdb/Serializer;Z)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    goto :goto_0

    .line 1118
    :cond_2
    const-string v2, "Queue"

    invoke-virtual {p0, v9, v2}, Lorg/mapdb/DB;->checkType(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    new-instance v1, Lorg/mapdb/Queues$Queue;

    .end local v1    # "ret":Lorg/mapdb/Queues$Queue;, "Lorg/mapdb/Queues$Queue<TE;>;"
    iget-object v2, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".serializer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mapdb/Serializer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".headRecid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".tailRecid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ".useLocks"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-direct/range {v1 .. v8}, Lorg/mapdb/Queues$Queue;-><init>(Lorg/mapdb/Engine;Lorg/mapdb/Serializer;JJZ)V

    .line 1127
    .restart local v1    # "ret":Lorg/mapdb/Queues$Queue;, "Lorg/mapdb/Queues$Queue<TE;>;"
    invoke-virtual {p0, p1, v1}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    .line 1128
    goto/16 :goto_0

    .line 1104
    .end local v1    # "ret":Lorg/mapdb/Queues$Queue;, "Lorg/mapdb/Queues$Queue<TE;>;"
    .end local v9    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getStack(Ljava/lang/String;)Ljava/util/concurrent/BlockingQueue;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/BlockingQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1154
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/mapdb/DB;->checkNotClosed()V

    .line 1155
    invoke-virtual {p0, p1}, Lorg/mapdb/DB;->getFromWeakCollection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapdb/Queues$Stack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1156
    .local v1, "ret":Lorg/mapdb/Queues$Stack;, "Lorg/mapdb/Queues$Stack<TE;>;"
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 1178
    :goto_0
    monitor-exit p0

    return-object v2

    .line 1157
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1158
    .local v7, "type":Ljava/lang/String;
    if-nez v7, :cond_2

    .line 1159
    invoke-virtual {p0, p1}, Lorg/mapdb/DB;->checkShouldCreate(Ljava/lang/String;)V

    .line 1160
    iget-object v2, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    invoke-interface {v2}, Lorg/mapdb/Engine;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1161
    new-instance v0, Lorg/mapdb/StoreHeap;

    invoke-direct {v0}, Lorg/mapdb/StoreHeap;-><init>()V

    .line 1162
    .local v0, "e":Lorg/mapdb/Engine;
    new-instance v2, Lorg/mapdb/DB;

    invoke-direct {v2, v0}, Lorg/mapdb/DB;-><init>(Lorg/mapdb/Engine;)V

    const-string v3, "a"

    invoke-virtual {v2, v3}, Lorg/mapdb/DB;->getStack(Ljava/lang/String;)Ljava/util/concurrent/BlockingQueue;

    .line 1163
    new-instance v2, Lorg/mapdb/DB;

    new-instance v3, Lorg/mapdb/EngineWrapper$ReadOnlyEngine;

    invoke-direct {v3, v0}, Lorg/mapdb/EngineWrapper$ReadOnlyEngine;-><init>(Lorg/mapdb/Engine;)V

    invoke-direct {v2, v3}, Lorg/mapdb/DB;-><init>(Lorg/mapdb/Engine;)V

    const-string v3, "a"

    invoke-virtual {v2, v3}, Lorg/mapdb/DB;->getStack(Ljava/lang/String;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/BlockingQueue;

    goto :goto_0

    .line 1166
    .end local v0    # "e":Lorg/mapdb/Engine;
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v2, v3}, Lorg/mapdb/DB;->createStack(Ljava/lang/String;Lorg/mapdb/Serializer;Z)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    goto :goto_0

    .line 1169
    :cond_2
    const-string v2, "Stack"

    invoke-virtual {p0, v7, v2}, Lorg/mapdb/DB;->checkType(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    new-instance v1, Lorg/mapdb/Queues$Stack;

    .end local v1    # "ret":Lorg/mapdb/Queues$Stack;, "Lorg/mapdb/Queues$Stack<TE;>;"
    iget-object v2, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".serializer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mapdb/Serializer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".headRecid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ".useLocks"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-direct/range {v1 .. v6}, Lorg/mapdb/Queues$Stack;-><init>(Lorg/mapdb/Engine;Lorg/mapdb/Serializer;JZ)V

    .line 1177
    .restart local v1    # "ret":Lorg/mapdb/Queues$Stack;, "Lorg/mapdb/Queues$Stack<TE;>;"
    invoke-virtual {p0, p1, v1}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    .line 1178
    goto/16 :goto_0

    .line 1154
    .end local v1    # "ret":Lorg/mapdb/Queues$Stack;, "Lorg/mapdb/Queues$Stack<TE;>;"
    .end local v7    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getTreeMap(Ljava/lang/String;)Lorg/mapdb/BTreeMap;
    .locals 17
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/mapdb/BTreeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 788
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->checkNotClosed()V

    .line 789
    invoke-virtual/range {p0 .. p1}, Lorg/mapdb/DB;->getFromWeakCollection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapdb/BTreeMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 790
    .local v2, "ret":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 817
    :goto_0
    monitor-exit p0

    return-object v3

    .line 791
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 792
    .local v16, "type":Ljava/lang/String;
    if-nez v16, :cond_2

    .line 793
    invoke-virtual/range {p0 .. p1}, Lorg/mapdb/DB;->checkShouldCreate(Ljava/lang/String;)V

    .line 794
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    invoke-interface {v3}, Lorg/mapdb/Engine;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 795
    new-instance v15, Lorg/mapdb/StoreHeap;

    invoke-direct {v15}, Lorg/mapdb/StoreHeap;-><init>()V

    .line 796
    .local v15, "e":Lorg/mapdb/Engine;
    new-instance v3, Lorg/mapdb/DB;

    invoke-direct {v3, v15}, Lorg/mapdb/DB;-><init>(Lorg/mapdb/Engine;)V

    const-string v4, "a"

    invoke-virtual {v3, v4}, Lorg/mapdb/DB;->getTreeMap(Ljava/lang/String;)Lorg/mapdb/BTreeMap;

    .line 797
    new-instance v3, Lorg/mapdb/DB;

    new-instance v4, Lorg/mapdb/EngineWrapper$ReadOnlyEngine;

    invoke-direct {v4, v15}, Lorg/mapdb/EngineWrapper$ReadOnlyEngine;-><init>(Lorg/mapdb/Engine;)V

    invoke-direct {v3, v4}, Lorg/mapdb/DB;-><init>(Lorg/mapdb/Engine;)V

    const-string v4, "a"

    invoke-virtual {v3, v4}, Lorg/mapdb/DB;->getTreeMap(Ljava/lang/String;)Lorg/mapdb/BTreeMap;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mapdb/BTreeMap;

    goto :goto_0

    .line 800
    .end local v15    # "e":Lorg/mapdb/Engine;
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lorg/mapdb/DB;->createTreeMap(Ljava/lang/String;)Lorg/mapdb/DB$BTreeMapMaker;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mapdb/DB$BTreeMapMaker;->make()Lorg/mapdb/BTreeMap;

    move-result-object v3

    goto :goto_0

    .line 803
    :cond_2
    const-string v3, "TreeMap"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Lorg/mapdb/DB;->checkType(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    new-instance v2, Lorg/mapdb/BTreeMap;

    .end local v2    # "ret":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".rootRecidRef"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".maxNodeSize"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x20

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".valuesOutsideNodes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".counterRecid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".keySerializer"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lorg/mapdb/BTreeKeySerializer$BasicKeySerializer;

    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/mapdb/BTreeKeySerializer$BasicKeySerializer;-><init>(Lorg/mapdb/Serializer;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapdb/BTreeKeySerializer;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".valueSerializer"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/mapdb/Serializer;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".comparator"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lorg/mapdb/BTreeMap;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Comparator;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".numberOfNodeMetas"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x0

    invoke-direct/range {v2 .. v14}, Lorg/mapdb/BTreeMap;-><init>(Lorg/mapdb/Engine;JIZJLorg/mapdb/BTreeKeySerializer;Lorg/mapdb/Serializer;Ljava/util/Comparator;IZ)V

    .line 816
    .restart local v2    # "ret":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v2

    .line 817
    goto/16 :goto_0

    .line 788
    .end local v2    # "ret":Lorg/mapdb/BTreeMap;, "Lorg/mapdb/BTreeMap<TK;TV;>;"
    .end local v16    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getTreeSet(Ljava/lang/String;)Ljava/util/NavigableSet;
    .locals 20
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1006
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->checkNotClosed()V

    .line 1007
    invoke-virtual/range {p0 .. p1}, Lorg/mapdb/DB;->getFromWeakCollection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/NavigableSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1008
    .local v18, "ret":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TK;>;"
    if-eqz v18, :cond_0

    move-object/from16 v4, v18

    .line 1036
    :goto_0
    monitor-exit p0

    return-object v4

    .line 1009
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 1010
    .local v19, "type":Ljava/lang/String;
    if-nez v19, :cond_2

    .line 1011
    invoke-virtual/range {p0 .. p1}, Lorg/mapdb/DB;->checkShouldCreate(Ljava/lang/String;)V

    .line 1012
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    invoke-interface {v4}, Lorg/mapdb/Engine;->isReadOnly()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1013
    new-instance v17, Lorg/mapdb/StoreHeap;

    invoke-direct/range {v17 .. v17}, Lorg/mapdb/StoreHeap;-><init>()V

    .line 1014
    .local v17, "e":Lorg/mapdb/Engine;
    new-instance v4, Lorg/mapdb/DB;

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Lorg/mapdb/DB;-><init>(Lorg/mapdb/Engine;)V

    const-string v5, "a"

    invoke-virtual {v4, v5}, Lorg/mapdb/DB;->getTreeSet(Ljava/lang/String;)Ljava/util/NavigableSet;

    .line 1015
    new-instance v4, Lorg/mapdb/DB;

    new-instance v5, Lorg/mapdb/EngineWrapper$ReadOnlyEngine;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Lorg/mapdb/EngineWrapper$ReadOnlyEngine;-><init>(Lorg/mapdb/Engine;)V

    invoke-direct {v4, v5}, Lorg/mapdb/DB;-><init>(Lorg/mapdb/Engine;)V

    const-string v5, "a"

    invoke-virtual {v4, v5}, Lorg/mapdb/DB;->getTreeSet(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/NavigableSet;

    goto :goto_0

    .line 1018
    .end local v17    # "e":Lorg/mapdb/Engine;
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lorg/mapdb/DB;->createTreeSet(Ljava/lang/String;)Lorg/mapdb/DB$BTreeSetMaker;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mapdb/DB$BTreeSetMaker;->make()Ljava/util/NavigableSet;

    move-result-object v4

    goto :goto_0

    .line 1021
    :cond_2
    const-string v4, "TreeSet"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Lorg/mapdb/DB;->checkType(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    new-instance v4, Lorg/mapdb/BTreeMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".rootRecidRef"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".maxNodeSize"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x20

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".counterRecid"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".keySerializer"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lorg/mapdb/BTreeKeySerializer$BasicKeySerializer;

    invoke-virtual/range {p0 .. p0}, Lorg/mapdb/DB;->getDefaultSerializer()Lorg/mapdb/Serializer;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/mapdb/BTreeKeySerializer$BasicKeySerializer;-><init>(Lorg/mapdb/Serializer;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/mapdb/BTreeKeySerializer;

    const/4 v13, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".comparator"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lorg/mapdb/BTreeMap;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Comparator;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".numberOfNodeMetas"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lorg/mapdb/DB;->catGet(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, 0x0

    invoke-direct/range {v4 .. v16}, Lorg/mapdb/BTreeMap;-><init>(Lorg/mapdb/Engine;JIZJLorg/mapdb/BTreeKeySerializer;Lorg/mapdb/Serializer;Ljava/util/Comparator;IZ)V

    invoke-virtual {v4}, Lorg/mapdb/BTreeMap;->keySet()Ljava/util/NavigableSet;

    move-result-object v18

    .line 1035
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v4, v18

    .line 1036
    goto/16 :goto_0

    .line 1006
    .end local v18    # "ret":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TK;>;"
    .end local v19    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    .prologue
    .line 1633
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    invoke-interface {v0}, Lorg/mapdb/Engine;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ret"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lorg/mapdb/DB;->namesInstanciated:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    iget-object v0, p0, Lorg/mapdb/DB;->namesLookup:Ljava/util/Map;

    new-instance v1, Lorg/mapdb/DB$IdentityWrapper;

    invoke-direct {v1, p2}, Lorg/mapdb/DB$IdentityWrapper;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    return-object p2
.end method

.method protected reinit()V
    .locals 1

    .prologue
    .line 88
    invoke-static {p0}, Lorg/mapdb/BTreeMap;->preinitCatalog(Lorg/mapdb/DB;)Ljava/util/SortedMap;

    move-result-object v0

    iput-object v0, p0, Lorg/mapdb/DB;->catalog:Ljava/util/SortedMap;

    .line 89
    return-void
.end method

.method public declared-synchronized rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 1559
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_1

    .line 1582
    :cond_0
    monitor-exit p0

    return-void

    .line 1561
    :cond_1
    :try_start_1
    iget-object v7, p0, Lorg/mapdb/DB;->catalog:Ljava/util/SortedMap;

    invoke-interface {v7, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v4

    .line 1562
    .local v4, "sub":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1564
    .local v6, "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1565
    .local v3, "param":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1571
    .end local v3    # "param":Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Ljava/util/NoSuchElementException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not rename, name does not exist: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1559
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "sub":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1567
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v3    # "param":Ljava/lang/String;
    .restart local v4    # "sub":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v6    # "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1568
    .local v5, "suffix":Ljava/lang/String;
    iget-object v7, p0, Lorg/mapdb/DB;->catalog:Ljava/util/SortedMap;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/mapdb/DB;->catalog:Ljava/util/SortedMap;

    invoke-interface {v9, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1573
    .end local v3    # "param":Ljava/lang/String;
    .end local v5    # "suffix":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lorg/mapdb/DB;->namesInstanciated:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1574
    .local v1, "old":Ljava/lang/ref/WeakReference;
    if-eqz v1, :cond_5

    .line 1575
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 1576
    .local v2, "old2":Ljava/lang/Object;
    if-eqz v2, :cond_5

    .line 1577
    iget-object v7, p0, Lorg/mapdb/DB;->namesLookup:Ljava/util/Map;

    new-instance v8, Lorg/mapdb/DB$IdentityWrapper;

    invoke-direct {v8, v2}, Lorg/mapdb/DB$IdentityWrapper;-><init>(Ljava/lang/Object;)V

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1578
    invoke-virtual {p0, p2, v2}, Lorg/mapdb/DB;->namedPut(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1581
    .end local v2    # "old2":Ljava/lang/Object;
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .restart local v3    # "param":Ljava/lang/String;
    iget-object v7, p0, Lorg/mapdb/DB;->catalog:Ljava/util/SortedMap;

    invoke-interface {v7, v3}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized rollback()V
    .locals 1

    .prologue
    .line 1652
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/mapdb/DB;->checkNotClosed()V

    .line 1653
    iget-object v0, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    invoke-interface {v0}, Lorg/mapdb/Engine;->rollback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1654
    monitor-exit p0

    return-void

    .line 1652
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized snapshot()Lorg/mapdb/DB;
    .locals 2

    .prologue
    .line 1676
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    invoke-static {v1}, Lorg/mapdb/TxEngine;->createSnapshotFor(Lorg/mapdb/Engine;)Lorg/mapdb/Engine;

    move-result-object v0

    .line 1677
    .local v0, "snapshot":Lorg/mapdb/Engine;
    new-instance v1, Lorg/mapdb/DB;

    invoke-direct {v1, v0}, Lorg/mapdb/DB;-><init>(Lorg/mapdb/Engine;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 1676
    .end local v0    # "snapshot":Lorg/mapdb/Engine;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
