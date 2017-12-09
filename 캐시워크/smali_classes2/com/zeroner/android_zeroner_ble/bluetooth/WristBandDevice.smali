.class public Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "WristBandDevice.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# static fields
.field public static final I5PLUS:I = 0x1

.field public static final I5PRO:I = 0x4

.field public static final I6HR:I = 0x7

.field public static final I6PRO:I = 0x5

.field public static final I7:I = 0x3

.field public static final R1:I = 0x6

.field public static final UNKNOW:I = 0x64

.field public static final V6:I = 0x2

.field private static instance:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;


# instance fields
.field private final BLE_FILE:Ljava/lang/String;

.field public BLUETOOTH_LIB_VERSION:I

.field private final ERROR_FILE:Ljava/lang/String;

.field private final LOG_FILE_DIR:Ljava/lang/String;

.field private final NOTIFY_FILE:Ljava/lang/String;

.field private final SCAN_PERIOD:I

.field private final TAG:Ljava/lang/String;

.field private final WRITE_FILE:Ljava/lang/String;

.field private adapter:Landroid/bluetooth/BluetoothAdapter;

.field private bandType:I

.field bytesForQuietMode:[B

.field private callbackHandler:Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;

.field private characteristics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation
.end field

.field private characteristicsHid:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field count1:I

.field count2:I

.field private dataLength:I

.field private datas:[B

.field private gatt:Landroid/bluetooth/BluetoothGatt;

.field private heartrate_flag:Z

.field index:I

.field private isConnected:Z

.field private isDataOver:Z

.field isFirstToGetQuietModeInfo:Z

.field private isScanning:Z

.field lineLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private wristband:Lcom/zeroner/android_zeroner_ble/model/WristBand;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    .line 58
    const-string v0, "Zeroner/"

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->LOG_FILE_DIR:Ljava/lang/String;

    .line 59
    const-string v0, "error.txt"

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->ERROR_FILE:Ljava/lang/String;

    .line 60
    const-string v0, "write.txt"

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->WRITE_FILE:Ljava/lang/String;

    .line 61
    const-string v0, "notify.txt"

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->NOTIFY_FILE:Ljava/lang/String;

    .line 62
    const-string v0, "ble.txt"

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->BLE_FILE:Ljava/lang/String;

    .line 69
    const/16 v0, 0x2710

    iput v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->SCAN_PERIOD:I

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->characteristics:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->characteristicsHid:Ljava/util/List;

    .line 83
    iput-boolean v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isConnected:Z

    .line 85
    iput-boolean v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isScanning:Z

    .line 87
    iput-boolean v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isDataOver:Z

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->datas:[B

    .line 96
    iput v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->BLUETOOTH_LIB_VERSION:I

    .line 98
    iput-boolean v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->heartrate_flag:Z

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->bandType:I

    .line 1178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->lineLists:Ljava/util/ArrayList;

    .line 1221
    iput v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->index:I

    .line 1778
    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->bytesForQuietMode:[B

    .line 1779
    iput-boolean v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isFirstToGetQuietModeInfo:Z

    .line 1841
    iput v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->count1:I

    .line 1842
    iput v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->count2:I

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->mHandler:Landroid/os/Handler;

    .line 121
    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->adapter:Landroid/bluetooth/BluetoothAdapter;

    .line 122
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    .line 123
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    .line 58
    const-string v0, "Zeroner/"

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->LOG_FILE_DIR:Ljava/lang/String;

    .line 59
    const-string v0, "error.txt"

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->ERROR_FILE:Ljava/lang/String;

    .line 60
    const-string v0, "write.txt"

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->WRITE_FILE:Ljava/lang/String;

    .line 61
    const-string v0, "notify.txt"

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->NOTIFY_FILE:Ljava/lang/String;

    .line 62
    const-string v0, "ble.txt"

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->BLE_FILE:Ljava/lang/String;

    .line 69
    const/16 v0, 0x2710

    iput v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->SCAN_PERIOD:I

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->characteristics:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->characteristicsHid:Ljava/util/List;

    .line 83
    iput-boolean v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isConnected:Z

    .line 85
    iput-boolean v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isScanning:Z

    .line 87
    iput-boolean v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isDataOver:Z

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->datas:[B

    .line 96
    iput v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->BLUETOOTH_LIB_VERSION:I

    .line 98
    iput-boolean v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->heartrate_flag:Z

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->bandType:I

    .line 1178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->lineLists:Ljava/util/ArrayList;

    .line 1221
    iput v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->index:I

    .line 1778
    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->bytesForQuietMode:[B

    .line 1779
    iput-boolean v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isFirstToGetQuietModeInfo:Z

    .line 1841
    iput v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->count1:I

    .line 1842
    iput v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->count2:I

    .line 127
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    .line 128
    iput-object p2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->callbackHandler:Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;

    .line 129
    return-void
.end method

.method static synthetic access$0(Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static bracelet_type(Ljava/lang/String;)I
    .locals 2
    .param p0, "deviceName"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x64

    .line 2781
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2799
    :cond_0
    :goto_0
    return v0

    .line 2784
    :cond_1
    const-string v1, "i5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "l01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2785
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 2786
    :cond_3
    const-string v1, "V6"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "l02"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2787
    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    .line 2788
    :cond_5
    const-string v1, "i7"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "l03"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2789
    :cond_6
    const/4 v0, 0x3

    goto :goto_0

    .line 2790
    :cond_7
    const-string v1, "l04"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2791
    const/4 v0, 0x4

    goto :goto_0

    .line 2792
    :cond_8
    const-string v1, "l05"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2793
    const/4 v0, 0x5

    goto :goto_0

    .line 2794
    :cond_9
    const-string v1, "l13"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2795
    const/4 v0, 0x7

    goto :goto_0

    .line 2796
    :cond_a
    const-string v1, "l06"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2797
    const/4 v0, 0x6

    goto :goto_0
.end method

.method static concat([B[B)[B
    .locals 4
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .prologue
    const/4 v3, 0x0

    .line 771
    if-nez p0, :cond_0

    .line 779
    .end local p1    # "b":[B
    :goto_0
    return-object p1

    .line 773
    .restart local p1    # "b":[B
    :cond_0
    if-nez p1, :cond_1

    move-object p1, p0

    .line 774
    goto :goto_0

    .line 776
    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 777
    .local v0, "c":[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 778
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 779
    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    sget-object v0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->instance:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    if-nez v0, :cond_1

    .line 110
    const-class v1, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    monitor-enter v1

    .line 111
    :try_start_0
    sget-object v0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->instance:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    invoke-direct {v0, p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->instance:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    .line 110
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_1
    sget-object v0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->instance:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private int2byte(I)B
    .locals 1
    .param p1, "integer"    # I

    .prologue
    .line 2200
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method private isDevNameNULl([B)Ljava/lang/String;
    .locals 11
    .param p1, "scanReord"    # [B

    .prologue
    .line 244
    const-string v6, "Bracelet-XXXX"

    .line 245
    .local v6, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, p1

    if-lt v2, v8, :cond_1

    .line 275
    .end local v6    # "name":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v6

    .line 246
    .restart local v6    # "name":Ljava/lang/String;
    :cond_1
    aget-byte v5, p1, v2

    .line 247
    .local v5, "len":I
    if-eqz v5, :cond_0

    .line 250
    add-int/lit8 v8, v2, 0x1

    aget-byte v7, p1, v8

    .line 251
    .local v7, "type":I
    add-int/lit8 v8, v5, -0x1

    new-array v0, v8, [B

    .line 252
    .local v0, "bytes":[B
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    add-int/lit8 v8, v5, -0x1

    if-lt v4, v8, :cond_3

    .line 255
    add-int/lit8 v8, v5, -0x1

    new-array v1, v8, [B

    .line 256
    .local v1, "bytes2":[B
    const/4 v3, 0x0

    .line 258
    .local v3, "idx":I
    :cond_2
    add-int/lit8 v8, v5, -0x1

    if-lez v8, :cond_4

    add-int/lit8 v8, v5, -0x1

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_4

    .line 259
    add-int/lit8 v8, v3, 0x1

    aget-byte v8, v0, v8

    aput-byte v8, v1, v3

    .line 260
    add-int/lit8 v8, v3, 0x1

    aget-byte v9, v0, v3

    aput-byte v9, v1, v8

    .line 261
    add-int/lit8 v3, v3, 0x2

    .line 267
    :goto_3
    array-length v8, v0

    .line 257
    if-lt v3, v8, :cond_2

    .line 269
    add-int/2addr v2, v5

    .line 270
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "len="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "type:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " hex:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->bytesToString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 271
    const/16 v8, 0x9

    if-ne v7, v8, :cond_5

    .line 272
    invoke-static {v1}, Lcom/zeroner/android_zeroner_ble/utils/Util;->ascii2String([B)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 253
    .end local v1    # "bytes2":[B
    .end local v3    # "idx":I
    :cond_3
    add-int/lit8 v8, v2, 0x2

    add-int/2addr v8, v4

    aget-byte v8, p1, v8

    aput-byte v8, v0, v4

    .line 252
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 263
    .restart local v1    # "bytes2":[B
    .restart local v3    # "idx":I
    :cond_4
    aget-byte v8, v0, v3

    aput-byte v8, v1, v3

    .line 264
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 245
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method private parseData([B)V
    .locals 11
    .param p1, "datas"    # [B

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v5, 0x2

    .line 1224
    array-length v3, p1

    const/4 v4, 0x3

    if-lt v3, v4, :cond_7

    .line 1225
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->callbackHandler:Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;

    if-eqz v3, :cond_0

    .line 1226
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1227
    .local v1, "msg":Landroid/os/Message;
    new-array v3, v5, [Ljava/lang/Object;

    aget-byte v4, p1, v5

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v9

    aput-object p1, v3, v10

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1228
    iput v8, v1, Landroid/os/Message;->what:I

    .line 1229
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->callbackHandler:Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;

    invoke-virtual {v3, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1231
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    aget-byte v3, p1, v5

    const/16 v4, 0x52

    if-ne v3, v4, :cond_7

    .line 1232
    iget v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->index:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->index:I

    .line 1233
    iget v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->index:I

    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->lineLists:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1234
    invoke-virtual {p0, v5}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->openOrcloseHeartRate(I)[B

    move-result-object v0

    .line 1235
    .local v0, "data5":[B
    new-instance v2, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;-><init>(Landroid/content/Context;[B)V

    .line 1236
    .local v2, "task5":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->getInstance()Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->addTask(Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;)V

    .line 1237
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->callbackHandler:Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;

    if-eqz v3, :cond_1

    .line 1238
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1239
    .restart local v1    # "msg":Landroid/os/Message;
    new-array v3, v5, [Ljava/lang/Object;

    aget-byte v4, p1, v5

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v9

    aput-object p1, v3, v10

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1240
    iput v8, v1, Landroid/os/Message;->what:I

    .line 1241
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->callbackHandler:Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;

    invoke-virtual {v3, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1243
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice$6;

    invoke-direct {v4, p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice$6;-><init>(Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;)V

    .line 1249
    const-wide/16 v6, 0x3a98

    .line 1243
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1251
    .end local v0    # "data5":[B
    .end local v2    # "task5":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    :cond_2
    iget v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->index:I

    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->lineLists:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1252
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->lineLists:Ljava/util/ArrayList;

    iget v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->index:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->updateHeartRate(Ljava/lang/String;)V

    .line 1254
    :cond_3
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->callbackHandler:Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;

    if-eqz v3, :cond_4

    .line 1255
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1256
    .restart local v1    # "msg":Landroid/os/Message;
    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->lineLists:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    iget v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1257
    iput v8, v1, Landroid/os/Message;->what:I

    .line 1258
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->callbackHandler:Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;

    invoke-virtual {v3, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1260
    .end local v1    # "msg":Landroid/os/Message;
    :cond_4
    aget-byte v3, p1, v8

    if-eq v3, v5, :cond_5

    aget-byte v3, p1, v8

    if-eqz v3, :cond_5

    aget-byte v3, p1, v8

    const/4 v4, 0x6

    if-ne v3, v4, :cond_6

    .line 1261
    :cond_5
    iput-boolean v9, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->heartrate_flag:Z

    .line 1263
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "============>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1266
    :cond_7
    return-void
.end method

.method private searchCharactericByUUidNFC(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "characteristics2":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    const/4 v8, 0x1

    .line 1062
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1082
    return-void

    .line 1062
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 1063
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    sget-object v3, Lcom/zeroner/android_zeroner_ble/common/Constants;->BAND_CHARACTERISTIC_NFC_INDICATE:Ljava/util/UUID;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1064
    invoke-virtual {p0, v0, v8}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v1

    .line 1065
    .local v1, "flag":Z
    if-eqz v1, :cond_2

    .line 1066
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice$3;

    invoke-direct {v4, p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice$3;-><init>(Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;)V

    .line 1072
    const-wide/16 v6, 0x1388

    .line 1066
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1074
    :cond_2
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u7279\u5f81\uff08UUID:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\uff09\u8bbe\u7f6e\u6210notify\u5931\u8d25"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    sget-boolean v3, Lcom/zeroner/android_zeroner_ble/common/Constants$Debug;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 1076
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7279\u5f81\uff08UUID:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff09\u8bbe\u7f6e\u6210notify\u5931\u8d25"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ble.txt"

    const-string v5, "Zeroner/"

    invoke-static {v3, v4, v5}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    :cond_3
    invoke-virtual {p0, v0, v8}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    goto :goto_0
.end method

.method private whenDisconnecte()V
    .locals 1

    .prologue
    .line 1000
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isConnected:Z

    .line 1001
    const/4 v0, -0x1

    iput v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->bandType:I

    .line 1002
    return-void
.end method

.method private writeAlertFontLibrary(Landroid/content/Context;ILjava/lang/String;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "displayName"    # Ljava/lang/String;

    .prologue
    .line 436
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .local v4, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move/from16 v0, p2

    int-to-byte v11, v0

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    const/4 v11, -0x1

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    :try_start_0
    const-string v11, "utf-8"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 442
    .local v2, "cc":[B
    array-length v12, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v11, 0x0

    :goto_0
    if-lt v11, v12, :cond_0

    .line 448
    .end local v2    # "cc":[B
    :goto_1
    const/4 v11, 0x3

    const/4 v12, 0x1

    invoke-virtual {p0, v11, v12}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v6

    .line 449
    .local v6, "header":B
    const/4 v11, 0x1

    invoke-virtual {p0, v11, v6, v4}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandDataByte(ZBLjava/util/ArrayList;)[B

    move-result-object v3

    .line 450
    .local v3, "data":[B
    const/4 v10, 0x0

    .line 452
    .local v10, "writeData":[B
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .local v9, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    array-length v11, v3

    if-lt v7, v11, :cond_1

    .line 464
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->getInstance()Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->addAllTask(Ljava/util/List;)V

    .line 465
    return-void

    .line 442
    .end local v3    # "data":[B
    .end local v6    # "header":B
    .end local v7    # "i":I
    .end local v9    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;>;"
    .end local v10    # "writeData":[B
    .restart local v2    # "cc":[B
    :cond_0
    :try_start_1
    aget-byte v1, v2, v11

    .line 443
    .local v1, "b":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 442
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 445
    .end local v1    # "b":B
    .end local v2    # "cc":[B
    :catch_0
    move-exception v5

    .line 446
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 454
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "data":[B
    .restart local v6    # "header":B
    .restart local v7    # "i":I
    .restart local v9    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;>;"
    .restart local v10    # "writeData":[B
    :cond_1
    add-int/lit8 v11, v7, 0x14

    array-length v12, v3

    if-le v11, v12, :cond_2

    .line 455
    array-length v11, v3

    invoke-static {v3, v7, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    .line 456
    new-instance v8, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    invoke-direct {v8, p1, v10}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;-><init>(Landroid/content/Context;[B)V

    .line 457
    .local v8, "task":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    :goto_3
    add-int/lit8 v7, v7, 0x14

    goto :goto_2

    .line 459
    .end local v8    # "task":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    :cond_2
    add-int/lit8 v11, v7, 0x14

    invoke-static {v3, v7, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    .line 460
    new-instance v8, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    invoke-direct {v8, p1, v10}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;-><init>(Landroid/content/Context;[B)V

    .line 461
    .restart local v8    # "task":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method


# virtual methods
.method public bytesToString([B)Ljava/lang/String;
    .locals 8
    .param p1, "bytes"    # [B

    .prologue
    const/4 v3, 0x0

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 280
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    array-length v4, p1

    move v2, v3

    :goto_0
    if-lt v2, v4, :cond_0

    .line 282
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 280
    :cond_0
    aget-byte v0, p1, v2

    .line 281
    .local v0, "byteChar":B
    const-string v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public clearAllSchedule()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 2042
    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    const-string v5, "clearAllSchedule"

    invoke-static {v4, v5}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2044
    .local v2, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-array v0, v6, [B

    .line 2045
    .local v0, "code":[B
    const/4 v4, 0x0

    aput-byte v6, v0, v4

    .line 2046
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2048
    const/16 v4, 0xd

    invoke-virtual {p0, v6, v4}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v4

    invoke-virtual {p0, v6, v4, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandData(ZBLjava/util/ArrayList;)[B

    move-result-object v1

    .line 2051
    .local v1, "data":[B
    new-instance v3, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;-><init>(Landroid/content/Context;[B)V

    .line 2052
    .local v3, "task":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->getInstance()Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->addTask(Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;)V

    .line 2053
    return-void
.end method

.method public clearQuietMode()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x0

    .line 1765
    invoke-virtual {p0, v6, v7}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v2

    .line 1766
    .local v2, "header":B
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1767
    .local v1, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v7, :cond_0

    .line 1770
    const/4 v5, 0x1

    invoke-virtual {p0, v5, v2, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandDataByte(ZBLjava/util/ArrayList;)[B

    move-result-object v0

    .line 1771
    .local v0, "bytes":[B
    new-instance v4, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    iget-object v5, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    invoke-direct {v4, v5, v0}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;-><init>(Landroid/content/Context;[B)V

    .line 1772
    .local v4, "task":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->getInstance()Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->addTask(Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;)V

    .line 1773
    return-void

    .line 1768
    .end local v0    # "bytes":[B
    .end local v4    # "task":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    :cond_0
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1767
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public closeAlarm(I)V
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2098
    const/4 v4, 0x6

    new-array v0, v4, [B

    .line 2099
    .local v0, "data":[B
    int-to-byte v4, p1

    aput-byte v4, v0, v5

    .line 2100
    aput-byte v5, v0, v6

    .line 2101
    const/4 v4, 0x2

    aput-byte v5, v0, v4

    .line 2102
    const/4 v4, 0x3

    aput-byte v5, v0, v4

    .line 2103
    aput-byte v5, v0, v7

    .line 2104
    const/4 v4, 0x5

    aput-byte v5, v0, v4

    .line 2106
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2107
    .local v2, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2109
    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getInstance(Landroid/content/Context;)Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    move-result-object v4

    invoke-virtual {p0, v6, v7}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v5

    invoke-virtual {v4, v6, v5, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandData(ZBLjava/util/ArrayList;)[B

    move-result-object v1

    .line 2111
    .local v1, "datadd":[B
    new-instance v3, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;-><init>(Landroid/content/Context;[B)V

    .line 2112
    .local v3, "task":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->getInstance()Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->addTask(Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;)V

    .line 2114
    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    const-string v5, "closeAlarm"

    invoke-static {v4, v5}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2115
    return-void
.end method

.method public closeSchedule(IIIII)V
    .locals 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 2058
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2060
    .local v2, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v4, 0x6

    new-array v0, v4, [B

    .line 2061
    .local v0, "code":[B
    const/4 v4, 0x0

    aput-byte v5, v0, v4

    .line 2063
    add-int/lit16 v4, p1, -0x7d0

    invoke-direct {p0, v4}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->int2byte(I)B

    move-result v4

    aput-byte v4, v0, v6

    .line 2064
    add-int/lit8 v4, p2, -0x1

    invoke-direct {p0, v4}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->int2byte(I)B

    move-result v4

    aput-byte v4, v0, v5

    .line 2065
    const/4 v4, 0x3

    add-int/lit8 v5, p3, -0x1

    invoke-direct {p0, v5}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->int2byte(I)B

    move-result v5

    aput-byte v5, v0, v4

    .line 2066
    const/4 v4, 0x4

    invoke-direct {p0, p4}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->int2byte(I)B

    move-result v5

    aput-byte v5, v0, v4

    .line 2067
    const/4 v4, 0x5

    invoke-direct {p0, p5}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->int2byte(I)B

    move-result v5

    aput-byte v5, v0, v4

    .line 2068
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2071
    const/16 v4, 0xd

    invoke-virtual {p0, v6, v4}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v4

    invoke-virtual {p0, v6, v4, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandData(ZBLjava/util/ArrayList;)[B

    move-result-object v1

    .line 2074
    .local v1, "data":[B
    new-instance v3, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;-><init>(Landroid/content/Context;[B)V

    .line 2075
    .local v3, "task":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    const-string v5, "\u5220\u9664 addTask"

    invoke-static {v4, v5}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->getInstance()Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->addTask(Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;)V

    .line 2077
    return-void
.end method

.method public connect()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 313
    :try_start_0
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u65e0\u5730\u5740 CONNECT \u8bbe\u5907:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->wristband:Lcom/zeroner/android_zeroner_ble/model/WristBand;

    invoke-virtual {v5}, Lcom/zeroner/android_zeroner_ble/model/WristBand;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->wristband:Lcom/zeroner/android_zeroner_ble/model/WristBand;

    invoke-virtual {v5}, Lcom/zeroner/android_zeroner_ble/model/WristBand;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    sget-boolean v3, Lcom/zeroner/android_zeroner_ble/common/Constants$Debug;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u65e0\u5730\u5740 CONNECT \u8bbe\u5907:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->wristband:Lcom/zeroner/android_zeroner_ble/model/WristBand;

    invoke-virtual {v4}, Lcom/zeroner/android_zeroner_ble/model/WristBand;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->wristband:Lcom/zeroner/android_zeroner_ble/model/WristBand;

    invoke-virtual {v4}, Lcom/zeroner/android_zeroner_ble/model/WristBand;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ble.txt"

    const-string v5, "Zeroner/"

    invoke-static {v3, v4, v5}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_0
    iget-boolean v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isScanning:Z

    if-eqz v3, :cond_1

    .line 319
    invoke-virtual {p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->stopLeScan()V

    .line 330
    :cond_1
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->adapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->wristband:Lcom/zeroner/android_zeroner_ble/model/WristBand;

    invoke-virtual {v4}, Lcom/zeroner/android_zeroner_ble/model/WristBand;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 331
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v3, "connect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u65e0\u5730\u5740 CONNECT \u8bbe\u5907:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    if-nez v0, :cond_2

    .line 341
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :goto_0
    return v2

    .line 335
    .restart local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, p0}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    iput-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 336
    const-string v3, "info"

    const-string v4, "cnt1"

    invoke-static {v3, v4}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    const/4 v2, 0x1

    goto :goto_0

    .line 339
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :catch_0
    move-exception v1

    .line 340
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public connect(Lcom/zeroner/android_zeroner_ble/model/WristBand;)Z
    .locals 6
    .param p1, "dev"    # Lcom/zeroner/android_zeroner_ble/model/WristBand;

    .prologue
    const/4 v2, 0x0

    .line 352
    :try_start_0
    iget-boolean v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isScanning:Z

    if-eqz v3, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->stopLeScan()V

    .line 356
    :cond_0
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Lcom/zeroner/android_zeroner_ble/model/WristBand;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 358
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_1

    .line 374
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :goto_0
    return v2

    .line 361
    .restart local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->wristband:Lcom/zeroner/android_zeroner_ble/model/WristBand;

    .line 364
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, p0}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    iput-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 365
    const-string v3, "connect"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6307\u5b9aDEVICE CONNECT \u8bbe\u5907:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zeroner/android_zeroner_ble/model/WristBand;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/zeroner/android_zeroner_ble/model/WristBand;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    sget-boolean v3, Lcom/zeroner/android_zeroner_ble/common/Constants$Debug;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6307\u5b9aDEVICE CONNECT \u8bbe\u5907:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zeroner/android_zeroner_ble/model/WristBand;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/zeroner/android_zeroner_ble/model/WristBand;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ble.txt"

    const-string v5, "Zeroner/"

    invoke-static {v3, v4, v5}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_2
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    const/4 v2, 0x1

    goto :goto_0

    .line 372
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :catch_0
    move-exception v1

    .line 373
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public createBond(Ljava/lang/Class;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "btClass"    # Ljava/lang/Class;
    .param p2, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1173
    const-string v2, "createBond"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1174
    .local v0, "createBondMethod":Ljava/lang/reflect/Method;
    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 1175
    .local v1, "returnValue":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method public disconnect()V
    .locals 4

    .prologue
    .line 410
    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    const-string v2, "\u6267\u884cdiscnt"

    invoke-static {v1, v2}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :try_start_0
    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v1, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 418
    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;)Z

    .line 419
    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 420
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 422
    sget-boolean v1, Lcom/zeroner/android_zeroner_ble/common/Constants$Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u65ad\u5f00\u8fde\u63a5:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ble.txt"

    const-string v3, "Zeroner/"

    invoke-static {v1, v2, v3}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public displayNameLength(Ljava/lang/String;)I
    .locals 4
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 752
    const/4 v1, 0x0

    .line 753
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 760
    return v1

    .line 754
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x40

    if-lt v2, v3, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x60

    if-le v2, v3, :cond_2

    .line 755
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 753
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 757
    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_1
.end method

.method public form_Header(II)B
    .locals 2
    .param p1, "grp"    # I
    .param p2, "cmd"    # I

    .prologue
    .line 2617
    int-to-byte v0, p1

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x4

    int-to-byte v1, p2

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method public get3VersionSupportSports()[B
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1359
    const/16 v2, 0xa

    invoke-virtual {p0, v3, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v1

    .line 1360
    .local v1, "header":B
    const/4 v2, 0x0

    invoke-virtual {p0, v3, v1, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandData(ZBLjava/util/ArrayList;)[B

    move-result-object v0

    .line 1361
    .local v0, "data":[B
    return-object v0
.end method

.method public getBLUETOOTH_LIB_VERSION()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->BLUETOOTH_LIB_VERSION:I

    return v0
.end method

.method public getCallbackHandler()Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->callbackHandler:Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;

    return-object v0
.end method

.method public getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 5
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    const/4 v2, 0x0

    .line 791
    :try_start_0
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->characteristics:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v0, v2

    .line 801
    :goto_0
    return-object v0

    .line 791
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 792
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 797
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :catch_0
    move-exception v1

    .line 798
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    .line 799
    goto :goto_0
.end method

.method public getDeviceStateDate()[B
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1672
    const/16 v1, 0x9

    invoke-virtual {p0, v2, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v0

    .line 1673
    .local v0, "header":B
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandData(ZBLjava/util/ArrayList;)[B

    move-result-object v1

    return-object v1
.end method

.method public getFmVersionInfo()[B
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1604
    invoke-virtual {p0, v2, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v1

    .line 1605
    .local v1, "header":B
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandData(ZBLjava/util/ArrayList;)[B

    move-result-object v0

    .line 1606
    .local v0, "data":[B
    return-object v0
.end method

.method public getIsBluetoothState()Z
    .locals 1

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isConnected()Z

    move-result v0

    return v0
.end method

.method public getLeDevice()Lcom/zeroner/android_zeroner_ble/model/WristBand;
    .locals 1

    .prologue
    .line 2762
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->wristband:Lcom/zeroner/android_zeroner_ble/model/WristBand;

    return-object v0
.end method

.method public getPower()[B
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1595
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v1

    .line 1596
    .local v1, "header":B
    const/4 v2, 0x0

    invoke-virtual {p0, v3, v1, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandData(ZBLjava/util/ArrayList;)[B

    move-result-object v0

    .line 1597
    .local v0, "data":[B
    return-object v0
.end method

.method public getQuietModeInfo()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1781
    const/4 v2, 0x6

    invoke-virtual {p0, v5, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v0

    .line 1782
    .local v0, "header":B
    iget-boolean v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isFirstToGetQuietModeInfo:Z

    if-eqz v2, :cond_0

    .line 1783
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->bytesForQuietMode:[B

    const/16 v3, 0x21

    aput-byte v3, v2, v5

    .line 1784
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->bytesForQuietMode:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v4

    .line 1785
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->bytesForQuietMode:[B

    const/4 v3, 0x2

    aput-byte v0, v2, v3

    .line 1786
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->bytesForQuietMode:[B

    const/4 v3, 0x3

    aput-byte v4, v2, v3

    .line 1787
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->bytesForQuietMode:[B

    const/4 v3, 0x4

    aput-byte v4, v2, v3

    .line 1788
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->bytesForQuietMode:[B

    const/4 v3, 0x5

    aput-byte v4, v2, v3

    .line 1789
    iput-boolean v5, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isFirstToGetQuietModeInfo:Z

    .line 1791
    :cond_0
    new-instance v1, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->bytesForQuietMode:[B

    invoke-direct {v1, v2, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;-><init>(Landroid/content/Context;[B)V

    .line 1792
    .local v1, "task":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->getInstance()Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->addTask(Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;)V

    .line 1793
    return-void
.end method

.method public getSportGoles(I)[B
    .locals 5
    .param p1, "week"    # I

    .prologue
    const/4 v4, 0x1

    .line 1380
    const/16 v3, 0xc

    invoke-virtual {p0, v4, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v2

    .line 1381
    .local v2, "header":B
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1382
    .local v1, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    int-to-byte v3, p1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1383
    invoke-virtual {p0, v4, v2, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandDataByte(ZBLjava/util/ArrayList;)[B

    move-result-object v0

    .line 1384
    .local v0, "data":[B
    return-object v0
.end method

.method public inputBuf([B)[B
    .locals 11
    .param p1, "inBuf"    # [B

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 604
    const/16 v2, 0x8

    new-array v1, v2, [B

    .line 605
    .local v1, "outBuf":[B
    const/4 v0, 0x7

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 616
    return-object v1

    .line 606
    :cond_0
    aget-byte v2, v1, v6

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0x80

    rsub-int/lit8 v4, v0, 0x7

    shr-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 607
    aget-byte v2, v1, v7

    aget-byte v3, p1, v0

    and-int/lit8 v3, v3, 0x40

    shl-int/lit8 v3, v3, 0x1

    rsub-int/lit8 v4, v0, 0x7

    shr-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    .line 608
    aget-byte v2, v1, v8

    aget-byte v3, p1, v0

    and-int/lit8 v3, v3, 0x20

    shl-int/lit8 v3, v3, 0x2

    rsub-int/lit8 v4, v0, 0x7

    shr-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v8

    .line 609
    aget-byte v2, v1, v9

    aget-byte v3, p1, v0

    and-int/lit8 v3, v3, 0x10

    shl-int/lit8 v3, v3, 0x3

    rsub-int/lit8 v4, v0, 0x7

    shr-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v9

    .line 610
    aget-byte v2, v1, v10

    aget-byte v3, p1, v0

    and-int/lit8 v3, v3, 0x8

    shl-int/lit8 v3, v3, 0x4

    rsub-int/lit8 v4, v0, 0x7

    shr-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v10

    .line 611
    const/4 v2, 0x5

    const/4 v3, 0x5

    aget-byte v3, v1, v3

    aget-byte v4, p1, v0

    and-int/lit8 v4, v4, 0x4

    shl-int/lit8 v4, v4, 0x5

    rsub-int/lit8 v5, v0, 0x7

    shr-int/2addr v4, v5

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 612
    const/4 v2, 0x6

    const/4 v3, 0x6

    aget-byte v3, v1, v3

    aget-byte v4, p1, v0

    and-int/lit8 v4, v4, 0x2

    shl-int/lit8 v4, v4, 0x6

    rsub-int/lit8 v5, v0, 0x7

    shr-int/2addr v4, v5

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 613
    const/4 v2, 0x7

    const/4 v3, 0x7

    aget-byte v3, v1, v3

    aget-byte v4, p1, v0

    and-int/lit8 v4, v4, 0x1

    shl-int/lit8 v4, v4, 0x7

    rsub-int/lit8 v5, v0, 0x7

    shr-int/2addr v4, v5

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 605
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0
.end method

.method public isConnected()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 292
    :try_start_0
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v2, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v1

    .line 296
    :cond_1
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->characteristics:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    iget-boolean v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isConnected:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isScanning()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isScanning:Z

    return v0
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 12
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v11, 0x5

    const/16 v10, 0x25

    const/4 v9, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1845
    sget-object v6, Lcom/zeroner/android_zeroner_ble/common/Constants;->BAND_CHARACTERISTIC_NEW_NOTIFY:Ljava/util/UUID;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1846
    sget-object v6, Lcom/zeroner/android_zeroner_ble/common/Constants;->BAND_CHARACTERISTIC_NEW_INDICATE:Ljava/util/UUID;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1847
    sget-object v6, Lcom/zeroner/android_zeroner_ble/common/Constants;->BAND_CHARACTERISTIC_NFC_INDICATE:Ljava/util/UUID;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1848
    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    .line 1852
    .local v0, "data":[B
    if-eqz v0, :cond_6

    array-length v6, v0

    if-eqz v6, :cond_6

    .line 1853
    iget-boolean v6, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isDataOver:Z

    if-eqz v6, :cond_8

    .line 1854
    aget-byte v6, v0, v4

    const/16 v7, 0x23

    if-eq v6, v7, :cond_1

    aget-byte v6, v0, v4

    const/16 v7, 0x22

    if-eq v6, v7, :cond_1

    aget-byte v6, v0, v4

    if-ne v6, v10, :cond_3

    .line 1855
    :cond_1
    aget-byte v6, v0, v4

    if-ne v6, v10, :cond_7

    .line 1856
    array-length v6, v0

    if-lt v6, v11, :cond_2

    .line 1857
    invoke-static {v0, v9, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    invoke-static {v6}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v6

    iput v6, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->dataLength:I

    .line 1862
    :cond_2
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u7406\u8bba\u6570\u636e\u7684\u957f\u5ea6--->"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->dataLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1863
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u7406\u8bba\u63a5\u6536\u539f\u59cb\u6570\u636e--->"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->bytesToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1898
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->datas:[B

    invoke-static {v6, v0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->concat([B[B)[B

    move-result-object v6

    iput-object v6, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->datas:[B

    .line 1902
    :try_start_0
    iget-object v6, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->datas:[B

    array-length v1, v6

    .line 1904
    .local v1, "datasize":I
    const/4 v6, 0x0

    aget-byte v6, v0, v6

    if-ne v6, v10, :cond_d

    .line 1905
    add-int/lit8 v6, v1, -0x5

    iget v7, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->dataLength:I

    if-lt v6, v7, :cond_4

    move v4, v5

    .line 1909
    .local v4, "flag":Z
    :cond_4
    :goto_2
    if-eqz v4, :cond_f

    .line 1910
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isDataOver:Z

    .line 1911
    iget-object v6, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->datas:[B

    invoke-direct {p0, v6}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->parseData([B)V

    .line 1912
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u63a5\u6536\u6570\u636e\u957f\u5ea6--->"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->datas:[B

    array-length v7, v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1913
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u63a5\u6536\u539f\u59cb\u6570\u636e--->"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->datas:[B

    invoke-virtual {p0, v7}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->bytesToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1915
    sget-boolean v6, Lcom/zeroner/android_zeroner_ble/common/Constants$Debug;->DEBUG:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v6, :cond_5

    .line 1917
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->datas:[B

    array-length v7, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->datas:[B

    invoke-virtual {p0, v7}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->bytesToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "notify.txt"

    const-string v8, "Zeroner/"

    invoke-static {v6, v7, v8}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1923
    :cond_5
    :goto_3
    const/4 v6, 0x0

    :try_start_2
    new-array v6, v6, [B

    iput-object v6, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->datas:[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1933
    .end local v0    # "data":[B
    .end local v1    # "datasize":I
    .end local v4    # "flag":Z
    :cond_6
    :goto_4
    return-void

    .line 1860
    .restart local v0    # "data":[B
    :cond_7
    aget-byte v6, v0, v9

    iput v6, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->dataLength:I

    goto/16 :goto_0

    .line 1867
    :cond_8
    aget-byte v6, v0, v4

    const/16 v7, 0x22

    if-eq v6, v7, :cond_9

    aget-byte v6, v0, v4

    const/16 v7, 0x23

    if-eq v6, v7, :cond_9

    aget-byte v6, v0, v4

    if-ne v6, v10, :cond_3

    :cond_9
    aget-byte v6, v0, v5

    const/16 v7, 0xff

    if-ne v6, v7, :cond_3

    const/4 v6, 0x2

    aget-byte v6, v0, v6

    const/16 v7, 0xff

    if-eq v6, v7, :cond_3

    .line 1869
    sget-boolean v6, Lcom/zeroner/android_zeroner_ble/common/Constants$Debug;->DEBUG:Z

    if-eqz v6, :cond_a

    .line 1871
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->datas:[B

    array-length v7, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "---\u6389\u5305\u6570\u636e:---"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->datas:[B

    invoke-virtual {p0, v7}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->bytesToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ble.txt"

    const-string v8, "Zeroner/"

    invoke-static {v6, v7, v8}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1877
    :cond_a
    :goto_5
    new-array v6, v9, [B

    iput-object v6, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->datas:[B

    .line 1878
    iget-object v6, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->datas:[B

    const/4 v7, -0x1

    aput-byte v7, v6, v4

    .line 1879
    iget-object v6, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->datas:[B

    const/4 v7, -0x1

    aput-byte v7, v6, v5

    .line 1880
    iget-object v6, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->datas:[B

    const/4 v7, 0x2

    const/4 v8, -0x1

    aput-byte v8, v6, v7

    .line 1881
    iget-object v6, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->datas:[B

    invoke-direct {p0, v6}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->parseData([B)V

    .line 1882
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->datas:[B

    .line 1883
    aget-byte v6, v0, v4

    if-ne v6, v10, :cond_c

    .line 1884
    array-length v6, v0

    if-lt v6, v11, :cond_b

    .line 1885
    invoke-static {v0, v9, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    invoke-static {v6}, Lcom/zeroner/android_zeroner_ble/utils/ByteUtil;->bytesToInt([B)I

    move-result v6

    iput v6, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->dataLength:I

    .line 1890
    :cond_b
    :goto_6
    const-string v6, "\u53d1\u751f\u4e86\u84dd\u7259\u6570\u636e\u6389\u5305\u5f02\u5e38,\u95ee\u9898\u6570\u636e\u5df2\u5254\u9664....."

    invoke-static {v6}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1891
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u7406\u8bba\u6570\u636e\u7684\u957f\u5ea6--->"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->dataLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1892
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u7406\u8bba\u63a5\u6536\u539f\u59cb\u6570\u636e--->"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->bytesToString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->i(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1872
    :catch_0
    move-exception v3

    .line 1873
    .local v3, "e1":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 1888
    .end local v3    # "e1":Ljava/lang/Exception;
    :cond_c
    aget-byte v6, v0, v9

    iput v6, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->dataLength:I

    goto :goto_6

    .line 1907
    .restart local v1    # "datasize":I
    :cond_d
    add-int/lit8 v6, v1, -0x4

    :try_start_4
    iget v7, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->dataLength:I

    if-lt v6, v7, :cond_e

    move v4, v5

    .restart local v4    # "flag":Z
    :cond_e
    goto/16 :goto_2

    .line 1918
    :catch_1
    move-exception v3

    .line 1919
    .restart local v3    # "e1":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    .line 1927
    .end local v1    # "datasize":I
    .end local v3    # "e1":Ljava/lang/Exception;
    .end local v4    # "flag":Z
    :catch_2
    move-exception v2

    .line 1928
    .local v2, "e":Ljava/lang/Exception;
    iput-boolean v5, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isDataOver:Z

    .line 1929
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 1925
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "datasize":I
    .restart local v4    # "flag":Z
    :cond_f
    const/4 v6, 0x0

    :try_start_5
    iput-boolean v6, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isDataOver:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_4
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 2730
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 2741
    :try_start_0
    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    const-string v2, "+++ ON CHARACTERISTIC WRITE +++"

    invoke-static {v1, v2}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2742
    if-nez p3, :cond_1

    .line 2743
    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5199\u5165Characteristic\u6210\u529f\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2744
    sget-boolean v1, Lcom/zeroner/android_zeroner_ble/common/Constants$Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2745
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5199\u5165Characteristic\u6210\u529f\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ble.txt"

    const-string v3, "Zeroner/"

    invoke-static {v1, v2, v3}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2754
    :cond_0
    :goto_0
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->getInstance()Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->removeTask()V

    .line 2759
    :goto_1
    return-void

    .line 2749
    :cond_1
    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5199\u5165Characteristic\u5931\u8d25\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2750
    sget-boolean v1, Lcom/zeroner/android_zeroner_ble/common/Constants$Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2751
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5199\u5165Characteristic\u5931\u8d25\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ble.txt"

    const-string v3, "Zeroner/"

    invoke-static {v1, v2, v3}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2755
    :catch_0
    move-exception v0

    .line 2756
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->getInstance()Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->removeTask()V

    .line 2757
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 11
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 892
    :try_start_0
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "+++ ON CONNECTION STATE CHANGE +++  status:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  newState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    sget-boolean v3, Lcom/zeroner/android_zeroner_ble/common/Constants$Debug;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 894
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "+++ ON CONNECTION STATE CHANGE +++  status:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  newState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ble.txt"

    const-string v5, "Zeroner/"

    invoke-static {v3, v4, v5}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    :cond_0
    if-nez p2, :cond_5

    .line 897
    packed-switch p3, :pswitch_data_0

    .line 948
    :pswitch_0
    invoke-direct {p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->whenDisconnecte()V

    .line 997
    :cond_1
    :goto_0
    return-void

    .line 899
    :pswitch_1
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 901
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->wristband:Lcom/zeroner/android_zeroner_ble/model/WristBand;

    if-eqz v3, :cond_2

    .line 902
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->wristband:Lcom/zeroner/android_zeroner_ble/model/WristBand;

    invoke-virtual {v3}, Lcom/zeroner/android_zeroner_ble/model/WristBand;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->bracelet_type(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->bandType:I

    .line 903
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u73b0\u5728\u8fde\u63a5\u7684\u8bbe\u5907 :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->wristband:Lcom/zeroner/android_zeroner_ble/model/WristBand;

    invoke-virtual {v4}, Lcom/zeroner/android_zeroner_ble/model/WristBand;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 904
    sget-boolean v3, Lcom/zeroner/android_zeroner_ble/common/Constants$Debug;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 905
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u73b0\u5728\u8fde\u63a5\u7684\u8bbe\u5907 :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->wristband:Lcom/zeroner/android_zeroner_ble/model/WristBand;

    invoke-virtual {v4}, Lcom/zeroner/android_zeroner_ble/model/WristBand;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ble.txt"

    const-string v5, "Zeroner/"

    invoke-static {v3, v4, v5}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    :cond_2
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice$2;

    invoke-direct {v4, p0, p1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice$2;-><init>(Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;Landroid/bluetooth/BluetoothGatt;)V

    .line 914
    const-wide/16 v6, 0x7d0

    .line 909
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 915
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isConnected:Z

    .line 916
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isDataOver:Z

    .line 917
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->callbackHandler:Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;

    if-eqz v3, :cond_1

    .line 918
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 919
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 920
    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->what:I

    .line 921
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->callbackHandler:Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;

    invoke-virtual {v3, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 984
    .end local v2    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 985
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->whenDisconnecte()V

    .line 986
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 987
    invoke-virtual {p0, p1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;)Z

    .line 988
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.kunket.healthy.version_v3.ACTION_TIME_SERVICE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 989
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 990
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->callbackHandler:Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;

    if-eqz v3, :cond_1

    .line 991
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 992
    .restart local v2    # "msg":Landroid/os/Message;
    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v8

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 993
    iput v10, v2, Landroid/os/Message;->what:I

    .line 994
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->callbackHandler:Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;

    invoke-virtual {v3, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 925
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "msg":Landroid/os/Message;
    :pswitch_2
    :try_start_1
    const-string v3, "-----\u53d1\u751f\u4e86\u65ad\u8fde------"

    invoke-static {v3}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 926
    sget-boolean v3, Lcom/zeroner/android_zeroner_ble/common/Constants$Debug;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 927
    const-string v3, "-----\u53d1\u751f\u4e86\u65ad\u8fde------"

    const-string v4, "ble.txt"

    const-string v5, "Zeroner/"

    invoke-static {v3, v4, v5}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    :cond_3
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->callbackHandler:Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;

    if-eqz v3, :cond_4

    .line 930
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 931
    .restart local v2    # "msg":Landroid/os/Message;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 932
    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->what:I

    .line 933
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->callbackHandler:Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;

    invoke-virtual {v3, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 935
    .end local v2    # "msg":Landroid/os/Message;
    :cond_4
    invoke-direct {p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->whenDisconnecte()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 937
    if-eqz p1, :cond_1

    .line 940
    :try_start_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 941
    invoke-virtual {p0, p1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 945
    :goto_1
    const/4 v3, 0x1

    :try_start_3
    iput-boolean v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isDataOver:Z

    goto/16 :goto_0

    .line 942
    :catch_1
    move-exception v0

    .line 943
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 951
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    const/16 v3, 0x8

    if-eq p2, v3, :cond_6

    const/16 v3, 0x13

    if-ne p2, v3, :cond_7

    .line 952
    :cond_6
    invoke-direct {p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->whenDisconnecte()V

    .line 953
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isDataOver:Z

    .line 954
    invoke-virtual {p0, p1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;)Z

    .line 955
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 956
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->callbackHandler:Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;

    if-eqz v3, :cond_1

    .line 957
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 958
    .restart local v2    # "msg":Landroid/os/Message;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 959
    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->what:I

    .line 960
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->callbackHandler:Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;

    invoke-virtual {v3, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 962
    .end local v2    # "msg":Landroid/os/Message;
    :cond_7
    const/16 v3, 0x85

    if-ne p2, v3, :cond_8

    .line 963
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 964
    invoke-direct {p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->whenDisconnecte()V

    .line 965
    invoke-virtual {p0, p1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;)Z

    .line 967
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->callbackHandler:Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;

    if-eqz v3, :cond_1

    .line 968
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 969
    .restart local v2    # "msg":Landroid/os/Message;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 970
    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->what:I

    .line 971
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->callbackHandler:Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;

    invoke-virtual {v3, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 974
    .end local v2    # "msg":Landroid/os/Message;
    :cond_8
    invoke-direct {p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->whenDisconnecte()V

    .line 976
    invoke-virtual {p0, p1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;)Z

    .line 977
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->callbackHandler:Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;

    if-eqz v3, :cond_1

    .line 978
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 979
    .restart local v2    # "msg":Landroid/os/Message;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 980
    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->what:I

    .line 981
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->callbackHandler:Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;

    invoke-virtual {v3, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 897
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 213
    :try_start_0
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    const-string v4, "+++ ON LE SCAN +++"

    invoke-static {v3, v4}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u624b\u73af\u8bbe\u5907\uff1a%s\uff08%s\uff09"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    sget-boolean v3, Lcom/zeroner/android_zeroner_ble/common/Constants$Debug;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SCAN-DEVICE:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u624b\u73af\u8bbe\u5907\uff1a%s\uff08%s\uff09"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ble.txt"

    const-string v5, "Zeroner/"

    invoke-static {v3, v4, v5}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 221
    new-instance v2, Lcom/zeroner/android_zeroner_ble/model/WristBand;

    invoke-direct {p0, p3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isDevNameNULl([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, p2}, Lcom/zeroner/android_zeroner_ble/model/WristBand;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 226
    .local v2, "wristband":Lcom/zeroner/android_zeroner_ble/model/WristBand;
    :goto_0
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->callbackHandler:Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;

    if-eqz v3, :cond_1

    .line 227
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 228
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 229
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 230
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->callbackHandler:Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;

    invoke-virtual {v3, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 235
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "wristband":Lcom/zeroner/android_zeroner_ble/model/WristBand;
    :cond_1
    :goto_1
    return-void

    .line 223
    :cond_2
    new-instance v2, Lcom/zeroner/android_zeroner_ble/model/WristBand;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, p2}, Lcom/zeroner/android_zeroner_ble/model/WristBand;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "wristband":Lcom/zeroner/android_zeroner_ble/model/WristBand;
    goto :goto_0

    .line 232
    .end local v2    # "wristband":Lcom/zeroner/android_zeroner_ble/model/WristBand;
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 9
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 1014
    :try_start_0
    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    const-string v5, "+++ ON SERVICES DISCOVERED +++"

    invoke-static {v4, v5}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    sget-boolean v4, Lcom/zeroner/android_zeroner_ble/common/Constants$Debug;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1016
    const-string v4, "+++ ON SERVICES DISCOVERED +++"

    const-string v5, "ble.txt"

    const-string v6, "Zeroner/"

    invoke-static {v4, v5, v6}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    :cond_0
    if-nez p2, :cond_6

    .line 1023
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v3

    .line 1024
    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1050
    .end local v3    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->callbackHandler:Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;

    if-eqz v4, :cond_3

    .line 1051
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 1052
    .local v2, "msg":Landroid/os/Message;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1053
    const/4 v4, 0x6

    iput v4, v2, Landroid/os/Message;->what:I

    .line 1054
    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->callbackHandler:Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;

    invoke-virtual {v4, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1059
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    :goto_2
    return-void

    .line 1024
    .restart local v3    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 1025
    .local v0, "bluetoothGattService":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v5

    sget-object v6, Lcom/zeroner/android_zeroner_ble/common/Constants;->BAND_SERVICE_MAIN_NEW:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1026
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "=======================\u8d70\u65b0\u534f\u8bae============================="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->i(Ljava/lang/String;)V

    .line 1027
    sget-boolean v5, Lcom/zeroner/android_zeroner_ble/common/Constants$Debug;->DEBUG:Z

    if-eqz v5, :cond_5

    .line 1028
    const-string v5, "\u8d70\u65b0\u534f\u8bae"

    const-string v6, "ble.txt"

    const-string v7, "Zeroner/"

    invoke-static {v5, v6, v7}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    :cond_5
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->characteristics:Ljava/util/List;

    .line 1031
    invoke-virtual {p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->searchCharactericByUUid()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1056
    .end local v0    # "bluetoothGattService":Landroid/bluetooth/BluetoothGattService;
    .end local v3    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    :catch_0
    move-exception v1

    .line 1057
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1042
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    const-wide/16 v4, 0x7d0

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 1043
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 1045
    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    const-string v5, "%s\uff1a\uff08%s\uff09\u53d1\u73b0\u5e76\u8fde\u63a5\u670d\u52a1\u5931\u8d25\uff0c\u72b6\u6001%d\uff0c\u6b63\u5728\u91cd\u65b0\u53d1\u73b0\u5e76\u8fde\u63a5..."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->wristband:Lcom/zeroner/android_zeroner_ble/model/WristBand;

    invoke-virtual {v8}, Lcom/zeroner/android_zeroner_ble/model/WristBand;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->wristband:Lcom/zeroner/android_zeroner_ble/model/WristBand;

    invoke-virtual {v8}, Lcom/zeroner/android_zeroner_ble/model/WristBand;->getAddress()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    sget-boolean v4, Lcom/zeroner/android_zeroner_ble/common/Constants$Debug;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 1047
    const-string v4, "%s\uff1a\uff08%s\uff09\u53d1\u73b0\u5e76\u8fde\u63a5\u670d\u52a1\u5931\u8d25\uff0c\u72b6\u6001%d\uff0c\u6b63\u5728\u91cd\u65b0\u53d1\u73b0\u5e76\u8fde\u63a5..."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->wristband:Lcom/zeroner/android_zeroner_ble/model/WristBand;

    invoke-virtual {v7}, Lcom/zeroner/android_zeroner_ble/model/WristBand;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->wristband:Lcom/zeroner/android_zeroner_ble/model/WristBand;

    invoke-virtual {v7}, Lcom/zeroner/android_zeroner_ble/model/WristBand;->getAddress()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ble.txt"

    const-string v6, "Zeroner/"

    invoke-static {v4, v5, v6}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public openOrcloseHeartRate(I)[B
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1504
    if-nez p1, :cond_1

    .line 1505
    iput-boolean v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->heartrate_flag:Z

    .line 1509
    :cond_0
    :goto_0
    const/4 v3, 0x5

    invoke-virtual {p0, v3, v5}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v2

    .line 1510
    .local v2, "header":B
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1511
    .local v1, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    int-to-byte v3, p1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1512
    invoke-virtual {p0, v4, v2, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandDataByte(ZBLjava/util/ArrayList;)[B

    move-result-object v0

    .line 1513
    .local v0, "data":[B
    return-object v0

    .line 1506
    .end local v0    # "data":[B
    .end local v1    # "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "header":B
    :cond_1
    if-ne p1, v5, :cond_0

    .line 1507
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->heartrate_flag:Z

    goto :goto_0
.end method

.method public readCharacteristic(Ljava/util/UUID;)V
    .locals 5
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 851
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 852
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v0, :cond_2

    .line 853
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 855
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8bfb\u53d6\u7279\u5f81\uff08UUID:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff09\u6210\u529f\uff0c\u7b49\u5f85\u56de\u8c03\u54cd\u5e94..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    sget-boolean v2, Lcom/zeroner/android_zeroner_ble/common/Constants$Debug;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 858
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8bfb\u53d6\u7279\u5f81\uff08UUID:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff09\u6210\u529f\uff0c\u7b49\u5f85\u56de\u8c03\u54cd\u5e94..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ble.txt"

    const-string v4, "Zeroner/"

    invoke-static {v2, v3, v4}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_0
    :goto_0
    return-void

    .line 862
    .restart local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_1
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8bfb\u53d6\u5931\u8d25\uff01UUID\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    sget-boolean v2, Lcom/zeroner/android_zeroner_ble/common/Constants$Debug;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 865
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8bfb\u53d6\u5931\u8d25\uff01UUID\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ble.txt"

    const-string v4, "Zeroner/"

    invoke-static {v2, v3, v4}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 876
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :catch_0
    move-exception v1

    .line 877
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 870
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u627e\u4e0d\u5230\uff08UUID"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff09\u7279\u5f81"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    sget-boolean v2, Lcom/zeroner/android_zeroner_ble/common/Constants$Debug;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 873
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u627e\u4e0d\u5230\uff08UUID"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff09\u7279\u5f81"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ble.txt"

    const-string v4, "Zeroner/"

    invoke-static {v2, v3, v4}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public readDialyData()[B
    .locals 4

    .prologue
    .line 2505
    const/4 v2, 0x2

    const/4 v3, 0x7

    invoke-virtual {p0, v2, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v1

    .line 2506
    .local v1, "header":B
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandData(ZBLjava/util/ArrayList;)[B

    move-result-object v0

    .line 2507
    .local v0, "data":[B
    return-object v0
.end method

.method public readPersonalInformation()[B
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1661
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v1

    .line 1662
    .local v1, "header":B
    const/4 v2, 0x0

    invoke-virtual {p0, v3, v1, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandData(ZBLjava/util/ArrayList;)[B

    move-result-object v0

    .line 1663
    .local v0, "data":[B
    return-object v0
.end method

.method public readScheduleInfo()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2082
    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    const-string v5, "readScheduleInfo"

    invoke-static {v4, v5}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2083
    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    const-string v5, "readScheduleInfo isBluetoothState"

    invoke-static {v4, v5}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2084
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2085
    .local v2, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-array v0, v6, [B

    .line 2086
    .local v0, "code":[B
    aput-byte v7, v0, v7

    .line 2087
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2088
    const/16 v4, 0xe

    invoke-virtual {p0, v6, v4}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v4

    invoke-virtual {p0, v6, v4, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandData(ZBLjava/util/ArrayList;)[B

    move-result-object v1

    .line 2089
    .local v1, "data":[B
    new-instance v3, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;-><init>(Landroid/content/Context;[B)V

    .line 2090
    .local v3, "task":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->getInstance()Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->addTask(Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;)V

    .line 2091
    return-void
.end method

.method public readSedentaryReminder()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 722
    const/4 v3, 0x7

    invoke-virtual {p0, v4, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v1

    .line 723
    .local v1, "header":B
    const/4 v3, 0x0

    invoke-virtual {p0, v4, v1, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandData(ZBLjava/util/ArrayList;)[B

    move-result-object v0

    .line 724
    .local v0, "data1":[B
    new-instance v2, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;-><init>(Landroid/content/Context;[B)V

    .line 725
    .local v2, "task":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->getInstance()Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->addTask(Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;)V

    .line 726
    return-void
.end method

.method public readWristBandClock(I)[B
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x1

    .line 1625
    const/4 v3, 0x5

    invoke-virtual {p0, v4, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v2

    .line 1626
    .local v2, "header":B
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1627
    .local v1, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    int-to-byte v3, p1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1628
    invoke-virtual {p0, v4, v2, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandDataByte(ZBLjava/util/ArrayList;)[B

    move-result-object v0

    .line 1629
    .local v0, "data":[B
    return-object v0
.end method

.method public readWristBandTime()[B
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1613
    invoke-virtual {p0, v3, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v1

    .line 1614
    .local v1, "header":B
    const/4 v2, 0x0

    invoke-virtual {p0, v3, v1, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandData(ZBLjava/util/ArrayList;)[B

    move-result-object v0

    .line 1615
    .local v0, "data":[B
    return-object v0
.end method

.method public refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 7
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    const/4 v4, 0x0

    .line 388
    :try_start_0
    const-class v3, Landroid/bluetooth/BluetoothGatt;

    const-string v5, "refresh"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 389
    .local v1, "refresh":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1

    .line 390
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 391
    .local v2, "success":Z
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Refreshing result: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    sget-boolean v3, Lcom/zeroner/android_zeroner_ble/common/Constants$Debug;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 393
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Refreshing result: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ble.txt"

    const-string v6, "Zeroner/"

    invoke-static {v3, v5, v6}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    .end local v1    # "refresh":Ljava/lang/reflect/Method;
    .end local v2    # "success":Z
    :cond_0
    :goto_0
    return v2

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    const-string v5, "An exception occured while refreshing device"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    sget-boolean v3, Lcom/zeroner/android_zeroner_ble/common/Constants$Debug;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 400
    const-string v3, "An exception occured while refreshing device"

    const-string v5, "ble.txt"

    const-string v6, "Zeroner/"

    invoke-static {v3, v5, v6}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v2, v4

    .line 403
    goto :goto_0
.end method

.method public romete([BI)[B
    .locals 9
    .param p1, "buf"    # [B
    .param p2, "type"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 472
    if-ne p2, v4, :cond_0

    .line 473
    const/16 v2, 0x20

    new-array v0, v2, [B

    .line 474
    .local v0, "outbuf":[B
    const/16 v2, 0x8

    new-array v1, v2, [B

    .line 475
    .local v1, "tempBuf":[B
    aget-byte v2, p1, v6

    aput-byte v2, v1, v6

    .line 476
    aget-byte v2, p1, v5

    aput-byte v2, v1, v4

    .line 477
    aget-byte v2, p1, v8

    aput-byte v2, v1, v5

    .line 478
    const/4 v2, 0x6

    aget-byte v2, p1, v2

    aput-byte v2, v1, v7

    .line 479
    const/16 v2, 0x8

    aget-byte v2, p1, v2

    aput-byte v2, v1, v8

    .line 480
    const/4 v2, 0x5

    const/16 v3, 0xa

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 481
    const/4 v2, 0x6

    const/16 v3, 0xc

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 482
    const/4 v2, 0x7

    const/16 v3, 0xe

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 484
    invoke-virtual {p0, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->inputBuf([B)[B

    move-result-object v1

    .line 486
    aget-byte v2, v1, v6

    aput-byte v2, v0, v6

    .line 487
    aget-byte v2, v1, v4

    aput-byte v2, v0, v4

    .line 488
    aget-byte v2, v1, v5

    aput-byte v2, v0, v5

    .line 489
    aget-byte v2, v1, v7

    aput-byte v2, v0, v7

    .line 490
    aget-byte v2, v1, v8

    aput-byte v2, v0, v8

    .line 491
    const/4 v2, 0x5

    const/4 v3, 0x5

    aget-byte v3, v1, v3

    aput-byte v3, v0, v2

    .line 492
    const/4 v2, 0x6

    const/4 v3, 0x6

    aget-byte v3, v1, v3

    aput-byte v3, v0, v2

    .line 493
    const/4 v2, 0x7

    const/4 v3, 0x7

    aget-byte v3, v1, v3

    aput-byte v3, v0, v2

    .line 495
    aget-byte v2, p1, v4

    aput-byte v2, v1, v6

    .line 496
    aget-byte v2, p1, v7

    aput-byte v2, v1, v4

    .line 497
    const/4 v2, 0x5

    aget-byte v2, p1, v2

    aput-byte v2, v1, v5

    .line 498
    const/4 v2, 0x7

    aget-byte v2, p1, v2

    aput-byte v2, v1, v7

    .line 499
    const/16 v2, 0x9

    aget-byte v2, p1, v2

    aput-byte v2, v1, v8

    .line 500
    const/4 v2, 0x5

    const/16 v3, 0xb

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 501
    const/4 v2, 0x6

    const/16 v3, 0xd

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 502
    const/4 v2, 0x7

    const/16 v3, 0xf

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 504
    invoke-virtual {p0, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->inputBuf([B)[B

    move-result-object v1

    .line 505
    const/16 v2, 0x8

    aget-byte v3, v1, v6

    aput-byte v3, v0, v2

    .line 506
    const/16 v2, 0x9

    aget-byte v3, v1, v4

    aput-byte v3, v0, v2

    .line 507
    const/16 v2, 0xa

    aget-byte v3, v1, v5

    aput-byte v3, v0, v2

    .line 508
    const/16 v2, 0xb

    aget-byte v3, v1, v7

    aput-byte v3, v0, v2

    .line 509
    const/16 v2, 0xc

    aget-byte v3, v1, v8

    aput-byte v3, v0, v2

    .line 510
    const/16 v2, 0xd

    const/4 v3, 0x5

    aget-byte v3, v1, v3

    aput-byte v3, v0, v2

    .line 511
    const/16 v2, 0xe

    const/4 v3, 0x6

    aget-byte v3, v1, v3

    aput-byte v3, v0, v2

    .line 512
    const/16 v2, 0xf

    const/4 v3, 0x7

    aget-byte v3, v1, v3

    aput-byte v3, v0, v2

    .line 514
    const/16 v2, 0x10

    aget-byte v2, p1, v2

    aput-byte v2, v1, v6

    .line 515
    const/16 v2, 0x12

    aget-byte v2, p1, v2

    aput-byte v2, v1, v4

    .line 516
    const/16 v2, 0x14

    aget-byte v2, p1, v2

    aput-byte v2, v1, v5

    .line 517
    const/16 v2, 0x16

    aget-byte v2, p1, v2

    aput-byte v2, v1, v7

    .line 518
    const/16 v2, 0x18

    aget-byte v2, p1, v2

    aput-byte v2, v1, v8

    .line 519
    const/4 v2, 0x5

    const/16 v3, 0x1a

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 520
    const/4 v2, 0x6

    const/16 v3, 0x1c

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 521
    const/4 v2, 0x7

    const/16 v3, 0x1e

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 523
    invoke-virtual {p0, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->inputBuf([B)[B

    move-result-object v1

    .line 524
    const/16 v2, 0x10

    aget-byte v3, v1, v6

    aput-byte v3, v0, v2

    .line 525
    const/16 v2, 0x11

    aget-byte v3, v1, v4

    aput-byte v3, v0, v2

    .line 526
    const/16 v2, 0x12

    aget-byte v3, v1, v5

    aput-byte v3, v0, v2

    .line 527
    const/16 v2, 0x13

    aget-byte v3, v1, v7

    aput-byte v3, v0, v2

    .line 528
    const/16 v2, 0x14

    aget-byte v3, v1, v8

    aput-byte v3, v0, v2

    .line 529
    const/16 v2, 0x15

    const/4 v3, 0x5

    aget-byte v3, v1, v3

    aput-byte v3, v0, v2

    .line 530
    const/16 v2, 0x16

    const/4 v3, 0x6

    aget-byte v3, v1, v3

    aput-byte v3, v0, v2

    .line 531
    const/16 v2, 0x17

    const/4 v3, 0x7

    aget-byte v3, v1, v3

    aput-byte v3, v0, v2

    .line 533
    const/16 v2, 0x11

    aget-byte v2, p1, v2

    aput-byte v2, v1, v6

    .line 534
    const/16 v2, 0x13

    aget-byte v2, p1, v2

    aput-byte v2, v1, v4

    .line 535
    const/16 v2, 0x15

    aget-byte v2, p1, v2

    aput-byte v2, v1, v5

    .line 536
    const/16 v2, 0x17

    aget-byte v2, p1, v2

    aput-byte v2, v1, v7

    .line 537
    const/16 v2, 0x19

    aget-byte v2, p1, v2

    aput-byte v2, v1, v8

    .line 538
    const/4 v2, 0x5

    const/16 v3, 0x1b

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 539
    const/4 v2, 0x6

    const/16 v3, 0x1d

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 540
    const/4 v2, 0x7

    const/16 v3, 0x1f

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 542
    invoke-virtual {p0, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->inputBuf([B)[B

    move-result-object v1

    .line 543
    const/16 v2, 0x18

    aget-byte v3, v1, v6

    aput-byte v3, v0, v2

    .line 544
    const/16 v2, 0x19

    aget-byte v3, v1, v4

    aput-byte v3, v0, v2

    .line 545
    const/16 v2, 0x1a

    aget-byte v3, v1, v5

    aput-byte v3, v0, v2

    .line 546
    const/16 v2, 0x1b

    aget-byte v3, v1, v7

    aput-byte v3, v0, v2

    .line 547
    const/16 v2, 0x1c

    aget-byte v3, v1, v8

    aput-byte v3, v0, v2

    .line 548
    const/16 v2, 0x1d

    const/4 v3, 0x5

    aget-byte v3, v1, v3

    aput-byte v3, v0, v2

    .line 549
    const/16 v2, 0x1e

    const/4 v3, 0x6

    aget-byte v3, v1, v3

    aput-byte v3, v0, v2

    .line 550
    const/16 v2, 0x1f

    const/4 v3, 0x7

    aget-byte v3, v1, v3

    aput-byte v3, v0, v2

    .line 594
    .end local v0    # "outbuf":[B
    .end local v1    # "tempBuf":[B
    :goto_0
    return-object v0

    .line 552
    :cond_0
    if-ne p2, v5, :cond_1

    .line 553
    const/16 v2, 0x10

    new-array v0, v2, [B

    .line 554
    .restart local v0    # "outbuf":[B
    const/16 v2, 0x8

    new-array v1, v2, [B

    .line 555
    .restart local v1    # "tempBuf":[B
    aget-byte v2, p1, v6

    aput-byte v2, v1, v6

    .line 556
    aget-byte v2, p1, v4

    aput-byte v2, v1, v4

    .line 557
    aget-byte v2, p1, v5

    aput-byte v2, v1, v5

    .line 558
    aget-byte v2, p1, v7

    aput-byte v2, v1, v7

    .line 559
    aget-byte v2, p1, v8

    aput-byte v2, v1, v8

    .line 560
    const/4 v2, 0x5

    const/4 v3, 0x5

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 561
    const/4 v2, 0x6

    const/4 v3, 0x6

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 562
    const/4 v2, 0x7

    const/4 v3, 0x7

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 564
    invoke-virtual {p0, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->inputBuf([B)[B

    move-result-object v1

    .line 565
    aget-byte v2, v1, v6

    aput-byte v2, v0, v6

    .line 566
    aget-byte v2, v1, v4

    aput-byte v2, v0, v4

    .line 567
    aget-byte v2, v1, v5

    aput-byte v2, v0, v5

    .line 568
    aget-byte v2, v1, v7

    aput-byte v2, v0, v7

    .line 569
    aget-byte v2, v1, v8

    aput-byte v2, v0, v8

    .line 570
    const/4 v2, 0x5

    const/4 v3, 0x5

    aget-byte v3, v1, v3

    aput-byte v3, v0, v2

    .line 571
    const/4 v2, 0x6

    const/4 v3, 0x6

    aget-byte v3, v1, v3

    aput-byte v3, v0, v2

    .line 572
    const/4 v2, 0x7

    const/4 v3, 0x7

    aget-byte v3, v1, v3

    aput-byte v3, v0, v2

    .line 574
    const/16 v2, 0x8

    aget-byte v2, p1, v2

    aput-byte v2, v1, v6

    .line 575
    const/16 v2, 0x9

    aget-byte v2, p1, v2

    aput-byte v2, v1, v4

    .line 576
    const/16 v2, 0xa

    aget-byte v2, p1, v2

    aput-byte v2, v1, v5

    .line 577
    const/16 v2, 0xb

    aget-byte v2, p1, v2

    aput-byte v2, v1, v7

    .line 578
    const/16 v2, 0xc

    aget-byte v2, p1, v2

    aput-byte v2, v1, v8

    .line 579
    const/4 v2, 0x5

    const/16 v3, 0xd

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 580
    const/4 v2, 0x6

    const/16 v3, 0xe

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 581
    const/4 v2, 0x7

    const/16 v3, 0xf

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 583
    invoke-virtual {p0, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->inputBuf([B)[B

    move-result-object v1

    .line 584
    const/16 v2, 0x8

    aget-byte v3, v1, v6

    aput-byte v3, v0, v2

    .line 585
    const/16 v2, 0x9

    aget-byte v3, v1, v4

    aput-byte v3, v0, v2

    .line 586
    const/16 v2, 0xa

    aget-byte v3, v1, v5

    aput-byte v3, v0, v2

    .line 587
    const/16 v2, 0xb

    aget-byte v3, v1, v7

    aput-byte v3, v0, v2

    .line 588
    const/16 v2, 0xc

    aget-byte v3, v1, v8

    aput-byte v3, v0, v2

    .line 589
    const/16 v2, 0xd

    const/4 v3, 0x5

    aget-byte v3, v1, v3

    aput-byte v3, v0, v2

    .line 590
    const/16 v2, 0xe

    const/4 v3, 0x6

    aget-byte v3, v1, v3

    aput-byte v3, v0, v2

    .line 591
    const/16 v2, 0xf

    const/4 v3, 0x7

    aget-byte v3, v1, v3

    aput-byte v3, v0, v2

    goto/16 :goto_0

    .line 594
    .end local v0    # "outbuf":[B
    .end local v1    # "tempBuf":[B
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public searchCharactericByUUid()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x1388

    const/4 v7, 0x1

    .line 1089
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->characteristics:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1153
    return-void

    .line 1089
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 1090
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    sget-object v4, Lcom/zeroner/android_zeroner_ble/common/Constants;->BAND_CHARACTERISTIC_NEW_WRITE:Ljava/util/UUID;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/zeroner/android_zeroner_ble/common/Constants;->BAND_CHARACTERISTIC_NFC_WRITE:Ljava/util/UUID;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1091
    :cond_2
    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->callbackHandler:Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;

    if-eqz v4, :cond_3

    .line 1092
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 1093
    .local v2, "msg":Landroid/os/Message;
    const/4 v4, 0x2

    iput v4, v2, Landroid/os/Message;->what:I

    .line 1094
    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->callbackHandler:Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;

    invoke-virtual {v4, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1099
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    sget-object v4, Lcom/zeroner/android_zeroner_ble/common/Constants;->BAND_CHARACTERISTIC_NEW_INDICATE:Ljava/util/UUID;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1100
    invoke-virtual {p0, v0, v7}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v1

    .line 1101
    .local v1, "flag":Z
    if-eqz v1, :cond_5

    .line 1102
    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice$4;

    invoke-direct {v5, p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice$4;-><init>(Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;)V

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1119
    .end local v1    # "flag":Z
    :cond_4
    :goto_1
    sget-object v4, Lcom/zeroner/android_zeroner_ble/common/Constants;->BAND_CHARACTERISTIC_NEW_NOTIFY:Ljava/util/UUID;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1120
    invoke-virtual {p0, v0, v7}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v1

    .line 1121
    .restart local v1    # "flag":Z
    if-eqz v1, :cond_6

    .line 1122
    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice$5;

    invoke-direct {v5, p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice$5;-><init>(Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;)V

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1110
    :cond_5
    invoke-virtual {p0, v0, v7}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 1111
    iget-object v4, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u7279\u5f81\uff08UUID:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff09\u8bbe\u7f6e\u6210notify\u5931\u8d25"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    sget-boolean v4, Lcom/zeroner/android_zeroner_ble/common/Constants$Debug;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 1114
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u7279\u5f81\uff08UUID:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\uff09\u8bbe\u7f6e\u6210notify\u5931\u8d25"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ble.txt"

    const-string v6, "Zeroner/"

    invoke-static {v4, v5, v6}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1135
    :cond_6
    invoke-virtual {p0, v0, v7}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 1136
    sget-boolean v4, Lcom/zeroner/android_zeroner_ble/common/Constants$Debug;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1137
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u7279\u5f81\uff08UUID:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\uff09\u8bbe\u7f6e\u6210notify\u5931\u8d25"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ble.txt"

    const-string v6, "Zeroner/"

    invoke-static {v4, v5, v6}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setCallbackHandler(Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;)V
    .locals 0
    .param p1, "callbackHandler"    # Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->callbackHandler:Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;

    .line 138
    return-void
.end method

.method public setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    .locals 5
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v3, 0x2

    .line 2697
    const/4 v1, 0x1

    .line 2698
    .local v1, "rst":Z
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v2, :cond_1

    .line 2699
    :cond_0
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    const-string v3, "BluetoothAdapter not initialized"

    invoke-static {v2, v3}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2700
    const/4 v2, 0x0

    .line 2719
    :goto_0
    return v2

    .line 2702
    :cond_1
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, p1, p2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 2704
    sget-object v2, Lcom/zeroner/android_zeroner_ble/common/Constants;->BAND_DES_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 2705
    .local v0, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_4

    .line 2706
    if-eqz p2, :cond_3

    sget-object v2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    :goto_1
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 2712
    :goto_2
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v1

    .line 2713
    if-eqz v1, :cond_2

    .line 2714
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7279\u5f81\uff08UUID:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff09\u8bbe\u7f6e\u6210notify\u6210\u529f\uff0c\u7b49\u5f85\u56de\u8c03\u54cd\u5e94..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2715
    sget-boolean v2, Lcom/zeroner/android_zeroner_ble/common/Constants$Debug;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 2716
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u7279\u5f81\uff08UUID:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff09\u8bbe\u7f6e\u6210notify\u6210\u529f\uff0c\u7b49\u5f85\u56de\u8c03\u54cd\u5e94..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ble.txt"

    const-string v4, "Zeroner/"

    invoke-static {v2, v3, v4}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v2, v1

    .line 2719
    goto :goto_0

    .line 2706
    :cond_3
    new-array v2, v3, [B

    goto :goto_1

    .line 2707
    :cond_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_6

    .line 2708
    if-eqz p2, :cond_5

    sget-object v2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    :goto_3
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    goto :goto_2

    :cond_5
    new-array v2, v3, [B

    goto :goto_3

    .line 2710
    :cond_6
    if-eqz p2, :cond_7

    sget-object v2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    :goto_4
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    goto :goto_2

    :cond_7
    new-array v2, v3, [B

    goto :goto_4
.end method

.method public setHeartRate_params(III)[B
    .locals 6
    .param p1, "strength"    # I
    .param p2, "min"    # I
    .param p3, "type"    # I

    .prologue
    const/4 v5, 0x1

    .line 1461
    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v2

    .line 1462
    .local v2, "header":B
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1463
    .local v1, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v0, 0x0

    .line 1464
    .local v0, "data":[B
    if-nez p3, :cond_1

    .line 1465
    int-to-byte v3, p3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1466
    int-to-byte v3, p1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1467
    int-to-byte v3, p2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1468
    invoke-virtual {p0, v5, v2, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandDataByte(ZBLjava/util/ArrayList;)[B

    move-result-object v0

    .line 1473
    :cond_0
    :goto_0
    return-object v0

    .line 1469
    :cond_1
    if-ne p3, v5, :cond_0

    .line 1470
    int-to-byte v3, p3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1471
    invoke-virtual {p0, v5, v2, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandDataByte(ZBLjava/util/ArrayList;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public setLeDevice(Lcom/zeroner/android_zeroner_ble/model/WristBand;)V
    .locals 0
    .param p1, "mLeDevice"    # Lcom/zeroner/android_zeroner_ble/model/WristBand;

    .prologue
    .line 2766
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->wristband:Lcom/zeroner/android_zeroner_ble/model/WristBand;

    .line 2767
    return-void
.end method

.method public setPhoneStatue(IIILjava/util/ArrayList;)[B
    .locals 10
    .param p1, "type"    # I
    .param p2, "shakeModeIndex"    # I
    .param p3, "num"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)[B"
        }
    .end annotation

    .prologue
    .line 1431
    .local p4, "model":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/4 v8, 0x4

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v2

    .line 1432
    .local v2, "header":B
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1433
    .local v1, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    if-nez p1, :cond_1

    .line 1434
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1453
    :cond_0
    :goto_0
    const/4 v8, 0x1

    invoke-virtual {p0, v8, v2, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandDataByte(ZBLjava/util/ArrayList;)[B

    move-result-object v0

    .line 1454
    .local v0, "data":[B
    return-object v0

    .line 1435
    .end local v0    # "data":[B
    :cond_1
    const/4 v8, 0x1

    if-ne p1, v8, :cond_2

    .line 1436
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1437
    :cond_2
    const/4 v8, 0x2

    if-ne p1, v8, :cond_3

    .line 1438
    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1439
    int-to-byte v8, p2

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1440
    int-to-byte v8, p3

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1441
    :cond_3
    const/4 v8, 0x3

    if-ne p1, v8, :cond_0

    .line 1442
    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1443
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 1444
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 1445
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v8, "index"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1446
    .local v4, "index":I
    const-string v8, "number"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1447
    .local v6, "number":I
    const-string v8, "type"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1448
    .local v7, "shokeType":I
    int-to-byte v8, v4

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1449
    int-to-byte v8, v6

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1450
    int-to-byte v8, v7

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1443
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public setQuietMode(I)[B
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x0

    .line 1735
    const/4 v3, 0x6

    invoke-virtual {p0, v4, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v2

    .line 1736
    .local v2, "header":B
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1737
    .local v1, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    packed-switch p1, :pswitch_data_0

    .line 1757
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandDataByte(ZBLjava/util/ArrayList;)[B

    move-result-object v0

    .line 1758
    .local v0, "bytes":[B
    return-object v0

    .line 1739
    .end local v0    # "bytes":[B
    :pswitch_0
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1740
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1741
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1742
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1743
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1744
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1747
    :pswitch_1
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1748
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1749
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1750
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1751
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1752
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1737
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setQuietMode(IIII)[B
    .locals 7
    .param p1, "startHour"    # I
    .param p2, "startMin"    # I
    .param p3, "endHour"    # I
    .param p4, "endMin"    # I

    .prologue
    const/16 v6, 0x3b

    const/16 v3, 0x17

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1710
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    .line 1711
    if-gt p1, v3, :cond_0

    if-gt p3, v3, :cond_0

    if-gt p2, v6, :cond_0

    if-le p4, v6, :cond_1

    .line 1712
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "argument is out of range"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1714
    :cond_1
    const/4 v3, 0x6

    invoke-virtual {p0, v4, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v2

    .line 1715
    .local v2, "header":B
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1716
    .local v1, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1717
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1718
    invoke-direct {p0, p1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->int2byte(I)B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1719
    invoke-direct {p0, p2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->int2byte(I)B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1720
    invoke-direct {p0, p3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->int2byte(I)B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1721
    invoke-direct {p0, p4}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->int2byte(I)B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1722
    invoke-virtual {p0, v5, v2, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandDataByte(ZBLjava/util/ArrayList;)[B

    move-result-object v0

    .line 1723
    .local v0, "bytes":[B
    return-object v0
.end method

.method public setSportGole(Ljava/util/ArrayList;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .local p1, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v3, 0x1

    .line 1371
    const/16 v2, 0xb

    invoke-virtual {p0, v3, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v1

    .line 1372
    .local v1, "header":B
    invoke-virtual {p0, v3, v1, p1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandDataByte(ZBLjava/util/ArrayList;)[B

    move-result-object v0

    .line 1373
    .local v0, "data1":[B
    return-object v0
.end method

.method public setWristBandBle()[B
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1273
    invoke-virtual {p0, v4, v6}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v3

    .line 1274
    .local v3, "header":B
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1275
    .local v2, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-array v0, v6, [B

    .line 1276
    .local v0, "code":[B
    aput-byte v5, v0, v5

    .line 1277
    aput-byte v4, v0, v4

    .line 1278
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1279
    invoke-virtual {p0, v4, v3, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandData(ZBLjava/util/ArrayList;)[B

    move-result-object v1

    .line 1280
    .local v1, "data":[B
    return-object v1
.end method

.method public setWristBandGestureAndLight(Landroid/util/SparseBooleanArray;II)[B
    .locals 6
    .param p1, "array"    # Landroid/util/SparseBooleanArray;
    .param p2, "backLightStartTime"    # I
    .param p3, "backLightEndTime"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2214
    const/16 v3, 0x8

    invoke-virtual {p0, v4, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v2

    .line 2215
    .local v2, "header":B
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2217
    .local v1, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p1, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2218
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2222
    :goto_0
    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2223
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2227
    :goto_1
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2228
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2232
    :goto_2
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2233
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2237
    :goto_3
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2238
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2243
    :goto_4
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2244
    int-to-byte v3, p2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2245
    int-to-byte v3, p3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2246
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2247
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2252
    :goto_5
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2253
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2258
    :goto_6
    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2259
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2263
    :goto_7
    invoke-virtual {p0, v4, v2, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandDataByte(ZBLjava/util/ArrayList;)[B

    move-result-object v0

    .line 2264
    .local v0, "data":[B
    return-object v0

    .line 2220
    .end local v0    # "data":[B
    :cond_0
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2225
    :cond_1
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2230
    :cond_2
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2235
    :cond_3
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2240
    :cond_4
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2249
    :cond_5
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2255
    :cond_6
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 2261
    :cond_7
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method public setWristBandGestureAndLight(Landroid/util/SparseBooleanArray;III)[B
    .locals 10
    .param p1, "array"    # Landroid/util/SparseBooleanArray;
    .param p2, "backLightStartTime"    # I
    .param p3, "backLightEndTime"    # I
    .param p4, "languageType"    # I

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2273
    const/16 v3, 0x8

    invoke-virtual {p0, v5, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v2

    .line 2274
    .local v2, "header":B
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2276
    .local v1, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p1, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2277
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2281
    :goto_0
    invoke-virtual {p1, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2282
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2286
    :goto_1
    invoke-virtual {p1, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2287
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2291
    :goto_2
    invoke-virtual {p1, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2292
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2296
    :goto_3
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2297
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2302
    :goto_4
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2303
    int-to-byte v3, p2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2304
    int-to-byte v3, p3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2305
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2306
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2311
    :goto_5
    iget v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->bandType:I

    if-eq v3, v9, :cond_0

    .line 2312
    if-ne p4, v5, :cond_7

    .line 2313
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2326
    :cond_0
    :goto_6
    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2327
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2332
    :goto_7
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2333
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2337
    :goto_8
    invoke-virtual {p0, v5, v2, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandDataByte(ZBLjava/util/ArrayList;)[B

    move-result-object v0

    .line 2338
    .local v0, "data":[B
    return-object v0

    .line 2279
    .end local v0    # "data":[B
    :cond_1
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2284
    :cond_2
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2289
    :cond_3
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2294
    :cond_4
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2299
    :cond_5
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2308
    :cond_6
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2314
    :cond_7
    if-nez p4, :cond_8

    .line 2315
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 2316
    :cond_8
    if-ne p4, v7, :cond_9

    iget v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->bandType:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_9

    .line 2317
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    const-string v4, "simple-language changed success"

    invoke-static {v3, v4}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2318
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 2319
    :cond_9
    if-ne p4, v8, :cond_a

    .line 2320
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 2321
    :cond_a
    const/4 v3, 0x4

    if-ne p4, v3, :cond_0

    .line 2322
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 2329
    :cond_b
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 2335
    :cond_c
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method public setWristBandGestureAndLight(Landroid/util/SparseBooleanArray;IIIII)[B
    .locals 6
    .param p1, "array"    # Landroid/util/SparseBooleanArray;
    .param p2, "backLightStartTime"    # I
    .param p3, "backLightEndTime"    # I
    .param p4, "languageType"    # I
    .param p5, "wristLightFuncStartTime"    # I
    .param p6, "wristLightFuncEndTime"    # I

    .prologue
    .line 2345
    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-virtual {p0, v3, v4}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v2

    .line 2346
    .local v2, "header":B
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2348
    .local v1, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bandType:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->bandType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2350
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2351
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2355
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2356
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2360
    :goto_1
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2361
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2365
    :goto_2
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2366
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2370
    :goto_3
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2371
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2376
    :goto_4
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2377
    int-to-byte v3, p2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2378
    int-to-byte v3, p3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2379
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2380
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2385
    :goto_5
    iget v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->bandType:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 2386
    const/4 v3, 0x1

    if-ne p4, v3, :cond_9

    .line 2387
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2400
    :cond_0
    :goto_6
    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2401
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2406
    :goto_7
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2407
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2412
    :goto_8
    if-gez p5, :cond_1

    const/16 v3, 0x17

    if-gt p5, v3, :cond_f

    .line 2413
    :cond_1
    int-to-byte v3, p5

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2417
    :goto_9
    if-gez p6, :cond_2

    const/16 v3, 0x17

    if-gt p6, v3, :cond_10

    .line 2418
    :cond_2
    int-to-byte v3, p6

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2424
    :goto_a
    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2425
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2431
    :goto_b
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2432
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2437
    :goto_c
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandDataByte(ZBLjava/util/ArrayList;)[B

    move-result-object v0

    .line 2438
    .local v0, "data":[B
    return-object v0

    .line 2353
    .end local v0    # "data":[B
    :cond_3
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2358
    :cond_4
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2363
    :cond_5
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2368
    :cond_6
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2373
    :cond_7
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 2382
    :cond_8
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 2388
    :cond_9
    if-nez p4, :cond_a

    .line 2389
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 2390
    :cond_a
    const/4 v3, 0x2

    if-ne p4, v3, :cond_b

    iget v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->bandType:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_b

    .line 2391
    iget-object v3, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    const-string v4, "simple-language changed success"

    invoke-static {v3, v4}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2392
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 2393
    :cond_b
    const/4 v3, 0x3

    if-ne p4, v3, :cond_c

    .line 2394
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 2395
    :cond_c
    const/4 v3, 0x4

    if-ne p4, v3, :cond_0

    .line 2396
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 2403
    :cond_d
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 2409
    :cond_e
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 2415
    :cond_f
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 2420
    :cond_10
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 2427
    :cond_11
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 2434
    :cond_12
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c
.end method

.method public setWristBandGestureAndLight(ZZZZZ)[B
    .locals 6
    .param p1, "isLight"    # Z
    .param p2, "isGesture"    # Z
    .param p3, "isEnglishUnit"    # Z
    .param p4, "isIs24Hours"    # Z
    .param p5, "isAutoSleep"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1393
    const/16 v3, 0x8

    invoke-virtual {p0, v4, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v2

    .line 1394
    .local v2, "header":B
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1395
    .local v1, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    if-eqz p1, :cond_0

    .line 1396
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1400
    :goto_0
    if-eqz p2, :cond_1

    .line 1401
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1405
    :goto_1
    if-eqz p3, :cond_2

    .line 1406
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1410
    :goto_2
    if-eqz p4, :cond_3

    .line 1411
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1415
    :goto_3
    if-eqz p5, :cond_4

    .line 1416
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1421
    :goto_4
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1423
    invoke-virtual {p0, v4, v2, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandDataByte(ZBLjava/util/ArrayList;)[B

    move-result-object v0

    .line 1424
    .local v0, "data":[B
    return-object v0

    .line 1398
    .end local v0    # "data":[B
    :cond_0
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1403
    :cond_1
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1408
    :cond_2
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1413
    :cond_3
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1418
    :cond_4
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public setWristBandRestart()[B
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1288
    const/4 v4, 0x2

    invoke-virtual {p0, v5, v4}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v3

    .line 1289
    .local v3, "header":B
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1290
    .local v2, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-array v0, v6, [B

    .line 1291
    .local v0, "code":[B
    aput-byte v5, v0, v5

    .line 1292
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1293
    invoke-virtual {p0, v6, v3, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandData(ZBLjava/util/ArrayList;)[B

    move-result-object v1

    .line 1294
    .local v1, "data":[B
    return-object v1
.end method

.method public setWristBandSelfie(Z)[B
    .locals 7
    .param p1, "flag"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1302
    const/4 v4, 0x4

    invoke-virtual {p0, v4, v5}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v3

    .line 1303
    .local v3, "header":B
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1304
    .local v2, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-array v0, v6, [B

    .line 1305
    .local v0, "code":[B
    if-eqz p1, :cond_0

    .line 1306
    aput-byte v6, v0, v5

    .line 1310
    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1311
    invoke-virtual {p0, v6, v3, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandData(ZBLjava/util/ArrayList;)[B

    move-result-object v1

    .line 1312
    .local v1, "data":[B
    return-object v1

    .line 1308
    .end local v1    # "data":[B
    :cond_0
    aput-byte v5, v0, v5

    goto :goto_0
.end method

.method public setWristBand_3BVersion_Dialydata(IZI)[B
    .locals 10
    .param p1, "value"    # I
    .param p2, "flag"    # Z
    .param p3, "index"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1321
    const/16 v6, 0x8

    invoke-virtual {p0, v9, v6}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v5

    .line 1322
    .local v5, "header":B
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1323
    .local v2, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz p2, :cond_0

    .line 1324
    new-array v0, v7, [B

    .line 1325
    .local v0, "code":[B
    int-to-byte v6, p1

    aput-byte v6, v0, v8

    .line 1326
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1336
    :goto_0
    invoke-virtual {p0, v7, v5, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandData(ZBLjava/util/ArrayList;)[B

    move-result-object v1

    .line 1337
    .local v1, "data":[B
    return-object v1

    .line 1328
    .end local v0    # "code":[B
    .end local v1    # "data":[B
    :cond_0
    const/4 v6, 0x3

    new-array v0, v6, [B

    .line 1329
    .restart local v0    # "code":[B
    int-to-byte v6, p1

    aput-byte v6, v0, v8

    .line 1330
    rem-int/lit16 v4, p3, 0x100

    .line 1331
    .local v4, "goal_low":I
    sub-int v6, p3, v4

    div-int/lit16 v3, v6, 0x100

    .line 1332
    .local v3, "goal_high":I
    int-to-byte v6, v4

    aput-byte v6, v0, v7

    .line 1333
    int-to-byte v6, v3

    aput-byte v6, v0, v9

    .line 1334
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setWristBand_3BVersion_DialydataCurr(I)[B
    .locals 7
    .param p1, "value"    # I

    .prologue
    const/4 v6, 0x1

    .line 1345
    const/4 v4, 0x2

    const/16 v5, 0x9

    invoke-virtual {p0, v4, v5}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v3

    .line 1346
    .local v3, "header":B
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1347
    .local v2, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    new-array v0, v6, [B

    .line 1348
    .local v0, "code":[B
    const/4 v4, 0x0

    int-to-byte v5, p1

    aput-byte v5, v0, v4

    .line 1349
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1350
    invoke-virtual {p0, v6, v3, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandData(ZBLjava/util/ArrayList;)[B

    move-result-object v1

    .line 1351
    .local v1, "data":[B
    return-object v1
.end method

.method public setzeronerlib(B)[B
    .locals 5
    .param p1, "type"    # B

    .prologue
    .line 1584
    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v2

    .line 1585
    .local v2, "header":B
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1586
    .local v1, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1587
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandDataByte(ZBLjava/util/ArrayList;)[B

    move-result-object v0

    .line 1588
    .local v0, "data":[B
    return-object v0
.end method

.method public startHeartrateUpdate(Ljava/lang/String;)V
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 1551
    invoke-virtual {p0, v9}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->openOrcloseHeartRate(I)[B

    move-result-object v1

    .line 1552
    .local v1, "data5":[B
    new-instance v7, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    iget-object v8, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    invoke-direct {v7, v8, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;-><init>(Landroid/content/Context;[B)V

    .line 1553
    .local v7, "task5":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    invoke-virtual {v7, v9}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;->setFlag(Z)V

    .line 1554
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->getInstance()Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->addTask(Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;)V

    .line 1555
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-direct {v3, v8, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1558
    .local v3, "fir":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1561
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/InputStreamReader;

    const-string v8, "UTF-8"

    invoke-direct {v5, v4, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1562
    .local v5, "isr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1563
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v6, ""

    .line 1564
    .local v6, "line":Ljava/lang/String;
    iget-object v8, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->lineLists:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1565
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1568
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1569
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 1570
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1577
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .end local v6    # "line":Ljava/lang/String;
    :goto_1
    iget-object v8, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->lineLists:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->updateHeartRate(Ljava/lang/String;)V

    .line 1578
    return-void

    .line 1566
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "line":Ljava/lang/String;
    :cond_0
    :try_start_2
    iget-object v8, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->lineLists:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1571
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .end local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1572
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1574
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .line 1575
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public startLeScan()V
    .locals 6

    .prologue
    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    const-string v2, "+++ START LE SCAN +++"

    invoke-static {v1, v2}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    const-string v2, "bluetooth"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->adapter:Landroid/bluetooth/BluetoothAdapter;

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice$1;

    invoke-direct {v2, p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice$1;-><init>(Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;)V

    .line 159
    const-wide/16 v4, 0x2710

    .line 153
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 161
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isScanning:Z

    .line 162
    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p0}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stopLeScan()V
    .locals 3

    .prologue
    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    const-string v2, "+++ STOP LE SCAN +++"

    invoke-static {v1, v2}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isScanning:Z

    .line 189
    iget-object v1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p0}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public syncHeartRateData(I)[B
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x1

    .line 1481
    const/4 v3, 0x5

    invoke-virtual {p0, v3, v4}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v2

    .line 1482
    .local v2, "header":B
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1483
    .local v1, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    int-to-byte v3, p1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1484
    invoke-virtual {p0, v4, v2, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandDataByte(ZBLjava/util/ArrayList;)[B

    move-result-object v0

    .line 1485
    .local v0, "data":[B
    return-object v0
.end method

.method public syncHeartRateHoursData(I)[B
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 1493
    const/4 v3, 0x5

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v2

    .line 1494
    .local v2, "header":B
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1495
    .local v1, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    int-to-byte v3, p1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1496
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandDataByte(ZBLjava/util/ArrayList;)[B

    move-result-object v0

    .line 1497
    .local v0, "data":[B
    return-object v0
.end method

.method public unbindWristband()[B
    .locals 4

    .prologue
    .line 2514
    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v1

    .line 2515
    .local v1, "header":B
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandData(ZBLjava/util/ArrayList;)[B

    move-result-object v0

    .line 2516
    .local v0, "data":[B
    return-object v0
.end method

.method public updateDevice()[B
    .locals 4

    .prologue
    .line 2496
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v1

    .line 2497
    .local v1, "header":B
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandData(ZBLjava/util/ArrayList;)[B

    move-result-object v0

    .line 2498
    .local v0, "data":[B
    return-object v0
.end method

.method public updateHeartRate(Ljava/lang/String;)V
    .locals 14
    .param p1, "update"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    const/4 v10, 0x0

    .line 1521
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1522
    .local v3, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1523
    const/4 v9, 0x5

    const/4 v11, 0x2

    invoke-virtual {p0, v9, v11}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v5

    .line 1526
    .local v5, "header":B
    :try_start_0
    const-string v9, "utf-8"

    invoke-virtual {p1, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1527
    .local v1, "cc":[B
    array-length v11, v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move v9, v10

    :goto_0
    if-lt v9, v11, :cond_0

    .line 1533
    .end local v1    # "cc":[B
    :goto_1
    invoke-virtual {p0, v13, v5, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandDataByte(ZBLjava/util/ArrayList;)[B

    move-result-object v2

    .line 1534
    .local v2, "data":[B
    const/4 v8, 0x0

    .line 1535
    .local v8, "writeData":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v9, v2

    if-lt v6, v9, :cond_1

    .line 1545
    return-void

    .line 1527
    .end local v2    # "data":[B
    .end local v6    # "i":I
    .end local v8    # "writeData":[B
    .restart local v1    # "cc":[B
    :cond_0
    :try_start_1
    aget-byte v0, v1, v9

    .line 1528
    .local v0, "b":B
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1527
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1530
    .end local v0    # "b":B
    .end local v1    # "cc":[B
    :catch_0
    move-exception v4

    .line 1531
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 1536
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "data":[B
    .restart local v6    # "i":I
    .restart local v8    # "writeData":[B
    :cond_1
    add-int/lit8 v9, v6, 0x14

    array-length v11, v2

    if-le v9, v11, :cond_2

    .line 1537
    array-length v9, v2

    invoke-static {v2, v6, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    .line 1541
    :goto_3
    new-instance v7, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    iget-object v9, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    invoke-direct {v7, v9, v8}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;-><init>(Landroid/content/Context;[B)V

    .line 1542
    .local v7, "task":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    invoke-virtual {v7, v10}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;->setFlag(Z)V

    .line 1543
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->getInstance()Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->addTask(Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;)V

    .line 1535
    add-int/lit8 v6, v6, 0x14

    goto :goto_2

    .line 1539
    .end local v7    # "task":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    :cond_2
    add-int/lit8 v9, v6, 0x14

    invoke-static {v2, v6, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    goto :goto_3
.end method

.method public writeAlarm(IIIILjava/lang/String;)V
    .locals 15
    .param p1, "id"    # I
    .param p2, "weekRepeat"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "text"    # Ljava/lang/String;

    .prologue
    .line 2126
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2128
    .local v5, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move/from16 v0, p1

    int-to-byte v12, v0

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2129
    const/4 v12, 0x5

    move/from16 v0, p1

    if-le v0, v12, :cond_2

    .line 2130
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2131
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2132
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2133
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2134
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2144
    :goto_0
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-ge v12, v13, :cond_3

    .line 2145
    :cond_0
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2173
    :cond_1
    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x4

    invoke-virtual {p0, v13, v14}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v13

    invoke-virtual {p0, v12, v13, v5}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandDataByte(ZBLjava/util/ArrayList;)[B

    move-result-object v4

    .line 2175
    .local v4, "data":[B
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2177
    .local v10, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;>;"
    const/4 v11, 0x0

    .line 2178
    .local v11, "writeData":[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v12, v4

    if-lt v7, v12, :cond_6

    .line 2190
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->getInstance()Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->addAllTask(Ljava/util/List;)V

    .line 2192
    iget-object v12, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    const-string v13, "writeAlarm"

    invoke-static {v12, v13}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2193
    return-void

    .line 2137
    .end local v4    # "data":[B
    .end local v7    # "i":I
    .end local v10    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;>;"
    .end local v11    # "writeData":[B
    :cond_2
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2138
    move/from16 v0, p2

    int-to-byte v12, v0

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2139
    move/from16 v0, p3

    int-to-byte v12, v0

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2140
    move/from16 v0, p4

    int-to-byte v12, v0

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2148
    :cond_3
    const/4 v2, 0x0

    .line 2149
    .local v2, "bytes":[B
    const/4 v3, 0x0

    .line 2150
    .local v3, "bytes2":[B
    const/4 v1, 0x0

    .line 2151
    .local v1, "byteCount":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v12

    if-lt v7, v12, :cond_5

    .line 2167
    :cond_4
    array-length v12, v3

    invoke-direct {p0, v12}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->int2byte(I)B

    move-result v12

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2168
    const/4 v7, 0x0

    :goto_3
    array-length v12, v3

    if-ge v7, v12, :cond_1

    .line 2169
    aget-byte v12, v3, v7

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2168
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2152
    :cond_5
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2154
    .local v8, "str":Ljava/lang/String;
    :try_start_0
    const-string v12, "utf-8"

    invoke-virtual {v8, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2159
    :goto_4
    array-length v12, v2

    add-int/2addr v1, v12

    .line 2160
    const/16 v12, 0xf

    if-gt v1, v12, :cond_4

    .line 2161
    invoke-static {v3, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->concat([B[B)[B

    move-result-object v3

    .line 2151
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2155
    :catch_0
    move-exception v6

    .line 2156
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_4

    .line 2179
    .end local v1    # "byteCount":I
    .end local v2    # "bytes":[B
    .end local v3    # "bytes2":[B
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v8    # "str":Ljava/lang/String;
    .restart local v4    # "data":[B
    .restart local v10    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;>;"
    .restart local v11    # "writeData":[B
    :cond_6
    add-int/lit8 v12, v7, 0x14

    array-length v13, v4

    if-le v12, v13, :cond_7

    .line 2180
    array-length v12, v4

    invoke-static {v4, v7, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    .line 2181
    new-instance v9, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    iget-object v12, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    invoke-direct {v9, v12, v11}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;-><init>(Landroid/content/Context;[B)V

    .line 2182
    .local v9, "task":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2178
    :goto_5
    add-int/lit8 v7, v7, 0x14

    goto/16 :goto_1

    .line 2184
    .end local v9    # "task":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    :cond_7
    add-int/lit8 v12, v7, 0x14

    invoke-static {v4, v7, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    .line 2185
    new-instance v9, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    iget-object v12, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    invoke-direct {v9, v12, v11}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;-><init>(Landroid/content/Context;[B)V

    .line 2186
    .restart local v9    # "task":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method public writeCharacteristic(Ljava/util/UUID;[B)V
    .locals 5
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "data"    # [B

    .prologue
    .line 812
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 813
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v0, :cond_2

    .line 814
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 815
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 817
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5c06\u6570\u636e"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->bytesToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u5199\u5165\u7279\u5f81\uff08UUID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff09\u6210\u529f\uff0c\u7b49\u5f85\u56de\u8c03\u54cd\u5e94..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    sget-boolean v2, Lcom/zeroner/android_zeroner_ble/common/Constants$Debug;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 819
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5c06\u6570\u636e"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->bytesToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5199\u5165\u7279\u5f81\uff08UUID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff09\u6210\u529f\uff0c\u7b49\u5f85\u56de\u8c03\u54cd\u5e94..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ble.txt"

    const-string v4, "Zeroner/"

    invoke-static {v2, v3, v4}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_0
    :goto_0
    return-void

    .line 824
    .restart local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_1
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5199\u5165\u5931\u8d25\uff01UUID\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff0c\u6570\u636e\u4e3a\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->bytesToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    sget-boolean v2, Lcom/zeroner/android_zeroner_ble/common/Constants$Debug;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 826
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5199\u5165\u5931\u8d25\uff01UUID\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff0c\u6570\u636e\u4e3a\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->bytesToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ble.txt"

    const-string v4, "Zeroner/"

    invoke-static {v2, v3, v4}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 839
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :catch_0
    move-exception v1

    .line 840
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 832
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u627e\u4e0d\u5230\uff08UUID"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff09\u7279\u5f81\uff0c\u5199\u5165\u5931\u8d25"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    sget-boolean v2, Lcom/zeroner/android_zeroner_ble/common/Constants$Debug;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 835
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u627e\u4e0d\u5230\uff08UUID"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff09\u7279\u5f81\uff0c\u5199\u5165\u5931\u8d25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ble.txt"

    const-string v4, "Zeroner/"

    invoke-static {v2, v3, v4}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public declared-synchronized writeCharacteristicNewAPI(Ljava/util/UUID;[B)V
    .locals 5
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "data"    # [B

    .prologue
    .line 2645
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 2646
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_4

    .line 2647
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 2648
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 2649
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2652
    sget-boolean v2, Lcom/zeroner/android_zeroner_ble/common/Constants$Debug;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 2653
    invoke-virtual {p0, p2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->bytesToString([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "write.txt"

    const-string v4, "Zeroner/"

    invoke-static {v2, v3, v4}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2657
    :cond_0
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5c06\u6570\u636e"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->bytesToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u5199\u5165\u7279\u5f81\uff08UUID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff09\u6210\u529f\uff0c\u7b49\u5f85\u56de\u8c03\u54cd\u5e94..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2659
    sget-boolean v2, Lcom/zeroner/android_zeroner_ble/common/Constants$Debug;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 2660
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5c06\u6570\u636e"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->bytesToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5199\u5165\u7279\u5f81\uff08UUID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff09\u6210\u529f\uff0c\u7b49\u5f85\u56de\u8c03\u54cd\u5e94..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ble.txt"

    const-string v4, "Zeroner/"

    invoke-static {v2, v3, v4}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2688
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 2663
    .restart local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2664
    invoke-virtual {p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->disconnect()V

    .line 2667
    :cond_3
    invoke-direct {p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->whenDisconnecte()V

    .line 2669
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5199\u5165\u5931\u8d25\uff01UUID\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff0c\u6570\u636e\u4e3a\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->bytesToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2670
    sget-boolean v2, Lcom/zeroner/android_zeroner_ble/common/Constants$Debug;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 2671
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5199\u5165\u5931\u8d25\uff01UUID\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff0c\u6570\u636e\u4e3a\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->bytesToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ble.txt"

    const-string v4, "Zeroner/"

    invoke-static {v2, v3, v4}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2685
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :catch_0
    move-exception v1

    .line 2686
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2645
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 2676
    .restart local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_4
    :try_start_3
    iget-object v2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u627e\u4e0d\u5230\uff08UUID"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff09\u7279\u5f81\uff0c\u5199\u5165\u5931\u8d25"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2678
    sget-boolean v2, Lcom/zeroner/android_zeroner_ble/common/Constants$Debug;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 2679
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u627e\u4e0d\u5230\uff08UUID"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff09\u7279\u5f81\uff0c\u5199\u5165\u5931\u8d25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ble.txt"

    const-string v4, "Zeroner/"

    invoke-static {v2, v3, v4}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->file(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public writeClock(IIII)V
    .locals 9
    .param p1, "id"    # I
    .param p2, "week"    # I
    .param p3, "hour"    # I
    .param p4, "min"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 734
    const/4 v5, 0x5

    new-array v0, v5, [B

    .line 735
    .local v0, "data":[B
    int-to-byte v5, p1

    aput-byte v5, v0, v6

    .line 736
    aput-byte v6, v0, v7

    .line 737
    const/4 v5, 0x2

    int-to-byte v6, p2

    aput-byte v6, v0, v5

    .line 738
    const/4 v5, 0x3

    int-to-byte v6, p3

    aput-byte v6, v0, v5

    .line 739
    int-to-byte v5, p4

    aput-byte v5, v0, v8

    .line 740
    invoke-virtual {p0, v7, v8}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v3

    .line 741
    .local v3, "header":B
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 742
    .local v2, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    invoke-virtual {p0, v7, v3, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandData(ZBLjava/util/ArrayList;)[B

    move-result-object v1

    .line 744
    .local v1, "datadd":[B
    new-instance v4, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    iget-object v5, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;-><init>(Landroid/content/Context;[B)V

    .line 745
    .local v4, "task":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->getInstance()Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->addTask(Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;)V

    .line 746
    return-void
.end method

.method public writeDataToPedomater(III)V
    .locals 12
    .param p1, "week"    # I
    .param p2, "startHour"    # I
    .param p3, "endHour"    # I

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 626
    const/4 v7, 0x7

    new-array v0, v7, [B

    .line 627
    .local v0, "data":[B
    invoke-virtual {p0, v10, v11}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v2

    .line 628
    .local v2, "header":B
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 629
    .local v5, "sendentary":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    aput-byte v9, v0, v9

    .line 630
    int-to-byte v7, p1

    aput-byte v7, v0, v10

    .line 631
    const/4 v7, 0x2

    int-to-byte v8, p2

    aput-byte v8, v0, v7

    .line 632
    const/4 v7, 0x3

    int-to-byte v8, p3

    aput-byte v8, v0, v7

    .line 633
    const/4 v7, 0x4

    const/16 v8, 0xc

    aput-byte v8, v0, v7

    .line 634
    const/16 v4, 0xc8

    .line 635
    .local v4, "low":I
    div-int/lit16 v3, v9, 0x100

    .line 636
    .local v3, "high":I
    const/4 v7, 0x5

    int-to-byte v8, v4

    aput-byte v8, v0, v7

    .line 637
    int-to-byte v7, v3

    aput-byte v7, v0, v11

    .line 638
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    invoke-virtual {p0, v10, v2, v5}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandData(ZBLjava/util/ArrayList;)[B

    move-result-object v1

    .line 640
    .local v1, "data1":[B
    new-instance v6, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    iget-object v7, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    invoke-direct {v6, v7, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;-><init>(Landroid/content/Context;[B)V

    .line 641
    .local v6, "task":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->getInstance()Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->addTask(Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;)V

    .line 642
    return-void
.end method

.method public writeDataToPedomater(IIII)V
    .locals 13
    .param p1, "week"    # I
    .param p2, "startHour"    # I
    .param p3, "endHour"    # I
    .param p4, "alertDuration"    # I

    .prologue
    .line 652
    const/4 v11, 0x7

    new-array v1, v11, [B

    .line 653
    .local v1, "data":[B
    const/4 v11, 0x1

    const/4 v12, 0x6

    invoke-virtual {p0, v11, v12}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v3

    .line 654
    .local v3, "header":B
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 655
    .local v9, "sendentary":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v11, 0x0

    const/4 v12, 0x0

    aput-byte v12, v1, v11

    .line 656
    const/4 v11, 0x1

    int-to-byte v12, p1

    aput-byte v12, v1, v11

    .line 657
    const/4 v11, 0x2

    int-to-byte v12, p2

    aput-byte v12, v1, v11

    .line 658
    const/4 v11, 0x3

    move/from16 v0, p3

    int-to-byte v12, v0

    aput-byte v12, v1, v11

    .line 660
    const/4 v11, 0x5

    move/from16 v0, p4

    if-lt v0, v11, :cond_0

    if-gez p4, :cond_1

    .line 661
    :cond_0
    const/4 v11, 0x4

    const/4 v12, 0x1

    aput-byte v12, v1, v11

    .line 670
    :goto_0
    const/16 v6, 0xc8

    .line 671
    .local v6, "low":I
    const/4 v11, 0x0

    div-int/lit16 v5, v11, 0x100

    .line 672
    .local v5, "high":I
    const/4 v11, 0x5

    int-to-byte v12, v6

    aput-byte v12, v1, v11

    .line 673
    const/4 v11, 0x6

    int-to-byte v12, v5

    aput-byte v12, v1, v11

    .line 674
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    const/4 v11, 0x1

    invoke-virtual {p0, v11, v3, v9}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandData(ZBLjava/util/ArrayList;)[B

    move-result-object v2

    .line 676
    .local v2, "data1":[B
    new-instance v10, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    iget-object v11, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    invoke-direct {v10, v11, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;-><init>(Landroid/content/Context;[B)V

    .line 677
    .local v10, "task":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->getInstance()Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->addTask(Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;)V

    .line 678
    return-void

    .line 664
    .end local v2    # "data1":[B
    .end local v5    # "high":I
    .end local v6    # "low":I
    .end local v10    # "task":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    :cond_1
    div-int/lit8 v7, p4, 0x5

    .line 665
    .local v7, "num":I
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 666
    .local v4, "hexString":Ljava/lang/String;
    const/16 v11, 0x10

    invoke-static {v4, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 667
    .local v8, "numHexInt":I
    const/4 v11, 0x4

    int-to-byte v12, v8

    aput-byte v12, v1, v11

    goto :goto_0
.end method

.method public writeDataToPedomater(IIIIII)V
    .locals 13
    .param p1, "id"    # I
    .param p2, "week"    # I
    .param p3, "startHour"    # I
    .param p4, "endHour"    # I
    .param p5, "alertDuration"    # I
    .param p6, "workCount"    # I

    .prologue
    .line 690
    const/4 v11, 0x7

    new-array v1, v11, [B

    .line 691
    .local v1, "data":[B
    const/4 v11, 0x1

    const/4 v12, 0x6

    invoke-virtual {p0, v11, v12}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v3

    .line 692
    .local v3, "header":B
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 693
    .local v9, "sendentary":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v11, 0x0

    int-to-byte v12, p1

    aput-byte v12, v1, v11

    .line 694
    const/4 v11, 0x1

    int-to-byte v12, p2

    aput-byte v12, v1, v11

    .line 695
    const/4 v11, 0x2

    move/from16 v0, p3

    int-to-byte v12, v0

    aput-byte v12, v1, v11

    .line 696
    const/4 v11, 0x3

    move/from16 v0, p4

    int-to-byte v12, v0

    aput-byte v12, v1, v11

    .line 698
    const/4 v11, 0x5

    move/from16 v0, p5

    if-lt v0, v11, :cond_0

    if-gez p5, :cond_1

    .line 699
    :cond_0
    const/4 v11, 0x4

    const/4 v12, 0x1

    aput-byte v12, v1, v11

    .line 708
    :goto_0
    move/from16 v0, p6

    rem-int/lit16 v6, v0, 0x100

    .line 709
    .local v6, "low":I
    sub-int v11, p6, v6

    div-int/lit16 v5, v11, 0x100

    .line 710
    .local v5, "high":I
    const/4 v11, 0x5

    int-to-byte v12, v6

    aput-byte v12, v1, v11

    .line 711
    const/4 v11, 0x6

    int-to-byte v12, v5

    aput-byte v12, v1, v11

    .line 712
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    const/4 v11, 0x1

    invoke-virtual {p0, v11, v3, v9}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandData(ZBLjava/util/ArrayList;)[B

    move-result-object v2

    .line 714
    .local v2, "data1":[B
    new-instance v10, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    iget-object v11, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    invoke-direct {v10, v11, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;-><init>(Landroid/content/Context;[B)V

    .line 715
    .local v10, "task":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->getInstance()Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->addTask(Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;)V

    .line 716
    return-void

    .line 702
    .end local v2    # "data1":[B
    .end local v5    # "high":I
    .end local v6    # "low":I
    .end local v10    # "task":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    :cond_1
    div-int/lit8 v7, p5, 0x5

    .line 703
    .local v7, "num":I
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 704
    .local v4, "hexString":Ljava/lang/String;
    const/16 v11, 0x10

    invoke-static {v4, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 705
    .local v8, "numHexInt":I
    const/4 v11, 0x4

    int-to-byte v12, v8

    aput-byte v12, v1, v11

    goto :goto_0
.end method

.method public writeDataToWristBand([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 2624
    iget-boolean v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->heartrate_flag:Z

    if-eqz v0, :cond_1

    .line 2625
    const/4 v0, 0x2

    aget-byte v0, p1, v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    .line 2626
    sget-object v0, Lcom/zeroner/android_zeroner_ble/common/Constants;->BAND_CHARACTERISTIC_NEW_WRITE:Ljava/util/UUID;

    invoke-virtual {p0, v0, p1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeCharacteristicNewAPI(Ljava/util/UUID;[B)V

    .line 2635
    :cond_0
    :goto_0
    return-void

    .line 2629
    :cond_1
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_2

    .line 2630
    sget-object v0, Lcom/zeroner/android_zeroner_ble/common/Constants;->BAND_CHARACTERISTIC_NFC_WRITE:Ljava/util/UUID;

    invoke-virtual {p0, v0, p1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeCharacteristicNewAPI(Ljava/util/UUID;[B)V

    goto :goto_0

    .line 2632
    :cond_2
    sget-object v0, Lcom/zeroner/android_zeroner_ble/common/Constants;->BAND_CHARACTERISTIC_NEW_WRITE:Ljava/util/UUID;

    invoke-virtual {p0, v0, p1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeCharacteristicNewAPI(Ljava/util/UUID;[B)V

    goto :goto_0
.end method

.method protected writeDataToWristBandThreeVersion()V
    .locals 23

    .prologue
    .line 1181
    invoke-virtual/range {p0 .. p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandDateNew()[B

    move-result-object v7

    .line 1182
    .local v7, "data6":[B
    new-instance v16, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v7}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;-><init>(Landroid/content/Context;[B)V

    .line 1183
    .local v16, "task6":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->getInstance()Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->addTask(Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;)V

    .line 1185
    invoke-virtual/range {p0 .. p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getFmVersionInfo()[B

    move-result-object v8

    .line 1186
    .local v8, "data7":[B
    new-instance v17, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v8}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;-><init>(Landroid/content/Context;[B)V

    .line 1187
    .local v17, "task7":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->getInstance()Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->addTask(Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;)V

    .line 1189
    invoke-virtual/range {p0 .. p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getPower()[B

    move-result-object v9

    .line 1190
    .local v9, "data8":[B
    new-instance v18, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v9}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;-><init>(Landroid/content/Context;[B)V

    .line 1191
    .local v18, "task8":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->getInstance()Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->addTask(Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;)V

    .line 1193
    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->setWristBand_3BVersion_Dialydata(IZI)[B

    move-result-object v5

    .line 1194
    .local v5, "data4":[B
    new-instance v14, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v14, v0, v5}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;-><init>(Landroid/content/Context;[B)V

    .line 1195
    .local v14, "task4":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->getInstance()Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->addTask(Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;)V

    .line 1197
    invoke-virtual/range {p0 .. p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->get3VersionSupportSports()[B

    move-result-object v4

    .line 1198
    .local v4, "data":[B
    new-instance v12, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v12, v0, v4}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;-><init>(Landroid/content/Context;[B)V

    .line 1199
    .local v12, "task":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->getInstance()Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->addTask(Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;)V

    .line 1205
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->setWristBand_3BVersion_DialydataCurr(I)[B

    move-result-object v6

    .line 1206
    .local v6, "data5":[B
    new-instance v15, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v15, v0, v6}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;-><init>(Landroid/content/Context;[B)V

    .line 1207
    .local v15, "task5":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->getInstance()Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->addTask(Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;)V

    .line 1209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->wristband:Lcom/zeroner/android_zeroner_ble/model/WristBand;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->wristband:Lcom/zeroner/android_zeroner_ble/model/WristBand;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/zeroner/android_zeroner_ble/model/WristBand;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "i7"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 1210
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->syncHeartRateData(I)[B

    move-result-object v10

    .line 1211
    .local v10, "data9":[B
    new-instance v19, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v10}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;-><init>(Landroid/content/Context;[B)V

    .line 1212
    .local v19, "task9":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->getInstance()Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->addTask(Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;)V

    .line 1214
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->setHeartRate_params(III)[B

    move-result-object v11

    .line 1215
    .local v11, "datas":[B
    new-instance v13, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v13, v0, v11}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;-><init>(Landroid/content/Context;[B)V

    .line 1216
    .local v13, "task10":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->getInstance()Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->addTask(Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;)V

    .line 1219
    .end local v10    # "data9":[B
    .end local v11    # "datas":[B
    .end local v13    # "task10":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    .end local v19    # "task9":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    :cond_0
    return-void
.end method

.method public writeSchedule(IIIIILjava/lang/String;)V
    .locals 13
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "text"    # Ljava/lang/String;

    .prologue
    .line 1980
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1981
    .local v4, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1983
    add-int/lit16 v10, p1, -0x7d0

    invoke-direct {p0, v10}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->int2byte(I)B

    move-result v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1984
    add-int/lit8 v10, p2, -0x1

    invoke-direct {p0, v10}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->int2byte(I)B

    move-result v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1985
    add-int/lit8 v10, p3, -0x1

    invoke-direct {p0, v10}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->int2byte(I)B

    move-result v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1986
    move/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->int2byte(I)B

    move-result v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1987
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->int2byte(I)B

    move-result v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1989
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->int2byte(I)B

    move-result v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1990
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->int2byte(I)B

    move-result v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1993
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x12

    if-le v10, v11, :cond_0

    .line 1994
    const/4 v10, 0x0

    const/16 v11, 0x12

    move-object/from16 v0, p6

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p6

    .line 1999
    :cond_0
    :try_start_0
    const-string v10, "utf-8"

    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 2000
    .local v2, "codeText":[B
    array-length v10, v2

    invoke-direct {p0, v10}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->int2byte(I)B

    move-result v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2001
    iget-object v10, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "codeText.length = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2003
    array-length v11, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x0

    :goto_0
    if-lt v10, v11, :cond_1

    .line 2010
    .end local v2    # "codeText":[B
    :goto_1
    const/4 v10, 0x1

    const/4 v11, 0x1

    const/16 v12, 0xd

    invoke-virtual {p0, v11, v12}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v11

    invoke-virtual {p0, v10, v11, v4}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandDataByte(ZBLjava/util/ArrayList;)[B

    move-result-object v3

    .line 2012
    .local v3, "data":[B
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2014
    .local v8, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;>;"
    const/4 v9, 0x0

    .line 2015
    .local v9, "writeData":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v10, v3

    if-lt v6, v10, :cond_2

    .line 2027
    iget-object v10, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    .line 2028
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\u5f00\u59cb\u8bbe\u7f6e\u65e5\u7a0b\uff1atext = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2029
    const-string v12, ",year = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2030
    const-string v12, ",month = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2031
    const-string v12, ",day = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2032
    const-string v12, ",hour = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2033
    const-string v12, ",minute = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2028
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2027
    invoke-static {v10, v11}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->getInstance()Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->addAllTask(Ljava/util/List;)V

    .line 2038
    return-void

    .line 2003
    .end local v3    # "data":[B
    .end local v6    # "i":I
    .end local v8    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;>;"
    .end local v9    # "writeData":[B
    .restart local v2    # "codeText":[B
    :cond_1
    :try_start_1
    aget-byte v1, v2, v10

    .line 2004
    .local v1, "b":B
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2003
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2006
    .end local v1    # "b":B
    .end local v2    # "codeText":[B
    :catch_0
    move-exception v5

    .line 2007
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 2016
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "data":[B
    .restart local v6    # "i":I
    .restart local v8    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;>;"
    .restart local v9    # "writeData":[B
    :cond_2
    add-int/lit8 v10, v6, 0x14

    array-length v11, v3

    if-le v10, v11, :cond_3

    .line 2017
    array-length v10, v3

    invoke-static {v3, v6, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 2018
    new-instance v7, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    iget-object v10, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    invoke-direct {v7, v10, v9}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;-><init>(Landroid/content/Context;[B)V

    .line 2019
    .local v7, "task":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2015
    :goto_3
    add-int/lit8 v6, v6, 0x14

    goto :goto_2

    .line 2021
    .end local v7    # "task":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    :cond_3
    add-int/lit8 v10, v6, 0x14

    invoke-static {v3, v6, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 2022
    new-instance v7, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    iget-object v10, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    invoke-direct {v7, v10, v9}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;-><init>(Landroid/content/Context;[B)V

    .line 2023
    .restart local v7    # "task":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public writeVersion()[B
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1950
    invoke-virtual {p0, v2, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v1

    .line 1951
    .local v1, "header":B
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandData(ZBLjava/util/ArrayList;)[B

    move-result-object v0

    .line 1952
    .local v0, "data":[B
    return-object v0
.end method

.method public writeWeather(IIII)V
    .locals 8
    .param p1, "unitType"    # I
    .param p2, "temperature"    # I
    .param p3, "weather"    # I
    .param p4, "pm"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 2452
    const/4 v5, 0x7

    invoke-virtual {p0, v6, v5}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v3

    .line 2453
    .local v3, "header":B
    const/4 v5, 0x6

    new-array v0, v5, [B

    .line 2454
    .local v0, "data":[B
    if-gez p2, :cond_3

    .line 2455
    const v5, 0x8000

    or-int/2addr p2, v5

    .line 2456
    and-int/lit16 v5, p2, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v6

    .line 2457
    shr-int/lit8 v5, p2, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v7

    .line 2463
    :goto_0
    if-eqz p1, :cond_0

    if-eq p1, v7, :cond_0

    .line 2464
    const/4 p1, 0x0

    .line 2466
    :cond_0
    const/4 v5, 0x2

    int-to-byte v6, p1

    aput-byte v6, v0, v5

    .line 2467
    if-ltz p3, :cond_1

    const/16 v5, 0x9

    if-le p3, v5, :cond_2

    .line 2468
    :cond_1
    const/4 p3, 0x0

    .line 2470
    :cond_2
    const/4 v5, 0x3

    int-to-byte v6, p3

    aput-byte v6, v0, v5

    .line 2471
    const/4 v5, 0x4

    and-int/lit16 v6, p4, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 2472
    const/4 v5, 0x5

    shr-int/lit8 v6, p4, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 2473
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2474
    .local v2, "datas":Ljava/util/ArrayList;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2476
    iget-object v5, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getInstance(Landroid/content/Context;)Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    move-result-object v5

    invoke-virtual {v5, v7, v3, v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandData(ZBLjava/util/ArrayList;)[B

    move-result-object v1

    .line 2477
    .local v1, "datadd":[B
    new-instance v4, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    iget-object v5, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;-><init>(Landroid/content/Context;[B)V

    .line 2478
    .local v4, "task":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->getInstance()Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->addTask(Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;)V

    .line 2479
    return-void

    .line 2459
    .end local v1    # "datadd":[B
    .end local v2    # "datas":Ljava/util/ArrayList;
    .end local v4    # "task":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    :cond_3
    and-int/lit16 v5, p2, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v6

    .line 2460
    shr-int/lit8 v5, p2, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v7

    goto :goto_0
.end method

.method public writeWristBandData(ZBLjava/util/ArrayList;)[B
    .locals 7
    .param p1, "prefix"    # Z
    .param p2, "header"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZB",
            "Ljava/util/ArrayList",
            "<[B>;)[B"
        }
    .end annotation

    .prologue
    .local p3, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 2527
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 2528
    .local v0, "commonData":[B
    if-eqz p1, :cond_0

    .line 2530
    const/16 v3, 0x21

    aput-byte v3, v0, v5

    .line 2535
    :goto_0
    const/4 v3, 0x1

    const/4 v4, -0x1

    aput-byte v4, v0, v3

    .line 2536
    const/4 v3, 0x2

    aput-byte p2, v0, v3

    .line 2537
    if-eqz p3, :cond_2

    .line 2538
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v6

    .line 2539
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    new-array v1, v3, [B

    .line 2540
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 2543
    invoke-static {v0, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->concat([B[B)[B

    move-result-object v0

    .line 2546
    .end local v0    # "commonData":[B
    .end local v1    # "data":[B
    .end local v2    # "i":I
    :goto_2
    return-object v0

    .line 2533
    .restart local v0    # "commonData":[B
    :cond_0
    const/16 v3, 0x25

    aput-byte v3, v0, v5

    goto :goto_0

    .line 2541
    .restart local v1    # "data":[B
    .restart local v2    # "i":I
    :cond_1
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    aget-byte v3, v3, v2

    aput-byte v3, v1, v2

    .line 2540
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2545
    .end local v1    # "data":[B
    .end local v2    # "i":I
    :cond_2
    aput-byte v5, v0, v6

    goto :goto_2
.end method

.method public writeWristBandDataByte(ZBLjava/util/ArrayList;)[B
    .locals 7
    .param p1, "prefix"    # Z
    .param p2, "header"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZB",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .local p3, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 2557
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 2558
    .local v0, "commonData":[B
    if-eqz p1, :cond_0

    .line 2560
    const/16 v3, 0x21

    aput-byte v3, v0, v5

    .line 2565
    :goto_0
    const/4 v3, 0x1

    const/4 v4, -0x1

    aput-byte v4, v0, v3

    .line 2566
    const/4 v3, 0x2

    aput-byte p2, v0, v3

    .line 2567
    if-eqz p3, :cond_2

    .line 2568
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v6

    .line 2569
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [B

    .line 2570
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 2573
    invoke-static {v0, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->concat([B[B)[B

    move-result-object v0

    .line 2576
    .end local v0    # "commonData":[B
    .end local v1    # "data":[B
    .end local v2    # "i":I
    :goto_2
    return-object v0

    .line 2563
    .restart local v0    # "commonData":[B
    :cond_0
    const/16 v3, 0x25

    aput-byte v3, v0, v5

    goto :goto_0

    .line 2571
    .restart local v1    # "data":[B
    .restart local v2    # "i":I
    :cond_1
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    .line 2570
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2575
    .end local v1    # "data":[B
    .end local v2    # "i":I
    :cond_2
    aput-byte v5, v0, v6

    goto :goto_2
.end method

.method public writeWristBandDataByteNFC(BLjava/util/ArrayList;)[B
    .locals 11
    .param p1, "header"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .local p2, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 2587
    const/4 v6, 0x5

    new-array v0, v6, [B

    .line 2588
    .local v0, "commonData":[B
    const/16 v6, 0x25

    aput-byte v6, v0, v8

    .line 2589
    const/4 v6, 0x1

    const/4 v7, -0x1

    aput-byte v7, v0, v6

    .line 2590
    const/4 v6, 0x2

    aput-byte p1, v0, v6

    .line 2591
    if-eqz p2, :cond_1

    .line 2592
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    int-to-byte v4, v6

    .line 2593
    .local v4, "lenth":I
    and-int/lit16 v6, v4, 0xff

    int-to-byte v5, v6

    .line 2594
    .local v5, "low":B
    aput-byte v5, v0, v9

    .line 2595
    ushr-int/lit8 v6, v4, 0x8

    int-to-byte v2, v6

    .line 2596
    .local v2, "high":B
    aput-byte v2, v0, v10

    .line 2597
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v1, v6, [B

    .line 2598
    .local v1, "data":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v3, v6, :cond_0

    .line 2601
    invoke-static {v0, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->concat([B[B)[B

    move-result-object v0

    .line 2605
    .end local v0    # "commonData":[B
    .end local v1    # "data":[B
    .end local v2    # "high":B
    .end local v3    # "i":I
    .end local v4    # "lenth":I
    .end local v5    # "low":B
    :goto_1
    return-object v0

    .line 2599
    .restart local v0    # "commonData":[B
    .restart local v1    # "data":[B
    .restart local v2    # "high":B
    .restart local v3    # "i":I
    .restart local v4    # "lenth":I
    .restart local v5    # "low":B
    :cond_0
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v1, v3

    .line 2598
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2603
    .end local v1    # "data":[B
    .end local v2    # "high":B
    .end local v3    # "i":I
    .end local v4    # "lenth":I
    .end local v5    # "low":B
    :cond_1
    aput-byte v8, v0, v9

    .line 2604
    aput-byte v8, v0, v10

    goto :goto_1
.end method

.method public writeWristBandDateNew()[B
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1680
    new-instance v2, Lcom/zeroner/android_zeroner_ble/model/DateUtil;

    invoke-direct {v2}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;-><init>()V

    .line 1682
    .local v2, "date":Lcom/zeroner/android_zeroner_ble/model/DateUtil;
    iget-object v5, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->getYyyyMMdd_HHmmssDate()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zeroner/android_zeroner_ble/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    const/4 v5, 0x6

    new-array v4, v5, [B

    .line 1684
    .local v4, "xval":[B
    invoke-virtual {v2}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->getYear()I

    move-result v5

    add-int/lit16 v5, v5, -0x7d0

    int-to-byte v5, v5

    aput-byte v5, v4, v8

    .line 1685
    invoke-virtual {v2}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->getMonth()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    aput-byte v5, v4, v7

    .line 1686
    const/4 v5, 0x2

    invoke-virtual {v2}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->getDay()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 1687
    const/4 v5, 0x3

    invoke-virtual {v2}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->getHour()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 1688
    const/4 v5, 0x4

    invoke-virtual {v2}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->getMinute()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 1689
    const/4 v5, 0x5

    invoke-virtual {v2}, Lcom/zeroner/android_zeroner_ble/model/DateUtil;->getSecond()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 1690
    invoke-virtual {p0, v7, v8}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v3

    .line 1691
    .local v3, "header":B
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1692
    .local v1, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1693
    invoke-virtual {p0, v7, v3, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandData(ZBLjava/util/ArrayList;)[B

    move-result-object v0

    .line 1694
    .local v0, "data":[B
    return-object v0
.end method

.method public writeWristBandFontLibrary(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "displayName"    # Ljava/lang/String;

    .prologue
    .line 432
    invoke-direct {p0, p1, p2, p3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeAlertFontLibrary(Landroid/content/Context;ILjava/lang/String;)V

    .line 433
    return-void
.end method

.method public writeWristBandMintunue()[B
    .locals 4

    .prologue
    .line 2487
    const/4 v2, 0x2

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v1

    .line 2488
    .local v1, "header":B
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandData(ZBLjava/util/ArrayList;)[B

    move-result-object v0

    .line 2489
    .local v0, "data":[B
    return-object v0
.end method

.method public writeWristBandNFC(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v6, 0x0

    .line 1959
    invoke-virtual {p0, v6, v6}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v1

    .line 1960
    .local v1, "header":B
    invoke-virtual {p0, v1, p1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandDataByteNFC(BLjava/util/ArrayList;)[B

    move-result-object v0

    .line 1961
    .local v0, "data":[B
    const/4 v5, 0x0

    .line 1963
    .local v5, "writeData":[B
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1964
    .local v4, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v0

    if-lt v2, v6, :cond_0

    .line 1975
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->getInstance()Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->addAllTask(Ljava/util/List;)V

    .line 1976
    return-void

    .line 1965
    :cond_0
    add-int/lit8 v6, v2, 0x14

    array-length v7, v0

    if-le v6, v7, :cond_1

    .line 1966
    array-length v6, v0

    invoke-static {v0, v2, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 1967
    new-instance v3, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    iget-object v6, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    invoke-direct {v3, v6, v5}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;-><init>(Landroid/content/Context;[B)V

    .line 1968
    .local v3, "task":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1964
    :goto_1
    add-int/lit8 v2, v2, 0x14

    goto :goto_0

    .line 1970
    .end local v3    # "task":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    :cond_1
    add-int/lit8 v6, v2, 0x14

    invoke-static {v0, v2, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 1971
    new-instance v3, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    iget-object v6, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->context:Landroid/content/Context;

    invoke-direct {v3, v6, v5}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;-><init>(Landroid/content/Context;[B)V

    .line 1972
    .restart local v3    # "task":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public writeWristBandUserNew(IIZII)[B
    .locals 9
    .param p1, "height"    # I
    .param p2, "weight"    # I
    .param p3, "gender"    # Z
    .param p4, "age"    # I
    .param p5, "steps"    # I

    .prologue
    .line 1636
    const/4 v7, 0x6

    new-array v6, v7, [B

    .line 1637
    .local v6, "xval":[B
    const/4 v7, 0x0

    int-to-byte v8, p1

    aput-byte v8, v6, v7

    .line 1638
    const/4 v7, 0x1

    int-to-byte v8, p2

    aput-byte v8, v6, v7

    .line 1639
    const/4 v8, 0x2

    if-eqz p3, :cond_0

    const/4 v7, 0x0

    :goto_0
    int-to-byte v7, v7

    aput-byte v7, v6, v8

    .line 1641
    const/4 v7, 0x3

    int-to-byte v8, p4

    :try_start_0
    aput-byte v8, v6, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1645
    :goto_1
    and-int/lit16 v7, p5, 0xff

    int-to-byte v4, v7

    .line 1646
    .local v4, "goal_low":B
    ushr-int/lit8 v7, p5, 0x8

    int-to-byte v3, v7

    .line 1647
    .local v3, "goal_high":I
    const/4 v7, 0x4

    aput-byte v4, v6, v7

    .line 1648
    const/4 v7, 0x5

    int-to-byte v8, v3

    aput-byte v8, v6, v7

    .line 1649
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v5

    .line 1650
    .local v5, "header":B
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1651
    .local v1, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1652
    const/4 v7, 0x1

    invoke-virtual {p0, v7, v5, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandData(ZBLjava/util/ArrayList;)[B

    move-result-object v0

    .line 1653
    .local v0, "data":[B
    return-object v0

    .line 1639
    .end local v0    # "data":[B
    .end local v1    # "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3    # "goal_high":I
    .end local v4    # "goal_low":B
    .end local v5    # "header":B
    :cond_0
    const/4 v7, 0x1

    goto :goto_0

    .line 1642
    :catch_0
    move-exception v2

    .line 1643
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public writeWristDialy()[B
    .locals 4

    .prologue
    .line 1940
    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->form_Header(II)B

    move-result v1

    .line 1941
    .local v1, "header":B
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandData(ZBLjava/util/ArrayList;)[B

    move-result-object v0

    .line 1942
    .local v0, "data":[B
    return-object v0
.end method
