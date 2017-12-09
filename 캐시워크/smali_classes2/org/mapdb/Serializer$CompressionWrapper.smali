.class public final Lorg/mapdb/Serializer$CompressionWrapper;
.super Ljava/lang/Object;
.source "Serializer.java"

# interfaces
.implements Lorg/mapdb/Serializer;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/Serializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompressionWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mapdb/Serializer",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J = 0x3da0fc228ea59a8aL


# instance fields
.field protected final LZF:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/mapdb/CompressLZF;",
            ">;"
        }
    .end annotation
.end field

.field protected final serializer:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 500
    const-class v0, Lorg/mapdb/Serializer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/mapdb/Serializer$CompressionWrapper;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/mapdb/Serializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/Serializer",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 510
    .local p0, "this":Lorg/mapdb/Serializer$CompressionWrapper;, "Lorg/mapdb/Serializer$CompressionWrapper<TE;>;"
    .local p1, "serializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    new-instance v0, Lorg/mapdb/Serializer$CompressionWrapper$1;

    invoke-direct {v0, p0}, Lorg/mapdb/Serializer$CompressionWrapper$1;-><init>(Lorg/mapdb/Serializer$CompressionWrapper;)V

    iput-object v0, p0, Lorg/mapdb/Serializer$CompressionWrapper;->LZF:Ljava/lang/ThreadLocal;

    .line 511
    iput-object p1, p0, Lorg/mapdb/Serializer$CompressionWrapper;->serializer:Lorg/mapdb/Serializer;

    .line 512
    return-void
.end method

.method protected constructor <init>(Lorg/mapdb/SerializerBase;Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)V
    .locals 1
    .param p1, "serializerBase"    # Lorg/mapdb/SerializerBase;
    .param p2, "is"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 515
    .local p0, "this":Lorg/mapdb/Serializer$CompressionWrapper;, "Lorg/mapdb/Serializer$CompressionWrapper<TE;>;"
    .local p3, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    new-instance v0, Lorg/mapdb/Serializer$CompressionWrapper$1;

    invoke-direct {v0, p0}, Lorg/mapdb/Serializer$CompressionWrapper$1;-><init>(Lorg/mapdb/Serializer$CompressionWrapper;)V

    iput-object v0, p0, Lorg/mapdb/Serializer$CompressionWrapper;->LZF:Ljava/lang/ThreadLocal;

    .line 516
    invoke-virtual {p3, p0}, Lorg/mapdb/SerializerBase$FastArrayList;->add(Ljava/lang/Object;)V

    .line 517
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Serializer;

    iput-object v0, p0, Lorg/mapdb/Serializer$CompressionWrapper;->serializer:Lorg/mapdb/Serializer;

    .line 518
    return-void
.end method


