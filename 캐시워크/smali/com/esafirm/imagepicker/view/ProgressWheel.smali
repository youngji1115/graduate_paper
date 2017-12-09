.class public Lcom/esafirm/imagepicker/view/ProgressWheel;
.super Landroid/view/View;
.source "ProgressWheel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;,
        Lcom/esafirm/imagepicker/view/ProgressWheel$ProgressCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private barColor:I

.field private barExtraLength:F

.field private barGrowingFromFront:Z

.field private final barLength:I

.field private final barMaxLength:I

.field private barPaint:Landroid/graphics/Paint;

.field private barSpinCycleTime:D

.field private barWidth:I

.field private callback:Lcom/esafirm/imagepicker/view/ProgressWheel$ProgressCallback;

.field private circleBounds:Landroid/graphics/RectF;

.field private circleRadius:I

.field private fillRadius:Z

.field private isSpinning:Z

.field private lastTimeAnimated:J

.field private linearProgress:Z

.field private mProgress:F

.field private mTargetProgress:F

.field private final pauseGrowingTime:J

.field private pausedTimeWithoutGrowing:J

.field private rimColor:I

.field private rimPaint:Landroid/graphics/Paint;

.field private rimWidth:I

.field private shouldAnimate:Z

.field private spinSpeed:F

