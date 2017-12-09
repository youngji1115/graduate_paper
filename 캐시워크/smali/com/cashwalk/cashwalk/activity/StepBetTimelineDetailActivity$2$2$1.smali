.class Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2$1;
.super Ljava/lang/Object;
.source "StepBetTimelineDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2;->onSingleClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2$1;->this$2:Lcom/cashwalk/cashwalk/activity/StepBetTimelineDetailActivity$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 233
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 234
    return-void
.end method
