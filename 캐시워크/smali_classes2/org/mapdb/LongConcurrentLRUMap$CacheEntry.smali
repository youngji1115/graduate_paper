.class final Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;
.super Ljava/lang/Object;
.source "LongConcurrentLRUMap.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/LongConcurrentLRUMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final key:J

.field volatile lastAccessed:J

.field lastAccessedCopy:J

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/Object;J)V
    .locals 2
    .param p1, "key"    # J
    .param p4, "lastAccessed"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;J)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;, "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    const-wide/16 v0, 0x0

    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    iput-wide v0, p0, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->lastAccessed:J

    .line 690
    iput-wide v0, p0, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->lastAccessedCopy:J

    .line 694
    iput-wide p1, p0, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->key:J

    .line 695
    iput-object p3, p0, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->value:Ljava/lang/Object;

    .line 696
    iput-wide p4, p0, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->lastAccessed:J

    .line 697
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 686
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;, "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry<TV;>;"
    check-cast p1, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->compareTo(Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry",
            "<TV;>;)I"
        }
    .end annotation

    .prologue
    .line 701
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;, "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry<TV;>;"
    .local p1, "that":Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;, "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry<TV;>;"
    iget-wide v0, p0, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->lastAccessedCopy:J

    iget-wide v2, p1, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->lastAccessedCopy:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 702
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->lastAccessedCopy:J

    iget-wide v2, p1, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->lastAccessedCopy:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 712
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;, "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry<TV;>;"
    iget-object v0, p0, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->value:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 707
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;, "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry<TV;>;"
    iget-object v0, p0, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 717
    .local p0, "this":Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;, "Lorg/mapdb/LongConcurrentLRUMap$CacheEntry<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->key:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastAccessed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/mapdb/LongConcurrentLRUMap$CacheEntry;->lastAccessed:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
