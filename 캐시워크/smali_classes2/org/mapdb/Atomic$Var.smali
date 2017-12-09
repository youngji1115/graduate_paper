.class public final Lorg/mapdb/Atomic$Var;
.super Ljava/lang/Object;
.source "Atomic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/Atomic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Var"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final engine:Lorg/mapdb/Engine;

.field protected final recid:J

.field protected final serializer:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mapdb/Engine;JLorg/mapdb/Serializer;)V
    .locals 0
    .param p1, "engine"    # Lorg/mapdb/Engine;
    .param p2, "recid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/Engine;",
            "J",
            "Lorg/mapdb/Serializer",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 632
    .local p0, "this":Lorg/mapdb/Atomic$Var;, "Lorg/mapdb/Atomic$Var<TE;>;"
    .local p4, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 633
    iput-object p1, p0, Lorg/mapdb/Atomic$Var;->engine:Lorg/mapdb/Engine;

    .line 634
    iput-wide p2, p0, Lorg/mapdb/Atomic$Var;->recid:J

    .line 635
    iput-object p4, p0, Lorg/mapdb/Atomic$Var;->serializer:Lorg/mapdb/Serializer;

    .line 636
    return-void
.end method

.method protected constructor <init>(Lorg/mapdb/Engine;Lorg/mapdb/SerializerBase;Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)V
    .locals 2
    .param p1, "engine"    # Lorg/mapdb/Engine;
    .param p2, "serializerBase"    # Lorg/mapdb/SerializerBase;
    .param p3, "is"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/Engine;",
            "Lorg/mapdb/SerializerBase;",
            "Ljava/io/DataInput;",
            "Lorg/mapdb/SerializerBase$FastArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 639
    .local p0, "this":Lorg/mapdb/Atomic$Var;, "Lorg/mapdb/Atomic$Var<TE;>;"
    .local p4, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    invoke-virtual {p4, p0}, Lorg/mapdb/SerializerBase$FastArrayList;->add(Ljava/lang/Object;)V

    .line 641
    iput-object p1, p0, Lorg/mapdb/Atomic$Var;->engine:Lorg/mapdb/Engine;

    .line 642
    invoke-static {p3}, Lorg/mapdb/DataInput2;->unpackLong(Ljava/io/DataInput;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mapdb/Atomic$Var;->recid:J

    .line 643
    invoke-virtual {p2, p3, p4}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Serializer;

    iput-object v0, p0, Lorg/mapdb/Atomic$Var;->serializer:Lorg/mapdb/Serializer;

    .line 644
    return-void
.end method


# virtual methods
.method public final compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)Z"
        }
    .end annotation

    .prologue
    .line 678
    .local p0, "this":Lorg/mapdb/Atomic$Var;, "Lorg/mapdb/Atomic$Var<TE;>;"
    .local p1, "expect":Ljava/lang/Object;, "TE;"
    .local p2, "update":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lorg/mapdb/Atomic$Var;->engine:Lorg/mapdb/Engine;

    iget-wide v2, p0, Lorg/mapdb/Atomic$Var;->recid:J

    iget-object v6, p0, Lorg/mapdb/Atomic$Var;->serializer:Lorg/mapdb/Serializer;

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v1 .. v6}, Lorg/mapdb/Engine;->compareAndSwap(JLjava/lang/Object;Ljava/lang/Object;Lorg/mapdb/Serializer;)Z

    move-result v0

    return v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 665
    .local p0, "this":Lorg/mapdb/Atomic$Var;, "Lorg/mapdb/Atomic$Var<TE;>;"
    iget-object v0, p0, Lorg/mapdb/Atomic$Var;->engine:Lorg/mapdb/Engine;

    iget-wide v2, p0, Lorg/mapdb/Atomic$Var;->recid:J

    iget-object v1, p0, Lorg/mapdb/Atomic$Var;->serializer:Lorg/mapdb/Serializer;

    invoke-interface {v0, v2, v3, v1}, Lorg/mapdb/Engine;->get(JLorg/mapdb/Serializer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getAndSet(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 700
    .local p0, "this":Lorg/mapdb/Atomic$Var;, "Lorg/mapdb/Atomic$Var<TE;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TE;"
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/Atomic$Var;->get()Ljava/lang/Object;

    move-result-object v0

    .line 701
    .local v0, "current":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0, p1}, Lorg/mapdb/Atomic$Var;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 702
    return-object v0
.end method

.method public getRecid()J
    .locals 2

    .prologue
    .line 650
    .local p0, "this":Lorg/mapdb/Atomic$Var;, "Lorg/mapdb/Atomic$Var<TE;>;"
    iget-wide v0, p0, Lorg/mapdb/Atomic$Var;->recid:J

    return-wide v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 688
    .local p0, "this":Lorg/mapdb/Atomic$Var;, "Lorg/mapdb/Atomic$Var<TE;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/mapdb/Atomic$Var;->engine:Lorg/mapdb/Engine;

    iget-wide v2, p0, Lorg/mapdb/Atomic$Var;->recid:J

    iget-object v1, p0, Lorg/mapdb/Atomic$Var;->serializer:Lorg/mapdb/Serializer;

    invoke-interface {v0, v2, v3, p1, v1}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 689
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 655
    .local p0, "this":Lorg/mapdb/Atomic$Var;, "Lorg/mapdb/Atomic$Var<TE;>;"
    invoke-virtual {p0}, Lorg/mapdb/Atomic$Var;->get()Ljava/lang/Object;

    move-result-object v0

    .line 656
    .local v0, "v":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
