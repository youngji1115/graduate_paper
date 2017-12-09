.class Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice$2;
.super Ljava/lang/Object;
.source "WristBandDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

.field private final synthetic val$gatt:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method constructor <init>(Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice$2;->this$0:Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    iput-object p2, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice$2;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    .line 909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice$2;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 913
    return-void
.end method
