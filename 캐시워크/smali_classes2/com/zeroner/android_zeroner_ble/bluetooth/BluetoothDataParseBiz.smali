.class public Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;
.super Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;
.source "BluetoothDataParseBiz.java"


# static fields
.field private static instance:Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;


# instance fields
.field private final BLE_FILE:Ljava/lang/String;

.field private final ERROR_FILE:Ljava/lang/String;

.field private final LOG_FILE_DIR:Ljava/lang/String;

.field private final NOTIFY_FILE:Ljava/lang/String;

.field private final WRITE_FILE:Ljava/lang/String;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;-><init>()V

    .line 39
    const-string v0, "Zeroner/"

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->LOG_FILE_DIR:Ljava/lang/String;

    .line 40
    const-string v0, "error.txt"

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->ERROR_FILE:Ljava/lang/String;

    .line 41
    const-string v0, "write.txt"

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->WRITE_FILE:Ljava/lang/String;

    .line 42
    const-string v0, "notify.txt"

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->NOTIFY_FILE:Ljava/lang/String;

    .line 43
    const-string v0, "ble.txt"

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->BLE_FILE:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->context:Landroid/content/Context;

    .line 58
    invoke-static {p1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getInstance(Landroid/content/Context;)Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->setCallbackHandler(Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;)V

    .line 59
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    sget-object v0, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->instance:Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;

    invoke-direct {v0, p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->instance:Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;

    .line 52
    :cond_0
    sget-object v0, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->instance:Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;

    return-object v0
.end method


# virtual methods
.method public dataFromWristband(I[B)V
    .locals 54
    .param p1, "dataType"    # I
    .param p2, "datas"    # [B

    .prologue
    .line 78
    sparse-switch p1, :sswitch_data_0

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 81
    :sswitch_0
    const/16 v49, 0x0

    :try_start_0
    aget-byte v49, p2, v49

    const/16 v50, 0x25

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_1

    .line 82
    const/16 v49, 0x5

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v50, v0

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->getNFCData(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 324
    :catch_0
    move-exception v22

    .line 325
    .local v22, "e":Ljava/lang/Exception;
    const/16 v49, 0xff

    const/16 v50, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->getData(ILcom/zeroner/android_zeroner_ble/model/Result;)V

    .line 326
    sget-boolean v49, Lcom/zeroner/android_zeroner_ble/common/Constants$Debug;->DEBUG:Z

    if-eqz v49, :cond_0

    .line 328
    :try_start_1
    new-instance v49, Ljava/lang/StringBuilder;

    const-string v50, "---"

    invoke-direct/range {v49 .. v50}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "---"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-static/range {p2 .. p2}, Lcom/zeroner/android_zeroner_ble/utils/Util;->bytesToString([B)Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "    Thread:"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    const-string v50, "error.txt"

    const-string v51, "Zeroner/"

    invoke-static/range {v49 .. v51}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v38

    .line 331
    .local v38, "s":[Ljava/lang/StackTraceElement;
    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v50, v0

    const/16 v49, 0x0

    :goto_1
    move/from16 v0, v49

    move/from16 v1, v50

    if-ge v0, v1, :cond_0

    aget-object v24, v38, v49

    .line 332
    .local v24, "element":Ljava/lang/StackTraceElement;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v51

    const-string v52, "error.txt"

    const-string v53, "Zeroner/"

    invoke-static/range {v51 .. v53}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 331
    add-int/lit8 v49, v49, 0x1

    goto :goto_1

    .line 84
    .end local v22    # "e":Ljava/lang/Exception;
    .end local v24    # "element":Ljava/lang/StackTraceElement;
    .end local v38    # "s":[Ljava/lang/StackTraceElement;
    :cond_1
    :try_start_2
    new-instance v30, Lcom/zeroner/android_zeroner_ble/model/FMdeviceInfo;

    invoke-direct/range {v30 .. v30}, Lcom/zeroner/android_zeroner_ble/model/FMdeviceInfo;-><init>()V

    .line 85
    .local v30, "info":Lcom/zeroner/android_zeroner_ble/model/FMdeviceInfo;
    const/16 v49, 0x6

    const/16 v50, 0xa

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/Util;->ascii2String([B)Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v30

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/FMdeviceInfo;->setModel(Ljava/lang/String;)V

    .line 86
    const/16 v49, 0xa

    aget-byte v49, p2, v49

    move/from16 v0, v49

    mul-int/lit16 v0, v0, 0xff

    move/from16 v49, v0

    const/16 v50, 0xb

    aget-byte v50, p2, v50

    add-int v49, v49, v50

    move-object/from16 v0, v30

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/FMdeviceInfo;->setOadmode(I)V

    .line 87
    new-instance v49, Ljava/lang/StringBuilder;

    const/16 v50, 0xc

    aget-byte v50, p2, v50

    invoke-static/range {v50 .. v50}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v50

    invoke-direct/range {v49 .. v50}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v50, "."

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const/16 v50, 0xd

    aget-byte v50, p2, v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "."

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const/16 v50, 0xe

    aget-byte v50, p2, v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "."

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    const/16 v50, 0xf

    aget-byte v50, p2, v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v30

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/FMdeviceInfo;->setSwversion(Ljava/lang/String;)V

    .line 88
    const/16 v49, 0xc

    const/16 v50, 0x10

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToIntForVersion([B)I

    move-result v49

    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v50, v0

    move-object/from16 v0, v30

    move-wide/from16 v1, v50

    invoke-virtual {v0, v1, v2}, Lcom/zeroner/android_zeroner_ble/model/FMdeviceInfo;->setIntSwversion(J)V

    .line 89
    const/16 v49, 0x10

    const/16 v50, 0x16

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v30

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/FMdeviceInfo;->setBleAddr(Ljava/lang/String;)V

    .line 90
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->getData(ILcom/zeroner/android_zeroner_ble/model/Result;)V

    goto/16 :goto_0

    .line 94
    .end local v30    # "info":Lcom/zeroner/android_zeroner_ble/model/FMdeviceInfo;
    :sswitch_1
    const/16 v49, 0x4

    const/16 v50, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v36

    .line 95
    .local v36, "power":I
    new-instance v34, Lcom/zeroner/android_zeroner_ble/model/Power;

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/Power;-><init>(I)V

    .line 96
    .local v34, "p":Lcom/zeroner/android_zeroner_ble/model/Power;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->getData(ILcom/zeroner/android_zeroner_ble/model/Result;)V

    goto/16 :goto_0

    .line 99
    .end local v34    # "p":Lcom/zeroner/android_zeroner_ble/model/Power;
    .end local v36    # "power":I
    :sswitch_2
    new-instance v14, Lcom/zeroner/android_zeroner_ble/model/Alerm;

    invoke-direct {v14}, Lcom/zeroner/android_zeroner_ble/model/Alerm;-><init>()V

    .line 100
    .local v14, "alarm":Lcom/zeroner/android_zeroner_ble/model/Alerm;
    const/16 v49, 0x3

    aget-byte v49, p2, v49

    const/16 v50, 0x4

    move/from16 v0, v49

    move/from16 v1, v50

    if-eq v0, v1, :cond_3

    .line 101
    const/16 v49, 0x4

    const/16 v50, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    move/from16 v0, v49

    invoke-virtual {v14, v0}, Lcom/zeroner/android_zeroner_ble/model/Alerm;->setId(I)V

    .line 102
    const/16 v49, 0x5

    const/16 v50, 0x6

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    move/from16 v0, v49

    invoke-virtual {v14, v0}, Lcom/zeroner/android_zeroner_ble/model/Alerm;->setFlag(I)V

    .line 103
    const/16 v49, 0x6

    const/16 v50, 0x7

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    move/from16 v0, v49

    invoke-virtual {v14, v0}, Lcom/zeroner/android_zeroner_ble/model/Alerm;->setRepeat(I)V

    .line 104
    const/16 v49, 0x7

    const/16 v50, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    move/from16 v0, v49

    invoke-virtual {v14, v0}, Lcom/zeroner/android_zeroner_ble/model/Alerm;->setHour(I)V

    .line 105
    const/16 v49, 0x8

    const/16 v50, 0x9

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    move/from16 v0, v49

    invoke-virtual {v14, v0}, Lcom/zeroner/android_zeroner_ble/model/Alerm;->setMin(I)V

    .line 114
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->getData(ILcom/zeroner/android_zeroner_ble/model/Result;)V

    goto/16 :goto_0

    .line 106
    :cond_3
    const/16 v49, 0x3

    aget-byte v49, p2, v49

    const/16 v50, 0x4

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_2

    .line 108
    const/16 v49, 0x0

    move/from16 v0, v49

    invoke-virtual {v14, v0}, Lcom/zeroner/android_zeroner_ble/model/Alerm;->setId(I)V

    .line 109
    const/16 v49, 0x4

    const/16 v50, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    move/from16 v0, v49

    invoke-virtual {v14, v0}, Lcom/zeroner/android_zeroner_ble/model/Alerm;->setFlag(I)V

    .line 110
    const/16 v49, 0x5

    const/16 v50, 0x6

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    move/from16 v0, v49

    invoke-virtual {v14, v0}, Lcom/zeroner/android_zeroner_ble/model/Alerm;->setRepeat(I)V

    .line 111
    const/16 v49, 0x6

    const/16 v50, 0x7

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    move/from16 v0, v49

    invoke-virtual {v14, v0}, Lcom/zeroner/android_zeroner_ble/model/Alerm;->setHour(I)V

    .line 112
    const/16 v49, 0x7

    const/16 v50, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    move/from16 v0, v49

    invoke-virtual {v14, v0}, Lcom/zeroner/android_zeroner_ble/model/Alerm;->setMin(I)V

    goto :goto_2

    .line 117
    .end local v14    # "alarm":Lcom/zeroner/android_zeroner_ble/model/Alerm;
    :sswitch_3
    new-instance v46, Lcom/zeroner/android_zeroner_ble/model/UserInfo;

    invoke-direct/range {v46 .. v46}, Lcom/zeroner/android_zeroner_ble/model/UserInfo;-><init>()V

    .line 118
    .local v46, "user":Lcom/zeroner/android_zeroner_ble/model/UserInfo;
    const/16 v49, 0x4

    const/16 v50, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    move-object/from16 v0, v46

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/UserInfo;->setHeight(I)V

    .line 119
    const/16 v49, 0x5

    const/16 v50, 0x6

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    move-object/from16 v0, v46

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/UserInfo;->setWeight(I)V

    .line 120
    const/16 v49, 0x6

    const/16 v50, 0x7

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    move-object/from16 v0, v46

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/UserInfo;->setGender(I)V

    .line 121
    const/16 v49, 0x7

    const/16 v50, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    move-object/from16 v0, v46

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/UserInfo;->setAge(I)V

    .line 122
    const/16 v49, 0x8

    const/16 v50, 0xa

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    move-object/from16 v0, v46

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/UserInfo;->setTarget(I)V

    .line 123
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->getData(ILcom/zeroner/android_zeroner_ble/model/Result;)V

    goto/16 :goto_0

    .line 127
    .end local v46    # "user":Lcom/zeroner/android_zeroner_ble/model/UserInfo;
    :sswitch_4
    const/16 v49, 0x4

    const/16 v50, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v17

    .line 128
    .local v17, "code":I
    new-instance v33, Lcom/zeroner/android_zeroner_ble/model/KeyModel;

    move-object/from16 v0, v33

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/KeyModel;-><init>(I)V

    .line 129
    .local v33, "model":Lcom/zeroner/android_zeroner_ble/model/KeyModel;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->getData(ILcom/zeroner/android_zeroner_ble/model/Result;)V

    goto/16 :goto_0

    .line 132
    .end local v17    # "code":I
    .end local v33    # "model":Lcom/zeroner/android_zeroner_ble/model/KeyModel;
    :sswitch_5
    new-instance v35, Lcom/zeroner/android_zeroner_ble/model/HeartRateParams;

    invoke-direct/range {v35 .. v35}, Lcom/zeroner/android_zeroner_ble/model/HeartRateParams;-><init>()V

    .line 133
    .local v35, "params":Lcom/zeroner/android_zeroner_ble/model/HeartRateParams;
    const/16 v49, 0x4

    const/16 v50, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    move-object/from16 v0, v35

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/HeartRateParams;->setHeartrateExist(I)V

    .line 134
    const/16 v49, 0x5

    const/16 v50, 0x6

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    move-object/from16 v0, v35

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/HeartRateParams;->setStrong(I)V

    .line 135
    const/16 v49, 0x6

    const/16 v50, 0x7

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    move-object/from16 v0, v35

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/HeartRateParams;->setTime(I)V

    .line 136
    const/16 v49, 0x7

    const/16 v50, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    move-object/from16 v0, v35

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/HeartRateParams;->setStatue(I)V

    .line 137
    const/16 v49, 0x8

    const/16 v50, 0xa

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToIntForVersion([B)I

    move-result v49

    move-object/from16 v0, v35

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/HeartRateParams;->setVersion(I)V

    .line 138
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->getData(ILcom/zeroner/android_zeroner_ble/model/Result;)V

    goto/16 :goto_0

    .line 142
    .end local v35    # "params":Lcom/zeroner/android_zeroner_ble/model/HeartRateParams;
    :sswitch_6
    new-instance v28, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;

    invoke-direct/range {v28 .. v28}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;-><init>()V

    .line 145
    .local v28, "hoursData":Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v49, v0

    const/16 v50, 0x6

    move/from16 v0, v49

    move/from16 v1, v50

    if-lt v0, v1, :cond_4

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v49, v0

    const/16 v50, 0xa

    move/from16 v0, v49

    move/from16 v1, v50

    if-ge v0, v1, :cond_5

    .line 146
    :cond_4
    new-instance v49, Ljava/lang/StringBuilder;

    const-string v50, "53datas.length"

    invoke-direct/range {v49 .. v50}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 147
    const/16 v28, 0x0

    .line 181
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->getData(ILcom/zeroner/android_zeroner_ble/model/Result;)V

    goto/16 :goto_0

    .line 150
    :cond_5
    const/16 v49, 0x6

    const/16 v50, 0x7

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    move/from16 v0, v49

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v48, v0

    .line 152
    .local v48, "y":I
    const/16 v49, 0x7

    const/16 v50, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    add-int/lit8 v31, v49, 0x1

    .line 154
    .local v31, "m":I
    const/16 v49, 0x8

    const/16 v50, 0x9

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    add-int/lit8 v19, v49, 0x1

    .line 156
    .local v19, "d":I
    const/16 v49, 0x9

    const/16 v50, 0xa

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v27

    .line 158
    .local v27, "hour":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    .line 159
    .local v15, "c":Ljava/util/Calendar;
    add-int/lit8 v49, v31, -0x1

    move/from16 v0, v48

    move/from16 v1, v49

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 160
    const/16 v49, 0x3

    move/from16 v0, v49

    invoke-virtual {v15, v0}, Ljava/util/Calendar;->get(I)I

    move-result v47

    .line 162
    .local v47, "week":I
    move/from16 v0, v48

    add-int/lit16 v0, v0, -0x7d0

    move/from16 v49, v0

    const/16 v50, 0xff

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_6

    add-int/lit8 v49, v31, -0x1

    const/16 v50, 0xff

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_6

    add-int/lit8 v49, v19, -0x1

    const/16 v50, 0xff

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_6

    .line 163
    const/16 v49, 0xff

    move-object/from16 v0, v28

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->setYear(I)V

    .line 164
    const/16 v49, 0xff

    move-object/from16 v0, v28

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->setMonth(I)V

    .line 165
    const/16 v49, 0xff

    move-object/from16 v0, v28

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->setDay(I)V

    .line 171
    :goto_4
    move-object/from16 v0, v28

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->setWeek(I)V

    .line 172
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->setHours(I)Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;

    .line 173
    const/16 v49, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->set_uploaded(I)V

    .line 174
    mul-int v49, v48, v31

    mul-int/lit8 v50, v19, 0x19

    add-int v49, v49, v50

    add-int v49, v49, v27

    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v50, v0

    invoke-virtual/range {v28 .. v28}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->getUid()J

    move-result-wide v52

    add-long v50, v50, v52

    move-object/from16 v0, v28

    move-wide/from16 v1, v50

    invoke-virtual {v0, v1, v2}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->setTime_stamp(J)V

    .line 175
    const/16 v49, 0x3c

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v45, v0

    .line 176
    .local v45, "time":[Ljava/lang/Integer;
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_5
    const/16 v49, 0x3c

    move/from16 v0, v29

    move/from16 v1, v49

    if-lt v0, v1, :cond_7

    .line 179
    move-object/from16 v0, v28

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->setDetail_data([Ljava/lang/Integer;)V

    goto/16 :goto_3

    .line 167
    .end local v29    # "i":I
    .end local v45    # "time":[Ljava/lang/Integer;
    :cond_6
    move-object/from16 v0, v28

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->setYear(I)V

    .line 168
    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->setMonth(I)V

    .line 169
    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->setDay(I)V

    goto :goto_4

    .line 177
    .restart local v29    # "i":I
    .restart local v45    # "time":[Ljava/lang/Integer;
    :cond_7
    add-int/lit8 v49, v29, 0xa

    add-int/lit8 v50, v29, 0xb

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    aput-object v49, v45, v29

    .line 176
    add-int/lit8 v29, v29, 0x1

    goto :goto_5

    .line 188
    .end local v15    # "c":Ljava/util/Calendar;
    .end local v19    # "d":I
    .end local v27    # "hour":I
    .end local v28    # "hoursData":Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;
    .end local v29    # "i":I
    .end local v31    # "m":I
    .end local v45    # "time":[Ljava/lang/Integer;
    .end local v47    # "week":I
    .end local v48    # "y":I
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->context:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-static {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->parse([BLandroid/content/Context;)Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;

    move-result-object v21

    .line 189
    .local v21, "detial":Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;
    new-instance v49, Ljava/lang/StringBuilder;

    const-string v50, "\u5fc3\u7387\u6570\u636e"

    invoke-direct/range {v49 .. v50}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 192
    const/16 v49, 0x6

    const/16 v50, 0x7

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    move/from16 v0, v49

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v48, v0

    .line 194
    .restart local v48    # "y":I
    const/16 v49, 0x7

    const/16 v50, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    add-int/lit8 v31, v49, 0x1

    .line 196
    .restart local v31    # "m":I
    const/16 v49, 0x8

    const/16 v50, 0x9

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    add-int/lit8 v19, v49, 0x1

    .line 198
    .restart local v19    # "d":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    .line 199
    .restart local v15    # "c":Ljava/util/Calendar;
    add-int/lit8 v49, v31, -0x1

    move/from16 v0, v48

    move/from16 v1, v49

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 200
    const/16 v49, 0x3

    move/from16 v0, v49

    invoke-virtual {v15, v0}, Ljava/util/Calendar;->get(I)I

    move-result v47

    .line 202
    .restart local v47    # "week":I
    move/from16 v0, v48

    add-int/lit16 v0, v0, -0x7d0

    move/from16 v49, v0

    const/16 v50, 0xff

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_8

    add-int/lit8 v49, v31, -0x1

    const/16 v50, 0xff

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_8

    add-int/lit8 v49, v19, -0x1

    const/16 v50, 0xff

    move/from16 v0, v49

    move/from16 v1, v50

    if-eq v0, v1, :cond_0

    .line 205
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->getData(ILcom/zeroner/android_zeroner_ble/model/Result;)V

    goto/16 :goto_0

    .line 214
    .end local v15    # "c":Ljava/util/Calendar;
    .end local v19    # "d":I
    .end local v21    # "detial":Lcom/zeroner/android_zeroner_ble/model/HeartRateDetial;
    .end local v31    # "m":I
    .end local v47    # "week":I
    .end local v48    # "y":I
    :sswitch_8
    const/16 v49, 0x9

    aget-byte v49, p2, v49

    if-nez v49, :cond_9

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->context:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-static {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;->parse([BLandroid/content/Context;)Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;

    move-result-object v42

    .line 216
    .local v42, "sleepEntity":Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->getData(ILcom/zeroner/android_zeroner_ble/model/Result;)V

    goto/16 :goto_0

    .line 217
    .end local v42    # "sleepEntity":Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;
    :cond_9
    const/16 v49, 0x9

    aget-byte v49, p2, v49

    const/16 v50, 0xff

    move/from16 v0, v49

    move/from16 v1, v50

    if-eq v0, v1, :cond_0

    .line 221
    const/16 v49, 0x6

    const/16 v50, 0x7

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    move/from16 v0, v49

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v48, v0

    .line 223
    .restart local v48    # "y":I
    const/16 v49, 0x7

    const/16 v50, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    add-int/lit8 v31, v49, 0x1

    .line 225
    .restart local v31    # "m":I
    const/16 v49, 0x8

    const/16 v50, 0x9

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    add-int/lit8 v19, v49, 0x1

    .line 227
    .restart local v19    # "d":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    .line 228
    .restart local v15    # "c":Ljava/util/Calendar;
    add-int/lit8 v49, v31, -0x1

    move/from16 v0, v48

    move/from16 v1, v49

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 229
    const/16 v49, 0x7

    move/from16 v0, v49

    invoke-virtual {v15, v0}, Ljava/util/Calendar;->get(I)I

    move-result v29

    .line 230
    .restart local v29    # "i":I
    const/16 v26, 0x2710

    .line 231
    .local v26, "goal":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->context:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;->parse([BLandroid/content/Context;I)Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;

    move-result-object v25

    .line 232
    .local v25, "entity":Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->getData(ILcom/zeroner/android_zeroner_ble/model/Result;)V

    goto/16 :goto_0

    .line 236
    .end local v15    # "c":Ljava/util/Calendar;
    .end local v19    # "d":I
    .end local v25    # "entity":Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;
    .end local v26    # "goal":I
    .end local v29    # "i":I
    .end local v31    # "m":I
    .end local v48    # "y":I
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->context:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-static {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->parse([BLandroid/content/Context;)Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;

    move-result-object v18

    .line 237
    .local v18, "currData":Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->getData(ILcom/zeroner/android_zeroner_ble/model/Result;)V

    goto/16 :goto_0

    .line 240
    .end local v18    # "currData":Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->context:Landroid/content/Context;

    move-object/from16 v49, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-static {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/SportType;->parse([BLandroid/content/Context;)Lcom/zeroner/android_zeroner_ble/model/SportType;

    move-result-object v44

    .line 241
    .local v44, "suportType":Lcom/zeroner/android_zeroner_ble/model/SportType;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->getData(ILcom/zeroner/android_zeroner_ble/model/Result;)V

    goto/16 :goto_0

    .line 244
    .end local v44    # "suportType":Lcom/zeroner/android_zeroner_ble/model/SportType;
    :sswitch_b
    const/16 v49, 0x4

    const/16 v50, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v43

    .line 246
    .local v43, "success":I
    new-instance v37, Lcom/zeroner/android_zeroner_ble/model/ScheduleResult;

    invoke-direct/range {v37 .. v37}, Lcom/zeroner/android_zeroner_ble/model/ScheduleResult;-><init>()V

    .line 247
    .local v37, "result":Lcom/zeroner/android_zeroner_ble/model/ScheduleResult;
    move-object/from16 v0, v37

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/ScheduleResult;->setResult(I)V

    .line 248
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->getData(ILcom/zeroner/android_zeroner_ble/model/Result;)V

    goto/16 :goto_0

    .line 252
    .end local v37    # "result":Lcom/zeroner/android_zeroner_ble/model/ScheduleResult;
    .end local v43    # "success":I
    :sswitch_c
    const/16 v49, 0x4

    const/16 v50, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v32

    .line 254
    .local v32, "max":I
    const/16 v49, 0x5

    const/16 v50, 0x6

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v20

    .line 256
    .local v20, "daymax":I
    const/16 v49, 0x6

    const/16 v50, 0x7

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v16

    .line 257
    .local v16, "can":I
    new-instance v39, Lcom/zeroner/android_zeroner_ble/model/ScheduleResult;

    move-object/from16 v0, v39

    move/from16 v1, v32

    move/from16 v2, v20

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/zeroner/android_zeroner_ble/model/ScheduleResult;-><init>(III)V

    .line 258
    .local v39, "sche":Lcom/zeroner/android_zeroner_ble/model/ScheduleResult;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->getData(ILcom/zeroner/android_zeroner_ble/model/Result;)V

    goto/16 :goto_0

    .line 262
    .end local v16    # "can":I
    .end local v20    # "daymax":I
    .end local v32    # "max":I
    .end local v39    # "sche":Lcom/zeroner/android_zeroner_ble/model/ScheduleResult;
    :sswitch_d
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v49, v0

    const/16 v50, 0xf

    move/from16 v0, v49

    move/from16 v1, v50

    if-ge v0, v1, :cond_a

    .line 263
    const/16 v49, 0x4

    const/16 v50, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v5

    .line 264
    .local v5, "light":I
    const/16 v49, 0x5

    const/16 v50, 0x6

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v6

    .line 265
    .local v6, "gesture":I
    const/16 v49, 0x6

    const/16 v50, 0x7

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v7

    .line 266
    .local v7, "unit":I
    const/16 v49, 0x7

    const/16 v50, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v8

    .line 267
    .local v8, "is24Hour":I
    const/16 v49, 0x8

    const/16 v50, 0x9

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v9

    .line 268
    .local v9, "autoSleep":I
    const/16 v49, 0xa

    const/16 v50, 0xb

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v10

    .line 269
    .local v10, "backLightSt":I
    const/16 v49, 0xb

    const/16 v50, 0xc

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v11

    .line 270
    .local v11, "backLightEt":I
    new-instance v4, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;

    invoke-direct/range {v4 .. v11}, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;-><init>(IIIIIII)V

    .line 283
    .local v4, "setting":Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->getData(ILcom/zeroner/android_zeroner_ble/model/Result;)V

    goto/16 :goto_0

    .line 272
    .end local v4    # "setting":Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;
    .end local v5    # "light":I
    .end local v6    # "gesture":I
    .end local v7    # "unit":I
    .end local v8    # "is24Hour":I
    .end local v9    # "autoSleep":I
    .end local v10    # "backLightSt":I
    .end local v11    # "backLightEt":I
    :cond_a
    const/16 v49, 0x4

    const/16 v50, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v5

    .line 273
    .restart local v5    # "light":I
    const/16 v49, 0x5

    const/16 v50, 0x6

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v6

    .line 274
    .restart local v6    # "gesture":I
    const/16 v49, 0x6

    const/16 v50, 0x7

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v7

    .line 275
    .restart local v7    # "unit":I
    const/16 v49, 0x7

    const/16 v50, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v8

    .line 276
    .restart local v8    # "is24Hour":I
    const/16 v49, 0x8

    const/16 v50, 0x9

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v9

    .line 277
    .restart local v9    # "autoSleep":I
    const/16 v49, 0xa

    const/16 v50, 0xb

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v10

    .line 278
    .restart local v10    # "backLightSt":I
    const/16 v49, 0xb

    const/16 v50, 0xc

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v11

    .line 279
    .restart local v11    # "backLightEt":I
    const/16 v49, 0xc

    const/16 v50, 0xd

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v12

    .line 280
    .local v12, "screen":I
    const/16 v49, 0xd

    const/16 v50, 0xe

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v13

    .line 281
    .local v13, "language":I
    new-instance v4, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;

    invoke-direct/range {v4 .. v13}, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;-><init>(IIIIIIIII)V

    .restart local v4    # "setting":Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;
    goto/16 :goto_6

    .line 287
    .end local v4    # "setting":Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;
    .end local v5    # "light":I
    .end local v6    # "gesture":I
    .end local v7    # "unit":I
    .end local v8    # "is24Hour":I
    .end local v9    # "autoSleep":I
    .end local v10    # "backLightSt":I
    .end local v11    # "backLightEt":I
    .end local v12    # "screen":I
    .end local v13    # "language":I
    :sswitch_e
    const/16 v30, 0x0

    .line 288
    .local v30, "info":Lcom/zeroner/android_zeroner_ble/model/QuietModeInfo;
    const/16 v49, 0x4

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v50, v0

    move/from16 v0, v49

    move/from16 v1, v50

    if-gt v0, v1, :cond_b

    const/16 v49, 0x8

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v50, v0

    move/from16 v0, v49

    move/from16 v1, v50

    if-le v0, v1, :cond_c

    .line 289
    :cond_b
    new-instance v49, Ljava/lang/StringBuilder;

    const-string v50, "06\u6570\u636e\uff1a"

    invoke-direct/range {v49 .. v50}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 298
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->getData(ILcom/zeroner/android_zeroner_ble/model/Result;)V

    goto/16 :goto_0

    .line 291
    :cond_c
    new-instance v30, Lcom/zeroner/android_zeroner_ble/model/QuietModeInfo;

    .end local v30    # "info":Lcom/zeroner/android_zeroner_ble/model/QuietModeInfo;
    invoke-direct/range {v30 .. v30}, Lcom/zeroner/android_zeroner_ble/model/QuietModeInfo;-><init>()V

    .line 292
    .restart local v30    # "info":Lcom/zeroner/android_zeroner_ble/model/QuietModeInfo;
    const/16 v49, 0x4

    const/16 v50, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    move-object/from16 v0, v30

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/QuietModeInfo;->setOpened(I)V

    .line 293
    const/16 v49, 0x5

    const/16 v50, 0x6

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    move-object/from16 v0, v30

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/QuietModeInfo;->setStartHour(I)V

    .line 294
    const/16 v49, 0x6

    const/16 v50, 0x7

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    move-object/from16 v0, v30

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/QuietModeInfo;->setStartMin(I)V

    .line 295
    const/16 v49, 0x7

    const/16 v50, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    move-object/from16 v0, v30

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/QuietModeInfo;->setEndHour(I)V

    .line 296
    const/16 v49, 0x8

    const/16 v50, 0x9

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    move-object/from16 v0, v30

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/QuietModeInfo;->setEndMin(I)V

    goto/16 :goto_7

    .line 303
    .end local v30    # "info":Lcom/zeroner/android_zeroner_ble/model/QuietModeInfo;
    :sswitch_f
    const/16 v41, 0x0

    .line 304
    .local v41, "sedentaryInfo":Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo;
    new-instance v41, Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo;

    .end local v41    # "sedentaryInfo":Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo;
    invoke-direct/range {v41 .. v41}, Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo;-><init>()V

    .line 305
    .restart local v41    # "sedentaryInfo":Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo;
    const/16 v29, 0x0

    .restart local v29    # "i":I
    :goto_8
    sget v49, Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo;->CALLBACK_ITEM_COUNT:I

    move/from16 v0, v29

    move/from16 v1, v49

    if-lt v0, v1, :cond_d

    .line 314
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->getData(ILcom/zeroner/android_zeroner_ble/model/Result;)V

    goto/16 :goto_0

    .line 306
    :cond_d
    new-instance v40, Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo$Sedentary;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct/range {v40 .. v41}, Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo$Sedentary;-><init>(Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo;)V

    .line 307
    .local v40, "sedentary":Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo$Sedentary;
    mul-int/lit8 v49, v29, 0x6

    add-int/lit8 v49, v49, 0x4

    mul-int/lit8 v50, v29, 0x6

    add-int/lit8 v50, v50, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    move-object/from16 v0, v40

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo$Sedentary;->setRepeat(I)V

    .line 308
    mul-int/lit8 v49, v29, 0x6

    add-int/lit8 v49, v49, 0x5

    mul-int/lit8 v50, v29, 0x6

    add-int/lit8 v50, v50, 0x6

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    move-object/from16 v0, v40

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo$Sedentary;->setStart_hour(I)V

    .line 309
    mul-int/lit8 v49, v29, 0x6

    add-int/lit8 v49, v49, 0x6

    mul-int/lit8 v50, v29, 0x6

    add-int/lit8 v50, v50, 0x7

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    move-object/from16 v0, v40

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo$Sedentary;->setEnd_hour(I)V

    .line 310
    mul-int/lit8 v49, v29, 0x6

    add-int/lit8 v49, v49, 0x7

    mul-int/lit8 v50, v29, 0x6

    add-int/lit8 v50, v50, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    mul-int/lit8 v49, v49, 0x5

    move-object/from16 v0, v40

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo$Sedentary;->setDuration(I)V

    .line 311
    mul-int/lit8 v49, v29, 0x6

    add-int/lit8 v49, v49, 0x8

    mul-int/lit8 v50, v29, 0x6

    add-int/lit8 v50, v50, 0xa

    move-object/from16 v0, p2

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v49

    invoke-static/range {v49 .. v49}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v49

    move-object/from16 v0, v40

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo$Sedentary;->setWork_counts(I)V

    .line 312
    invoke-virtual/range {v41 .. v41}, Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo;->getList()Ljava/util/List;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_8

    .line 318
    .end local v29    # "i":I
    .end local v40    # "sedentary":Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo$Sedentary;
    .end local v41    # "sedentaryInfo":Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo;
    :sswitch_10
    const/16 v49, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->getData(ILcom/zeroner/android_zeroner_ble/model/Result;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 335
    .restart local v22    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v23

    .line 336
    .local v23, "e1":Ljava/lang/Exception;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 78
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_e
        0x15 -> :sswitch_2
        0x17 -> :sswitch_f
        0x19 -> :sswitch_d
        0x1a -> :sswitch_a
        0x1d -> :sswitch_b
        0x1e -> :sswitch_c
        0x21 -> :sswitch_3
        0x28 -> :sswitch_8
        0x29 -> :sswitch_9
        0x40 -> :sswitch_4
        0x50 -> :sswitch_5
        0x51 -> :sswitch_7
        0x53 -> :sswitch_6
        0xff -> :sswitch_10
    .end sparse-switch
.end method

.method public discoveredServices(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;->discoveredServices(I)V

    .line 72
    return-void
.end method

.method public getData(ILcom/zeroner/android_zeroner_ble/model/Result;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "result"    # Lcom/zeroner/android_zeroner_ble/model/Result;

    .prologue
    .line 63
    return-void
.end method

.method public getNFCData(I[B)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "datas"    # [B

    .prologue
    .line 67
    return-void
.end method
