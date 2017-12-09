.class Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice$4;
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
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice$4;->this$0:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    .line 1102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice$4;->this$0:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    const/4 v1, 0x3

    iput v1, v0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->BLUETOOTH_LIB_VERSION:I

    .line 1107
    return-void
.end method
