.class Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity$1;
.super Ljava/lang/Object;
.source "BandSettingFirmwareActivity.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 3
    .param p1, "err"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->access$000(Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 86
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->access$102(Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;)Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    .line 87
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090112

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 88
    return-void
.end method

.method public onSuccess(Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;)V
    .locals 1
    .param p1, "cashBandManager"    # Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->access$000(Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 79
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;

    invoke-static {v0, p1}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->access$102(Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;)Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    .line 80
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;->access$200(Lcom/cashwalk/cashwalk/cashband/BandSettingFirmwareActivity;)V

    .line 81
    return-void
.end method
