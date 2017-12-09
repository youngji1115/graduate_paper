.class Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;
.super Ljava/lang/Object;
.source "LottoWinnerListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->setWinnerBanner(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

.field final synthetic val$winner:Lcom/cashwalk/cashwalk/util/network/model/Winner;

.field final synthetic val$winnerUserList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;Lcom/cashwalk/cashwalk/util/network/model/Winner;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;->val$winner:Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iput-object p3, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;->val$winnerUserList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5$1;-><init>(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$5;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 539
    return-void
.end method
