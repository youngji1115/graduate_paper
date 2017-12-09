.class public Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;
.super Landroid/app/Service;
.source "TransferService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$UpdateHandler;,
        Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;
    }
.end annotation


# static fields
.field static final INTENT_ACTION_TRANSFER_ADD:Ljava/lang/String; = "add_transfer"

.field static final INTENT_ACTION_TRANSFER_CANCEL:Ljava/lang/String; = "cancel_transfer"

.field static final INTENT_ACTION_TRANSFER_PAUSE:Ljava/lang/String; = "pause_transfer"

.field static final INTENT_ACTION_TRANSFER_RESUME:Ljava/lang/String; = "resume_transfer"

.field static final INTENT_BUNDLE_S3_REFERENCE_KEY:Ljava/lang/String; = "s3_reference_key"

.field static final INTENT_BUNDLE_TRANSFER_ID:Ljava/lang/String; = "id"

.field private static final MINUTE_IN_MILLIS:I = 0xea60

.field static final MSG_CHECK:I = 0xc8

.field static final MSG_DISCONNECT:I = 0x12c

.field static final MSG_EXEC:I = 0x64

.field private static final TAG:Ljava/lang/String; = "TransferService"


# instance fields
.field private dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

.field private handlerThread:Landroid/os/HandlerThread;

.field private isFirst:Z

.field private volatile lastActiveTime:J

.field private networkInfoReceiver:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

.field private s3:Lcom/amazonaws/services/s3/AmazonS3;

.field private shouldScan:Z

.field private volatile startId:I

.field private updateHandler:Landroid/os/Handler;

.field updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 88
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->shouldScan:Z

    .line 92
    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->isFirst:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private isActive()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 327
    iget-boolean v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->shouldScan:Z

    if-eqz v2, :cond_1

    .line 335
    :cond_0
    :goto_0
    return v1

    .line 330
    :cond_1
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->getTransfers()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 331
    .local v0, "transfer":Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 335
    .end local v0    # "transfer":Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->lastActiveTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private removeCompletedTransfers()V
    .locals 6

    .prologue
    .line 342
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->getTransfers()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 344
    .local v2, "transfer":Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;
    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    iget-object v5, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->state:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v4, v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 350
    iget v4, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 353
    .end local v2    # "transfer":Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 354
    .local v0, "id":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->removeTransfer(I)V

    goto :goto_1

    .line 356
    .end local v0    # "id":Ljava/lang/Integer;
    :cond_2
    return-void
.end method


