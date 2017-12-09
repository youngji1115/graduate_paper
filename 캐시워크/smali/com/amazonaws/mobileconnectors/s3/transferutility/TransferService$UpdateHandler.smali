.class Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$UpdateHandler;
.super Landroid/os/Handler;
.source "TransferService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;


# direct methods
.method public constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$UpdateHandler;->this$0:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;

    .line 210
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 211
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v1, 0xc8

    .line 215
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$UpdateHandler;->this$0:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;

    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->access$000(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 218
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$UpdateHandler;->this$0:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->checkTransfers()V

    .line 226
    :goto_0
    return-void

    .line 219
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$UpdateHandler;->this$0:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->execCommand(Landroid/content/Intent;)V

    goto :goto_0

    .line 221
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_2

    .line 222
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$UpdateHandler;->this$0:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->pauseAllForNetwork()V

    goto :goto_0

    .line 224
    :cond_2
    const-string v0, "TransferService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
