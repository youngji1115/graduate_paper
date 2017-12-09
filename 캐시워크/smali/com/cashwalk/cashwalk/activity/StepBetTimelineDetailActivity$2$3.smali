.class Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$3;
.super Ljava/lang/Object;
.source "StepBetTimelineDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;->handleResponse(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$3;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$3;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->access$700(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;)Landroid/support/v4/widget/NestedScrollView;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/NestedScrollView;->fullScroll(I)Z

    .line 274
    return-void
.end method
