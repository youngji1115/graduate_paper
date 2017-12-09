.class Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$3;
.super Ljava/lang/Object;
.source "LottoWinnerListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;

.field final synthetic val$item:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;ILcom/cashwalk/cashwalk/util/network/model/TimelineItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$3;->this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;

    iput p2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$3;->val$position:I

    iput-object p3, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$3;->val$item:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 313
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$3;->this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    iget v2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$3;->val$position:I

    invoke-static {v1, v2}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->access$002(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;I)I

    .line 314
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$3;->this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->access$700(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/cashwalk/cashwalk/activity/friend/MyFeedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 315
    .local v0, "startFeed":Landroid/content/Intent;
    const-string v1, "id"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$3;->val$item:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const-string v1, "name"

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$3;->val$item:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->user:Lcom/cashwalk/cashwalk/util/network/model/User;

    iget-object v2, v2, Lcom/cashwalk/cashwalk/util/network/model/User;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$3;->this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-virtual {v1, v0}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->startActivity(Landroid/content/Intent;)V

    .line 318
    return-void
.end method
