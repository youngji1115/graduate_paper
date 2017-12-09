.class public Lcom/zeroner/android_zeroner_ble/common/Constants$DataType;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeroner/android_zeroner_ble/common/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataType"
.end annotation


# static fields
.field public static final CMD_GRP_CONFIG:I = 0x1

.field public static final CMD_GRP_DATALOG:I = 0x2

.field public static final CMD_GRP_DEVICE:I = 0x0

.field public static final CMD_GRP_MSG:I = 0x3

.field public static final CMD_HEARTRATE_MSG:I = 0x5

.field public static final CMD_ID_CONFIG_GET_AC:I = 0x5

.field public static final CMD_ID_CONFIG_GET_BLE:I = 0x3

.field public static final CMD_ID_CONFIG_GET_HW_OPTION:I = 0x9

.field public static final CMD_ID_CONFIG_GET_NMA:I = 0x7

.field public static final CMD_ID_CONFIG_GET_TIME:I = 0x1

.field public static final CMD_ID_CONFIG_SET_AC:I = 0x4

.field public static final CMD_ID_CONFIG_SET_BLE:I = 0x2

.field public static final CMD_ID_CONFIG_SET_HW_OPTION:I = 0x8

.field public static final CMD_ID_CONFIG_SET_NMA:I = 0x6

.field public static final CMD_ID_CONFIG_SET_TIME:I = 0x0

.field public static final CMD_ID_CONFIG_SPORT_TYPE:I = 0xa

.field public static final CMD_ID_CONFIG_SPORT_TYPE_GOLE:I = 0xb

.field public static final CMD_ID_CONFIG_SPORT_TYPE_READ_GOLE:I = 0xc

.field public static final CMD_ID_DATALOG_CLEAR_ALL:I = 0x2

.field public static final CMD_ID_DATALOG_GET_BODY_PARAM:I = 0x1

.field public static final CMD_ID_DATALOG_GET_CUR_DAY_DATA:I = 0x7

.field public static final CMD_ID_DATALOG_SET_BODY_PARAM:I = 0x0

.field public static final CMD_ID_DATALOG_START_GET_DAY_DATA:I = 0x3

.field public static final CMD_ID_DATALOG_START_GET_MINUTE_DATA:I = 0x5

.field public static final CMD_ID_DATALOG_STOP_GET_DAY_DATA:I = 0x4

.field public static final CMD_ID_DATALOG_STOP_GET_MINUTE_DATA:I = 0x6

.field public static final CMD_ID_DEVICE_GET_BATTERY:I = 0x1

.field public static final CMD_ID_DEVICE_GET_INFORMATION:I = 0x0

.field public static final CMD_ID_DEVICE_RESE:I = 0x2

.field public static final CMD_ID_DEVICE_UPDATE:I = 0x3

.field public static final CMD_ID_MSG_DOWNLOAD:I = 0x1

.field public static final CMD_ID_MSG_MULTI_DOWNLOAD_CONTINUE:I = 0x3

.field public static final CMD_ID_MSG_MULTI_DOWNLOAD_END:I = 0x4

.field public static final CMD_ID_MSG_MULTI_DOWNLOAD_START:I = 0x2

.field public static final CMD_ID_MSG_UPLOAD:I = 0x0

.field public static final CMD_ID_NFC_ONE:I = 0x1

.field public static final CMD_ID_NFC_ZERO:I = 0x0

.field public static final CMD_ID_PHONE_ALERT:I = 0x1

.field public static final CMD_ID_PHONE_PRESSKEY:I = 0x0

.field public static final CMD_ID_QUIETMODE_ZERO:I = 0x0

.field public static final CMD_ID_SET_QUIETMODE_SIX:I = 0x6

.field public static final CMD_PHONE_MSG:I = 0x4

.field public static final PREFIX_NOTIFY:I = 0xff22

.field public static final PREFIX_WRITE:I = 0xff21


# instance fields
.field final synthetic this$0:Lcom/zeroner/android_zeroner_ble/common/Constants;


# direct methods
.method public constructor <init>(Lcom/zeroner/android_zeroner_ble/common/Constants;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/common/Constants$DataType;->this$0:Lcom/zeroner/android_zeroner_ble/common/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
