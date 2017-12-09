.class Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$TimelineViewHolder;
.super Ljava/lang/Object;
.source "TimelineListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimelineViewHolder"
.end annotation


# instance fields
.field mainText:Landroid/widget/TextView;

.field profile:Landroid/widget/ImageView;

.field subText:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;


# direct methods
.method private constructor <init>(Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$TimelineViewHolder;->this$1:Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;
    .param p2, "x1"    # Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$1;

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter$TimelineViewHolder;-><init>(Lcom/cashwalk/cashwalk/fragment/TimelineListFragment$TimelineListAdapter;)V

    return-void
.end method
