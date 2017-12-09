.class Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2;
.super Lcom/cashwalk/cashwalk/util/OnSingleClickListener;
.source "StepBetTimelineDetailActivity.java"


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

.field final synthetic val$commentItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2;->val$commentItem:Lcom/cashwalk/cashwalk/util/network/model/TimelineComment;

    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/OnSingleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 228
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 229
    .local v0, "ab":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090241

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 230
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090242

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2$1;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2$1;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 236
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2;->this$1:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2;->this$0:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;

    invoke-virtual {v1}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090240

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2$2;

    invoke-direct {v2, p0}, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2$2;-><init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 263
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 264
    return-void
.end method
