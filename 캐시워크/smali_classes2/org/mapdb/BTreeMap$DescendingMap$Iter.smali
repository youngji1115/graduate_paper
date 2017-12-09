.class abstract Lorg/mapdb/BTreeMap$DescendingMap$Iter;
.super Ljava/lang/Object;
.source "BTreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/BTreeMap$DescendingMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "Iter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field current:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field last:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/mapdb/BTreeMap$DescendingMap;


# direct methods
.method constructor <init>(Lorg/mapdb/BTreeMap$DescendingMap;)V
    .locals 1

    .prologue
    .line 2684
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap$Iter;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>.Iter<TE;>;"
    iput-object p1, p0, Lorg/mapdb/BTreeMap$DescendingMap$Iter;->this$0:Lorg/mapdb/BTreeMap$DescendingMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2685
    iget-object v0, p0, Lorg/mapdb/BTreeMap$DescendingMap$Iter;->this$0:Lorg/mapdb/BTreeMap$DescendingMap;

    invoke-virtual {v0}, Lorg/mapdb/BTreeMap$DescendingMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    iput-object v0, p0, Lorg/mapdb/BTreeMap$DescendingMap$Iter;->current:Ljava/util/Map$Entry;

    .line 2686
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mapdb/BTreeMap$DescendingMap$Iter;->last:Ljava/util/Map$Entry;

    return-void
.end method


# virtual methods
.method public advance()V
    .locals 2

    .prologue
    .line 2696
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap$Iter;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>.Iter<TE;>;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap$DescendingMap$Iter;->current:Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 2697
    :cond_0
    iget-object v0, p0, Lorg/mapdb/BTreeMap$DescendingMap$Iter;->current:Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/mapdb/BTreeMap$DescendingMap$Iter;->last:Ljava/util/Map$Entry;

    .line 2698
    iget-object v0, p0, Lorg/mapdb/BTreeMap$DescendingMap$Iter;->this$0:Lorg/mapdb/BTreeMap$DescendingMap;

    iget-object v1, p0, Lorg/mapdb/BTreeMap$DescendingMap$Iter;->current:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mapdb/BTreeMap$DescendingMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    iput-object v0, p0, Lorg/mapdb/BTreeMap$DescendingMap$Iter;->current:Ljava/util/Map$Entry;

    .line 2699
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 2691
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap$Iter;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>.Iter<TE;>;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap$DescendingMap$Iter;->current:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 2703
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap$Iter;, "Lorg/mapdb/BTreeMap$DescendingMap<TK;TV;>.Iter<TE;>;"
    iget-object v0, p0, Lorg/mapdb/BTreeMap$DescendingMap$Iter;->last:Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 2704
    :cond_0
    iget-object v0, p0, Lorg/mapdb/BTreeMap$DescendingMap$Iter;->this$0:Lorg/mapdb/BTreeMap$DescendingMap;

    iget-object v1, p0, Lorg/mapdb/BTreeMap$DescendingMap$Iter;->last:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mapdb/BTreeMap$DescendingMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2705
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mapdb/BTreeMap$DescendingMap$Iter;->last:Ljava/util/Map$Entry;

    .line 2706
    return-void
.end method
