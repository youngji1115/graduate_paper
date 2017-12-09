.class public Lcom/cashwalk/cashwalk/util/SwipeRefreshListFragment;
.super Landroid/support/v4/app/ListFragment;
.source "SwipeRefreshListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/util/SwipeRefreshListFragment$ListFragmentSwipeRefreshLayout;
    }
.end annotation


# instance fields
.field protected mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 104
    return-void
.end method

.method static synthetic access$000(Landroid/widget/ListView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/ListView;

    .prologue
    .line 18
    invoke-static {p0}, Lcom/cashwalk/cashwalk/util/SwipeRefreshListFragment;->canListViewScrollUp(Landroid/widget/ListView;)Z

    move-result v0

    return v0
.end method

.method private static canListViewScrollUp(Landroid/widget/ListView;)Z
    .locals 3
    .param p0, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v0, 0x0

    .line 134
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 136
    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 141
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-gtz v1, :cond_2

    .line 142
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v2

    if-ge v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getSwipeRefreshLayout()Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/SwipeRefreshListFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method public isRefreshing()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/SwipeRefreshListFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    .line 27
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 30
    .local v0, "listFragmentView":Landroid/view/View;
    new-instance v1, Lcom/cashwalk/cashwalk/util/SwipeRefreshListFragment$ListFragmentSwipeRefreshLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/cashwalk/cashwalk/util/SwipeRefreshListFragment$ListFragmentSwipeRefreshLayout;-><init>(Lcom/cashwalk/cashwalk/util/SwipeRefreshListFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cashwalk/cashwalk/util/SwipeRefreshListFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 34
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/SwipeRefreshListFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v0, v3, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->addView(Landroid/view/View;II)V

    .line 38
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/SwipeRefreshListFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/SwipeRefreshListFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v1
.end method

.method public setColorScheme(IIII)V
    .locals 3
    .param p1, "colorRes1"    # I
    .param p2, "colorRes2"    # I
    .param p3, "colorRes3"    # I
    .param p4, "colorRes4"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/SwipeRefreshListFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 v2, 0x2

    aput p3, v1, v2

    const/4 v2, 0x3

    aput p4, v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorScheme([I)V

    .line 82
    return-void
.end method

.method public setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/SwipeRefreshListFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 55
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 1
    .param p1, "refreshing"    # Z

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/SwipeRefreshListFragment;->mSwipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 75
    return-void
.end method
