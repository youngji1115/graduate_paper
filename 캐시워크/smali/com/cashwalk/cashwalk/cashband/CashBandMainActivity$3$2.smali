.class Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3$2;
.super Ljava/lang/Object;
.source "CashBandMainActivity.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnRefreshFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;->onSuccess(Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3$2;->this$1:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/cashwalk/cashwalk/model/BandInfo;)V
    .locals 1
    .param p1, "result"    # Lcom/cashwalk/cashwalk/model/BandInfo;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3$2;->this$1:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity$3;->this$0:Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;->access$100(Lcom/cashwalk/cashwalk/cashband/CashBandMainActivity;)Z

    .line 233
    return-void
.end method
