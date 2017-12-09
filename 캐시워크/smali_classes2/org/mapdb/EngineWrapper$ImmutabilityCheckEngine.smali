.class public Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine;
.super Lorg/mapdb/EngineWrapper;
.source "EngineWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/EngineWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImmutabilityCheckEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;
    }
.end annotation


# instance fields
.field protected items:Lorg/mapdb/LongConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/LongConcurrentHashMap",
            "<",
            "Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/mapdb/Engine;)V
    .locals 1
    .param p1, "engine"    # Lorg/mapdb/Engine;

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lorg/mapdb/EngineWrapper;-><init>(Lorg/mapdb/Engine;)V

    .line 269
    new-instance v0, Lorg/mapdb/LongConcurrentHashMap;

    invoke-direct {v0}, Lorg/mapdb/LongConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine;->items:Lorg/mapdb/LongConcurrentHashMap;

    .line 273
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 310
    invoke-super {p0}, Lorg/mapdb/EngineWrapper;->close()V

    .line 311
    iget-object v1, p0, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine;->items:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v1}, Lorg/mapdb/LongConcurrentHashMap;->valuesIterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;

    invoke-virtual {v1}, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;->check()V

    goto :goto_0

    .line 314
    :cond_0
    iget-object v1, p0, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine;->items:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v1}, Lorg/mapdb/LongConcurrentHashMap;->clear()V

    .line 315
    return-void
.end method

.method public compareAndSwap(JLjava/lang/Object;Ljava/lang/Object;Lorg/mapdb/Serializer;)Z
    .locals 5
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
    .line 301
    .local p3, "expectedOldValue":Ljava/lang/Object;, "TA;"
    .local p4, "newValue":Ljava/lang/Object;, "TA;"
    .local p5, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    iget-object v2, p0, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine;->items:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v2, p1, p2}, Lorg/mapdb/LongConcurrentHashMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;

    .line 302
    .local v0, "item":Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;->check()V

    .line 303
    :cond_0
    invoke-super/range {p0 .. p5}, Lorg/mapdb/EngineWrapper;->compareAndSwap(JLjava/lang/Object;Ljava/lang/Object;Lorg/mapdb/Serializer;)Z

    move-result v1

    .line 304
    .local v1, "ret":Z
    if-eqz v1, :cond_1

    if-eqz p4, :cond_1

    iget-object v2, p0, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine;->items:Lorg/mapdb/LongConcurrentHashMap;

    new-instance v3, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;

    invoke-direct {v3, p5, v0}, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;-><init>(Lorg/mapdb/Serializer;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, p2, v3}, Lorg/mapdb/LongConcurrentHashMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_1
    return v1
.end method

.method public get(JLorg/mapdb/Serializer;)Ljava/lang/Object;
    .locals 5
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
    .line 277
    .local p3, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    iget-object v2, p0, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine;->items:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v2, p1, p2}, Lorg/mapdb/LongConcurrentHashMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;

    .line 278
    .local v0, "item":Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;->check()V

    .line 279
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/mapdb/EngineWrapper;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v1

    .line 280
    .local v1, "ret":Ljava/lang/Object;, "TA;"
    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine;->items:Lorg/mapdb/LongConcurrentHashMap;

    new-instance v3, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;

    invoke-direct {v3, p3, v1}, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;-><init>(Lorg/mapdb/Serializer;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, p2, v3}, Lorg/mapdb/LongConcurrentHashMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_1
    return-object v1
.end method

.method public put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J
    .locals 4
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
    .line 286
    .local p1, "value":Ljava/lang/Object;, "TA;"
    .local p2, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    invoke-super {p0, p1, p2}, Lorg/mapdb/EngineWrapper;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v0

    .line 287
    .local v0, "ret":J
    if-eqz p1, :cond_0

    iget-object v2, p0, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine;->items:Lorg/mapdb/LongConcurrentHashMap;

    new-instance v3, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;

    invoke-direct {v3, p2, p1}, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;-><init>(Lorg/mapdb/Serializer;Ljava/lang/Object;)V

    invoke-virtual {v2, v0, v1, v3}, Lorg/mapdb/LongConcurrentHashMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_0
    return-wide v0
.end method

.method public update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V
    .locals 3
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
    .line 293
    .local p3, "value":Ljava/lang/Object;, "TA;"
    .local p4, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    iget-object v1, p0, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine;->items:Lorg/mapdb/LongConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Lorg/mapdb/LongConcurrentHashMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;

    .line 294
    .local v0, "item":Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;->check()V

    .line 295
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/mapdb/EngineWrapper;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 296
    if-eqz p3, :cond_1

    iget-object v1, p0, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine;->items:Lorg/mapdb/LongConcurrentHashMap;

    new-instance v2, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;

    invoke-direct {v2, p4, p3}, Lorg/mapdb/EngineWrapper$ImmutabilityCheckEngine$Item;-><init>(Lorg/mapdb/Serializer;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, p2, v2}, Lorg/mapdb/LongConcurrentHashMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_1
    return-void
.end method
