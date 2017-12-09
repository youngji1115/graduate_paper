.class final Lorg/mapdb/LongConcurrentHashMap$HashEntry;
.super Ljava/lang/Object;
.source "LongConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/LongConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HashEntry"
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
.field final hash:I

.field final key:J

.field final next:Lorg/mapdb/LongConcurrentHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapdb/LongConcurrentHashMap$HashEntry",
            "<TV;>;"
        }
    .end annotation
.end field

.field volatile value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JILorg/mapdb/LongConcurrentHashMap$HashEntry;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # J
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lorg/mapdb/LongConcurrentHashMap$HashEntry",
            "<TV;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    .local p4, "next":Lorg/mapdb/LongConcurrentHashMap$HashEntry;, "Lorg/mapdb/LongConcurrentHashMap$HashEntry<TV;>;"
    .local p5, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-wide p1, p0, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->key:J

    .line 149
    iput p3, p0, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->hash:I

    .line 150
    iput-object p4, p0, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->next:Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    .line 151
    iput-object p5, p0, Lorg/mapdb/LongConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 152
    return-void
.end method

.method static newArray(I)[Lorg/mapdb/LongConcurrentHashMap$HashEntry;
    .locals 1
    .param p0, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Lorg/mapdb/LongConcurrentHashMap$HashEntry",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 156
    new-array v0, p0, [Lorg/mapdb/LongConcurrentHashMap$HashEntry;

    return-object v0
.end method
