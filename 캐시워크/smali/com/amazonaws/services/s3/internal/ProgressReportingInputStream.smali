.class public Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;
.super Lcom/amazonaws/internal/SdkFilterInputStream;
.source "ProgressReportingInputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final NOTIFICATION_THRESHOLD:I = 0x2000


# instance fields
.field private fireCompletedEvent:Z

.field private final listener:Lcom/amazonaws/services/s3/model/ProgressListener;

.field private unnotifiedByteCount:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/amazonaws/services/s3/model/ProgressListener;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "listener"    # Lcom/amazonaws/services/s3/model/ProgressListener;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/amazonaws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 63
    iput-object p2, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->listener:Lcom/amazonaws/services/s3/model/ProgressListener;

    .line 64
    return-void
.end method

.method private notify(I)V
    .locals 3
    .param p1, "bytesRead"    # I

    .prologue
    .line 130
    iget v0, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->unnotifiedByteCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->unnotifiedByteCount:I

    .line 131
    iget v0, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->unnotifiedByteCount:I

    const/16 v1, 0x2000

    if-lt v0, v1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->listener:Lcom/amazonaws/services/s3/model/ProgressListener;

    new-instance v1, Lcom/amazonaws/services/s3/model/ProgressEvent;

    iget v2, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->unnotifiedByteCount:I

    invoke-direct {v1, v2}, Lcom/amazonaws/services/s3/model/ProgressEvent;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/amazonaws/services/s3/model/ProgressListener;->progressChanged(Lcom/amazonaws/services/s3/model/ProgressEvent;)V

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->unnotifiedByteCount:I

    .line 135
    :cond_0
    return-void
.end method

.method private notifyCompleted()V
    .locals 2

    .prologue
    .line 120
    iget-boolean v1, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->fireCompletedEvent:Z

    if-nez v1, :cond_0

    .line 127
    :goto_0
    return-void

    .line 123
    :cond_0
    new-instance v0, Lcom/amazonaws/services/s3/model/ProgressEvent;

    iget v1, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->unnotifiedByteCount:I

    invoke-direct {v0, v1}, Lcom/amazonaws/services/s3/model/ProgressEvent;-><init>(I)V

    .line 124
    .local v0, "event":Lcom/amazonaws/services/s3/model/ProgressEvent;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/ProgressEvent;->setEventCode(I)V

    .line 125
    const/4 v1, 0x0

    iput v1, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->unnotifiedByteCount:I

    .line 126
    iget-object v1, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->listener:Lcom/amazonaws/services/s3/model/ProgressListener;

    invoke-interface {v1, v0}, Lcom/amazonaws/services/s3/model/ProgressListener;->progressChanged(Lcom/amazonaws/services/s3/model/ProgressEvent;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget v0, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->unnotifiedByteCount:I

    if-lez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->listener:Lcom/amazonaws/services/s3/model/ProgressListener;

    new-instance v1, Lcom/amazonaws/services/s3/model/ProgressEvent;

    iget v2, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->unnotifiedByteCount:I

    invoke-direct {v1, v2}, Lcom/amazonaws/services/s3/model/ProgressEvent;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/amazonaws/services/s3/model/ProgressListener;->progressChanged(Lcom/amazonaws/services/s3/model/ProgressEvent;)V

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->unnotifiedByteCount:I

    .line 116
    :cond_0
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->close()V

    .line 117
    return-void
.end method

.method public getFireCompletedEvent()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->fireCompletedEvent:Z

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
    const/4 v1, -0x1

    .line 92
    invoke-super {p0}, Lcom/amazonaws/internal/SdkFilterInputStream;->read()I

    move-result v0

    .line 93
    .local v0, "data":I
    if-ne v0, v1, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->notifyCompleted()V

    .line 95
    :cond_0
    if-eq v0, v1, :cond_1

    .line 96
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->notify(I)V

    .line 97
    :cond_1
    return v0
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

    .line 102
    invoke-super {p0, p1, p2, p3}, Lcom/amazonaws/internal/SdkFilterInputStream;->read([BII)I

    move-result v0

    .line 103
    .local v0, "bytesRead":I
    if-ne v0, v1, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->notifyCompleted()V

    .line 105
    :cond_0
    if-eq v0, v1, :cond_1

    .line 106
    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->notify(I)V

    .line 107
    :cond_1
    return v0
.end method

.method public setFireCompletedEvent(Z)V
    .locals 0
    .param p1, "fireCompletedEvent"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/internal/ProgressReportingInputStream;->fireCompletedEvent:Z

    .line 76
    return-void
.end method
