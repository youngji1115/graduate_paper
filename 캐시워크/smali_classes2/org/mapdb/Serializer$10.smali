.class final Lorg/mapdb/Serializer$10;
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
    .line 307
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
    .line 307
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/Serializer$10;->deserialize(Ljava/io/DataInput;I)[B

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Ljava/io/DataInput;I)[B
    .locals 3
    .param p1, "in"    # Ljava/io/DataInput;
    .param p2, "available"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "BYTE_ARRAY_NOSIZE does not work with collections."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 318
    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x0

    .line 321
    :goto_0
    return-object v0

    .line 319
    :cond_1
    new-array v0, p2, [B

    .line 320
    .local v0, "ret":[B
    invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V

    goto :goto_0
.end method

.method public fixedSize()I
    .locals 1

    .prologue
    .line 326
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
    .line 307
    check-cast p2, [B

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/Serializer$10;->serialize(Ljava/io/DataOutput;[B)V

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
    .line 311
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    invoke-interface {p1, p2}, Ljava/io/DataOutput;->write([B)V

    goto :goto_0
.end method
