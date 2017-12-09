.class public Lcom/esafirm/imagepicker/view/GridSpacingItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "GridSpacingItemDecoration.java"


# instance fields
.field private includeEdge:Z

.field private spacing:I

.field private spanCount:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0
    .param p1, "spanCount"    # I
    .param p2, "spacing"    # I
    .param p3, "includeEdge"    # Z

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 17
    iput p1, p0, Lcom/esafirm/imagepicker/view/GridSpacingItemDecoration;->spanCount:I

    .line 18
    iput p2, p0, Lcom/esafirm/imagepicker/view/GridSpacingItemDecoration;->spacing:I

    .line 19
    iput-boolean p3, p0, Lcom/esafirm/imagepicker/view/GridSpacingItemDecoration;->includeEdge:Z

    .line 20
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 24
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 25
    .local v1, "position":I
    iget v2, p0, Lcom/esafirm/imagepicker/view/GridSpacingItemDecoration;->spanCount:I

    rem-int v0, v1, v2

    .line 27
    .local v0, "column":I
    iget-boolean v2, p0, Lcom/esafirm/imagepicker/view/GridSpacingItemDecoration;->includeEdge:Z

    if-eqz v2, :cond_2

    .line 28
    iget v2, p0, Lcom/esafirm/imagepicker/view/GridSpacingItemDecoration;->spacing:I

    iget v3, p0, Lcom/esafirm/imagepicker/view/GridSpacingItemDecoration;->spacing:I

    mul-int/2addr v3, v0

    iget v4, p0, Lcom/esafirm/imagepicker/view/GridSpacingItemDecoration;->spanCount:I

    div-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 29
    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lcom/esafirm/imagepicker/view/GridSpacingItemDecoration;->spacing:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/esafirm/imagepicker/view/GridSpacingItemDecoration;->spanCount:I

    div-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 31
    iget v2, p0, Lcom/esafirm/imagepicker/view/GridSpacingItemDecoration;->spanCount:I

    if-ge v1, v2, :cond_0

    .line 32
    iget v2, p0, Lcom/esafirm/imagepicker/view/GridSpacingItemDecoration;->spacing:I

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 34
    :cond_0
    iget v2, p0, Lcom/esafirm/imagepicker/view/GridSpacingItemDecoration;->spacing:I

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 42
    :cond_1
    :goto_0
    return-void

    .line 36
    :cond_2
    iget v2, p0, Lcom/esafirm/imagepicker/view/GridSpacingItemDecoration;->spacing:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/esafirm/imagepicker/view/GridSpacingItemDecoration;->spanCount:I

    div-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 37
    iget v2, p0, Lcom/esafirm/imagepicker/view/GridSpacingItemDecoration;->spacing:I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/esafirm/imagepicker/view/GridSpacingItemDecoration;->spacing:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/esafirm/imagepicker/view/GridSpacingItemDecoration;->spanCount:I

    div-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 38
    iget v2, p0, Lcom/esafirm/imagepicker/view/GridSpacingItemDecoration;->spanCount:I

    if-lt v1, v2, :cond_1

    .line 39
    iget v2, p0, Lcom/esafirm/imagepicker/view/GridSpacingItemDecoration;->spacing:I

    iput v2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method
