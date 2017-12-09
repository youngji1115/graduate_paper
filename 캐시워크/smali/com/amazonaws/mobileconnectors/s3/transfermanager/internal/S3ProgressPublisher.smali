.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressPublisher;
.super Lcom/amazonaws/event/ProgressListenerCallbackExecutor;
.source "S3ProgressPublisher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;-><init>()V

    return-void
.end method

.method public static publishTransferPersistable(Lcom/amazonaws/event/ProgressListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;)Ljava/util/concurrent/Future;
    .locals 3
    .param p0, "listener"    # Lcom/amazonaws/event/ProgressListener;
    .param p1, "persistableTransfer"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/event/ProgressListener;",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 40
    if-eqz p1, :cond_0

    instance-of v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;

    if-nez v1, :cond_1

    .line 42
    :cond_0
    const/4 v1, 0x0

    .line 44
    :goto_0
    return-object v1

    :cond_1
    move-object v0, p0

    .line 43
    check-cast v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;

    .line 44
    .local v0, "s3listener":Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressPublisher;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressPublisher$1;

    invoke-direct {v2, v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressPublisher$1;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/PersistableTransfer;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    goto :goto_0
.end method
