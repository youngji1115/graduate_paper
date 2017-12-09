.class Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$4;
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

.field final synthetic val$vh:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$4;->this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;

    iput-object p2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$4;->val$item:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iput-object p3, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$4;->val$vh:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;

    iput p4, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$4;->this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$4;->val$item:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget-object v1, v1, Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$4;->val$vh:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;

    iget-object v3, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$4;->val$item:Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;

    iget v4, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$4;->val$position:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;->access$800(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;Ljava/lang/String;Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;Lcom/cashwalk/cashwalk/util/network/model/TimelineItem;I)V

    .line 325
    return-void
.end method
