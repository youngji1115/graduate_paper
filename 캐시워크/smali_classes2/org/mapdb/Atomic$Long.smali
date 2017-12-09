.class public final Lorg/mapdb/Atomic$Long;
.super Ljava/lang/Number;
.source "Atomic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/Atomic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Long"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x28011ffe4e65c51dL


# instance fields
.field protected final engine:Lorg/mapdb/Engine;

.field protected final recid:J


# direct methods
.method public constructor <init>(Lorg/mapdb/Engine;J)V
    .locals 0
    .param p1, "engine"    # Lorg/mapdb/Engine;
    .param p2, "recid"    # J

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 297
    iput-object p1, p0, Lorg/mapdb/Atomic$Long;->engine:Lorg/mapdb/Engine;

    .line 298
    iput-wide p2, p0, Lorg/mapdb/Atomic$Long;->recid:J

    .line 299
    return-void
.end method


# virtual methods
.method public final addAndGet(J)J
    .locals 5
    .param p1, "delta"    # J

    .prologue
    .line 435
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/Atomic$Long;->get()J

    move-result-wide v0

    .line 436
    .local v0, "current":J
    add-long v2, v0, p1

    .line 437
    .local v2, "next":J
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/mapdb/Atomic$Long;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 438
    return-wide v2
.end method

.method public final compareAndSet(JJ)Z
    .locals 7
    .param p1, "expect"    # J
    .param p3, "update"    # J

    .prologue
    .line 352
    iget-object v1, p0, Lorg/mapdb/Atomic$Long;->engine:Lorg/mapdb/Engine;

    iget-wide v2, p0, Lorg/mapdb/Atomic$Long;->recid:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface/range {v1 .. v6}, Lorg/mapdb/Engine;->compareAndSwap(JLjava/lang/Object;Ljava/lang/Object;Lorg/mapdb/Serializer;)Z

    move-result v0

    return v0
.end method

.method public final decrementAndGet()J
    .locals 6

    .prologue
    .line 420
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/Atomic$Long;->get()J

    move-result-wide v0

    .line 421
    .local v0, "current":J
    const-wide/16 v4, 0x1

    sub-long v2, v0, v4

    .line 422
    .local v2, "next":J
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/mapdb/Atomic$Long;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 423
    return-wide v2
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 464
    invoke-virtual {p0}, Lorg/mapdb/Atomic$Long;->get()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    .prologue
    .line 460
    invoke-virtual {p0}, Lorg/mapdb/Atomic$Long;->get()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public final get()J
    .locals 4

    .prologue
    .line 315
    iget-object v0, p0, Lorg/mapdb/Atomic$Long;->engine:Lorg/mapdb/Engine;

    iget-wide v2, p0, Lorg/mapdb/Atomic$Long;->recid:J

    sget-object v1, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v0, v2, v3, v1}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAndAdd(J)J
    .locals 5
    .param p1, "delta"    # J

    .prologue
    .line 392
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/Atomic$Long;->get()J

    move-result-wide v0

    .line 393
    .local v0, "current":J
    add-long v2, v0, p1

    .line 394
    .local v2, "next":J
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/mapdb/Atomic$Long;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 395
    return-wide v0
.end method

.method public final getAndDecrement()J
    .locals 6

    .prologue
    .line 377
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/Atomic$Long;->get()J

    move-result-wide v0

    .line 378
    .local v0, "current":J
    const-wide/16 v4, 0x1

    sub-long v2, v0, v4

    .line 379
    .local v2, "next":J
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/mapdb/Atomic$Long;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 380
    return-wide v0
.end method

.method public final getAndIncrement()J
    .locals 6

    .prologue
    .line 363
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/Atomic$Long;->get()J

    move-result-wide v0

    .line 364
    .local v0, "current":J
    const-wide/16 v4, 0x1

    add-long v2, v0, v4

    .line 365
    .local v2, "next":J
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/mapdb/Atomic$Long;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 366
    return-wide v0
.end method

.method public final getAndSet(J)J
    .locals 3
    .param p1, "newValue"    # J

    .prologue
    .line 336
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/Atomic$Long;->get()J

    move-result-wide v0

    .line 337
    .local v0, "current":J
    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/mapdb/Atomic$Long;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    return-wide v0
.end method

.method public getRecid()J
    .locals 2

    .prologue
    .line 305
    iget-wide v0, p0, Lorg/mapdb/Atomic$Long;->recid:J

    return-wide v0
.end method

.method public final incrementAndGet()J
    .locals 6

    .prologue
    .line 406
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/Atomic$Long;->get()J

    move-result-wide v0

    .line 407
    .local v0, "current":J
    const-wide/16 v4, 0x1

    add-long v2, v0, v4

    .line 408
    .local v2, "next":J
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/mapdb/Atomic$Long;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 409
    return-wide v2
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 452
    invoke-virtual {p0}, Lorg/mapdb/Atomic$Long;->get()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 456
    invoke-virtual {p0}, Lorg/mapdb/Atomic$Long;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final set(J)V
    .locals 5
    .param p1, "newValue"    # J

    .prologue
    .line 324
    iget-object v0, p0, Lorg/mapdb/Atomic$Long;->engine:Lorg/mapdb/Engine;

    iget-wide v2, p0, Lorg/mapdb/Atomic$Long;->recid:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v4, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    invoke-interface {v0, v2, v3, v1, v4}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 325
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 447
    invoke-virtual {p0}, Lorg/mapdb/Atomic$Long;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
