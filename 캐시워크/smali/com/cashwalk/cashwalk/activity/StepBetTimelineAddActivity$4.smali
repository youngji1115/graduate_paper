.class Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$4;
.super Ljava/lang/Object;
.source "StepBetTimelineAddActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 224
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 227
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$400(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 228
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$4;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-virtual {v1, v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->startActivity(Landroid/content/Intent;)V

    .line 230
    return-void
.end method
