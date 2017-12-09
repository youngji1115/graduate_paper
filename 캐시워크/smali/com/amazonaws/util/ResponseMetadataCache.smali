.class public Lcom/amazonaws/util/ResponseMetadataCache;
.super Ljava/lang/Object;
.source "ResponseMetadataCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;
    }
.end annotation


# instance fields
.field private final internalCache:Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxEntries"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;

    invoke-direct {v0, p1}, Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/util/ResponseMetadataCache;->internalCache:Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;

    .line 39
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/Object;Lcom/amazonaws/ResponseMetadata;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "metadata"    # Lcom/amazonaws/ResponseMetadata;

    .prologue
    .line 49
    monitor-enter p0

    if-nez p1, :cond_0

    .line 52
    :goto_0
    monitor-exit p0

    return-void

    .line 51
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/util/ResponseMetadataCache;->internalCache:Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get(Ljava/lang/Object;)Lcom/amazonaws/ResponseMetadata;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amazonaws/util/ResponseMetadataCache;->internalCache:Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/ResponseMetadata;

    return-object v0
.end method
