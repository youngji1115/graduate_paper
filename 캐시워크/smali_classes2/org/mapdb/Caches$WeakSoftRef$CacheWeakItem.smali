.class public final Lorg/mapdb/Caches$WeakSoftRef$CacheWeakItem;
.super Ljava/lang/ref/WeakReference;
.source "Caches.java"

# interfaces
.implements Lorg/mapdb/Caches$WeakSoftRef$CacheItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapdb/Caches$WeakSoftRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "CacheWeakItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference",
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
    .line 376
    .local p0, "this":Lorg/mapdb/Caches$WeakSoftRef$CacheWeakItem;, "Lorg/mapdb/Caches$WeakSoftRef$CacheWeakItem<TA;>;"
    .local p1, "referent":Ljava/lang/Object;, "TA;"
    .local p2, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TA;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 377
    iput-wide p3, p0, Lorg/mapdb/Caches$WeakSoftRef$CacheWeakItem;->recid:J

    .line 378
    return-void
.end method


# virtual methods
.method public getRecid()J
    .locals 2

    .prologue
    .line 382
    .local p0, "this":Lorg/mapdb/Caches$WeakSoftRef$CacheWeakItem;, "Lorg/mapdb/Caches$WeakSoftRef$CacheWeakItem<TA;>;"
    iget-wide v0, p0, Lorg/mapdb/Caches$WeakSoftRef$CacheWeakItem;->recid:J

    return-wide v0
.end method
