.class Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity$1;
.super Ljava/lang/Object;
.source "StepBetTimelineFeedbackActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 49
    if-eqz p2, :cond_0

    .line 50
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;->access$000(Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 51
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;->access$100(Lcom/cashwalk/cashwalk/activity/StepBetTimelineFeedbackActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 54
    :cond_0
    return-void
.end method
