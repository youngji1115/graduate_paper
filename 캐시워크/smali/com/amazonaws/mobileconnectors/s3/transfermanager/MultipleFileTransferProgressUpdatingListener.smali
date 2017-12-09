.class final Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferProgressUpdatingListener;
.super Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferProgressUpdatingListener;
.source "MultipleFileTransferProgressUpdatingListener.java"


# instance fields
.field private final progressListenerChain:Lcom/amazonaws/event/ProgressListenerChain;


# direct methods
.method public constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;Lcom/amazonaws/event/ProgressListenerChain;)V
    .locals 0
    .param p1, "transferProgress"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;
    .param p2, "progressListenerChain"    # Lcom/amazonaws/event/ProgressListenerChain;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferProgressUpdatingListener;-><init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferProgress;)V

    .line 35
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferProgressUpdatingListener;->progressListenerChain:Lcom/amazonaws/event/ProgressListenerChain;

    .line 36
    return-void
.end method


# virtual methods
.method public progressChanged(Lcom/amazonaws/event/ProgressEvent;)V
    .locals 1
    .param p1, "progressEvent"    # Lcom/amazonaws/event/ProgressEvent;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferProgressUpdatingListener;->progressChanged(Lcom/amazonaws/event/ProgressEvent;)V

    .line 41
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/MultipleFileTransferProgressUpdatingListener;->progressListenerChain:Lcom/amazonaws/event/ProgressListenerChain;

    invoke-virtual {v0, p1}, Lcom/amazonaws/event/ProgressListenerChain;->progressChanged(Lcom/amazonaws/event/ProgressEvent;)V

    .line 42
    return-void
.end method
