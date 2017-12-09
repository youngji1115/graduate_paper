.class Lorg/mapdb/LongHashMap$ValueIterator;
.super Lorg/mapdb/LongHashMap$AbstractMapIterator;
.source "LongHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/LongHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/mapdb/LongHashMap$AbstractMapIterator",
        "<TV;>;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/mapdb/LongHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/LongHashMap",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lorg/mapdb/LongHashMap$ValueIterator;, "Lorg/mapdb/LongHashMap$ValueIterator<TV;>;"
    .local p1, "map":Lorg/mapdb/LongHashMap;, "Lorg/mapdb/LongHashMap<TV;>;"
    invoke-direct {p0, p1}, Lorg/mapdb/LongHashMap$AbstractMapIterator;-><init>(Lorg/mapdb/LongHashMap;)V

    .line 192
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
    .line 196
    .local p0, "this":Lorg/mapdb/LongHashMap$ValueIterator;, "Lorg/mapdb/LongHashMap$ValueIterator<TV;>;"
    invoke-virtual {p0}, Lorg/mapdb/LongHashMap$ValueIterator;->makeNext()V

    .line 197
    iget-object v0, p0, Lorg/mapdb/LongHashMap$ValueIterator;->currentEntry:Lorg/mapdb/LongHashMap$Entry;

    iget-object v0, v0, Lorg/mapdb/LongHashMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method