# virtual methods
.method public deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;
    .locals 6
    .param p1, "in"    # Ljava/io/DataInput;
    .param p2, "available"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInput;",
            "I)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 546
    .local p0, "this":Lorg/mapdb/Serializer$CompressionWrapper;, "Lorg/mapdb/Serializer$CompressionWrapper<TE;>;"
    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 547
    .local v3, "unpackedSize":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 549
    iget-object v4, p0, Lorg/mapdb/Serializer$CompressionWrapper;->serializer:Lorg/mapdb/Serializer;

    if-lez p2, :cond_0

    add-int/lit8 p2, p2, -0x1

    .end local p2    # "available":I
    :cond_0
    invoke-interface {v4, p1, p2}, Lorg/mapdb/Serializer;->deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;

    move-result-object v1

    .line 557
    :cond_1
    return-object v1

    .line 552
    .restart local p2    # "available":I
    :cond_2
    new-array v2, v3, [B

    .line 553
    .local v2, "unpacked":[B
    iget-object v4, p0, Lorg/mapdb/Serializer$CompressionWrapper;->LZF:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mapdb/CompressLZF;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v2, v5, v3}, Lorg/mapdb/CompressLZF;->expand(Ljava/io/DataInput;[BII)V

    .line 554
    new-instance v0, Lorg/mapdb/DataInput2;

    invoke-direct {v0, v2}, Lorg/mapdb/DataInput2;-><init>([B)V

    .line 555
    .local v0, "in2":Lorg/mapdb/DataInput2;
    iget-object v4, p0, Lorg/mapdb/Serializer$CompressionWrapper;->serializer:Lorg/mapdb/Serializer;

    invoke-interface {v4, v0, v3}, Lorg/mapdb/Serializer;->deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;

    move-result-object v1

    .line 556
    .local v1, "ret":Ljava/lang/Object;, "TE;"
    sget-boolean v4, Lorg/mapdb/Serializer$CompressionWrapper;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    iget v4, v0, Lorg/mapdb/DataInput2;->pos:I

    if-eq v4, v3, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "data were not fully read"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 562
    .local p0, "this":Lorg/mapdb/Serializer$CompressionWrapper;, "Lorg/mapdb/Serializer$CompressionWrapper<TE;>;"
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    .line 566
    :goto_0
    return v1

    .line 563
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 565
    check-cast v0, Lorg/mapdb/Serializer$CompressionWrapper;

    .line 566
    .local v0, "that":Lorg/mapdb/Serializer$CompressionWrapper;
    iget-object v1, p0, Lorg/mapdb/Serializer$CompressionWrapper;->serializer:Lorg/mapdb/Serializer;

    iget-object v2, v0, Lorg/mapdb/Serializer$CompressionWrapper;->serializer:Lorg/mapdb/Serializer;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public fixedSize()I
    .locals 1

    .prologue
    .line 576
    .local p0, "this":Lorg/mapdb/Serializer$CompressionWrapper;, "Lorg/mapdb/Serializer$CompressionWrapper<TE;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 571
    .local p0, "this":Lorg/mapdb/Serializer$CompressionWrapper;, "Lorg/mapdb/Serializer$CompressionWrapper<TE;>;"
    iget-object v0, p0, Lorg/mapdb/Serializer$CompressionWrapper;->serializer:Lorg/mapdb/Serializer;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V
    .locals 9
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutput;",
            "TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/mapdb/Serializer$CompressionWrapper;, "Lorg/mapdb/Serializer$CompressionWrapper<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v8, 0x0

    .line 523
    new-instance v2, Lorg/mapdb/DataOutput2;

    invoke-direct {v2}, Lorg/mapdb/DataOutput2;-><init>()V

    .line 524
    .local v2, "out2":Lorg/mapdb/DataOutput2;
    iget-object v4, p0, Lorg/mapdb/Serializer$CompressionWrapper;->serializer:Lorg/mapdb/Serializer;

    invoke-interface {v4, v2, p2}, Lorg/mapdb/Serializer;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V

    .line 526
    iget v4, v2, Lorg/mapdb/DataOutput2;->pos:I

    add-int/lit8 v4, v4, 0x29

    new-array v3, v4, [B

    .line 529
    .local v3, "tmp":[B
    :try_start_0
    iget-object v4, p0, Lorg/mapdb/Serializer$CompressionWrapper;->LZF:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mapdb/CompressLZF;

    iget-object v5, v2, Lorg/mapdb/DataOutput2;->buf:[B

    iget v6, v2, Lorg/mapdb/DataOutput2;->pos:I

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v3, v7}, Lorg/mapdb/CompressLZF;->compress([BI[BI)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 533
    .local v1, "newLen":I
    :goto_0
    iget v4, v2, Lorg/mapdb/DataOutput2;->pos:I

    if-lt v1, v4, :cond_0

    .line 535
    invoke-static {p1, v8}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 536
    iget-object v4, v2, Lorg/mapdb/DataOutput2;->buf:[B

    iget v5, v2, Lorg/mapdb/DataOutput2;->pos:I

    invoke-interface {p1, v4, v8, v5}, Ljava/io/DataOutput;->write([BII)V

    .line 542
    :goto_1
    return-void

    .line 530
    .end local v1    # "newLen":I
    :catch_0
    move-exception v0

    .line 531
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    .restart local v1    # "newLen":I
    goto :goto_0

    .line 540
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    iget v4, v2, Lorg/mapdb/DataOutput2;->pos:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {p1, v4}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 541
    invoke-interface {p1, v3, v8, v1}, Ljava/io/DataOutput;->write([BII)V

    goto :goto_1
.end method
