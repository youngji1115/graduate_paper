.class public Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;
.super Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;
.source "CashBandManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnDeviceConnectListener;,
        Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;,
        Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnCameraCaptureListener;
    }
.end annotation


# static fields
.field public static final BAND_ALARM_ALL:I = 0xff

.field public static final BAND_ALARM_FRI:I = 0x84

.field public static final BAND_ALARM_MON:I = 0xc0

.field public static final BAND_ALARM_SAR:I = 0x82

.field public static final BAND_ALARM_SUN:I = 0x81

.field public static final BAND_ALARM_THU:I = 0x88

.field public static final BAND_ALARM_TOU:I = 0xa0

.field public static final BAND_ALARM_WED:I = 0x90

.field public static final BAND_BATTERY_DATA:I = 0x1

.field public static final BAND_DAILY_DATA:I = 0x29

.field public static final BAND_PEDOMETER_DATA:I = 0x17

.field public static final BAND_USER_INFO:I = 0x21

.field public static final CMD_ARLAM_INFO:I = 0x15

.field public static final CMD_DEVICE_MESSAGE:I = 0x0

.field public static final CMD_DEVICE_SETTINGS:I = 0x19

.field public static final CMD_DEVICE_SURPORT:I = 0x1a

.field public static final CMD_HEARTRATE_DATA:I = 0x51

.field public static final CMD_HEARTRATE_DATA_HOUR:I = 0x53

.field public static final CMD_MANUAL_MODE_CONTROL:I = 0x40

.field public static final CMD_QUIET_MODE_INFO:I = 0x6

.field public static final CMD_SCHEDULE:I = 0x1d

.field public static final CMD_SCHEDULE_INFO:I = 0x1e

.field public static final CMD_SEGMENT_DATA:I = 0x28

.field public static final CMD_SETTING_HEARTRATE_PARAMS:I = 0x50

.field public static final SPORT_MODE_AEROBICS:I = 0x8f

.field public static final SPORT_MODE_BADMINTON:I = 0x80

.field public static final SPORT_MODE_BASKETBALL:I = 0x81

.field public static final SPORT_MODE_BIKE:I = 0x88

.field public static final SPORT_MODE_BOWLING:I = 0x86

.field public static final SPORT_MODE_CLIMBING:I = 0x5

.field public static final SPORT_MODE_DANCE:I = 0x8d

.field public static final SPORT_MODE_FITNESS:I = 0x8c

.field public static final SPORT_MODE_FOOTBALL:I = 0x82

.field public static final SPORT_MODE_PLANK:I = 0x8e

.field public static final SPORT_MODE_ROCKCLIMBING:I = 0x8b

.field public static final SPORT_MODE_ROPESKIPPING:I = 0x4

.field public static final SPORT_MODE_SKATE:I = 0x8a

.field public static final SPORT_MODE_SKI:I = 0x89

.field public static final SPORT_MODE_SWIMMING:I = 0x83

.field public static final SPORT_MODE_TABLETENNIS:I = 0x85

.field public static final SPORT_MODE_TENNIS:I = 0x87

.field public static final SPORT_MODE_VOLLEYBALL:I = 0x84


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBandDBHelper:Lcom/cashwalk/cashwalk/util/BandDBHelper;

.field private mBandInfo:Lcom/cashwalk/cashwalk/model/BandInfo;

.field private mBatteryListener:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;

.field private mContext:Landroid/content/Context;

.field private mDailyDataListener:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;

.field private mDevice:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

.field private mHeartRateListener:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;

.field private mOnCameraCaptureListener:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnCameraCaptureListener;

.field private mOnDeviceConnectListener:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnDeviceConnectListener;

.field private mOnFirmwareListener:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;

.field private mOnSleepDataListener:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;

