.class Lorg/mapdb/HTreeMap$2;
.super Ljava/lang/Object;
.source "HTreeMap.java"

# interfaces
.implements Lorg/mapdb/Serializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/HTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mapdb/Serializer",
        "<",
        "Lorg/mapdb/HTreeMap$LinkedNode",
        "<TK;TV;>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/mapdb/HTreeMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    const-class v0, Lorg/mapdb/HTreeMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/mapdb/HTreeMap$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/mapdb/HTreeMap;)V
    .locals 0

    .prologue
    .line 121
    .local p0, "this":Lorg/mapdb/HTreeMap$2;, "Lorg/mapdb/HTreeMap.2;"
    iput-object p1, p0, Lorg/mapdb/HTreeMap$2;->this$0:Lorg/mapdb/HTreeMap;

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
    .line 121
    .local p0, "this":Lorg/mapdb/HTreeMap$2;, "Lorg/mapdb/HTreeMap.2;"
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/HTreeMap$2;->deserialize(Ljava/io/DataInput;I)Lorg/mapdb/HTreeMap$LinkedNode;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Ljava/io/DataInput;I)Lorg/mapdb/HTreeMap$LinkedNode;
    .locals 8
    .param p1, "in"    # Ljava/io/DataInput;
    .param p2, "available"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            "I)",
            "Lorg/mapdb/HTreeMap$LinkedNode",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/mapdb/HTreeMap$2;, "Lorg/mapdb/HTreeMap.2;"
    const/4 v7, -0x1

    .line 134
    sget-boolean v0, Lorg/mapdb/HTreeMap$2;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 135
    :cond_0
    new-instance v1, Lorg/mapdb/HTreeMap$LinkedNode;

    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackLong(Ljava/io/DataInput;)J

    move-result-wide v2

    iget-object v0, p0, Lorg/mapdb/HTreeMap$2;->this$0:Lorg/mapdb/HTreeMap;

    iget-boolean v0, v0, Lorg/mapdb/HTreeMap;->expireFlag:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackLong(Ljava/io/DataInput;)J

    move-result-wide v4

    :goto_0
    iget-object v0, p0, Lorg/mapdb/HTreeMap$2;->this$0:Lorg/mapdb/HTreeMap;

    iget-object v0, v0, Lorg/mapdb/HTreeMap;->keySerializer:Lorg/mapdb/Serializer;

    invoke-interface {v0, p1, v7}, Lorg/mapdb/Serializer;->deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;

    move-result-object v6

    iget-object v0, p0, Lorg/mapdb/HTreeMap$2;->this$0:Lorg/mapdb/HTreeMap;

    iget-boolean v0, v0, Lorg/mapdb/HTreeMap;->hasValues:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mapdb/HTreeMap$2;->this$0:Lorg/mapdb/HTreeMap;

    iget-object v0, v0, Lorg/mapdb/HTreeMap;->valueSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v0, p1, v7}, Lorg/mapdb/Serializer;->deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;

    move-result-object v7

    :goto_1
    invoke-direct/range {v1 .. v7}, Lorg/mapdb/HTreeMap$LinkedNode;-><init>(JJLjava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_2
    sget-object v7, Lorg/mapdb/BTreeMap;->EMPTY:Ljava/lang/Object;

    goto :goto_1
.end method

.method public fixedSize()I
    .locals 1

    .prologue
    .line 145
    .local p0, "this":Lorg/mapdb/HTreeMap$2;, "Lorg/mapdb/HTreeMap.2;"
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
    .line 121
    .local p0, "this":Lorg/mapdb/HTreeMap$2;, "Lorg/mapdb/HTreeMap.2;"
    check-cast p2, Lorg/mapdb/HTreeMap$LinkedNode;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/HTreeMap$2;->serialize(Ljava/io/DataOutput;Lorg/mapdb/HTreeMap$LinkedNode;)V

    return-void
.end method

.method public serialize(Ljava/io/DataOutput;Lorg/mapdb/HTreeMap$LinkedNode;)V
    .locals 2
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutput;",
            "Lorg/mapdb/HTreeMap$LinkedNode",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lorg/mapdb/HTreeMap$2;, "Lorg/mapdb/HTreeMap.2;"
    .local p2, "value":Lorg/mapdb/HTreeMap$LinkedNode;, "Lorg/mapdb/HTreeMap$LinkedNode<TK;TV;>;"
    iget-wide v0, p2, Lorg/mapdb/HTreeMap$LinkedNode;->next:J

    invoke-static {p1, v0, v1}, Lorg/mapdb/DataOutput2;->packLong(Ljava/io/DataOutput;J)V

    .line 125
    iget-object v0, p0, Lorg/mapdb/HTreeMap$2;->this$0:Lorg/mapdb/HTreeMap;

    iget-boolean v0, v0, Lorg/mapdb/HTreeMap;->expireFlag:Z

    if-eqz v0, :cond_0

    .line 126
    iget-wide v0, p2, Lorg/mapdb/HTreeMap$LinkedNode;->expireLinkNodeRecid:J

    invoke-static {p1, v0, v1}, Lorg/mapdb/DataOutput2;->packLong(Ljava/io/DataOutput;J)V

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/mapdb/HTreeMap$2;->this$0:Lorg/mapdb/HTreeMap;

    iget-object v0, v0, Lorg/mapdb/HTreeMap;->keySerializer:Lorg/mapdb/Serializer;

    iget-object v1, p2, Lorg/mapdb/HTreeMap$LinkedNode;->key:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lorg/mapdb/Serializer;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lorg/mapdb/HTreeMap$2;->this$0:Lorg/mapdb/HTreeMap;

    iget-boolean v0, v0, Lorg/mapdb/HTreeMap;->hasValues:Z

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lorg/mapdb/HTreeMap$2;->this$0:Lorg/mapdb/HTreeMap;

    iget-object v0, v0, Lorg/mapdb/HTreeMap;->valueSerializer:Lorg/mapdb/Serializer;

    iget-object v1, p2, Lorg/mapdb/HTreeMap$LinkedNode;->value:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lorg/mapdb/Serializer;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V

    .line 130
    :cond_1
    return-void
.end method
