.class abstract Lcom/melnykov/fab/AbsListViewScrollDetector;
.super Ljava/lang/Object;
.source "AbsListViewScrollDetector.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private mLastScrollY:I

.field private mListView:Landroid/widget/AbsListView;

.field private mPreviousFirstVisibleItem:I

.field private mScrollThreshold:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTopItemScrollY()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-object v2, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mListView:Landroid/widget/AbsListView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v1

    .line 61
    :cond_1
    iget-object v2, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "topChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0
.end method

.method private isSameRow(I)Z
    .locals 1
    .param p1, "firstVisibleItem"    # I

    .prologue
    .line 56
    iget v0, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mPreviousFirstVisibleItem:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 23
    if-nez p4, :cond_0

    .line 45
    :goto_0
    return-void

    .line 24
    :cond_0
    invoke-direct {p0, p2}, Lcom/melnykov/fab/AbsListViewScrollDetector;->isSameRow(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 25
    invoke-direct {p0}, Lcom/melnykov/fab/AbsListViewScrollDetector;->getTopItemScrollY()I

    move-result v1

    .line 26
    .local v1, "newScrollY":I
    iget v2, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mLastScrollY:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mScrollThreshold:I

    if-le v2, v3, :cond_2

    const/4 v0, 0x1

    .line 27
    .local v0, "isSignificantDelta":Z
    :goto_1
    if-eqz v0, :cond_1

    .line 28
    iget v2, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mLastScrollY:I

    if-le v2, v1, :cond_3

    .line 29
    invoke-virtual {p0}, Lcom/melnykov/fab/AbsListViewScrollDetector;->onScrollUp()V

    .line 34
    :cond_1
    :goto_2
    iput v1, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mLastScrollY:I

    goto :goto_0

    .line 26
    .end local v0    # "isSignificantDelta":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 31
    .restart local v0    # "isSignificantDelta":Z
    :cond_3
    invoke-virtual {p0}, Lcom/melnykov/fab/AbsListViewScrollDetector;->onScrollDown()V

    goto :goto_2

    .line 36
    .end local v0    # "isSignificantDelta":Z
    .end local v1    # "newScrollY":I
    :cond_4
    iget v2, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mPreviousFirstVisibleItem:I

    if-le p2, v2, :cond_5

    .line 37
    invoke-virtual {p0}, Lcom/melnykov/fab/AbsListViewScrollDetector;->onScrollUp()V

    .line 42
    :goto_3
    invoke-direct {p0}, Lcom/melnykov/fab/AbsListViewScrollDetector;->getTopItemScrollY()I

    move-result v2

    iput v2, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mLastScrollY:I

    .line 43
    iput p2, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mPreviousFirstVisibleItem:I

    goto :goto_0

    .line 39
    :cond_5
    invoke-virtual {p0}, Lcom/melnykov/fab/AbsListViewScrollDetector;->onScrollDown()V

    goto :goto_3
.end method

.method abstract onScrollDown()V
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 19
    return-void
.end method

.method abstract onScrollUp()V
.end method

.method public setListView(Landroid/widget/AbsListView;)V
    .locals 0
    .param p1, "listView"    # Landroid/widget/AbsListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 52
    iput-object p1, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mListView:Landroid/widget/AbsListView;

    .line 53
    return-void
.end method

.method public setScrollThreshold(I)V
    .locals 0
    .param p1, "scrollThreshold"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mScrollThreshold:I

    .line 49
    return-void
.end method
