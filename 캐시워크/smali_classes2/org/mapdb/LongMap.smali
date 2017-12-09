.class public abstract Lorg/mapdb/LongMap;
.super Ljava/lang/Object;
.source "LongMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapdb/LongMap$LongMapIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    .local p0, "this":Lorg/mapdb/LongMap;, "Lorg/mapdb/LongMap<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public abstract get(J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract longMapIterator()Lorg/mapdb/LongMap$LongMapIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mapdb/LongMap$LongMapIterator",
            "<TV;>;"
        }
    .end annotation
.end method

.method public abstract put(JLjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)TV;"
        }
    .end annotation
.end method

.method public abstract remove(J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation
.end method

.method public abstract size()I
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 100
    .local p0, "this":Lorg/mapdb/LongMap;, "Lorg/mapdb/LongMap<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    const/4 v1, 0x1

    .line 104
    .local v1, "first":Z
    invoke-virtual {p0}, Lorg/mapdb/LongMap;->longMapIterator()Lorg/mapdb/LongMap$LongMapIterator;

    move-result-object v2

    .line 105
    .local v2, "iter":Lorg/mapdb/LongMap$LongMapIterator;, "Lorg/mapdb/LongMap$LongMapIterator<TV;>;"
    :goto_0
    invoke-interface {v2}, Lorg/mapdb/LongMap$LongMapIterator;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 106
    if-eqz v1, :cond_0

    .line 107
    const/4 v1, 0x0

    .line 111
    :goto_1
    invoke-interface {v2}, Lorg/mapdb/LongMap$LongMapIterator;->key()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 112
    const-string v3, " => "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-interface {v2}, Lorg/mapdb/LongMap$LongMapIterator;->value()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 109
    :cond_0
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 115
    :cond_1
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public abstract valuesIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation
.end method
