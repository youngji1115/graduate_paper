.class public Lorg/mapdb/Queues$Queue;
.super Lorg/mapdb/Queues$SimpleQueue;
.source "Queues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/Queues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Queue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/mapdb/Queues$SimpleQueue",
        "<TE;>;"
    }
.end annotation


# instance fields
.field protected final tail:Lorg/mapdb/Atomic$Long;


# direct methods
.method public constructor <init>(Lorg/mapdb/Engine;Lorg/mapdb/Serializer;JJZ)V
    .locals 7
    .param p1, "engine"    # Lorg/mapdb/Engine;
    .param p3, "headerRecid"    # J
    .param p5, "nextTailRecid"    # J
    .param p7, "useLocks"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/Engine;",
            "Lorg/mapdb/Serializer",
            "<TE;>;JJZ)V"
        }
    .end annotation

    .prologue
    .line 386
    .local p0, "this":Lorg/mapdb/Queues$Queue;, "Lorg/mapdb/Queues$Queue<TE;>;"
    .local p2, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TE;>;"
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p7

    invoke-direct/range {v1 .. v6}, Lorg/mapdb/Queues$SimpleQueue;-><init>(Lorg/mapdb/Engine;Lorg/mapdb/Serializer;JZ)V

    .line 387
    new-instance v0, Lorg/mapdb/Atomic$Long;

    invoke-direct {v0, p1, p5, p6}, Lorg/mapdb/Atomic$Long;-><init>(Lorg/mapdb/Engine;J)V

    iput-object v0, p0, Lorg/mapdb/Queues$Queue;->tail:Lorg/mapdb/Atomic$Long;

    .line 388
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 392
    .local p0, "this":Lorg/mapdb/Queues$Queue;, "Lorg/mapdb/Queues$Queue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lorg/mapdb/Queues$Queue;->engine:Lorg/mapdb/Engine;

    sget-object v6, Lorg/mapdb/Queues$SimpleQueue$Node;->EMPTY:Lorg/mapdb/Queues$SimpleQueue$Node;

    iget-object v7, p0, Lorg/mapdb/Queues$Queue;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v1, v6, v7}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v2

    .line 393
    .local v2, "nextTail":J
    iget-object v1, p0, Lorg/mapdb/Queues$Queue;->tail:Lorg/mapdb/Atomic$Long;

    invoke-virtual {v1}, Lorg/mapdb/Atomic$Long;->get()J

    move-result-wide v4

    .line 394
    .local v4, "tail2":J
    :goto_0
    iget-object v1, p0, Lorg/mapdb/Queues$Queue;->tail:Lorg/mapdb/Atomic$Long;

    invoke-virtual {v1, v4, v5, v2, v3}, Lorg/mapdb/Atomic$Long;->compareAndSet(JJ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 395
    iget-object v1, p0, Lorg/mapdb/Queues$Queue;->tail:Lorg/mapdb/Atomic$Long;

    invoke-virtual {v1}, Lorg/mapdb/Atomic$Long;->get()J

    move-result-wide v4

    goto :goto_0

    .line 398
    :cond_0
    new-instance v0, Lorg/mapdb/Queues$SimpleQueue$Node;

    invoke-direct {v0, v2, v3, p1}, Lorg/mapdb/Queues$SimpleQueue$Node;-><init>(JLjava/lang/Object;)V

    .line 399
    .local v0, "n":Lorg/mapdb/Queues$SimpleQueue$Node;, "Lorg/mapdb/Queues$SimpleQueue$Node<TE;>;"
    iget-object v1, p0, Lorg/mapdb/Queues$Queue;->engine:Lorg/mapdb/Engine;

    iget-object v6, p0, Lorg/mapdb/Queues$Queue;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v1, v4, v5, v0, v6}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 400
    const/4 v1, 0x1

    return v1
.end method
