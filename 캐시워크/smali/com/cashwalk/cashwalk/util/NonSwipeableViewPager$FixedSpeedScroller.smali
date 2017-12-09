.class Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager$FixedSpeedScroller;
.super Landroid/widget/Scroller;
.source "NonSwipeableViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FixedSpeedScroller"
.end annotation


# instance fields
.field private mDuration:I

.field final synthetic this$0:Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;


# direct methods
.method public constructor <init>(Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager$FixedSpeedScroller;->this$0:Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;

    .line 71
    invoke-direct {p0, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    .line 68
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager$FixedSpeedScroller;->mDuration:I

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager$FixedSpeedScroller;->this$0:Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;

    .line 75
    invoke-direct {p0, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 68
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager$FixedSpeedScroller;->mDuration:I

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p4, "flywheel"    # Z

    .prologue
    .line 78
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager$FixedSpeedScroller;->this$0:Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;

    .line 79
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 68
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager$FixedSpeedScroller;->mDuration:I

    .line 80
    return-void
.end method


# virtual methods
.method public setScrollDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager$FixedSpeedScroller;->mDuration:I

    .line 96
    return-void
.end method

.method public startScroll(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 91
    iget v5, p0, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager$FixedSpeedScroller;->mDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 92
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    .line 85
    iget v5, p0, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager$FixedSpeedScroller;->mDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 86
    return-void
.end method
