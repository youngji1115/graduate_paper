.class final Lorg/mapdb/LongConcurrentHashMap$MapIterator;
.super Lorg/mapdb/LongConcurrentHashMap$HashIterator;
.source "LongConcurrentHashMap.java"

# interfaces
.implements Lorg/mapdb/LongMap$LongMapIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/LongConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mapdb/LongConcurrentHashMap",
        "<TV;>.HashIterator;",
        "Lorg/mapdb/LongMap$LongMapIterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private key:J

.field final synthetic this$0:Lorg/mapdb/LongConcurrentHashMap;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/mapdb/LongConcurrentHashMap;)V
    .locals 0

    .prologue
    .line 946
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap$MapIterator;, "Lorg/mapdb/LongConcurrentHashMap<TV;>.MapIterator;"
    iput-object p1, p0, Lorg/mapdb/LongConcurrentHashMap$MapIterator;->this$0:Lorg/mapdb/LongConcurrentHashMap;

    invoke-direct {p0, p1}, Lorg/mapdb/LongConcurrentHashMap$HashIterator;-><init>(Lorg/mapdb/LongConcurrentHashMap;)V

    return-void
.end method


# virtual methods
.method public key()J
    .locals 2

    .prologue
    .line 962
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap$MapIterator;, "Lorg/mapdb/LongConcurrentHashMap<TV;>.MapIterator;"
    iget-wide v0, p0, Lorg/mapdb/LongConcurrentHashMap$MapIterator;->key:J

    return-wide v0
.end method

.method public moveToNext()Z
    .locals 4

    .prologue
    .line 953
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap$MapIterator;, "Lorg/mapdb/LongConcurrentHashMap<TV;>.MapIterator;"
    invoke-virtual {p0}, Lorg/mapdb/LongConcurrentHashMap$MapIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 957
    :goto_0
    return v1

    .line 954
    :cond_0
    invoke-virtual {p0}, Lorg/mapdb/LongConcurrentHashMap$MapIterator;->nextEntry()Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    move-result-object v0

    .line 955
    .local v0, "next":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    iget-wide v2, v0, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->key:J

    iput-wide v2, p0, Lorg/mapdb/LongConcurrentHashMap$MapIterator;->key:J

    .line 956
    iget-object v1, v0, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    iput-object v1, p0, Lorg/mapdb/LongConcurrentHashMap$MapIterator;->value:Ljava/lang/Object;

    .line 957
    const/4 v1, 0x1

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
    .line 967
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap$MapIterator;, "Lorg/mapdb/LongConcurrentHashMap<TV;>.MapIterator;"
    iget-object v0, p0, Lorg/mapdb/LongConcurrentHashMap$MapIterator;->value:Ljava/lang/Object;

    return-object v0
.end method
