.class Lorg/mapdb/HTreeMap$EntryIterator;
.super Lorg/mapdb/HTreeMap$HashIterator;
.source "HTreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/HTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mapdb/HTreeMap",
        "<TK;TV;>.HashIterator;",
        "Ljava/util/Iterator",
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
    .line 1140
    .local p0, "this":Lorg/mapdb/HTreeMap$EntryIterator;, "Lorg/mapdb/HTreeMap<TK;TV;>.EntryIterator;"
    iput-object p1, p0, Lorg/mapdb/HTreeMap$EntryIterator;->this$0:Lorg/mapdb/HTreeMap;

    invoke-direct {p0, p1}, Lorg/mapdb/HTreeMap$HashIterator;-><init>(Lorg/mapdb/HTreeMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1140
    .local p0, "this":Lorg/mapdb/HTreeMap$EntryIterator;, "Lorg/mapdb/HTreeMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Lorg/mapdb/HTreeMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1144
    .local p0, "this":Lorg/mapdb/HTreeMap$EntryIterator;, "Lorg/mapdb/HTreeMap<TK;TV;>.EntryIterator;"
    iget-object v1, p0, Lorg/mapdb/HTreeMap$EntryIterator;->currentLinkedList:[Lorg/mapdb/HTreeMap$LinkedNode;

    if-nez v1, :cond_0

    .line 1145
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1146
    :cond_0
    iget-object v1, p0, Lorg/mapdb/HTreeMap$EntryIterator;->currentLinkedList:[Lorg/mapdb/HTreeMap$LinkedNode;

    iget v2, p0, Lorg/mapdb/HTreeMap$EntryIterator;->currentLinkedListPos:I

    aget-object v1, v1, v2

    iget-object v0, v1, Lorg/mapdb/HTreeMap$LinkedNode;->key:Ljava/lang/Object;

    .line 1147
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/mapdb/HTreeMap$EntryIterator;->moveToNext()V

    .line 1148
    new-instance v1, Lorg/mapdb/HTreeMap$Entry2;

    iget-object v2, p0, Lorg/mapdb/HTreeMap$EntryIterator;->this$0:Lorg/mapdb/HTreeMap;

    invoke-direct {v1, v2, v0}, Lorg/mapdb/HTreeMap$Entry2;-><init>(Lorg/mapdb/HTreeMap;Ljava/lang/Object;)V

    return-object v1
.end method
