.class public Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;
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
    name = "Tuple4KeySerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/mapdb/BTreeKeySerializer",
        "<",
        "Lorg/mapdb/Fun$Tuple4",
        "<TA;TB;TC;TD;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J = -0x1979ef215e32b552L


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

.field protected final cComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TC;>;"
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

.field protected final dSerializer:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<TD;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 573
    const-class v0, Lorg/mapdb/BTreeKeySerializer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;Ljava/util/Comparator;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<TA;>;",
            "Ljava/util/Comparator",
            "<TB;>;",
            "Ljava/util/Comparator",
            "<TC;>;",
            "Lorg/mapdb/Serializer",
            "<TA;>;",
            "Lorg/mapdb/Serializer",
            "<TB;>;",
            "Lorg/mapdb/Serializer",
            "<TC;>;",
            "Lorg/mapdb/Serializer",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 597
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer<TA;TB;TC;TD;>;"
    .local p1, "aComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TA;>;"
    .local p2, "bComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TB;>;"
    .local p3, "cComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TC;>;"
    .local p4, "aSerializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    .local p5, "bSerializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TB;>;"
    .local p6, "cSerializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TC;>;"
    .local p7, "dSerializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TD;>;"
    invoke-direct {p0}, Lorg/mapdb/BTreeKeySerializer;-><init>()V

    .line 598
    iput-object p1, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->aComparator:Ljava/util/Comparator;

    .line 599
    iput-object p2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->bComparator:Ljava/util/Comparator;

    .line 600
    iput-object p3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->cComparator:Ljava/util/Comparator;

    .line 601
    iput-object p4, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    .line 602
    iput-object p5, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    .line 603
    iput-object p6, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    .line 604
    iput-object p7, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->dSerializer:Lorg/mapdb/Serializer;

    .line 605
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
    .line 608
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer<TA;TB;TC;TD;>;"
    .local p3, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lorg/mapdb/BTreeKeySerializer;-><init>()V

    .line 609
    invoke-virtual {p3, p0}, Lorg/mapdb/SerializerBase$FastArrayList;->add(Ljava/lang/Object;)V

    .line 610
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->aComparator:Ljava/util/Comparator;

    .line 611
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->bComparator:Ljava/util/Comparator;

    .line 612
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->cComparator:Ljava/util/Comparator;

    .line 613
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Serializer;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    .line 614
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Serializer;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    .line 615
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Serializer;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    .line 616
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Serializer;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->dSerializer:Lorg/mapdb/Serializer;

    .line 617
    return-void
.end method


