.class Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$1;
.super Ljava/lang/Object;
.source "StepBetTimelineFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$1;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->refresh(ZLjava/lang/String;Z)V

    .line 88
    return-void
.end method