# virtual methods
.method checkTransfers()V
    .locals 4

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->shouldScan:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->networkInfoReceiver:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->loadTransfersFromDB()V

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->shouldScan:Z

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->removeCompletedTransfers()V

    .line 242
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->lastActiveTime:J

    .line 245
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updateHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 253
    :goto_0
    return-void

    .line 250
    :cond_1
    const-string v0, "TransferService"

    const-string v1, "Stop self"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->startId:I

    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->stopSelf(I)V

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 426
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    .line 441
    :goto_0
    return-void

    .line 430
    :cond_0
    const-string/jumbo v2, "start id: %d\n"

    new-array v3, v9, [Ljava/lang/Object;

    iget v4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->startId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 431
    const-string v2, "network status: %s\n"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->networkInfoReceiver:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

    invoke-virtual {v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;->isNetworkConnected()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 432
    const-string v2, "lastActiveTime: %s, shouldScan: %s\n"

    new-array v3, v10, [Ljava/lang/Object;

    new-instance v4, Ljava/util/Date;

    iget-wide v6, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->lastActiveTime:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    aput-object v4, v3, v8

    iget-boolean v4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->shouldScan:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 433
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->getTransfers()Ljava/util/Map;

    move-result-object v1

    .line 434
    .local v1, "transfers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;>;"
    const-string v2, "# of active transfers: %d\n"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 435
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 436
    .local v0, "transfer":Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;
    const-string v3, "bucket: %s, key: %s, status: %s, total size: %d, current: %d\n"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bucketName:Ljava/lang/String;

    aput-object v5, v4, v8

    iget-object v5, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->key:Ljava/lang/String;

    aput-object v5, v4, v9

    iget-object v5, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->state:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    aput-object v5, v4, v10

    const/4 v5, 0x3

    iget-wide v6, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bytesTotal:J

    .line 437
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-wide v6, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bytesCurrent:J

    .line 438
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 436
    invoke-virtual {p2, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_1

    .line 440
    .end local v0    # "transfer":Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    goto/16 :goto_0
.end method

.method execCommand(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->lastActiveTime:J

    .line 264
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "action":Ljava/lang/String;
    const-string v3, "id"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 267
    .local v1, "id":I
    if-nez v1, :cond_1

    .line 268
    const-string v3, "TransferService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    const-string v3, "add_transfer"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 273
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v3, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->getTransfer(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 274
    const-string v3, "TransferService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transfer has already been added: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 280
    :cond_2
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v3, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->getTransferById(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    move-result-object v2

    .line 281
    .local v2, "transfer":Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;
    if-eqz v2, :cond_3

    .line 282
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v3, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->addTransfer(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)V

    .line 283
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->networkInfoReceiver:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->start(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;)Z

    goto :goto_0

    .line 285
    :cond_3
    const-string v3, "TransferService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find transfer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 288
    .end local v2    # "transfer":Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;
    :cond_4
    const-string v3, "pause_transfer"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 289
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v3, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->getTransfer(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    move-result-object v2

    .line 290
    .restart local v2    # "transfer":Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;
    if-nez v2, :cond_5

    .line 291
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v3, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->getTransferById(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    move-result-object v2

    .line 293
    :cond_5
    if-eqz v2, :cond_0

    .line 294
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v2, v3, v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->pause(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;)Z

    goto :goto_0

    .line 296
    .end local v2    # "transfer":Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;
    :cond_6
    const-string v3, "resume_transfer"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 297
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v3, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->getTransfer(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    move-result-object v2

    .line 298
    .restart local v2    # "transfer":Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;
    if-nez v2, :cond_7

    .line 299
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v3, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->getTransferById(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    move-result-object v2

    .line 300
    if-eqz v2, :cond_8

    .line 301
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v3, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->addTransfer(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)V

    .line 306
    :cond_7
    :goto_1
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->networkInfoReceiver:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->start(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;)Z

    goto/16 :goto_0

    .line 303
    :cond_8
    const-string v3, "TransferService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find transfer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 307
    .end local v2    # "transfer":Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;
    :cond_9
    const-string v3, "cancel_transfer"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 308
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v3, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->getTransfer(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    move-result-object v2

    .line 309
    .restart local v2    # "transfer":Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;
    if-nez v2, :cond_a

    .line 310
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {v3, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->getTransferById(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    move-result-object v2

    .line 312
    :cond_a
    if-eqz v2, :cond_0

    .line 313
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v2, v3, v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->cancel(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;)Z

    goto/16 :goto_0

    .line 316
    .end local v2    # "transfer":Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;
    :cond_b
    const-string v3, "TransferService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method loadTransfersFromDB()V
    .locals 10

    .prologue
    .line 365
    const-string v6, "TransferService"

    const-string v7, "Loading transfers from database"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    sget-object v7, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;->ANY:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    invoke-virtual {v6, v7}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->queryAllTransfersWithType(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;)Landroid/database/Cursor;

    move-result-object v0

    .line 367
    .local v0, "c":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 369
    .local v1, "count":I
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 370
    const-string v6, "_id"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 371
    .local v2, "id":I
    const-string/jumbo v6, "state"

    .line 372
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 371
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->getState(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    move-result-object v4

    .line 373
    .local v4, "state":Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;
    const-string v6, "part_num"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 375
    .local v3, "partNumber":I
    if-nez v3, :cond_1

    sget-object v6, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v6, v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 376
    invoke-virtual {v6, v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->RESUMED_WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 377
    invoke-virtual {v6, v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    sget-object v6, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->IN_PROGRESS:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 378
    invoke-virtual {v6, v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 379
    :cond_2
    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v6, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->getTransfer(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    move-result-object v6

    if-nez v6, :cond_3

    .line 380
    new-instance v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    invoke-direct {v5, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;-><init>(I)V

    .line 381
    .local v5, "transfer":Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;
    invoke-virtual {v5, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->updateFromDB(Landroid/database/Cursor;)V

    .line 382
    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    iget-object v7, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object v8, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v9, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->networkInfoReceiver:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->start(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 383
    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v6, v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->addTransfer(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)V

    .line 384
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    .end local v5    # "transfer":Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;
    :cond_3
    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v6, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->getTransfer(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    move-result-object v5

    .line 388
    .restart local v5    # "transfer":Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;
    invoke-virtual {v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->isRunning()Z

    move-result v6

    if-nez v6, :cond_0

    .line 389
    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    iget-object v7, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object v8, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v9, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->networkInfoReceiver:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->start(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 395
    .end local v2    # "id":I
    .end local v3    # "partNumber":I
    .end local v4    # "state":Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;
    .end local v5    # "transfer":Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;
    :catchall_0
    move-exception v6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v6

    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 397
    const-string v6, "TransferService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " transfers are loaded from database"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 105
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t bind to TransferService"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 120
    const-string v0, "TransferService"

    const-string v1, "Starting Transfer Service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 123
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->dbUtil:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-direct {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;-><init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;)V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 125
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TransferService-AWSTransferUpdateHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->handlerThread:Landroid/os/HandlerThread;

    .line 126
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 127
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->setHandlerLooper(Landroid/os/Looper;)V

    .line 128
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->networkInfoReceiver:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

    invoke-virtual {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 203
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->closeThreadPool()V

    .line 204
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/S3ClientReference;->clear()V

    .line 205
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 206
    return-void

    .line 196
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v4, 0x2

    .line 170
    iput p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->startId:I

    .line 172
    const-string v1, "s3_reference_key"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "keyForS3Client":Ljava/lang/String;
    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/S3ClientReference;->get(Ljava/lang/String;)Lcom/amazonaws/services/s3/AmazonS3;

    move-result-object v1

    iput-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    .line 174
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    if-nez v1, :cond_1

    .line 175
    const-string v1, "TransferService"

    const-string v2, "TransferService can\'t get s3 client, and it will stop."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0, p3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->stopSelf(I)V

    .line 189
    :cond_0
    :goto_0
    return v4

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updateHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updateHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 181
    iget-boolean v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->isFirst:Z

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->networkInfoReceiver:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 184
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->isFirst:Z

    goto :goto_0
.end method

.method pauseAllForNetwork()V
    .locals 5

    .prologue
    .line 404
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->getTransfers()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 405
    .local v0, "transfer":Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->s3:Lcom/amazonaws/services/s3/AmazonS3;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->pause(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updater:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget v3, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v2, v3, v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateState(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    goto :goto_0

    .line 410
    .end local v0    # "transfer":Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->shouldScan:Z

    .line 411
    return-void
.end method

.method setHandlerLooper(Landroid/os/Looper;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 419
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$UpdateHandler;

    invoke-direct {v0, p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$UpdateHandler;-><init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updateHandler:Landroid/os/Handler;

    .line 420
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->updateHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService;->networkInfoReceiver:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferService$NetworkInfoReceiver;

    .line 421
    return-void
.end method
