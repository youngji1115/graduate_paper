.class public Lorg/mapdb/Queues$SimpleQueue$NodeSerializer;
.super Ljava/lang/Object;
.source "Queues.java"

# interfaces
.implements Lorg/mapdb/Serializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/Queues$SimpleQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "NodeSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mapdb/Serializer",
        "<",
        "Lorg/mapdb/Queues$SimpleQueue$Node",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final serializer:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mapdb/Serializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/Serializer",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue$NodeSerializer;, "Lorg/mapdb/Queues$SimpleQueue$NodeSerializer<TE;>;"
    .local p1, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/mapdb/Queues$SimpleQueue$NodeSerializer;->serializer:Lorg/mapdb/Serializer;

    .line 57
    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/io/DataInput;
    .param p2, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue$NodeSerializer;, "Lorg/mapdb/Queues$SimpleQueue$NodeSerializer<TE;>;"
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/Queues$SimpleQueue$NodeSerializer;->deserialize(Ljava/io/DataInput;I)Lorg/mapdb/Queues$SimpleQueue$Node;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Ljava/io/DataInput;I)Lorg/mapdb/Queues$SimpleQueue$Node;
    .locals 5
    .param p1, "in"    # Ljava/io/DataInput;
    .param p2, "available"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            "I)",
            "Lorg/mapdb/Queues$SimpleQueue$Node",
            "<TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue$NodeSerializer;, "Lorg/mapdb/Queues$SimpleQueue$NodeSerializer<TE;>;"
    if-nez p2, :cond_0

    sget-object v0, Lorg/mapdb/Queues$SimpleQueue$Node;->EMPTY:Lorg/mapdb/Queues$SimpleQueue$Node;

    .line 69
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/mapdb/Queues$SimpleQueue$Node;

    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackLong(Ljava/io/DataInput;)J

    move-result-wide v2

    iget-object v1, p0, Lorg/mapdb/Queues$SimpleQueue$NodeSerializer;->serializer:Lorg/mapdb/Serializer;

    const/4 v4, -0x1

    invoke-interface {v1, p1, v4}, Lorg/mapdb/Serializer;->deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/mapdb/Queues$SimpleQueue$Node;-><init>(JLjava/lang/Object;)V

    goto :goto_0
.end method

.method public fixedSize()I
    .locals 1

    .prologue
    .line 74
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue$NodeSerializer;, "Lorg/mapdb/Queues$SimpleQueue$NodeSerializer<TE;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/DataOutput;
    .param p2, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue$NodeSerializer;, "Lorg/mapdb/Queues$SimpleQueue$NodeSerializer<TE;>;"
    check-cast p2, Lorg/mapdb/Queues$SimpleQueue$Node;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/Queues$SimpleQueue$NodeSerializer;->serialize(Ljava/io/DataOutput;Lorg/mapdb/Queues$SimpleQueue$Node;)V

    return-void
.end method

.method public serialize(Ljava/io/DataOutput;Lorg/mapdb/Queues$SimpleQueue$Node;)V
    .locals 2
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutput;",
            "Lorg/mapdb/Queues$SimpleQueue$Node",
            "<TE;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lorg/mapdb/Queues$SimpleQueue$NodeSerializer;, "Lorg/mapdb/Queues$SimpleQueue$NodeSerializer<TE;>;"
    .local p2, "value":Lorg/mapdb/Queues$SimpleQueue$Node;, "Lorg/mapdb/Queues$SimpleQueue$Node<TE;>;"
    sget-object v0, Lorg/mapdb/Queues$SimpleQueue$Node;->EMPTY:Lorg/mapdb/Queues$SimpleQueue$Node;

    if-ne p2, v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-wide v0, p2, Lorg/mapdb/Queues$SimpleQueue$Node;->next:J

    invoke-static {p1, v0, v1}, Lorg/mapdb/DataOutput2;->packLong(Ljava/io/DataOutput;J)V

    .line 63
    iget-object v0, p0, Lorg/mapdb/Queues$SimpleQueue$NodeSerializer;->serializer:Lorg/mapdb/Serializer;

    iget-object v1, p2, Lorg/mapdb/Queues$SimpleQueue$Node;->value:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lorg/mapdb/Serializer;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V

    goto :goto_0
.end method
