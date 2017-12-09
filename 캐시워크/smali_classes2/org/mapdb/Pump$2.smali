.class final Lorg/mapdb/Pump$2;
.super Ljava/lang/Object;
.source "Pump.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mapdb/Pump;->sort(Ljava/util/Comparator;Z[Ljava/util/Iterator;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final items:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet",
            "<",
            "Lorg/mapdb/Fun$Tuple2",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field next:Ljava/lang/Object;

.field final synthetic val$comparator2:Ljava/util/Comparator;

.field final synthetic val$iterators:[Ljava/util/Iterator;

.field final synthetic val$mergeDuplicates:Z


# direct methods
.method constructor <init>(Ljava/util/Comparator;[Ljava/util/Iterator;Z)V
    .locals 5

    .prologue
    .line 169
    iput-object p1, p0, Lorg/mapdb/Pump$2;->val$comparator2:Ljava/util/Comparator;

    iput-object p2, p0, Lorg/mapdb/Pump$2;->val$iterators:[Ljava/util/Iterator;

    iput-boolean p3, p0, Lorg/mapdb/Pump$2;->val$mergeDuplicates:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v1, Ljava/util/TreeSet;

    new-instance v2, Lorg/mapdb/Fun$Tuple2Comparator;

    iget-object v3, p0, Lorg/mapdb/Pump$2;->val$comparator2:Ljava/util/Comparator;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/mapdb/Fun$Tuple2Comparator;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lorg/mapdb/Pump$2;->items:Ljava/util/NavigableSet;

    .line 174
    iput-object p0, p0, Lorg/mapdb/Pump$2;->next:Ljava/lang/Object;

    .line 177
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/mapdb/Pump$2;->val$iterators:[Ljava/util/Iterator;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 178
    iget-object v1, p0, Lorg/mapdb/Pump$2;->val$iterators:[Ljava/util/Iterator;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lorg/mapdb/Pump$2;->items:Ljava/util/NavigableSet;

    iget-object v2, p0, Lorg/mapdb/Pump$2;->val$iterators:[Ljava/util/Iterator;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/NavigableSet;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {p0}, Lorg/mapdb/Pump$2;->next()Ljava/lang/Object;

    .line 183
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/mapdb/Pump$2;->next:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 191
    iget-object v7, p0, Lorg/mapdb/Pump$2;->next:Ljava/lang/Object;

    if-nez v7, :cond_0

    .line 192
    new-instance v7, Ljava/util/NoSuchElementException;

    invoke-direct {v7}, Ljava/util/NoSuchElementException;-><init>()V

    throw v7

    .line 194
    :cond_0
    iget-object v3, p0, Lorg/mapdb/Pump$2;->next:Ljava/lang/Object;

    .line 196
    .local v3, "oldNext":Ljava/lang/Object;
    iget-object v7, p0, Lorg/mapdb/Pump$2;->items:Ljava/util/NavigableSet;

    invoke-interface {v7}, Ljava/util/NavigableSet;->pollFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapdb/Fun$Tuple2;

    .line 197
    .local v2, "lo":Lorg/mapdb/Fun$Tuple2;, "Lorg/mapdb/Fun$Tuple2<Ljava/lang/Object;Ljava/lang/Integer;>;"
    if-nez v2, :cond_2

    .line 198
    iput-object v11, p0, Lorg/mapdb/Pump$2;->next:Ljava/lang/Object;

    .line 232
    :cond_1
    return-object v3

    .line 202
    :cond_2
    iget-object v7, v2, Lorg/mapdb/Fun$Tuple2;->a:Ljava/lang/Object;

    iput-object v7, p0, Lorg/mapdb/Pump$2;->next:Ljava/lang/Object;

    .line 204
    if-eq v3, p0, :cond_3

    iget-object v7, p0, Lorg/mapdb/Pump$2;->val$comparator2:Ljava/util/Comparator;

    iget-object v8, p0, Lorg/mapdb/Pump$2;->next:Ljava/lang/Object;

    invoke-interface {v7, v3, v8}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-lez v7, :cond_3

    .line 205
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "One of the iterators is not sorted"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 208
    :cond_3
    iget-object v8, p0, Lorg/mapdb/Pump$2;->val$iterators:[Ljava/util/Iterator;

    iget-object v7, v2, Lorg/mapdb/Fun$Tuple2;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v1, v8, v7

    .line 209
    .local v1, "iter":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 210
    iget-object v7, p0, Lorg/mapdb/Pump$2;->items:Ljava/util/NavigableSet;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    iget-object v9, v2, Lorg/mapdb/Fun$Tuple2;->b:Ljava/lang/Object;

    invoke-static {v8, v9}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/NavigableSet;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_4
    iget-boolean v7, p0, Lorg/mapdb/Pump$2;->val$mergeDuplicates:Z

    if-eqz v7, :cond_1

    .line 215
    :goto_0
    iget-object v7, p0, Lorg/mapdb/Pump$2;->items:Ljava/util/NavigableSet;

    iget-object v8, p0, Lorg/mapdb/Pump$2;->next:Ljava/lang/Object;

    invoke-static {v8, v11}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v8

    iget-object v9, p0, Lorg/mapdb/Pump$2;->next:Ljava/lang/Object;

    sget-object v10, Lorg/mapdb/Fun;->HI:Ljava/lang/Object;

    invoke-static {v9, v10}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v4

    .line 218
    .local v4, "subset":Ljava/util/Set;, "Ljava/util/Set<Lorg/mapdb/Fun$Tuple2<Ljava/lang/Object;Ljava/lang/Integer;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 220
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v6, "toadd":Ljava/util/List;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapdb/Fun$Tuple2;

    .line 222
    .local v5, "t":Lorg/mapdb/Fun$Tuple2;, "Lorg/mapdb/Fun$Tuple2<Ljava/lang/Object;Ljava/lang/Integer;>;"
    iget-object v8, p0, Lorg/mapdb/Pump$2;->val$iterators:[Ljava/util/Iterator;

    iget-object v7, v5, Lorg/mapdb/Fun$Tuple2;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v1, v8, v7

    .line 223
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 224
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, v5, Lorg/mapdb/Fun$Tuple2;->b:Ljava/lang/Object;

    invoke-static {v7, v8}, Lorg/mapdb/Fun;->t2(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mapdb/Fun$Tuple2;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 226
    .end local v5    # "t":Lorg/mapdb/Fun$Tuple2;, "Lorg/mapdb/Fun$Tuple2<Ljava/lang/Object;Ljava/lang/Integer;>;"
    :cond_6
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 227
    iget-object v7, p0, Lorg/mapdb/Pump$2;->items:Ljava/util/NavigableSet;

    invoke-interface {v7, v6}, Ljava/util/NavigableSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 236
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
