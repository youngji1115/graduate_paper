.class final Lorg/mapdb/SerializerPojo$1;
.super Ljava/lang/Object;
.source "SerializerPojo.java"

# interfaces
.implements Lorg/mapdb/Serializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/SerializerPojo;
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
        "Ljava/util/concurrent/CopyOnWriteArrayList",
        "<",
        "Lorg/mapdb/SerializerPojo$ClassInfo;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
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
    .line 39
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/SerializerPojo$1;->deserialize(Ljava/io/DataInput;I)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Ljava/io/DataInput;I)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 14
    .param p1, "in"    # Ljava/io/DataInput;
    .param p2, "available"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            "I)",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lorg/mapdb/SerializerPojo$ClassInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    if-nez p2, :cond_0

    new-instance v9, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 78
    :goto_0
    return-object v9

    .line 63
    :cond_0
    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v8

    .line 64
    .local v8, "size":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    .local v7, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/mapdb/SerializerPojo$ClassInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v8, :cond_3

    .line 67
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "className":Ljava/lang/String;
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v4

    .line 69
    .local v4, "isEnum":Z
    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v5

    .line 71
    .local v5, "isExternalizable":Z
    if-eqz v5, :cond_1

    const/4 v2, 0x0

    .line 72
    .local v2, "fieldsNum":I
    :goto_2
    new-array v1, v2, [Lorg/mapdb/SerializerPojo$FieldInfo;

    .line 73
    .local v1, "fields":[Lorg/mapdb/SerializerPojo$FieldInfo;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    if-ge v6, v2, :cond_2

    .line 74
    new-instance v9, Lorg/mapdb/SerializerPojo$FieldInfo;

    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1}, Ljava/io/DataInput;->readBoolean()Z

    move-result v11

    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0}, Lorg/mapdb/SerializerPojo;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/mapdb/SerializerPojo$FieldInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Class;)V

    aput-object v9, v1, v6

    .line 73
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 71
    .end local v1    # "fields":[Lorg/mapdb/SerializerPojo$FieldInfo;
    .end local v2    # "fieldsNum":I
    .end local v6    # "j":I
    :cond_1
    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v2

    goto :goto_2

    .line 76
    .restart local v1    # "fields":[Lorg/mapdb/SerializerPojo$FieldInfo;
    .restart local v2    # "fieldsNum":I
    .restart local v6    # "j":I
    :cond_2
    new-instance v9, Lorg/mapdb/SerializerPojo$ClassInfo;

    invoke-direct {v9, v0, v1, v4, v5}, Lorg/mapdb/SerializerPojo$ClassInfo;-><init>(Ljava/lang/String;[Lorg/mapdb/SerializerPojo$FieldInfo;ZZ)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 78
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "fields":[Lorg/mapdb/SerializerPojo$FieldInfo;
    .end local v2    # "fieldsNum":I
    .end local v4    # "isEnum":Z
    .end local v5    # "isExternalizable":Z
    .end local v6    # "j":I
    :cond_3
    new-instance v9, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v9, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public fixedSize()I
    .locals 1

    .prologue
    .line 83
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
    .line 39
    check-cast p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/SerializerPojo$1;->serialize(Ljava/io/DataOutput;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    return-void
.end method

.method public serialize(Ljava/io/DataOutput;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 5
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutput;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lorg/mapdb/SerializerPojo$ClassInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "obj":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lorg/mapdb/SerializerPojo$ClassInfo;>;"
    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    invoke-static {p1, v4}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 44
    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/SerializerPojo$ClassInfo;

    .line 45
    .local v0, "ci":Lorg/mapdb/SerializerPojo$ClassInfo;
    iget-object v4, v0, Lorg/mapdb/SerializerPojo$ClassInfo;->name:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 46
    iget-boolean v4, v0, Lorg/mapdb/SerializerPojo$ClassInfo;->isEnum:Z

    invoke-interface {p1, v4}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 47
    iget-boolean v4, v0, Lorg/mapdb/SerializerPojo$ClassInfo;->useObjectStream:Z

    invoke-interface {p1, v4}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 48
    iget-boolean v4, v0, Lorg/mapdb/SerializerPojo$ClassInfo;->useObjectStream:Z

    if-nez v4, :cond_0

    .line 50
    iget-object v4, v0, Lorg/mapdb/SerializerPojo$ClassInfo;->fields:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {p1, v4}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 51
    iget-object v4, v0, Lorg/mapdb/SerializerPojo$ClassInfo;->fields:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapdb/SerializerPojo$FieldInfo;

    .line 52
    .local v1, "fi":Lorg/mapdb/SerializerPojo$FieldInfo;
    iget-object v4, v1, Lorg/mapdb/SerializerPojo$FieldInfo;->name:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 53
    iget-boolean v4, v1, Lorg/mapdb/SerializerPojo$FieldInfo;->primitive:Z

    invoke-interface {p1, v4}, Ljava/io/DataOutput;->writeBoolean(Z)V

    .line 54
    iget-object v4, v1, Lorg/mapdb/SerializerPojo$FieldInfo;->type:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    .end local v0    # "ci":Lorg/mapdb/SerializerPojo$ClassInfo;
    .end local v1    # "fi":Lorg/mapdb/SerializerPojo$FieldInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
