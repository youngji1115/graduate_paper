.class final Lorg/mapdb/Volume$2;
.super Ljava/lang/Object;
.source "Volume.java"

# interfaces
.implements Lorg/mapdb/Volume$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mapdb/Volume;->memoryFactory(ZJI)Lorg/mapdb/Volume$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$chunkShift:I

.field final synthetic val$sizeLimit:J

.field final synthetic val$useDirectBuffer:Z


# direct methods
.method constructor <init>(ZJI)V
    .locals 0

    .prologue
    .line 293
    iput-boolean p1, p0, Lorg/mapdb/Volume$2;->val$useDirectBuffer:Z

    iput-wide p2, p0, Lorg/mapdb/Volume$2;->val$sizeLimit:J

    iput p4, p0, Lorg/mapdb/Volume$2;->val$chunkShift:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized createIndexVolume()Lorg/mapdb/Volume;
    .locals 5

    .prologue
    .line 296
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/mapdb/Volume$MemoryVol;

    iget-boolean v1, p0, Lorg/mapdb/Volume$2;->val$useDirectBuffer:Z

    iget-wide v2, p0, Lorg/mapdb/Volume$2;->val$sizeLimit:J

    iget v4, p0, Lorg/mapdb/Volume$2;->val$chunkShift:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mapdb/Volume$MemoryVol;-><init>(ZJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createPhysVolume()Lorg/mapdb/Volume;
    .locals 5

    .prologue
    .line 300
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/mapdb/Volume$MemoryVol;

    iget-boolean v1, p0, Lorg/mapdb/Volume$2;->val$useDirectBuffer:Z

    iget-wide v2, p0, Lorg/mapdb/Volume$2;->val$sizeLimit:J

    iget v4, p0, Lorg/mapdb/Volume$2;->val$chunkShift:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mapdb/Volume$MemoryVol;-><init>(ZJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createTransLogVolume()Lorg/mapdb/Volume;
    .locals 5

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/mapdb/Volume$MemoryVol;

    iget-boolean v1, p0, Lorg/mapdb/Volume$2;->val$useDirectBuffer:Z

    iget-wide v2, p0, Lorg/mapdb/Volume$2;->val$sizeLimit:J

    iget v4, p0, Lorg/mapdb/Volume$2;->val$chunkShift:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/mapdb/Volume$MemoryVol;-><init>(ZJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
