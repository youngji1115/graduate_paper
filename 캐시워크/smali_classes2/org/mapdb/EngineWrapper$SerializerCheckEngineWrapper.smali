.class public Lorg/mapdb/EngineWrapper$SerializerCheckEngineWrapper;
.super Lorg/mapdb/EngineWrapper;
.source "EngineWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/EngineWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SerializerCheckEngineWrapper"
.end annotation


# instance fields
.field protected recid2serializer:Lorg/mapdb/LongMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/LongMap",
            "<",
            "Lorg/mapdb/Serializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/mapdb/Engine;)V
    .locals 1
    .param p1, "engine"    # Lorg/mapdb/Engine;

    .prologue
    .line 410
    invoke-direct {p0, p1}, Lorg/mapdb/EngineWrapper;-><init>(Lorg/mapdb/Engine;)V

    .line 407
    new-instance v0, Lorg/mapdb/LongConcurrentHashMap;

    invoke-direct {v0}, Lorg/mapdb/LongConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/mapdb/EngineWrapper$SerializerCheckEngineWrapper;->recid2serializer:Lorg/mapdb/LongMap;

    .line 411
    return-void
.end method


# virtual methods
.method protected declared-synchronized checkSerializer(JLorg/mapdb/Serializer;)V
    .locals 5
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
    .line 415
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/mapdb/EngineWrapper$SerializerCheckEngineWrapper;->recid2serializer:Lorg/mapdb/LongMap;

    invoke-virtual {v1, p1, p2}, Lorg/mapdb/LongMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Serializer;

    .line 416
    .local v0, "other":Lorg/mapdb/Serializer;
    if-eqz v0, :cond_0

    .line 417
    if-eq v0, p3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 418
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Serializer does not match. \n found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \n expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    .end local v0    # "other":Lorg/mapdb/Serializer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 420
    .restart local v0    # "other":Lorg/mapdb/Serializer;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/mapdb/EngineWrapper$SerializerCheckEngineWrapper;->recid2serializer:Lorg/mapdb/LongMap;

    invoke-virtual {v1, p1, p2, p3}, Lorg/mapdb/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public compareAndSwap(JLjava/lang/Object;Ljava/lang/Object;Lorg/mapdb/Serializer;)Z
    .locals 1
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
    .line 438
    .local p3, "expectedOldValue":Ljava/lang/Object;, "TA;"
    .local p4, "newValue":Ljava/lang/Object;, "TA;"
    .local p5, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    invoke-virtual {p0, p1, p2, p5}, Lorg/mapdb/EngineWrapper$SerializerCheckEngineWrapper;->checkSerializer(JLorg/mapdb/Serializer;)V

    .line 439
    invoke-super/range {p0 .. p5}, Lorg/mapdb/EngineWrapper;->compareAndSwap(JLjava/lang/Object;Ljava/lang/Object;Lorg/mapdb/Serializer;)Z

    move-result v0

    return v0
.end method

.method public delete(JLorg/mapdb/Serializer;)V
    .locals 1
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
    .line 444
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/mapdb/EngineWrapper$SerializerCheckEngineWrapper;->checkSerializer(JLorg/mapdb/Serializer;)V

    .line 445
    iget-object v0, p0, Lorg/mapdb/EngineWrapper$SerializerCheckEngineWrapper;->recid2serializer:Lorg/mapdb/LongMap;

    invoke-virtual {v0, p1, p2}, Lorg/mapdb/LongMap;->remove(J)Ljava/lang/Object;

    .line 446
    invoke-super {p0, p1, p2, p3}, Lorg/mapdb/EngineWrapper;->delete(JLorg/mapdb/Serializer;)V

    .line 447
    return-void
.end method

.method public get(JLorg/mapdb/Serializer;)Ljava/lang/Object;
    .locals 1
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
    .line 425
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/mapdb/EngineWrapper$SerializerCheckEngineWrapper;->checkSerializer(JLorg/mapdb/Serializer;)V

    .line 426
    invoke-super {p0, p1, p2, p3}, Lorg/mapdb/EngineWrapper;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V
    .locals 1
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
    .line 432
    .local p3, "value":Ljava/lang/Object;, "TA;"
    .local p4, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    invoke-virtual {p0, p1, p2, p4}, Lorg/mapdb/EngineWrapper$SerializerCheckEngineWrapper;->checkSerializer(JLorg/mapdb/Serializer;)V

    .line 433
    invoke-super {p0, p1, p2, p3, p4}, Lorg/mapdb/EngineWrapper;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 434
    return-void
.end method
