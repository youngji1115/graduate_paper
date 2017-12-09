.class public Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;
.super Ljava/lang/Object;
.source "BluetoothConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;
    }
.end annotation


# static fields
.field public static final BAND_CONNECTION_ERROR:I = -0x3ec

.field public static final BAND_CONNECTION_FAILED:I = -0x3ea

.field public static final BLUETOOTH_FUNCTION_OFF:I = -0x3e8

.field public static final PAIRING_DEVICE_FAILED:I = -0x3e9

.field public static final PLEASE_PAIRING_DEVICE:I = -0x3eb


# instance fields
.field private CONNECTION_MAX_COUNT:I

.field private final TAG:Ljava/lang/String;

.field private isDataRequestSuccess:Z

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

.field private mConnectionCnt:I

.field private mContext:Landroid/content/Context;

.field private mIsNewConnection:Z

.field private mOnConnectionFinishListener:Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->TAG:Ljava/lang/String;

    .line 37
    iput-boolean v1, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->mIsNewConnection:Z

    .line 38
    iput-boolean v1, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->isDataRequestSuccess:Z

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->CONNECTION_MAX_COUNT:I

    .line 41
    iput v1, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->mConnectionCnt:I

    .line 44
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 46
    new-instance v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->connectBand(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->requestData()V

    return-void
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    .prologue
    .line 23
    iget v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->mConnectionCnt:I

    return v0
.end method

.method static synthetic access$308(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;)I
    .locals 2
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    .prologue
    .line 23
    iget v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->mConnectionCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->mConnectionCnt:I

    return v0
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    .prologue
    .line 23
    iget v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->CONNECTION_MAX_COUNT:I

    return v0
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;)Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->mOnConnectionFinishListener:Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;Lcom/zeroner/android_zeroner_ble/model/WristBand;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;
    .param p1, "x1"    # Lcom/zeroner/android_zeroner_ble/model/WristBand;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->delayedCheck(Lcom/zeroner/android_zeroner_ble/model/WristBand;)V

    return-void
.end method

.method static synthetic access$800(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;)Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    return-object v0
.end method

.method static synthetic access$902(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->isDataRequestSuccess:Z

    return p1
.end method

.method private connectBand(Ljava/lang/String;)V
    .locals 9
    .param p1, "myBandMacId"    # Ljava/lang/String;

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 95
    .local v1, "isConnected":Z
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v3

    .line 96
    .local v3, "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 98
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 100
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "macId":Ljava/lang/String;
    iget-object v6, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", macId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 105
    const/4 v1, 0x1

    .line 107
    new-instance v4, Lcom/zeroner/android_zeroner_ble/model/WristBand;

    invoke-direct {v4}, Lcom/zeroner/android_zeroner_ble/model/WristBand;-><init>()V

    .line 108
    .local v4, "wb":Lcom/zeroner/android_zeroner_ble/model/WristBand;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/zeroner/android_zeroner_ble/model/WristBand;->setName(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/zeroner/android_zeroner_ble/model/WristBand;->setAddress(Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, v4}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->readyToBand(Lcom/zeroner/android_zeroner_ble/model/WristBand;)V

    goto :goto_0

    .line 117
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "macId":Ljava/lang/String;
    .end local v4    # "wb":Lcom/zeroner/android_zeroner_ble/model/WristBand;
    :cond_1
    if-nez v1, :cond_2

    .line 118
    iget-boolean v5, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->mIsNewConnection:Z

    if-eqz v5, :cond_3

    .line 119
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->mOnConnectionFinishListener:Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;

    const/16 v6, -0x3eb

    invoke-interface {v5, v6}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;->onFailed(I)V

    .line 124
    :cond_2
    :goto_1
    return-void

    .line 121
    :cond_3
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->mOnConnectionFinishListener:Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;

    const/16 v6, -0x3e9

    invoke-interface {v5, v6}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;->onFailed(I)V

    goto :goto_1
.end method

.method private delayedCheck(Lcom/zeroner/android_zeroner_ble/model/WristBand;)V
    .locals 4
    .param p1, "wb"    # Lcom/zeroner/android_zeroner_ble/model/WristBand;

    .prologue
    .line 156
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$3;

    invoke-direct {v1, p0, p1}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$3;-><init>(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;Lcom/zeroner/android_zeroner_ble/model/WristBand;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    return-void
.end method

.method private findParingDevice()V
    .locals 8

    .prologue
    .line 74
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 75
    .local v2, "mySharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, "CASHBAND_MAC"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "myBandMacId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 78
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 79
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->pairDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 80
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$1;

    invoke-direct {v4, p0, v1}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$1;-><init>(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;Ljava/lang/String;)V

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-direct {p0, v1}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->connectBand(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private pairDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 128
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "createBond"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 129
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readyToBand(Lcom/zeroner/android_zeroner_ble/model/WristBand;)V
    .locals 2
    .param p1, "wb"    # Lcom/zeroner/android_zeroner_ble/model/WristBand;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getInstance(Landroid/content/Context;)Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    new-instance v1, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$2;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$2;-><init>(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->setOnConnectFinishListener(Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnDeviceConnectListener;)V

    .line 147
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getInstance(Landroid/content/Context;)Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->connect(Lcom/zeroner/android_zeroner_ble/model/WristBand;)Z

    .line 148
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->delayedCheck(Lcom/zeroner/android_zeroner_ble/model/WristBand;)V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->requestData()V

    goto :goto_0
.end method

.method private requestData()V
    .locals 4

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->isDataRequestSuccess:Z

    if-eqz v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 179
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->isDataRequestSuccess:Z

    .line 180
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bandConnect ... :: connectStatue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getInstance(Landroid/content/Context;)Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getInstance(Landroid/content/Context;)Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->mOnConnectionFinishListener:Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;

    const/16 v1, -0x3ea

    invoke-interface {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;->onFailed(I)V

    goto :goto_0

    .line 187
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$4;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$4;-><init>(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public connect(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getInstance(Landroid/content/Context;)Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    invoke-interface {p1, v0}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;->onSuccess(Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->mOnConnectionFinishListener:Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;

    .line 60
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->findParingDevice()V

    goto :goto_0

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->mOnConnectionFinishListener:Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;

    const/16 v1, -0x3e8

    invoke-interface {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;->onFailed(I)V

    goto :goto_0
.end method
