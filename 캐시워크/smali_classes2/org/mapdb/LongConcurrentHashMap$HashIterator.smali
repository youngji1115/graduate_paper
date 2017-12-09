.class abstract Lorg/mapdb/LongConcurrentHashMap$HashIterator;
.super Ljava/lang/Object;
.source "LongConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/LongConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "HashIterator"
.end annotation


# instance fields
.field currentTable:[Lorg/mapdb/LongConcurrentHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/mapdb/LongConcurrentHashMap$HashEntry",
            "<TV;>;"
        }
    .end annotation
.end field

.field lastReturned:Lorg/mapdb/LongConcurrentHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/LongConcurrentHashMap$HashEntry",
            "<TV;>;"
        }
    .end annotation
.end field

.field nextEntry:Lorg/mapdb/LongConcurrentHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/LongConcurrentHashMap$HashEntry",
            "<TV;>;"
        }
    .end annotation
.end field

.field nextSegmentIndex:I

.field nextTableIndex:I

.field final synthetic this$0:Lorg/mapdb/LongConcurrentHashMap;


# direct methods
.method constructor <init>(Lorg/mapdb/LongConcurrentHashMap;)V
    .locals 1

    .prologue
    .line 881
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap$HashIterator;, "Lorg/mapdb/LongConcurrentHashMap<TV;>.HashIterator;"
    iput-object p1, p0, Lorg/mapdb/LongConcurrentHashMap$HashIterator;->this$0:Lorg/mapdb/LongConcurrentHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 882
    iget-object v0, p1, Lorg/mapdb/LongConcurrentHashMap;->segments:[Lorg/mapdb/LongConcurrentHashMap$Segment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mapdb/LongConcurrentHashMap$HashIterator;->nextSegmentIndex:I

    .line 883
    const/4 v0, -0x1

    iput v0, p0, Lorg/mapdb/LongConcurrentHashMap$HashIterator;->nextTableIndex:I

    .line 884
    invoke-virtual {p0}, Lorg/mapdb/LongConcurrentHashMap$HashIterator;->advance()V

    .line 885
    return-void
.end method


# virtual methods
.method final advance()V
    .locals 5

    .prologue
    .line 889
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap$HashIterator;, "Lorg/mapdb/LongConcurrentHashMap<TV;>.HashIterator;"
    iget-object v2, p0, Lorg/mapdb/LongConcurrentHashMap$HashIterator;->nextEntry:Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/mapdb/LongConcurrentHashMap$HashIterator;->nextEntry:Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    iget-object v2, v2, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->next:Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    iput-object v2, p0, Lorg/mapdb/LongConcurrentHashMap$HashIterator;->nextEntry:Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    if-eqz v2, :cond_1

    .line 909
    :cond_0
    :goto_0
    return-void

    .line 892
    :cond_1
    iget v2, p0, Lorg/mapdb/LongConcurrentHashMap$HashIterator;->nextTableIndex:I

    if-ltz v2, :cond_2

    .line 893
    iget-object v2, p0, Lorg/mapdb/LongConcurrentHashMap$HashIterator;->currentTable:[Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    iget v3, p0, Lorg/mapdb/LongConcurrentHashMap$HashIterator;->nextTableIndex:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/mapdb/LongConcurrentHashMap$HashIterator;->nextTableIndex:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lorg/mapdb/LongConcurrentHashMap$HashIterator;->nextEntry:Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 897
    :cond_2
    iget v2, p0, Lorg/mapdb/LongConcurrentHashMap$HashIterator;->nextSegmentIndex:I

    if-ltz v2, :cond_0

    .line 898
    iget-object v2, p0, Lorg/mapdb/LongConcurrentHashMap$HashIterator;->this$0:Lorg/mapdb/LongConcurrentHashMap;

    iget-object v2, v2, Lorg/mapdb/LongConcurrentHashMap;->segments:[Lorg/mapdb/LongConcurrentHashMap$Segment;

    iget v3, p0, Lorg/mapdb/LongConcurrentHashMap$HashIterator;->nextSegmentIndex:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/mapdb/LongConcurrentHashMap$HashIterator;->nextSegmentIndex:I

    aget-object v1, v2, v3

    .line 899
    .local v1, "seg":Lorg/mapdb/LongConcurrentHashMap$Segment;, "Lorg/mapdb/LongConcurrentHashMap$Segment<TV;>;"
    iget v2, v1, Lorg/mapdb/LongConcurrentHashMap$Segment;->count:I

    if-eqz v2, :cond_2

    .line 900
    iget-object v2, v1, Lorg/mapdb/LongConcurrentHashMap$Segment;->table:[Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    iput-object v2, p0, Lorg/mapdb/LongConcurrentHashMap$HashIterator;->currentTable:[Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    .line 901
    iget-object v2, p0, Lorg/mapdb/LongConcurrentHashMap$HashIterator;->currentTable:[Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "j":I
    :goto_1
    if-ltz v0, :cond_2

    .line 902
    iget-object v2, p0, Lorg/mapdb/LongConcurrentHashMap$HashIterator;->currentTable:[Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    aget-object v2, v2, v0

    iput-object v2, p0, Lorg/mapdb/LongConcurrentHashMap$HashIterator;->nextEntry:Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    if-eqz v2, :cond_3

    .line 903
    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lorg/mapdb/LongConcurrentHashMap$HashIterator;->nextTableIndex:I

    goto :goto_0

    .line 901
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 911
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap$HashIterator;, "Lorg/mapdb/LongConcurrentHashMap<TV;>.HashIterator;"
    iget-object v0, p0, Lorg/mapdb/LongConcurrentHashMap$HashIterator;->nextEntry:Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method nextEntry()Lorg/mapdb/LongConcurrentHashMap$HashEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mapdb/LongConcurrentHashMap$HashEntry",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 914
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap$HashIterator;, "Lorg/mapdb/LongConcurrentHashMap<TV;>.HashIterator;"
    iget-object v0, p0, Lorg/mapdb/LongConcurrentHashMap$HashIterator;->nextEntry:Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    if-nez v0, :cond_0

    .line 915
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 916
    :cond_0
    iget-object v0, p0, Lorg/mapdb/LongConcurrentHashMap$HashIterator;->nextEntry:Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    iput-object v0, p0, Lorg/mapdb/LongConcurrentHashMap$HashIterator;->lastReturned:Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    .line 917
    invoke-virtual {p0}, Lorg/mapdb/LongConcurrentHashMap$HashIterator;->advance()V

    .line 918
    iget-object v0, p0, Lorg/mapdb/LongConcurrentHashMap$HashIterator;->lastReturned:Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    return-object v0
.end method

.method public remove()V
    .locals 4

    .prologue
    .line 922
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap$HashIterator;, "Lorg/mapdb/LongConcurrentHashMap<TV;>.HashIterator;"
    iget-object v0, p0, Lorg/mapdb/LongConcurrentHashMap$HashIterator;->lastReturned:Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    if-nez v0, :cond_0

    .line 923
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 924
    :cond_0
    iget-object v0, p0, Lorg/mapdb/LongConcurrentHashMap$HashIterator;->this$0:Lorg/mapdb/LongConcurrentHashMap;

    iget-object v1, p0, Lorg/mapdb/LongConcurrentHashMap$HashIterator;->lastReturned:Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    iget-wide v2, v1, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->key:J

    invoke-virtual {v0, v2, v3}, Lorg/mapdb/LongConcurrentHashMap;->remove(J)Ljava/lang/Object;

    .line 925
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mapdb/LongConcurrentHashMap$HashIterator;->lastReturned:Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    .line 926
    return-void
.end method
