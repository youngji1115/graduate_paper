.class Lorg/mapdb/HTreeMap$ValueIterator;
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
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mapdb/HTreeMap",
        "<TK;TV;>.HashIterator;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mapdb/HTreeMap;


# direct methods
.method constructor <init>(Lorg/mapdb/HTreeMap;)V
    .locals 0

    .prologue
    .line 1128
    .local p0, "this":Lorg/mapdb/HTreeMap$ValueIterator;, "Lorg/mapdb/HTreeMap<TK;TV;>.ValueIterator;"
    iput-object p1, p0, Lorg/mapdb/HTreeMap$ValueIterator;->this$0:Lorg/mapdb/HTreeMap;

    invoke-direct {p0, p1}, Lorg/mapdb/HTreeMap$HashIterator;-><init>(Lorg/mapdb/HTreeMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1132
    .local p0, "this":Lorg/mapdb/HTreeMap$ValueIterator;, "Lorg/mapdb/HTreeMap<TK;TV;>.ValueIterator;"
    iget-object v1, p0, Lorg/mapdb/HTreeMap$ValueIterator;->currentLinkedList:[Lorg/mapdb/HTreeMap$LinkedNode;

    if-nez v1, :cond_0

    .line 1133
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1134
    :cond_0
    iget-object v1, p0, Lorg/mapdb/HTreeMap$ValueIterator;->currentLinkedList:[Lorg/mapdb/HTreeMap$LinkedNode;

    iget v2, p0, Lorg/mapdb/HTreeMap$ValueIterator;->currentLinkedListPos:I

    aget-object v1, v1, v2

    iget-object v0, v1, Lorg/mapdb/HTreeMap$LinkedNode;->value:Ljava/lang/Object;

    .line 1135
    .local v0, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/mapdb/HTreeMap$ValueIterator;->moveToNext()V

    .line 1136
    return-object v0
.end method
