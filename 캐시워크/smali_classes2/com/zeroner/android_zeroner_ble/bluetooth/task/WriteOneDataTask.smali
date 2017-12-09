.class public Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
.super Ljava/lang/Object;
.source "WriteOneDataTask.java"

# interfaces
.implements Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;


# instance fields
.field private context:Landroid/content/Context;

.field private datas:[B

.field private flag:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;->flag:Z

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[B)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "datas"    # [B

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;->flag:Z

    .line 16
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;->context:Landroid/content/Context;

    .line 17
    if-nez p2, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;->datas:[B

    .line 22
    :goto_0
    return-void

    .line 20
    :cond_0
    iput-object p2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;->datas:[B

    goto :goto_0
.end method


# virtual methods
.method public getDatas()[B
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;->datas:[B

    return-object v0
.end method

.method public isFlag()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;->flag:Z

    return v0
.end method

.method public setFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;->flag:Z

    .line 45
    return-void
.end method

.method public task()V
    .locals 4

    .prologue
    .line 25
    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;->datas:[B

    array-length v1, v1

    if-nez v1, :cond_0

    .line 36
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-boolean v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;->flag:Z

    if-eqz v1, :cond_1

    .line 30
    const-wide/16 v2, 0xf0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getInstance(Landroid/content/Context;)Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;->datas:[B

    invoke-virtual {v1, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeDataToWristBand([B)V

    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
