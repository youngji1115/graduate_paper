.class public Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;
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
    name = "Tuple5KeySerializer"
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
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/mapdb/BTreeKeySerializer",
        "<",
        "Lorg/mapdb/Fun$Tuple5",
        "<TA;TB;TC;TD;TE;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J = 0x7773e761842bc0c9L


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

.field protected final dComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TD;>;"
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

.field protected final eSerializer:Lorg/mapdb/Serializer;
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
    .line 763
    const-class v0, Lorg/mapdb/BTreeKeySerializer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;Ljava/util/Comparator;Ljava/util/Comparator;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;)V
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
            "Ljava/util/Comparator",
            "<TD;>;",
            "Lorg/mapdb/Serializer",
            "<TA;>;",
            "Lorg/mapdb/Serializer",
            "<TB;>;",
            "Lorg/mapdb/Serializer",
            "<TC;>;",
            "Lorg/mapdb/Serializer",
            "<TD;>;",
            "Lorg/mapdb/Serializer",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 782
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer<TA;TB;TC;TD;TE;>;"
    .local p1, "aComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TA;>;"
    .local p2, "bComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TB;>;"
    .local p3, "cComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TC;>;"
    .local p4, "dComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TD;>;"
    .local p5, "aSerializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    .local p6, "bSerializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TB;>;"
    .local p7, "cSerializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TC;>;"
    .local p8, "dSerializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TD;>;"
    .local p9, "eSerializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TE;>;"
    invoke-direct {p0}, Lorg/mapdb/BTreeKeySerializer;-><init>()V

    .line 783
    iput-object p1, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->aComparator:Ljava/util/Comparator;

    .line 784
    iput-object p2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->bComparator:Ljava/util/Comparator;

    .line 785
    iput-object p3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->cComparator:Ljava/util/Comparator;

    .line 786
    iput-object p4, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->dComparator:Ljava/util/Comparator;

    .line 787
    iput-object p5, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    .line 788
    iput-object p6, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    .line 789
    iput-object p7, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    .line 790
    iput-object p8, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->dSerializer:Lorg/mapdb/Serializer;

    .line 791
    iput-object p9, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->eSerializer:Lorg/mapdb/Serializer;

    .line 792
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
    .line 795
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer<TA;TB;TC;TD;TE;>;"
    .local p3, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lorg/mapdb/BTreeKeySerializer;-><init>()V

    .line 796
    invoke-virtual {p3, p0}, Lorg/mapdb/SerializerBase$FastArrayList;->add(Ljava/lang/Object;)V

    .line 797
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->aComparator:Ljava/util/Comparator;

    .line 798
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->bComparator:Ljava/util/Comparator;

    .line 799
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->cComparator:Ljava/util/Comparator;

    .line 800
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->dComparator:Ljava/util/Comparator;

    .line 801
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Serializer;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    .line 802
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Serializer;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    .line 803
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Serializer;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    .line 804
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Serializer;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->dSerializer:Lorg/mapdb/Serializer;

    .line 805
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Serializer;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->eSerializer:Lorg/mapdb/Serializer;

    .line 806
    return-void
.end method


