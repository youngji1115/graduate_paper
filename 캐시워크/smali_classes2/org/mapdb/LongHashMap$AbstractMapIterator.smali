.class Lorg/mapdb/LongHashMap$AbstractMapIterator;
.super Ljava/lang/Object;
.source "LongHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/LongHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AbstractMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final associatedMap:Lorg/mapdb/LongHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/LongHashMap",
            "<TV;>;"
        }
    .end annotation
.end field

.field currentEntry:Lorg/mapdb/LongHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/LongHashMap$Entry",
            "<TV;>;"
        }
    .end annotation
.end field

.field expectedModCount:I

.field futureEntry:Lorg/mapdb/LongHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/LongHashMap$Entry",
            "<TV;>;"
        }
    .end annotation
.end field

.field private position:I

.field prevEntry:Lorg/mapdb/LongHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/LongHashMap$Entry",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/mapdb/LongHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/LongHashMap",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lorg/mapdb/LongHashMap$AbstractMapIterator;, "Lorg/mapdb/LongHashMap$AbstractMapIterator<TV;>;"
    .local p1, "hm":Lorg/mapdb/LongHashMap;, "Lorg/mapdb/LongHashMap<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->position:I

    .line 99
    iput-object p1, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->associatedMap:Lorg/mapdb/LongHashMap;

    .line 100
    iget v0, p1, Lorg/mapdb/LongHashMap;->modCount:I

    iput v0, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->expectedModCount:I

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->futureEntry:Lorg/mapdb/LongHashMap$Entry;

    .line 102
    return-void
.end method


