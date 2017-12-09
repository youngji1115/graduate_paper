.class Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$16;
.super Ljava/lang/Object;
.source "StepBetTimelineAddActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->addOGTypeMemo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    .prologue
    .line 664
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$16;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 667
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$16;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$1200(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 668
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 669
    return-void
.end method
