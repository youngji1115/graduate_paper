.class final Lorg/mapdb/LongConcurrentHashMap$KeyIterator;
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
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mapdb/LongConcurrentHashMap",
        "<TV;>.HashIterator;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mapdb/LongConcurrentHashMap;


# direct methods
.method constructor <init>(Lorg/mapdb/LongConcurrentHashMap;)V
    .locals 0

    .prologue
    .line 929
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap$KeyIterator;, "Lorg/mapdb/LongConcurrentHashMap<TV;>.KeyIterator;"
    iput-object p1, p0, Lorg/mapdb/LongConcurrentHashMap$KeyIterator;->this$0:Lorg/mapdb/LongConcurrentHashMap;

    invoke-direct {p0, p1}, Lorg/mapdb/LongConcurrentHashMap$HashIterator;-><init>(Lorg/mapdb/LongConcurrentHashMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 934
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap$KeyIterator;, "Lorg/mapdb/LongConcurrentHashMap<TV;>.KeyIterator;"
    invoke-super {p0}, Lorg/mapdb/LongConcurrentHashMap$HashIterator;->nextEntry()Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    move-result-object v0

    iget-wide v0, v0, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->key:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 929
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap$KeyIterator;, "Lorg/mapdb/LongConcurrentHashMap<TV;>.KeyIterator;"
    invoke-virtual {p0}, Lorg/mapdb/LongConcurrentHashMap$KeyIterator;->next()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
