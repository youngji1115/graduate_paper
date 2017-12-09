.class Lorg/mapdb/LongHashMap$Entry;
.super Ljava/lang/Object;
.source "LongHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/LongHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Entry"
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
.field final key:J

.field next:Lorg/mapdb/LongHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/LongHashMap$Entry",
            "<TV;>;"
        }
    .end annotation
.end field

.field final origKeyHash:I

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JI)V
    .locals 1
    .param p1, "key"    # J
    .param p3, "hash"    # I

    .prologue
    .line 83
    .local p0, "this":Lorg/mapdb/LongHashMap$Entry;, "Lorg/mapdb/LongHashMap$Entry<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-wide p1, p0, Lorg/mapdb/LongHashMap$Entry;->key:J

    .line 85
    iput p3, p0, Lorg/mapdb/LongHashMap$Entry;->origKeyHash:I

    .line 86
    return-void
.end method
