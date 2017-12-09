.class public Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "NonSwipeableViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager$FixedSpeedScroller;
    }
.end annotation


# instance fields
.field private enabled:Z

.field private mScroller:Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager$FixedSpeedScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;->mScroller:Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager$FixedSpeedScroller;

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;->enabled:Z

    .line 21
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;->init()V

    .line 22
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;->setScrollDuration(I)V

    .line 23
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    .line 53
    :try_start_0
    const-class v1, Landroid/support/v4/view/ViewPager;

    .line 54
    .local v1, "viewpager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "mScroller"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 55
    .local v0, "scroller":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 56
    new-instance v2, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager$FixedSpeedScroller;

    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v2, p0, v3, v4}, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager$FixedSpeedScroller;-><init>(Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;->mScroller:Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager$FixedSpeedScroller;

    .line 57
    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;->mScroller:Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager$FixedSpeedScroller;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v0    # "scroller":Ljava/lang/reflect/Field;
    .end local v1    # "viewpager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 39
    :try_start_0
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;->enabled:Z

    if-eqz v0, :cond_0

    .line 40
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 44
    :goto_0
    return v0

    .line 42
    :catch_0
    move-exception v0

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 28
    :try_start_0
    iget-boolean v0, p0, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;->enabled:Z

    if-eqz v0, :cond_0

    .line 29
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 33
    :goto_0
    return v0

    .line 31
    :catch_0
    move-exception v0

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPagingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;->enabled:Z

    .line 49
    return-void
.end method

.method public setScrollDuration(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager;->mScroller:Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager$FixedSpeedScroller;

    invoke-virtual {v0, p1}, Lcom/cashwalk/cashwalk/util/NonSwipeableViewPager$FixedSpeedScroller;->setScrollDuration(I)V

    .line 64
    return-void
.end method
