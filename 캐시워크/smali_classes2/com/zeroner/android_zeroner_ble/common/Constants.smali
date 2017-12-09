.class public Lcom/zeroner/android_zeroner_ble/common/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zeroner/android_zeroner_ble/common/Constants$DataType;,
        Lcom/zeroner/android_zeroner_ble/common/Constants$Debug;
    }
.end annotation


# static fields
.field public static final ACTION_TIME_SERVICE:Ljava/lang/String; = "com.kunket.healthy.version_v3.ACTION_TIME_SERVICE"

.field public static final BAND_CHARACTERISTIC_NEW_INDICATE:Ljava/util/UUID;

.field public static final BAND_CHARACTERISTIC_NEW_NOTIFY:Ljava/util/UUID;

.field public static final BAND_CHARACTERISTIC_NEW_WRITE:Ljava/util/UUID;

.field public static final BAND_CHARACTERISTIC_NFC_INDICATE:Ljava/util/UUID;

.field public static final BAND_CHARACTERISTIC_NFC_WRITE:Ljava/util/UUID;

.field public static final BAND_DES_UUID:Ljava/util/UUID;

.field public static final BAND_SERVICE_MAIN_NEW:Ljava/util/UUID;

.field public static final DateFormat_DD_MM:I = 0x1

.field public static final DateFormat_MM_DD:I = 0x0

.field public static final HID_CHARACTERISTIC_UUID:Ljava/util/UUID;

.field public static final HID_SERVICE_UUID:Ljava/util/UUID;

.field public static final Language_Chinese:I = 0x0

.field public static final Language_English:I = 0x1

.field public static final Language_Italian:I = 0x3

.field public static final Language_Japanese:I = 0x4

.field public static final Language_Simple:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "0000ff20-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/zeroner/android_zeroner_ble/common/Constants;->BAND_SERVICE_MAIN_NEW:Ljava/util/UUID;

    .line 17
    const-string v0, "0000ff21-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/zeroner/android_zeroner_ble/common/Constants;->BAND_CHARACTERISTIC_NEW_WRITE:Ljava/util/UUID;

    .line 18
    const-string v0, "0000ff25-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/zeroner/android_zeroner_ble/common/Constants;->BAND_CHARACTERISTIC_NFC_WRITE:Ljava/util/UUID;

    .line 19
    const-string v0, "0000ff22-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/zeroner/android_zeroner_ble/common/Constants;->BAND_CHARACTERISTIC_NEW_NOTIFY:Ljava/util/UUID;

    .line 20
    const-string v0, "0000ff23-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/zeroner/android_zeroner_ble/common/Constants;->BAND_CHARACTERISTIC_NEW_INDICATE:Ljava/util/UUID;

    .line 21
    const-string v0, "0000ff25-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/zeroner/android_zeroner_ble/common/Constants;->BAND_CHARACTERISTIC_NFC_INDICATE:Ljava/util/UUID;

    .line 22
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/zeroner/android_zeroner_ble/common/Constants;->BAND_DES_UUID:Ljava/util/UUID;

    .line 27
    const-string v0, "00001812-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/zeroner/android_zeroner_ble/common/Constants;->HID_SERVICE_UUID:Ljava/util/UUID;

    .line 28
    const-string v0, "00002a4d-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/zeroner/android_zeroner_ble/common/Constants;->HID_CHARACTERISTIC_UUID:Ljava/util/UUID;

    .line 103
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
