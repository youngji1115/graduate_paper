.class public final Lorg/mapdb/Atomic$Boolean;
.super Ljava/lang/Object;
.source "Atomic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/Atomic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Boolean"
.end annotation


# instance fields
.field protected final engine:Lorg/mapdb/Engine;

.field protected final recid:J


# direct methods
.method public constructor <init>(Lorg/mapdb/Engine;J)V
    .locals 0
    .param p1, "engine"    # Lorg/mapdb/Engine;
    .param p2, "recid"    # J

    .prologue
    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    iput-object p1, p0, Lorg/mapdb/Atomic$Boolean;->engine:Lorg/mapdb/Engine;

    .line 480
    iput-wide p2, p0, Lorg/mapdb/Atomic$Boolean;->recid:J

    .line 481
    return-void
.end method


# virtual methods
.method public final compareAndSet(ZZ)Z
    .locals 7
    .param p1, "expect"    # Z
    .param p2, "update"    # Z

    .prologue
    .line 510
    iget-object v1, p0, Lorg/mapdb/Atomic$Boolean;->engine:Lorg/mapdb/Engine;

    iget-wide v2, p0, Lorg/mapdb/Atomic$Boolean;->recid:J

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sget-object v6, Lorg/mapdb/Serializer;->BOOLEAN:Lorg/mapdb/Serializer;

    invoke-interface/range {v1 .. v6}, Lorg/mapdb/Engine;->compareAndSwap(JLjava/lang/Object;Ljava/lang/Object;Lorg/mapdb/Serializer;)Z

    move-result v0

    return v0
.end method

.method public final get()Z
    .locals 4

    .prologue
    .line 497
    iget-object v0, p0, Lorg/mapdb/Atomic$Boolean;->engine:Lorg/mapdb/Engine;

    iget-wide v2, p0, Lorg/mapdb/Atomic$Boolean;->recid:J

    sget-object v1, Lorg/mapdb/Serializer;->BOOLEAN:Lorg/mapdb/Serializer;

    invoke-interface {v0, v2, v3, v1}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getAndSet(Z)Z
    .locals 2
    .param p1, "newValue"    # Z

    .prologue
    .line 532
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/Atomic$Boolean;->get()Z

    move-result v0

    .line 533
    .local v0, "current":Z
    invoke-virtual {p0, v0, p1}, Lorg/mapdb/Atomic$Boolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    return v0
.end method

.method public getRecid()J
    .locals 2

    .prologue
    .line 487
    iget-wide v0, p0, Lorg/mapdb/Atomic$Boolean;->recid:J

    return-wide v0
.end method

.method public final set(Z)V
    .locals 5
    .param p1, "newValue"    # Z

    .prologue
    .line 520
    iget-object v0, p0, Lorg/mapdb/Atomic$Boolean;->engine:Lorg/mapdb/Engine;

    iget-wide v2, p0, Lorg/mapdb/Atomic$Boolean;->recid:J

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v4, Lorg/mapdb/Serializer;->BOOLEAN:Lorg/mapdb/Serializer;

    invoke-interface {v0, v2, v3, v1, v4}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 521
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 543
    invoke-virtual {p0}, Lorg/mapdb/Atomic$Boolean;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
