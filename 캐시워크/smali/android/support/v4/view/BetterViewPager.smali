.class public Landroid/support/v4/view/BetterViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "BetterViewPager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method


# virtual methods
.method public setChildrenDrawingOrderEnabledCompat(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Landroid/support/v4/view/BetterViewPager;->setChildrenDrawingOrderEnabled(Z)V

    .line 23
    return-void
.end method
