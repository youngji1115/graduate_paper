.class final Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferStateChangeListener;
.super Ljava/lang/Object;
.source "MultipleFileTransferChangeStateListener.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;


# instance fields
.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field private final multipleFileTransfer:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CountDownLatch;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;)V
    .locals 0
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountDownLatch;",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "multipleFileTransfer":Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;, "Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferStateChangeListener;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 32
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferStateChangeListener;->multipleFileTransfer:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;

    .line 33
    return-void
.end method


# virtual methods
.method public transferStateChanged(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V
    .locals 4
    .param p1, "upload"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;
    .param p2, "state"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    .prologue
    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferStateChangeListener;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferStateChangeListener;->multipleFileTransfer:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;

    monitor-enter v2

    .line 47
    :try_start_1
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferStateChangeListener;->multipleFileTransfer:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->getState()Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    move-result-object v1

    if-eq v1, p2, :cond_0

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferStateChangeListener;->multipleFileTransfer:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    const-string v2, "Couldn\'t wait for all downloads to be queued"

    invoke-direct {v1, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_2
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->InProgress:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    if-ne p2, v1, :cond_2

    .line 56
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferStateChangeListener;->multipleFileTransfer:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;

    invoke-virtual {v1, p2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->setState(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    .line 62
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 57
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferStateChangeListener;->multipleFileTransfer:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->getMonitor()Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;->isDone()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 58
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferStateChangeListener;->multipleFileTransfer:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->collateFinalState()V

    goto :goto_1

    .line 60
    :cond_3
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferStateChangeListener;->multipleFileTransfer:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;

    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->InProgress:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {v1, v3}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->setState(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
