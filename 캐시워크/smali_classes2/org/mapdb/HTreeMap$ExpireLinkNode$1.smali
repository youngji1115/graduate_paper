.class final Lorg/mapdb/HTreeMap$ExpireLinkNode$1;
.super Ljava/lang/Object;
.source "HTreeMap.java"

# interfaces
.implements Lorg/mapdb/Serializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/HTreeMap$ExpireLinkNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mapdb/Serializer",
        "<",
        "Lorg/mapdb/HTreeMap$ExpireLinkNode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 1272
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/HTreeMap$ExpireLinkNode$1;->deserialize(Ljava/io/DataInput;I)Lorg/mapdb/HTreeMap$ExpireLinkNode;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Ljava/io/DataInput;I)Lorg/mapdb/HTreeMap$ExpireLinkNode;
    .locals 11
    .param p1, "in"    # Ljava/io/DataInput;
    .param p2, "available"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1285
    if-nez p2, :cond_0

    sget-object v1, Lorg/mapdb/HTreeMap$ExpireLinkNode;->EMPTY:Lorg/mapdb/HTreeMap$ExpireLinkNode;

    .line 1286
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/mapdb/HTreeMap$ExpireLinkNode;

    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackLong(Ljava/io/DataInput;)J

    move-result-wide v2

    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackLong(Ljava/io/DataInput;)J

    move-result-wide v4

    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackLong(Ljava/io/DataInput;)J

    move-result-wide v6

    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackLong(Ljava/io/DataInput;)J

    move-result-wide v8

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v10

    invoke-direct/range {v1 .. v10}, Lorg/mapdb/HTreeMap$ExpireLinkNode;-><init>(JJJJI)V

    goto :goto_0
.end method

.method public fixedSize()I
    .locals 1

    .prologue
    .line 1294
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
    .line 1272
    check-cast p2, Lorg/mapdb/HTreeMap$ExpireLinkNode;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/HTreeMap$ExpireLinkNode$1;->serialize(Ljava/io/DataOutput;Lorg/mapdb/HTreeMap$ExpireLinkNode;)V

    return-void
.end method

.method public serialize(Ljava/io/DataOutput;Lorg/mapdb/HTreeMap$ExpireLinkNode;)V
    .locals 2
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "value"    # Lorg/mapdb/HTreeMap$ExpireLinkNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1275
    sget-object v0, Lorg/mapdb/HTreeMap$ExpireLinkNode;->EMPTY:Lorg/mapdb/HTreeMap$ExpireLinkNode;

    if-ne p2, v0, :cond_0

    .line 1281
    :goto_0
    return-void

    .line 1276
    :cond_0
    iget-wide v0, p2, Lorg/mapdb/HTreeMap$ExpireLinkNode;->prev:J

    invoke-static {p1, v0, v1}, Lorg/mapdb/DataOutput2;->packLong(Ljava/io/DataOutput;J)V

    .line 1277
    iget-wide v0, p2, Lorg/mapdb/HTreeMap$ExpireLinkNode;->next:J

    invoke-static {p1, v0, v1}, Lorg/mapdb/DataOutput2;->packLong(Ljava/io/DataOutput;J)V

    .line 1278
    iget-wide v0, p2, Lorg/mapdb/HTreeMap$ExpireLinkNode;->keyRecid:J

    invoke-static {p1, v0, v1}, Lorg/mapdb/DataOutput2;->packLong(Ljava/io/DataOutput;J)V

    .line 1279
    iget-wide v0, p2, Lorg/mapdb/HTreeMap$ExpireLinkNode;->time:J

    invoke-static {p1, v0, v1}, Lorg/mapdb/DataOutput2;->packLong(Ljava/io/DataOutput;J)V

    .line 1280
    iget v0, p2, Lorg/mapdb/HTreeMap$ExpireLinkNode;->hash:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_0
.end method
