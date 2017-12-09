.class Lorg/mapdb/LongConcurrentLRUMap$1;
.super Ljava/lang/Object;
.source "LongConcurrentLRUMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mapdb/LongConcurrentLRUMap;->valuesIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mapdb/LongConcurrentLRUMap;

.field final synthetic val$iter:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/mapdb/LongConcurrentLRUMap;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 633
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap$1;, "Lorg/mapdb/LongConcurrentLRUMap.1;"
    iput-object p1, p0, Lorg/mapdb/LongConcurrentLRUMap$1;->this$0:Lorg/mapdb/LongConcurrentLRUMap;

    iput-object p2, p0, Lorg/mapdb/LongConcurrentLRUMap$1;->val$iter:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 637
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap$1;, "Lorg/mapdb/LongConcurrentLRUMap.1;"
    iget-object v0, p0, Lorg/mapdb/LongConcurrentLRUMap$1;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 642
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap$1;, "Lorg/mapdb/LongConcurrentLRUMap.1;"
    iget-object v0, p0, Lorg/mapdb/LongConcurrentLRUMap$1;->val$iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;

    iget-object v0, v0, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 647
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap$1;, "Lorg/mapdb/LongConcurrentLRUMap.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
