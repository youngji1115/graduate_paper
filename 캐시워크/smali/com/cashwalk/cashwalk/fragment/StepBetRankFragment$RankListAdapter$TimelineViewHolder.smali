.class Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;
.super Ljava/lang/Object;
.source "StepBetRankFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimelineViewHolder"
.end annotation


# instance fields
.field average:Landroid/widget/TextView;

.field crown:Landroid/widget/ImageView;

.field level:Landroid/widget/TextView;

.field nickname:Landroid/widget/TextView;

.field profile:Landroid/widget/ImageView;

.field profile_line:Landroid/widget/ImageView;

.field rank:Landroid/widget/TextView;

.field steps:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;


# direct methods
.method private constructor <init>(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;->this$1:Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;
    .param p2, "x1"    # Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$1;

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter$TimelineViewHolder;-><init>(Lcom/cashwalk/cashwalk/fragment/StepBetRankFragment$RankListAdapter;)V

    return-void
.end method