# virtual methods
.method public deserialize(Ljava/io/DataInput;III)[Ljava/lang/Object;
    .locals 14
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
    .line 871
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer<TA;TB;TC;TD;TE;>;"
    move/from16 v0, p4

    new-array v11, v0, [Ljava/lang/Object;

    .line 872
    .local v11, "ret":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 873
    .local v1, "a":Ljava/lang/Object;, "TA;"
    const/4 v2, 0x0

    .line 874
    .local v2, "acount":I
    const/4 v3, 0x0

    .line 875
    .local v3, "b":Ljava/lang/Object;, "TB;"
    const/4 v4, 0x0

    .line 876
    .local v4, "bcount":I
    const/4 v5, 0x0

    .line 877
    .local v5, "c":Ljava/lang/Object;, "TC;"
    const/4 v6, 0x0

    .line 878
    .local v6, "ccount":I
    const/4 v7, 0x0

    .line 879
    .local v7, "d":Ljava/lang/Object;, "TD;"
    const/4 v8, 0x0

    .line 881
    .local v8, "dcount":I
    move/from16 v10, p2

    .end local v1    # "a":Ljava/lang/Object;, "TA;"
    .end local v3    # "b":Ljava/lang/Object;, "TB;"
    .end local v5    # "c":Ljava/lang/Object;, "TC;"
    .end local v7    # "d":Ljava/lang/Object;, "TD;"
    .local v10, "i":I
    :goto_0
    move/from16 v0, p3

    if-ge v10, v0, :cond_4

    .line 882
    if-nez v2, :cond_0

    .line 884
    iget-object v12, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    const/4 v13, -0x1

    invoke-interface {v12, p1, v13}, Lorg/mapdb/Serializer;->deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;

    move-result-object v1

    .line 885
    .restart local v1    # "a":Ljava/lang/Object;, "TA;"
    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v2

    .line 887
    .end local v1    # "a":Ljava/lang/Object;, "TA;"
    :cond_0
    if-nez v4, :cond_1

    .line 889
    iget-object v12, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    const/4 v13, -0x1

    invoke-interface {v12, p1, v13}, Lorg/mapdb/Serializer;->deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;

    move-result-object v3

    .line 890
    .restart local v3    # "b":Ljava/lang/Object;, "TB;"
    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v4

    .line 892
    .end local v3    # "b":Ljava/lang/Object;, "TB;"
    :cond_1
    if-nez v6, :cond_2

    .line 894
    iget-object v12, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    const/4 v13, -0x1

    invoke-interface {v12, p1, v13}, Lorg/mapdb/Serializer;->deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;

    move-result-object v5

    .line 895
    .restart local v5    # "c":Ljava/lang/Object;, "TC;"
    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v6

    .line 897
    .end local v5    # "c":Ljava/lang/Object;, "TC;"
    :cond_2
    if-nez v8, :cond_3

    .line 899
    iget-object v12, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->dSerializer:Lorg/mapdb/Serializer;

    const/4 v13, -0x1

    invoke-interface {v12, p1, v13}, Lorg/mapdb/Serializer;->deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;

    move-result-object v7

    .line 900
    .restart local v7    # "d":Ljava/lang/Object;, "TD;"
    invoke-static {p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v8

    .line 904
    .end local v7    # "d":Ljava/lang/Object;, "TD;"
    :cond_3
    iget-object v12, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->eSerializer:Lorg/mapdb/Serializer;

    const/4 v13, -0x1

    invoke-interface {v12, p1, v13}, Lorg/mapdb/Serializer;->deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;

    move-result-object v9

    .line 905
    .local v9, "e":Ljava/lang/Object;, "TE;"
    invoke-static {v1, v3, v5, v7, v9}, Lorg/mapdb/Fun;->t5(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple5;

    move-result-object v12

    aput-object v12, v11, v10

    .line 906
    add-int/lit8 v2, v2, -0x1

    .line 907
    add-int/lit8 v4, v4, -0x1

    .line 908
    add-int/lit8 v6, v6, -0x1

    .line 909
    add-int/lit8 v8, v8, -0x1

    .line 881
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 911
    .end local v9    # "e":Ljava/lang/Object;, "TE;"
    :cond_4
    sget-boolean v12, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->$assertionsDisabled:Z

    if-nez v12, :cond_5

    if-eqz v2, :cond_5

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 912
    :cond_5
    sget-boolean v12, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->$assertionsDisabled:Z

    if-nez v12, :cond_6

    if-eqz v4, :cond_6

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 913
    :cond_6
    sget-boolean v12, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->$assertionsDisabled:Z

    if-nez v12, :cond_7

    if-eqz v6, :cond_7

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 914
    :cond_7
    sget-boolean v12, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->$assertionsDisabled:Z

    if-nez v12, :cond_8

    if-eqz v8, :cond_8

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 916
    :cond_8
    return-object v11
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer<TA;TB;TC;TD;TE;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 927
    if-ne p0, p1, :cond_1

    .line 932
    :cond_0
    :goto_0
    return v1

    .line 928
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

    .line 930
    check-cast v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;

    .line 932
    .local v0, "t":Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;
    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->aComparator:Ljava/util/Comparator;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->aComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->bComparator:Ljava/util/Comparator;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->bComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->cComparator:Ljava/util/Comparator;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->cComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->dComparator:Ljava/util/Comparator;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->dComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->dSerializer:Lorg/mapdb/Serializer;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->dSerializer:Lorg/mapdb/Serializer;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->eSerializer:Lorg/mapdb/Serializer;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->eSerializer:Lorg/mapdb/Serializer;

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
            "Lorg/mapdb/Fun$Tuple5",
            "<TA;TB;TC;TD;TE;>;>;"
        }
    .end annotation

    .prologue
    .line 921
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer<TA;TB;TC;TD;TE;>;"
    sget-object v0, Lorg/mapdb/BTreeMap;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer<TA;TB;TC;TD;TE;>;"
    const/4 v1, 0x0

    .line 946
    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->aComparator:Ljava/util/Comparator;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->aComparator:Ljava/util/Comparator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 947
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->bComparator:Ljava/util/Comparator;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->bComparator:Ljava/util/Comparator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 948
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->cComparator:Ljava/util/Comparator;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->cComparator:Ljava/util/Comparator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 949
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->dComparator:Ljava/util/Comparator;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->dComparator:Ljava/util/Comparator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 950
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 951
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 952
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int v0, v3, v2

    .line 953
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->dSerializer:Lorg/mapdb/Serializer;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->dSerializer:Lorg/mapdb/Serializer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7
    add-int v0, v3, v2

    .line 954
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->eSerializer:Lorg/mapdb/Serializer;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->eSerializer:Lorg/mapdb/Serializer;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 955
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 946
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 947
    goto :goto_1

    :cond_3
    move v2, v1

    .line 948
    goto :goto_2

    :cond_4
    move v2, v1

    .line 949
    goto :goto_3

    :cond_5
    move v2, v1

    .line 950
    goto :goto_4

    :cond_6
    move v2, v1

    .line 951
    goto :goto_5

    :cond_7
    move v2, v1

    .line 952
    goto :goto_6

    :cond_8
    move v2, v1

    .line 953
    goto :goto_7
.end method

.method public serialize(Ljava/io/DataOutput;II[Ljava/lang/Object;)V
    .locals 9
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
    .line 811
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer<TA;TB;TC;TD;TE;>;"
    const/4 v0, 0x0

    .line 812
    .local v0, "acount":I
    const/4 v1, 0x0

    .line 813
    .local v1, "bcount":I
    const/4 v2, 0x0

    .line 814
    .local v2, "ccount":I
    const/4 v3, 0x0

    .line 815
    .local v3, "dcount":I
    move v4, p2

    .local v4, "i":I
    :goto_0
    if-ge v4, p3, :cond_8

    .line 816
    aget-object v5, p4, v4

    check-cast v5, Lorg/mapdb/Fun$Tuple5;

    .line 817
    .local v5, "t":Lorg/mapdb/Fun$Tuple5;, "Lorg/mapdb/Fun$Tuple5<TA;TB;TC;TD;TE;>;"
    if-nez v0, :cond_1

    .line 819
    iget-object v6, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    iget-object v7, v5, Lorg/mapdb/Fun$Tuple5;->a:Ljava/lang/Object;

    invoke-interface {v6, p1, v7}, Lorg/mapdb/Serializer;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V

    .line 821
    const/4 v0, 0x1

    .line 822
    :goto_1
    add-int v6, v4, v0

    if-ge v6, p3, :cond_0

    iget-object v7, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->aComparator:Ljava/util/Comparator;

    iget-object v8, v5, Lorg/mapdb/Fun$Tuple5;->a:Ljava/lang/Object;

    add-int v6, v4, v0

    aget-object v6, p4, v6

    check-cast v6, Lorg/mapdb/Fun$Tuple5;

    iget-object v6, v6, Lorg/mapdb/Fun$Tuple5;->a:Ljava/lang/Object;

    invoke-interface {v7, v8, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-nez v6, :cond_0

    .line 823
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 825
    :cond_0
    invoke-static {p1, v0}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 827
    :cond_1
    if-nez v1, :cond_3

    .line 829
    iget-object v6, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    iget-object v7, v5, Lorg/mapdb/Fun$Tuple5;->b:Ljava/lang/Object;

    invoke-interface {v6, p1, v7}, Lorg/mapdb/Serializer;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V

    .line 831
    const/4 v1, 0x1

    .line 832
    :goto_2
    add-int v6, v4, v1

    if-ge v6, p3, :cond_2

    iget-object v7, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->bComparator:Ljava/util/Comparator;

    iget-object v8, v5, Lorg/mapdb/Fun$Tuple5;->b:Ljava/lang/Object;

    add-int v6, v4, v1

    aget-object v6, p4, v6

    check-cast v6, Lorg/mapdb/Fun$Tuple5;

    iget-object v6, v6, Lorg/mapdb/Fun$Tuple5;->b:Ljava/lang/Object;

    invoke-interface {v7, v8, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-nez v6, :cond_2

    .line 833
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 835
    :cond_2
    invoke-static {p1, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 837
    :cond_3
    if-nez v2, :cond_5

    .line 839
    iget-object v6, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    iget-object v7, v5, Lorg/mapdb/Fun$Tuple5;->c:Ljava/lang/Object;

    invoke-interface {v6, p1, v7}, Lorg/mapdb/Serializer;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V

    .line 841
    const/4 v2, 0x1

    .line 842
    :goto_3
    add-int v6, v4, v2

    if-ge v6, p3, :cond_4

    iget-object v7, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->cComparator:Ljava/util/Comparator;

    iget-object v8, v5, Lorg/mapdb/Fun$Tuple5;->c:Ljava/lang/Object;

    add-int v6, v4, v2

    aget-object v6, p4, v6

    check-cast v6, Lorg/mapdb/Fun$Tuple5;

    iget-object v6, v6, Lorg/mapdb/Fun$Tuple5;->c:Ljava/lang/Object;

    invoke-interface {v7, v8, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-nez v6, :cond_4

    .line 843
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 845
    :cond_4
    invoke-static {p1, v2}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 848
    :cond_5
    if-nez v3, :cond_7

    .line 850
    iget-object v6, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->dSerializer:Lorg/mapdb/Serializer;

    iget-object v7, v5, Lorg/mapdb/Fun$Tuple5;->d:Ljava/lang/Object;

    invoke-interface {v6, p1, v7}, Lorg/mapdb/Serializer;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V

    .line 852
    const/4 v3, 0x1

    .line 853
    :goto_4
    add-int v6, v4, v3

    if-ge v6, p3, :cond_6

    iget-object v7, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->dComparator:Ljava/util/Comparator;

    iget-object v8, v5, Lorg/mapdb/Fun$Tuple5;->d:Ljava/lang/Object;

    add-int v6, v4, v3

    aget-object v6, p4, v6

    check-cast v6, Lorg/mapdb/Fun$Tuple5;

    iget-object v6, v6, Lorg/mapdb/Fun$Tuple5;->d:Ljava/lang/Object;

    invoke-interface {v7, v8, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-nez v6, :cond_6

    .line 854
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 856
    :cond_6
    invoke-static {p1, v3}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 860
    :cond_7
    iget-object v6, p0, Lorg/mapdb/BTreeKeySerializer$Tuple5KeySerializer;->eSerializer:Lorg/mapdb/Serializer;

    iget-object v7, v5, Lorg/mapdb/Fun$Tuple5;->e:Ljava/lang/Object;

    invoke-interface {v6, p1, v7}, Lorg/mapdb/Serializer;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V

    .line 862
    add-int/lit8 v0, v0, -0x1

    .line 863
    add-int/lit8 v1, v1, -0x1

    .line 864
    add-int/lit8 v2, v2, -0x1

    .line 865
    add-int/lit8 v3, v3, -0x1

    .line 815
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 867
    .end local v5    # "t":Lorg/mapdb/Fun$Tuple5;, "Lorg/mapdb/Fun$Tuple5<TA;TB;TC;TD;TE;>;"
    :cond_8
    return-void
.end method
