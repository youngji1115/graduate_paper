.class Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice$5;
.super Ljava/lang/Object;
.source "WristBandDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->searchCharactericByUUid()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;


# direct methods
.method constructor <init>(Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice$5;->this$0:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    .line 1122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1125
    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice$5;->this$0:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    const/4 v5, 0x2

    iput v5, v4, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->BLUETOOTH_LIB_VERSION:I

    .line 1126
    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice$5;->this$0:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    invoke-virtual {v4}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getFmVersionInfo()[B

    move-result-object v0

    .line 1127
    .local v0, "data5":[B
    new-instance v2, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice$5;->this$0:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    invoke-static {v4}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->access$0(Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;-><init>(Landroid/content/Context;[B)V

    .line 1128
    .local v2, "task6":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->getInstance()Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->addTask(Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;)V

    .line 1129
    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice$5;->this$0:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    invoke-virtual {v4}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getPower()[B

    move-result-object v1

    .line 1130
    .local v1, "data7":[B
    new-instance v3, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice$5;->this$0:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    invoke-static {v4}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->access$0(Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;-><init>(Landroid/content/Context;[B)V

    .line 1131
    .local v3, "task7":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->getInstance()Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->addTask(Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;)V

    .line 1132
    return-void
.end method
