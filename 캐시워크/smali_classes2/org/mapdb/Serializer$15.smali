.class final Lorg/mapdb/Serializer$15;
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
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;
    .locals 3
    .param p1, "in"    # Ljava/io/DataInput;
    .param p2, "available"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 465
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    check-cast p1, Ljava/io/InputStream;

    .end local p1    # "in":Ljava/io/DataInput;
    invoke-direct {v1, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 466
    .local v1, "in2":Ljava/io/ObjectInputStream;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 467
    .end local v1    # "in2":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public fixedSize()I
    .locals 1

    .prologue
    .line 474
    const/4 v0, -0x1

    return v0
.end method

.method public serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 457
    new-instance v0, Ljava/io/ObjectOutputStream;

    check-cast p1, Ljava/io/OutputStream;

    .end local p1    # "out":Ljava/io/DataOutput;
    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 458
    .local v0, "out2":Ljava/io/ObjectOutputStream;
    invoke-virtual {v0, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 459
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 460
    return-void
.end method
