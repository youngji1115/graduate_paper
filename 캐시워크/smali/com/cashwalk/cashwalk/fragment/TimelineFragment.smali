.class public Lcom/cashwalk/cashwalk/fragment/TimelineFragment;
.super Landroid/support/v4/app/Fragment;
.source "TimelineFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/fragment/TimelineFragment$TabsPagerAdapter;
    }
.end annotation


# instance fields
.field private fragments:[Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;

.field private tabsLinearLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/fragment/TimelineFragment;->fragments:[Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/fragment/TimelineFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/TimelineFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/TimelineFragment;->tabsLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/fragment/TimelineFragment;)[Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/fragment/TimelineFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cashwalk/cashwalk/fragment/TimelineFragment;->fragments:[Lcom/cashwalk/cashwalk/fragment/TimelineListFragment;

    return-object v0
.end method

.method public static newInstance()Lcom/cashwalk/cashwalk/fragment/TimelineFragment;
    .locals 2

    .prologue
    .line 28
    new-instance v1, Lcom/cashwalk/cashwalk/fragment/TimelineFragment;

    invoke-direct {v1}, Lcom/cashwalk/cashwalk/fragment/TimelineFragment;-><init>()V

    .line 29
    .local v1, "fragment":Lcom/cashwalk/cashwalk/fragment/TimelineFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 30
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/cashwalk/cashwalk/fragment/TimelineFragment;->setArguments(Landroid/os/Bundle;)V

    .line 31
    return-object v1
.end method

.method private refreshTimeline(Z)V
    .locals 0
    .param p1, "isMine"    # Z

    .prologue
    .line 99
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 104
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f0f0091

    const/4 v7, 0x0

    .line 41
    const v6, 0x7f0400a4

    invoke-virtual {p1, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 43
    .local v5, "v":Landroid/view/View;
    new-instance v0, Lcom/cashwalk/cashwalk/fragment/TimelineFragment$TabsPagerAdapter;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/TimelineFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-direct {v0, p0, v6}, Lcom/cashwalk/cashwalk/fragment/TimelineFragment$TabsPagerAdapter;-><init>(Lcom/cashwalk/cashwalk/fragment/TimelineFragment;Landroid/support/v4/app/FragmentManager;)V

    .line 44
    .local v0, "adapter":Lcom/cashwalk/cashwalk/fragment/TimelineFragment$TabsPagerAdapter;
    const v6, 0x7f1001b6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    .line 45
    .local v2, "pager":Landroid/support/v4/view/ViewPager;
    const v6, 0x7f1001d1

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/astuetz/PagerSlidingTabStrip;

    .line 46
    .local v3, "tabs":Lcom/astuetz/PagerSlidingTabStrip;
    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 47
    const/16 v6, 0x10

    invoke-static {v6}, Lcom/cashwalk/cashwalk/util/Utils;->dpToPx(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/astuetz/PagerSlidingTabStrip;->setTextSize(I)V

    .line 48
    invoke-virtual {v3, v8}, Lcom/astuetz/PagerSlidingTabStrip;->setTextColorResource(I)V

    .line 49
    invoke-virtual {v3, v2}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 51
    invoke-virtual {v3, v7}, Lcom/astuetz/PagerSlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/cashwalk/cashwalk/fragment/TimelineFragment;->tabsLinearLayout:Landroid/widget/LinearLayout;

    .line 52
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/cashwalk/cashwalk/fragment/TimelineFragment;->tabsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 53
    iget-object v6, p0, Lcom/cashwalk/cashwalk/fragment/TimelineFragment;->tabsLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 55
    .local v4, "tv":Landroid/widget/TextView;
    if-nez v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/TimelineFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0020

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/fragment/TimelineFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 61
    .end local v4    # "tv":Landroid/widget/TextView;
    :cond_1
    new-instance v6, Lcom/cashwalk/cashwalk/fragment/TimelineFragment$1;

    invoke-direct {v6, p0}, Lcom/cashwalk/cashwalk/fragment/TimelineFragment$1;-><init>(Lcom/cashwalk/cashwalk/fragment/TimelineFragment;)V

    invoke-virtual {v3, v6}, Lcom/astuetz/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 92
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/cashwalk/cashwalk/fragment/TimelineFragment;->refreshTimeline(Z)V

    .line 94
    return-object v5
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 109
    return-void
.end method
