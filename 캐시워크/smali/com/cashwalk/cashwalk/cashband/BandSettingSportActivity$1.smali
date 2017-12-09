.class Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity$1;
.super Ljava/lang/Object;
.source "BandSettingSportActivity.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;

.field final synthetic val$progress:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 2
    .param p1, "err"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 67
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->access$002(Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;)Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    .line 68
    return-void
.end method

.method public onSuccess(Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;)V
    .locals 1
    .param p1, "cashBandManager"    # Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 61
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;

    invoke-static {v0, p1}, Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;->access$002(Lcom/cashwalk/cashwalk/cashband/BandSettingSportActivity;Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;)Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    .line 62
    return-void
.end method
