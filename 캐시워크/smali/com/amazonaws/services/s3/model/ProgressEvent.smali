.class public Lcom/amazonaws/services/s3/model/ProgressEvent;
.super Lcom/amazonaws/event/ProgressEvent;
.source "ProgressEvent.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "bytesTransferred"    # I

    .prologue
    .line 29
    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 30
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0
    .param p1, "eventCode"    # I
    .param p2, "bytesTransferred"    # J

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/event/ProgressEvent;-><init>(IJ)V

    .line 34
    return-void
.end method


# virtual methods
.method public getBytesTransfered()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/ProgressEvent;->getBytesTransferred()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public setBytesTransfered(I)V
    .locals 2
    .param p1, "bytesTransferred"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 41
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/amazonaws/services/s3/model/ProgressEvent;->setBytesTransferred(J)V

    .line 42
    return-void
.end method
