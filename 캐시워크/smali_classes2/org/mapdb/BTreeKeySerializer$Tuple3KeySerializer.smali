.class public Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;
.super Lorg/mapdb/BTreeKeySerializer;
.source "BTreeKeySerializer.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/BTreeKeySerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tuple3KeySerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/mapdb/BTreeKeySerializer",
        "<",
        "Lorg/mapdb/Fun$Tuple3",
        "<TA;TB;TC;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J = 0x28b22154f4be931dL


# instance fields
.field protected final aComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TA;>;"
        }
    .end annotation
.end field

.field protected final aSerializer:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<TA;>;"
        }
    .end annotation
.end field

.field protected final bComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TB;>;"
        }
    .end annotation
.end field

.field protected final bSerializer:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<TB;>;"
        }
    .end annotation
.end field

.field protected final cSerializer:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<TC;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 412
    const-class v0, Lorg/mapdb/BTreeKeySerializer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TA;>;",
            "Ljava/util/Comparator",
            "<TB;>;",
            "Lorg/mapdb/Serializer",
            "<TA;>;",
            "Lorg/mapdb/Serializer",
            "<TB;>;",
            "Lorg/mapdb/Serializer",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 432
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer<TA;TB;TC;>;"
    .local p1, "aComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TA;>;"
    .local p2, "bComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TB;>;"
    .local p3, "aSerializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    .local p4, "bSerializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TB;>;"
    .local p5, "cSerializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TC;>;"
    invoke-direct {p0}, Lorg/mapdb/BTreeKeySerializer;-><init>()V

    .line 433
    iput-object p1, p0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->aComparator:Ljava/util/Comparator;

    .line 434
    iput-object p2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->bComparator:Ljava/util/Comparator;

    .line 435
    iput-object p3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    .line 436
    iput-object p4, p0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    .line 437
    iput-object p5, p0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    .line 438
    return-void
.end method

.method constructor <init>(Lorg/mapdb/SerializerBase;Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)V
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
    .line 441
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer<TA;TB;TC;>;"
    .local p3, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lorg/mapdb/BTreeKeySerializer;-><init>()V

    .line 442
    invoke-virtual {p3, p0}, Lorg/mapdb/SerializerBase$FastArrayList;->add(Ljava/lang/Object;)V

    .line 443
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->aComparator:Ljava/util/Comparator;

    .line 444
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->bComparator:Ljava/util/Comparator;

    .line 445
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Serializer;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    .line 446
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Serializer;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    .line 447
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Serializer;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    .line 448
    return-void
.end method


# virtual methods
.method public deserialize(Ljava/io/DataInput;III)[Ljava/lang/Object;
    .locals 9
    .param p1, "in"    # Ljava/io/DataInput;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer<TA;TB;TC;>;"
    const/4 v8, -0x1

    .line 490
    new-array v6, p4, [Ljava/lang/Object;

    .line 491
    .local v6, "ret":[Ljava/lang/Object;
    const/4 v0, 0x0

    .line 492
    .local v0, "a":Ljava/lang/Object;, "TA;"
    const/4 v1, 0x0

    .line 493
    .local v1, "acount":I
    const/4 v2, 0x0

    .line 494
    .local v2, "b":Ljava/lang/Object;, "TB;"
    const/4 v3, 0x0

    .line 496
    .local v3, "bcount":I
    move v5, p2

    .end local v0    # "a":Ljava/lang/Object;, "TA;"
    .end local v2    # "b":Ljava/lang/Object;, "TB;"
    .local v5, "i":I
    :goto_0
    if-ge v5, p3, :cond_2

    .line 497
    if-nez v1, :cond_0

    .line 499
    iget-object v7, p0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v7, p1, v8}, Lorg/mapdb/Serializer;->deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;

    move-result-object v0

    .line 500
    .restart local v0    # "a":Ljava/lang/Object;, "TA;"
    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v1

    .line 502
    .end local v0    # "a":Ljava/lang/Object;, "TA;"
    :cond_0
    if-nez v3, :cond_1

    .line 504
    iget-object v7, p0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v7, p1, v8}, Lorg/mapdb/Serializer;->deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;

    move-result-object v2

    .line 505
    .restart local v2    # "b":Ljava/lang/Object;, "TB;"
    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v3

    .line 507
    .end local v2    # "b":Ljava/lang/Object;, "TB;"
    :cond_1
    iget-object v7, p0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v7, p1, v8}, Lorg/mapdb/Serializer;->deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;

    move-result-object v4

    .line 508
    .local v4, "c":Ljava/lang/Object;, "TC;"
    invoke-static {v0, v2, v4}, Lorg/mapdb/Fun;->t3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple3;

    move-result-object v7

    aput-object v7, v6, v5

    .line 509
    add-int/lit8 v1, v1, -0x1

    .line 510
    add-int/lit8 v3, v3, -0x1

    .line 496
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 512
    .end local v4    # "c":Ljava/lang/Object;, "TC;"
    :cond_2
    sget-boolean v7, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->$assertionsDisabled:Z

    if-nez v7, :cond_3

    if-eqz v1, :cond_3

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 513
    :cond_3
    sget-boolean v7, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->$assertionsDisabled:Z

    if-nez v7, :cond_4

    if-eqz v3, :cond_4

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 515
    :cond_4
    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer<TA;TB;TC;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 526
    if-ne p0, p1, :cond_1

    .line 531
    :cond_0
    :goto_0
    return v1

    .line 527
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 529
    check-cast v0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;

    .line 531
    .local v0, "t":Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;
    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->aComparator:Ljava/util/Comparator;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->aComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->bComparator:Ljava/util/Comparator;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->bComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lorg/mapdb/Fun$Tuple3",
            "<TA;TB;TC;>;>;"
        }
    .end annotation

    .prologue
    .line 520
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer<TA;TB;TC;>;"
    sget-object v0, Lorg/mapdb/BTreeMap;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer<TA;TB;TC;>;"
    const/4 v1, 0x0

    .line 541
    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->aComparator:Ljava/util/Comparator;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->aComparator:Ljava/util/Comparator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 542
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->bComparator:Ljava/util/Comparator;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->bComparator:Ljava/util/Comparator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 543
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 544
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 545
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 546
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 541
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 542
    goto :goto_1

    :cond_3
    move v2, v1

    .line 543
    goto :goto_2

    :cond_4
    move v2, v1

    .line 544
    goto :goto_3
