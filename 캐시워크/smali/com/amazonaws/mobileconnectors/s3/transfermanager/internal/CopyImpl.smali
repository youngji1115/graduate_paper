.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;
.super Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;
.source "CopyImpl.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/s3/transfermanager/Copy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "transferProgress"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;
    .param p3, "progressListenerChain"    # Lcom/amazonaws/event/ProgressListenerChain;
    .param p4, "stateChangeListener"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;-><init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;)V

    .line 38
    return-void
.end method


# virtual methods
.method public waitForCopyResult()Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v2, 0x0

    .line 59
    .local v2, "result":Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;->monitor:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    invoke-interface {v3}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->isDone()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 60
    :cond_0
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;->monitor:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    invoke-interface {v3}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v1

    .line 61
    .local v1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "result":Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;
    check-cast v2, Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .restart local v2    # "result":Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;
    goto :goto_0

    .line 64
    .end local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .end local v2    # "result":Lcom/amazonaws/mobileconnectors/s3/transfermanager/model/CopyResult;
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/CopyImpl;->rethrowExecutionException(Ljava/util/concurrent/ExecutionException;)V

    .line 66
    const/4 v2, 0x0

    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_1
    return-object v2
.end method