.field private mUserInfoListener:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->TAG:Ljava/lang/String;

    .line 136
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mContext:Landroid/content/Context;

    .line 137
    new-instance v0, Lcom/cashwalk/cashwalk/model/BandInfo;

    invoke-direct {v0}, Lcom/cashwalk/cashwalk/model/BandInfo;-><init>()V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mBandInfo:Lcom/cashwalk/cashwalk/model/BandInfo;

    .line 138
    new-instance v0, Lcom/cashwalk/cashwalk/util/BandDBHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/cashwalk/cashwalk/util/BandDBHelper;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mBandDBHelper:Lcom/cashwalk/cashwalk/util/BandDBHelper;

    .line 139
    invoke-static {p1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getInstance(Landroid/content/Context;)Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mDevice:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    .line 140
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mDevice:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    invoke-virtual {v0, p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->setCallbackHandler(Lcom/zeroner/android_zeroner_ble/bluetooth/CallbackHandler;)V

    .line 141
    return-void
.end method

.method private keyModeParser(Ljava/lang/String;)V
    .locals 10
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 527
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 528
    .local v4, "keyJson":Lorg/json/JSONObject;
    const-string v7, "keyCode"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 530
    .local v1, "code":I
    sparse-switch v1, :sswitch_data_0

    .line 562
    .end local v1    # "code":I
    .end local v4    # "keyJson":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 533
    .restart local v1    # "code":I
    .restart local v4    # "keyJson":Lorg/json/JSONObject;
    :sswitch_0
    iget-object v7, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mOnCameraCaptureListener:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnCameraCaptureListener;

    if-eqz v7, :cond_0

    .line 534
    iget-object v7, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mOnCameraCaptureListener:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnCameraCaptureListener;

    invoke-interface {v7}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnCameraCaptureListener;->onCapture()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 559
    .end local v1    # "code":I
    .end local v4    # "keyJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 560
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 539
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v1    # "code":I
    .restart local v4    # "keyJson":Lorg/json/JSONObject;
    :sswitch_1
    :try_start_1
    iget-object v7, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 540
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 541
    const/4 v7, 0x2

    const/16 v8, 0x64

    const/4 v9, 0x6

    invoke-virtual {v0, v7, v8, v9}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 544
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v6

    .line 545
    .local v6, "ringtoneUri":Landroid/net/Uri;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v5

    .line 547
    .local v5, "ringtone":Landroid/media/Ringtone;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v7, 0x3

    if-ge v3, v7, :cond_0

    .line 548
    invoke-virtual {v5}, Landroid/media/Ringtone;->play()V

    .line 549
    const-wide/16 v8, 0x7d0

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 547
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 555
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v3    # "i":I
    .end local v5    # "ringtone":Landroid/media/Ringtone;
    .end local v6    # "ringtoneUri":Landroid/net/Uri;
    :sswitch_2
    new-instance v7, Lcom/cashwalk/cashwalk/cashband/util/TelephonyProvider;

    iget-object v8, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/cashwalk/cashwalk/cashband/util/TelephonyProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lcom/cashwalk/cashwalk/cashband/util/TelephonyProvider;->endCall()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 530
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method private requestBandTask([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 144
    new-instance v0, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;-><init>(Landroid/content/Context;[B)V

    .line 145
    .local v0, "task":Lcom/zeroner/android_zeroner_ble/bluetooth/task/WriteOneDataTask;
    invoke-static {}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->getInstance()Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zeroner/android_zeroner_ble/bluetooth/task/NewAgreementBackgroundThreadManager;->addTask(Lcom/zeroner/android_zeroner_ble/bluetooth/task/ITask;)V

    .line 146
    return-void
.end method


# virtual methods
.method public checkVibrate(Lcom/cashwalk/cashwalk/model/VibrateMode;)V
    .locals 13
    .param p1, "mode"    # Lcom/cashwalk/cashwalk/model/VibrateMode;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 244
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v1, "model":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 247
    .local v0, "messageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v5, "index"

    iget v6, p1, Lcom/cashwalk/cashwalk/model/VibrateMode;->modeIndex:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v5, "number"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string/jumbo v5, "type"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mDevice:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    invoke-virtual {v5, v12, v9, v9, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->setPhoneStatue(IIILjava/util/ArrayList;)[B

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->requestBandTask([B)V

    .line 253
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getInstance(Landroid/content/Context;)Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    move-result-object v5

    iget-object v6, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mContext:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p1, Lcom/cashwalk/cashwalk/model/VibrateMode;->modeName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \uc9c4\ub3d9 \ubaa8\ub4dc"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v11, v7}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandFontLibrary(Landroid/content/Context;ILjava/lang/String;)V

    .line 256
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 257
    .local v4, "pref":Landroid/content/SharedPreferences;
    const-string v5, "CASHBAND_VIBRATE_MSG_MODE"

    invoke-interface {v4, v5, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 258
    .local v2, "msgMode":I
    const-string v5, "CASHBAND_VIBRATE_MSG_MODE_COUNT"

    invoke-interface {v4, v5, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 260
    .local v3, "msgModeCount":I
    const-string v5, "index"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v5, "number"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string/jumbo v5, "type"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v5, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mDevice:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    invoke-virtual {v5, v12, v9, v9, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->setPhoneStatue(IIILjava/util/ArrayList;)[B

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->requestBandTask([B)V

    .line 265
    return-void
.end method

.method public closeAlarm(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 412
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mDevice:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    invoke-virtual {v0, p1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->closeAlarm(I)V

    .line 413
    return-void
.end method

.method public connectStatue(Z)V
    .locals 3
    .param p1, "isConnect"    # Z

    .prologue
    .line 566
    invoke-super {p0, p1}, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->connectStatue(Z)V

    .line 567
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectStatue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    return-void
.end method

.method public discoveredServices(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 580
    invoke-super {p0, p1}, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->discoveredServices(I)V

    .line 581
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discoveredServices: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mOnDeviceConnectListener:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnDeviceConnectListener;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mOnDeviceConnectListener:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnDeviceConnectListener;

    invoke-interface {v0}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnDeviceConnectListener;->onConnect()V

    .line 586
    :cond_0
    return-void
.end method

.method public get3BVersion(Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;

    .prologue
    const/4 v1, 0x1

    .line 174
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mOnSleepDataListener:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;

    .line 175
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mDevice:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    invoke-virtual {v0, v1, v1, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->setWristBand_3BVersion_Dialydata(IZI)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->requestBandTask([B)V

    .line 176
    return-void
.end method

.method public getAlarm(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 408
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mDevice:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    invoke-virtual {v0, p1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->readWristBandClock(I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->requestBandTask([B)V

    .line 409
    return-void
.end method

.method public getBandTimeSync()V
    .locals 2

    .prologue
    .line 183
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mDevice:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    invoke-virtual {v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandDateNew()[B

    move-result-object v0

    .line 184
    .local v0, "date":[B
    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->requestBandTask([B)V

    .line 185
    return-void
.end method

.method public getBattery(Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mBatteryListener:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;

    .line 150
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mDevice:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    invoke-virtual {v0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getPower()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->requestBandTask([B)V

    .line 151
    return-void
.end method

.method public getDailyData(Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mDailyDataListener:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;

    .line 160
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mDevice:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->setWristBand_3BVersion_DialydataCurr(I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->requestBandTask([B)V

    .line 161
    return-void
.end method

.method public getData(ILcom/zeroner/android_zeroner_ble/model/Result;)V
    .locals 23
    .param p1, "type"    # I
    .param p2, "result"    # Lcom/zeroner/android_zeroner_ble/model/Result;

    .prologue
    .line 417
    invoke-super/range {p0 .. p2}, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->getData(ILcom/zeroner/android_zeroner_ble/model/Result;)V

    .line 418
    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    .line 420
    .local v7, "gson":Lcom/google/gson/Gson;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mBandInfo:Lcom/cashwalk/cashwalk/model/BandInfo;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 421
    new-instance v20, Lcom/cashwalk/cashwalk/model/BandInfo;

    invoke-direct/range {v20 .. v20}, Lcom/cashwalk/cashwalk/model/BandInfo;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mBandInfo:Lcom/cashwalk/cashwalk/model/BandInfo;

    .line 424
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 523
    :cond_1
    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v15, p2

    .line 426
    check-cast v15, Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo;

    .line 427
    .local v15, "sedentaryInfo":Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getData: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v15}, Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo;->toJson()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v15    # "sedentaryInfo":Lcom/zeroner/android_zeroner_ble/model/SedentaryInfo;
    :sswitch_1
    move-object/from16 v4, p2

    .line 431
    check-cast v4, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;

    .line 432
    .local v4, "curr":Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mBandInfo:Lcom/cashwalk/cashwalk/model/BandInfo;

    move-object/from16 v21, v0

    invoke-virtual {v4}, Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;->toJson()Ljava/lang/String;

    move-result-object v20

    const-class v22, Lcom/cashwalk/cashwalk/model/BandInfo;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/cashwalk/cashwalk/model/BandInfo;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/model/BandInfo;->setDailyData(Lcom/cashwalk/cashwalk/model/BandInfo;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mDailyDataListener:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mBandInfo:Lcom/cashwalk/cashwalk/model/BandInfo;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;->onSuccess(Lcom/cashwalk/cashwalk/model/BandInfo;)V

    goto :goto_0

    .end local v4    # "curr":Lcom/zeroner/android_zeroner_ble/model/CurrData_0x29;
    :sswitch_2
    move-object/from16 v19, p2

    .line 438
    check-cast v19, Lcom/zeroner/android_zeroner_ble/model/UserInfo;

    .line 439
    .local v19, "user":Lcom/zeroner/android_zeroner_ble/model/UserInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mBandInfo:Lcom/cashwalk/cashwalk/model/BandInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v19}, Lcom/zeroner/android_zeroner_ble/model/UserInfo;->toJson()Ljava/lang/String;

    move-result-object v20

    const-class v22, Lcom/cashwalk/cashwalk/model/BandInfo;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/cashwalk/cashwalk/model/BandInfo;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/model/BandInfo;->setUserInfo(Lcom/cashwalk/cashwalk/model/BandInfo;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mUserInfoListener:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mBandInfo:Lcom/cashwalk/cashwalk/model/BandInfo;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;->onSuccess(Lcom/cashwalk/cashwalk/model/BandInfo;)V

    goto/16 :goto_0

    .end local v19    # "user":Lcom/zeroner/android_zeroner_ble/model/UserInfo;
    :sswitch_3
    move-object/from16 v13, p2

    .line 444
    check-cast v13, Lcom/zeroner/android_zeroner_ble/model/Power;

    .line 445
    .local v13, "power":Lcom/zeroner/android_zeroner_ble/model/Power;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mBandInfo:Lcom/cashwalk/cashwalk/model/BandInfo;

    move-object/from16 v21, v0

    invoke-virtual {v13}, Lcom/zeroner/android_zeroner_ble/model/Power;->toJson()Ljava/lang/String;

    move-result-object v20

    const-class v22, Lcom/cashwalk/cashwalk/model/BandInfo;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/cashwalk/cashwalk/model/BandInfo;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/model/BandInfo;->setBattery(Lcom/cashwalk/cashwalk/model/BandInfo;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mBatteryListener:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mBandInfo:Lcom/cashwalk/cashwalk/model/BandInfo;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;->onSuccess(Lcom/cashwalk/cashwalk/model/BandInfo;)V

    goto/16 :goto_0

    .end local v13    # "power":Lcom/zeroner/android_zeroner_ble/model/Power;
    :sswitch_4
    move-object/from16 v9, p2

    .line 451
    check-cast v9, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;

    .line 452
    .local v9, "heartRate":Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mBandInfo:Lcom/cashwalk/cashwalk/model/BandInfo;

    move-object/from16 v21, v0

    invoke-virtual {v9}, Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;->toJson()Ljava/lang/String;

    move-result-object v20

    const-class v22, Lcom/cashwalk/cashwalk/model/BandHeart;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/cashwalk/cashwalk/model/BandHeart;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/cashwalk/cashwalk/model/BandInfo;->heartData:Lcom/cashwalk/cashwalk/model/BandHeart;

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "heartData call success"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mBandInfo:Lcom/cashwalk/cashwalk/model/BandInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/cashwalk/cashwalk/model/BandInfo;->heartData:Lcom/cashwalk/cashwalk/model/BandHeart;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/cashwalk/cashwalk/model/BandHeart;->hourData:[I

    .line 458
    .local v3, "bpmArr":[I
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    .line 459
    .local v8, "heartDatas":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mBandDBHelper:Lcom/cashwalk/cashwalk/util/BandDBHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/cashwalk/cashwalk/util/BandDBHelper;->syncHeartData(Ljava/lang/String;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mHeartRateListener:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mHeartRateListener:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mBandInfo:Lcom/cashwalk/cashwalk/model/BandInfo;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;->onSuccess(Lcom/cashwalk/cashwalk/model/BandInfo;)V

    goto/16 :goto_0

    .end local v3    # "bpmArr":[I
    .end local v8    # "heartDatas":Ljava/lang/String;
    .end local v9    # "heartRate":Lcom/zeroner/android_zeroner_ble/model/TB_v3_heartRate_data_hours;
    :sswitch_5
    move-object/from16 v10, p2

    .line 468
    check-cast v10, Lcom/zeroner/android_zeroner_ble/model/FMdeviceInfo;

    .line 469
    .local v10, "info":Lcom/zeroner/android_zeroner_ble/model/FMdeviceInfo;
    invoke-virtual {v10}, Lcom/zeroner/android_zeroner_ble/model/FMdeviceInfo;->toJson()Ljava/lang/String;

    move-result-object v20

    const-class v21, Lcom/cashwalk/cashwalk/model/BandInfo;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cashwalk/cashwalk/model/BandInfo;

    .line 470
    .local v6, "fmData":Lcom/cashwalk/cashwalk/model/BandInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mOnFirmwareListener:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;->onSuccess(Lcom/cashwalk/cashwalk/model/BandInfo;)V

    goto/16 :goto_0

    .line 474
    .end local v6    # "fmData":Lcom/cashwalk/cashwalk/model/BandInfo;
    .end local v10    # "info":Lcom/zeroner/android_zeroner_ble/model/FMdeviceInfo;
    :sswitch_6
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sleep_data;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 476
    .local v14, "pref":Landroid/content/SharedPreferences;
    const-string v20, "CASHBAND_SETTING_SELECT_AUTO_SLEEP"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 477
    .local v11, "isSelectAutoSleep":Z
    if-eqz v11, :cond_1

    .line 481
    invoke-virtual/range {p2 .. p2}, Lcom/zeroner/android_zeroner_ble/model/Result;->toJson()Ljava/lang/String;

    move-result-object v20

    const-class v21, Lcom/cashwalk/cashwalk/model/BandSleep;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/cashwalk/cashwalk/model/BandSleep;

    .line 482
    .local v16, "sleep":Lcom/cashwalk/cashwalk/model/BandSleep;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "v3SleepData.toJson()"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Lcom/zeroner/android_zeroner_ble/model/Result;->toJson()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mBandDBHelper:Lcom/cashwalk/cashwalk/util/BandDBHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/util/BandDBHelper;->sleepInsert(Lcom/cashwalk/cashwalk/model/BandSleep;)V

    .line 486
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v20

    const/16 v21, 0x5

    invoke-virtual/range {v20 .. v21}, Ljava/util/Calendar;->get(I)I

    move-result v18

    .line 487
    .local v18, "today":I
    move-object/from16 v0, v16

    iget v0, v0, Lcom/cashwalk/cashwalk/model/BandSleep;->day:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 488
    move-object/from16 v0, v16

    iget v0, v0, Lcom/cashwalk/cashwalk/model/BandSleep;->sleepType:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "sleep finish!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mOnSleepDataListener:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;->onSuccess(Lcom/cashwalk/cashwalk/model/BandInfo;)V

    goto/16 :goto_0

    .line 494
    .end local v11    # "isSelectAutoSleep":Z
    .end local v14    # "pref":Landroid/content/SharedPreferences;
    .end local v16    # "sleep":Lcom/cashwalk/cashwalk/model/BandSleep;
    .end local v18    # "today":I
    :cond_2
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/zeroner/android_zeroner_ble/model/TB_v3_sport_data;

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "v3SportData.toJson()"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Lcom/zeroner/android_zeroner_ble/model/Result;->toJson()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_7
    move-object/from16 v2, p2

    .line 501
    check-cast v2, Lcom/zeroner/android_zeroner_ble/model/Alerm;

    .line 502
    .local v2, "alarm":Lcom/zeroner/android_zeroner_ble/model/Alerm;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "alarm toJson: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v2}, Lcom/zeroner/android_zeroner_ble/model/Alerm;->toJson()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mBandInfo:Lcom/cashwalk/cashwalk/model/BandInfo;

    move-object/from16 v20, v0

    invoke-virtual {v2}, Lcom/zeroner/android_zeroner_ble/model/Alerm;->toJson()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/cashwalk/cashwalk/model/BandInfo;->alarm:Ljava/lang/String;

    goto/16 :goto_0

    .end local v2    # "alarm":Lcom/zeroner/android_zeroner_ble/model/Alerm;
    :sswitch_8
    move-object/from16 v12, p2

    .line 507
    check-cast v12, Lcom/zeroner/android_zeroner_ble/model/KeyModel;

    .line 508
    .local v12, "keymode":Lcom/zeroner/android_zeroner_ble/model/KeyModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "keymode toJson: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v12}, Lcom/zeroner/android_zeroner_ble/model/KeyModel;->toJson()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-virtual {v12}, Lcom/zeroner/android_zeroner_ble/model/KeyModel;->toJson()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->keyModeParser(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v12    # "keymode":Lcom/zeroner/android_zeroner_ble/model/KeyModel;
    :sswitch_9
    move-object/from16 v17, p2

    .line 513
    check-cast v17, Lcom/zeroner/android_zeroner_ble/model/SportType;

    .line 514
    .local v17, "sportType":Lcom/zeroner/android_zeroner_ble/model/SportType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "sportType toJson: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Lcom/zeroner/android_zeroner_ble/model/SportType;->toJson()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v17    # "sportType":Lcom/zeroner/android_zeroner_ble/model/SportType;
    :sswitch_a
    move-object/from16 v5, p2

    .line 519
    check-cast v5, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;

    .line 520
    .local v5, "deviceSetting":Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->TAG:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "deviceSetting toJson: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v5}, Lcom/zeroner/android_zeroner_ble/model/DeviceSetting;->toJson()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 424
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_3
        0x15 -> :sswitch_7
        0x17 -> :sswitch_0
        0x19 -> :sswitch_a
        0x1a -> :sswitch_9
        0x21 -> :sswitch_2
        0x28 -> :sswitch_6
        0x29 -> :sswitch_1
        0x40 -> :sswitch_8
        0x53 -> :sswitch_4
    .end sparse-switch
.end method

.method public getDeviceStateDate()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mDevice:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    invoke-virtual {v0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getDeviceStateDate()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->requestBandTask([B)V

    .line 351
    return-void
.end method

.method public getFmVersion(Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mOnFirmwareListener:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;

    .line 170
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mDevice:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    invoke-virtual {v0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getFmVersionInfo()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->requestBandTask([B)V

    .line 171
    return-void
.end method

.method public getHeartData(Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mHeartRateListener:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;

    .line 165
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mDevice:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->syncHeartRateHoursData(I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->requestBandTask([B)V

    .line 166
    return-void
.end method

.method public getUserInfo(Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mUserInfoListener:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;

    .line 155
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mDevice:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    invoke-virtual {v0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->readPersonalInformation()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->requestBandTask([B)V

    .line 156
    return-void
.end method

.method public onCharacteristicWriteData()V
    .locals 2

    .prologue
    .line 573
    invoke-super {p0}, Lcom/zeroner/android_zeroner_ble/bluetooth/BluetoothDataParseBiz;->onCharacteristicWriteData()V

    .line 574
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->TAG:Ljava/lang/String;

    const-string v1, "onCharacteristicWriteData: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    return-void
.end method

.method public readSedentaryReminder()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mDevice:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    invoke-virtual {v0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->readSedentaryReminder()V

    .line 387
    return-void
.end method

.method public setBandDisplayInfo()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 199
    iget-object v6, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 200
    .local v5, "pref":Landroid/content/SharedPreferences;
    const-string v6, "CASHBAND_SETTING_SELECT_TIME"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 201
    .local v4, "isSelectTime":Z
    const-string v6, "CASHBAND_SETTING_SELECT_DATE"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 202
    .local v2, "isSelectDate":Z
    const-string v6, "CASHBAND_SETTING_SELECT_METER"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 203
    .local v3, "isSelectMeter":Z
    const-string v6, "CASHBAND_SETTING_SELECT_AUTO_SLEEP"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 205
    .local v1, "isSelectAutoSleep":Z
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 207
    .local v0, "array":Landroid/util/SparseBooleanArray;
    invoke-virtual {v0, v7, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 208
    const/4 v9, 0x2

    if-nez v3, :cond_1

    move v6, v7

    :goto_0
    invoke-virtual {v0, v9, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 209
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 210
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 211
    if-nez v2, :cond_0

    move v8, v7

    :cond_0
    invoke-virtual {v0, v10, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 212
    iget-object v6, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mDevice:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    const/16 v8, 0x17

    invoke-virtual {v6, v0, v10, v8, v7}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->setWristBandGestureAndLight(Landroid/util/SparseBooleanArray;III)[B

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->requestBandTask([B)V

    .line 213
    return-void

    :cond_1
    move v6, v8

    .line 208
    goto :goto_0
.end method

.method public setOnCameraCaptureListener(Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnCameraCaptureListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnCameraCaptureListener;

    .prologue
    .line 589
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mOnCameraCaptureListener:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnCameraCaptureListener;

    .line 590
    return-void
.end method

.method public setOnConnectFinishListener(Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnDeviceConnectListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnDeviceConnectListener;

    .prologue
    .line 605
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->TAG:Ljava/lang/String;

    const-string v1, "setOnConnectFinishListener: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mOnDeviceConnectListener:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnDeviceConnectListener;

    .line 607
    return-void
.end method

.method public setPedometer()V
    .locals 21

    .prologue
    .line 357
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 358
    .local v19, "pref":Landroid/content/SharedPreferences;
    const-string v1, "CASHBAND_MOVEMENT_LUNCH"

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 359
    .local v17, "isLunchMode":Z
    const-string v1, "CASHBAND_MOVEMENT_IS_ON"

    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 361
    .local v18, "isPedometerOn":Z
    const/4 v15, 0x0

    .line 362
    .local v15, "dayOfWeek":I
    const/16 v20, 0x0

    .line 363
    .local v20, "startTime":I
    const/16 v16, 0x0

    .line 364
    .local v16, "endTime":I
    const/4 v6, 0x0

    .line 365
    .local v6, "alertDuration":I
    const/4 v7, 0x0

    .line 367
    .local v7, "workCount":I
    if-eqz v18, :cond_0

    .line 368
    const/16 v6, 0x3c

    .line 369
    const/16 v7, 0x32

    .line 370
    const-string v1, "CASHBAND_MOVEMENT_DAY_OF_WEEK"

    const/16 v2, 0xff

    move-object/from16 v0, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 371
    const-string v1, "CASHBAND_MOVEMENT_START_TIME"

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 372
    const-string v1, "CASHBAND_MOVEMENT_END_TIME"

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 375
    :cond_0
    if-eqz v17, :cond_1

    .line 376
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mDevice:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    const/4 v2, 0x0

    int-to-byte v3, v15

    move/from16 v0, v20

    int-to-byte v4, v0

    const/16 v5, 0xc

    invoke-virtual/range {v1 .. v7}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeDataToPedomater(IIIIII)V

    .line 377
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mDevice:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    const/4 v2, 0x1

    int-to-byte v3, v15

    const/16 v4, 0xe

    move/from16 v0, v16

    int-to-byte v5, v0

    invoke-virtual/range {v1 .. v7}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeDataToPedomater(IIIIII)V

    .line 383
    :goto_0
    return-void

    .line 380
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mDevice:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    const/4 v2, 0x0

    int-to-byte v3, v15

    move/from16 v0, v20

    int-to-byte v4, v0

    move/from16 v0, v16

    int-to-byte v5, v0

    invoke-virtual/range {v1 .. v7}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeDataToPedomater(IIIIII)V

    .line 381
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mDevice:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeDataToPedomater(IIIIII)V

    goto :goto_0
.end method

.method public setSportMode(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "modeCodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 318
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 320
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 321
    .local v2, "index":I
    if-ne v2, v6, :cond_1

    .line 322
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 337
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 338
    mul-int/lit16 v4, v1, 0x3e8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    mul-int/lit16 v4, v1, 0x3e8

    const/16 v5, 0xff

    ushr-int/2addr v4, v5

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 323
    .end local v1    # "i":I
    :cond_1
    if-ne v2, v7, :cond_2

    .line 324
    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 325
    :cond_2
    if-ne v2, v8, :cond_3

    .line 326
    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 327
    :cond_3
    if-ne v2, v9, :cond_4

    .line 328
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 329
    :cond_4
    const/4 v4, 0x5

    if-ne v2, v4, :cond_5

    .line 330
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 331
    :cond_5
    const/4 v4, 0x6

    if-ne v2, v4, :cond_6

    .line 332
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 333
    :cond_6
    const/4 v4, 0x7

    if-ne v2, v4, :cond_0

    .line 334
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 343
    .restart local v1    # "i":I
    :cond_7
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mDevice:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    invoke-virtual {v4, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->setSportGole(Ljava/util/ArrayList;)[B

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->requestBandTask([B)V

    .line 344
    return-void
.end method

.method public setUserInfo(IIZII)V
    .locals 7
    .param p1, "height"    # I
    .param p2, "weight"    # I
    .param p3, "gender"    # Z
    .param p4, "age"    # I
    .param p5, "goal"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mDevice:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandUserNew(IIZII)[B

    move-result-object v6

    .line 192
    .local v6, "data":[B
    invoke-direct {p0, v6}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->requestBandTask([B)V

    .line 193
    return-void
.end method

.method public setVibrate()V
    .locals 15

    .prologue
    .line 273
    iget-object v11, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 275
    .local v10, "pref":Landroid/content/SharedPreferences;
    const-string v11, "CASHBAND_VIBRATE_CALL_MODE"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 276
    .local v0, "callMode":I
    const-string v11, "CASHBAND_VIBRATE_CALL_MODE_COUNT"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 277
    .local v1, "callModeCount":I
    const-string v11, "CASHBAND_VIBRATE_MSG_MODE"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 278
    .local v7, "msgMode":I
    const-string v11, "CASHBAND_VIBRATE_MSG_MODE_COUNT"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 279
    .local v8, "msgModeCount":I
    const-string v11, "CASHBAND_VIBRATE_MOVEMENT_MODE"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 280
    .local v5, "movementMode":I
    const-string v11, "CASHBAND_VIBRATE_MOVEMENT_MODE_COUNT"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 282
    .local v6, "movementModeCount":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v3, "model":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 285
    .local v9, "phoneMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v11, "index"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v11, "number"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string/jumbo v11, "type"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 291
    .local v2, "messageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v11, "index"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v11, "number"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string/jumbo v11, "type"

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 297
    .local v4, "movementMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v11, "index"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v4, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v11, "number"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v4, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string/jumbo v11, "type"

    const/4 v12, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v4, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v11, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mDevice:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->setPhoneStatue(IIILjava/util/ArrayList;)[B

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->requestBandTask([B)V

    .line 310
    return-void
.end method

.method public setWeather()V
    .locals 9

    .prologue
    .line 220
    :try_start_0
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 221
    .local v2, "pref":Landroid/content/SharedPreferences;
    new-instance v4, Lorg/json/JSONObject;

    const-string v5, "LOCKSCREEN_WEATHER_JSON"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/cashwalk/cashwalk/util/network/ResponseParser;->parseWeather(Lorg/json/JSONObject;)Lcom/cashwalk/cashwalk/util/network/model/Weather;

    move-result-object v3

    .line 222
    .local v3, "weather":Lcom/cashwalk/cashwalk/util/network/model/Weather;
    const-string v4, "CASHBAND_SETTING_SELECT_TEMP"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 224
    .local v1, "isSubssi":Z
    if-nez v1, :cond_0

    .line 226
    iget-wide v4, v3, Lcom/cashwalk/cashwalk/util/network/model/Weather;->tempNow:D

    const-wide v6, 0x3ffccccccccccccdL    # 1.8

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4040000000000000L    # 32.0

    add-double/2addr v4, v6

    iput-wide v4, v3, Lcom/cashwalk/cashwalk/util/network/model/Weather;->tempNow:D

    .line 229
    :cond_0
    iget-object v4, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mDevice:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    const/4 v5, 0x0

    iget-wide v6, v3, Lcom/cashwalk/cashwalk/util/network/model/Weather;->tempNow:D

    double-to-int v6, v6

    iget-object v7, v3, Lcom/cashwalk/cashwalk/util/network/model/Weather;->skyCode:Ljava/lang/String;

    .line 231
    invoke-static {v7}, Lcom/cashwalk/cashwalk/util/Utils;->skyCodeToBandWeatherCode(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    .line 229
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWeather(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v1    # "isSubssi":Z
    .end local v2    # "pref":Landroid/content/SharedPreferences;
    .end local v3    # "weather":Lcom/cashwalk/cashwalk/util/network/model/Weather;
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setWristBandCamera(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 390
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mDevice:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    invoke-virtual {v0, p1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->setWristBandSelfie(Z)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->requestBandTask([B)V

    .line 391
    return-void
.end method

.method public updateHeartData()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mDevice:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->syncHeartRateHoursData(I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->requestBandTask([B)V

    .line 180
    return-void
.end method

.method public writeAlarm(II)V
    .locals 7
    .param p1, "day"    # I
    .param p2, "index"    # I

    .prologue
    .line 398
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 399
    .local v6, "calendar":Ljava/util/Calendar;
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->mDevice:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    const/16 v1, 0xb

    .line 402
    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v1, 0xc

    .line 403
    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v4, v1, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\uc54c\ub9bc-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v1, p2

    move v2, p1

    .line 399
    invoke-virtual/range {v0 .. v5}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeAlarm(IIIILjava/lang/String;)V

    .line 405
    return-void
.end method
