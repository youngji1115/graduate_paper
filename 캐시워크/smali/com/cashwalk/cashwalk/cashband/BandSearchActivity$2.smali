.class Lcom/cashwalk/cashwalk/cashband/BandSearchActivity$2;
.super Ljava/lang/Object;
.source "BandSearchActivity.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->connectDevice()V
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
    .line 148
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 2
    .param p1, "err"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->access$300(Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 159
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->access$102(Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;Z)Z

    .line 160
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;

    invoke-static {v0, p1}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->access$500(Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;I)V

    .line 161
    return-void
.end method

.method public onSuccess(Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;)V
    .locals 2
    .param p1, "cashBandManager"    # Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->access$300(Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 152
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->access$102(Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;Z)Z

    .line 153
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity$2;->this$0:Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;->access$400(Lcom/cashwalk/cashwalk/cashband/BandSearchActivity;)V

    .line 154
    return-void
.end method
