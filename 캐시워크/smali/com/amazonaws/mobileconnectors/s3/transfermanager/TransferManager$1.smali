.class Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$1;
.super Ljava/lang/Object;
.source "TransferManager.java"

# interfaces
.implements Lcom/amazonaws/event/ProgressListenerChain$ProgressEventFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;->doDownload(Lcom/amazonaws/services/s3/model/GetObjectRequest;Ljava/io/File;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/TransferStateChangeListener;Lcom/amazonaws/mobileconnectors/s3/transfermanager/internal/S3ProgressListener;Z)Lcom/amazonaws/mobileconnectors/s3/transfermanager/Download;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;

    .prologue
    .line 624
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager$1;->this$0:Lcom/amazonaws/mobileconnectors/s3/transfermanager/TransferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lcom/amazonaws/event/ProgressEvent;)Lcom/amazonaws/event/ProgressEvent;
    .locals 2
    .param p1, "progressEvent"    # Lcom/amazonaws/event/ProgressEvent;

    .prologue
    .line 627
    invoke-virtual {p1}, Lcom/amazonaws/event/ProgressEvent;->getEventCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 631
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amazonaws/event/ProgressEvent;->setEventCode(I)V

    .line 633
    :cond_0
    return-object p1
.end method
