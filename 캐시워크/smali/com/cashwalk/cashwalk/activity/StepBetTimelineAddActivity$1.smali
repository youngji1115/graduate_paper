.class Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$1;
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
    .line 200
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    .line 203
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$000(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$100(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity$1;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;->access$202(Lcom/cashwalk/cashwalk/activity/StepBetTimelineAddActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    return-void
.end method
