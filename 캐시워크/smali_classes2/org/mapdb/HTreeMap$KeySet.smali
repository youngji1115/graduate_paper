.class public Lorg/mapdb/HTreeMap$KeySet;
.super Ljava/util/AbstractSet;
.source "HTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/HTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mapdb/HTreeMap;


# direct methods
.method protected constructor <init>(Lorg/mapdb/HTreeMap;)V
    .locals 0

    .prologue
    .line 799
    .local p0, "this":Lorg/mapdb/HTreeMap$KeySet;, "Lorg/mapdb/HTreeMap<TK;TV;>.KeySet;"
    iput-object p1, p0, Lorg/mapdb/HTreeMap$KeySet;->this$0:Lorg/mapdb/HTreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 823
    .local p0, "this":Lorg/mapdb/HTreeMap$KeySet;, "Lorg/mapdb/HTreeMap<TK;TV;>.KeySet;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/mapdb/HTreeMap$KeySet;->this$0:Lorg/mapdb/HTreeMap;

    iget-boolean v0, v0, Lorg/mapdb/HTreeMap;->hasValues:Z

    if-eqz v0, :cond_0

    .line 824
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 826
    :cond_0
    iget-object v0, p0, Lorg/mapdb/HTreeMap$KeySet;->this$0:Lorg/mapdb/HTreeMap;

    sget-object v1, Lorg/mapdb/BTreeMap;->EMPTY:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lorg/mapdb/HTreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 842
    .local p0, "this":Lorg/mapdb/HTreeMap$KeySet;, "Lorg/mapdb/HTreeMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lorg/mapdb/HTreeMap$KeySet;->this$0:Lorg/mapdb/HTreeMap;

    invoke-virtual {v0}, Lorg/mapdb/HTreeMap;->clear()V

    .line 843
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 813
    .local p0, "this":Lorg/mapdb/HTreeMap$KeySet;, "Lorg/mapdb/HTreeMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lorg/mapdb/HTreeMap$KeySet;->this$0:Lorg/mapdb/HTreeMap;

    invoke-virtual {v0, p1}, Lorg/mapdb/HTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 851
    .local p0, "this":Lorg/mapdb/HTreeMap$KeySet;, "Lorg/mapdb/HTreeMap<TK;TV;>.KeySet;"
    const/4 v2, 0x0

    .line 852
    .local v2, "result":I
    invoke-virtual {p0}, Lorg/mapdb/HTreeMap$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 853
    .local v1, "k":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Lorg/mapdb/HTreeMap$KeySet;->this$0:Lorg/mapdb/HTreeMap;

    iget-object v3, v3, Lorg/mapdb/HTreeMap;->hasher:Lorg/mapdb/Hasher;

    invoke-interface {v3, v1}, Lorg/mapdb/Hasher;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 854
    goto :goto_0

    .line 855
    .end local v1    # "k":Ljava/lang/Object;, "TK;"
    :cond_0
    return v2
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 808
    .local p0, "this":Lorg/mapdb/HTreeMap$KeySet;, "Lorg/mapdb/HTreeMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lorg/mapdb/HTreeMap$KeySet;->this$0:Lorg/mapdb/HTreeMap;

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
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 818
    .local p0, "this":Lorg/mapdb/HTreeMap$KeySet;, "Lorg/mapdb/HTreeMap<TK;TV;>.KeySet;"
    new-instance v0, Lorg/mapdb/HTreeMap$KeyIterator;

    iget-object v1, p0, Lorg/mapdb/HTreeMap$KeySet;->this$0:Lorg/mapdb/HTreeMap;

    invoke-direct {v0, v1}, Lorg/mapdb/HTreeMap$KeyIterator;-><init>(Lorg/mapdb/HTreeMap;)V

    return-object v0
.end method

.method public parent()Lorg/mapdb/HTreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mapdb/HTreeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 846
    .local p0, "this":Lorg/mapdb/HTreeMap$KeySet;, "Lorg/mapdb/HTreeMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lorg/mapdb/HTreeMap$KeySet;->this$0:Lorg/mapdb/HTreeMap;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 835
    .local p0, "this":Lorg/mapdb/HTreeMap$KeySet;, "Lorg/mapdb/HTreeMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lorg/mapdb/HTreeMap$KeySet;->this$0:Lorg/mapdb/HTreeMap;

    invoke-virtual {v0, p1}, Lorg/mapdb/HTreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 803
    .local p0, "this":Lorg/mapdb/HTreeMap$KeySet;, "Lorg/mapdb/HTreeMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lorg/mapdb/HTreeMap$KeySet;->this$0:Lorg/mapdb/HTreeMap;

    invoke-virtual {v0}, Lorg/mapdb/HTreeMap;->size()I

    move-result v0

    return v0
.end method
