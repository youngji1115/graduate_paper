.class Lcom/cashwalk/cashwalk/cashband/BandSearchActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BandSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 121
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->access$000(Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;)Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/cashwalk/cashwalk/cashband/adapter/SearchDeviceListAdapter;->addItem(Landroid/bluetooth/BluetoothDevice;)V

    .line 129
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const-string v2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->access$102(Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;Z)Z

    .line 126
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->access$200(Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;)Landroid/view/MenuItem;

    move-result-object v2

    const-string/jumbo v3, "\ub2e4\uc2dc\ucc3e\uae30"

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method
