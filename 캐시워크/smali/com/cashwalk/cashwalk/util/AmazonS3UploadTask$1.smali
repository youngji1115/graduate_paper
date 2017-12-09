.class Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask$1;
.super Ljava/lang/Object;
.source "AmazonS3UploadTask.java"

# interfaces
.implements Lcom/amazonaws/services/s3/model/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask$1;->this$0:Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public progressChanged(Lcom/amazonaws/services/s3/model/ProgressEvent;)V
    .locals 5
    .param p1, "evt"    # Lcom/amazonaws/services/s3/model/ProgressEvent;

    .prologue
    .line 56
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ProgressEvent;->getEventCode()I

    move-result v1

    .line 57
    .local v1, "evtCode":I
    sparse-switch v1, :sswitch_data_0

    .line 74
    :goto_0
    return-void

    .line 59
    :sswitch_0
    const-string v3, "AWS S3 FILE UPLOAD COMPLETED!"

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 61
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 62
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "filename"

    iget-object v4, p0, Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask$1;->this$0:Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;->access$000(Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 66
    iget-object v3, p0, Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask$1;->this$0:Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;->access$100(Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 70
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :sswitch_1
    const-string v3, "AWS S3 FILE UPLOAD ERROR: 8"

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/Utils;->LOG(Ljava/lang/String;)V

    .line 71
    iget-object v3, p0, Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask$1;->this$0:Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;->access$100(Lcom/cashwalk/cashwalk/util/AmazonS3UploadTask;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 57
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method
