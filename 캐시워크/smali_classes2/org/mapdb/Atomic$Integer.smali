.class public final Lorg/mapdb/Atomic$Integer;
.super Ljava/lang/Number;
.source "Atomic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/Atomic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Integer"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x400c32a466ee95beL


# instance fields
.field protected final engine:Lorg/mapdb/Engine;

.field protected final recid:J


# direct methods
.method public constructor <init>(Lorg/mapdb/Engine;J)V
    .locals 0
    .param p1, "engine"    # Lorg/mapdb/Engine;
    .param p2, "recid"    # J

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 109
    iput-object p1, p0, Lorg/mapdb/Atomic$Integer;->engine:Lorg/mapdb/Engine;

    .line 110
    iput-wide p2, p0, Lorg/mapdb/Atomic$Integer;->recid:J

    .line 111
    return-void
.end method


# virtual methods
.method public final addAndGet(I)I
    .locals 3
    .param p1, "delta"    # I

    .prologue
    .line 246
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/Atomic$Integer;->get()I

    move-result v0

    .line 247
    .local v0, "current":I
    add-int v1, v0, p1

    .line 248
    .local v1, "next":I
    invoke-virtual {p0, v0, v1}, Lorg/mapdb/Atomic$Integer;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    return v1
.end method

.method public final compareAndSet(II)Z
    .locals 7
    .param p1, "expect"    # I
    .param p2, "update"    # I

    .prologue
    .line 163
    iget-object v1, p0, Lorg/mapdb/Atomic$Integer;->engine:Lorg/mapdb/Engine;

    iget-wide v2, p0, Lorg/mapdb/Atomic$Integer;->recid:J

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lorg/mapdb/Serializer;->INTEGER:Lorg/mapdb/Serializer;

    invoke-interface/range {v1 .. v6}, Lorg/mapdb/Engine;->compareAndSwap(JLjava/lang/Object;Ljava/lang/Object;Lorg/mapdb/Serializer;)Z

    move-result v0

    return v0
.end method

.method public final decrementAndGet()I
    .locals 3

    .prologue
    .line 231
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/Atomic$Integer;->get()I

    move-result v0

    .line 232
    .local v0, "current":I
    add-int/lit8 v1, v0, -0x1

    .line 233
    .local v1, "next":I
    invoke-virtual {p0, v0, v1}, Lorg/mapdb/Atomic$Integer;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    return v1
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 275
    invoke-virtual {p0}, Lorg/mapdb/Atomic$Integer;->get()I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    .line 271
    invoke-virtual {p0}, Lorg/mapdb/Atomic$Integer;->get()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public final get()I
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lorg/mapdb/Atomic$Integer;->engine:Lorg/mapdb/Engine;

    iget-wide v2, p0, Lorg/mapdb/Atomic$Integer;->recid:J

    sget-object v1, Lorg/mapdb/Serializer;->INTEGER:Lorg/mapdb/Serializer;

    invoke-interface {v0, v2, v3, v1}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getAndAdd(I)I
    .locals 3
    .param p1, "delta"    # I

    .prologue
    .line 203
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/Atomic$Integer;->get()I

    move-result v0

    .line 204
    .local v0, "current":I
    add-int v1, v0, p1

    .line 205
    .local v1, "next":I
    invoke-virtual {p0, v0, v1}, Lorg/mapdb/Atomic$Integer;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    return v0
.end method

.method public final getAndDecrement()I
    .locals 3

    .prologue
    .line 188
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/Atomic$Integer;->get()I

    move-result v0

    .line 189
    .local v0, "current":I
    add-int/lit8 v1, v0, -0x1

    .line 190
    .local v1, "next":I
    invoke-virtual {p0, v0, v1}, Lorg/mapdb/Atomic$Integer;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    return v0
.end method

.method public final getAndIncrement()I
    .locals 3

    .prologue
    .line 174
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/Atomic$Integer;->get()I

    move-result v0

    .line 175
    .local v0, "current":I
    add-int/lit8 v1, v0, 0x1

    .line 176
    .local v1, "next":I
    invoke-virtual {p0, v0, v1}, Lorg/mapdb/Atomic$Integer;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    return v0
.end method

.method public final getAndSet(I)I
    .locals 2
    .param p1, "newValue"    # I

    .prologue
    .line 147
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/Atomic$Integer;->get()I

    move-result v0

    .line 148
    .local v0, "current":I
    invoke-virtual {p0, v0, p1}, Lorg/mapdb/Atomic$Integer;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    return v0
.end method

.method public getRecid()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lorg/mapdb/Atomic$Integer;->recid:J

    return-wide v0
.end method

.method public final incrementAndGet()I
    .locals 3

    .prologue
    .line 217
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/Atomic$Integer;->get()I

    move-result v0

    .line 218
    .local v0, "current":I
    add-int/lit8 v1, v0, 0x1

    .line 219
    .local v1, "next":I
    invoke-virtual {p0, v0, v1}, Lorg/mapdb/Atomic$Integer;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    return v1
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0}, Lorg/mapdb/Atomic$Integer;->get()I

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 267
    invoke-virtual {p0}, Lorg/mapdb/Atomic$Integer;->get()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final set(I)V
    .locals 5
    .param p1, "newValue"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lorg/mapdb/Atomic$Integer;->engine:Lorg/mapdb/Engine;

    iget-wide v2, p0, Lorg/mapdb/Atomic$Integer;->recid:J

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v4, Lorg/mapdb/Serializer;->INTEGER:Lorg/mapdb/Serializer;

    invoke-interface {v0, v2, v3, v1, v4}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 136
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    invoke-virtual {p0}, Lorg/mapdb/Atomic$Integer;->get()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
