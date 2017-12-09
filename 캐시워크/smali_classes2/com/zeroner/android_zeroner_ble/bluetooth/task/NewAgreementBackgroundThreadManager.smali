.class public Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;
.super Ljava/lang/Object;
.source "NewAgreementBackgroundThreadManager.java"


# static fields
.field private static final THREAD_COUNTS:I = 0x1

.field private static instance:Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;


# instance fields
.field private mIndex:I

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

.field private threadArray:[Lcom/zeroner/android_zeroner_ble/bluetooth/task/BackgroundThread;


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v1, 0x0

    iput v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->mIndex:I

    .line 12
    new-instance v1, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;

    invoke-direct {v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;-><init>()V

    iput-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->queue:Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;

    .line 13
    new-array v1, v5, [Lcom/zeroner/android_zeroner_ble/bluetooth/task/BackgroundThread;

    iput-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->threadArray:[Lcom/zeroner/android_zeroner_ble/bluetooth/task/BackgroundThread;

    .line 14
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 19
    return-void

    .line 15
    :cond_0
    iget v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->mIndex:I

    .line 16
    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->threadArray:[Lcom/zeroner/android_zeroner_ble/bluetooth/task/BackgroundThread;

    new-instance v2, Lcom/zeroner/android_zeroner_ble/bluetooth/task/BackgroundThread;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Thread - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->queue:Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;

    invoke-direct {v2, v3, v4}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/BackgroundThread;-><init>(Ljava/lang/String;Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;)V

    aput-object v2, v1, v0

    .line 17
    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->threadArray:[Lcom/zeroner/android_zeroner_ble/bluetooth/task/BackgroundThread;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/BackgroundThread;->start()V

    .line 14
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->instance:Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    invoke-direct {v0}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;-><init>()V

    sput-object v0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->instance:Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    .line 25
    :cond_0
    sget-object v0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->instance:Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addAllTask(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;>;"
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->queue:Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;

    invoke-virtual {v0, p1}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->addAllTail(Ljava/util/List;)V

    .line 34
    return-void
.end method

.method public addTask(Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;)V
    .locals 1
    .param p1, "task"    # Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->queue:Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;

    invoke-virtual {v0, p1}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->addTail(Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public clearQueue()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->queue:Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;

    invoke-virtual {v0}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->clear()V

    .line 42
    return-void
.end method

.method public removeTask()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->queue:Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;

    invoke-virtual {v0}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/Queue;->remove()V

    .line 38
    return-void
.end method
