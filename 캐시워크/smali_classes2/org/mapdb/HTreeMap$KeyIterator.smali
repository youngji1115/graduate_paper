.class Lorg/mapdb/HTreeMap$KeyIterator;
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
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mapdb/HTreeMap",
        "<TK;TV;>.HashIterator;",
        "Ljava/util/Iterator",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mapdb/HTreeMap;


# direct methods
.method constructor <init>(Lorg/mapdb/HTreeMap;)V
    .locals 0

    .prologue
    .line 1116
    .local p0, "this":Lorg/mapdb/HTreeMap$KeyIterator;, "Lorg/mapdb/HTreeMap<TK;TV;>.KeyIterator;"
    iput-object p1, p0, Lorg/mapdb/HTreeMap$KeyIterator;->this$0:Lorg/mapdb/HTreeMap;

    invoke-direct {p0, p1}, Lorg/mapdb/HTreeMap$HashIterator;-><init>(Lorg/mapdb/HTreeMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1120
    .local p0, "this":Lorg/mapdb/HTreeMap$KeyIterator;, "Lorg/mapdb/HTreeMap<TK;TV;>.KeyIterator;"
    iget-object v1, p0, Lorg/mapdb/HTreeMap$KeyIterator;->currentLinkedList:[Lorg/mapdb/HTreeMap$LinkedNode;

    if-nez v1, :cond_0

    .line 1121
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1122
    :cond_0
    iget-object v1, p0, Lorg/mapdb/HTreeMap$KeyIterator;->currentLinkedList:[Lorg/mapdb/HTreeMap$LinkedNode;

    iget v2, p0, Lorg/mapdb/HTreeMap$KeyIterator;->currentLinkedListPos:I

    aget-object v1, v1, v2

    iget-object v0, v1, Lorg/mapdb/HTreeMap$LinkedNode;->key:Ljava/lang/Object;

    .line 1123
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/mapdb/HTreeMap$KeyIterator;->moveToNext()V

    .line 1124
    return-object v0
.end method
