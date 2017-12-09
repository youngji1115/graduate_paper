.class public Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;
.super Ljava/lang/Object;
.source "Queue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mObject:Ljava/lang/Object;

.field private final mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    .local p0, "this":Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;, "Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mObject:Ljava/lang/Object;

    .line 10
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mQueue:Ljava/util/LinkedList;

    .line 11
    return-void
.end method


# virtual methods
.method public addAllHead(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;, "Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mQueue:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z

    .line 42
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_1
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 45
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    return-void

    .line 42
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 45
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public addAllTail(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;, "Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 51
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_1
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 54
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    return-void

    .line 51
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 54
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public addHead(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;, "Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mQueue:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 19
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 23
    :try_start_1
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 22
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    return-void

    .line 19
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 22
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public addTail(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;, "Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 33
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 37
    :try_start_1
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 36
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    return-void

    .line 33
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 36
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 112
    .local p0, "this":Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;, "Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue<TE;>;"
    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 112
    monitor-exit v1

    .line 115
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;, "Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue<TE;>;"
    const/4 v1, 0x0

    .line 60
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 62
    :try_start_0
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mObject:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :try_start_1
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mObject:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 62
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :cond_0
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 71
    :try_start_2
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 72
    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    :goto_0
    return-object v1

    .line 62
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 74
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_5
    monitor-exit v2

    goto :goto_0

    .line 70
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method

.method public getNew()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;, "Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue<TE;>;"
    const/4 v1, 0x0

    .line 80
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 82
    :try_start_0
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mObject:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :try_start_1
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mObject:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 82
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 91
    :try_start_2
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 92
    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    :goto_0
    return-object v1

    .line 82
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 94
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_5
    monitor-exit v2

    goto :goto_0

    .line 90
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 100
    .local p0, "this":Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;, "Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue<TE;>;"
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 101
    :cond_0
    monitor-exit v1

    .line 109
    :cond_1
    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
