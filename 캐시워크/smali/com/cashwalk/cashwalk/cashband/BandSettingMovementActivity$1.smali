.class Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity$1;
.super Ljava/lang/Object;
.source "BandSettingMovementActivity.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;

.field final synthetic val$progress:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 2
    .param p1, "err"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 89
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->access$002(Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;)Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    .line 90
    return-void
.end method

.method public onSuccess(Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;)V
    .locals 1
    .param p1, "cashBandManager"    # Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 81
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;

    invoke-static {v0, p1}, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->access$002(Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;)Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    .line 82
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->access$000(Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;)Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->readSedentaryReminder()V

    .line 83
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;->access$100(Lcom/cashwalk/cashwalk/cashband/BandSettingMovementActivity;)V

    .line 84
    return-void
.end method
