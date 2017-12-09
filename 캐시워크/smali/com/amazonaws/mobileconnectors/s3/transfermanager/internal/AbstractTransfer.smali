.class public abstract Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;
.super Ljava/lang/Object;
.source "AbstractTransfer.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;


# instance fields
.field private final description:Ljava/lang/String;

.field protected monitor:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

.field protected final progressListenerChain:Lcom/amazonaws/event/ProgressListenerChain;

.field protected volatile state:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

.field protected final stateChangeListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final transferProgress:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "transferProgress"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;
    .param p3, "progressListenerChain"    # Lcom/amazonaws/event/ProgressListenerChain;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;-><init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)V

    .line 60
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "transferProgress"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;
    .param p3, "progressListenerChain"    # Lcom/amazonaws/event/ProgressListenerChain;
    .param p4, "stateChangeListener"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Waiting:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->state:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    .line 55
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->stateChangeListeners:Ljava/util/Collection;

    .line 65
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->description:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->progressListenerChain:Lcom/amazonaws/event/ProgressListenerChain;

    .line 67
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->transferProgress:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;

    .line 68
    invoke-virtual {p0, p4}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->addStateChangeListener(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)V

    .line 69
    return-void
.end method


# virtual methods
.method public declared-synchronized addProgressListener(Lcom/amazonaws/event/ProgressListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/amazonaws/event/ProgressListener;

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->progressListenerChain:Lcom/amazonaws/event/ProgressListenerChain;

    invoke-virtual {v0, p1}, Lcom/amazonaws/event/ProgressListenerChain;->addProgressListener(Lcom/amazonaws/event/ProgressListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/amazonaws/services/s3/model/ProgressListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->progressListenerChain:Lcom/amazonaws/event/ProgressListenerChain;

    new-instance v1, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;

    invoke-direct {v1, p1}, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;-><init>(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    invoke-virtual {v0, v1}, Lcom/amazonaws/event/ProgressListenerChain;->addProgressListener(Lcom/amazonaws/event/ProgressListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    monitor-exit p0

    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addStateChangeListener(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;

    .prologue
    .line 223
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->stateChangeListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :cond_0
    monitor-exit p0

    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected fireProgressEvent(I)V
    .locals 4
    .param p1, "eventType"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->progressListenerChain:Lcom/amazonaws/event/ProgressListenerChain;

    new-instance v1, Lcom/amazonaws/event/ProgressEvent;

    const-wide/16 v2, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/amazonaws/event/ProgressEvent;-><init>(IJ)V

    invoke-static {v0, v1}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->progressChanged(Lcom/amazonaws/event/ProgressListener;Lcom/amazonaws/event/ProgressEvent;)Ljava/util/concurrent/Future;

    .line 259
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getMonitor()Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->monitor:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    return-object v0
.end method

.method public getProgress()Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->transferProgress:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;

    return-object v0
.end method

.method public declared-synchronized getState()Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;
    .locals 1

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->state:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 2

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->state:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Failed:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->state:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Completed:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->state:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Canceled:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyStateChangeListeners(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V
    .locals 3
    .param p1, "state"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    .prologue
    .line 172
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->stateChangeListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;

    .line 173
    .local v0, "listener":Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;
    invoke-interface {v0, p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;->transferStateChanged(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    goto :goto_0

    .line 175
    .end local v0    # "listener":Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;
    :cond_0
    return-void
.end method

.method public declared-synchronized removeProgressListener(Lcom/amazonaws/event/ProgressListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/amazonaws/event/ProgressListener;

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->progressListenerChain:Lcom/amazonaws/event/ProgressListenerChain;

    invoke-virtual {v0, p1}, Lcom/amazonaws/event/ProgressListenerChain;->removeProgressListener(Lcom/amazonaws/event/ProgressListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeProgressListener(Lcom/amazonaws/services/s3/model/ProgressListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/amazonaws/services/s3/model/ProgressListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->progressListenerChain:Lcom/amazonaws/event/ProgressListenerChain;

    new-instance v1, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;

    invoke-direct {v1, p1}, Lcom/amazonaws/services/s3/model/LegacyS3ProgressListener;-><init>(Lcom/amazonaws/services/s3/model/ProgressListener;)V

    invoke-virtual {v0, v1}, Lcom/amazonaws/event/ProgressListenerChain;->removeProgressListener(Lcom/amazonaws/event/ProgressListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    monitor-exit p0

    return-void

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeStateChangeListener(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;

    .prologue
    .line 231
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->stateChangeListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :cond_0
    monitor-exit p0

    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected rethrowExecutionException(Ljava/util/concurrent/ExecutionException;)V
    .locals 1
    .param p1, "e"    # Ljava/util/concurrent/ExecutionException;

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->unwrapExecutionException(Ljava/util/concurrent/ExecutionException;)Lcom/amazonaws/AmazonClientException;

    move-result-object v0

    throw v0
.end method

.method public setMonitor(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;)V
    .locals 0
    .param p1, "monitor"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->monitor:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    .line 250
    return-void
.end method

.method public setState(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V
    .locals 3
    .param p1, "state"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    .prologue
    .line 160
    monitor-enter p0

    .line 161
    :try_start_0
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->state:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    .line 162
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->stateChangeListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;

    .line 164
    .local v0, "listener":Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;
    invoke-interface {v0, p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;->transferStateChanged(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    goto :goto_0

    .line 162
    .end local v0    # "listener":Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 166
    :cond_0
    return-void
.end method

.method protected unwrapExecutionException(Ljava/util/concurrent/ExecutionException;)Lcom/amazonaws/AmazonClientException;
    .locals 4
    .param p1, "e"    # Ljava/util/concurrent/ExecutionException;

    .prologue
    .line 281
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 282
    .local v0, "t":Ljava/lang/Throwable;
    instance-of v1, v0, Lcom/amazonaws/AmazonClientException;

    if-eqz v1, :cond_0

    .line 283
    check-cast v0, Lcom/amazonaws/AmazonClientException;

    .line 284
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-object v0

    .restart local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to complete transfer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public waitForCompletion()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v2, 0x0

    .line 101
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->monitor:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    invoke-interface {v3}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->isDone()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 102
    :cond_0
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->monitor:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    invoke-interface {v3}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v1

    .line 103
    .local v1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 104
    .local v2, "result":Ljava/lang/Object;
    goto :goto_0

    .line 105
    .end local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .end local v2    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->rethrowExecutionException(Ljava/util/concurrent/ExecutionException;)V

    .line 109
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_1
    return-void
.end method

.method public waitForException()Lcom/amazonaws/AmazonClientException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 126
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->monitor:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    invoke-interface {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->monitor:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    invoke-interface {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->unwrapExecutionException(Ljava/util/concurrent/ExecutionException;)Lcom/amazonaws/AmazonClientException;

    move-result-object v1

    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :goto_1
    return-object v1

    .line 129
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->monitor:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    invoke-interface {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 130
    const/4 v1, 0x0

    goto :goto_1
.end method
