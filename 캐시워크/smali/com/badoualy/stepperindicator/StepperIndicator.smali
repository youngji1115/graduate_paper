.class public Lcom/badoualy/stepperindicator/StepperIndicator;
.super Landroid/view/View;
.source "StepperIndicator.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badoualy/stepperindicator/StepperIndicator$SavedState;,
        Lcom/badoualy/stepperindicator/StepperIndicator$OnStepClickListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIMATION_DURATION:I = 0xfa

.field private static final EXPAND_MARK:F = 1.3f

.field private static final STEP_INVALID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "StepperIndicator"


# instance fields
.field private animCheckRadius:F

.field private animDuration:I

.field private animIndicatorRadius:F

.field private animProgress:F

.field private animatorSet:Landroid/animation/AnimatorSet;

.field private bottomIndicatorHeight:F

.field private bottomIndicatorMarginTop:F

.field private bottomIndicatorWidth:F

.field private checkAnimator:Landroid/animation/ObjectAnimator;

.field private checkRadius:F

.field private circlePaint:Landroid/graphics/Paint;

.field private circleRadius:F

.field private currentStep:I

.field private doneIcon:Landroid/graphics/Bitmap;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private gestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private indicatorAnimator:Landroid/animation/ObjectAnimator;

.field private indicatorPaint:Landroid/graphics/Paint;

.field private indicatorRadius:F

