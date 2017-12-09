.class public Lorg/mapdb/TxMaker;
.super Ljava/lang/Object;
.source "TxMaker.java"


# static fields
.field protected static final DELETED:Ljava/lang/Object;


# instance fields
.field protected engine:Lorg/mapdb/Engine;

.field private final strictDBGet:Z

.field private final txSnapshotsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/mapdb/TxMaker;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/mapdb/Engine;)V
    .locals 1
    .param p1, "engine"    # Lorg/mapdb/Engine;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0, v0}, Lorg/mapdb/TxMaker;-><init>(Lorg/mapdb/Engine;ZZ)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/mapdb/Engine;ZZ)V
    .locals 2
    .param p1, "engine"    # Lorg/mapdb/Engine;
    .param p2, "strictDBGet"    # Z
    .param p3, "txSnapshotsEnabled"    # Z

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 41
    :cond_0
    invoke-interface {p1}, Lorg/mapdb/Engine;->canSnapshot()Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Snapshot must be enabled for TxMaker"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    invoke-interface {p1}, Lorg/mapdb/Engine;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TxMaker can not be used with read-only Engine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_2
    iput-object p1, p0, Lorg/mapdb/TxMaker;->engine:Lorg/mapdb/Engine;

    .line 46
    iput-boolean p2, p0, Lorg/mapdb/TxMaker;->strictDBGet:Z

    .line 47
    iput-boolean p3, p0, Lorg/mapdb/TxMaker;->txSnapshotsEnabled:Z

    .line 48
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/mapdb/TxMaker;->engine:Lorg/mapdb/Engine;

    invoke-interface {v0}, Lorg/mapdb/Engine;->close()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mapdb/TxMaker;->engine:Lorg/mapdb/Engine;

    .line 61
    return-void
.end method

.method public execute(Lorg/mapdb/Fun$Function1;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mapdb/Fun$Function1",
            "<TA;",
            "Lorg/mapdb/DB;",
            ">;)TA;"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "txBlock":Lorg/mapdb/Fun$Function1;, "Lorg/mapdb/Fun$Function1<TA;Lorg/mapdb/DB;>;"
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/mapdb/TxMaker;->makeTx()Lorg/mapdb/DB;

    move-result-object v2

    .line 96
    .local v2, "tx":Lorg/mapdb/DB;
    :try_start_0
    invoke-interface {p1, v2}, Lorg/mapdb/Fun$Function1;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 97
    .local v0, "a":Ljava/lang/Object;, "TA;"
    invoke-virtual {v2}, Lorg/mapdb/DB;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 98
    invoke-virtual {v2}, Lorg/mapdb/DB;->commit()V
    :try_end_0
    .catch Lorg/mapdb/TxRollbackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_1
    return-object v0

    .line 100
    .end local v0    # "a":Ljava/lang/Object;, "TA;"
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Lorg/mapdb/TxRollbackException;
    invoke-virtual {v2}, Lorg/mapdb/DB;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lorg/mapdb/DB;->close()V

    goto :goto_0
.end method

.method public execute(Lorg/mapdb/TxBlock;)V
    .locals 3
    .param p1, "txBlock"    # Lorg/mapdb/TxBlock;

    .prologue
    .line 71
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/mapdb/TxMaker;->makeTx()Lorg/mapdb/DB;

    move-result-object v1

    .line 73
    .local v1, "tx":Lorg/mapdb/DB;
    :try_start_0
    invoke-interface {p1, v1}, Lorg/mapdb/TxBlock;->tx(Lorg/mapdb/DB;)V

    .line 74
    invoke-virtual {v1}, Lorg/mapdb/DB;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 75
    invoke-virtual {v1}, Lorg/mapdb/DB;->commit()V
    :try_end_0
    .catch Lorg/mapdb/TxRollbackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_1
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Lorg/mapdb/TxRollbackException;
    invoke-virtual {v1}, Lorg/mapdb/DB;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/mapdb/DB;->close()V

    goto :goto_0
.end method

.method public makeTx()Lorg/mapdb/DB;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 52
    iget-object v2, p0, Lorg/mapdb/TxMaker;->engine:Lorg/mapdb/Engine;

    invoke-interface {v2}, Lorg/mapdb/Engine;->snapshot()Lorg/mapdb/Engine;

    move-result-object v0

    .line 53
    .local v0, "snapshot":Lorg/mapdb/Engine;
    iget-boolean v2, p0, Lorg/mapdb/TxMaker;->txSnapshotsEnabled:Z

    if-eqz v2, :cond_0

    .line 54
    new-instance v1, Lorg/mapdb/TxEngine;

    invoke-direct {v1, v0, v4}, Lorg/mapdb/TxEngine;-><init>(Lorg/mapdb/Engine;Z)V

    .end local v0    # "snapshot":Lorg/mapdb/Engine;
    .local v1, "snapshot":Lorg/mapdb/Engine;
    move-object v0, v1

    .line 55
    .end local v1    # "snapshot":Lorg/mapdb/Engine;
    .restart local v0    # "snapshot":Lorg/mapdb/Engine;
    :cond_0
    new-instance v2, Lorg/mapdb/DB;

    iget-boolean v3, p0, Lorg/mapdb/TxMaker;->strictDBGet:Z

    invoke-direct {v2, v0, v3, v4}, Lorg/mapdb/DB;-><init>(Lorg/mapdb/Engine;ZZ)V

    return-object v2
.end method
