.class public Lorg/mapdb/Queues$Stack;
.super Lorg/mapdb/Queues$SimpleQueue;
.source "Queues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/Queues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stack"
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


# direct methods
.method public constructor <init>(Lorg/mapdb/Engine;Lorg/mapdb/Serializer;JZ)V
    .locals 1
    .param p1, "engine"    # Lorg/mapdb/Engine;
    .param p3, "headerRecidRef"    # J
    .param p5, "useLocks"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/Engine;",
            "Lorg/mapdb/Serializer",
            "<TE;>;JZ)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p0, "this":Lorg/mapdb/Queues$Stack;, "Lorg/mapdb/Queues$Stack<TE;>;"
    .local p2, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TE;>;"
    invoke-direct/range {p0 .. p5}, Lorg/mapdb/Queues$SimpleQueue;-><init>(Lorg/mapdb/Engine;Lorg/mapdb/Serializer;JZ)V

    .line 357
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 361
    .local p0, "this":Lorg/mapdb/Queues$Stack;, "Lorg/mapdb/Queues$Stack<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Lorg/mapdb/Queues$Stack;->head:Lorg/mapdb/Atomic$Long;

    invoke-virtual {v3}, Lorg/mapdb/Atomic$Long;->get()J

    move-result-wide v0

    .line 362
    .local v0, "head2":J
    new-instance v2, Lorg/mapdb/Queues$SimpleQueue$Node;

    invoke-direct {v2, v0, v1, p1}, Lorg/mapdb/Queues$SimpleQueue$Node;-><init>(JLjava/lang/Object;)V

    .line 363
    .local v2, "n":Lorg/mapdb/Queues$SimpleQueue$Node;, "Lorg/mapdb/Queues$SimpleQueue$Node<TE;>;"
    iget-object v3, p0, Lorg/mapdb/Queues$Stack;->engine:Lorg/mapdb/Engine;

    iget-object v6, p0, Lorg/mapdb/Queues$Stack;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v3, v2, v6}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v4

    .line 364
    .local v4, "recid":J
    :goto_0
    iget-object v3, p0, Lorg/mapdb/Queues$Stack;->head:Lorg/mapdb/Atomic$Long;

    invoke-virtual {v3, v0, v1, v4, v5}, Lorg/mapdb/Atomic$Long;->compareAndSet(JJ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 366
    iget-object v3, p0, Lorg/mapdb/Queues$Stack;->head:Lorg/mapdb/Atomic$Long;

    invoke-virtual {v3}, Lorg/mapdb/Atomic$Long;->get()J

    move-result-wide v0

    .line 367
    new-instance v2, Lorg/mapdb/Queues$SimpleQueue$Node;

    .end local v2    # "n":Lorg/mapdb/Queues$SimpleQueue$Node;, "Lorg/mapdb/Queues$SimpleQueue$Node<TE;>;"
    invoke-direct {v2, v0, v1, p1}, Lorg/mapdb/Queues$SimpleQueue$Node;-><init>(JLjava/lang/Object;)V

    .line 368
    .restart local v2    # "n":Lorg/mapdb/Queues$SimpleQueue$Node;, "Lorg/mapdb/Queues$SimpleQueue$Node<TE;>;"
    iget-object v3, p0, Lorg/mapdb/Queues$Stack;->engine:Lorg/mapdb/Engine;

    iget-object v6, p0, Lorg/mapdb/Queues$Stack;->nodeSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v3, v4, v5, v2, v6}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    goto :goto_0

    .line 370
    :cond_0
    const/4 v3, 0x1

    return v3
.end method
