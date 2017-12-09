.class public Lcom/cashwalk/cashwalk/util/ShadowTransformer;
.super Ljava/lang/Object;
.source "ShadowTransformer.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# instance fields
.field private mAdapter:Lcom/cashwalk/cashwalk/util/CardAdapter;

.field private mLastOffset:F

.field private mScalingEnabled:Z

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/support/v4/view/ViewPager;Lcom/cashwalk/cashwalk/util/CardAdapter;)V
    .locals 0
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;
    .param p2, "adapter"    # Lcom/cashwalk/cashwalk/util/CardAdapter;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/cashwalk/cashwalk/util/ShadowTransformer;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 19
    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 20
    iput-object p2, p0, Lcom/cashwalk/cashwalk/util/ShadowTransformer;->mAdapter:Lcom/cashwalk/cashwalk/util/CardAdapter;

    .line 21
    return-void
.end method


# virtual methods
.method public enableScaling(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const v4, 0x3f8ccccd    # 1.1f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 24
    iget-boolean v1, p0, Lcom/cashwalk/cashwalk/util/ShadowTransformer;->mScalingEnabled:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 26
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/ShadowTransformer;->mAdapter:Lcom/cashwalk/cashwalk/util/CardAdapter;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/ShadowTransformer;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/cashwalk/cashwalk/util/CardAdapter;->getCardViewAt(I)Landroid/support/v7/widget/CardView;

    move-result-object v0

    .line 27
    .local v0, "currentCard":Landroid/support/v7/widget/CardView;
    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Landroid/support/v7/widget/CardView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 29
    invoke-virtual {v0}, Landroid/support/v7/widget/CardView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 40
    .end local v0    # "currentCard":Landroid/support/v7/widget/CardView;
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/cashwalk/cashwalk/util/ShadowTransformer;->mScalingEnabled:Z

    .line 41
    return-void

    .line 31
    :cond_1
    iget-boolean v1, p0, Lcom/cashwalk/cashwalk/util/ShadowTransformer;->mScalingEnabled:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/cashwalk/cashwalk/util/ShadowTransformer;->mAdapter:Lcom/cashwalk/cashwalk/util/CardAdapter;

    iget-object v2, p0, Lcom/cashwalk/cashwalk/util/ShadowTransformer;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/cashwalk/cashwalk/util/CardAdapter;->getCardViewAt(I)Landroid/support/v7/widget/CardView;

    move-result-object v0

    .line 34
    .restart local v0    # "currentCard":Landroid/support/v7/widget/CardView;
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Landroid/support/v7/widget/CardView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 36
    invoke-virtual {v0}, Landroid/support/v7/widget/CardView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 111
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 16
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 52
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cashwalk/cashwalk/util/ShadowTransformer;->mAdapter:Lcom/cashwalk/cashwalk/util/CardAdapter;

    invoke-interface {v9}, Lcom/cashwalk/cashwalk/util/CardAdapter;->getBaseElevation()F

    move-result v2

    .line 54
    .local v2, "baseElevation":F
    move-object/from16 v0, p0

    iget v9, v0, Lcom/cashwalk/cashwalk/util/ShadowTransformer;->mLastOffset:F

    cmpl-float v9, v9, p2

    if-lez v9, :cond_1

    const/4 v4, 0x1

    .line 58
    .local v4, "goingLeft":Z
    :goto_0
    if-eqz v4, :cond_2

    .line 59
    add-int/lit8 v7, p1, 0x1

    .line 60
    .local v7, "realCurrentPosition":I
    move/from16 v6, p1

    .line 61
    .local v6, "nextPosition":I
    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v8, v9, p2

    .line 69
    .local v8, "realOffset":F
    :goto_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cashwalk/cashwalk/util/ShadowTransformer;->mAdapter:Lcom/cashwalk/cashwalk/util/CardAdapter;

    invoke-interface {v9}, Lcom/cashwalk/cashwalk/util/CardAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-gt v6, v9, :cond_0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cashwalk/cashwalk/util/ShadowTransformer;->mAdapter:Lcom/cashwalk/cashwalk/util/CardAdapter;

    .line 70
    invoke-interface {v9}, Lcom/cashwalk/cashwalk/util/CardAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-le v7, v9, :cond_3

    .line 101
    :cond_0
    :goto_2
    return-void

    .line 54
    .end local v4    # "goingLeft":Z
    .end local v6    # "nextPosition":I
    .end local v7    # "realCurrentPosition":I
    .end local v8    # "realOffset":F
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 63
    .restart local v4    # "goingLeft":Z
    :cond_2
    add-int/lit8 v6, p1, 0x1

    .line 64
    .restart local v6    # "nextPosition":I
    move/from16 v7, p1

    .line 65
    .restart local v7    # "realCurrentPosition":I
    move/from16 v8, p2

    .restart local v8    # "realOffset":F
    goto :goto_1

    .line 74
    :cond_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cashwalk/cashwalk/util/ShadowTransformer;->mAdapter:Lcom/cashwalk/cashwalk/util/CardAdapter;

    invoke-interface {v9, v7}, Lcom/cashwalk/cashwalk/util/CardAdapter;->getCardViewAt(I)Landroid/support/v7/widget/CardView;

    move-result-object v3

    .line 78
    .local v3, "currentCard":Landroid/support/v7/widget/CardView;
    if-eqz v3, :cond_5

    .line 79
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/cashwalk/cashwalk/util/ShadowTransformer;->mScalingEnabled:Z

    if-eqz v9, :cond_4

    .line 80
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide v12, 0x3fb999999999999aL    # 0.1

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v8

    float-to-double v14, v9

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v9, v10

    invoke-virtual {v3, v9}, Landroid/support/v7/widget/CardView;->setScaleX(F)V

    .line 81
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide v12, 0x3fb999999999999aL    # 0.1

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v8

    float-to-double v14, v9

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v9, v10

    invoke-virtual {v3, v9}, Landroid/support/v7/widget/CardView;->setScaleY(F)V

    .line 83
    :cond_4
    const/high16 v9, 0x40e00000    # 7.0f

    mul-float/2addr v9, v2

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v8

    mul-float/2addr v9, v10

    add-float/2addr v9, v2

    invoke-virtual {v3, v9}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    .line 87
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cashwalk/cashwalk/util/ShadowTransformer;->mAdapter:Lcom/cashwalk/cashwalk/util/CardAdapter;

    invoke-interface {v9, v6}, Lcom/cashwalk/cashwalk/util/CardAdapter;->getCardViewAt(I)Landroid/support/v7/widget/CardView;

    move-result-object v5

    .line 91
    .local v5, "nextCard":Landroid/support/v7/widget/CardView;
    if-eqz v5, :cond_7

    .line 92
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/cashwalk/cashwalk/util/ShadowTransformer;->mScalingEnabled:Z

    if-eqz v9, :cond_6

    .line 93
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide v12, 0x3fb999999999999aL    # 0.1

    float-to-double v14, v8

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v9, v10

    invoke-virtual {v5, v9}, Landroid/support/v7/widget/CardView;->setScaleX(F)V

    .line 94
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide v12, 0x3fb999999999999aL    # 0.1

    float-to-double v14, v8

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v9, v10

    invoke-virtual {v5, v9}, Landroid/support/v7/widget/CardView;->setScaleY(F)V

    .line 96
    :cond_6
    const/high16 v9, 0x40e00000    # 7.0f

    mul-float/2addr v9, v2

    mul-float/2addr v9, v8

    add-float/2addr v9, v2

    invoke-virtual {v5, v9}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    .line 100
    :cond_7
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cashwalk/cashwalk/util/ShadowTransformer;->mLastOffset:F

    goto/16 :goto_2
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 106
    return-void
.end method

.method public transformPage(Landroid/view/View;F)V
    .locals 0
    .param p1, "page"    # Landroid/view/View;
    .param p2, "position"    # F

    .prologue
    .line 46
    return-void
.end method
