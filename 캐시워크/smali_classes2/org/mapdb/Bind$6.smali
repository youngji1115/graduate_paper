.class final Lorg/mapdb/Bind$6;
.super Ljava/lang/Object;
.source "Bind.java"

# interfaces
.implements Lorg/mapdb/Bind$MapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mapdb/Bind;->secondaryKeys(Lorg/mapdb/Bind$MapWithModificationListener;Ljava/util/Set;Lorg/mapdb/Fun$Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mapdb/Bind$MapListener",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$fun:Lorg/mapdb/Fun$Function2;

.field final synthetic val$secondary:Ljava/util/Set;


# direct methods
.method constructor <init>(Lorg/mapdb/Fun$Function2;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lorg/mapdb/Bind$6;->val$fun:Lorg/mapdb/Fun$Function2;

    iput-object p2, p0, Lorg/mapdb/Bind$6;->val$secondary:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)V"
        }
    .end annotation

    .prologue
    .line 430
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    if-nez p3, :cond_0

    .line 432
    iget-object v9, p0, Lorg/mapdb/Bind$6;->val$fun:Lorg/mapdb/Fun$Function2;

    invoke-interface {v9, p1, p2}, Lorg/mapdb/Fun$Function2;->run(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    .line 433
    .local v4, "k2":[Ljava/lang/Object;, "[TK2;"
    if-eqz v4, :cond_7

    .line 434
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v6, :cond_7

    aget-object v5, v0, v2

    .line 435
    .local v5, "k22":Ljava/lang/Object;, "TK2;"
    iget-object v9, p0, Lorg/mapdb/Bind$6;->val$secondary:Ljava/util/Set;

    invoke-static {v5, p1}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 434
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 436
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v4    # "k2":[Ljava/lang/Object;, "[TK2;"
    .end local v5    # "k22":Ljava/lang/Object;, "TK2;"
    .end local v6    # "len$":I
    :cond_0
    if-nez p2, :cond_1

    .line 438
    iget-object v9, p0, Lorg/mapdb/Bind$6;->val$fun:Lorg/mapdb/Fun$Function2;

    invoke-interface {v9, p1, p3}, Lorg/mapdb/Fun$Function2;->run(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    .line 439
    .restart local v4    # "k2":[Ljava/lang/Object;, "[TK2;"
    if-eqz v4, :cond_7

    .line 440
    move-object v0, v4

    .restart local v0    # "arr$":[Ljava/lang/Object;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v6, :cond_7

    aget-object v5, v0, v2

    .line 441
    .restart local v5    # "k22":Ljava/lang/Object;, "TK2;"
    iget-object v9, p0, Lorg/mapdb/Bind$6;->val$secondary:Ljava/util/Set;

    invoke-static {v5, p1}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 440
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 444
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v4    # "k2":[Ljava/lang/Object;, "[TK2;"
    .end local v5    # "k22":Ljava/lang/Object;, "TK2;"
    .end local v6    # "len$":I
    :cond_1
    iget-object v9, p0, Lorg/mapdb/Bind$6;->val$fun:Lorg/mapdb/Fun$Function2;

    invoke-interface {v9, p1, p2}, Lorg/mapdb/Fun$Function2;->run(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    .line 445
    .local v8, "oldk":[Ljava/lang/Object;, "[TK2;"
    iget-object v9, p0, Lorg/mapdb/Bind$6;->val$fun:Lorg/mapdb/Fun$Function2;

    invoke-interface {v9, p1, p3}, Lorg/mapdb/Fun$Function2;->run(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    .line 446
    .local v7, "newk":[Ljava/lang/Object;, "[TK2;"
    if-nez v8, :cond_2

    .line 448
    if-eqz v7, :cond_7

    .line 449
    move-object v0, v7

    .restart local v0    # "arr$":[Ljava/lang/Object;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v6, :cond_7

    aget-object v5, v0, v2

    .line 450
    .restart local v5    # "k22":Ljava/lang/Object;, "TK2;"
    iget-object v9, p0, Lorg/mapdb/Bind$6;->val$secondary:Ljava/util/Set;

    invoke-static {v5, p1}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 449
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 453
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v5    # "k22":Ljava/lang/Object;, "TK2;"
    .end local v6    # "len$":I
    :cond_2
    if-nez v7, :cond_3

    .line 455
    move-object v0, v8

    .restart local v0    # "arr$":[Ljava/lang/Object;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v6, :cond_7

    aget-object v5, v0, v2

    .line 456
    .restart local v5    # "k22":Ljava/lang/Object;, "TK2;"
    iget-object v9, p0, Lorg/mapdb/Bind$6;->val$secondary:Ljava/util/Set;

    invoke-static {v5, p1}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 455
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 460
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v5    # "k22":Ljava/lang/Object;, "TK2;"
    .end local v6    # "len$":I
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 461
    .local v1, "hashes":Ljava/util/Set;, "Ljava/util/Set<TK2;>;"
    invoke-static {v1, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 464
    move-object v0, v7

    .restart local v0    # "arr$":[Ljava/lang/Object;
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_4
    if-ge v2, v6, :cond_5

    aget-object v3, v0, v2

    .line 465
    .local v3, "k2":Ljava/lang/Object;, "TK2;"
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 466
    iget-object v9, p0, Lorg/mapdb/Bind$6;->val$secondary:Ljava/util/Set;

    invoke-static {v3, p1}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 464
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 470
    .end local v3    # "k2":Ljava/lang/Object;, "TK2;"
    :cond_5
    move-object v0, v7

    array-length v6, v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v6, :cond_6

    aget-object v3, v0, v2

    .line 471
    .restart local v3    # "k2":Ljava/lang/Object;, "TK2;"
    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 470
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 473
    .end local v3    # "k2":Ljava/lang/Object;, "TK2;"
    :cond_6
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 474
    .restart local v3    # "k2":Ljava/lang/Object;, "TK2;"
    iget-object v9, p0, Lorg/mapdb/Bind$6;->val$secondary:Ljava/util/Set;

    invoke-static {v3, p1}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    .line 477
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "hashes":Ljava/util/Set;, "Ljava/util/Set<TK2;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "k2":Ljava/lang/Object;, "TK2;"
    .end local v6    # "len$":I
    .end local v7    # "newk":[Ljava/lang/Object;, "[TK2;"
    .end local v8    # "oldk":[Ljava/lang/Object;, "[TK2;"
    :cond_7
    return-void
.end method
