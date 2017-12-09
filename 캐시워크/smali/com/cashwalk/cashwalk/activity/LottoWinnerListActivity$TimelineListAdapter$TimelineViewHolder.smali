.class Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;
.super Ljava/lang/Object;
.source "LottoWinnerListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimelineViewHolder"
.end annotation


# instance fields
.field address:Landroid/widget/TextView;

.field ago:Landroid/widget/TextView;

.field body:Landroid/widget/TextView;

.field commentCnt:Landroid/widget/TextView;

.field feedback:Landroid/widget/TextView;

.field image:Landroid/widget/ImageView;

.field likeCnt:Landroid/widget/TextView;

.field likeIcon:Landroid/widget/ImageView;

.field main:Landroid/widget/LinearLayout;

.field nickname:Landroid/widget/TextView;

.field profile:Landroid/widget/ImageView;

.field rank:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;


# direct methods
.method private constructor <init>(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;->this$1:Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;
    .param p2, "x1"    # Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$1;

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter$TimelineViewHolder;-><init>(Lcom/cashwalk/cashwalk/activity/LottoWinnerListActivity$TimelineListAdapter;)V

    return-void
.end method
