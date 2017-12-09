.class public Lcom/kakao/network/tasks/KakaoTaskQueue;
.super Ljava/lang/Object;
.source "KakaoTaskQueue.java"


# static fields
.field private static volatile instance:Lcom/kakao/network/tasks/KakaoTaskQueue;


# instance fields
.field private executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/kakao/network/tasks/KakaoTaskQueue;->executor:Ljava/util/concurrent/ExecutorService;

    .line 43
    return-void
.end method

.method public static getInstance()Lcom/kakao/network/tasks/KakaoTaskQueue;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/kakao/network/tasks/KakaoTaskQueue;->instance:Lcom/kakao/network/tasks/KakaoTaskQueue;

    if-nez v0, :cond_1

    .line 32
    const-class v1, Lcom/kakao/network/tasks/KakaoTaskQueue;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/kakao/network/tasks/KakaoTaskQueue;->instance:Lcom/kakao/network/tasks/KakaoTaskQueue;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/kakao/network/tasks/KakaoTaskQueue;

    invoke-direct {v0}, Lcom/kakao/network/tasks/KakaoTaskQueue;-><init>()V

    sput-object v0, Lcom/kakao/network/tasks/KakaoTaskQueue;->instance:Lcom/kakao/network/tasks/KakaoTaskQueue;

    .line 36
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_1
    sget-object v0, Lcom/kakao/network/tasks/KakaoTaskQueue;->instance:Lcom/kakao/network/tasks/KakaoTaskQueue;

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addTask(Lcom/kakao/network/tasks/KakaoResultTask;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/kakao/network/tasks/KakaoResultTask",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "task":Lcom/kakao/network/tasks/KakaoResultTask;, "Lcom/kakao/network/tasks/KakaoResultTask<TT;>;"
    iget-object v0, p0, Lcom/kakao/network/tasks/KakaoTaskQueue;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1}, Lcom/kakao/network/tasks/KakaoResultTask;->getCallable()Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public setExecutor(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "e"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/kakao/network/tasks/KakaoTaskQueue;->executor:Ljava/util/concurrent/ExecutorService;

    .line 28
    return-void
.end method
