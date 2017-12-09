.class Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;
.super Ljava/lang/Object;
.source "FriendRankFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimelineViewHolder"
.end annotation


# instance fields
.field average:Landroid/widget/TextView;

.field btn_cancel_add_friend:Landroid/widget/Button;

.field crown:Landroid/widget/ImageView;

.field nickname:Landroid/widget/TextView;

.field profile:Landroid/widget/ImageView;

.field profile_line:Landroid/widget/ImageView;

.field rank:Landroid/widget/TextView;

.field rl_default_item:Landroid/widget/RelativeLayout;

.field rl_recommend_count_item:Landroid/widget/RelativeLayout;

.field steps:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;

.field tv_recommend_count:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;)V
    .locals 0

    .prologue
    .line 655
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;->this$1:Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;
    .param p2, "x1"    # Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$1;

    .prologue
    .line 655
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter$TimelineViewHolder;-><init>(Lcom/cashwalk/cashwalk/fragment/FriendRankFragment$RankListAdapter;)V

    return-void
.end method
