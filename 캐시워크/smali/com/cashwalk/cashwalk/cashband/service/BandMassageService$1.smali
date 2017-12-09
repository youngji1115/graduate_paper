.class Lcom/cashwalk/cashwalk/cashband/service/BandMassageService$1;
.super Ljava/lang/Object;
.source "BandMassageService.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;->kitkatMsg(Landroid/service/notification/StatusBarNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;

.field final synthetic val$finalMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/service/BandMassageService$1;->this$0:Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/cashband/service/BandMassageService$1;->val$finalMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 2
    .param p1, "err"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/service/BandMassageService$1;->this$0:Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;->access$000(Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\uce90\uc2dc\uc6cc\uce58 \uc5f0\uacb0 \uc2e4\ud328"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method

.method public onSuccess(Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;)V
    .locals 4
    .param p1, "cashBandManager"    # Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/service/BandMassageService$1;->this$0:Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;

    .line 128
    invoke-static {v0}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->getInstance(Landroid/content/Context;)Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/service/BandMassageService$1;->this$0:Lcom/cashwalk/cashwalk/cashband/service/BandMassageService;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/service/BandMassageService$1;->val$finalMsg:Ljava/lang/String;

    .line 129
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/zeroner/android_zeroner_ble/bluetooth/WristBandDevice;->writeWristBandFontLibrary(Landroid/content/Context;ILjava/lang/String;)V

    .line 130
    return-void
.end method
