.class Lorg/mapdb/LongConcurrentLRUMap$2;
.super Ljava/lang/Object;
.source "LongConcurrentLRUMap.java"

# interfaces
.implements Lorg/mapdb/LongMap$LongMapIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mapdb/LongConcurrentLRUMap;->longMapIterator()Lorg/mapdb/LongMap$LongMapIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mapdb/LongMap$LongMapIterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mapdb/LongConcurrentLRUMap;

.field final synthetic val$iter:Lorg/mapdb/LongMap$LongMapIterator;


# direct methods
.method constructor <init>(Lorg/mapdb/LongConcurrentLRUMap;Lorg/mapdb/LongMap$LongMapIterator;)V
    .locals 0

    .prologue
    .line 655
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap$2;, "Lorg/mapdb/LongConcurrentLRUMap.2;"
    iput-object p1, p0, Lorg/mapdb/LongConcurrentLRUMap$2;->this$0:Lorg/mapdb/LongConcurrentLRUMap;

    iput-object p2, p0, Lorg/mapdb/LongConcurrentLRUMap$2;->val$iter:Lorg/mapdb/LongMap$LongMapIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public key()J
    .locals 2

    .prologue
    .line 663
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap$2;, "Lorg/mapdb/LongConcurrentLRUMap.2;"
    iget-object v0, p0, Lorg/mapdb/LongConcurrentLRUMap$2;->val$iter:Lorg/mapdb/LongMap$LongMapIterator;

    invoke-interface {v0}, Lorg/mapdb/LongMap$LongMapIterator;->key()J

    move-result-wide v0

    return-wide v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 658
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap$2;, "Lorg/mapdb/LongConcurrentLRUMap.2;"
    iget-object v0, p0, Lorg/mapdb/LongConcurrentLRUMap$2;->val$iter:Lorg/mapdb/LongMap$LongMapIterator;

    invoke-interface {v0}, Lorg/mapdb/LongMap$LongMapIterator;->moveToNext()Z

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 673
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap$2;, "Lorg/mapdb/LongConcurrentLRUMap.2;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 668
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap$2;, "Lorg/mapdb/LongConcurrentLRUMap.2;"
    iget-object v0, p0, Lorg/mapdb/LongConcurrentLRUMap$2;->val$iter:Lorg/mapdb/LongMap$LongMapIterator;

    invoke-interface {v0}, Lorg/mapdb/LongMap$LongMapIterator;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;

    iget-object v0, v0, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->value:Ljava/lang/Object;

    return-object v0
.end method