# virtual methods
.method final checkConcurrentMod()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ConcurrentModificationException;
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lorg/mapdb/LongHashMap$AbstractMapIterator;, "Lorg/mapdb/LongHashMap$AbstractMapIterator<TV;>;"
    iget v0, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->expectedModCount:I

    iget-object v1, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->associatedMap:Lorg/mapdb/LongHashMap;

    iget v1, v1, Lorg/mapdb/LongHashMap;->modCount:I

    if-eq v0, v1, :cond_0

    .line 120
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 122
    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 3

    .prologue
    .local p0, "this":Lorg/mapdb/LongHashMap$AbstractMapIterator;, "Lorg/mapdb/LongHashMap$AbstractMapIterator<TV;>;"
    const/4 v0, 0x1

    .line 105
    iget-object v1, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->futureEntry:Lorg/mapdb/LongHashMap$Entry;

    if-eqz v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    :goto_1
    iget v1, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->position:I

    iget-object v2, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->associatedMap:Lorg/mapdb/LongHashMap;

    iget-object v2, v2, Lorg/mapdb/LongHashMap;->elementData:[Lorg/mapdb/LongHashMap$Entry;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 109
    iget-object v1, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->associatedMap:Lorg/mapdb/LongHashMap;

    iget-object v1, v1, Lorg/mapdb/LongHashMap;->elementData:[Lorg/mapdb/LongHashMap$Entry;

    iget v2, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->position:I

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    .line 110
    iget v1, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->position:I

    goto :goto_1

    .line 115
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final makeNext()V
    .locals 3

    .prologue
    .line 125
    .local p0, "this":Lorg/mapdb/LongHashMap$AbstractMapIterator;, "Lorg/mapdb/LongHashMap$AbstractMapIterator<TV;>;"
    invoke-virtual {p0}, Lorg/mapdb/LongHashMap$AbstractMapIterator;->checkConcurrentMod()V

    .line 126
    invoke-virtual {p0}, Lorg/mapdb/LongHashMap$AbstractMapIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 129
    :cond_0
    iget-object v0, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->futureEntry:Lorg/mapdb/LongHashMap$Entry;

    if-nez v0, :cond_1

    .line 130
    iget-object v0, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->associatedMap:Lorg/mapdb/LongHashMap;

    iget-object v0, v0, Lorg/mapdb/LongHashMap;->elementData:[Lorg/mapdb/LongHashMap$Entry;

    iget v1, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->position:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->currentEntry:Lorg/mapdb/LongHashMap$Entry;

    .line 131
    iget-object v0, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->currentEntry:Lorg/mapdb/LongHashMap$Entry;

    iget-object v0, v0, Lorg/mapdb/LongHashMap$Entry;->next:Lorg/mapdb/LongHashMap$Entry;

    iput-object v0, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->futureEntry:Lorg/mapdb/LongHashMap$Entry;

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->prevEntry:Lorg/mapdb/LongHashMap$Entry;

    .line 140
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->currentEntry:Lorg/mapdb/LongHashMap$Entry;

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->currentEntry:Lorg/mapdb/LongHashMap$Entry;

    iput-object v0, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->prevEntry:Lorg/mapdb/LongHashMap$Entry;

    .line 137
    :cond_2
    iget-object v0, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->futureEntry:Lorg/mapdb/LongHashMap$Entry;

    iput-object v0, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->currentEntry:Lorg/mapdb/LongHashMap$Entry;

    .line 138
    iget-object v0, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->futureEntry:Lorg/mapdb/LongHashMap$Entry;

    iget-object v0, v0, Lorg/mapdb/LongHashMap$Entry;->next:Lorg/mapdb/LongHashMap$Entry;

    iput-object v0, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->futureEntry:Lorg/mapdb/LongHashMap$Entry;

    goto :goto_0
.end method

.method public final remove()V
    .locals 3

    .prologue
    .line 143
    .local p0, "this":Lorg/mapdb/LongHashMap$AbstractMapIterator;, "Lorg/mapdb/LongHashMap$AbstractMapIterator<TV;>;"
    invoke-virtual {p0}, Lorg/mapdb/LongHashMap$AbstractMapIterator;->checkConcurrentMod()V

    .line 144
    iget-object v1, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->currentEntry:Lorg/mapdb/LongHashMap$Entry;

    if-nez v1, :cond_0

    .line 145
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 147
    :cond_0
    iget-object v1, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->prevEntry:Lorg/mapdb/LongHashMap$Entry;

    if-nez v1, :cond_1

    .line 148
    iget-object v1, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->currentEntry:Lorg/mapdb/LongHashMap$Entry;

    iget v1, v1, Lorg/mapdb/LongHashMap$Entry;->origKeyHash:I

    iget-object v2, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->associatedMap:Lorg/mapdb/LongHashMap;

    iget-object v2, v2, Lorg/mapdb/LongHashMap;->elementData:[Lorg/mapdb/LongHashMap$Entry;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int v0, v1, v2

    .line 149
    .local v0, "index":I
    iget-object v1, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->associatedMap:Lorg/mapdb/LongHashMap;

    iget-object v1, v1, Lorg/mapdb/LongHashMap;->elementData:[Lorg/mapdb/LongHashMap$Entry;

    iget-object v2, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->associatedMap:Lorg/mapdb/LongHashMap;

    iget-object v2, v2, Lorg/mapdb/LongHashMap;->elementData:[Lorg/mapdb/LongHashMap$Entry;

    aget-object v2, v2, v0

    iget-object v2, v2, Lorg/mapdb/LongHashMap$Entry;->next:Lorg/mapdb/LongHashMap$Entry;

    aput-object v2, v1, v0

    .line 153
    .end local v0    # "index":I
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->currentEntry:Lorg/mapdb/LongHashMap$Entry;

    .line 154
    iget v1, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->expectedModCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->expectedModCount:I

    .line 155
    iget-object v1, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->associatedMap:Lorg/mapdb/LongHashMap;

    iget v2, v1, Lorg/mapdb/LongHashMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/mapdb/LongHashMap;->modCount:I

    .line 156
    iget-object v1, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->associatedMap:Lorg/mapdb/LongHashMap;

    iget v2, v1, Lorg/mapdb/LongHashMap;->elementCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lorg/mapdb/LongHashMap;->elementCount:I

    .line 158
    return-void

    .line 151
    :cond_1
    iget-object v1, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->prevEntry:Lorg/mapdb/LongHashMap$Entry;

    iget-object v2, p0, Lorg/mapdb/LongHashMap$AbstractMapIterator;->currentEntry:Lorg/mapdb/LongHashMap$Entry;

    iget-object v2, v2, Lorg/mapdb/LongHashMap$Entry;->next:Lorg/mapdb/LongHashMap$Entry;

    iput-object v2, v1, Lorg/mapdb/LongHashMap$Entry;->next:Lorg/mapdb/LongHashMap$Entry;

    goto :goto_0
.end method