# virtual methods
.method public deserialize(Ljava/io/DataInput;III)[Ljava/lang/Object;
    .locals 11
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
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer<TA;TB;TC;TD;>;"
    const/4 v10, -0x1

    .line 669
    new-array v8, p4, [Ljava/lang/Object;

    .line 670
    .local v8, "ret":[Ljava/lang/Object;
    const/4 v0, 0x0

    .line 671
    .local v0, "a":Ljava/lang/Object;, "TA;"
    const/4 v1, 0x0

    .line 672
    .local v1, "acount":I
    const/4 v2, 0x0

    .line 673
    .local v2, "b":Ljava/lang/Object;, "TB;"
    const/4 v3, 0x0

    .line 674
    .local v3, "bcount":I
    const/4 v4, 0x0

    .line 675
    .local v4, "c":Ljava/lang/Object;, "TC;"
    const/4 v5, 0x0

    .line 678
    .local v5, "ccount":I
    move v7, p2

    .end local v0    # "a":Ljava/lang/Object;, "TA;"
    .end local v2    # "b":Ljava/lang/Object;, "TB;"
    .end local v4    # "c":Ljava/lang/Object;, "TC;"
    .local v7, "i":I
    :goto_0
    if-ge v7, p3, :cond_3

    .line 679
    if-nez v1, :cond_0

    .line 681
    iget-object v9, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v9, p1, v10}, Lorg/mapdb/Serializer;->deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;

    move-result-object v0

    .line 682
    .restart local v0    # "a":Ljava/lang/Object;, "TA;"
    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v1

    .line 684
    .end local v0    # "a":Ljava/lang/Object;, "TA;"
    :cond_0
    if-nez v3, :cond_1

    .line 686
    iget-object v9, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v9, p1, v10}, Lorg/mapdb/Serializer;->deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;

    move-result-object v2

    .line 687
    .restart local v2    # "b":Ljava/lang/Object;, "TB;"
    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v3

    .line 689
    .end local v2    # "b":Ljava/lang/Object;, "TB;"
    :cond_1
    if-nez v5, :cond_2

    .line 691
    iget-object v9, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v9, p1, v10}, Lorg/mapdb/Serializer;->deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;

    move-result-object v4

    .line 692
    .restart local v4    # "c":Ljava/lang/Object;, "TC;"
    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v5

    .line 695
    .end local v4    # "c":Ljava/lang/Object;, "TC;"
    :cond_2
    iget-object v9, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->dSerializer:Lorg/mapdb/Serializer;

    invoke-interface {v9, p1, v10}, Lorg/mapdb/Serializer;->deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;

    move-result-object v6

    .line 696
    .local v6, "d":Ljava/lang/Object;, "TD;"
    invoke-static {v0, v2, v4, v6}, Lorg/mapdb/Fun;->t4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple4;

    move-result-object v9

    aput-object v9, v8, v7

    .line 697
    add-int/lit8 v1, v1, -0x1

    .line 698
    add-int/lit8 v3, v3, -0x1

    .line 699
    add-int/lit8 v5, v5, -0x1

    .line 678
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 701
    .end local v6    # "d":Ljava/lang/Object;, "TD;"
    :cond_3
    sget-boolean v9, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->$assertionsDisabled:Z

    if-nez v9, :cond_4

    if-eqz v1, :cond_4

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 702
    :cond_4
    sget-boolean v9, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->$assertionsDisabled:Z

    if-nez v9, :cond_5

    if-eqz v3, :cond_5

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 703
    :cond_5
    sget-boolean v9, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->$assertionsDisabled:Z

    if-nez v9, :cond_6

    if-eqz v5, :cond_6

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 705
    :cond_6
    return-object v8
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer<TA;TB;TC;TD;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 716
    if-ne p0, p1, :cond_1

    .line 721
    :cond_0
    :goto_0
    return v1

    .line 717
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

    .line 719
    check-cast v0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;

    .line 721
    .local v0, "t":Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;
    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->aComparator:Ljava/util/Comparator;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->aComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->bComparator:Ljava/util/Comparator;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->bComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->cComparator:Ljava/util/Comparator;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->cComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->dSerializer:Lorg/mapdb/Serializer;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->dSerializer:Lorg/mapdb/Serializer;

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
            "Lorg/mapdb/Fun$Tuple4",
            "<TA;TB;TC;TD;>;>;"
        }
    .end annotation

    .prologue
    .line 710
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer<TA;TB;TC;TD;>;"
    sget-object v0, Lorg/mapdb/BTreeMap;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer<TA;TB;TC;TD;>;"
    const/4 v1, 0x0

    .line 734
    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->aComparator:Ljava/util/Comparator;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->aComparator:Ljava/util/Comparator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 735
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->bComparator:Ljava/util/Comparator;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->bComparator:Ljava/util/Comparator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 736
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->cComparator:Ljava/util/Comparator;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->cComparator:Ljava/util/Comparator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 737
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 738
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 739
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 740
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->dSerializer:Lorg/mapdb/Serializer;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->dSerializer:Lorg/mapdb/Serializer;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 741
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 734
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 735
    goto :goto_1

    :cond_3
    move v2, v1

    .line 736
    goto :goto_2

    :cond_4
    move v2, v1

    .line 737
    goto :goto_3

    :cond_5
    move v2, v1

    .line 738
    goto :goto_4

    :cond_6
    move v2, v1

    .line 739
    goto :goto_5
.end method

