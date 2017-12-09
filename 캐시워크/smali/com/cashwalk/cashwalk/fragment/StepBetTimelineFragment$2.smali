.class Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$2;
.super Ljava/lang/Object;
.source "StepBetTimelineFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 92
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    invoke-virtual {v2}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->startActivity(Landroid/content/Intent;)V

    .line 96
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment$2;->this$0:Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f050019

    const v2, 0x7f050017

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 97
    return-void
.end method
