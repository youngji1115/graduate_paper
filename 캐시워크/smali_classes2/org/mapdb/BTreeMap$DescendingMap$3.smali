.class Lorg/mapdb/BTreeMap$DescendingMap$3;
.super Lorg/mapdb/BTreeMap$DescendingMap$Iter;
.source "BTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mapdb/BTreeMap$DescendingMap;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mapdb/BTreeMap$DescendingMap",
        "<TK;TV;>.Iter<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mapdb/BTreeMap$DescendingMap;


# direct methods
.method constructor <init>(Lorg/mapdb/BTreeMap$DescendingMap;)V
    .locals 0

    .prologue
    .line 2731
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap$3;, "Lorg/mapdb/BTreeMap$DescendingMap.3;"
    iput-object p1, p0, Lorg/mapdb/BTreeMap$DescendingMap$3;->this$0:Lorg/mapdb/BTreeMap$DescendingMap;

    invoke-direct {p0, p1}, Lorg/mapdb/BTreeMap$DescendingMap$Iter;-><init>(Lorg/mapdb/BTreeMap$DescendingMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2731
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap$3;, "Lorg/mapdb/BTreeMap$DescendingMap.3;"
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$DescendingMap$3;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2734
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap$3;, "Lorg/mapdb/BTreeMap$DescendingMap.3;"
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$DescendingMap$3;->advance()V

    .line 2735
    iget-object v0, p0, Lorg/mapdb/BTreeMap$DescendingMap$3;->last:Ljava/util/Map$Entry;

    return-object v0
.end method