.field private indicators:[F

.field private lineAnimator:Landroid/animation/ObjectAnimator;

.field private lineDoneAnimatedPaint:Landroid/graphics/Paint;

.field private lineDonePaint:Landroid/graphics/Paint;

.field private lineLength:F

.field private lineMargin:F

.field private linePaint:Landroid/graphics/Paint;

.field private linePathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private onStepClickListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/badoualy/stepperindicator/StepperIndicator$OnStepClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private pager:Landroid/support/v4/view/ViewPager;

.field private previousStep:I

.field private showDoneIcon:Z

.field private showStepTextNumber:Z

.field private stepAreaRect:Landroid/graphics/Rect;

.field private stepAreaRectF:Landroid/graphics/RectF;

.field private stepCount:I

.field private stepTextNumberPaint:Landroid/graphics/Paint;

.field private stepsCirclePaintList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private stepsClickAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private stepsIndicatorPaintList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private stepsTextNumberPaintList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private useBottomIndicator:Z

.field private useBottomIndicatorWithStepColors:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 324
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badoualy/stepperindicator/StepperIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 325
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 328
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/badoualy/stepperindicator/StepperIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 329
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 332
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->linePathList:Ljava/util/List;

    .line 242
    iput v1, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->bottomIndicatorMarginTop:F

    .line 244
    iput v1, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->bottomIndicatorWidth:F

    .line 246
    iput v1, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->bottomIndicatorHeight:F

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->onStepClickListeners:Ljava/util/List;

    .line 276
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepAreaRect:Landroid/graphics/Rect;

    .line 277
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepAreaRectF:Landroid/graphics/RectF;

    .line 295
    new-instance v0, Lcom/badoualy/stepperindicator/StepperIndicator$1;

    invoke-direct {v0, p0}, Lcom/badoualy/stepperindicator/StepperIndicator$1;-><init>(Lcom/badoualy/stepperindicator/StepperIndicator;)V

    iput-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->gestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 333
    invoke-direct {p0, p1, p2, p3}, Lcom/badoualy/stepperindicator/StepperIndicator;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 334
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
    const/4 v1, 0x0

    .line 339
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->linePathList:Ljava/util/List;

    .line 242
    iput v1, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->bottomIndicatorMarginTop:F

    .line 244
    iput v1, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->bottomIndicatorWidth:F

    .line 246
    iput v1, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->bottomIndicatorHeight:F

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->onStepClickListeners:Ljava/util/List;

    .line 276
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepAreaRect:Landroid/graphics/Rect;

    .line 277
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepAreaRectF:Landroid/graphics/RectF;

    .line 295
    new-instance v0, Lcom/badoualy/stepperindicator/StepperIndicator$1;

    invoke-direct {v0, p0}, Lcom/badoualy/stepperindicator/StepperIndicator$1;-><init>(Lcom/badoualy/stepperindicator/StepperIndicator;)V

    iput-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->gestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 340
    invoke-direct {p0, p1, p2, p3}, Lcom/badoualy/stepperindicator/StepperIndicator;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 341
    return-void
.end method

.method static synthetic access$000(Lcom/badoualy/stepperindicator/StepperIndicator;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/badoualy/stepperindicator/StepperIndicator;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepsClickAreas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/badoualy/stepperindicator/StepperIndicator;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/badoualy/stepperindicator/StepperIndicator;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->onStepClickListeners:Ljava/util/List;

    return-object v0
.end method

.method private compute()V
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 591
    iget-object v6, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->circlePaint:Landroid/graphics/Paint;

    if-nez v6, :cond_0

    .line 592
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "circlePaint is invalid! Make sure you setup the field circlePaint before calling compute() method!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 596
    :cond_0
    iget v6, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepCount:I

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->indicators:[F

    .line 597
    iget-object v6, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->linePathList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 599
    iget v6, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->circleRadius:F

    const v7, 0x3fa66666    # 1.3f

    mul-float/2addr v6, v7

    iget-object v7, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v7

    div-float/2addr v7, v9

    add-float v5, v6, v7

    .line 600
    .local v5, "startX":F
    iget-boolean v6, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->useBottomIndicator:Z

    if-eqz v6, :cond_1

    .line 601
    iget v6, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->bottomIndicatorWidth:F

    div-float/2addr v6, v9

    sub-float/2addr v6, v5

    add-float/2addr v5, v6

    .line 605
    :cond_1
    invoke-virtual {p0}, Lcom/badoualy/stepperindicator/StepperIndicator;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v7, v5, v9

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepCount:I

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    div-float v0, v6, v7

    .line 606
    .local v0, "divider":F
    iget v6, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->circleRadius:F

    mul-float/2addr v6, v9

    iget-object v7, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v7

    add-float/2addr v6, v7

    sub-float v6, v0, v6

    iget v7, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->lineMargin:F

    mul-float/2addr v7, v9

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->lineLength:F

    .line 609
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->indicators:[F

    array-length v6, v6

    if-ge v1, v6, :cond_2

    .line 610
    iget-object v6, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->indicators:[F

    int-to-float v7, v1

    mul-float/2addr v7, v0

    add-float/2addr v7, v5

    aput v7, v6, v1

    .line 609
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 612
    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-object v6, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->indicators:[F

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_3

    .line 613
    iget-object v6, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->indicators:[F

    aget v6, v6, v1

    iget-object v7, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->indicators:[F

    add-int/lit8 v8, v1, 0x1

    aget v7, v7, v8

    add-float/2addr v6, v7

    div-float/2addr v6, v9

    iget v7, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->lineLength:F

    div-float/2addr v7, v9

    sub-float v4, v6, v7

    .line 614
    .local v4, "position":F
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 615
    .local v2, "linePath":Landroid/graphics/Path;
    invoke-direct {p0}, Lcom/badoualy/stepperindicator/StepperIndicator;->getStepCenterY()F

    move-result v3

    .line 616
    .local v3, "lineY":F
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 617
    iget v6, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->lineLength:F

    add-float/2addr v6, v4

    invoke-virtual {v2, v6, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 618
    iget-object v6, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->linePathList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 621
    .end local v2    # "linePath":Landroid/graphics/Path;
    .end local v3    # "lineY":F
    .end local v4    # "position":F
    :cond_3
    invoke-virtual {p0}, Lcom/badoualy/stepperindicator/StepperIndicator;->computeStepsClickAreas()V

    .line 622
    return-void
.end method

.method private static createPathEffect(FFF)Landroid/graphics/PathEffect;
    .locals 3
    .param p0, "pathLength"    # F
    .param p1, "phase"    # F
    .param p2, "offset"    # F

    .prologue
    .line 366
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 v2, 0x1

    aput p0, v1, v2

    mul-float v2, p1, p0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    return-object v0
.end method

.method private getBottomIndicatorHeight()I
    .locals 2

    .prologue
    .line 676
    iget-boolean v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->useBottomIndicator:Z

    if-eqz v0, :cond_0

    .line 677
    iget v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->bottomIndicatorHeight:F

    iget v1, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->bottomIndicatorMarginTop:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 679
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPaint(ILjava/util/List;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 5
    .param p1, "stepPosition"    # I
    .param p3, "defaultPaint"    # Landroid/graphics/Paint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Paint;",
            ">;",
            "Landroid/graphics/Paint;",
            ")",
            "Landroid/graphics/Paint;"
        }
    .end annotation

    .prologue
    .line 831
    .local p2, "sourceList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Paint;>;"
    invoke-direct {p0, p1}, Lcom/badoualy/stepperindicator/StepperIndicator;->isStepValid(I)Z

    .line 833
    const/4 v2, 0x0

    .line 834
    .local v2, "paint":Landroid/graphics/Paint;
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 836
    :try_start_0
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/graphics/Paint;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    if-eqz p3, :cond_1

    .line 845
    move-object v2, p3

    .line 848
    :cond_1
    if-nez v2, :cond_2

    .line 849
    const-string v3, "StepperIndicator"

    const-string v4, "getPaint: could not use default paint for the specific step! Using random Paint instead!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    invoke-direct {p0}, Lcom/badoualy/stepperindicator/StepperIndicator;->getRandomPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 854
    :cond_2
    return-object v2

    .line 837
    :catch_0
    move-exception v1

    .line 839
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "StepperIndicator"

    const-string v4, "getPaint: could not find the specific step paint to use! Try to use default instead!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getPrimaryColor(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 344
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "colorPrimary"

    const-string v4, "attr"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 345
    .local v0, "color":I
    if-eqz v0, :cond_0

    .line 347
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 348
    .local v1, "t":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 349
    iget v0, v1, Landroid/util/TypedValue;->data:I

    .line 361
    .end local v1    # "t":Landroid/util/TypedValue;
    :goto_0
    return v0

    .line 350
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 352
    new-array v2, v7, [I

    const v3, 0x1010433

    aput v3, v2, v6

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 353
    .local v1, "t":Landroid/content/res/TypedArray;
    sget v2, Lcom/badoualy/stepperindicator/R$color;->stpi_default_primary_color:I

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 354
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 356
    .end local v1    # "t":Landroid/content/res/TypedArray;
    :cond_1
    new-array v2, v7, [I

    sget v3, Lcom/badoualy/stepperindicator/R$attr;->colorPrimary:I

    aput v3, v2, v6

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 357
    .restart local v1    # "t":Landroid/content/res/TypedArray;
    sget v2, Lcom/badoualy/stepperindicator/R$color;->stpi_default_primary_color:I

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 358
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method private getRandomColor()I
    .locals 5

    .prologue
    const/16 v4, 0x100

    .line 567
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 568
    .local v0, "rnd":Ljava/util/Random;
    const/16 v1, 0xff

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    return v1
.end method

.method private getRandomPaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 555
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->indicatorPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 556
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-direct {p0}, Lcom/badoualy/stepperindicator/StepperIndicator;->getRandomColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 558
    return-object v0
.end method

.method private getStepCenterY()F
    .locals 2

    .prologue
    .line 684
    invoke-virtual {p0}, Lcom/badoualy/stepperindicator/StepperIndicator;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/badoualy/stepperindicator/StepperIndicator;->getBottomIndicatorHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private getStepCirclePaint(I)Landroid/graphics/Paint;
    .locals 2
    .param p1, "stepPosition"    # I

    .prologue
    .line 814
    iget-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepsCirclePaintList:Ljava/util/List;

    iget-object v1, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->circlePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1}, Lcom/badoualy/stepperindicator/StepperIndicator;->getPaint(ILjava/util/List;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method private getStepIndicatorPaint(I)Landroid/graphics/Paint;
    .locals 2
    .param p1, "stepPosition"    # I

    .prologue
    .line 794
    iget-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepsIndicatorPaintList:Ljava/util/List;

    iget-object v1, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->indicatorPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1}, Lcom/badoualy/stepperindicator/StepperIndicator;->getPaint(ILjava/util/List;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method private getStepTextNumberPaint(I)Landroid/graphics/Paint;
    .locals 2
    .param p1, "stepPosition"    # I

    .prologue
    .line 804
    iget-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepsTextNumberPaintList:Ljava/util/List;

    iget-object v1, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepTextNumberPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1}, Lcom/badoualy/stepperindicator/StepperIndicator;->getPaint(ILjava/util/List;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 31
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/badoualy/stepperindicator/StepperIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 373
    .local v24, "resources":Landroid/content/res/Resources;
    invoke-static/range {p1 .. p1}, Lcom/badoualy/stepperindicator/StepperIndicator;->getPrimaryColor(Landroid/content/Context;)I

    move-result v19

    .line 375
    .local v19, "defaultPrimaryColor":I
    sget v28, Lcom/badoualy/stepperindicator/R$color;->stpi_default_circle_color:I

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    .line 376
    .local v9, "defaultCircleColor":I
    sget v28, Lcom/badoualy/stepperindicator/R$dimen;->stpi_default_circle_radius:I

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 377
    .local v10, "defaultCircleRadius":F
    sget v28, Lcom/badoualy/stepperindicator/R$dimen;->stpi_default_circle_stroke_width:I

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    .line 380
    .local v11, "defaultCircleStrokeWidth":F
    move/from16 v13, v19

    .line 381
    .local v13, "defaultIndicatorColor":I
    sget v28, Lcom/badoualy/stepperindicator/R$dimen;->stpi_default_indicator_radius:I

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    .line 383
    .local v14, "defaultIndicatorRadius":F
    sget v28, Lcom/badoualy/stepperindicator/R$dimen;->stpi_default_line_stroke_width:I

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    .line 384
    .local v18, "defaultLineStrokeWidth":F
    sget v28, Lcom/badoualy/stepperindicator/R$dimen;->stpi_default_line_margin:I

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    .line 385
    .local v17, "defaultLineMargin":F
    sget v28, Lcom/badoualy/stepperindicator/R$color;->stpi_default_line_color:I

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v15

    .line 387
    .local v15, "defaultLineColor":I
    move/from16 v16, v19

    .line 390
    .local v16, "defaultLineDoneColor":I
    sget-object v28, Lcom/badoualy/stepperindicator/R$styleable;->StepperIndicator:[I

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v28

    move/from16 v3, p3

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 392
    .local v6, "a":Landroid/content/res/TypedArray;
    new-instance v28, Landroid/graphics/Paint;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badoualy/stepperindicator/StepperIndicator;->circlePaint:Landroid/graphics/Paint;

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->circlePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    sget v29, Lcom/badoualy/stepperindicator/R$styleable;->StepperIndicator_stpi_circleStrokeWidth:I

    move/from16 v0, v29

    invoke-virtual {v6, v0, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v29

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->circlePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    sget-object v29, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->circlePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    sget v29, Lcom/badoualy/stepperindicator/R$styleable;->StepperIndicator_stpi_circleColor:I

    move/from16 v0, v29

    invoke-virtual {v6, v0, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setColor(I)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->circlePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 399
    sget v28, Lcom/badoualy/stepperindicator/R$styleable;->StepperIndicator_stpi_stepCount:I

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/badoualy/stepperindicator/StepperIndicator;->setStepCount(I)V

    .line 401
    sget v28, Lcom/badoualy/stepperindicator/R$styleable;->StepperIndicator_stpi_stepsCircleColors:I

    const/16 v29, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v25

    .line 402
    .local v25, "stepsCircleColorsResId":I
    if-eqz v25, :cond_2

    .line 403
    new-instance v28, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepCount:I

    move/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badoualy/stepperindicator/StepperIndicator;->stepsCirclePaintList:Ljava/util/List;

    .line 405
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepCount:I

    move/from16 v28, v0

    move/from16 v0, v22

    move/from16 v1, v28

    if-ge v0, v1, :cond_2

    .line 407
    new-instance v7, Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->circlePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-direct {v7, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 408
    .local v7, "circlePaint":Landroid/graphics/Paint;
    invoke-virtual/range {p0 .. p0}, Lcom/badoualy/stepperindicator/StepperIndicator;->isInEditMode()Z

    move-result v28

    if-eqz v28, :cond_0

    .line 410
    invoke-direct/range {p0 .. p0}, Lcom/badoualy/stepperindicator/StepperIndicator;->getRandomColor()I

    move-result v28

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 426
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepsCirclePaintList:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 413
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 415
    .local v8, "colorResValues":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepCount:I

    move/from16 v28, v0

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->length()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_1

    .line 416
    new-instance v28, Ljava/lang/IllegalArgumentException;

    const-string v29, "Invalid number of colors for the circles. Please provide a list of colors with as many items as the number of steps required!"

    invoke-direct/range {v28 .. v29}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 421
    :cond_1
    const/16 v28, 0x0

    move/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v28

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 423
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 430
    .end local v7    # "circlePaint":Landroid/graphics/Paint;
    .end local v8    # "colorResValues":Landroid/content/res/TypedArray;
    .end local v22    # "i":I
    :cond_2
    new-instance v28, Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->circlePaint:Landroid/graphics/Paint;

    move-object/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badoualy/stepperindicator/StepperIndicator;->indicatorPaint:Landroid/graphics/Paint;

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->indicatorPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    sget-object v29, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->indicatorPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    sget v29, Lcom/badoualy/stepperindicator/R$styleable;->StepperIndicator_stpi_indicatorColor:I

    move/from16 v0, v29

    invoke-virtual {v6, v0, v13}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setColor(I)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->indicatorPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 435
    new-instance v28, Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->indicatorPaint:Landroid/graphics/Paint;

    move-object/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badoualy/stepperindicator/StepperIndicator;->stepTextNumberPaint:Landroid/graphics/Paint;

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepTextNumberPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/badoualy/stepperindicator/StepperIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    sget v30, Lcom/badoualy/stepperindicator/R$dimen;->stpi_default_text_size:I

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v29

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 438
    sget v28, Lcom/badoualy/stepperindicator/R$styleable;->StepperIndicator_stpi_showStepNumberInstead:I

    const/16 v29, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badoualy/stepperindicator/StepperIndicator;->showStepTextNumber:Z

    .line 441
    sget v28, Lcom/badoualy/stepperindicator/R$styleable;->StepperIndicator_stpi_stepsIndicatorColors:I

    const/16 v29, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v26

    .line 442
    .local v26, "stepsIndicatorColorsResId":I
    if-eqz v26, :cond_a

    .line 444
    new-instance v28, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepCount:I

    move/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badoualy/stepperindicator/StepperIndicator;->stepsIndicatorPaintList:Ljava/util/List;

    .line 445
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->showStepTextNumber:Z

    move/from16 v28, v0

    if-eqz v28, :cond_3

    .line 446
    new-instance v28, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepCount:I

    move/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badoualy/stepperindicator/StepperIndicator;->stepsTextNumberPaintList:Ljava/util/List;

    .line 449
    :cond_3
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepCount:I

    move/from16 v28, v0

    move/from16 v0, v22

    move/from16 v1, v28

    if-ge v0, v1, :cond_a

    .line 450
    new-instance v23, Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->indicatorPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 452
    .local v23, "indicatorPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->showStepTextNumber:Z

    move/from16 v28, v0

    if-eqz v28, :cond_6

    new-instance v27, Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepTextNumberPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    invoke-direct/range {v27 .. v28}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 453
    .local v27, "textNumberPaint":Landroid/graphics/Paint;
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/badoualy/stepperindicator/StepperIndicator;->isInEditMode()Z

    move-result v28

    if-eqz v28, :cond_7

    .line 456
    invoke-direct/range {p0 .. p0}, Lcom/badoualy/stepperindicator/StepperIndicator;->getRandomColor()I

    move-result v28

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 457
    if-eqz v27, :cond_4

    .line 458
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Paint;->getColor()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/Paint;->setColor(I)V

    .line 478
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepsIndicatorPaintList:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->showStepTextNumber:Z

    move/from16 v28, v0

    if-eqz v28, :cond_5

    if-eqz v27, :cond_5

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepsTextNumberPaintList:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_5
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 452
    .end local v27    # "textNumberPaint":Landroid/graphics/Paint;
    :cond_6
    const/16 v27, 0x0

    goto :goto_3

    .line 462
    .restart local v27    # "textNumberPaint":Landroid/graphics/Paint;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 464
    .restart local v8    # "colorResValues":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepCount:I

    move/from16 v28, v0

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->length()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_8

    .line 465
    new-instance v28, Ljava/lang/IllegalArgumentException;

    const-string v29, "Invalid number of colors for the indicators. Please provide a list of colors with as many items as the number of steps required!"

    invoke-direct/range {v28 .. v29}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 470
    :cond_8
    const/16 v28, 0x0

    move/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v28

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 471
    if-eqz v27, :cond_9

    .line 472
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Paint;->getColor()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/Paint;->setColor(I)V

    .line 475
    :cond_9
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_4

    .line 485
    .end local v8    # "colorResValues":Landroid/content/res/TypedArray;
    .end local v22    # "i":I
    .end local v23    # "indicatorPaint":Landroid/graphics/Paint;
    .end local v27    # "textNumberPaint":Landroid/graphics/Paint;
    :cond_a
    new-instance v28, Landroid/graphics/Paint;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badoualy/stepperindicator/StepperIndicator;->linePaint:Landroid/graphics/Paint;

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    sget v29, Lcom/badoualy/stepperindicator/R$styleable;->StepperIndicator_stpi_lineStrokeWidth:I

    move/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v29

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    sget-object v29, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    sget-object v29, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    sget v29, Lcom/badoualy/stepperindicator/R$styleable;->StepperIndicator_stpi_lineColor:I

    move/from16 v0, v29

    invoke-virtual {v6, v0, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setColor(I)V

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 492
    new-instance v28, Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badoualy/stepperindicator/StepperIndicator;->lineDonePaint:Landroid/graphics/Paint;

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->lineDonePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    sget v29, Lcom/badoualy/stepperindicator/R$styleable;->StepperIndicator_stpi_lineDoneColor:I

    move/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setColor(I)V

    .line 495
    new-instance v28, Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->lineDonePaint:Landroid/graphics/Paint;

    move-object/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badoualy/stepperindicator/StepperIndicator;->lineDoneAnimatedPaint:Landroid/graphics/Paint;

    .line 498
    sget v28, Lcom/badoualy/stepperindicator/R$styleable;->StepperIndicator_stpi_useBottomIndicator:I

    const/16 v29, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badoualy/stepperindicator/StepperIndicator;->useBottomIndicator:Z

    .line 499
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->useBottomIndicator:Z

    move/from16 v28, v0

    if-eqz v28, :cond_c

    .line 501
    sget v28, Lcom/badoualy/stepperindicator/R$dimen;->stpi_default_bottom_indicator_height:I

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    .line 503
    .local v12, "defaultHeight":F
    sget v28, Lcom/badoualy/stepperindicator/R$styleable;->StepperIndicator_stpi_bottomIndicatorHeight:I

    move/from16 v0, v28

    invoke-virtual {v6, v0, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badoualy/stepperindicator/StepperIndicator;->bottomIndicatorHeight:F

    .line 505
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->bottomIndicatorHeight:F

    move/from16 v28, v0

    const/16 v29, 0x0

    cmpg-float v28, v28, v29

    if-gtz v28, :cond_b

    .line 506
    const-string v28, "StepperIndicator"

    const-string v29, "init: Invalid indicator height, disabling bottom indicator feature! Please provide a value greater than 0."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badoualy/stepperindicator/StepperIndicator;->useBottomIndicator:Z

    .line 512
    :cond_b
    sget v28, Lcom/badoualy/stepperindicator/R$dimen;->stpi_default_bottom_indicator_width:I

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    .line 513
    .local v21, "defaultWidth":F
    sget v28, Lcom/badoualy/stepperindicator/R$styleable;->StepperIndicator_stpi_bottomIndicatorWidth:I

    move/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badoualy/stepperindicator/StepperIndicator;->bottomIndicatorWidth:F

    .line 516
    sget v28, Lcom/badoualy/stepperindicator/R$dimen;->stpi_default_bottom_indicator_margin_top:I

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    .line 517
    .local v20, "defaultTopMargin":F
    sget v28, Lcom/badoualy/stepperindicator/R$styleable;->StepperIndicator_stpi_bottomIndicatorMarginTop:I

    move/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badoualy/stepperindicator/StepperIndicator;->bottomIndicatorMarginTop:F

    .line 519
    sget v28, Lcom/badoualy/stepperindicator/R$styleable;->StepperIndicator_stpi_useBottomIndicatorWithStepColors:I

    const/16 v29, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badoualy/stepperindicator/StepperIndicator;->useBottomIndicatorWithStepColors:Z

    .line 522
    .end local v12    # "defaultHeight":F
    .end local v20    # "defaultTopMargin":F
    .end local v21    # "defaultWidth":F
    :cond_c
    sget v28, Lcom/badoualy/stepperindicator/R$styleable;->StepperIndicator_stpi_circleRadius:I

    move/from16 v0, v28

    invoke-virtual {v6, v0, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badoualy/stepperindicator/StepperIndicator;->circleRadius:F

    .line 523
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->circleRadius:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->circlePaint:Landroid/graphics/Paint;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v29

    const/high16 v30, 0x40000000    # 2.0f

    div-float v29, v29, v30

    add-float v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badoualy/stepperindicator/StepperIndicator;->checkRadius:F

    .line 524
    sget v28, Lcom/badoualy/stepperindicator/R$styleable;->StepperIndicator_stpi_indicatorRadius:I

    move/from16 v0, v28

    invoke-virtual {v6, v0, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badoualy/stepperindicator/StepperIndicator;->indicatorRadius:F

    .line 525
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->indicatorRadius:F

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badoualy/stepperindicator/StepperIndicator;->animIndicatorRadius:F

    .line 526
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->checkRadius:F

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badoualy/stepperindicator/StepperIndicator;->animCheckRadius:F

    .line 527
    sget v28, Lcom/badoualy/stepperindicator/R$styleable;->StepperIndicator_stpi_lineMargin:I

    move/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badoualy/stepperindicator/StepperIndicator;->lineMargin:F

    .line 529
    sget v28, Lcom/badoualy/stepperindicator/R$styleable;->StepperIndicator_stpi_animDuration:I

    const/16 v29, 0xfa

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badoualy/stepperindicator/StepperIndicator;->animDuration:I

    .line 530
    sget v28, Lcom/badoualy/stepperindicator/R$styleable;->StepperIndicator_stpi_showDoneIcon:I

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badoualy/stepperindicator/StepperIndicator;->showDoneIcon:Z

    .line 532
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 534
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->showDoneIcon:Z

    move/from16 v28, v0

    if-eqz v28, :cond_d

    .line 535
    sget v28, Lcom/badoualy/stepperindicator/R$drawable;->ic_done_white_18dp:I

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badoualy/stepperindicator/StepperIndicator;->doneIcon:Landroid/graphics/Bitmap;

    .line 539
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/badoualy/stepperindicator/StepperIndicator;->isInEditMode()Z

    move-result v28

    if-eqz v28, :cond_e

    .line 540
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepCount:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x40000000    # 2.0f

    div-float v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    const/16 v29, 0x1

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->max(II)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badoualy/stepperindicator/StepperIndicator;->currentStep:I

    .line 544
    :cond_e
    new-instance v28, Landroid/view/GestureDetector;

    invoke-virtual/range {p0 .. p0}, Lcom/badoualy/stepperindicator/StepperIndicator;->getContext()Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->gestureListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v30, v0

    invoke-direct/range {v28 .. v30}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badoualy/stepperindicator/StepperIndicator;->gestureDetector:Landroid/view/GestureDetector;

    .line 545
    return-void
.end method

.method private isStepValid(I)Z
    .locals 3
    .param p1, "stepPos"    # I

    .prologue
    .line 868
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepCount:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 869
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid step position. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid position! it should be between 0 and stepCount("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 873
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addOnStepClickListener(Lcom/badoualy/stepperindicator/StepperIndicator$OnStepClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/badoualy/stepperindicator/StepperIndicator$OnStepClickListener;

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->onStepClickListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1086
    return-void
.end method

.method public clearOnStepClickListeners()V
    .locals 1

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->onStepClickListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1106
    return-void
.end method

.method public computeStepsClickAreas()V
    .locals 12

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    .line 634
    iget v6, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepCount:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 635
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "stepCount wasn\'t setup yet. Make sure you call setStepCount() before computing the steps click area!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 639
    :cond_0
    iget-object v6, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->indicators:[F

    if-nez v6, :cond_1

    .line 640
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "indicators wasn\'t setup yet. Make sure the indicators are initialized and setup correctly before trying to compute the click area for each step!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 646
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    iget v7, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepCount:I

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepsClickAreas:Ljava/util/List;

    .line 649
    iget-object v7, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->indicators:[F

    array-length v8, v7

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v8, :cond_2

    aget v2, v7, v6

    .line 652
    .local v2, "indicator":F
    iget v9, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->circleRadius:F

    mul-float/2addr v9, v11

    sub-float v3, v2, v9

    .line 653
    .local v3, "left":F
    iget v9, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->circleRadius:F

    mul-float/2addr v9, v11

    add-float v4, v2, v9

    .line 654
    .local v4, "right":F
    invoke-direct {p0}, Lcom/badoualy/stepperindicator/StepperIndicator;->getStepCenterY()F

    move-result v9

    iget v10, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->circleRadius:F

    mul-float/2addr v10, v11

    sub-float v5, v9, v10

    .line 655
    .local v5, "top":F
    invoke-direct {p0}, Lcom/badoualy/stepperindicator/StepperIndicator;->getStepCenterY()F

    move-result v9

    iget v10, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->circleRadius:F

    add-float/2addr v9, v10

    invoke-direct {p0}, Lcom/badoualy/stepperindicator/StepperIndicator;->getBottomIndicatorHeight()I

    move-result v10

    int-to-float v10, v10

    add-float v1, v9, v10

    .line 658
    .local v1, "bottom":F
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3, v5, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 659
    .local v0, "area":Landroid/graphics/RectF;
    iget-object v9, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepsClickAreas:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 661
    .end local v0    # "area":Landroid/graphics/RectF;
    .end local v1    # "bottom":F
    .end local v2    # "indicator":F
    .end local v3    # "left":F
    .end local v4    # "right":F
    .end local v5    # "top":F
    :cond_2
    return-void
.end method

.method public getCurrentStep()I
    .locals 1

    .prologue
    .line 911
    iget v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->currentStep:I

    return v0
.end method

.method public getStepCount()I
    .locals 1

    .prologue
    .line 895
    iget v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepCount:I

    return v0
.end method

.method public isOnStepClickListenerAvailable()Z
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->onStepClickListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->onStepClickListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 691
    invoke-direct/range {p0 .. p0}, Lcom/badoualy/stepperindicator/StepperIndicator;->getStepCenterY()F

    move-result v9

    .line 694
    .local v9, "centerY":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v14, 0x1

    .line 695
    .local v14, "inAnimation":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->lineAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->lineAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v17, 0x1

    .line 696
    .local v17, "inLineAnimation":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->indicatorAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->indicatorAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_d

    const/16 v16, 0x1

    .line 697
    .local v16, "inIndicatorAnimation":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->checkAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->checkAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v15, 0x1

    .line 699
    .local v15, "inCheckAnimation":Z
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->previousStep:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->currentStep:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_f

    const/4 v12, 0x1

    .line 700
    .local v12, "drawToNext":Z
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->previousStep:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->currentStep:I

    add-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_10

    const/4 v11, 0x1

    .line 702
    .local v11, "drawFromNext":Z
    :goto_5
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->indicators:[F

    array-length v3, v3

    if-ge v13, v3, :cond_18

    .line 703
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->indicators:[F

    aget v18, v3, v13

    .line 706
    .local v18, "indicator":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->currentStep:I

    if-lt v13, v3, :cond_0

    if-eqz v11, :cond_11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->currentStep:I

    if-ne v13, v3, :cond_11

    :cond_0
    const/4 v10, 0x1

    .line 709
    .local v10, "drawCheck":Z
    :goto_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->circleRadius:F

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/badoualy/stepperindicator/StepperIndicator;->getStepCirclePaint(I)Landroid/graphics/Paint;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v9, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 712
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->showStepTextNumber:Z

    if-eqz v3, :cond_1

    .line 713
    add-int/lit8 v3, v13, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    .line 715
    .local v20, "stepLabel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepAreaRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->circleRadius:F

    sub-float v4, v18, v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->circleRadius:F

    sub-float v5, v9, v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->circleRadius:F

    add-float v6, v6, v18

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->circleRadius:F

    add-float/2addr v7, v9

    float-to-int v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 717
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepAreaRectF:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepAreaRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 719
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/badoualy/stepperindicator/StepperIndicator;->getStepTextNumberPaint(I)Landroid/graphics/Paint;

    move-result-object v21

    .line 722
    .local v21, "stepTextNumberPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepAreaRectF:Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v4

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 724
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepAreaRectF:Landroid/graphics/RectF;

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Paint;->descent()F

    move-result v4

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    sub-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 726
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepAreaRectF:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepAreaRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepAreaRectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 727
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepAreaRectF:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepAreaRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepAreaRectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 729
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepAreaRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepAreaRectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 732
    .end local v20    # "stepLabel":Ljava/lang/String;
    .end local v21    # "stepTextNumberPaint":Landroid/graphics/Paint;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->useBottomIndicator:Z

    if-eqz v3, :cond_13

    .line 734
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->currentStep:I

    if-ne v13, v3, :cond_2

    .line 736
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->bottomIndicatorWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v4, v18, v3

    invoke-virtual/range {p0 .. p0}, Lcom/badoualy/stepperindicator/StepperIndicator;->getHeight()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->bottomIndicatorHeight:F

    sub-float v5, v3, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->bottomIndicatorWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    add-float v6, v18, v3

    .line 737
    invoke-virtual/range {p0 .. p0}, Lcom/badoualy/stepperindicator/StepperIndicator;->getHeight()I

    move-result v3

    int-to-float v7, v3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->useBottomIndicatorWithStepColors:Z

    if-eqz v3, :cond_12

    .line 738
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/badoualy/stepperindicator/StepperIndicator;->getStepIndicatorPaint(I)Landroid/graphics/Paint;

    move-result-object v8

    :goto_8
    move-object/from16 v3, p1

    .line 736
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 750
    :cond_2
    :goto_9
    if-eqz v10, :cond_8

    .line 751
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->checkRadius:F

    move/from16 v19, v0

    .line 753
    .local v19, "radius":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->previousStep:I

    if-ne v13, v3, :cond_3

    if-nez v12, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->currentStep:I

    if-ne v13, v3, :cond_5

    if-eqz v11, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->animCheckRadius:F

    move/from16 v19, v0

    .line 754
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/badoualy/stepperindicator/StepperIndicator;->getStepIndicatorPaint(I)Landroid/graphics/Paint;

    move-result-object v3

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 757
    invoke-virtual/range {p0 .. p0}, Lcom/badoualy/stepperindicator/StepperIndicator;->isInEditMode()Z

    move-result v3

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->showDoneIcon:Z

    if-eqz v3, :cond_8

    .line 758
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->previousStep:I

    if-eq v13, v3, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->currentStep:I

    if-ne v13, v3, :cond_7

    :cond_6
    if-nez v15, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->currentStep:I

    if-ne v13, v3, :cond_7

    if-eqz v14, :cond_8

    .line 760
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->doneIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->doneIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, v18, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->doneIcon:Landroid/graphics/Bitmap;

    .line 761
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, v9, v5

    const/4 v6, 0x0

    .line 760
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 767
    .end local v19    # "radius":F
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->linePathList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v13, v3, :cond_a

    .line 768
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->currentStep:I

    if-lt v13, v3, :cond_16

    .line 769
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->linePathList:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 770
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->currentStep:I

    if-ne v13, v3, :cond_a

    if-eqz v11, :cond_a

    if-nez v17, :cond_9

    if-eqz v16, :cond_a

    .line 772
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->linePathList:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->lineDoneAnimatedPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 702
    :cond_a
    :goto_a
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_6

    .line 694
    .end local v10    # "drawCheck":Z
    .end local v11    # "drawFromNext":Z
    .end local v12    # "drawToNext":Z
    .end local v13    # "i":I
    .end local v14    # "inAnimation":Z
    .end local v15    # "inCheckAnimation":Z
    .end local v16    # "inIndicatorAnimation":Z
    .end local v17    # "inLineAnimation":Z
    .end local v18    # "indicator":F
    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 695
    .restart local v14    # "inAnimation":Z
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 696
    .restart local v17    # "inLineAnimation":Z
    :cond_d
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 697
    .restart local v16    # "inIndicatorAnimation":Z
    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 699
    .restart local v15    # "inCheckAnimation":Z
    :cond_f
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 700
    .restart local v12    # "drawToNext":Z
    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_5

    .line 706
    .restart local v11    # "drawFromNext":Z
    .restart local v13    # "i":I
    .restart local v18    # "indicator":F
    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 738
    .restart local v10    # "drawCheck":Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->indicatorPaint:Landroid/graphics/Paint;

    goto/16 :goto_8

    .line 743
    :cond_13
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->currentStep:I

    if-ne v13, v3, :cond_14

    if-eqz v11, :cond_15

    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->previousStep:I

    if-ne v13, v3, :cond_2

    if-eqz v11, :cond_2

    if-eqz v14, :cond_2

    .line 745
    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->animIndicatorRadius:F

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/badoualy/stepperindicator/StepperIndicator;->getStepIndicatorPaint(I)Landroid/graphics/Paint;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v9, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_9

    .line 775
    :cond_16
    move-object/from16 v0, p0

    iget v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->currentStep:I

    add-int/lit8 v3, v3, -0x1

    if-ne v13, v3, :cond_17

    if-eqz v12, :cond_17

    if-eqz v17, :cond_17

    .line 777
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->linePathList:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 778
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->linePathList:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->lineDoneAnimatedPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_a

    .line 780
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->linePathList:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badoualy/stepperindicator/StepperIndicator;->lineDonePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_a

    .line 785
    .end local v10    # "drawCheck":Z
    .end local v18    # "indicator":F
    :cond_18
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 879
    iget v7, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->circleRadius:F

    const v8, 0x3fa66666    # 1.3f

    mul-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v8

    add-float/2addr v7, v8

    .line 880
    invoke-direct {p0}, Lcom/badoualy/stepperindicator/StepperIndicator;->getBottomIndicatorHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    float-to-double v8, v7

    .line 879
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    .line 882
    .local v0, "desiredHeight":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 883
    .local v5, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 884
    .local v6, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 885
    .local v2, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 887
    .local v3, "heightSize":I
    if-ne v5, v10, :cond_0

    move v4, v6

    .line 888
    .local v4, "width":I
    :goto_0
    if-ne v2, v10, :cond_1

    move v1, v3

    .line 890
    .local v1, "height":I
    :goto_1
    invoke-virtual {p0, v4, v1}, Lcom/badoualy/stepperindicator/StepperIndicator;->setMeasuredDimension(II)V

    .line 891
    return-void

    .line 887
    .end local v1    # "height":I
    .end local v4    # "width":I
    :cond_0
    invoke-virtual {p0}, Lcom/badoualy/stepperindicator/StepperIndicator;->getSuggestedMinimumWidth()I

    move-result v4

    goto :goto_0

    .restart local v4    # "width":I
    :cond_1
    move v1, v0

    .line 888
    goto :goto_1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1130
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 1120
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1124
    invoke-virtual {p0, p1}, Lcom/badoualy/stepperindicator/StepperIndicator;->setCurrentStep(I)V

    .line 1125
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1134
    move-object v0, p1

    check-cast v0, Lcom/badoualy/stepperindicator/StepperIndicator$SavedState;

    .line 1135
    .local v0, "savedState":Lcom/badoualy/stepperindicator/StepperIndicator$SavedState;
    invoke-virtual {v0}, Lcom/badoualy/stepperindicator/StepperIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1137
    invoke-static {v0}, Lcom/badoualy/stepperindicator/StepperIndicator$SavedState;->access$200(Lcom/badoualy/stepperindicator/StepperIndicator$SavedState;)I

    move-result v1

    iput v1, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->currentStep:I

    .line 1138
    invoke-virtual {p0}, Lcom/badoualy/stepperindicator/StepperIndicator;->requestLayout()V

    .line 1139
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1143
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1144
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/badoualy/stepperindicator/StepperIndicator$SavedState;

    invoke-direct {v0, v1}, Lcom/badoualy/stepperindicator/StepperIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1146
    .local v0, "savedState":Lcom/badoualy/stepperindicator/StepperIndicator$SavedState;
    iget v2, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->currentStep:I

    invoke-static {v0, v2}, Lcom/badoualy/stepperindicator/StepperIndicator$SavedState;->access$202(Lcom/badoualy/stepperindicator/StepperIndicator$SavedState;I)I

    .line 1147
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 580
    invoke-direct {p0}, Lcom/badoualy/stepperindicator/StepperIndicator;->compute()V

    .line 581
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 574
    iget-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 575
    const/4 v0, 0x1

    return v0
.end method

.method public removeOnStepClickListener(Lcom/badoualy/stepperindicator/StepperIndicator$OnStepClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/badoualy/stepperindicator/StepperIndicator$OnStepClickListener;

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->onStepClickListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1097
    return-void
.end method

.method public setAnimCheckRadius(F)V
    .locals 0
    .param p1, "animCheckRadius"    # F

    .prologue
    .line 1024
    iput p1, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->animCheckRadius:F

    .line 1025
    invoke-virtual {p0}, Lcom/badoualy/stepperindicator/StepperIndicator;->invalidate()V

    .line 1026
    return-void
.end method

.method public setAnimIndicatorRadius(F)V
    .locals 0
    .param p1, "animIndicatorRadius"    # F

    .prologue
    .line 1012
    iput p1, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->animIndicatorRadius:F

    .line 1013
    invoke-virtual {p0}, Lcom/badoualy/stepperindicator/StepperIndicator;->invalidate()V

    .line 1014
    return-void
.end method

.method public setAnimProgress(F)V
    .locals 3
    .param p1, "animProgress"    # F

    .prologue
    .line 999
    iput p1, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->animProgress:F

    .line 1000
    iget-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->lineDoneAnimatedPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->lineLength:F

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/badoualy/stepperindicator/StepperIndicator;->createPathEffect(FFF)Landroid/graphics/PathEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1001
    invoke-virtual {p0}, Lcom/badoualy/stepperindicator/StepperIndicator;->invalidate()V

    .line 1002
    return-void
.end method

.method public setCurrentStep(I)V
    .locals 8
    .param p1, "currentStep"    # I
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 921
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepCount:I

    if-le p1, v0, :cond_1

    .line 922
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid step value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 925
    :cond_1
    iget v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->currentStep:I

    iput v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->previousStep:I

    .line 926
    iput p1, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->currentStep:I

    .line 928
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    .line 930
    iget-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 931
    iget-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 934
    :cond_2
    iput-object v3, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    .line 935
    iput-object v3, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->lineAnimator:Landroid/animation/ObjectAnimator;

    .line 936
    iput-object v3, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->indicatorAnimator:Landroid/animation/ObjectAnimator;

    .line 940
    iget v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->previousStep:I

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_5

    .line 942
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    .line 945
    const-string v0, "animProgress"

    new-array v1, v4, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->lineAnimator:Landroid/animation/ObjectAnimator;

    .line 948
    const-string v0, "animCheckRadius"

    const/4 v1, 0x3

    new-array v1, v1, [F

    iget v2, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->indicatorRadius:F

    aput v2, v1, v5

    iget v2, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->checkRadius:F

    const v3, 0x3fa66666    # 1.3f

    mul-float/2addr v2, v3

    aput v2, v1, v6

    iget v2, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->checkRadius:F

    aput v2, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->checkAnimator:Landroid/animation/ObjectAnimator;

    .line 952
    iput v7, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->animIndicatorRadius:F

    .line 953
    const-string v0, "animIndicatorRadius"

    const/4 v1, 0x3

    new-array v1, v1, [F

    aput v7, v1, v5

    iget v2, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->indicatorRadius:F

    const v3, 0x3fb33333    # 1.4f

    mul-float/2addr v2, v3

    aput v2, v1, v6

    iget v2, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->indicatorRadius:F

    aput v2, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->indicatorAnimator:Landroid/animation/ObjectAnimator;

    .line 956
    iget-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->lineAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->checkAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->indicatorAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 976
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    .line 978
    iget-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->lineAnimator:Landroid/animation/ObjectAnimator;

    const/16 v1, 0x1f4

    iget v2, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->animDuration:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 979
    iget-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->lineAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 981
    iget-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->indicatorAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->lineAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 982
    iget-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->checkAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->lineAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 984
    iget-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 988
    :cond_4
    invoke-virtual {p0}, Lcom/badoualy/stepperindicator/StepperIndicator;->invalidate()V

    .line 989
    return-void

    .line 957
    :cond_5
    iget v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->previousStep:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_3

    .line 959
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    .line 962
    const-string v0, "animIndicatorRadius"

    new-array v1, v4, [F

    iget v2, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->indicatorRadius:F

    aput v2, v1, v5

    aput v7, v1, v6

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->indicatorAnimator:Landroid/animation/ObjectAnimator;

    .line 965
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->animProgress:F

    .line 966
    iget-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->lineDoneAnimatedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 967
    const-string v0, "animProgress"

    new-array v1, v4, [F

    fill-array-data v1, :array_1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->lineAnimator:Landroid/animation/ObjectAnimator;

    .line 970
    iget v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->checkRadius:F

    iput v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->animCheckRadius:F

    .line 971
    const-string v0, "animCheckRadius"

    new-array v1, v4, [F

    iget v2, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->checkRadius:F

    aput v2, v1, v5

    iget v2, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->indicatorRadius:F

    aput v2, v1, v6

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->checkAnimator:Landroid/animation/ObjectAnimator;

    .line 973
    iget-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->indicatorAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->lineAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->checkAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto/16 :goto_0

    .line 945
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 967
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setStepCount(I)V
    .locals 2
    .param p1, "stepCount"    # I

    .prologue
    .line 899
    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 900
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "stepCount must be >= 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 903
    :cond_0
    iput p1, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepCount:I

    .line 904
    const/4 v0, 0x0

    iput v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->currentStep:I

    .line 905
    invoke-direct {p0}, Lcom/badoualy/stepperindicator/StepperIndicator;->compute()V

    .line 906
    invoke-virtual {p0}, Lcom/badoualy/stepperindicator/StepperIndicator;->invalidate()V

    .line 907
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "pager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 1035
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1036
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1038
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/badoualy/stepperindicator/StepperIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;I)V

    .line 1039
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 2
    .param p1, "pager"    # Landroid/support/v4/view/ViewPager;
    .param p2, "stepCount"    # I

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->pager:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 1077
    :goto_0
    return-void

    .line 1065
    :cond_0
    iget-object v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 1066
    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1068
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1069
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1072
    :cond_2
    iput-object p1, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->pager:Landroid/support/v4/view/ViewPager;

    .line 1073
    iput p2, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->stepCount:I

    .line 1074
    const/4 v0, 0x0

    iput v0, p0, Lcom/badoualy/stepperindicator/StepperIndicator;->currentStep:I

    .line 1075
    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1076
    invoke-virtual {p0}, Lcom/badoualy/stepperindicator/StepperIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;Z)V
    .locals 2
    .param p1, "pager"    # Landroid/support/v4/view/ViewPager;
    .param p2, "keepLastPage"    # Z

    .prologue
    .line 1048
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1049
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1051
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    sub-int v0, v1, v0

    invoke-virtual {p0, p1, v0}, Lcom/badoualy/stepperindicator/StepperIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;I)V

    .line 1052
    return-void

    .line 1051
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
