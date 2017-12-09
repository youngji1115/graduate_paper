.class Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$3;
.super Ljava/lang/Object;
.source "StepBetIntroActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->access$500(Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->access$500(Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity$3;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;->access$500(Lcom/cashwalk/cashwalk/activity/StepBetIntroActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
