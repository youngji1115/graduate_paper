.class public Lorg/mapdb/BTreeMap$NodeSerializer;
.super Ljava/lang/Object;
.source "BTreeMap.java"

# interfaces
.implements Lorg/mapdb/Serializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/BTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "NodeSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mapdb/Serializer",
        "<",
        "Lorg/mapdb/BTreeMap$BNode;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final comparator:Ljava/util/Comparator;

.field protected final hasValues:Z

.field protected final keySerializer:Lorg/mapdb/BTreeKeySerializer;

.field protected final numberOfNodeMetas:I

.field protected final valsOutsideNodes:Z

.field protected final valueSerializer:Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/Serializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 288
    const-class v0, Lorg/mapdb/BTreeMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/mapdb/BTreeMap$NodeSerializer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(ZLorg/mapdb/BTreeKeySerializer;Lorg/mapdb/Serializer;Ljava/util/Comparator;I)V
    .locals 1
    .param p1, "valsOutsideNodes"    # Z
    .param p2, "keySerializer"    # Lorg/mapdb/BTreeKeySerializer;
    .param p3, "valueSerializer"    # Lorg/mapdb/Serializer;
    .param p4, "comparator"    # Ljava/util/Comparator;
    .param p5, "numberOfNodeMetas"    # I

    .prologue
    .line 297
    .local p0, "this":Lorg/mapdb/BTreeMap$NodeSerializer;, "Lorg/mapdb/BTreeMap$NodeSerializer<TA;TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    sget-boolean v0, Lorg/mapdb/BTreeMap$NodeSerializer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 299
    :cond_0
    sget-boolean v0, Lorg/mapdb/BTreeMap$NodeSerializer;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p4, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 300
    :cond_1
    if-eqz p3, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/mapdb/BTreeMap$NodeSerializer;->hasValues:Z

    .line 301
    iput-boolean p1, p0, Lorg/mapdb/BTreeMap$NodeSerializer;->valsOutsideNodes:Z

    .line 302
    iput-object p2, p0, Lorg/mapdb/BTreeMap$NodeSerializer;->keySerializer:Lorg/mapdb/BTreeKeySerializer;

    .line 303
    iput-object p3, p0, Lorg/mapdb/BTreeMap$NodeSerializer;->valueSerializer:Lorg/mapdb/Serializer;

    .line 304
    iput-object p4, p0, Lorg/mapdb/BTreeMap$NodeSerializer;->comparator:Ljava/util/Comparator;

    .line 305
    iput p5, p0, Lorg/mapdb/BTreeMap$NodeSerializer;->numberOfNodeMetas:I

    .line 306
    return-void

    .line 300
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
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
    .line 288
    .local p0, "this":Lorg/mapdb/BTreeMap$NodeSerializer;, "Lorg/mapdb/BTreeMap$NodeSerializer<TA;TB;>;"
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/BTreeMap$NodeSerializer;->deserialize(Ljava/io/DataInput;I)Lorg/mapdb/BTreeMap$BNode;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Ljava/io/DataInput;I)Lorg/mapdb/BTreeMap$BNode;
    .locals 20
    .param p1, "in"    # Ljava/io/DataInput;
    .param p2, "available"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 416
    .local p0, "this":Lorg/mapdb/BTreeMap$NodeSerializer;, "Lorg/mapdb/BTreeMap$NodeSerializer<TA;TB;>;"
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v7

    .line 417
    .local v7, "header":I
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v11

    .line 420
    .local v11, "size":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mapdb/BTreeMap$NodeSerializer;->numberOfNodeMetas:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_0

    .line 421
    invoke-static/range {p1 .. p1}, Lorg/mapdb/DataInput2;->unpackLong(Ljava/io/DataInput;)J

    .line 420
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 426
    :cond_0
    const/16 v18, 0xb7

    move/from16 v0, v18

    if-eq v7, v0, :cond_1

    const/16 v18, 0xb5

    move/from16 v0, v18

    if-eq v7, v0, :cond_1

    const/16 v18, 0xb4

    move/from16 v0, v18

    if-eq v7, v0, :cond_1

    const/16 v18, 0xb6

    move/from16 v0, v18

    if-ne v7, v0, :cond_4

    :cond_1
    const/4 v9, 0x1

    .line 429
    .local v9, "isLeaf":Z
    :goto_1
    const/16 v18, 0xb5

    move/from16 v0, v18

    if-eq v7, v0, :cond_2

    const/16 v18, 0xb4

    move/from16 v0, v18

    if-eq v7, v0, :cond_2

    const/16 v18, 0xb9

    move/from16 v0, v18

    if-eq v7, v0, :cond_2

    const/16 v18, 0xb8

    move/from16 v0, v18

    if-ne v7, v0, :cond_5

    :cond_2
    const/16 v16, 0x1

    .line 433
    .local v16, "start":I
    :goto_2
    const/16 v18, 0xb6

    move/from16 v0, v18

    if-eq v7, v0, :cond_3

    const/16 v18, 0xb4

    move/from16 v0, v18

    if-eq v7, v0, :cond_3

    const/16 v18, 0xba

    move/from16 v0, v18

    if-eq v7, v0, :cond_3

    const/16 v18, 0xb8

    move/from16 v0, v18

    if-ne v7, v0, :cond_6

    :cond_3
    add-int/lit8 v6, v11, -0x1

    .line 438
    .local v6, "end":I
    :goto_3
    if-eqz v9, :cond_d

    .line 439
    invoke-static/range {p1 .. p1}, Lorg/mapdb/DataInput2;->unpackLong(Ljava/io/DataInput;)J

    move-result-wide v12

    .line 440
    .local v12, "next":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap$NodeSerializer;->keySerializer:Lorg/mapdb/BTreeKeySerializer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2, v6, v11}, Lorg/mapdb/BTreeKeySerializer;->deserialize(Ljava/io/DataInput;III)[Ljava/lang/Object;

    move-result-object v10

    .line 441
    .local v10, "keys":[Ljava/lang/Object;
    sget-boolean v18, Lorg/mapdb/BTreeMap$NodeSerializer;->$assertionsDisabled:Z

    if-nez v18, :cond_7

    array-length v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v11, :cond_7

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 426
    .end local v6    # "end":I
    .end local v9    # "isLeaf":Z
    .end local v10    # "keys":[Ljava/lang/Object;
    .end local v12    # "next":J
    .end local v16    # "start":I
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 429
    .restart local v9    # "isLeaf":Z
    :cond_5
    const/16 v16, 0x0

    goto :goto_2

    .restart local v16    # "start":I
    :cond_6
    move v6, v11

    .line 433
    goto :goto_3

    .line 442
    .restart local v6    # "end":I
    .restart local v10    # "keys":[Ljava/lang/Object;
    .restart local v12    # "next":J
    :cond_7
    add-int/lit8 v18, v11, -0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 443
    .local v17, "vals":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mapdb/BTreeMap$NodeSerializer;->hasValues:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 444
    const/4 v8, 0x0

    :goto_4
    add-int/lit8 v18, v11, -0x2

    move/from16 v0, v18

    if-ge v8, v0, :cond_c

    .line 445
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mapdb/BTreeMap$NodeSerializer;->valsOutsideNodes:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 446
    invoke-static/range {p1 .. p1}, Lorg/mapdb/DataInput2;->unpackLong(Ljava/io/DataInput;)J

    move-result-wide v14

    .line 447
    .local v14, "recid":J
    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-nez v18, :cond_8

    const/16 v18, 0x0

    :goto_5
    aput-object v18, v17, v8

    .line 444
    .end local v14    # "recid":J
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 447
    .restart local v14    # "recid":J
    :cond_8
    new-instance v18, Lorg/mapdb/BTreeMap$ValRef;

    move-object/from16 v0, v18

    invoke-direct {v0, v14, v15}, Lorg/mapdb/BTreeMap$ValRef;-><init>(J)V

    goto :goto_5

    .line 449
    .end local v14    # "recid":J
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap$NodeSerializer;->valueSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/mapdb/Serializer;->deserialize(Ljava/io/DataInput;I)Ljava/lang/Object;

    move-result-object v18

    aput-object v18, v17, v8

    goto :goto_6

    .line 454
    :cond_a
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lorg/mapdb/SerializerBase;->readBooleanArray(ILjava/io/DataInput;)[Z

    move-result-object v4

    .line 455
    .local v4, "bools":[Z
    const/4 v8, 0x0

    :goto_7
    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_c

    .line 456
    aget-boolean v18, v4, v8

    if-eqz v18, :cond_b

    .line 457
    sget-object v18, Lorg/mapdb/BTreeMap;->EMPTY:Ljava/lang/Object;

    aput-object v18, v17, v8

    .line 455
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 460
    .end local v4    # "bools":[Z
    :cond_c
    new-instance v18, Lorg/mapdb/BTreeMap$LeafNode;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v10, v1, v12, v13}, Lorg/mapdb/BTreeMap$LeafNode;-><init>([Ljava/lang/Object;[Ljava/lang/Object;J)V

    .line 467
    .end local v12    # "next":J
    .end local v17    # "vals":[Ljava/lang/Object;
    :goto_8
    return-object v18

    .line 462
    .end local v10    # "keys":[Ljava/lang/Object;
    :cond_d
    new-array v5, v11, [J

    .line 463
    .local v5, "child":[J
    const/4 v8, 0x0

    :goto_9
    if-ge v8, v11, :cond_e

    .line 464
    invoke-static/range {p1 .. p1}, Lorg/mapdb/DataInput2;->unpackLong(Ljava/io/DataInput;)J

    move-result-wide v18

    aput-wide v18, v5, v8

    .line 463
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 465
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap$NodeSerializer;->keySerializer:Lorg/mapdb/BTreeKeySerializer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2, v6, v11}, Lorg/mapdb/BTreeKeySerializer;->deserialize(Ljava/io/DataInput;III)[Ljava/lang/Object;

    move-result-object v10

    .line 466
    .restart local v10    # "keys":[Ljava/lang/Object;
    sget-boolean v18, Lorg/mapdb/BTreeMap$NodeSerializer;->$assertionsDisabled:Z

    if-nez v18, :cond_f

    array-length v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v11, :cond_f

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 467
    :cond_f
    new-instance v18, Lorg/mapdb/BTreeMap$DirNode;

    move-object/from16 v0, v18

    invoke-direct {v0, v10, v5}, Lorg/mapdb/BTreeMap$DirNode;-><init>([Ljava/lang/Object;[J)V

    goto :goto_8
.end method

.method public fixedSize()I
    .locals 1

    .prologue
    .line 473
    .local p0, "this":Lorg/mapdb/BTreeMap$NodeSerializer;, "Lorg/mapdb/BTreeMap$NodeSerializer<TA;TB;>;"
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
    .line 288
    .local p0, "this":Lorg/mapdb/BTreeMap$NodeSerializer;, "Lorg/mapdb/BTreeMap$NodeSerializer<TA;TB;>;"
    check-cast p2, Lorg/mapdb/BTreeMap$BNode;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/mapdb/BTreeMap$NodeSerializer;->serialize(Ljava/io/DataOutput;Lorg/mapdb/BTreeMap$BNode;)V

    return-void
.end method

.method public serialize(Ljava/io/DataOutput;Lorg/mapdb/BTreeMap$BNode;)V
    .locals 26
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "value"    # Lorg/mapdb/BTreeMap$BNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    .local p0, "this":Lorg/mapdb/BTreeMap$NodeSerializer;, "Lorg/mapdb/BTreeMap$NodeSerializer<TA;TB;>;"
    invoke-interface/range {p2 .. p2}, Lorg/mapdb/BTreeMap$BNode;->isLeaf()Z

    move-result v14

    .line 313
    .local v14, "isLeaf":Z
    sget-boolean v21, Lorg/mapdb/BTreeMap$NodeSerializer;->$assertionsDisabled:Z

    if-nez v21, :cond_0

    invoke-interface/range {p2 .. p2}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0xff

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_0

    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    .line 314
    :cond_0
    sget-boolean v21, Lorg/mapdb/BTreeMap$NodeSerializer;->$assertionsDisabled:Z

    if-nez v21, :cond_1

    if-nez v14, :cond_1

    invoke-interface/range {p2 .. p2}, Lorg/mapdb/BTreeMap$BNode;->child()[J

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    invoke-interface/range {p2 .. p2}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    .line 315
    :cond_1
    sget-boolean v21, Lorg/mapdb/BTreeMap$NodeSerializer;->$assertionsDisabled:Z

    if-nez v21, :cond_2

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mapdb/BTreeMap$NodeSerializer;->hasValues:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    invoke-interface/range {p2 .. p2}, Lorg/mapdb/BTreeMap$BNode;->vals()[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    invoke-interface/range {p2 .. p2}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    .line 316
    :cond_2
    sget-boolean v21, Lorg/mapdb/BTreeMap$NodeSerializer;->$assertionsDisabled:Z

    if-nez v21, :cond_3

    if-nez v14, :cond_3

    invoke-interface/range {p2 .. p2}, Lorg/mapdb/BTreeMap$BNode;->highKey()Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_3

    invoke-interface/range {p2 .. p2}, Lorg/mapdb/BTreeMap$BNode;->child()[J

    move-result-object v21

    invoke-interface/range {p2 .. p2}, Lorg/mapdb/BTreeMap$BNode;->child()[J

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    aget-wide v22, v21, v22

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-nez v21, :cond_3

    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    .line 334
    :cond_3
    invoke-interface/range {p2 .. p2}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v21

    const/16 v22, 0x0

    aget-object v21, v21, v22

    if-nez v21, :cond_4

    const/4 v15, 0x1

    .line 335
    .local v15, "left":Z
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v21

    invoke-interface/range {p2 .. p2}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    aget-object v21, v21, v22

    if-nez v21, :cond_5

    const/16 v17, 0x1

    .line 340
    .local v17, "right":Z
    :goto_1
    if-eqz v14, :cond_9

    .line 341
    if-eqz v17, :cond_7

    .line 342
    if-eqz v15, :cond_6

    .line 343
    const/16 v9, 0xb4

    .line 368
    .local v9, "header":I
    :goto_2
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/io/DataOutput;->write(I)V

    .line 369
    invoke-interface/range {p2 .. p2}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/io/DataOutput;->write(I)V

    .line 372
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mapdb/BTreeMap$NodeSerializer;->numberOfNodeMetas:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v12, v0, :cond_d

    .line 373
    const-wide/16 v22, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lorg/mapdb/DataOutput2;->packLong(Ljava/io/DataOutput;J)V

    .line 372
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 334
    .end local v9    # "header":I
    .end local v12    # "i":I
    .end local v15    # "left":Z
    .end local v17    # "right":Z
    :cond_4
    const/4 v15, 0x0

    goto :goto_0

    .line 335
    .restart local v15    # "left":Z
    :cond_5
    const/16 v17, 0x0

    goto :goto_1

    .line 345
    .restart local v17    # "right":Z
    :cond_6
    const/16 v9, 0xb6

    .restart local v9    # "header":I
    goto :goto_2

    .line 347
    .end local v9    # "header":I
    :cond_7
    if-eqz v15, :cond_8

    .line 348
    const/16 v9, 0xb5

    .restart local v9    # "header":I
    goto :goto_2

    .line 350
    .end local v9    # "header":I
    :cond_8
    const/16 v9, 0xb7

    .restart local v9    # "header":I
    goto :goto_2

    .line 353
    .end local v9    # "header":I
    :cond_9
    if-eqz v17, :cond_b

    .line 354
    if-eqz v15, :cond_a

    .line 355
    const/16 v9, 0xb8

    .restart local v9    # "header":I
    goto :goto_2

    .line 357
    .end local v9    # "header":I
    :cond_a
    const/16 v9, 0xba

    .restart local v9    # "header":I
    goto :goto_2

    .line 359
    .end local v9    # "header":I
    :cond_b
    if-eqz v15, :cond_c

    .line 360
    const/16 v9, 0xb9

    .restart local v9    # "header":I
    goto :goto_2

    .line 362
    .end local v9    # "header":I
    :cond_c
    const/16 v9, 0xbb

    .restart local v9    # "header":I
    goto :goto_2

    .line 377
    .restart local v12    # "i":I
    :cond_d
    if-eqz v14, :cond_f

    move-object/from16 v21, p2

    .line 378
    check-cast v21, Lorg/mapdb/BTreeMap$LeafNode;

    move-object/from16 v0, v21

    iget-wide v0, v0, Lorg/mapdb/BTreeMap$LeafNode;->next:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Lorg/mapdb/DataOutput2;->packLong(Ljava/io/DataOutput;J)V

    .line 385
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap$NodeSerializer;->keySerializer:Lorg/mapdb/BTreeKeySerializer;

    move-object/from16 v23, v0

    if-eqz v15, :cond_10

    const/16 v21, 0x1

    move/from16 v22, v21

    :goto_4
    if-eqz v17, :cond_11

    invoke-interface/range {p2 .. p2}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    :goto_5
    invoke-interface/range {p2 .. p2}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v21

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mapdb/BTreeKeySerializer;->serialize(Ljava/io/DataOutput;II[Ljava/lang/Object;)V

    .line 389
    if-eqz v14, :cond_17

    .line 390
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mapdb/BTreeMap$NodeSerializer;->hasValues:Z

    move/from16 v21, v0

    if-eqz v21, :cond_14

    .line 391
    invoke-interface/range {p2 .. p2}, Lorg/mapdb/BTreeMap$BNode;->vals()[Ljava/lang/Object;

    move-result-object v6

    .local v6, "arr$":[Ljava/lang/Object;
    array-length v0, v6

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_6
    move/from16 v0, v16

    if-ge v13, v0, :cond_17

    aget-object v20, v6, v13

    .line 392
    .local v20, "val":Ljava/lang/Object;
    sget-boolean v21, Lorg/mapdb/BTreeMap$NodeSerializer;->$assertionsDisabled:Z

    if-nez v21, :cond_12

    if-nez v20, :cond_12

    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    .end local v6    # "arr$":[Ljava/lang/Object;
    .end local v13    # "i$":I
    .end local v16    # "len$":I
    .end local v20    # "val":Ljava/lang/Object;
    :cond_f
    move-object/from16 v21, p2

    .line 380
    check-cast v21, Lorg/mapdb/BTreeMap$DirNode;

    move-object/from16 v0, v21

    iget-object v6, v0, Lorg/mapdb/BTreeMap$DirNode;->child:[J

    .local v6, "arr$":[J
    array-length v0, v6

    move/from16 v16, v0

    .restart local v16    # "len$":I
    const/4 v13, 0x0

    .restart local v13    # "i$":I
    :goto_7
    move/from16 v0, v16

    if-ge v13, v0, :cond_e

    aget-wide v10, v6, v13

    .line 381
    .local v10, "child":J
    move-object/from16 v0, p1

    invoke-static {v0, v10, v11}, Lorg/mapdb/DataOutput2;->packLong(Ljava/io/DataOutput;J)V

    .line 380
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 385
    .end local v6    # "arr$":[J
    .end local v10    # "child":J
    .end local v13    # "i$":I
    .end local v16    # "len$":I
    :cond_10
    const/16 v21, 0x0

    move/from16 v22, v21

    goto :goto_4

    :cond_11
    invoke-interface/range {p2 .. p2}, Lorg/mapdb/BTreeMap$BNode;->keys()[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    goto :goto_5

    .line 393
    .local v6, "arr$":[Ljava/lang/Object;
    .restart local v13    # "i$":I
    .restart local v16    # "len$":I
    .restart local v20    # "val":Ljava/lang/Object;
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mapdb/BTreeMap$NodeSerializer;->valsOutsideNodes:Z

    move/from16 v21, v0

    if-eqz v21, :cond_13

    .line 394
    check-cast v20, Lorg/mapdb/BTreeMap$ValRef;

    .end local v20    # "val":Ljava/lang/Object;
    move-object/from16 v0, v20

    iget-wide v0, v0, Lorg/mapdb/BTreeMap$ValRef;->recid:J

    move-wide/from16 v18, v0

    .line 395
    .local v18, "recid":J
    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lorg/mapdb/DataOutput2;->packLong(Ljava/io/DataOutput;J)V

    .line 391
    .end local v18    # "recid":J
    :goto_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 397
    .restart local v20    # "val":Ljava/lang/Object;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mapdb/BTreeMap$NodeSerializer;->valueSerializer:Lorg/mapdb/Serializer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/mapdb/Serializer;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V

    goto :goto_8

    .line 402
    .end local v6    # "arr$":[Ljava/lang/Object;
    .end local v13    # "i$":I
    .end local v16    # "len$":I
    .end local v20    # "val":Ljava/lang/Object;
    :cond_14
    invoke-interface/range {p2 .. p2}, Lorg/mapdb/BTreeMap$BNode;->vals()[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v8, v0, [Z

    .line 403
    .local v8, "bools":[Z
    const/4 v12, 0x0

    :goto_9
    array-length v0, v8

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v12, v0, :cond_16

    .line 404
    invoke-interface/range {p2 .. p2}, Lorg/mapdb/BTreeMap$BNode;->vals()[Ljava/lang/Object;

    move-result-object v21

    aget-object v21, v21, v12

    if-eqz v21, :cond_15

    const/16 v21, 0x1

    :goto_a
    aput-boolean v21, v8, v12

    .line 403
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 404
    :cond_15
    const/16 v21, 0x0

    goto :goto_a

    .line 407
    :cond_16
    invoke-static {v8}, Lorg/mapdb/SerializerBase;->booleanToByteArray([Z)[B

    move-result-object v7

    .line 408
    .local v7, "bb":[B
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/io/DataOutput;->write([B)V

    .line 412
    .end local v7    # "bb":[B
    .end local v8    # "bools":[Z
    :cond_17
    return-void
.end method
