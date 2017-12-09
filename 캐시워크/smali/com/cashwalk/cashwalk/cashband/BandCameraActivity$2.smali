.class Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$2;
.super Ljava/lang/Object;
.source "BandCameraActivity.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 3
    .param p1, "err"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->access$100(Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->access$202(Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;)Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    .line 123
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;

    const-string/jumbo v1, "\uce90\uc2dc\uc6cc\uce58 \uc5f0\uacb0\uc5d0 \uc2e4\ud328\ud558\uc600\uc2b5\ub2c8\ub2e4.\n\uc6d0\uaca9 \ucd2c\uc601\uc774 \ubd88\uac00\ub2a5\ud569\ub2c8\ub2e4."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 124
    return-void
.end method

.method public onSuccess(Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;)V
    .locals 2
    .param p1, "cashBandManager"    # Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->access$100(Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;

    invoke-static {v0, p1}, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->access$202(Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;)Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    .line 115
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->access$200(Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;)Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->setWristBandCamera(Z)V

    .line 116
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->access$300(Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;)V

    .line 117
    return-void
.end method
