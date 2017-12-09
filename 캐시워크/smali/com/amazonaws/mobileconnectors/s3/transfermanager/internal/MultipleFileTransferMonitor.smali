.class public Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;
.super Ljava/lang/Object;
.source "MultipleFileTransferMonitor.java"

# interfaces
.implements Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferMonitor;


# instance fields
.field private final future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private final subTransfers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;",
            ">;"
        }
    .end annotation
.end field

.field private final transfer:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;


# direct methods
.method public constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;Ljava/util/Collection;)V
    .locals 1
    .param p1, "transfer"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;",
            "Ljava/util/Collection",
            "<+",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "subTransfers":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;->subTransfers:Ljava/util/Collection;

    .line 35
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;->transfer:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;

    .line 42
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor$1;

    invoke-direct {v0, p0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor$1;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;)V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;->future:Ljava/util/concurrent/Future;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;->subTransfers:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;)Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;
    .locals 1
    .param p0, "x0"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;->transfer:Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;

    return-object v0
.end method


# virtual methods
.method public getFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;->future:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public declared-synchronized isDone()Z
    .locals 3

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransferMonitor;->subTransfers:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;

    .line 89
    .local v0, "subTransfer":Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;
    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;->isDone()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 90
    const/4 v1, 0x0

    .line 92
    .end local v0    # "subTransfer":Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;
    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
