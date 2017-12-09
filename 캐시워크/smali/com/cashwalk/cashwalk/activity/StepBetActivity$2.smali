.class Lcom/cashwalk/cashwalk/activity/StepBetActivity$2;
.super Ljava/lang/Object;
.source "StepBetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/StepBetActivity;->initDefaultLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x2

    .line 153
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->access$100(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetActivity;->access$200(Lcom/cashwalk/cashwalk/activity/StepBetActivity;)Lcom/cashwalk/cashwalk/activity/StepBetActivity$TabsPagerAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetActivity$TabsPagerAdapter;->getFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;

    invoke-virtual {v0}, Lcom/cashwalk/cashwalk/fragment/StepBetTimelineFragment;->setScrollTop()V

    .line 156
    :cond_0
    return-void
.end method