.field private timeStartGrowing:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/esafirm/imagepicker/view/ProgressWheel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/esafirm/imagepicker/view/ProgressWheel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 94
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    const/16 v0, 0x10

    iput v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barLength:I

    .line 34
    const/16 v0, 0x10e

    iput v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barMaxLength:I

    .line 35
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->pauseGrowingTime:J

    .line 42
    const/16 v0, 0x1c

    iput v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->circleRadius:I

    .line 43
    iput v4, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barWidth:I

    .line 44
    iput v4, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->rimWidth:I

    .line 45
    iput-boolean v3, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->fillRadius:Z

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->timeStartGrowing:D

    .line 47
    const-wide v0, 0x407cc00000000000L    # 460.0

    iput-wide v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barSpinCycleTime:D

    .line 48
    iput v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barExtraLength:F

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barGrowingFromFront:Z

    .line 50
    iput-wide v6, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->pausedTimeWithoutGrowing:J

    .line 52
    const/high16 v0, -0x56000000

    iput v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barColor:I

    .line 53
    const v0, 0xffffff

    iput v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->rimColor:I

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    .line 60
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    .line 64
    const/high16 v0, 0x43660000    # 230.0f

    iput v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->spinSpeed:F

    .line 67
    iput-wide v6, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->lastTimeAnimated:J

    .line 71
    iput v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mProgress:F

    .line 72
    iput v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mTargetProgress:F

    .line 73
    iput-boolean v3, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->isSpinning:Z

    .line 95
    invoke-direct {p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->setAnimationEnabled()V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/16 v0, 0x10

    iput v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barLength:I

    .line 34
    const/16 v0, 0x10e

    iput v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barMaxLength:I

    .line 35
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->pauseGrowingTime:J

    .line 42
    const/16 v0, 0x1c

    iput v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->circleRadius:I

    .line 43
    iput v4, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barWidth:I

    .line 44
    iput v4, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->rimWidth:I

    .line 45
    iput-boolean v3, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->fillRadius:Z

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->timeStartGrowing:D

    .line 47
    const-wide v0, 0x407cc00000000000L    # 460.0

    iput-wide v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barSpinCycleTime:D

    .line 48
    iput v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barExtraLength:F

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barGrowingFromFront:Z

    .line 50
    iput-wide v6, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->pausedTimeWithoutGrowing:J

    .line 52
    const/high16 v0, -0x56000000

    iput v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barColor:I

    .line 53
    const v0, 0xffffff

    iput v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->rimColor:I

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    .line 60
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    .line 64
    const/high16 v0, 0x43660000    # 230.0f

    iput v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->spinSpeed:F

    .line 67
    iput-wide v6, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->lastTimeAnimated:J

    .line 71
    iput v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mProgress:F

    .line 72
    iput v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mTargetProgress:F

    .line 73
    iput-boolean v3, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->isSpinning:Z

    .line 85
    sget-object v0, Lcom/esafirm/imagepicker/R$styleable;->ef_ProgressWheel:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->parseAttributes(Landroid/content/res/TypedArray;)V

    .line 87
    invoke-direct {p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->setAnimationEnabled()V

    .line 88
    return-void
.end method

.method private parseAttributes(Landroid/content/res/TypedArray;)V
    .locals 7
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 223
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 224
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barWidth:I

    int-to-float v2, v2

    invoke-static {v3, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barWidth:I

    .line 225
    iget v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->rimWidth:I

    int-to-float v2, v2

    invoke-static {v3, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->rimWidth:I

    .line 226
    iget v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->circleRadius:I

    int-to-float v2, v2

    .line 227
    invoke-static {v3, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->circleRadius:I

    .line 229
    sget v2, Lcom/esafirm/imagepicker/R$styleable;->ef_ProgressWheel_ef_matProg_circleRadius:I

    iget v3, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->circleRadius:I

    int-to-float v3, v3

    .line 230
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->circleRadius:I

    .line 232
    sget v2, Lcom/esafirm/imagepicker/R$styleable;->ef_ProgressWheel_ef_matProg_fillRadius:I

    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->fillRadius:Z

    .line 234
    sget v2, Lcom/esafirm/imagepicker/R$styleable;->ef_ProgressWheel_ef_matProg_barWidth:I

    iget v3, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barWidth:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barWidth:I

    .line 236
    sget v2, Lcom/esafirm/imagepicker/R$styleable;->ef_ProgressWheel_ef_matProg_rimWidth:I

    iget v3, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->rimWidth:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->rimWidth:I

    .line 238
    sget v2, Lcom/esafirm/imagepicker/R$styleable;->ef_ProgressWheel_ef_matProg_spinSpeed:I

    iget v3, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->spinSpeed:F

    div-float/2addr v3, v4

    .line 239
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 240
    .local v0, "baseSpinSpeed":F
    mul-float v2, v0, v4

    iput v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->spinSpeed:F

    .line 242
    sget v2, Lcom/esafirm/imagepicker/R$styleable;->ef_ProgressWheel_ef_matProg_barSpinCycleTime:I

    iget-wide v4, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barSpinCycleTime:D

    double-to-int v3, v4

    .line 243
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-double v2, v2

    iput-wide v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barSpinCycleTime:D

    .line 245
    sget v2, Lcom/esafirm/imagepicker/R$styleable;->ef_ProgressWheel_ef_matProg_barColor:I

    iget v3, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barColor:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barColor:I

    .line 247
    sget v2, Lcom/esafirm/imagepicker/R$styleable;->ef_ProgressWheel_ef_matProg_rimColor:I

    iget v3, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->rimColor:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->rimColor:I

    .line 249
    sget v2, Lcom/esafirm/imagepicker/R$styleable;->ef_ProgressWheel_ef_matProg_linearProgress:I

    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->linearProgress:Z

    .line 251
    sget v2, Lcom/esafirm/imagepicker/R$styleable;->ef_ProgressWheel_ef_matProg_progressIndeterminate:I

    invoke-virtual {p1, v2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->spin()V

    .line 256
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 257
    return-void
.end method

.method private runCallback()V
    .locals 4

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    .line 430
    iget-object v1, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->callback:Lcom/esafirm/imagepicker/view/ProgressWheel$ProgressCallback;

    if-eqz v1, :cond_0

    .line 431
    iget v1, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mProgress:F

    mul-float/2addr v1, v3

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    div-float v0, v1, v3

    .line 432
    .local v0, "normalizedProgress":F
    iget-object v1, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->callback:Lcom/esafirm/imagepicker/view/ProgressWheel$ProgressCallback;

    invoke-interface {v1, v0}, Lcom/esafirm/imagepicker/view/ProgressWheel$ProgressCallback;->onProgressUpdate(F)V

    .line 434
    .end local v0    # "normalizedProgress":F
    :cond_0
    return-void
.end method

.method private runCallback(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 424
    iget-object v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->callback:Lcom/esafirm/imagepicker/view/ProgressWheel$ProgressCallback;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->callback:Lcom/esafirm/imagepicker/view/ProgressWheel$ProgressCallback;

    invoke-interface {v0, p1}, Lcom/esafirm/imagepicker/view/ProgressWheel$ProgressCallback;->onProgressUpdate(F)V

    .line 427
    :cond_0
    return-void
.end method

.method private setAnimationEnabled()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 99
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 102
    .local v1, "currentApiVersion":I
    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "animator_duration_scale"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 110
    .local v0, "animationValue":F
    :goto_0
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->shouldAnimate:Z

    .line 111
    return-void

    .line 106
    .end local v0    # "animationValue":F
    :cond_0
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "animator_duration_scale"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .restart local v0    # "animationValue":F
    goto :goto_0

    .line 110
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private setupBounds(II)V
    .locals 14
    .param p1, "layout_width"    # I
    .param p2, "layout_height"    # I

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->getPaddingTop()I

    move-result v5

    .line 192
    .local v5, "paddingTop":I
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->getPaddingBottom()I

    move-result v2

    .line 193
    .local v2, "paddingBottom":I
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->getPaddingLeft()I

    move-result v3

    .line 194
    .local v3, "paddingLeft":I
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->getPaddingRight()I

    move-result v4

    .line 196
    .local v4, "paddingRight":I
    iget-boolean v8, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->fillRadius:Z

    if-nez v8, :cond_0

    .line 198
    sub-int v8, p1, v3

    sub-int/2addr v8, v4

    sub-int v9, p2, v2

    sub-int/2addr v9, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 201
    .local v1, "minValue":I
    iget v8, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->circleRadius:I

    mul-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barWidth:I

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 204
    .local v0, "circleDiameter":I
    sub-int v8, p1, v3

    sub-int/2addr v8, v4

    sub-int/2addr v8, v0

    div-int/lit8 v8, v8, 0x2

    add-int v6, v8, v3

    .line 205
    .local v6, "xOffset":I
    sub-int v8, p2, v5

    sub-int/2addr v8, v2

    sub-int/2addr v8, v0

    div-int/lit8 v8, v8, 0x2

    add-int v7, v8, v5

    .line 207
    .local v7, "yOffset":I
    new-instance v8, Landroid/graphics/RectF;

    iget v9, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barWidth:I

    add-int/2addr v9, v6

    int-to-float v9, v9

    iget v10, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barWidth:I

    add-int/2addr v10, v7

    int-to-float v10, v10

    add-int v11, v6, v0

    iget v12, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barWidth:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    add-int v12, v7, v0

    iget v13, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barWidth:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v8, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    .line 214
    .end local v0    # "circleDiameter":I
    .end local v1    # "minValue":I
    .end local v6    # "xOffset":I
    .end local v7    # "yOffset":I
    :goto_0
    return-void

    .line 211
    :cond_0
    new-instance v8, Landroid/graphics/RectF;

    iget v9, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barWidth:I

    add-int/2addr v9, v3

    int-to-float v9, v9

    iget v10, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barWidth:I

    add-int/2addr v10, v5

    int-to-float v10, v10

    sub-int v11, p1, v4

    iget v12, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barWidth:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    sub-int v12, p2, v2

    iget v13, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barWidth:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v8, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method private setupPaints()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 176
    iget-object v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    iget-object v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 178
    iget-object v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 179
    iget-object v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 181
    iget-object v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->rimColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    iget-object v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 183
    iget-object v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 184
    iget-object v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->rimWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 185
    return-void
.end method

.method private updateBarLength(J)V
    .locals 9
    .param p1, "deltaTimeInMilliSeconds"    # J

    .prologue
    .line 358
    iget-wide v4, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->pausedTimeWithoutGrowing:J

    const-wide/16 v6, 0xc8

    cmp-long v3, v4, v6

    if-ltz v3, :cond_3

    .line 359
    iget-wide v4, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->timeStartGrowing:D

    long-to-double v6, p1

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->timeStartGrowing:D

    .line 361
    iget-wide v4, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->timeStartGrowing:D

    iget-wide v6, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barSpinCycleTime:D

    cmpl-double v3, v4, v6

    if-lez v3, :cond_0

    .line 364
    iget-wide v4, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->timeStartGrowing:D

    iget-wide v6, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barSpinCycleTime:D

    sub-double/2addr v4, v6

    iput-wide v4, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->timeStartGrowing:D

    .line 366
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->pausedTimeWithoutGrowing:J

    .line 368
    iget-boolean v3, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barGrowingFromFront:Z

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barGrowingFromFront:Z

    .line 371
    :cond_0
    iget-wide v4, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->timeStartGrowing:D

    iget-wide v6, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barSpinCycleTime:D

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    .line 372
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float v1, v3, v4

    .line 373
    .local v1, "distance":F
    const/high16 v0, 0x437e0000    # 254.0f

    .line 375
    .local v0, "destLength":F
    iget-boolean v3, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barGrowingFromFront:Z

    if-eqz v3, :cond_2

    .line 376
    mul-float v3, v1, v0

    iput v3, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barExtraLength:F

    .line 385
    .end local v0    # "destLength":F
    .end local v1    # "distance":F
    :goto_1
    return-void

    .line 368
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 378
    .restart local v0    # "destLength":F
    .restart local v1    # "distance":F
    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v1

    mul-float v2, v0, v3

    .line 379
    .local v2, "newLength":F
    iget v3, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mProgress:F

    iget v4, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barExtraLength:F

    sub-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mProgress:F

    .line 380
    iput v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barExtraLength:F

    goto :goto_1

    .line 383
    .end local v0    # "destLength":F
    .end local v1    # "distance":F
    .end local v2    # "newLength":F
    :cond_3
    iget-wide v4, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->pausedTimeWithoutGrowing:J

    add-long/2addr v4, p1

    iput-wide v4, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->pausedTimeWithoutGrowing:J

    goto :goto_1
.end method


# virtual methods
.method public getBarColor()I
    .locals 1

    .prologue
    .line 612
    iget v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barColor:I

    return v0
.end method

.method public getBarWidth()I
    .locals 1

    .prologue
    .line 593
    iget v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barWidth:I

    return v0
.end method

.method public getCircleRadius()I
    .locals 1

    .prologue
    .line 574
    iget v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->circleRadius:I

    return v0
.end method

.method public getProgress()F
    .locals 2

    .prologue
    .line 515
    iget-boolean v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->isSpinning:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mProgress:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public getRimColor()I
    .locals 1

    .prologue
    .line 632
    iget v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->rimColor:I

    return v0
.end method

.method public getRimWidth()I
    .locals 1

    .prologue
    .line 672
    iget v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->rimWidth:I

    return v0
.end method

.method public getSpinSpeed()F
    .locals 2

    .prologue
    .line 654
    iget v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->spinSpeed:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public isSpinning()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->isSpinning:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 272
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/esafirm/imagepicker/view/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/high16 v4, 0x43b40000    # 360.0f

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/esafirm/imagepicker/view/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 276
    const/16 v16, 0x0

    .line 278
    .local v16, "mustInvalidate":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/esafirm/imagepicker/view/ProgressWheel;->shouldAnimate:Z

    if-nez v2, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/esafirm/imagepicker/view/ProgressWheel;->isSpinning:Z

    if-eqz v2, :cond_4

    .line 284
    const/16 v16, 0x1

    .line 286
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/esafirm/imagepicker/view/ProgressWheel;->lastTimeAnimated:J

    sub-long v14, v2, v6

    .line 287
    .local v14, "deltaTime":J
    long-to-float v2, v14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/esafirm/imagepicker/view/ProgressWheel;->spinSpeed:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v12, v2, v3

    .line 289
    .local v12, "deltaNormalized":F
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/esafirm/imagepicker/view/ProgressWheel;->updateBarLength(J)V

    .line 291
    move-object/from16 v0, p0

    iget v2, v0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mProgress:F

    add-float/2addr v2, v12

    move-object/from16 v0, p0

    iput v2, v0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mProgress:F

    .line 292
    move-object/from16 v0, p0

    iget v2, v0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mProgress:F

    const/high16 v3, 0x43b40000    # 360.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 293
    move-object/from16 v0, p0

    iget v2, v0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mProgress:F

    const/high16 v3, 0x43b40000    # 360.0f

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mProgress:F

    .line 298
    const/high16 v2, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/esafirm/imagepicker/view/ProgressWheel;->runCallback(F)V

    .line 300
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/esafirm/imagepicker/view/ProgressWheel;->lastTimeAnimated:J

    .line 302
    move-object/from16 v0, p0

    iget v2, v0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mProgress:F

    const/high16 v3, 0x42b40000    # 90.0f

    sub-float v4, v2, v3

    .line 303
    .local v4, "from":F
    const/high16 v2, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barExtraLength:F

    add-float v5, v2, v3

    .line 305
    .local v5, "length":F
    invoke-virtual/range {p0 .. p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 306
    const/4 v4, 0x0

    .line 307
    const/high16 v5, 0x43070000    # 135.0f

    .line 310
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/esafirm/imagepicker/view/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 344
    .end local v4    # "from":F
    .end local v5    # "length":F
    .end local v12    # "deltaNormalized":F
    .end local v14    # "deltaTime":J
    :goto_1
    if-eqz v16, :cond_0

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->invalidate()V

    goto :goto_0

    .line 312
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mProgress:F

    move/from16 v18, v0

    .line 314
    .local v18, "oldProgress":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mProgress:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mTargetProgress:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    .line 316
    const/16 v16, 0x1

    .line 318
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/esafirm/imagepicker/view/ProgressWheel;->lastTimeAnimated:J

    sub-long/2addr v2, v6

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v14, v2, v3

    .line 319
    .local v14, "deltaTime":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/esafirm/imagepicker/view/ProgressWheel;->spinSpeed:F

    mul-float v12, v14, v2

    .line 321
    .restart local v12    # "deltaNormalized":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mProgress:F

    add-float/2addr v2, v12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mTargetProgress:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mProgress:F

    .line 322
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/esafirm/imagepicker/view/ProgressWheel;->lastTimeAnimated:J

    .line 325
    .end local v12    # "deltaNormalized":F
    .end local v14    # "deltaTime":F
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mProgress:F

    cmpl-float v2, v18, v2

    if-eqz v2, :cond_6

    .line 326
    invoke-direct/range {p0 .. p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->runCallback()V

    .line 329
    :cond_6
    const/16 v17, 0x0

    .line 330
    .local v17, "offset":F
    move-object/from16 v0, p0

    iget v9, v0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mProgress:F

    .line 331
    .local v9, "progress":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/esafirm/imagepicker/view/ProgressWheel;->linearProgress:Z

    if-nez v2, :cond_7

    .line 332
    const/high16 v13, 0x40000000    # 2.0f

    .line 333
    .local v13, "factor":F
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mProgress:F

    const/high16 v8, 0x43b40000    # 360.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-double v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v13

    float-to-double v10, v8

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v2, v6

    double-to-float v2, v2

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float v17, v2, v3

    .line 334
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mProgress:F

    const/high16 v8, 0x43b40000    # 360.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-double v6, v6

    float-to-double v10, v13

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v2, v6

    double-to-float v2, v2

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float v9, v2, v3

    .line 337
    .end local v13    # "factor":F
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 338
    const/high16 v9, 0x43b40000    # 360.0f

    .line 341
    :cond_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/esafirm/imagepicker/view/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float v8, v17, v2

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v11, -0x80000000

    const/high16 v10, 0x40000000    # 2.0f

    .line 118
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 120
    iget v8, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->circleRadius:I

    invoke-virtual {p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->getPaddingRight()I

    move-result v9

    add-int v4, v8, v9

    .line 121
    .local v4, "viewWidth":I
    iget v8, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->circleRadius:I

    invoke-virtual {p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->getPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->getPaddingBottom()I

    move-result v9

    add-int v3, v8, v9

    .line 123
    .local v3, "viewHeight":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 124
    .local v6, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 125
    .local v7, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 126
    .local v1, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 132
    .local v2, "heightSize":I
    if-ne v6, v10, :cond_1

    .line 134
    move v5, v7

    .line 144
    .local v5, "width":I
    :goto_0
    if-eq v1, v10, :cond_0

    if-ne v6, v10, :cond_3

    .line 146
    :cond_0
    move v0, v2

    .line 155
    .local v0, "height":I
    :goto_1
    invoke-virtual {p0, v5, v0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->setMeasuredDimension(II)V

    .line 156
    return-void

    .line 135
    .end local v0    # "height":I
    .end local v5    # "width":I
    :cond_1
    if-ne v6, v11, :cond_2

    .line 137
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .restart local v5    # "width":I
    goto :goto_0

    .line 140
    .end local v5    # "width":I
    :cond_2
    move v5, v4

    .restart local v5    # "width":I
    goto :goto_0

    .line 147
    :cond_3
    if-ne v1, v11, :cond_4

    .line 149
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_1

    .line 152
    .end local v0    # "height":I
    :cond_4
    move v0, v3

    .restart local v0    # "height":I
    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 487
    instance-of v1, p1, Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;

    if-nez v1, :cond_0

    .line 488
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 508
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 492
    check-cast v0, Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;

    .line 493
    .local v0, "ss":Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;
    invoke-virtual {v0}, Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 495
    iget v1, v0, Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;->mProgress:F

    iput v1, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mProgress:F

    .line 496
    iget v1, v0, Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;->mTargetProgress:F

    iput v1, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mTargetProgress:F

    .line 497
    iget-boolean v1, v0, Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;->isSpinning:Z

    iput-boolean v1, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->isSpinning:Z

    .line 498
    iget v1, v0, Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;->spinSpeed:F

    iput v1, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->spinSpeed:F

    .line 499
    iget v1, v0, Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;->barWidth:I

    iput v1, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barWidth:I

    .line 500
    iget v1, v0, Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;->barColor:I

    iput v1, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barColor:I

    .line 501
    iget v1, v0, Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;->rimWidth:I

    iput v1, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->rimWidth:I

    .line 502
    iget v1, v0, Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;->rimColor:I

    iput v1, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->rimColor:I

    .line 503
    iget v1, v0, Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;->circleRadius:I

    iput v1, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->circleRadius:I

    .line 504
    iget-boolean v1, v0, Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;->linearProgress:Z

    iput-boolean v1, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->linearProgress:Z

    .line 505
    iget-boolean v1, v0, Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;->fillRadius:Z

    iput-boolean v1, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->fillRadius:Z

    .line 507
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->lastTimeAnimated:J

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 466
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 468
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;

    invoke-direct {v0, v1}, Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 471
    .local v0, "ss":Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;
    iget v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mProgress:F

    iput v2, v0, Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;->mProgress:F

    .line 472
    iget v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mTargetProgress:F

    iput v2, v0, Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;->mTargetProgress:F

    .line 473
    iget-boolean v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->isSpinning:Z

    iput-boolean v2, v0, Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;->isSpinning:Z

    .line 474
    iget v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->spinSpeed:F

    iput v2, v0, Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;->spinSpeed:F

    .line 475
    iget v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barWidth:I

    iput v2, v0, Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;->barWidth:I

    .line 476
    iget v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barColor:I

    iput v2, v0, Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;->barColor:I

    .line 477
    iget v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->rimWidth:I

    iput v2, v0, Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;->rimWidth:I

    .line 478
    iget v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->rimColor:I

    iput v2, v0, Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;->rimColor:I

    .line 479
    iget v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->circleRadius:I

    iput v2, v0, Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;->circleRadius:I

    .line 480
    iget-boolean v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->linearProgress:Z

    iput-boolean v2, v0, Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;->linearProgress:Z

    .line 481
    iget-boolean v2, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->fillRadius:Z

    iput-boolean v2, v0, Lcom/esafirm/imagepicker/view/ProgressWheel$WheelSavedState;->fillRadius:Z

    .line 483
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 164
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 166
    invoke-direct {p0, p1, p2}, Lcom/esafirm/imagepicker/view/ProgressWheel;->setupBounds(II)V

    .line 167
    invoke-direct {p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->setupPaints()V

    .line 168
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->invalidate()V

    .line 169
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 350
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 352
    if-nez p2, :cond_0

    .line 353
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->lastTimeAnimated:J

    .line 355
    :cond_0
    return-void
.end method

.method public resetCount()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 399
    iput v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mProgress:F

    .line 400
    iput v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mTargetProgress:F

    .line 401
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->invalidate()V

    .line 402
    return-void
.end method

.method public setBarColor(I)V
    .locals 1
    .param p1, "barColor"    # I

    .prologue
    .line 621
    iput p1, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barColor:I

    .line 622
    invoke-direct {p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->setupPaints()V

    .line 623
    iget-boolean v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->isSpinning:Z

    if-nez v0, :cond_0

    .line 624
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->invalidate()V

    .line 626
    :cond_0
    return-void
.end method

.method public setBarWidth(I)V
    .locals 1
    .param p1, "barWidth"    # I

    .prologue
    .line 602
    iput p1, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->barWidth:I

    .line 603
    iget-boolean v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->isSpinning:Z

    if-nez v0, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->invalidate()V

    .line 606
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/esafirm/imagepicker/view/ProgressWheel$ProgressCallback;)V
    .locals 1
    .param p1, "progressCallback"    # Lcom/esafirm/imagepicker/view/ProgressWheel$ProgressCallback;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->callback:Lcom/esafirm/imagepicker/view/ProgressWheel$ProgressCallback;

    .line 262
    iget-boolean v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->isSpinning:Z

    if-nez v0, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->runCallback()V

    .line 265
    :cond_0
    return-void
.end method

.method public setCircleRadius(I)V
    .locals 1
    .param p1, "circleRadius"    # I

    .prologue
    .line 583
    iput p1, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->circleRadius:I

    .line 584
    iget-boolean v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->isSpinning:Z

    if-nez v0, :cond_0

    .line 585
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->invalidate()V

    .line 587
    :cond_0
    return-void
.end method

.method public setInstantProgress(F)V
    .locals 4
    .param p1, "progress"    # F

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 443
    iget-boolean v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->isSpinning:Z

    if-eqz v0, :cond_0

    .line 444
    iput v1, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mProgress:F

    .line 445
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->isSpinning:Z

    .line 448
    :cond_0
    cmpl-float v0, p1, v2

    if-lez v0, :cond_2

    .line 449
    sub-float/2addr p1, v2

    .line 454
    :cond_1
    :goto_0
    iget v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mTargetProgress:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    .line 462
    :goto_1
    return-void

    .line 450
    :cond_2
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    .line 451
    const/4 p1, 0x0

    goto :goto_0

    .line 458
    :cond_3
    mul-float v0, p1, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mTargetProgress:F

    .line 459
    iget v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mTargetProgress:F

    iput v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mProgress:F

    .line 460
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->lastTimeAnimated:J

    .line 461
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->invalidate()V

    goto :goto_1
.end method

.method public setLinearProgress(Z)V
    .locals 1
    .param p1, "isLinear"    # Z

    .prologue
    .line 564
    iput-boolean p1, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->linearProgress:Z

    .line 565
    iget-boolean v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->isSpinning:Z

    if-nez v0, :cond_0

    .line 566
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->invalidate()V

    .line 568
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 4
    .param p1, "progress"    # F

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 529
    iget-boolean v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->isSpinning:Z

    if-eqz v0, :cond_0

    .line 530
    iput v1, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mProgress:F

    .line 531
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->isSpinning:Z

    .line 533
    invoke-direct {p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->runCallback()V

    .line 536
    :cond_0
    cmpl-float v0, p1, v2

    if-lez v0, :cond_2

    .line 537
    sub-float/2addr p1, v2

    .line 542
    :cond_1
    :goto_0
    iget v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mTargetProgress:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    .line 556
    :goto_1
    return-void

    .line 538
    :cond_2
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    .line 539
    const/4 p1, 0x0

    goto :goto_0

    .line 549
    :cond_3
    iget v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mProgress:F

    iget v1, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mTargetProgress:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    .line 550
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->lastTimeAnimated:J

    .line 553
    :cond_4
    mul-float v0, p1, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mTargetProgress:F

    .line 555
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->invalidate()V

    goto :goto_1
.end method

.method public setRimColor(I)V
    .locals 1
    .param p1, "rimColor"    # I

    .prologue
    .line 641
    iput p1, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->rimColor:I

    .line 642
    invoke-direct {p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->setupPaints()V

    .line 643
    iget-boolean v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->isSpinning:Z

    if-nez v0, :cond_0

    .line 644
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->invalidate()V

    .line 646
    :cond_0
    return-void
.end method

.method public setRimWidth(I)V
    .locals 1
    .param p1, "rimWidth"    # I

    .prologue
    .line 681
    iput p1, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->rimWidth:I

    .line 682
    iget-boolean v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->isSpinning:Z

    if-nez v0, :cond_0

    .line 683
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->invalidate()V

    .line 685
    :cond_0
    return-void
.end method

.method public setSpinSpeed(F)V
    .locals 1
    .param p1, "spinSpeed"    # F

    .prologue
    .line 665
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->spinSpeed:F

    .line 666
    return-void
.end method

.method public spin()V
    .locals 2

    .prologue
    .line 418
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->lastTimeAnimated:J

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->isSpinning:Z

    .line 420
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->invalidate()V

    .line 421
    return-void
.end method

.method public stopSpinning()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->isSpinning:Z

    .line 409
    iput v1, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mProgress:F

    .line 410
    iput v1, p0, Lcom/esafirm/imagepicker/view/ProgressWheel;->mTargetProgress:F

    .line 411
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->invalidate()V

    .line 412
    return-void
.end method
