.class Lorg/mapdb/BTreeMap$DescendingMap$2;
.super Lorg/mapdb/BTreeMap$DescendingMap$Iter;
.source "BTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mapdb/BTreeMap$DescendingMap;->valueIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mapdb/BTreeMap$DescendingMap",
        "<TK;TV;>.Iter<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mapdb/BTreeMap$DescendingMap;


# direct methods
.method constructor <init>(Lorg/mapdb/BTreeMap$DescendingMap;)V
    .locals 0

    .prologue
    .line 2720
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap$2;, "Lorg/mapdb/BTreeMap$DescendingMap.2;"
    iput-object p1, p0, Lorg/mapdb/BTreeMap$DescendingMap$2;->this$0:Lorg/mapdb/BTreeMap$DescendingMap;

    invoke-direct {p0, p1}, Lorg/mapdb/BTreeMap$DescendingMap$Iter;-><init>(Lorg/mapdb/BTreeMap$DescendingMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 2724
    .local p0, "this":Lorg/mapdb/BTreeMap$DescendingMap$2;, "Lorg/mapdb/BTreeMap$DescendingMap.2;"
    invoke-virtual {p0}, Lorg/mapdb/BTreeMap$DescendingMap$2;->advance()V

    .line 2725
    iget-object v0, p0, Lorg/mapdb/BTreeMap$DescendingMap$2;->last:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
