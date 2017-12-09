.class public Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;
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
    name = "Tuple6KeySerializer"
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
        "F:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/mapdb/BTreeKeySerializer",
        "<",
        "Lorg/mapdb/Fun$Tuple6",
        "<TA;TB;TC;TD;TE;TF;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J = 0x32e2620bbab93974L


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

.field protected final eComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TE;>;"
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

.field protected final fSerializer:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<TF;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 976
    const-class v0, Lorg/mapdb/BTreeKeySerializer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;Ljava/util/Comparator;Ljava/util/Comparator;Ljava/util/Comparator;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;Lorg/mapdb/Serializer;)V
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
            "Ljava/util/Comparator",
            "<TE;>;",
            "Lorg/mapdb/Serializer",
            "<TA;>;",
            "Lorg/mapdb/Serializer",
            "<TB;>;",
            "Lorg/mapdb/Serializer",
            "<TC;>;",
            "Lorg/mapdb/Serializer",
            "<TD;>;",
            "Lorg/mapdb/Serializer",
            "<TE;>;",
            "Lorg/mapdb/Serializer",
            "<TF;>;)V"
        }
    .end annotation

    .prologue
    .line 997
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer<TA;TB;TC;TD;TE;TF;>;"
    .local p1, "aComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TA;>;"
    .local p2, "bComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TB;>;"
    .local p3, "cComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TC;>;"
    .local p4, "dComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TD;>;"
    .local p5, "eComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TE;>;"
    .local p6, "aSerializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TA;>;"
    .local p7, "bSerializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TB;>;"
    .local p8, "cSerializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TC;>;"
    .local p9, "dSerializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TD;>;"
    .local p10, "eSerializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TE;>;"
    .local p11, "fSerializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TF;>;"
    invoke-direct {p0}, Lorg/mapdb/BTreeKeySerializer;-><init>()V

    .line 998
    iput-object p1, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->aComparator:Ljava/util/Comparator;

    .line 999
    iput-object p2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->bComparator:Ljava/util/Comparator;

    .line 1000
    iput-object p3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->cComparator:Ljava/util/Comparator;

    .line 1001
    iput-object p4, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->dComparator:Ljava/util/Comparator;

    .line 1002
    iput-object p5, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->eComparator:Ljava/util/Comparator;

    .line 1003
    iput-object p6, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    .line 1004
    iput-object p7, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    .line 1005
    iput-object p8, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    .line 1006
    iput-object p9, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->dSerializer:Lorg/mapdb/Serializer;

    .line 1007
    iput-object p10, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->eSerializer:Lorg/mapdb/Serializer;

    .line 1008
    iput-object p11, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->fSerializer:Lorg/mapdb/Serializer;

    .line 1009
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
    .line 1012
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer<TA;TB;TC;TD;TE;TF;>;"
    .local p3, "objectStack":Lorg/mapdb/SerializerBase$FastArrayList;, "Lorg/mapdb/SerializerBase$FastArrayList<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lorg/mapdb/BTreeKeySerializer;-><init>()V

    .line 1013
    invoke-virtual {p3, p0}, Lorg/mapdb/SerializerBase$FastArrayList;->add(Ljava/lang/Object;)V

    .line 1014
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->aComparator:Ljava/util/Comparator;

    .line 1015
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->bComparator:Ljava/util/Comparator;

    .line 1016
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->cComparator:Ljava/util/Comparator;

    .line 1017
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->dComparator:Ljava/util/Comparator;

    .line 1018
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->eComparator:Ljava/util/Comparator;

    .line 1019
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Serializer;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    .line 1020
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Serializer;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    .line 1021
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Serializer;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    .line 1022
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Serializer;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->dSerializer:Lorg/mapdb/Serializer;

    .line 1023
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Serializer;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->eSerializer:Lorg/mapdb/Serializer;

    .line 1024
    invoke-virtual {p1, p2, p3}, Lorg/mapdb/SerializerBase;->deserialize(Ljava/io/DataInput;Lorg/mapdb/SerializerBase$FastArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/Serializer;

    iput-object v0, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->fSerializer:Lorg/mapdb/Serializer;

    .line 1025
    return-void
.end method


# virtual methods
.method public deserialize(Ljava/io/DataInput;III)[Ljava/lang/Object;
    .locals 23
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
    .line 1103
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer<TA;TB;TC;TD;TE;TF;>;"
    move/from16 v0, p4

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 1104
    .local v20, "ret":[Ljava/lang/Object;
    const/4 v9, 0x0

    .line 1105
    .local v9, "a":Ljava/lang/Object;, "TA;"
    const/4 v10, 0x0

    .line 1106
    .local v10, "acount":I
    const/4 v11, 0x0

    .line 1107
    .local v11, "b":Ljava/lang/Object;, "TB;"
    const/4 v12, 0x0

    .line 1108
    .local v12, "bcount":I
    const/4 v13, 0x0

    .line 1109
    .local v13, "c":Ljava/lang/Object;, "TC;"
    const/4 v14, 0x0

    .line 1110
    .local v14, "ccount":I
    const/4 v15, 0x0

    .line 1111
    .local v15, "d":Ljava/lang/Object;, "TD;"
    const/16 v16, 0x0

    .line 1112
    .local v16, "dcount":I
    const/16 v17, 0x0

    .line 1113
    .local v17, "e":Ljava/lang/Object;, "TE;"
    const/16 v18, 0x0

    .line 1116
    .local v18, "ecount":I
    move/from16 v19, p2

    .local v19, "i":I
    move-object/from16 v7, v17

    move-object v6, v15

    move-object v5, v13

    move-object v4, v11

    move-object v3, v9

    .end local v9    # "a":Ljava/lang/Object;, "TA;"
    .end local v11    # "b":Ljava/lang/Object;, "TB;"
    .end local v13    # "c":Ljava/lang/Object;, "TC;"
    .end local v15    # "d":Ljava/lang/Object;, "TD;"
    .end local v17    # "e":Ljava/lang/Object;, "TE;"
    :goto_0
    move/from16 v0, v19

    move/from16 v1, p3

    if-ge v0, v1, :cond_5

    .line 1117
    if-nez v10, :cond_0

    .line 1119
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    const/16 v21, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v3, v0, v1}, Lorg/mapdb/Serializer;->deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;

    move-result-object v9

    .line 1120
    .restart local v9    # "a":Ljava/lang/Object;, "TA;"
    invoke-static/range {p1 .. p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v10

    move-object v3, v9

    .line 1122
    .end local v9    # "a":Ljava/lang/Object;, "TA;"
    :cond_0
    if-nez v12, :cond_1

    .line 1124
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    const/16 v21, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v4, v0, v1}, Lorg/mapdb/Serializer;->deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;

    move-result-object v11

    .line 1125
    .restart local v11    # "b":Ljava/lang/Object;, "TB;"
    invoke-static/range {p1 .. p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v12

    move-object v4, v11

    .line 1127
    .end local v11    # "b":Ljava/lang/Object;, "TB;"
    :cond_1
    if-nez v14, :cond_2

    .line 1129
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    const/16 v21, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v5, v0, v1}, Lorg/mapdb/Serializer;->deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;

    move-result-object v13

    .line 1130
    .restart local v13    # "c":Ljava/lang/Object;, "TC;"
    invoke-static/range {p1 .. p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v14

    move-object v5, v13

    .line 1132
    .end local v13    # "c":Ljava/lang/Object;, "TC;"
    :cond_2
    if-nez v16, :cond_3

    .line 1134
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->dSerializer:Lorg/mapdb/Serializer;

    const/16 v21, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v6, v0, v1}, Lorg/mapdb/Serializer;->deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;

    move-result-object v15

    .line 1135
    .restart local v15    # "d":Ljava/lang/Object;, "TD;"
    invoke-static/range {p1 .. p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v16

    move-object v6, v15

    .line 1138
    .end local v15    # "d":Ljava/lang/Object;, "TD;"
    :cond_3
    if-nez v18, :cond_4

    .line 1140
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->eSerializer:Lorg/mapdb/Serializer;

    const/16 v21, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v7, v0, v1}, Lorg/mapdb/Serializer;->deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;

    move-result-object v17

    .line 1141
    .restart local v17    # "e":Ljava/lang/Object;, "TE;"
    invoke-static/range {p1 .. p1}, Lorg/mapdb/DataInput2;->unpackInt(Ljava/io/DataInput;)I

    move-result v18

    move-object/from16 v7, v17

    .line 1145
    .end local v17    # "e":Ljava/lang/Object;, "TE;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->fSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/mapdb/Serializer;->deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;

    move-result-object v8

    .line 1146
    .local v8, "f":Ljava/lang/Object;, "TF;"
    invoke-static/range {v3 .. v8}, Lorg/mapdb/Fun;->t6(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple6;

    move-result-object v21

    aput-object v21, v20, v19

    .line 1147
    add-int/lit8 v10, v10, -0x1

    .line 1148
    add-int/lit8 v12, v12, -0x1

    .line 1149
    add-int/lit8 v14, v14, -0x1

    .line 1150
    add-int/lit8 v16, v16, -0x1

    .line 1151
    add-int/lit8 v18, v18, -0x1

    .line 1116
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 1153
    .end local v8    # "f":Ljava/lang/Object;, "TF;"
    :cond_5
    sget-boolean v3, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->$assertionsDisabled:Z

    if-nez v3, :cond_6

    if-eqz v10, :cond_6

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1154
    :cond_6
    sget-boolean v3, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->$assertionsDisabled:Z

    if-nez v3, :cond_7

    if-eqz v12, :cond_7

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1155
    :cond_7
    sget-boolean v3, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->$assertionsDisabled:Z

    if-nez v3, :cond_8

    if-eqz v14, :cond_8

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1156
    :cond_8
    sget-boolean v3, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->$assertionsDisabled:Z

    if-nez v3, :cond_9

    if-eqz v16, :cond_9

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1157
    :cond_9
    sget-boolean v3, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->$assertionsDisabled:Z

    if-nez v3, :cond_a

    if-eqz v18, :cond_a

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1159
    :cond_a
    return-object v20
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer<TA;TB;TC;TD;TE;TF;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1170
    if-ne p0, p1, :cond_1

    .line 1175
    :cond_0
    :goto_0
    return v1

    .line 1171
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

    .line 1173
    check-cast v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;

    .line 1175
    .local v0, "t":Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;
    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->aComparator:Ljava/util/Comparator;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->aComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->bComparator:Ljava/util/Comparator;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->bComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->cComparator:Ljava/util/Comparator;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->cComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->dComparator:Ljava/util/Comparator;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->dComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->eComparator:Ljava/util/Comparator;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->eComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->dSerializer:Lorg/mapdb/Serializer;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->dSerializer:Lorg/mapdb/Serializer;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->eSerializer:Lorg/mapdb/Serializer;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->eSerializer:Lorg/mapdb/Serializer;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->fSerializer:Lorg/mapdb/Serializer;

    iget-object v4, v0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->fSerializer:Lorg/mapdb/Serializer;

    invoke-static {v3, v4}, Lorg/mapdb/Fun;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto/16 :goto_0
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lorg/mapdb/Fun$Tuple6",
            "<TA;TB;TC;TD;TE;TF;>;>;"
        }
    .end annotation

    .prologue
    .line 1164
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer<TA;TB;TC;TD;TE;TF;>;"
    sget-object v0, Lorg/mapdb/BTreeMap;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer<TA;TB;TC;TD;TE;TF;>;"
    const/4 v1, 0x0

    .line 1192
    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->aComparator:Ljava/util/Comparator;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->aComparator:Ljava/util/Comparator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 1193
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->bComparator:Ljava/util/Comparator;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->bComparator:Ljava/util/Comparator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 1194
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->cComparator:Ljava/util/Comparator;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->cComparator:Ljava/util/Comparator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 1195
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->dComparator:Ljava/util/Comparator;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->dComparator:Ljava/util/Comparator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 1196
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->eComparator:Ljava/util/Comparator;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->eComparator:Ljava/util/Comparator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    .line 1197
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    .line 1198
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int v0, v3, v2

    .line 1199
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7
    add-int v0, v3, v2

    .line 1200
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->dSerializer:Lorg/mapdb/Serializer;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->dSerializer:Lorg/mapdb/Serializer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_8
    add-int v0, v3, v2

    .line 1201
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->eSerializer:Lorg/mapdb/Serializer;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->eSerializer:Lorg/mapdb/Serializer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_9
    add-int v0, v3, v2

    .line 1202
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->fSerializer:Lorg/mapdb/Serializer;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->fSerializer:Lorg/mapdb/Serializer;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 1203
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 1192
    goto/16 :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 1193
    goto/16 :goto_1

    :cond_3
    move v2, v1

    .line 1194
    goto :goto_2

    :cond_4
    move v2, v1

    .line 1195
    goto :goto_3

    :cond_5
    move v2, v1

    .line 1196
    goto :goto_4

    :cond_6
    move v2, v1

    .line 1197
    goto :goto_5

    :cond_7
    move v2, v1

    .line 1198
    goto :goto_6

    :cond_8
    move v2, v1

    .line 1199
    goto :goto_7

    :cond_9
    move v2, v1

    .line 1200
    goto :goto_8

    :cond_a
    move v2, v1

    .line 1201
    goto :goto_9
.end method

.method public serialize(Ljava/io/DataOutput;II[Ljava/lang/Object;)V
    .locals 10
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
    .line 1030
    .local p0, "this":Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;, "Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer<TA;TB;TC;TD;TE;TF;>;"
    const/4 v0, 0x0

    .line 1031
    .local v0, "acount":I
    const/4 v1, 0x0

    .line 1032
    .local v1, "bcount":I
    const/4 v2, 0x0

    .line 1033
    .local v2, "ccount":I
    const/4 v3, 0x0

    .line 1034
    .local v3, "dcount":I
    const/4 v4, 0x0

    .line 1035
    .local v4, "ecount":I
    move v5, p2

    .local v5, "i":I
    :goto_0
    if-ge v5, p3, :cond_a

    .line 1036
    aget-object v6, p4, v5

    check-cast v6, Lorg/mapdb/Fun$Tuple6;

    .line 1037
    .local v6, "t":Lorg/mapdb/Fun$Tuple6;, "Lorg/mapdb/Fun$Tuple6<TA;TB;TC;TD;TE;TF;>;"
    if-nez v0, :cond_1

    .line 1039
    iget-object v7, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->aSerializer:Lorg/mapdb/Serializer;

    iget-object v8, v6, Lorg/mapdb/Fun$Tuple6;->a:Ljava/lang/Object;

    invoke-interface {v7, p1, v8}, Lorg/mapdb/Serializer;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V

    .line 1041
    const/4 v0, 0x1

    .line 1042
    :goto_1
    add-int v7, v5, v0

    if-ge v7, p3, :cond_0

    iget-object v8, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->aComparator:Ljava/util/Comparator;

    iget-object v9, v6, Lorg/mapdb/Fun$Tuple6;->a:Ljava/lang/Object;

    add-int v7, v5, v0

    aget-object v7, p4, v7

    check-cast v7, Lorg/mapdb/Fun$Tuple6;

    iget-object v7, v7, Lorg/mapdb/Fun$Tuple6;->a:Ljava/lang/Object;

    invoke-interface {v8, v9, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_0

    .line 1043
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1045
    :cond_0
    invoke-static {p1, v0}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 1047
    :cond_1
    if-nez v1, :cond_3

    .line 1049
    iget-object v7, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->bSerializer:Lorg/mapdb/Serializer;

    iget-object v8, v6, Lorg/mapdb/Fun$Tuple6;->b:Ljava/lang/Object;

    invoke-interface {v7, p1, v8}, Lorg/mapdb/Serializer;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V

    .line 1051
    const/4 v1, 0x1

    .line 1052
    :goto_2
    add-int v7, v5, v1

    if-ge v7, p3, :cond_2

    iget-object v8, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->bComparator:Ljava/util/Comparator;

    iget-object v9, v6, Lorg/mapdb/Fun$Tuple6;->b:Ljava/lang/Object;

    add-int v7, v5, v1

    aget-object v7, p4, v7

    check-cast v7, Lorg/mapdb/Fun$Tuple6;

    iget-object v7, v7, Lorg/mapdb/Fun$Tuple6;->b:Ljava/lang/Object;

    invoke-interface {v8, v9, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_2

    .line 1053
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1055
    :cond_2
    invoke-static {p1, v1}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 1057
    :cond_3
    if-nez v2, :cond_5

    .line 1059
    iget-object v7, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->cSerializer:Lorg/mapdb/Serializer;

    iget-object v8, v6, Lorg/mapdb/Fun$Tuple6;->c:Ljava/lang/Object;

    invoke-interface {v7, p1, v8}, Lorg/mapdb/Serializer;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V

    .line 1061
    const/4 v2, 0x1

    .line 1062
    :goto_3
    add-int v7, v5, v2

    if-ge v7, p3, :cond_4

    iget-object v8, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->cComparator:Ljava/util/Comparator;

    iget-object v9, v6, Lorg/mapdb/Fun$Tuple6;->c:Ljava/lang/Object;

    add-int v7, v5, v2

    aget-object v7, p4, v7

    check-cast v7, Lorg/mapdb/Fun$Tuple6;

    iget-object v7, v7, Lorg/mapdb/Fun$Tuple6;->c:Ljava/lang/Object;

    invoke-interface {v8, v9, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_4

    .line 1063
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1065
    :cond_4
    invoke-static {p1, v2}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 1068
    :cond_5
    if-nez v3, :cond_7

    .line 1070
    iget-object v7, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->dSerializer:Lorg/mapdb/Serializer;

    iget-object v8, v6, Lorg/mapdb/Fun$Tuple6;->d:Ljava/lang/Object;

    invoke-interface {v7, p1, v8}, Lorg/mapdb/Serializer;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V

    .line 1072
    const/4 v3, 0x1

    .line 1073
    :goto_4
    add-int v7, v5, v3

    if-ge v7, p3, :cond_6

    iget-object v8, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->dComparator:Ljava/util/Comparator;

    iget-object v9, v6, Lorg/mapdb/Fun$Tuple6;->d:Ljava/lang/Object;

    add-int v7, v5, v3

    aget-object v7, p4, v7

    check-cast v7, Lorg/mapdb/Fun$Tuple6;

    iget-object v7, v7, Lorg/mapdb/Fun$Tuple6;->d:Ljava/lang/Object;

    invoke-interface {v8, v9, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_6

    .line 1074
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1076
    :cond_6
    invoke-static {p1, v3}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 1079
    :cond_7
    if-nez v4, :cond_9

    .line 1081
    iget-object v7, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->eSerializer:Lorg/mapdb/Serializer;

    iget-object v8, v6, Lorg/mapdb/Fun$Tuple6;->e:Ljava/lang/Object;

    invoke-interface {v7, p1, v8}, Lorg/mapdb/Serializer;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V

    .line 1083
    const/4 v4, 0x1

    .line 1084
    :goto_5
    add-int v7, v5, v4

    if-ge v7, p3, :cond_8

    iget-object v8, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->eComparator:Ljava/util/Comparator;

    iget-object v9, v6, Lorg/mapdb/Fun$Tuple6;->e:Ljava/lang/Object;

    add-int v7, v5, v4

    aget-object v7, p4, v7

    check-cast v7, Lorg/mapdb/Fun$Tuple6;

    iget-object v7, v7, Lorg/mapdb/Fun$Tuple6;->e:Ljava/lang/Object;

    invoke-interface {v8, v9, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_8

    .line 1085
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1087
    :cond_8
    invoke-static {p1, v4}, Lorg/mapdb/DataOutput2;->packInt(Ljava/io/DataOutput;I)V

    .line 1091
    :cond_9
    iget-object v7, p0, Lorg/mapdb/BTreeKeySerializer$Tuple6KeySerializer;->fSerializer:Lorg/mapdb/Serializer;

    iget-object v8, v6, Lorg/mapdb/Fun$Tuple6;->f:Ljava/lang/Object;

    invoke-interface {v7, p1, v8}, Lorg/mapdb/Serializer;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V

    .line 1093
    add-int/lit8 v0, v0, -0x1

    .line 1094
    add-int/lit8 v1, v1, -0x1

    .line 1095
    add-int/lit8 v2, v2, -0x1

    .line 1096
    add-int/lit8 v3, v3, -0x1

    .line 1097
    add-int/lit8 v4, v4, -0x1

    .line 1035
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1099
    .end local v6    # "t":Lorg/mapdb/Fun$Tuple6;, "Lorg/mapdb/Fun$Tuple6<TA;TB;TC;TD;TE;TF;>;"
    :cond_a
    return-void
.end method
