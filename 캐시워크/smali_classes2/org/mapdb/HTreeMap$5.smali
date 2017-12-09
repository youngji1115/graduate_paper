.class Lorg/mapdb/HTreeMap$5;
.super Ljava/util/AbstractSet;
.source "HTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/HTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mapdb/HTreeMap;


# direct methods
.method constructor <init>(Lorg/mapdb/HTreeMap;)V
    .locals 0

    .prologue
    .line 900
    .local p0, "this":Lorg/mapdb/HTreeMap$5;, "Lorg/mapdb/HTreeMap.5;"
    iput-object p1, p0, Lorg/mapdb/HTreeMap$5;->this$0:Lorg/mapdb/HTreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 900
    .local p0, "this":Lorg/mapdb/HTreeMap$5;, "Lorg/mapdb/HTreeMap.5;"
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/mapdb/HTreeMap$5;->add(Ljava/util/Map$Entry;)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/util/Map$Entry;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 930
    .local p0, "this":Lorg/mapdb/HTreeMap$5;, "Lorg/mapdb/HTreeMap.5;"
    .local p1, "kvEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 931
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 932
    .local v1, "value":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 933
    :cond_1
    iget-object v2, p0, Lorg/mapdb/HTreeMap$5;->this$0:Lorg/mapdb/HTreeMap;

    invoke-virtual {v2, v0, v1}, Lorg/mapdb/HTreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    const/4 v2, 0x1

    return v2
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 951
    .local p0, "this":Lorg/mapdb/HTreeMap$5;, "Lorg/mapdb/HTreeMap.5;"
    iget-object v0, p0, Lorg/mapdb/HTreeMap$5;->this$0:Lorg/mapdb/HTreeMap;

    invoke-virtual {v0}, Lorg/mapdb/HTreeMap;->clear()V

    .line 952
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/mapdb/HTreeMap$5;, "Lorg/mapdb/HTreeMap.5;"
    const/4 v2, 0x0

    .line 914
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 915
    check-cast v0, Ljava/util/Map$Entry;

    .line 916
    .local v0, "e":Ljava/util/Map$Entry;
    iget-object v3, p0, Lorg/mapdb/HTreeMap$5;->this$0:Lorg/mapdb/HTreeMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/mapdb/HTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 917
    .local v1, "val":Ljava/lang/Object;
    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 919
    .end local v0    # "e":Ljava/util/Map$Entry;
    .end local v1    # "val":Ljava/lang/Object;
    :cond_0
    return v2
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 909
    .local p0, "this":Lorg/mapdb/HTreeMap$5;, "Lorg/mapdb/HTreeMap.5;"
    iget-object v0, p0, Lorg/mapdb/HTreeMap$5;->this$0:Lorg/mapdb/HTreeMap;

    invoke-virtual {v0}, Lorg/mapdb/HTreeMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 924
    .local p0, "this":Lorg/mapdb/HTreeMap$5;, "Lorg/mapdb/HTreeMap.5;"
    new-instance v0, Lorg/mapdb/HTreeMap$EntryIterator;

    iget-object v1, p0, Lorg/mapdb/HTreeMap$5;->this$0:Lorg/mapdb/HTreeMap;

    invoke-direct {v0, v1}, Lorg/mapdb/HTreeMap$EntryIterator;-><init>(Lorg/mapdb/HTreeMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/mapdb/HTreeMap$5;, "Lorg/mapdb/HTreeMap.5;"
    const/4 v2, 0x0

    .line 939
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 940
    check-cast v0, Ljava/util/Map$Entry;

    .line 941
    .local v0, "e":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 942
    .local v1, "key":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 945
    .end local v0    # "e":Ljava/util/Map$Entry;
    .end local v1    # "key":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 943
    .restart local v0    # "e":Ljava/util/Map$Entry;
    .restart local v1    # "key":Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lorg/mapdb/HTreeMap$5;->this$0:Lorg/mapdb/HTreeMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/mapdb/HTreeMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 904
    .local p0, "this":Lorg/mapdb/HTreeMap$5;, "Lorg/mapdb/HTreeMap.5;"
    iget-object v0, p0, Lorg/mapdb/HTreeMap$5;->this$0:Lorg/mapdb/HTreeMap;

    invoke-virtual {v0}, Lorg/mapdb/HTreeMap;->size()I

    move-result v0

    return v0
.end method
