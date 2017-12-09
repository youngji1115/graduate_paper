.class public Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;
.super Landroid/os/Handler;
.source "CallbackHandler.java"


# static fields
.field public static final CHARACTIC_FLAG:I = 0x2

.field public static final CONNECT_FLAG:I = 0x3

.field public static final DATA_FLAG:I = 0x4

.field public static final HEART_RATE_FLAG:I = 0x5

.field public static final SCAN_FLAG:I = 0x1

.field public static final SERVICESDISCOVERED:I = 0x6


# instance fields
.field private final BLE_FILE:Ljava/lang/String;

.field private final ERROR_FILE:Ljava/lang/String;

.field private final LOG_FILE_DIR:Ljava/lang/String;

.field private final NOTIFY_FILE:Ljava/lang/String;

.field private final WRITE_FILE:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 25
    const-string v0, "Zeroner/"

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;->LOG_FILE_DIR:Ljava/lang/String;

    .line 26
    const-string v0, "error.txt"

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;->ERROR_FILE:Ljava/lang/String;

    .line 27
    const-string v0, "write.txt"

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;->WRITE_FILE:Ljava/lang/String;

    .line 28
    const-string v0, "notify.txt"

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;->NOTIFY_FILE:Ljava/lang/String;

    .line 29
    const-string v0, "ble.txt"

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;->BLE_FILE:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public connectStatue(Z)V
    .locals 0
    .param p1, "isConnect"    # Z

    .prologue
    .line 36
    return-void
.end method

.method public dataFromWristband(I[B)V
    .locals 0
    .param p1, "dataType"    # I
    .param p2, "datas"    # [B

    .prologue
    .line 38
    return-void
.end method

.method public discoveredServices(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 42
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 48
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 50
    :pswitch_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    .line 51
    .local v6, "objs":[Ljava/lang/Object;
    const/4 v8, 0x0

    aget-object v8, v6, v8

    check-cast v8, Lcom/zeroner/android_zeroner_ble/model/WristBand;

    invoke-virtual {p0, v8}, Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;->onWristBandFindNewAgreement(Lcom/zeroner/android_zeroner_ble/model/WristBand;)V

    goto :goto_0

    .line 54
    .end local v6    # "objs":[Ljava/lang/Object;
    :pswitch_1
    invoke-virtual {p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;->onCharacteristicWriteData()V

    goto :goto_0

    .line 57
    :pswitch_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    .line 58
    .restart local v6    # "objs":[Ljava/lang/Object;
    const/4 v8, 0x0

    aget-object v8, v6, v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {p0, v8}, Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;->connectStatue(Z)V

    goto :goto_0

    .line 61
    .end local v6    # "objs":[Ljava/lang/Object;
    :pswitch_3
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    .line 62
    .restart local v6    # "objs":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 63
    .local v1, "dataType":B
    const/4 v2, 0x0

    .line 66
    .local v2, "datas":[B
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, v6, v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    .line 67
    const/4 v8, 0x1

    aget-object v8, v6, v8

    move-object v0, v8

    check-cast v0, [B

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;->dataFromWristband(I[B)V

    goto :goto_0

    .line 68
    :catch_0
    move-exception v3

    .line 69
    .local v3, "e":Ljava/lang/ClassCastException;
    sget-boolean v8, Lcom/zeroner/android_zeroner_ble/common/Constants$Debug;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 71
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Thread:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "error.txt"

    const-string v10, "Zeroner/"

    invoke-static {v8, v9, v10}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v3}, Ljava/lang/ClassCastException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    .line 74
    .local v7, "s":[Ljava/lang/StackTraceElement;
    array-length v9, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v8, 0x0

    :goto_2
    if-lt v8, v9, :cond_1

    .line 85
    .end local v7    # "s":[Ljava/lang/StackTraceElement;
    :cond_0
    :goto_3
    const/4 v8, 0x0

    aget-object v8, v6, v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v8, 0x1

    aget-object v8, v6, v8

    check-cast v8, [B

    invoke-virtual {p0, v9, v8}, Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;->dataFromWristband(I[B)V

    goto :goto_1

    .line 74
    .restart local v7    # "s":[Ljava/lang/StackTraceElement;
    :cond_1
    :try_start_2
    aget-object v5, v7, v8

    .line 75
    .local v5, "element":Ljava/lang/StackTraceElement;
    const-string v10, "BLE/"

    new-instance v11, Ljava/lang/StringBuilder;

    new-instance v12, Lcom/zeroner/android_zeroner_ble/model/DateUtil;

    invoke-direct {v12}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;-><init>()V

    invoke-virtual {v12}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->getYyyyMMddDate()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "error.txt"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 76
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\n"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/zeroner/android_zeroner_ble/utils/Util;->StringTOInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    .line 75
    invoke-static {v10, v11, v12}, Lcom/zeroner/android_zeroner_ble/utils/Util;->write2SDFromInput(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/File;

    .line 78
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "error.txt"

    const-string v12, "Zeroner/"

    invoke-static {v10, v11, v12}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 74
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 81
    .end local v5    # "element":Ljava/lang/StackTraceElement;
    .end local v7    # "s":[Ljava/lang/StackTraceElement;
    :catch_1
    move-exception v4

    .line 82
    .local v4, "e1":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 91
    .end local v1    # "dataType":B
    .end local v2    # "datas":[B
    .end local v3    # "e":Ljava/lang/ClassCastException;
    .end local v4    # "e1":Ljava/lang/Exception;
    .end local v6    # "objs":[Ljava/lang/Object;
    :pswitch_4
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    .line 92
    .restart local v6    # "objs":[Ljava/lang/Object;
    const/4 v8, 0x0

    aget-object v8, v6, v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v8, 0x1

    aget-object v8, v6, v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v9, v8}, Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;->heartTotalAndCur(II)V

    goto/16 :goto_0

    .line 95
    .end local v6    # "objs":[Ljava/lang/Object;
    :pswitch_5
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    .line 96
    .restart local v6    # "objs":[Ljava/lang/Object;
    const/4 v8, 0x0

    aget-object v8, v6, v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;->discoveredServices(I)V

    goto/16 :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public heartTotalAndCur(II)V
    .locals 0
    .param p1, "total"    # I
    .param p2, "curr"    # I

    .prologue
    .line 40
    return-void
.end method

.method public onCharacteristicWriteData()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public onWristBandFindNewAgreement(Lcom/zeroner/android_zeroner_ble/model/WristBand;)V
    .locals 0
    .param p1, "dev"    # Lcom/zeroner/android_zeroner_ble/model/WristBand;

    .prologue
    .line 32
    return-void
.end method
