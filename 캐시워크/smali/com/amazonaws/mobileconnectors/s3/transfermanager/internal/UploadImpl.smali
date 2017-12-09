.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;
.super Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;
.source "UploadImpl.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/s3/transfermanager/Upload;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "transferProgressInternalState"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;
    .param p3, "progressListenerChain"    # Lcom/amazonaws/event/ProgressListenerChain;
    .param p4, "listener"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;-><init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)V

    .line 37
    return-void
.end method

.method private pause(Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;
    .locals 2
    .param p1, "forceCancelTransfers"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult",
            "<",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;->monitor:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    check-cast v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;

    .line 89
    .local v0, "uploadMonitor":Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;
    invoke-virtual {v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->pause(Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;->monitor:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    check-cast v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;

    .line 110
    .local v0, "uploadMonitor":Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadMonitor;->performAbort()V

    .line 111
    return-void
.end method

.method public pause()Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/mobileconnectors/s3/transfermanager/exception/PauseException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;->pause(Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;

    move-result-object v0

    .line 76
    .local v0, "pauseResult":Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;, "Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult<Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;>;"
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;->getPauseStatus()Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;->SUCCESS:Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    if-eq v1, v2, :cond_0

    .line 77
    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/exception/PauseException;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;->getPauseStatus()Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/exception/PauseException;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseStatus;)V

    throw v1

    .line 79
    :cond_0
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;->getInfoToResume()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;

    return-object v1
.end method

.method public tryPause(Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;
    .locals 1
    .param p1, "forceCancelTransfers"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult",
            "<",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableUpload;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;->pause(Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/PauseResult;

    move-result-object v0

    return-object v0
.end method

.method public waitForUploadResult()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, "result":Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;->monitor:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    invoke-interface {v3}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->isDone()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 59
    :cond_0
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;->monitor:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    invoke-interface {v3}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v1

    .line 60
    .local v1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "result":Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;
    check-cast v2, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .restart local v2    # "result":Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;
    goto :goto_0

    .line 63
    .end local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .end local v2    # "result":Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/UploadResult;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/UploadImpl;->rethrowExecutionException(Ljava/util/concurrent/ExecutionException;)V

    .line 65
    const/4 v2, 0x0

    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_1
    return-object v2
.end method
