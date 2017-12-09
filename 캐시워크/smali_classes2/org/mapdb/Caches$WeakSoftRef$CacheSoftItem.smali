.class public final Lorg/mapdb/Caches$WeakSoftRef$CacheSoftItem;
.super Ljava/lang/ref/SoftReference;
.source "Caches.java"

# interfaces
.implements Lorg/mapdb/Caches$WeakSoftRef$CacheItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/Caches$WeakSoftRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "CacheSoftItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/SoftReference",
        "<TA;>;",
        "Lorg/mapdb/Caches$WeakSoftRef$CacheItem;"
    }
.end annotation


# instance fields
.field final recid:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;J)V
    .locals 1
    .param p3, "recid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Ljava/lang/ref/ReferenceQueue",
            "<TA;>;J)V"
        }
    .end annotation

    .prologue
    .line 391
    .local p0, "this":Lorg/mapdb/Caches$WeakSoftRef$CacheSoftItem;, "Lorg/mapdb/Caches$WeakSoftRef$CacheSoftItem<TA;>;"
    .local p1, "referent":Ljava/lang/Object;, "TA;"
    .local p2, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TA;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 392
    iput-wide p3, p0, Lorg/mapdb/Caches$WeakSoftRef$CacheSoftItem;->recid:J

    .line 393
    return-void
.end method


# virtual methods
.method public getRecid()J
    .locals 2

    .prologue
    .line 397
    .local p0, "this":Lorg/mapdb/Caches$WeakSoftRef$CacheSoftItem;, "Lorg/mapdb/Caches$WeakSoftRef$CacheSoftItem<TA;>;"
    iget-wide v0, p0, Lorg/mapdb/Caches$WeakSoftRef$CacheSoftItem;->recid:J

    return-wide v0
.end method
