.class public abstract Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;
.super Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;
.source "MultipleFileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;",
        ">",
        "Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;"
    }
.end annotation


# instance fields
.field private subTransferStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final subTransfers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;Ljava/util/Collection;)V
    .locals 2
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "transferProgress"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;
    .param p3, "progressListenerChain"    # Lcom/amazonaws/event/ProgressListenerChain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;",
            "Lcom/amazonaws/event/ProgressListenerChain;",
            "Ljava/util/Collection",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;, "Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer<TT;>;"
    .local p4, "subTransfers":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;-><init>(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;)V

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->subTransferStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->subTransfers:Ljava/util/Collection;

    .line 40
    return-void
.end method


# virtual methods
.method public collateFinalState()V
    .locals 5

    .prologue
    .line 51
    .local p0, "this":Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;, "Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer<TT;>;"
    const/4 v1, 0x0

    .line 52
    .local v1, "seenCanceled":Z
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->subTransfers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;

    .line 53
    .local v0, "download":Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;, "TT;"
    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;->getState()Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    move-result-object v3

    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Failed:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    if-ne v3, v4, :cond_1

    .line 54
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Failed:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {p0, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->setState(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    .line 64
    .end local v0    # "download":Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;, "TT;"
    :goto_1
    return-void

    .line 56
    .restart local v0    # "download":Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;, "TT;"
    :cond_1
    invoke-interface {v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;->getState()Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    move-result-object v3

    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Canceled:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    if-ne v3, v4, :cond_0

    .line 57
    const/4 v1, 0x1

    goto :goto_0

    .line 60
    .end local v0    # "download":Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer;, "TT;"
    :cond_2
    if-eqz v1, :cond_3

    .line 61
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Canceled:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {p0, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->setState(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    goto :goto_1

    .line 63
    :cond_3
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->Completed:Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    invoke-virtual {p0, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->setState(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    goto :goto_1
.end method

.method public setState(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V
    .locals 3
    .param p1, "state"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;

    .prologue
    .local p0, "this":Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;, "Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer<TT;>;"
    const/4 v2, 0x1

    .line 72
    invoke-super {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer;->setState(Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;)V

    .line 74
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer$1;->$SwitchMap$com$amazonaws$mobileconnectors$s3$transfermanager$Transfer$TransferState:[I

    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/Transfer$TransferState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 76
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->fireProgressEvent(I)V

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->subTransferStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->fireProgressEvent(I)V

    goto :goto_0

    .line 89
    :pswitch_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->fireProgressEvent(I)V

    goto :goto_0

    .line 92
    :pswitch_3
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->fireProgressEvent(I)V

    goto :goto_0

    .line 95
    :pswitch_4
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/MultipleFileTransfer;->fireProgressEvent(I)V

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
