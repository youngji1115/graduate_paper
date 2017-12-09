.class Lorg/mapdb/Caches$HashTable$HashItem;
.super Ljava/lang/Object;
.source "Caches.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/Caches$HashTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HashItem"
.end annotation


# instance fields
.field final key:J

.field final val:Ljava/lang/Object;


# direct methods
.method private constructor <init>(JLjava/lang/Object;)V
    .locals 1
    .param p1, "key"    # J
    .param p3, "val"    # Ljava/lang/Object;

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-wide p1, p0, Lorg/mapdb/Caches$HashTable$HashItem;->key:J

    .line 201
    iput-object p3, p0, Lorg/mapdb/Caches$HashTable$HashItem;->val:Ljava/lang/Object;

    .line 202
    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/Object;Lorg/mapdb/Caches$1;)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/lang/Object;
    .param p4, "x2"    # Lorg/mapdb/Caches$1;

    .prologue
    .line 195
    invoke-direct {p0, p1, p2, p3}, Lorg/mapdb/Caches$HashTable$HashItem;-><init>(JLjava/lang/Object;)V

    return-void
.end method
