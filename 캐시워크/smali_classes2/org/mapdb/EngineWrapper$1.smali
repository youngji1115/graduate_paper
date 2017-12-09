.class final Lorg/mapdb/EngineWrapper$1;
.super Ljava/lang/Object;
.source "EngineWrapper.java"

# interfaces
.implements Lorg/mapdb/Engine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/EngineWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canRollback()Z
    .locals 2

    .prologue
    .line 517
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canSnapshot()Z
    .locals 2

    .prologue
    .line 522
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearCache()V
    .locals 2

    .prologue
    .line 532
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 492
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public closeListenerRegister(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "closeListener"    # Ljava/lang/Runnable;

    .prologue
    .line 547
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public closeListenerUnregister(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "closeListener"    # Ljava/lang/Runnable;

    .prologue
    .line 553
    return-void
.end method

.method public commit()V
    .locals 2

    .prologue
    .line 502
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compact()V
    .locals 2

    .prologue
    .line 537
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compareAndSwap(JLjava/lang/Object;Ljava/lang/Object;Lorg/mapdb/Serializer;)Z
    .locals 2
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
    .line 482
    .local p3, "expectedOldValue":Ljava/lang/Object;, "TA;"
    .local p4, "newValue":Ljava/lang/Object;, "TA;"
    .local p5, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete(JLorg/mapdb/Serializer;)V
    .locals 2
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
    .line 487
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(JLorg/mapdb/Serializer;)Ljava/lang/Object;
    .locals 2
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
    .line 472
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSerializerPojo()Lorg/mapdb/SerializerPojo;
    .locals 2

    .prologue
    .line 542
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 497
    const/4 v0, 0x1

    return v0
.end method

.method public isReadOnly()Z
    .locals 2

    .prologue
    .line 512
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public preallocate()J
    .locals 2

    .prologue
    .line 457
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public preallocate([J)V
    .locals 2
    .param p1, "recids"    # [J

    .prologue
    .line 462
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 467
    .local p1, "value":Ljava/lang/Object;, "TA;"
    .local p2, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rollback()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 507
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public snapshot()Lorg/mapdb/Engine;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 527
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V
    .locals 2
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
    .line 477
    .local p3, "value":Ljava/lang/Object;, "TA;"
    .local p4, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
