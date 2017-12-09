.class public Lcom/zeroner/android_zeroner_ble/bluetooth/task/BackgroundThread;
.super Ljava/lang/Thread;
.source "BackgroundThread.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private datas:[B

.field index:I

.field private queue:Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue",
            "<",
            "Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;",
            ">;"
        }
    .end annotation
.end field

.field private timeContinue:J

.field private timeTask:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/BackgroundThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/BackgroundThread;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;)V
    .locals 1
    .param p1, "threadName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue",
            "<",
            "Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p2, "queue":Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;, "Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue<Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;>;"
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/BackgroundThread;->datas:[B

    .line 13
    iput-object p2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/BackgroundThread;->queue:Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;

    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 18
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 19
    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/BackgroundThread;->queue:Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;

    invoke-virtual {v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->getNew()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    .line 20
    .local v0, "task":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/BackgroundThread;->datas:[B

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 21
    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/BackgroundThread;->datas:[B

    invoke-virtual {v0}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;->getDatas()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/BackgroundThread;->timeContinue:J

    .line 23
    iget-wide v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/BackgroundThread;->timeContinue:J

    iget-wide v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/BackgroundThread;->timeTask:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1770

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 24
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->getInstance()Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->removeTask()V

    goto :goto_0

    .line 29
    :cond_1
    if-eqz v0, :cond_2

    .line 30
    sget-object v1, Lcom/zeroner/android_zeroner_ble/bluetooth/task/BackgroundThread;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/BackgroundThread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": task.task()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;->getDatas()[B

    move-result-object v1

    iput-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/BackgroundThread;->datas:[B

    .line 32
    invoke-virtual {v0}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;->task()V

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/BackgroundThread;->timeTask:J

    .line 35
    :cond_2
    sget-object v1, Lcom/zeroner/android_zeroner_ble/bluetooth/task/BackgroundThread;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/BackgroundThread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": task is null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
