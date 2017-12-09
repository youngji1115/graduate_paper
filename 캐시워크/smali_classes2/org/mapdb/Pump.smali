.class public final Lorg/mapdb/Pump;
.super Ljava/lang/Object;
.source "Pump.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static arrayIterator([Ljava/lang/Object;II)Ljava/util/Iterator;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "II)",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 482
    new-instance v0, Lorg/mapdb/Pump$4;

    invoke-direct {v0, p1, p2, p0}, Lorg/mapdb/Pump$4;-><init>(II[Ljava/lang/Object;)V

    return-object v0
.end method

.method private static arrayList(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 476
    .local p0, "item":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 477
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    return-object v0
.end method

.method public static buildTreeMap(Ljava/util/Iterator;Lorg/mapdb/Engine;Lorg/mapdb/Fun$Function1;Lorg/mapdb/Fun$Function1;ZIZJLorg/mapdb/BTreeKeySerializer;Lorg/mapdb/Serializer;Ljava/util/Comparator;)J
    .locals 41
    .param p1, "engine"    # Lorg/mapdb/Engine;
    .param p4, "ignoreDuplicates"    # Z
    .param p5, "nodeSize"    # I
    .param p6, "valuesStoredOutsideNodes"    # Z
    .param p7, "counterRecid"    # J
    .param p11, "comparator"    # Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TE;>;",
            "Lorg/mapdb/Engine;",
            "Lorg/mapdb/Fun$Function1",
            "<TK;TE;>;",
            "Lorg/mapdb/Fun$Function1",
            "<TV;TE;>;ZIZJ",
            "Lorg/mapdb/BTreeKeySerializer",
            "<TK;>;",
            "Lorg/mapdb/Serializer",
            "<TV;>;",
            "Ljava/util/Comparator;",
            ")J"
        }
    .end annotation

    .prologue
    .line 333
    .local p0, "source":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    .local p2, "keyExtractor":Lorg/mapdb/Fun$Function1;, "Lorg/mapdb/Fun$Function1<TK;TE;>;"
    .local p3, "valueExtractor":Lorg/mapdb/Fun$Function1;, "Lorg/mapdb/Fun$Function1<TV;TE;>;"
    .local p9, "keySerializer":Lorg/mapdb/BTreeKeySerializer;, "Lorg/mapdb/BTreeKeySerializer<TK;>;"
    .local p10, "valueSerializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<TV;>;"
    if-nez p11, :cond_0

    .line 334
    sget-object p11, Lorg/mapdb/BTreeMap;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    .line 336
    :cond_0
    const-wide/high16 v10, 0x3fe8000000000000L    # 0.75

    .line 338
    .local v10, "NODE_LOAD":D
    new-instance v4, Lorg/mapdb/BTreeMap$NodeSerializer;

    const/4 v9, 0x0

    move/from16 v5, p6

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    invoke-direct/range {v4 .. v9}, Lorg/mapdb/BTreeMap$NodeSerializer;-><init>(ZLorg/mapdb/BTreeKeySerializer;Lorg/mapdb/Serializer;Ljava/util/Comparator;I)V

    .line 341
    .local v4, "nodeSerializer":Lorg/mapdb/Serializer;, "Lorg/mapdb/Serializer<Lorg/mapdb/BTreeMap$BNode;>;"
    move/from16 v0, p5

    int-to-double v6, v0

    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v6, v8

    double-to-int v0, v6

    move/from16 v31, v0

    .line 342
    .local v31, "nload":I
    const/4 v5, 0x0

    invoke-static {v5}, Lorg/mapdb/Pump;->arrayList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v5}, Lorg/mapdb/Pump;->arrayList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v16

    .line 343
    .local v16, "dirKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Lorg/mapdb/Pump;->arrayList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v5}, Lorg/mapdb/Pump;->arrayList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v17

    .line 345
    .local v17, "dirRecids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    const-wide/16 v14, 0x0

    .line 347
    .local v14, "counter":J
    const-wide/16 v28, 0x0

    .line 350
    .local v28, "nextNode":J
    const/4 v5, 0x0

    invoke-static {v5}, Lorg/mapdb/Pump;->arrayList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v23

    .line 351
    .local v23, "keys":Ljava/util/List;, "Ljava/util/List<TK;>;"
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v39, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/16 v33, 0x0

    .line 354
    :cond_1
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 356
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_3

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 357
    const-wide/16 v6, 0x1

    add-long/2addr v14, v6

    .line 358
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    .line 359
    .local v26, "next":Ljava/lang/Object;, "TE;"
    if-nez v26, :cond_2

    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "source returned null element"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 360
    :cond_2
    if-nez p2, :cond_5

    move-object/from16 v22, v26

    .line 361
    .local v22, "key":Ljava/lang/Object;, "TK;"
    :goto_1
    if-nez v33, :cond_6

    const/4 v12, -0x1

    .line 362
    .local v12, "compared":I
    :goto_2
    if-eqz p4, :cond_a

    if-nez v12, :cond_a

    .line 364
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_7

    .line 386
    .end local v12    # "compared":I
    .end local v22    # "key":Ljava/lang/Object;, "TK;"
    .end local v26    # "next":Ljava/lang/Object;, "TE;"
    :cond_3
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 387
    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    const/4 v5, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_4
    invoke-static/range {v23 .. v23}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 393
    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v30

    .line 394
    .local v30, "nextVal":Ljava/lang/Object;
    invoke-static/range {v39 .. v39}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 399
    new-instance v32, Lorg/mapdb/BTreeMap$LeafNode;

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v32

    move-wide/from16 v1, v28

    invoke-direct {v0, v5, v6, v1, v2}, Lorg/mapdb/BTreeMap$LeafNode;-><init>([Ljava/lang/Object;[Ljava/lang/Object;J)V

    .line 400
    .local v32, "node":Lorg/mapdb/BTreeMap$LeafNode;
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v1, v4}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v28

    .line 401
    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    .line 402
    .local v27, "nextKey":Ljava/lang/Object;, "TK;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->clear()V

    .line 404
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->clear()V

    .line 408
    move-object/from16 v0, v39

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual/range {v32 .. v32}, Lorg/mapdb/BTreeMap$LeafNode;->keys()[Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    const/16 v21, 0x0

    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v21

    if-ge v0, v5, :cond_1

    .line 415
    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v31

    if-lt v5, v0, :cond_1

    .line 417
    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 418
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 420
    new-instance v13, Lorg/mapdb/BTreeMap$DirNode;

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-direct {v13, v6, v5}, Lorg/mapdb/BTreeMap$DirNode;-><init>([Ljava/lang/Object;Ljava/util/List;)V

    .line 421
    .local v13, "dir":Lorg/mapdb/BTreeMap$DirNode;
    move-object/from16 v0, p1

    invoke-interface {v0, v13, v4}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v18

    .line 422
    .local v18, "dirRecid":J
    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    .line 423
    .local v20, "dirStart":Ljava/lang/Object;
    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 424
    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 426
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v6, v21, 0x1

    if-ne v5, v6, :cond_f

    .line 430
    invoke-static/range {v20 .. v20}, Lorg/mapdb/Pump;->arrayList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Lorg/mapdb/Pump;->arrayList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    :goto_4
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_3

    .line 360
    .end local v13    # "dir":Lorg/mapdb/BTreeMap$DirNode;
    .end local v18    # "dirRecid":J
    .end local v20    # "dirStart":Ljava/lang/Object;
    .end local v27    # "nextKey":Ljava/lang/Object;, "TK;"
    .end local v30    # "nextVal":Ljava/lang/Object;
    .end local v32    # "node":Lorg/mapdb/BTreeMap$LeafNode;
    .restart local v26    # "next":Ljava/lang/Object;, "TE;"
    :cond_5
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/mapdb/Fun$Function1;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    goto/16 :goto_1

    .line 361
    .restart local v22    # "key":Ljava/lang/Object;, "TK;"
    :cond_6
    move-object/from16 v0, p11

    move-object/from16 v1, v22

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v12

    goto/16 :goto_2

    .line 365
    .restart local v12    # "compared":I
    :cond_7
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    .line 366
    if-nez v26, :cond_8

    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "source returned null element"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 367
    :cond_8
    if-nez p2, :cond_9

    move-object/from16 v22, v26

    .line 368
    :goto_5
    move-object/from16 v0, p11

    move-object/from16 v1, v22

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v12

    goto/16 :goto_2

    .line 367
    :cond_9
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/mapdb/Fun$Function1;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    goto :goto_5

    .line 371
    :cond_a
    if-eqz v33, :cond_b

    if-ltz v12, :cond_b

    .line 372
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Keys in \'source\' iterator are not reverse sorted"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 373
    :cond_b
    move-object/from16 v33, v22

    .line 374
    .local v33, "oldKey":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    if-eqz p3, :cond_c

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/mapdb/Fun$Function1;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .line 377
    .local v38, "val":Ljava/lang/Object;
    :goto_6
    if-nez v38, :cond_d

    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "extractValue returned null value"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 376
    .end local v38    # "val":Ljava/lang/Object;
    :cond_c
    sget-object v38, Lorg/mapdb/BTreeMap;->EMPTY:Ljava/lang/Object;

    goto :goto_6

    .line 378
    .restart local v38    # "val":Ljava/lang/Object;
    :cond_d
    if-eqz p6, :cond_e

    .line 379
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    move-object/from16 v2, p10

    invoke-interface {v0, v1, v2}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v34

    .line 380
    .local v34, "recid":J
    new-instance v38, Lorg/mapdb/BTreeMap$ValRef;

    .end local v38    # "val":Ljava/lang/Object;
    move-object/from16 v0, v38

    move-wide/from16 v1, v34

    invoke-direct {v0, v1, v2}, Lorg/mapdb/BTreeMap$ValRef;-><init>(J)V

    .line 382
    .end local v34    # "recid":J
    :cond_e
    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    .line 433
    .end local v12    # "compared":I
    .end local v22    # "key":Ljava/lang/Object;, "TK;"
    .end local v26    # "next":Ljava/lang/Object;, "TE;"
    .end local v33    # "oldKey":Ljava/lang/Object;, "TK;"
    .restart local v13    # "dir":Lorg/mapdb/BTreeMap$DirNode;
    .restart local v18    # "dirRecid":J
    .restart local v20    # "dirStart":Ljava/lang/Object;
    .restart local v27    # "nextKey":Ljava/lang/Object;, "TK;"
    .restart local v30    # "nextVal":Ljava/lang/Object;
    .restart local v32    # "node":Lorg/mapdb/BTreeMap$LeafNode;
    :cond_f
    add-int/lit8 v5, v21, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    add-int/lit8 v5, v21, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 440
    .end local v13    # "dir":Lorg/mapdb/BTreeMap$DirNode;
    .end local v18    # "dirRecid":J
    .end local v20    # "dirStart":Ljava/lang/Object;
    .end local v21    # "i":I
    .end local v27    # "nextKey":Ljava/lang/Object;, "TK;"
    .end local v30    # "nextVal":Ljava/lang/Object;
    .end local v32    # "node":Lorg/mapdb/BTreeMap$LeafNode;
    :cond_10
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_7
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, v21

    if-ge v0, v5, :cond_12

    .line 442
    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/ArrayList;

    .line 443
    .local v24, "keys2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static/range {v24 .. v24}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 444
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 446
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_11

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_11

    const/4 v5, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_11

    .line 447
    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 448
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 452
    :cond_11
    new-instance v13, Lorg/mapdb/BTreeMap$DirNode;

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-direct {v13, v6, v5}, Lorg/mapdb/BTreeMap$DirNode;-><init>([Ljava/lang/Object;Ljava/util/List;)V

    .line 453
    .restart local v13    # "dir":Lorg/mapdb/BTreeMap$DirNode;
    move-object/from16 v0, p1

    invoke-interface {v0, v13, v4}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v18

    .line 454
    .restart local v18    # "dirRecid":J
    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    .line 455
    .restart local v20    # "dirStart":Ljava/lang/Object;
    add-int/lit8 v5, v21, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    add-int/lit8 v5, v21, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_7

    .line 461
    .end local v13    # "dir":Lorg/mapdb/BTreeMap$DirNode;
    .end local v18    # "dirRecid":J
    .end local v20    # "dirStart":Ljava/lang/Object;
    .end local v24    # "keys2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_12
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v25, v5, -0x1

    .line 462
    .local v25, "len":I
    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 463
    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 466
    const-wide/16 v6, 0x0

    cmp-long v5, p7, v6

    if-eqz v5, :cond_13

    .line 467
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    move-object/from16 v0, p1

    move-wide/from16 v1, p7

    invoke-interface {v0, v1, v2, v5, v6}, Lorg/mapdb/Engine;->update(JLjava/lang/Object;Lorg/mapdb/Serializer;)V

    .line 469
    :cond_13
    new-instance v13, Lorg/mapdb/BTreeMap$DirNode;

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-direct {v13, v6, v5}, Lorg/mapdb/BTreeMap$DirNode;-><init>([Ljava/lang/Object;Ljava/util/List;)V

    .line 470
    .restart local v13    # "dir":Lorg/mapdb/BTreeMap$DirNode;
    move-object/from16 v0, p1

    invoke-interface {v0, v13, v4}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v36

    .line 471
    .local v36, "rootRecid":J
    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Lorg/mapdb/Serializer;->LONG:Lorg/mapdb/Serializer;

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v6}, Lorg/mapdb/Engine;->put(Ljava/lang/Object;Lorg/mapdb/Serializer;)J

    move-result-wide v6

    return-wide v6
.end method

.method static copy(Lorg/mapdb/DB;Lorg/mapdb/DB;)V
    .locals 2
    .param p0, "db1"    # Lorg/mapdb/DB;
    .param p1, "db2"    # Lorg/mapdb/DB;

    .prologue
    .line 31
    invoke-static {p0}, Lorg/mapdb/Store;->forDB(Lorg/mapdb/DB;)Lorg/mapdb/Store;

    move-result-object v0

    invoke-static {p1}, Lorg/mapdb/Store;->forDB(Lorg/mapdb/DB;)Lorg/mapdb/Store;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mapdb/Pump;->copy(Lorg/mapdb/Store;Lorg/mapdb/Store;)V

    .line 32
    iget-object v0, p1, Lorg/mapdb/DB;->engine:Lorg/mapdb/Engine;

    invoke-interface {v0}, Lorg/mapdb/Engine;->clearCache()V

    .line 33
    invoke-virtual {p1}, Lorg/mapdb/DB;->reinit()V

    .line 34
    return-void
.end method

.method static copy(Lorg/mapdb/Store;Lorg/mapdb/Store;)V
    .locals 9
    .param p0, "s1"    # Lorg/mapdb/Store;
    .param p1, "s2"    # Lorg/mapdb/Store;

    .prologue
    .line 39
    invoke-virtual {p0}, Lorg/mapdb/Store;->getMaxRecid()J

    move-result-wide v2

    .line 40
    .local v2, "maxRecid":J
    const-wide/16 v4, 0x1

    .local v4, "recid":J
    :goto_0
    cmp-long v6, v4, v2

    if-gtz v6, :cond_1

    .line 41
    invoke-virtual {p0, v4, v5}, Lorg/mapdb/Store;->getRaw(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 43
    .local v0, "bb":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_0

    .line 40
    :goto_1
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p1, v4, v5, v0}, Lorg/mapdb/Store;->updateRaw(JLjava/nio/ByteBuffer;)V

    goto :goto_1

    .line 48
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_1
    invoke-virtual {p0}, Lorg/mapdb/Store;->getFreeRecids()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual {p1, v6, v7, v8}, Lorg/mapdb/Store;->delete(JLorg/mapdb/Serializer;)V

    goto :goto_2

    .line 51
    :cond_2
    return-void
.end method

.method public static varargs merge([Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .param p0, "iters"    # [Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/Iterator;",
            ")",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 252
    array-length v0, p0

    if-nez v0, :cond_0

    .line 253
    sget-object v0, Lorg/mapdb/Fun;->EMPTY_ITERATOR:Ljava/util/Iterator;

    .line 255
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/mapdb/Pump$3;

    invoke-direct {v0, p0}, Lorg/mapdb/Pump$3;-><init>([Ljava/util/Iterator;)V

    goto :goto_0
.end method

.method public static varargs sort(Ljava/util/Comparator;Z[Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 2
    .param p0, "comparator"    # Ljava/util/Comparator;
    .param p1, "mergeDuplicates"    # Z
    .param p2, "iterators"    # [Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator;",
            "Z[",
            "Ljava/util/Iterator;",
            ")",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 168
    if-nez p0, :cond_0

    sget-object v0, Lorg/mapdb/BTreeMap;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    .line 169
    .local v0, "comparator2":Ljava/util/Comparator;
    :goto_0
    new-instance v1, Lorg/mapdb/Pump$2;

    invoke-direct {v1, v0, p2, p1}, Lorg/mapdb/Pump$2;-><init>(Ljava/util/Comparator;[Ljava/util/Iterator;Z)V

    return-object v1

    .end local v0    # "comparator2":Ljava/util/Comparator;
    :cond_0
    move-object v0, p0

    .line 168
    goto :goto_0
.end method

.method public static sort(Ljava/util/Iterator;ZILjava/util/Comparator;Lorg/mapdb/Serializer;)Ljava/util/Iterator;
    .locals 21
    .param p1, "mergeDuplicates"    # Z
    .param p2, "batchSize"    # I
    .param p3, "comparator"    # Ljava/util/Comparator;
    .param p4, "serializer"    # Lorg/mapdb/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TE;>;ZI",
            "Ljava/util/Comparator;",
            "Lorg/mapdb/Serializer;",
            ")",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "source":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    if-gtz p2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 68
    :cond_0
    if-nez p3, :cond_1

    .line 69
    sget-object p3, Lorg/mapdb/BTreeMap;->COMPARABLE_COMPARATOR:Ljava/util/Comparator;

    .line 70
    :cond_1
    if-nez p0, :cond_2

    .line 71
    sget-object p0, Lorg/mapdb/Fun;->EMPTY_ITERATOR:Ljava/util/Iterator;

    .line 73
    :cond_2
    const/4 v9, 0x0

    .line 74
    .local v9, "counter":I
    move/from16 v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 75
    .local v17, "presort":[Ljava/lang/Object;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v7, "presortFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v18, "presortCount2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3
    :goto_0
    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 80
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v17, v9

    .line 81
    add-int/lit8 v9, v9, 0x1

    .line 83
    move/from16 v0, p2

    if-lt v9, v0, :cond_3

    .line 85
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 88
    const-string v2, "mapdb"

    const-string v5, "sort"

    invoke-static {v2, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 89
    .local v11, "f":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->deleteOnExit()V

    .line 90
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v16, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 92
    .local v16, "out":Ljava/io/DataOutputStream;
    move-object/from16 v8, v17

    .local v8, "arr$":[Ljava/lang/Object;
    array-length v15, v8

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_1
    if-ge v13, v15, :cond_4

    aget-object v10, v8, v13

    .line 93
    .local v10, "e":Ljava/lang/Object;
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-interface {v0, v1, v10}, Lorg/mapdb/Serializer;->serialize(Ljava/io/DataOutput;Ljava/lang/Object;)V

    .line 92
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 95
    .end local v10    # "e":Ljava/lang/Object;
    :cond_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->close()V

    .line 96
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    const/4 v9, 0x0

    .line 99
    goto :goto_0

    .line 102
    .end local v8    # "arr$":[Ljava/lang/Object;
    .end local v11    # "f":Ljava/io/File;
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    .end local v16    # "out":Ljava/io/DataOutputStream;
    :cond_5
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 104
    const/4 v2, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-static {v0, v2, v9, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 105
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v2, v9}, Lorg/mapdb/Pump;->arrayIterator([Ljava/lang/Object;II)Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 152
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/File;

    .restart local v11    # "f":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 108
    .end local v11    # "f":Ljava/io/File;
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_6
    :try_start_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [I

    .line 109
    .local v3, "presortCount":[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    array-length v2, v3

    if-ge v12, v2, :cond_7

    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v3, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 111
    :cond_7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    new-array v14, v2, [Ljava/util/Iterator;

    .line 112
    .local v14, "iterators":[Ljava/util/Iterator;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    new-array v6, v2, [Ljava/io/DataInputStream;

    .line 113
    .local v6, "ins":[Ljava/io/DataInputStream;
    const/4 v12, 0x0

    :goto_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_8

    .line 114
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v19, Ljava/io/BufferedInputStream;

    new-instance v20, Ljava/io/FileInputStream;

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct/range {v19 .. v20}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    aput-object v5, v6, v12

    .line 115
    move v4, v12

    .line 116
    .local v4, "pos":I
    new-instance v2, Lorg/mapdb/Pump$1;

    move-object/from16 v5, p4

    invoke-direct/range {v2 .. v7}, Lorg/mapdb/Pump$1;-><init>([IILorg/mapdb/Serializer;[Ljava/io/DataInputStream;Ljava/util/List;)V

    aput-object v2, v14, v12

    .line 113
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 143
    .end local v4    # "pos":I
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-static {v0, v2, v9, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 144
    array-length v2, v14

    add-int/lit8 v2, v2, -0x1

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v5, v9}, Lorg/mapdb/Pump;->arrayIterator([Ljava/lang/Object;II)Ljava/util/Iterator;

    move-result-object v5

    aput-object v5, v14, v2

    .line 147
    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-static {v0, v1, v14}, Lorg/mapdb/Pump;->sort(Ljava/util/Comparator;Z[Ljava/util/Iterator;)Ljava/util/Iterator;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 152
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/File;

    .restart local v11    # "f":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    goto :goto_5

    .line 149
    .end local v3    # "presortCount":[I
    .end local v6    # "ins":[Ljava/io/DataInputStream;
    .end local v11    # "f":Ljava/io/File;
    .end local v12    # "i":I
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "iterators":[Ljava/util/Iterator;
    :catch_0
    move-exception v10

    .line 150
    .local v10, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Ljava/io/IOError;

    invoke-direct {v2, v10}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/File;

    .restart local v11    # "f":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    goto :goto_6

    .end local v11    # "f":Ljava/io/File;
    :cond_9
    throw v2

    :cond_a
    return-object v2
.end method
