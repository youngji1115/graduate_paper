.class Lorg/mapdb/LongHashMap$EntryIterator;
.super Lorg/mapdb/LongHashMap$AbstractMapIterator;
.source "LongHashMap.java"

# interfaces
.implements Lorg/mapdb/LongMap$LongMapIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/LongHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/mapdb/LongHashMap$AbstractMapIterator",
        "<TV;>;",
        "Lorg/mapdb/LongMap$LongMapIterator",
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
    .line 165
    .local p0, "this":Lorg/mapdb/LongHashMap$EntryIterator;, "Lorg/mapdb/LongHashMap$EntryIterator<TV;>;"
    .local p1, "map":Lorg/mapdb/LongHashMap;, "Lorg/mapdb/LongHashMap<TV;>;"
    invoke-direct {p0, p1}, Lorg/mapdb/LongHashMap$AbstractMapIterator;-><init>(Lorg/mapdb/LongHashMap;)V

    .line 166
    return-void
.end method


# virtual methods
.method public key()J
    .locals 2

    .prologue
    .line 178
    .local p0, "this":Lorg/mapdb/LongHashMap$EntryIterator;, "Lorg/mapdb/LongHashMap$EntryIterator<TV;>;"
    iget-object v0, p0, Lorg/mapdb/LongHashMap$EntryIterator;->currentEntry:Lorg/mapdb/LongHashMap$Entry;

    iget-wide v0, v0, Lorg/mapdb/LongHashMap$Entry;->key:J

    return-wide v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 171
    .local p0, "this":Lorg/mapdb/LongHashMap$EntryIterator;, "Lorg/mapdb/LongHashMap$EntryIterator<TV;>;"
    invoke-virtual {p0}, Lorg/mapdb/LongHashMap$EntryIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 173
    :goto_0
    return v0

    .line 172
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/LongHashMap$EntryIterator;->makeNext()V

    .line 173
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lorg/mapdb/LongHashMap$EntryIterator;, "Lorg/mapdb/LongHashMap$EntryIterator<TV;>;"
    iget-object v0, p0, Lorg/mapdb/LongHashMap$EntryIterator;->currentEntry:Lorg/mapdb/LongHashMap$Entry;

    iget-object v0, v0, Lorg/mapdb/LongHashMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method
