.class final Lorg/mapdb/Serializer$9;
.super Ljava/lang/Object;
.source "Serializer.java"

# interfaces
.implements Lorg/mapdb/Serializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/Serializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mapdb/Serializer",
        "<[B>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 280
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
    .line 280
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/Serializer$9;->deserialize(Ljava/io/DataInput;I)[B

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Ljava/io/DataInput;I)[B
    .locals 2
    .param p1, "in"    # Ljava/io/DataInput;
    .param p2, "available"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v1

    .line 291
    .local v1, "size":I
    new-array v0, v1, [B

    .line 292
    .local v0, "ret":[B
    invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V

    .line 293
    return-object v0
.end method

.method public fixedSize()I
    .locals 1

    .prologue
    .line 298
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
    .line 280
    check-cast p2, [B

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/Serializer$9;->serialize(Ljava/io/DataOutput;[B)V

    return-void
.end method

.method public serialize(Ljava/io/DataOutput;[B)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    array-length v0, p2

    invoke-static {p1, v0}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 285
    invoke-interface {p1, p2}, Ljava/io/DataOutput;->write([B)V

    .line 286
    return-void
.end method
