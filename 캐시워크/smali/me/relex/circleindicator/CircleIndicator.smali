.class public Lme/relex/circleindicator/CircleIndicator;
.super Landroid/widget/LinearLayout;
.source "CircleIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/relex/circleindicator/CircleIndicator$ReverseInterpolator;
    }
.end annotation


# static fields
.field private static final DEFAULT_INDICATOR_WIDTH:I = 0x5


# instance fields
.field private mAnimatorIn:Landroid/animation/Animator;

.field private mAnimatorOut:Landroid/animation/Animator;

.field private mAnimatorResId:I

.field private mAnimatorReverseResId:I

.field private mImmediateAnimatorIn:Landroid/animation/Animator;

.field private mImmediateAnimatorOut:Landroid/animation/Animator;

.field private mIndicatorBackgroundResId:I

.field private mIndicatorHeight:I

.field private mIndicatorMargin:I

.field private mIndicatorUnselectedBackgroundResId:I

.field private mIndicatorWidth:I

.field private mInternalDataSetObserver:Landroid/database/DataSetObserver;

.field private final mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mLastPosition:I

.field private mViewpager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorMargin:I

    .line 26
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorWidth:I

    .line 27
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorHeight:I

    .line 28
    sget v0, Lme/relex/circleindicator/R$animator;->scale_with_alpha:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimatorResId:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimatorReverseResId:I

    .line 30
    sget v0, Lme/relex/circleindicator/R$drawable;->white_radius:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorBackgroundResId:I

    .line 31
    sget v0, Lme/relex/circleindicator/R$drawable;->white_radius:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorUnselectedBackgroundResId:I

    .line 37
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->mLastPosition:I

    .line 173
    new-instance v0, Lme/relex/circleindicator/CircleIndicator$1;

    invoke-direct {v0, p0}, Lme/relex/circleindicator/CircleIndicator$1;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 219
    new-instance v0, Lme/relex/circleindicator/CircleIndicator$2;

    invoke-direct {v0, p0}, Lme/relex/circleindicator/CircleIndicator$2;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mInternalDataSetObserver:Landroid/database/DataSetObserver;

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lme/relex/circleindicator/CircleIndicator;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, -0x1

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorMargin:I

    .line 26
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorWidth:I

    .line 27
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorHeight:I

    .line 28
    sget v0, Lme/relex/circleindicator/R$animator;->scale_with_alpha:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimatorResId:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimatorReverseResId:I

    .line 30
    sget v0, Lme/relex/circleindicator/R$drawable;->white_radius:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorBackgroundResId:I

    .line 31
    sget v0, Lme/relex/circleindicator/R$drawable;->white_radius:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorUnselectedBackgroundResId:I

    .line 37
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->mLastPosition:I

    .line 173
    new-instance v0, Lme/relex/circleindicator/CircleIndicator$1;

    invoke-direct {v0, p0}, Lme/relex/circleindicator/CircleIndicator$1;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 219
    new-instance v0, Lme/relex/circleindicator/CircleIndicator$2;

    invoke-direct {v0, p0}, Lme/relex/circleindicator/CircleIndicator$2;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mInternalDataSetObserver:Landroid/database/DataSetObserver;

    .line 46
    invoke-direct {p0, p1, p2}, Lme/relex/circleindicator/CircleIndicator;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, -0x1

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorMargin:I

    .line 26
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorWidth:I

    .line 27
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorHeight:I

    .line 28
    sget v0, Lme/relex/circleindicator/R$animator;->scale_with_alpha:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimatorResId:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimatorReverseResId:I

    .line 30
    sget v0, Lme/relex/circleindicator/R$drawable;->white_radius:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorBackgroundResId:I

    .line 31
    sget v0, Lme/relex/circleindicator/R$drawable;->white_radius:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorUnselectedBackgroundResId:I

    .line 37
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->mLastPosition:I

    .line 173
    new-instance v0, Lme/relex/circleindicator/CircleIndicator$1;

    invoke-direct {v0, p0}, Lme/relex/circleindicator/CircleIndicator$1;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 219
    new-instance v0, Lme/relex/circleindicator/CircleIndicator$2;

    invoke-direct {v0, p0}, Lme/relex/circleindicator/CircleIndicator$2;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mInternalDataSetObserver:Landroid/database/DataSetObserver;

    .line 51
    invoke-direct {p0, p1, p2}, Lme/relex/circleindicator/CircleIndicator;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 25
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorMargin:I

    .line 26
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorWidth:I

    .line 27
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorHeight:I

    .line 28
    sget v0, Lme/relex/circleindicator/R$animator;->scale_with_alpha:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimatorResId:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimatorReverseResId:I

    .line 30
    sget v0, Lme/relex/circleindicator/R$drawable;->white_radius:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorBackgroundResId:I

    .line 31
    sget v0, Lme/relex/circleindicator/R$drawable;->white_radius:I

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorUnselectedBackgroundResId:I

    .line 37
    iput v1, p0, Lme/relex/circleindicator/CircleIndicator;->mLastPosition:I

    .line 173
    new-instance v0, Lme/relex/circleindicator/CircleIndicator$1;

    invoke-direct {v0, p0}, Lme/relex/circleindicator/CircleIndicator$1;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 219
    new-instance v0, Lme/relex/circleindicator/CircleIndicator$2;

    invoke-direct {v0, p0}, Lme/relex/circleindicator/CircleIndicator$2;-><init>(Lme/relex/circleindicator/CircleIndicator;)V

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mInternalDataSetObserver:Landroid/database/DataSetObserver;

    .line 57
    invoke-direct {p0, p1, p2}, Lme/relex/circleindicator/CircleIndicator;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method static synthetic access$100(Lme/relex/circleindicator/CircleIndicator;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lme/relex/circleindicator/CircleIndicator;

    .prologue
    .line 21
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mViewpager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$200(Lme/relex/circleindicator/CircleIndicator;)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lme/relex/circleindicator/CircleIndicator;

    .prologue
    .line 21
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimatorIn:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$300(Lme/relex/circleindicator/CircleIndicator;)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lme/relex/circleindicator/CircleIndicator;

    .prologue
    .line 21
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimatorOut:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$400(Lme/relex/circleindicator/CircleIndicator;)I
    .locals 1
    .param p0, "x0"    # Lme/relex/circleindicator/CircleIndicator;

    .prologue
    .line 21
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->mLastPosition:I

    return v0
.end method

.method static synthetic access$402(Lme/relex/circleindicator/CircleIndicator;I)I
    .locals 0
    .param p0, "x0"    # Lme/relex/circleindicator/CircleIndicator;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lme/relex/circleindicator/CircleIndicator;->mLastPosition:I

    return p1
.end method

.method static synthetic access$500(Lme/relex/circleindicator/CircleIndicator;)I
    .locals 1
    .param p0, "x0"    # Lme/relex/circleindicator/CircleIndicator;

    .prologue
    .line 21
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorUnselectedBackgroundResId:I

    return v0
.end method

.method static synthetic access$600(Lme/relex/circleindicator/CircleIndicator;)I
    .locals 1
    .param p0, "x0"    # Lme/relex/circleindicator/CircleIndicator;

    .prologue
    .line 21
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorBackgroundResId:I

    return v0
.end method

.method static synthetic access$700(Lme/relex/circleindicator/CircleIndicator;)V
    .locals 0
    .param p0, "x0"    # Lme/relex/circleindicator/CircleIndicator;

    .prologue
    .line 21
    invoke-direct {p0}, Lme/relex/circleindicator/CircleIndicator;->createIndicators()V

    return-void
.end method

.method private addIndicator(IILandroid/animation/Animator;)V
    .locals 4
    .param p1, "orientation"    # I
    .param p2, "backgroundDrawableId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 273
    invoke-virtual {p3}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    invoke-virtual {p3}, Landroid/animation/Animator;->end()V

    .line 275
    invoke-virtual {p3}, Landroid/animation/Animator;->cancel()V

    .line 278
    :cond_0
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lme/relex/circleindicator/CircleIndicator;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 279
    .local v0, "Indicator":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 280
    iget v2, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorWidth:I

    iget v3, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorHeight:I

    invoke-virtual {p0, v0, v2, v3}, Lme/relex/circleindicator/CircleIndicator;->addView(Landroid/view/View;II)V

    .line 281
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 283
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-nez p1, :cond_1

    .line 284
    iget v2, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 285
    iget v2, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 291
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    invoke-virtual {p3, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 294
    invoke-virtual {p3}, Landroid/animation/Animator;->start()V

    .line 295
    return-void

    .line 287
    :cond_1
    iget v2, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 288
    iget v2, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method private checkIndicatorConfig(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    const/high16 v1, 0x40a00000    # 5.0f

    .line 124
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorWidth:I

    if-gez v0, :cond_0

    invoke-virtual {p0, v1}, Lme/relex/circleindicator/CircleIndicator;->dip2px(F)I

    move-result v0

    :goto_0
    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorWidth:I

    .line 125
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorHeight:I

    if-gez v0, :cond_1

    .line 126
    invoke-virtual {p0, v1}, Lme/relex/circleindicator/CircleIndicator;->dip2px(F)I

    move-result v0

    :goto_1
    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorHeight:I

    .line 127
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorMargin:I

    if-gez v0, :cond_2

    .line 128
    invoke-virtual {p0, v1}, Lme/relex/circleindicator/CircleIndicator;->dip2px(F)I

    move-result v0

    :goto_2
    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorMargin:I

    .line 130
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimatorResId:I

    if-nez v0, :cond_3

    sget v0, Lme/relex/circleindicator/R$animator;->scale_with_alpha:I

    :goto_3
    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimatorResId:I

    .line 132
    invoke-direct {p0, p1}, Lme/relex/circleindicator/CircleIndicator;->createAnimatorOut(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimatorOut:Landroid/animation/Animator;

    .line 133
    invoke-direct {p0, p1}, Lme/relex/circleindicator/CircleIndicator;->createAnimatorOut(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mImmediateAnimatorOut:Landroid/animation/Animator;

    .line 134
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mImmediateAnimatorOut:Landroid/animation/Animator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 136
    invoke-direct {p0, p1}, Lme/relex/circleindicator/CircleIndicator;->createAnimatorIn(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimatorIn:Landroid/animation/Animator;

    .line 137
    invoke-direct {p0, p1}, Lme/relex/circleindicator/CircleIndicator;->createAnimatorIn(Landroid/content/Context;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mImmediateAnimatorIn:Landroid/animation/Animator;

    .line 138
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mImmediateAnimatorIn:Landroid/animation/Animator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 140
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorBackgroundResId:I

    if-nez v0, :cond_4

    sget v0, Lme/relex/circleindicator/R$drawable;->white_radius:I

    :goto_4
    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorBackgroundResId:I

    .line 142
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorUnselectedBackgroundResId:I

    if-nez v0, :cond_5

    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorBackgroundResId:I

    :goto_5
    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorUnselectedBackgroundResId:I

    .line 145
    return-void

    .line 124
    :cond_0
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorWidth:I

    goto :goto_0

    .line 126
    :cond_1
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorHeight:I

    goto :goto_1

    .line 128
    :cond_2
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorMargin:I

    goto :goto_2

    .line 130
    :cond_3
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimatorResId:I

    goto :goto_3

    .line 140
    :cond_4
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorBackgroundResId:I

    goto :goto_4

    .line 142
    :cond_5
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorUnselectedBackgroundResId:I

    goto :goto_5
.end method

.method private createAnimatorIn(Landroid/content/Context;)Landroid/animation/Animator;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    iget v1, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimatorReverseResId:I

    if-nez v1, :cond_0

    .line 154
    iget v1, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimatorResId:I

    invoke-static {p1, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 155
    .local v0, "animatorIn":Landroid/animation/Animator;
    new-instance v1, Lme/relex/circleindicator/CircleIndicator$ReverseInterpolator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lme/relex/circleindicator/CircleIndicator$ReverseInterpolator;-><init>(Lme/relex/circleindicator/CircleIndicator;Lme/relex/circleindicator/CircleIndicator$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 159
    :goto_0
    return-object v0

    .line 157
    .end local v0    # "animatorIn":Landroid/animation/Animator;
    :cond_0
    iget v1, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimatorReverseResId:I

    invoke-static {p1, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .restart local v0    # "animatorIn":Landroid/animation/Animator;
    goto :goto_0
.end method

.method private createAnimatorOut(Landroid/content/Context;)Landroid/animation/Animator;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    iget v0, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimatorResId:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private createIndicators()V
    .locals 6

    .prologue
    .line 253
    invoke-virtual {p0}, Lme/relex/circleindicator/CircleIndicator;->removeAllViews()V

    .line 254
    iget-object v4, p0, Lme/relex/circleindicator/CircleIndicator;->mViewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 255
    .local v0, "count":I
    if-gtz v0, :cond_1

    .line 269
    :cond_0
    return-void

    .line 258
    :cond_1
    iget-object v4, p0, Lme/relex/circleindicator/CircleIndicator;->mViewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 259
    .local v1, "currentItem":I
    invoke-virtual {p0}, Lme/relex/circleindicator/CircleIndicator;->getOrientation()I

    move-result v3

    .line 261
    .local v3, "orientation":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 262
    if-ne v1, v2, :cond_2

    .line 263
    iget v4, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorBackgroundResId:I

    iget-object v5, p0, Lme/relex/circleindicator/CircleIndicator;->mImmediateAnimatorOut:Landroid/animation/Animator;

    invoke-direct {p0, v3, v4, v5}, Lme/relex/circleindicator/CircleIndicator;->addIndicator(IILandroid/animation/Animator;)V

    .line 261
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 265
    :cond_2
    iget v4, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorUnselectedBackgroundResId:I

    iget-object v5, p0, Lme/relex/circleindicator/CircleIndicator;->mImmediateAnimatorIn:Landroid/animation/Animator;

    invoke-direct {p0, v3, v4, v5}, Lme/relex/circleindicator/CircleIndicator;->addIndicator(IILandroid/animation/Animator;)V

    goto :goto_1
.end method

.method private handleTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 66
    if-nez p2, :cond_0

    .line 96
    :goto_0
    return-void

    .line 70
    :cond_0
    sget-object v5, Lme/relex/circleindicator/R$styleable;->CircleIndicator:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 71
    .local v2, "typedArray":Landroid/content/res/TypedArray;
    sget v5, Lme/relex/circleindicator/R$styleable;->CircleIndicator_ci_width:I

    .line 72
    invoke-virtual {v2, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorWidth:I

    .line 73
    sget v5, Lme/relex/circleindicator/R$styleable;->CircleIndicator_ci_height:I

    .line 74
    invoke-virtual {v2, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorHeight:I

    .line 75
    sget v5, Lme/relex/circleindicator/R$styleable;->CircleIndicator_ci_margin:I

    .line 76
    invoke-virtual {v2, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorMargin:I

    .line 78
    sget v5, Lme/relex/circleindicator/R$styleable;->CircleIndicator_ci_animator:I

    sget v6, Lme/relex/circleindicator/R$animator;->scale_with_alpha:I

    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimatorResId:I

    .line 80
    sget v5, Lme/relex/circleindicator/R$styleable;->CircleIndicator_ci_animator_reverse:I

    .line 81
    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimatorReverseResId:I

    .line 82
    sget v5, Lme/relex/circleindicator/R$styleable;->CircleIndicator_ci_drawable:I

    sget v6, Lme/relex/circleindicator/R$drawable;->white_radius:I

    .line 83
    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorBackgroundResId:I

    .line 85
    sget v5, Lme/relex/circleindicator/R$styleable;->CircleIndicator_ci_drawable_unselected:I

    iget v6, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorBackgroundResId:I

    .line 86
    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorUnselectedBackgroundResId:I

    .line 89
    sget v5, Lme/relex/circleindicator/R$styleable;->CircleIndicator_ci_orientation:I

    invoke-virtual {v2, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 90
    .local v1, "orientation":I
    if-ne v1, v3, :cond_1

    :goto_1
    invoke-virtual {p0, v3}, Lme/relex/circleindicator/CircleIndicator;->setOrientation(I)V

    .line 92
    sget v3, Lme/relex/circleindicator/R$styleable;->CircleIndicator_ci_gravity:I

    invoke-virtual {v2, v3, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 93
    .local v0, "gravity":I
    if-ltz v0, :cond_2

    .end local v0    # "gravity":I
    :goto_2
    invoke-virtual {p0, v0}, Lme/relex/circleindicator/CircleIndicator;->setGravity(I)V

    .line 95
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_1
    move v3, v4

    .line 90
    goto :goto_1

    .line 93
    .restart local v0    # "gravity":I
    :cond_2
    const/16 v0, 0x11

    goto :goto_2
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lme/relex/circleindicator/CircleIndicator;->handleTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    invoke-direct {p0, p1}, Lme/relex/circleindicator/CircleIndicator;->checkIndicatorConfig(Landroid/content/Context;)V

    .line 63
    return-void
.end method


# virtual methods
.method public configureIndicator(III)V
    .locals 8
    .param p1, "indicatorWidth"    # I
    .param p2, "indicatorHeight"    # I
    .param p3, "indicatorMargin"    # I

    .prologue
    .line 102
    sget v4, Lme/relex/circleindicator/R$animator;->scale_with_alpha:I

    const/4 v5, 0x0

    sget v6, Lme/relex/circleindicator/R$drawable;->white_radius:I

    sget v7, Lme/relex/circleindicator/R$drawable;->white_radius:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v7}, Lme/relex/circleindicator/CircleIndicator;->configureIndicator(IIIIIII)V

    .line 104
    return-void
.end method

.method public configureIndicator(IIIIIII)V
    .locals 1
    .param p1, "indicatorWidth"    # I
    .param p2, "indicatorHeight"    # I
    .param p3, "indicatorMargin"    # I
    .param p4, "animatorId"    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p5, "animatorReverseId"    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p6, "indicatorBackgroundId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p7, "indicatorUnselectedBackgroundId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 111
    iput p1, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorWidth:I

    .line 112
    iput p2, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorHeight:I

    .line 113
    iput p3, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorMargin:I

    .line 115
    iput p4, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimatorResId:I

    .line 116
    iput p5, p0, Lme/relex/circleindicator/CircleIndicator;->mAnimatorReverseResId:I

    .line 117
    iput p6, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorBackgroundResId:I

    .line 118
    iput p7, p0, Lme/relex/circleindicator/CircleIndicator;->mIndicatorUnselectedBackgroundResId:I

    .line 120
    invoke-virtual {p0}, Lme/relex/circleindicator/CircleIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/relex/circleindicator/CircleIndicator;->checkIndicatorConfig(Landroid/content/Context;)V

    .line 121
    return-void
.end method

.method public dip2px(F)I
    .locals 3
    .param p1, "dpValue"    # F

    .prologue
    .line 304
    invoke-virtual {p0}, Lme/relex/circleindicator/CircleIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 305
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public getDataSetObserver()Landroid/database/DataSetObserver;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mInternalDataSetObserver:Landroid/database/DataSetObserver;

    return-object v0
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 2
    .param p1, "onPageChangeListener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mViewpager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "can not find Viewpager , setViewPager first"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_0
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mViewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 249
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mViewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 250
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 163
    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator;->mViewpager:Landroid/support/v4/view/ViewPager;

    .line 164
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mViewpager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mViewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, -0x1

    iput v0, p0, Lme/relex/circleindicator/CircleIndicator;->mLastPosition:I

    .line 166
    invoke-direct {p0}, Lme/relex/circleindicator/CircleIndicator;->createIndicators()V

    .line 167
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mViewpager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lme/relex/circleindicator/CircleIndicator;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 168
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mViewpager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lme/relex/circleindicator/CircleIndicator;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 169
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    iget-object v1, p0, Lme/relex/circleindicator/CircleIndicator;->mViewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 171
    :cond_0
    return-void
.end method
