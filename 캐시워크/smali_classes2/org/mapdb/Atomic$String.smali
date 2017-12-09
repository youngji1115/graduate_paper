.class public final Lorg/mapdb/Atomic$String;
.super Ljava/lang/Object;
.source "Atomic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/Atomic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "String"
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
    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    iput-object p1, p0, Lorg/mapdb/Atomic$String;->engine:Lorg/mapdb/Engine;

    .line 558
    iput-wide p2, p0, Lorg/mapdb/Atomic$String;->recid:J

    .line 559
    return-void
.end method


# virtual methods
.method public final compareAndSet(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "expect"    # Ljava/lang/String;
    .param p2, "update"    # Ljava/lang/String;

    .prologue
    .line 592
    iget-object v1, p0, Lorg/mapdb/Atomic$String;->engine:Lorg/mapdb/Engine;

    iget-wide v2, p0, Lorg/mapdb/Atomic$String;->recid:J

    sget-object v6, Lorg/mapdb/Serializer;->STRING_NOSIZE:Lorg/mapdb/Serializer;

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v1 .. v6}, Lorg/mapdb/Engine;->compareAndSwap(JLjava/lang/Object;Ljava/lang/Object;Lorg/mapdb/Serializer;)Z

    move-result v0

    return v0
.end method

.method public final get()Ljava/lang/String;
    .locals 4

    .prologue
    .line 579
    iget-object v0, p0, Lorg/mapdb/Atomic$String;->engine:Lorg/mapdb/Engine;

    iget-wide v2, p0, Lorg/mapdb/Atomic$String;->recid:J

    sget-object v1, Lorg/mapdb/Serializer;->STRING_NOSIZE:Lorg/mapdb/Serializer;

    invoke-interface {v0, v2, v3, v1}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getAndSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 614
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/Atomic$String;->get()Ljava/lang/String;

    move-result-object v0

    .line 615
    .local v0, "current":Ljava/lang/String;
    invoke-virtual {p0, v0, p1}, Lorg/mapdb/Atomic$String;->compareAndSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 616
    return-object v0
.end method

.method public getRecid()J
    .locals 2

    .prologue
    .line 566
    iget-wide v0, p0, Lorg/mapdb/Atomic$String;->recid:J

    return-wide v0
.end method

.method public final set(Ljava/lang/String;)V
    .locals 4
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 602
    iget-object v0, p0, Lorg/mapdb/Atomic$String;->engine:Lorg/mapdb/Engine;

    iget-wide v2, p0, Lorg/mapdb/Atomic$String;->recid:J

    sget-object v1, Lorg/mapdb/Serializer;->STRING_NOSIZE:Lorg/mapdb/Serializer;

    invoke-interface {v0, v2, v3, p1, v1}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 603
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 570
    invoke-virtual {p0}, Lorg/mapdb/Atomic$String;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
