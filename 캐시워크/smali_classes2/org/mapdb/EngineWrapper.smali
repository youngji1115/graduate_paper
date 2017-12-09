.class public Lorg/mapdb/EngineWrapper;
.super Ljava/lang/Object;
.source "EngineWrapper.java"

# interfaces
.implements Lorg/mapdb/Engine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapdb/EngineWrapper$CloseOnJVMShutdown;,
        Lorg/mapdb/EngineWrapper$SerializerCheckEngineWrapper;,
        Lorg/mapdb/EngineWrapper$SynchronizedEngineWrapper;,
        Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine;,
        Lorg/mapdb/EngineWrapper$ReadOnlyEngine;
    }
.end annotation


# static fields
.field public static final CLOSED:Lorg/mapdb/Engine;


# instance fields
.field private engine:Lorg/mapdb/Engine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 452
    new-instance v0, Lorg/mapdb/EngineWrapper$1;

    invoke-direct {v0}, Lorg/mapdb/EngineWrapper$1;-><init>()V

    sput-object v0, Lorg/mapdb/EngineWrapper;->CLOSED:Lorg/mapdb/Engine;

    return-void
.end method

.method protected constructor <init>(Lorg/mapdb/Engine;)V
    .locals 1
    .param p1, "engine"    # Lorg/mapdb/Engine;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 38
    :cond_0
    iput-object p1, p0, Lorg/mapdb/EngineWrapper;->engine:Lorg/mapdb/Engine;

    .line 39
    return-void
.end method