.method public serialize(Ljava/io/DataOutput;II[Ljava/lang/Object;)V
    .locals 8
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
    .line 622
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer<TA;TB;TC;TD;>;"
    const/4 v0, 0x0

    .line 623
    .local v0, "acount":I
    const/4 v1, 0x0

    .line 624
    .local v1, "bcount":I
    const/4 v2, 0x0

    .line 625
    .local v2, "ccount":I
    move v3, p2

    .local v3, "i":I
    :goto_0
    if-ge v3, p3, :cond_6

    .line 626
    aget-object v4, p4, v3

    check-cast v4, Lorg/mapdb/Fun$Tuple4;

    .line 627
    .local v4, "t":Lorg/mapdb/Fun$Tuple4;, "Lorg/mapdb/Fun$Tuple4<TA;TB;TC;TD;>;"
    if-nez v0, :cond_1

    .line 629
    iget-object v5, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    iget-object v6, v4, Lorg/mapdb/Fun$Tuple4;->a:Ljava/lang/Object;

    invoke-interface {v5, p1, v6}, Lorg/mapdb/Serializer;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V

    .line 631
    const/4 v0, 0x1

    .line 632
    :goto_1
    add-int v5, v3, v0

    if-ge v5, p3, :cond_0

    iget-object v6, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->aComparator:Ljava/util/Comparator;

    iget-object v7, v4, Lorg/mapdb/Fun$Tuple4;->a:Ljava/lang/Object;

    add-int v5, v3, v0

    aget-object v5, p4, v5

    check-cast v5, Lorg/mapdb/Fun$Tuple4;

    iget-object v5, v5, Lorg/mapdb/Fun$Tuple4;->a:Ljava/lang/Object;

    invoke-interface {v6, v7, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_0

    .line 633
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 635
    :cond_0
    invoke-static {p1, v0}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 637
    :cond_1
    if-nez v1, :cond_3

    .line 639
    iget-object v5, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    iget-object v6, v4, Lorg/mapdb/Fun$Tuple4;->b:Ljava/lang/Object;

    invoke-interface {v5, p1, v6}, Lorg/mapdb/Serializer;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V

    .line 641
    const/4 v1, 0x1

    .line 642
    :goto_2
    add-int v5, v3, v1

    if-ge v5, p3, :cond_2

    iget-object v6, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->bComparator:Ljava/util/Comparator;

    iget-object v7, v4, Lorg/mapdb/Fun$Tuple4;->b:Ljava/lang/Object;

    add-int v5, v3, v1

    aget-object v5, p4, v5

    check-cast v5, Lorg/mapdb/Fun$Tuple4;

    iget-object v5, v5, Lorg/mapdb/Fun$Tuple4;->b:Ljava/lang/Object;

    invoke-interface {v6, v7, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_2

    .line 643
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 645
    :cond_2
    invoke-static {p1, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 647
    :cond_3
    if-nez v2, :cond_5

    .line 649
    iget-object v5, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    iget-object v6, v4, Lorg/mapdb/Fun$Tuple4;->c:Ljava/lang/Object;

    invoke-interface {v5, p1, v6}, Lorg/mapdb/Serializer;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V

    .line 651
    const/4 v2, 0x1

    .line 652
    :goto_3
    add-int v5, v3, v2

    if-ge v5, p3, :cond_4

    iget-object v6, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->cComparator:Ljava/util/Comparator;

    iget-object v7, v4, Lorg/mapdb/Fun$Tuple4;->c:Ljava/lang/Object;

    add-int v5, v3, v2

    aget-object v5, p4, v5

    check-cast v5, Lorg/mapdb/Fun$Tuple4;

    iget-object v5, v5, Lorg/mapdb/Fun$Tuple4;->c:Ljava/lang/Object;

    invoke-interface {v6, v7, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_4

    .line 653
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 655
    :cond_4
    invoke-static {p1, v2}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 659
    :cond_5
    iget-object v5, p0, Lorg/mapdb/BTreeKeySerializer$Tuple4KeySerializer;->dSerializer:Lorg/mapdb/Serializer;

    iget-object v6, v4, Lorg/mapdb/Fun$Tuple4;->d:Ljava/lang/Object;

    invoke-interface {v5, p1, v6}, Lorg/mapdb/Serializer;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V

    .line 661
    add-int/lit8 v0, v0, -0x1

    .line 662
    add-int/lit8 v1, v1, -0x1

    .line 663
    add-int/lit8 v2, v2, -0x1

    .line 625
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 665
    .end local v4    # "t":Lorg/mapdb/Fun$Tuple4;, "Lorg/mapdb/Fun$Tuple4<TA;TB;TC;TD;>;"
    :cond_6
    return-void
.end method
