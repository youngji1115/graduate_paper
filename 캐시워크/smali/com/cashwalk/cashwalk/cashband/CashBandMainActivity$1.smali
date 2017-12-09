.class Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$1;
.super Ljava/lang/Object;
.source "CashBandMainActivity.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->bluetoothConnect(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/cashwalk/cashwalk/model/BandInfo;)V
    .locals 1
    .param p1, "result"    # Lcom/cashwalk/cashwalk/model/BandInfo;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->access$000(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)V

    .line 188
    return-void
.end method