.method protected static checkClosed(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "v":Ljava/lang/Object;, "TV;"
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "DB has been closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    return-object p0
.end method


# virtual methods
.method public canRollback()Z
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lorg/mapdb/EngineWrapper;->getWrappedEngine()Lorg/mapdb/Engine;

    move-result-object v0

    invoke-interface {v0}, Lorg/mapdb/Engine;->canRollback()Z

    move-result v0

    return v0
.end method

.method public canSnapshot()Z
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lorg/mapdb/EngineWrapper;->getWrappedEngine()Lorg/mapdb/Engine;

    move-result-object v0

    invoke-interface {v0}, Lorg/mapdb/Engine;->canSnapshot()Z

    move-result v0

    return v0
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/mapdb/EngineWrapper;->getWrappedEngine()Lorg/mapdb/Engine;

    move-result-object v0

    invoke-interface {v0}, Lorg/mapdb/Engine;->clearCache()V

    .line 126
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lorg/mapdb/EngineWrapper;->engine:Lorg/mapdb/Engine;

    .line 80
    .local v0, "e":Lorg/mapdb/Engine;
    if-eqz v0, :cond_0

    .line 81
    :try_start_0
    invoke-interface {v0}, Lorg/mapdb/Engine;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    sget-object v1, Lorg/mapdb/EngineWrapper;->CLOSED:Lorg/mapdb/Engine;

    iput-object v1, p0, Lorg/mapdb/EngineWrapper;->engine:Lorg/mapdb/Engine;

    .line 85
    return-void

    .line 83
    :catchall_0
    move-exception v1

    sget-object v2, Lorg/mapdb/EngineWrapper;->CLOSED:Lorg/mapdb/Engine;

    iput-object v2, p0, Lorg/mapdb/EngineWrapper;->engine:Lorg/mapdb/Engine;

    throw v1
.end method

.method public closeListenerRegister(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "closeListener"    # Ljava/lang/Runnable;

    .prologue
    .line 140
    invoke-virtual {p0}, Lorg/mapdb/EngineWrapper;->getWrappedEngine()Lorg/mapdb/Engine;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mapdb/Engine;->closeListenerRegister(Ljava/lang/Runnable;)V

    .line 142
    return-void
.end method

.method public closeListenerUnregister(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "closeListener"    # Ljava/lang/Runnable;

    .prologue
    .line 146
    invoke-virtual {p0}, Lorg/mapdb/EngineWrapper;->getWrappedEngine()Lorg/mapdb/Engine;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mapdb/Engine;->closeListenerUnregister(Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method

.method public commit()V
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lorg/mapdb/EngineWrapper;->getWrappedEngine()Lorg/mapdb/Engine;

    move-result-object v0

    invoke-interface {v0}, Lorg/mapdb/Engine;->commit()V

    .line 95
    return-void
.end method

.method public compact()V
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lorg/mapdb/EngineWrapper;->getWrappedEngine()Lorg/mapdb/Engine;

    move-result-object v0

    invoke-interface {v0}, Lorg/mapdb/Engine;->compact()V

    .line 131
    return-void
.end method

.method public compareAndSwap(JLjava/lang/Object;Ljava/lang/Object;Lorg/mapdb/Serializer;)Z
    .locals 7
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
    .line 68
    .local p3, "expectedOldValue":Ljava/lang/Object;, "TA;"
    .local p4, "newValue":Ljava/lang/Object;, "TA;"
    .local p5, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    invoke-virtual {p0}, Lorg/mapdb/EngineWrapper;->getWrappedEngine()Lorg/mapdb/Engine;

    move-result-object v1

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lorg/mapdb/Engine;->compareAndSwap(JLjava/lang/Object;Ljava/lang/Object;Lorg/mapdb/Serializer;)Z

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
    .line 73
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    invoke-virtual {p0}, Lorg/mapdb/EngineWrapper;->getWrappedEngine()Lorg/mapdb/Engine;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/mapdb/Engine;->delete(JLorg/mapdb/Serializer;)V

    .line 74
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
    .line 58
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    invoke-virtual {p0}, Lorg/mapdb/EngineWrapper;->getWrappedEngine()Lorg/mapdb/Engine;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSerializerPojo()Lorg/mapdb/SerializerPojo;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/mapdb/EngineWrapper;->getWrappedEngine()Lorg/mapdb/Engine;

    move-result-object v0

    invoke-interface {v0}, Lorg/mapdb/Engine;->getSerializerPojo()Lorg/mapdb/SerializerPojo;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedEngine()Lorg/mapdb/Engine;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/mapdb/EngineWrapper;->engine:Lorg/mapdb/Engine;

    invoke-static {v0}, Lorg/mapdb/EngineWrapper;->checkClosed(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Engine;

    return-object v0
.end method

.method public isClosed()Z
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/mapdb/EngineWrapper;->engine:Lorg/mapdb/Engine;

    sget-object v1, Lorg/mapdb/EngineWrapper;->CLOSED:Lorg/mapdb/Engine;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/mapdb/EngineWrapper;->engine:Lorg/mapdb/Engine;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/mapdb/EngineWrapper;->getWrappedEngine()Lorg/mapdb/Engine;

    move-result-object v0

    invoke-interface {v0}, Lorg/mapdb/Engine;->isReadOnly()Z

    move-result v0

    return v0
.end method

.method public preallocate()J
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lorg/mapdb/EngineWrapper;->getWrappedEngine()Lorg/mapdb/Engine;

    move-result-object v0

    invoke-interface {v0}, Lorg/mapdb/Engine;->preallocate()J

    move-result-wide v0

    return-wide v0
.end method

.method public preallocate([J)V
    .locals 1
    .param p1, "recids"    # [J

    .prologue
    .line 48
    invoke-virtual {p0}, Lorg/mapdb/EngineWrapper;->getWrappedEngine()Lorg/mapdb/Engine;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mapdb/Engine;->preallocate([J)V

    .line 49
    return-void
.end method

.method public put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J
    .locals 2
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
    .line 53
    .local p1, "value":Ljava/lang/Object;, "TA;"
    .local p2, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    invoke-virtual {p0}, Lorg/mapdb/EngineWrapper;->getWrappedEngine()Lorg/mapdb/Engine;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public rollback()V
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lorg/mapdb/EngineWrapper;->getWrappedEngine()Lorg/mapdb/Engine;

    move-result-object v0

    invoke-interface {v0}, Lorg/mapdb/Engine;->rollback()V

    .line 100
    return-void
.end method

.method public snapshot()Lorg/mapdb/Engine;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p0}, Lorg/mapdb/EngineWrapper;->getWrappedEngine()Lorg/mapdb/Engine;

    move-result-object v0

    invoke-interface {v0}, Lorg/mapdb/Engine;->snapshot()Lorg/mapdb/Engine;

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
    .line 63
    .local p3, "value":Ljava/lang/Object;, "TA;"
    .local p4, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    invoke-virtual {p0}, Lorg/mapdb/EngineWrapper;->getWrappedEngine()Lorg/mapdb/Engine;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 64
    return-void
.end method
