.class Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;
.super Ljava/lang/Object;
.source "StepBetActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/StepBetActivity;->setWinnerBanner(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

.field final synthetic val$winner:Lcom/cashwalk/cashwalk/util/network/model/Winner;

.field final synthetic val$winnerUserList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/StepBetActivity;Lcom/cashwalk/cashwalk/util/network/model/Winner;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;->val$winner:Lcom/cashwalk/cashwalk/util/network/model/Winner;

    iput-object p3, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;->val$winnerUserList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    new-instance v1, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity$8$1;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetActivity$8;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 482
    return-void
.end method
