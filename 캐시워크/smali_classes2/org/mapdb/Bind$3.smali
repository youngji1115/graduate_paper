.class final Lorg/mapdb/Bind$3;
.super Ljava/lang/Object;
.source "Bind.java"

# interfaces
.implements Lorg/mapdb/Bind$MapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mapdb/Bind;->secondaryValues(Lorg/mapdb/Bind$MapWithModificationListener;Ljava/util/Set;Lorg/mapdb/Fun$Function2;)V
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
    .line 233
    iput-object p1, p0, Lorg/mapdb/Bind$3;->val$fun:Lorg/mapdb/Fun$Function2;

    iput-object p2, p0, Lorg/mapdb/Bind$3;->val$secondary:Ljava/util/Set;

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
    .line 236
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    if-nez p3, :cond_0

    .line 238
    iget-object v9, p0, Lorg/mapdb/Bind$3;->val$fun:Lorg/mapdb/Fun$Function2;

    invoke-interface {v9, p1, p2}, Lorg/mapdb/Fun$Function2;->run(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    .line 239
    .local v7, "v":[Ljava/lang/Object;, "[TV2;"
    if-eqz v7, :cond_7

    .line 240
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_7

    aget-object v8, v0, v2

    .line 241
    .local v8, "v2":Ljava/lang/Object;, "TV2;"
    iget-object v9, p0, Lorg/mapdb/Bind$3;->val$secondary:Ljava/util/Set;

    invoke-static {p1, v8}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 242
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v7    # "v":[Ljava/lang/Object;, "[TV2;"
    .end local v8    # "v2":Ljava/lang/Object;, "TV2;"
    :cond_0
    if-nez p2, :cond_1

    .line 244
    iget-object v9, p0, Lorg/mapdb/Bind$3;->val$fun:Lorg/mapdb/Fun$Function2;

    invoke-interface {v9, p1, p3}, Lorg/mapdb/Fun$Function2;->run(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    .line 245
    .restart local v7    # "v":[Ljava/lang/Object;, "[TV2;"
    if-eqz v7, :cond_7

    .line 246
    move-object v0, v7

    .restart local v0    # "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v3, :cond_7

    aget-object v8, v0, v2

    .line 247
    .restart local v8    # "v2":Ljava/lang/Object;, "TV2;"
    iget-object v9, p0, Lorg/mapdb/Bind$3;->val$secondary:Ljava/util/Set;

    invoke-static {p1, v8}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 250
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v7    # "v":[Ljava/lang/Object;, "[TV2;"
    .end local v8    # "v2":Ljava/lang/Object;, "TV2;"
    :cond_1
    iget-object v9, p0, Lorg/mapdb/Bind$3;->val$fun:Lorg/mapdb/Fun$Function2;

    invoke-interface {v9, p1, p2}, Lorg/mapdb/Fun$Function2;->run(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    .line 251
    .local v5, "oldv":[Ljava/lang/Object;, "[TV2;"
    iget-object v9, p0, Lorg/mapdb/Bind$3;->val$fun:Lorg/mapdb/Fun$Function2;

    invoke-interface {v9, p1, p3}, Lorg/mapdb/Fun$Function2;->run(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    .line 252
    .local v4, "newv":[Ljava/lang/Object;, "[TV2;"
    if-nez v5, :cond_2

    .line 254
    if-eqz v4, :cond_7

    .line 255
    move-object v0, v4

    .restart local v0    # "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v3, :cond_7

    aget-object v6, v0, v2

    .line 256
    .local v6, "v":Ljava/lang/Object;, "TV2;"
    iget-object v9, p0, Lorg/mapdb/Bind$3;->val$secondary:Ljava/util/Set;

    invoke-static {p1, v6}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 259
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "v":Ljava/lang/Object;, "TV2;"
    :cond_2
    if-nez v4, :cond_3

    .line 261
    move-object v0, v5

    .restart local v0    # "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v3, :cond_7

    aget-object v6, v0, v2

    .line 262
    .restart local v6    # "v":Ljava/lang/Object;, "TV2;"
    iget-object v9, p0, Lorg/mapdb/Bind$3;->val$secondary:Ljava/util/Set;

    invoke-static {p1, v6}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 266
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "v":Ljava/lang/Object;, "TV2;"
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 267
    .local v1, "hashes":Ljava/util/Set;, "Ljava/util/Set<TV2;>;"
    invoke-static {v1, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 270
    move-object v0, v4

    .restart local v0    # "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_4
    if-ge v2, v3, :cond_5

    aget-object v6, v0, v2

    .line 271
    .restart local v6    # "v":Ljava/lang/Object;, "TV2;"
    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 272
    iget-object v9, p0, Lorg/mapdb/Bind$3;->val$secondary:Ljava/util/Set;

    invoke-static {p1, v6}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 276
    .end local v6    # "v":Ljava/lang/Object;, "TV2;"
    :cond_5
    move-object v0, v4

    array-length v3, v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_6

    aget-object v6, v0, v2

    .line 277
    .restart local v6    # "v":Ljava/lang/Object;, "TV2;"
    invoke-interface {v1, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 279
    .end local v6    # "v":Ljava/lang/Object;, "TV2;"
    :cond_6
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 280
    .restart local v6    # "v":Ljava/lang/Object;, "TV2;"
    iget-object v9, p0, Lorg/mapdb/Bind$3;->val$secondary:Ljava/util/Set;

    invoke-static {p1, v6}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    .line 283
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v1    # "hashes":Ljava/util/Set;, "Ljava/util/Set<TV2;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "len$":I
    .end local v4    # "newv":[Ljava/lang/Object;, "[TV2;"
    .end local v5    # "oldv":[Ljava/lang/Object;, "[TV2;"
    .end local v6    # "v":Ljava/lang/Object;, "TV2;"
    :cond_7
    return-void
.end method
