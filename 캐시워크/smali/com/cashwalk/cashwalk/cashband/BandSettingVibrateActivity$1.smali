.class Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity$1;
.super Ljava/lang/Object;
.source "BandSettingVibrateActivity.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;

.field final synthetic val$progress:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 2
    .param p1, "err"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 63
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->access$002(Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;)Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    .line 64
    return-void
.end method

.method public onSuccess(Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;)V
    .locals 1
    .param p1, "cashBandManager"    # Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 57
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;

    invoke-static {v0, p1}, Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;->access$002(Lcom/cashwalk/cashwalk/cashband/BandSettingVibrateActivity;Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;)Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    .line 58
    return-void
.end method
