.class public Lcom/amazonaws/event/ProgressReportingInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;
.source "ProgressReportingInputStream.java"


# static fields
.field private static final NOTIFICATION_THRESHOLD:I = 0x2000


# instance fields
.field private fireCompletedEvent:Z

.field private final listenerCallbackExecutor:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

.field private unnotifiedByteCount:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/amazonaws/event/ProgressListenerCallbackExecutor;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "listenerCallbackExecutor"    # Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 66
    iput-object p2, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->listenerCallbackExecutor:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    .line 67
    return-void
.end method

.method private notify(I)V
    .locals 4
    .param p1, "bytesRead"    # I

    .prologue
    .line 143
    iget v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->unnotifiedByteCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->unnotifiedByteCount:I

    .line 144
    iget v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->unnotifiedByteCount:I

    const/16 v1, 0x2000

    if-lt v0, v1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->listenerCallbackExecutor:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    new-instance v1, Lcom/amazonaws/event/ProgressEvent;

    iget v2, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->unnotifiedByteCount:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->progressChanged(Lcom/amazonaws/event/ProgressEvent;)V

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->unnotifiedByteCount:I

    .line 148
    :cond_0
    return-void
.end method

.method private notifyCompleted()V
    .locals 4

    .prologue
    .line 133
    iget-boolean v1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->fireCompletedEvent:Z

    if-nez v1, :cond_0

    .line 140
    :goto_0
    return-void

    .line 136
    :cond_0
    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    iget v1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->unnotifiedByteCount:I

    int-to-long v2, v1

    invoke-direct {v0, v2, v3}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 137
    .local v0, "event":Lcom/amazonaws/event/ProgressEvent;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/amazonaws/event/ProgressEvent;->setEventCode(I)V

    .line 138
    const/4 v1, 0x0

    iput v1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->unnotifiedByteCount:I

    .line 139
    iget-object v1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->listenerCallbackExecutor:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    invoke-virtual {v1, v0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->progressChanged(Lcom/amazonaws/event/ProgressEvent;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    iget v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->unnotifiedByteCount:I

    if-lez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->listenerCallbackExecutor:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    new-instance v1, Lcom/amazonaws/event/ProgressEvent;

    iget v2, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->unnotifiedByteCount:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->progressChanged(Lcom/amazonaws/event/ProgressEvent;)V

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->unnotifiedByteCount:I

    .line 129
    :cond_0
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->close()V

    .line 130
    return-void
.end method

.method public getFireCompletedEvent()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->fireCompletedEvent:Z

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->read()I

    move-result v0

    .line 96
    .local v0, "data":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/amazonaws/event/ProgressReportingInputStream;->notifyCompleted()V

    .line 101
    :goto_0
    return v0

    .line 99
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/amazonaws/event/ProgressReportingInputStream;->notify(I)V

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 115
    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/internal/SdkFilterInputStream;->read([BII)I

    move-result v0

    .line 116
    .local v0, "bytesRead":I
    if-ne v0, v1, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/amazonaws/event/ProgressReportingInputStream;->notifyCompleted()V

    .line 118
    :cond_0
    if-eq v0, v1, :cond_1

    .line 119
    invoke-direct {p0, v0}, Lcom/amazonaws/event/ProgressReportingInputStream;->notify(I)V

    .line 120
    :cond_1
    return v0
.end method

.method public reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->reset()V

    .line 107
    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    iget v1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->unnotifiedByteCount:I

    int-to-long v2, v1

    invoke-direct {v0, v2, v3}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 108
    .local v0, "event":Lcom/amazonaws/event/ProgressEvent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/amazonaws/event/ProgressEvent;->setEventCode(I)V

    .line 109
    iget-object v1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->listenerCallbackExecutor:Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    invoke-virtual {v1, v0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->progressChanged(Lcom/amazonaws/event/ProgressEvent;)V

    .line 110
    const/4 v1, 0x0

    iput v1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->unnotifiedByteCount:I

    .line 111
    return-void
.end method

.method public setFireCompletedEvent(Z)V
    .locals 0
    .param p1, "fireCompletedEvent"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/amazonaws/event/ProgressReportingInputStream;->fireCompletedEvent:Z

    .line 79
    return-void
.end method
