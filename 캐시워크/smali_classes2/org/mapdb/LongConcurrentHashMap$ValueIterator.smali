.class final Lorg/mapdb/LongConcurrentHashMap$ValueIterator;
.super Lorg/mapdb/LongConcurrentHashMap$HashIterator;
.source "LongConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/LongConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mapdb/LongConcurrentHashMap",
        "<TV;>.HashIterator;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mapdb/LongConcurrentHashMap;


# direct methods
.method constructor <init>(Lorg/mapdb/LongConcurrentHashMap;)V
    .locals 0

    .prologue
    .line 937
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap$ValueIterator;, "Lorg/mapdb/LongConcurrentHashMap<TV;>.ValueIterator;"
    iput-object p1, p0, Lorg/mapdb/LongConcurrentHashMap$ValueIterator;->this$0:Lorg/mapdb/LongConcurrentHashMap;

    invoke-direct {p0, p1}, Lorg/mapdb/LongConcurrentHashMap$HashIterator;-><init>(Lorg/mapdb/LongConcurrentHashMap;)V

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
    .line 942
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap$ValueIterator;, "Lorg/mapdb/LongConcurrentHashMap<TV;>.ValueIterator;"
    invoke-super {p0}, Lorg/mapdb/LongConcurrentHashMap$HashIterator;->nextEntry()Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    move-result-object v0

    iget-object v0, v0, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    return-object v0
.end method
