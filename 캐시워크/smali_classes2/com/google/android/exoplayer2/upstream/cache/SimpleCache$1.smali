.class Lcom/google/android/exoplayer2/upstream/cache/SimpleCache$1;
.super Ljava/lang/Thread;
.source "SimpleCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/CacheEvictor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

.field final synthetic val$conditionVariable:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache$1;->this$0:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache$1;->val$conditionVariable:Landroid/os/ConditionVariable;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 62
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache$1;->this$0:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache$1;->val$conditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 64
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache$1;->this$0:Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;->access$000(Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;)V

    .line 65
    monitor-exit v1

    .line 66
    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
