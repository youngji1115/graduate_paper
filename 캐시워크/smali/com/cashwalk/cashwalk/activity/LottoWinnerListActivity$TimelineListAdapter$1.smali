.class Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$1;
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


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$1;->val$item:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;

    iget-object v0, v0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;

    invoke-static {v2}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->access$700(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/cashwalk/cashwalk/util/PhotoViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "item"

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$1;->val$item:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "likes"

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$1;->this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;

    iget-object v3, v3, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->this$0:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;

    invoke-static {v3}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->access$200(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "winner_list"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity;->startActivity(Landroid/content/Intent;)V

    .line 274
    return-void
.end method
