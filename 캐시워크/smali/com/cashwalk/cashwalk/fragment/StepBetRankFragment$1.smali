.class Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$1;
.super Ljava/lang/Object;
.source "StepBetRankFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;->access$000(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment;)V

    .line 96
    return-void
.end method