.end method

.method public serialize(Ljava/io/DataOutput;II[Ljava/lang/Object;)V
    .locals 7
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "keys"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 453
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer<TA;TB;TC;>;"
    const/4 v0, 0x0

    .line 454
    .local v0, "acount":I
    const/4 v1, 0x0

    .line 455
    .local v1, "bcount":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_4

    .line 456
    aget-object v3, p4, v2

    check-cast v3, Lorg/mapdb/Fun$Tuple3;

    .line 457
    .local v3, "t":Lorg/mapdb/Fun$Tuple3;, "Lorg/mapdb/Fun$Tuple3<TA;TB;TC;>;"
    if-nez v0, :cond_1

    .line 459
    iget-object v4, p0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    iget-object v5, v3, Lorg/mapdb/Fun$Tuple3;->a:Ljava/lang/Object;

    invoke-interface {v4, p1, v5}, Lorg/mapdb/Serializer;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V

    .line 461
    const/4 v0, 0x1

    .line 462
    :goto_1
    add-int v4, v2, v0

    if-ge v4, p3, :cond_0

    iget-object v5, p0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->aComparator:Ljava/util/Comparator;

    iget-object v6, v3, Lorg/mapdb/Fun$Tuple3;->a:Ljava/lang/Object;

    add-int v4, v2, v0

    aget-object v4, p4, v4

    check-cast v4, Lorg/mapdb/Fun$Tuple3;

    iget-object v4, v4, Lorg/mapdb/Fun$Tuple3;->a:Ljava/lang/Object;

    invoke-interface {v5, v6, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_0

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 465
    :cond_0
    invoke-static {p1, v0}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 467
    :cond_1
    if-nez v1, :cond_3

    .line 469
    iget-object v4, p0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    iget-object v5, v3, Lorg/mapdb/Fun$Tuple3;->b:Ljava/lang/Object;

    invoke-interface {v4, p1, v5}, Lorg/mapdb/Serializer;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V

    .line 471
    const/4 v1, 0x1

    .line 472
    :goto_2
    add-int v4, v2, v1

    if-ge v4, p3, :cond_2

    iget-object v5, p0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->bComparator:Ljava/util/Comparator;

    iget-object v6, v3, Lorg/mapdb/Fun$Tuple3;->b:Ljava/lang/Object;

    add-int v4, v2, v1

    aget-object v4, p4, v4

    check-cast v4, Lorg/mapdb/Fun$Tuple3;

    iget-object v4, v4, Lorg/mapdb/Fun$Tuple3;->b:Ljava/lang/Object;

    invoke-interface {v5, v6, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_2

    .line 473
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 475
    :cond_2
    invoke-static {p1, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 479
    :cond_3
    iget-object v4, p0, Lorg/mapdb/BTreeKeySerializer$Tuple3KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    iget-object v5, v3, Lorg/mapdb/Fun$Tuple3;->c:Ljava/lang/Object;

    invoke-interface {v4, p1, v5}, Lorg/mapdb/Serializer;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V

    .line 481
    add-int/lit8 v0, v0, -0x1

    .line 482
    add-int/lit8 v1, v1, -0x1

    .line 455
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 486
    .end local v3    # "t":Lorg/mapdb/Fun$Tuple3;, "Lorg/mapdb/Fun$Tuple3<TA;TB;TC;>;"
    :cond_4
    return-void
.end method
