.class public Lat/grabner/circleprogress/CircleProgressView;
.super Landroid/view/View;
.source "CircleProgressView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/grabner/circleprogress/CircleProgressView$OnProgressChangedListener;
    }
.end annotation


# instance fields
.field private decimalFormat:Ljava/text/DecimalFormat;

.field protected mActualTextBounds:Landroid/graphics/RectF;

.field mAnimationDuration:D

.field mAnimationHandler:Lat/grabner/circleprogress/AnimationHandler;

.field mAnimationState:Lat/grabner/circleprogress/AnimationState;

.field mAnimationStateChangedListener:Lat/grabner/circleprogress/AnimationStateChangedListener;

.field private mBackgroundCircleColor:I

.field private mBackgroundCirclePaint:Landroid/graphics/Paint;

.field private final mBarColorStandard:I

.field private mBarColors:[I

.field private mBarPaint:Landroid/graphics/Paint;

.field private mBarSpinnerPaint:Landroid/graphics/Paint;

.field private mBarStartEndLine:Lat/grabner/circleprogress/BarStartEndLine;

.field private mBarStartEndLineColor:I

.field private mBarStartEndLinePaint:Landroid/graphics/Paint;

.field private mBarStartEndLineWidth:I

.field private mBarStrokeCap:Landroid/graphics/Paint$Cap;

.field private mBarWidth:I

.field private mBlockCount:I

.field private mBlockDegree:F

.field private mBlockScale:F

.field private mBlockScaleDegree:F

.field protected mCenter:Landroid/graphics/PointF;

.field protected mCircleBounds:Landroid/graphics/RectF;

.field protected mCircleInnerContour:Landroid/graphics/RectF;

.field protected mCircleOuterContour:Landroid/graphics/RectF;

.field private mClippingBitmap:Landroid/graphics/Bitmap;

.field mCurrentSpinnerDegreeValue:F

.field mCurrentValue:F

.field mDirection:Lat/grabner/circleprogress/Direction;

.field mDrawBarWhileSpinning:Z

.field mFrameDelayMillis:I

.field protected mInnerCircleBound:Landroid/graphics/RectF;

.field private mInnerContourColor:I

.field private mInnerContourPaint:Landroid/graphics/Paint;

.field private mInnerContourSize:F

.field private mIsAutoColorEnabled:Z

.field private mIsAutoTextSize:Z

.field protected mLayoutHeight:I

.field protected mLayoutWidth:I

.field private mMaskPaint:Landroid/graphics/Paint;

.field mMaxValue:F

.field private mOuterContourColor:I

.field private mOuterContourPaint:Landroid/graphics/Paint;

.field private mOuterContourSize:F

.field protected mOuterTextBounds:Landroid/graphics/RectF;

.field private mRelativeUniteSize:F

.field private mRimColor:I

.field private mRimPaint:Landroid/graphics/Paint;

.field private mRimWidth:I

.field private mRoundToBlock:Z

.field private mSeekModeEnabled:Z

.field private mShowBlock:Z

.field private mShowTextWhileSpinning:Z

.field private mShowUnit:Z

.field mSpinSpeed:F

.field private mSpinnerColor:I

.field private mSpinnerStrokeCap:Landroid/graphics/Paint$Cap;

.field mSpinningBarLengthCurrent:F

.field mSpinningBarLengthOrig:F

.field private mStartAngle:I

.field private mText:Ljava/lang/String;

.field private mTextColor:I

.field private mTextLength:I

.field private mTextMode:Lat/grabner/circleprogress/TextMode;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextScale:F

.field private mTextSize:I

.field private mTouchEventCount:I

.field private mUnit:Ljava/lang/String;

.field protected mUnitBounds:Landroid/graphics/RectF;

.field private mUnitColor:I

.field private mUnitPosition:Lat/grabner/circleprogress/UnitPosition;

.field private mUnitScale:F

.field private mUnitTextPaint:Landroid/graphics/Paint;

.field private mUnitTextSize:I

.field mValueFrom:F

.field mValueTo:F

.field private onProgressChangedListener:Lat/grabner/circleprogress/CircleProgressView$OnProgressChangedListener;

.field private previousProgressChangedValue:F

.field private textTypeface:Landroid/graphics/Typeface;

.field private unitTextTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const v4, -0xff6978

    const/4 v5, 0x0

    .line 195
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iput v4, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarColorStandard:I

    .line 64
    iput v5, p0, Lat/grabner/circleprogress/CircleProgressView;->mLayoutHeight:I

    .line 65
    iput v5, p0, Lat/grabner/circleprogress/CircleProgressView;->mLayoutWidth:I

    .line 67
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mCircleBounds:Landroid/graphics/RectF;

    .line 68
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mInnerCircleBound:Landroid/graphics/RectF;

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    .line 77
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mActualTextBounds:Landroid/graphics/RectF;

    .line 78
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitBounds:Landroid/graphics/RectF;

    .line 79
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mCircleOuterContour:Landroid/graphics/RectF;

    .line 80
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mCircleInnerContour:Landroid/graphics/RectF;

    .line 82
    sget-object v0, Lat/grabner/circleprogress/Direction;->CW:Lat/grabner/circleprogress/Direction;

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mDirection:Lat/grabner/circleprogress/Direction;

    .line 83
    const/high16 v0, 0x42280000    # 42.0f

    iput v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mCurrentValue:F

    .line 84
    iput v8, p0, Lat/grabner/circleprogress/CircleProgressView;->mValueTo:F

    .line 85
    iput v8, p0, Lat/grabner/circleprogress/CircleProgressView;->mValueFrom:F

    .line 86
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mMaxValue:F

    .line 88
    iput v8, p0, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthCurrent:F

    .line 89
    const/high16 v0, 0x42280000    # 42.0f

    iput v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthOrig:F

    .line 90
    iput v8, p0, Lat/grabner/circleprogress/CircleProgressView;->mCurrentSpinnerDegreeValue:F

    .line 93
    const v0, 0x40333333    # 2.8f

    iput v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mSpinSpeed:F

    .line 97
    const-wide v0, 0x408c200000000000L    # 900.0

    iput-wide v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationDuration:D

    .line 99
    const/16 v0, 0xa

    iput v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mFrameDelayMillis:I

    .line 103
    new-instance v0, Lat/grabner/circleprogress/AnimationHandler;

    invoke-direct {v0, p0}, Lat/grabner/circleprogress/AnimationHandler;-><init>(Lat/grabner/circleprogress/CircleProgressView;)V

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationHandler:Lat/grabner/circleprogress/AnimationHandler;

    .line 105
    sget-object v0, Lat/grabner/circleprogress/AnimationState;->IDLE:Lat/grabner/circleprogress/AnimationState;

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationState:Lat/grabner/circleprogress/AnimationState;

    .line 107
    const/16 v0, 0x28

    iput v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarWidth:I

    .line 108
    const/16 v0, 0x28

    iput v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mRimWidth:I

    .line 109
    const/16 v0, 0x10e

    iput v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mStartAngle:I

    .line 110
    iput v7, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterContourSize:F

    .line 111
    iput v7, p0, Lat/grabner/circleprogress/CircleProgressView;->mInnerContourSize:F

    .line 114
    iput v5, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarStartEndLineWidth:I

    .line 115
    sget-object v0, Lat/grabner/circleprogress/BarStartEndLine;->NONE:Lat/grabner/circleprogress/BarStartEndLine;

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarStartEndLine:Lat/grabner/circleprogress/BarStartEndLine;

    .line 116
    const/high16 v0, -0x56000000

    iput v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarStartEndLineColor:I

    .line 118
    const/16 v0, 0xa

    iput v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitTextSize:I

    .line 119
    const/16 v0, 0xa

    iput v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextSize:I

    .line 121
    iput v7, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextScale:F

    .line 122
    iput v7, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitScale:F

    .line 123
    const/high16 v0, -0x56000000

    iput v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterContourColor:I

    .line 124
    const/high16 v0, -0x56000000

    iput v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mInnerContourColor:I

    .line 125
    iput v4, p0, Lat/grabner/circleprogress/CircleProgressView;->mSpinnerColor:I

    .line 126
    iput v5, p0, Lat/grabner/circleprogress/CircleProgressView;->mBackgroundCircleColor:I

    .line 127
    const v0, -0x557c2f37

    iput v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mRimColor:I

    .line 128
    const/high16 v0, -0x1000000

    iput v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextColor:I

    .line 129
    const/high16 v0, -0x1000000

    iput v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitColor:I

    .line 130
    iput-boolean v5, p0, Lat/grabner/circleprogress/CircleProgressView;->mIsAutoColorEnabled:Z

    .line 131
    new-array v0, v6, [I

    aput v4, v0, v5

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarColors:[I

    .line 135
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarStrokeCap:Landroid/graphics/Paint$Cap;

    .line 136
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mSpinnerStrokeCap:Landroid/graphics/Paint$Cap;

    .line 138
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarPaint:Landroid/graphics/Paint;

    .line 139
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarSpinnerPaint:Landroid/graphics/Paint;

    .line 140
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarStartEndLinePaint:Landroid/graphics/Paint;

    .line 141
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBackgroundCirclePaint:Landroid/graphics/Paint;

    .line 142
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mRimPaint:Landroid/graphics/Paint;

    .line 143
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextPaint:Landroid/graphics/Paint;

    .line 144
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitTextPaint:Landroid/graphics/Paint;

    .line 145
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterContourPaint:Landroid/graphics/Paint;

    .line 146
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mInnerContourPaint:Landroid/graphics/Paint;

    .line 149
    const-string v0, ""

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mText:Ljava/lang/String;

    .line 151
    const-string v0, ""

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnit:Ljava/lang/String;

    .line 152
    sget-object v0, Lat/grabner/circleprogress/UnitPosition;->RIGHT_TOP:Lat/grabner/circleprogress/UnitPosition;

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitPosition:Lat/grabner/circleprogress/UnitPosition;

    .line 156
    sget-object v0, Lat/grabner/circleprogress/TextMode;->PERCENT:Lat/grabner/circleprogress/TextMode;

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextMode:Lat/grabner/circleprogress/TextMode;

    .line 158
    iput-boolean v5, p0, Lat/grabner/circleprogress/CircleProgressView;->mShowUnit:Z

    .line 165
    iput v7, p0, Lat/grabner/circleprogress/CircleProgressView;->mRelativeUniteSize:F

    .line 166
    iput-boolean v5, p0, Lat/grabner/circleprogress/CircleProgressView;->mSeekModeEnabled:Z

    .line 167
    iput-boolean v5, p0, Lat/grabner/circleprogress/CircleProgressView;->mShowTextWhileSpinning:Z

    .line 168
    iput-boolean v5, p0, Lat/grabner/circleprogress/CircleProgressView;->mShowBlock:Z

    .line 169
    const/16 v0, 0x12

    iput v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBlockCount:I

    .line 170
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBlockScale:F

    .line 171
    const/16 v0, 0x168

    iget v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mBlockCount:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBlockDegree:F

    .line 172
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBlockDegree:F

    iget v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mBlockScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBlockScaleDegree:F

    .line 173
    iput-boolean v5, p0, Lat/grabner/circleprogress/CircleProgressView;->mRoundToBlock:Z

    .line 180
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->decimalFormat:Ljava/text/DecimalFormat;

    .line 197
    sget-object v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1921
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_barWidth:I

    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setBarWidth(I)V

    .line 1924
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_rimWidth:I

    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mRimWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setRimWidth(I)V

    .line 1927
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_spinSpeed:I

    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mSpinSpeed:F

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setSpinSpeed(F)V

    .line 1930
    invoke-static {}, Lat/grabner/circleprogress/Direction;->values()[Lat/grabner/circleprogress/Direction;

    move-result-object v0

    sget v2, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_direction:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setDirection(Lat/grabner/circleprogress/Direction;)V

    .line 1932
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_value:I

    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mCurrentValue:F

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 1933
    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setValue(F)V

    .line 1934
    iput v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mCurrentValue:F

    .line 1936
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_barColor:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_10

    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_barColor1:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_10

    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_barColor2:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_10

    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_barColor3:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1937
    const/4 v0, 0x4

    new-array v0, v0, [I

    sget v2, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_barColor:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    aput v2, v0, v5

    sget v2, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_barColor1:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    aput v2, v0, v6

    const/4 v2, 0x2

    sget v3, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_barColor2:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x3

    sget v3, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_barColor3:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    aput v3, v0, v2

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarColors:[I

    .line 1951
    :goto_0
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_barStrokeCap:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1952
    invoke-static {}, Lat/grabner/circleprogress/StrokeCap;->values()[Lat/grabner/circleprogress/StrokeCap;

    move-result-object v0

    sget v2, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_barStrokeCap:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object v0, v0, v2

    iget-object v0, v0, Lat/grabner/circleprogress/StrokeCap;->paintCap:Landroid/graphics/Paint$Cap;

    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setBarStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1955
    :cond_0
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_barStartEndLineWidth:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_barStartEndLine:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1956
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_barStartEndLineWidth:I

    invoke-virtual {v1, v0, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    .line 1957
    invoke-static {}, Lat/grabner/circleprogress/BarStartEndLine;->values()[Lat/grabner/circleprogress/BarStartEndLine;

    move-result-object v2

    sget v3, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_barStartEndLine:I

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    aget-object v2, v2, v3

    sget v3, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_barStartEndLineColor:I

    iget v4, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarStartEndLineColor:I

    .line 1958
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 1956
    invoke-virtual {p0, v0, v2, v3}, Lat/grabner/circleprogress/CircleProgressView;->setBarStartEndLine(ILat/grabner/circleprogress/BarStartEndLine;I)V

    .line 1961
    :cond_1
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_spinColor:I

    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mSpinnerColor:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setSpinBarColor(I)V

    .line 1962
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_spinBarLength:I

    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthOrig:F

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setSpinningBarLength(F)V

    .line 1965
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_textSize:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1966
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_textSize:I

    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setTextSize(I)V

    .line 1968
    :cond_2
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_unitSize:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1969
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_unitSize:I

    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setUnitSize(I)V

    .line 1971
    :cond_3
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_textColor:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1972
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_textColor:I

    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextColor:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setTextColor(I)V

    .line 1974
    :cond_4
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_unitColor:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1975
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_unitColor:I

    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitColor:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setUnitColor(I)V

    .line 1977
    :cond_5
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_autoTextColor:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1978
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_autoTextColor:I

    iget-boolean v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mIsAutoColorEnabled:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setTextColorAuto(Z)V

    .line 1980
    :cond_6
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_autoTextSize:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1981
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_autoTextSize:I

    iget-boolean v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mIsAutoTextSize:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setAutoTextSize(Z)V

    .line 1983
    :cond_7
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_textMode:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1984
    invoke-static {}, Lat/grabner/circleprogress/TextMode;->values()[Lat/grabner/circleprogress/TextMode;

    move-result-object v0

    sget v2, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_textMode:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setTextMode(Lat/grabner/circleprogress/TextMode;)V

    .line 1986
    :cond_8
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_unitPosition:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1987
    invoke-static {}, Lat/grabner/circleprogress/UnitPosition;->values()[Lat/grabner/circleprogress/UnitPosition;

    move-result-object v0

    sget v2, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_unitPosition:I

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setUnitPosition(Lat/grabner/circleprogress/UnitPosition;)V

    .line 1990
    :cond_9
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_text:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1991
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_text:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setText(Ljava/lang/String;)V

    .line 1994
    :cond_a
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_unitToTextScale:I

    invoke-virtual {v1, v0, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setUnitToTextScale(F)V

    .line 1996
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_rimColor:I

    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mRimColor:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setRimColor(I)V

    .line 1999
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_fillColor:I

    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mBackgroundCircleColor:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setFillCircleColor(I)V

    .line 2002
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_outerContourColor:I

    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterContourColor:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setOuterContourColor(I)V

    .line 2003
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_outerContourSize:I

    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterContourSize:F

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setOuterContourSize(F)V

    .line 2005
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_innerContourColor:I

    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mInnerContourColor:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setInnerContourColor(I)V

    .line 2006
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_innerContourSize:I

    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mInnerContourSize:F

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setInnerContourSize(F)V

    .line 2008
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_maxValue:I

    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mMaxValue:F

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setMaxValue(F)V

    .line 2010
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_roundToBlock:I

    iget-boolean v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mRoundToBlock:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setRoundToBlock(Z)V

    .line 2012
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_unit:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setUnit(Ljava/lang/String;)V

    .line 2013
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_showUnit:I

    iget-boolean v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mShowUnit:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setUnitVisible(Z)V

    .line 2015
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_textScale:I

    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextScale:F

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setTextScale(F)V

    .line 2016
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_unitScale:I

    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitScale:F

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setUnitScale(F)V

    .line 2018
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_seekMode:I

    iget-boolean v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mSeekModeEnabled:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setSeekModeEnabled(Z)V

    .line 2020
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_startAngle:I

    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mStartAngle:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setStartAngle(I)V

    .line 2022
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_showTextInSpinningMode:I

    iget-boolean v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mShowTextWhileSpinning:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setShowTextWhileSpinning(Z)V

    .line 2024
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_blockCount:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2025
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_blockCount:I

    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setBlockCount(I)V

    .line 2026
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_blockScale:I

    const v2, 0x3f666666    # 0.9f

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setBlockScale(F)V

    .line 2029
    :cond_b
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_textTypeface:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2031
    :try_start_0
    invoke-virtual {p0}, Lat/grabner/circleprogress/CircleProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    sget v2, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_textTypeface:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->textTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2036
    :cond_c
    :goto_1
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_unitTypeface:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2038
    :try_start_1
    invoke-virtual {p0}, Lat/grabner/circleprogress/CircleProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    sget v2, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_unitTypeface:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->unitTextTypeface:Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2044
    :cond_d
    :goto_2
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_decimalFormat:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2046
    :try_start_2
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_decimalFormat:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2047
    if-eqz v0, :cond_e

    .line 2048
    new-instance v2, Ljava/text/DecimalFormat;

    invoke-direct {v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->decimalFormat:Ljava/text/DecimalFormat;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2057
    :cond_e
    :goto_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 200
    invoke-virtual {p0}, Lat/grabner/circleprogress/CircleProgressView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_f

    .line 201
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_f

    .line 202
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lat/grabner/circleprogress/CircleProgressView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 206
    :cond_f
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mMaskPaint:Landroid/graphics/Paint;

    .line 207
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 208
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mMaskPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 209
    invoke-virtual {p0}, Lat/grabner/circleprogress/CircleProgressView;->setupPaints()V

    .line 210
    return-void

    .line 1939
    :cond_10
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_barColor:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_11

    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_barColor1:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_11

    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_barColor2:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1941
    const/4 v0, 0x3

    new-array v0, v0, [I

    sget v2, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_barColor:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    aput v2, v0, v5

    sget v2, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_barColor1:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    aput v2, v0, v6

    const/4 v2, 0x2

    sget v3, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_barColor2:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    aput v3, v0, v2

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarColors:[I

    goto/16 :goto_0

    .line 1943
    :cond_11
    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_barColor:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_12

    sget v0, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_barColor1:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1945
    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v2, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_barColor:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    aput v2, v0, v5

    sget v2, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_barColor1:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    aput v2, v0, v6

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarColors:[I

    goto/16 :goto_0

    .line 1948
    :cond_12
    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v2, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_barColor:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    aput v2, v0, v5

    sget v2, Lat/grabner/circleprogress/R$styleable;->CircleProgressView_cpv_barColor:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    aput v2, v0, v6

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarColors:[I

    goto/16 :goto_0

    .line 2051
    :catch_0
    move-exception v0

    .line 2052
    const-string v2, "CircleView"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_2

    :catch_2
    move-exception v0

    goto/16 :goto_1
.end method

.method public static calcRotationAngleInDegrees(Landroid/graphics/PointF;Landroid/graphics/PointF;)D
    .locals 6
    .param p0, "centerPt"    # Landroid/graphics/PointF;
    .param p1, "targetPt"    # Landroid/graphics/PointF;

    .prologue
    .line 258
    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget v5, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    .line 268
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 274
    .local v0, "angle":D
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 275
    const-wide v2, 0x4076800000000000L    # 360.0

    add-double/2addr v0, v2

    .line 278
    :cond_0
    return-wide v0
.end method

.method private static calcTextBounds(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 8
    .param p0, "_text"    # Ljava/lang/String;
    .param p1, "_textPaint"    # Landroid/graphics/Paint;
    .param p2, "_textBounds"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 1338
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1341
    .local v1, "textBoundsTmp":Landroid/graphics/Rect;
    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, p0, v4, v5, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1342
    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v3, v4

    .line 1343
    .local v3, "width":F
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f6e147b    # 0.93f

    mul-float/2addr v5, v6

    add-float v0, v4, v5

    .line 1345
    .local v0, "height":F
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 1346
    .local v2, "textRect":Landroid/graphics/RectF;
    iget v4, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v5, v3

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->left:F

    .line 1347
    iget v4, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v5, v0

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->top:F

    .line 1348
    iget v4, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/RectF;->right:F

    .line 1349
    iget v4, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v0

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    .line 1352
    return-object v2
.end method

.method private calcTextColor(D)I
    .locals 11
    .param p1, "value"    # D

    .prologue
    const/4 v5, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 1184
    iget-object v4, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarColors:[I

    array-length v4, v4

    if-le v4, v5, :cond_2

    .line 1185
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lat/grabner/circleprogress/CircleProgressView;->getMaxValue()F

    move-result v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    mul-double v2, v4, p1

    .line 1186
    .local v2, "percent":D
    iget-object v4, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarColors:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    int-to-double v4, v4

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 1187
    .local v1, "low":I
    add-int/lit8 v0, v1, 0x1

    .line 1188
    .local v0, "high":I
    if-gez v1, :cond_1

    .line 1189
    const/4 v1, 0x0

    .line 1190
    const/4 v0, 0x1

    .line 1195
    :cond_0
    :goto_0
    iget-object v4, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarColors:[I

    aget v4, v4, v1

    iget-object v5, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarColors:[I

    aget v5, v5, v0

    iget-object v6, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarColors:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    int-to-double v6, v6

    mul-double/2addr v6, v2

    rem-double/2addr v6, v8

    sub-double v6, v8, v6

    double-to-float v6, v6

    invoke-static {v4, v5, v6}, Lat/grabner/circleprogress/ColorUtils;->getRGBGradient(IIF)I

    move-result v4

    .line 1199
    .end local v0    # "high":I
    .end local v1    # "low":I
    .end local v2    # "percent":D
    :goto_1
    return v4

    .line 1191
    .restart local v0    # "high":I
    .restart local v1    # "low":I
    .restart local v2    # "percent":D
    :cond_1
    iget-object v4, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarColors:[I

    array-length v4, v4

    if-lt v0, v4, :cond_0

    .line 1192
    iget-object v4, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarColors:[I

    array-length v4, v4

    add-int/lit8 v1, v4, -0x2

    .line 1193
    iget-object v4, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarColors:[I

    array-length v4, v4

    add-int/lit8 v0, v4, -0x1

    goto :goto_0

    .line 1196
    .end local v0    # "high":I
    .end local v1    # "low":I
    .end local v2    # "percent":D
    :cond_2
    iget-object v4, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarColors:[I

    array-length v4, v4

    if-ne v4, v5, :cond_3

    .line 1197
    iget-object v4, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarColors:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    goto :goto_1

    .line 1199
    :cond_3
    const/high16 v4, -0x1000000

    goto :goto_1
.end method

.method private static calcTextSizeForRect(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/RectF;)F
    .locals 8
    .param p0, "_text"    # Ljava/lang/String;
    .param p1, "_textPaint"    # Landroid/graphics/Paint;
    .param p2, "_rectBounds"    # Landroid/graphics/RectF;

    .prologue
    const/4 v7, 0x0

    .line 214
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 215
    .local v0, "matrix":Landroid/graphics/Matrix;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 217
    .local v2, "textBoundsTmp":Landroid/graphics/Rect;
    const/16 v5, 0x31

    const/16 v6, 0x30

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v1, v7, v5, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 222
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 224
    .local v3, "textBoundsTmpF":Landroid/graphics/RectF;
    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v3, p2, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 225
    const/16 v5, 0x9

    new-array v4, v5, [F

    .line 226
    .local v4, "values":[F
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 227
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    aget v6, v4, v7

    mul-float/2addr v5, v6

    return v5
.end method

.method private drawBlocks$28c3c058(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 7
    .param p1, "_canvas"    # Landroid/graphics/Canvas;
    .param p2, "circleBounds"    # Landroid/graphics/RectF;
    .param p3, "startAngle"    # F
    .param p4, "_degrees"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1617
    const/4 v6, 0x0

    .line 1618
    .local v6, "tmpDegree":F
    :goto_0
    cmpg-float v0, v6, p4

    if-gez v0, :cond_0

    .line 1619
    add-float v2, p3, v6

    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBlockScaleDegree:F

    sub-float v1, p4, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1620
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBlockDegree:F

    add-float/2addr v6, v0

    goto :goto_0

    .line 1622
    :cond_0
    return-void
.end method

.method private drawSpinner(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1625
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthCurrent:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1626
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthCurrent:F

    .line 1630
    :cond_0
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mDirection:Lat/grabner/circleprogress/Direction;

    sget-object v1, Lat/grabner/circleprogress/Direction;->CW:Lat/grabner/circleprogress/Direction;

    if-ne v0, v1, :cond_1

    .line 1631
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mStartAngle:I

    int-to-float v0, v0

    iget v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mCurrentSpinnerDegreeValue:F

    add-float/2addr v0, v1

    iget v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthCurrent:F

    sub-float v2, v0, v1

    .line 1636
    .local v2, "startAngle":F
    :goto_0
    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mCircleBounds:Landroid/graphics/RectF;

    iget v3, p0, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthCurrent:F

    const/4 v4, 0x0

    iget-object v5, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarSpinnerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1638
    return-void

    .line 1633
    .end local v2    # "startAngle":F
    :cond_1
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mStartAngle:I

    int-to-float v0, v0

    iget v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mCurrentSpinnerDegreeValue:F

    sub-float v2, v0, v1

    .restart local v2    # "startAngle":F
    goto :goto_0
.end method

.method private getInnerCircleRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 11
    .param p1, "_circleBounds"    # Landroid/graphics/RectF;

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 1143
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget v6, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarWidth:I

    iget v7, p0, Lat/grabner/circleprogress/CircleProgressView;->mRimWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterContourSize:F

    sub-float/2addr v5, v6

    iget v6, p0, Lat/grabner/circleprogress/CircleProgressView;->mInnerContourSize:F

    sub-float/2addr v5, v6

    float-to-double v6, v5

    .line 1144
    div-double/2addr v6, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-double v2, v6, v8

    .line 1145
    .local v2, "width":D
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    double-to-float v6, v2

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v4, v5, v6

    .line 1147
    .local v4, "widthDelta":F
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1148
    .local v0, "scaleX":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1149
    .local v1, "scaleY":F
    invoke-virtual {p0}, Lat/grabner/circleprogress/CircleProgressView;->isUnitVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1150
    sget-object v5, Lat/grabner/circleprogress/CircleProgressView$1;->$SwitchMap$at$grabner$circleprogress$UnitPosition:[I

    iget-object v6, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitPosition:Lat/grabner/circleprogress/UnitPosition;

    invoke-virtual {v6}, Lat/grabner/circleprogress/UnitPosition;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1166
    :cond_0
    :goto_0
    new-instance v5, Landroid/graphics/RectF;

    iget v6, p1, Landroid/graphics/RectF;->left:F

    mul-float v7, v4, v0

    add-float/2addr v6, v7

    iget v7, p1, Landroid/graphics/RectF;->top:F

    mul-float v8, v4, v1

    add-float/2addr v7, v8

    iget v8, p1, Landroid/graphics/RectF;->right:F

    mul-float v9, v4, v0

    sub-float/2addr v8, v9

    iget v9, p1, Landroid/graphics/RectF;->bottom:F

    mul-float v10, v4, v1

    sub-float/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v5

    .line 1153
    :pswitch_0
    const v0, 0x3f8ccccd    # 1.1f

    .line 1154
    const v1, 0x3f6147ae    # 0.88f

    .line 1155
    goto :goto_0

    .line 1160
    :pswitch_1
    const v0, 0x3f451eb8    # 0.77f

    .line 1161
    const v1, 0x3faa3d71    # 1.33f

    goto :goto_0

    .line 1150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getRotationAngleForPointFromStart(Landroid/graphics/PointF;)F
    .locals 4
    .param p1, "point"    # Landroid/graphics/PointF;

    .prologue
    .line 1819
    iget-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mCenter:Landroid/graphics/PointF;

    invoke-static {v2, p1}, Lat/grabner/circleprogress/CircleProgressView;->calcRotationAngleInDegrees(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 1820
    .local v0, "angle":J
    iget-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mDirection:Lat/grabner/circleprogress/Direction;

    sget-object v3, Lat/grabner/circleprogress/Direction;->CW:Lat/grabner/circleprogress/Direction;

    if-ne v2, v3, :cond_0

    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mStartAngle:I

    int-to-long v2, v2

    sub-long v2, v0, v2

    long-to-float v2, v2

    .line 1821
    :goto_0
    invoke-static {v2}, Lat/grabner/circleprogress/CircleProgressView;->normalizeAngle(F)F

    move-result v2

    return v2

    .line 1820
    :cond_0
    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mStartAngle:I

    int-to-long v2, v2

    sub-long/2addr v2, v0

    long-to-float v2, v2

    goto :goto_0
.end method

.method private static normalizeAngle(F)F
    .locals 2
    .param p0, "_angle"    # F

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    .line 235
    rem-float v0, p0, v1

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    return v0
.end method

.method private setTextSizeAndTextBoundsWithFixedTextSize(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1235
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1236
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mCircleBounds:Landroid/graphics/RectF;

    invoke-static {p1, v0, v1}, Lat/grabner/circleprogress/CircleProgressView;->calcTextBounds(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mActualTextBounds:Landroid/graphics/RectF;

    .line 1237
    return-void
.end method

.method private setupBarPaint()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1401
    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarColors:[I

    array-length v1, v1

    if-le v1, v6, :cond_0

    .line 1402
    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/SweepGradient;

    iget-object v3, p0, Lat/grabner/circleprogress/CircleProgressView;->mCircleBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lat/grabner/circleprogress/CircleProgressView;->mCircleBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget-object v5, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarColors:[I

    invoke-direct {v2, v3, v4, v5, v7}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1403
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1404
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Shader;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    .line 1406
    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mCircleBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mCircleBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1407
    iget v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mStartAngle:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1408
    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mCircleBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mCircleBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1409
    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1410
    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarColors:[I

    aget v2, v2, v8

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1419
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    :goto_0
    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1420
    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarStrokeCap:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1421
    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1422
    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarPaint:Landroid/graphics/Paint;

    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1423
    return-void

    .line 1411
    :cond_0
    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarColors:[I

    array-length v1, v1

    if-ne v1, v6, :cond_1

    .line 1412
    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarColors:[I

    aget v2, v2, v8

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1413
    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 1415
    :cond_1
    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarPaint:Landroid/graphics/Paint;

    const v2, -0xff6978

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1416
    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method

.method private triggerOnProgressChanged(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1171
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->onProgressChangedListener:Lat/grabner/circleprogress/CircleProgressView$OnProgressChangedListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->previousProgressChangedValue:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1172
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->onProgressChangedListener:Lat/grabner/circleprogress/CircleProgressView$OnProgressChangedListener;

    invoke-interface {v0, p1}, Lat/grabner/circleprogress/CircleProgressView$OnProgressChangedListener;->onProgressChanged(F)V

    .line 1173
    iput p1, p0, Lat/grabner/circleprogress/CircleProgressView;->previousProgressChangedValue:F

    .line 1175
    :cond_0
    return-void
.end method

.method private triggerReCalcTextSizesAndPositions()V
    .locals 1

    .prologue
    .line 1178
    const/4 v0, -0x1

    iput v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextLength:I

    .line 1179
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mCircleBounds:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->getInnerCircleRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    .line 1180
    invoke-virtual {p0}, Lat/grabner/circleprogress/CircleProgressView;->invalidate()V

    .line 1181
    return-void
.end method


# virtual methods
.method public calcTextColor()I
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextColor:I

    return v0
.end method

.method public getBarColors()[I
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarColors:[I

    return-object v0
.end method

.method public getBarStartEndLine()Lat/grabner/circleprogress/BarStartEndLine;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarStartEndLine:Lat/grabner/circleprogress/BarStartEndLine;

    return-object v0
.end method

.method public getBarStrokeCap()Landroid/graphics/Paint$Cap;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarStrokeCap:Landroid/graphics/Paint$Cap;

    return-object v0
.end method

.method public getBarWidth()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarWidth:I

    return v0
.end method

.method public getBlockCount()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBlockCount:I

    return v0
.end method

.method public getBlockScale()F
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBlockScale:F

    return v0
.end method

.method public getCurrentValue()F
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mCurrentValue:F

    return v0
.end method

.method public getDecimalFormat()Ljava/text/DecimalFormat;
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->decimalFormat:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method public getDelayMillis()I
    .locals 1

    .prologue
    .line 415
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mFrameDelayMillis:I

    return v0
.end method

.method public getFillColor()I
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBackgroundCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getInnerContourColor()I
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mInnerContourColor:I

    return v0
.end method

.method public getInnerContourSize()F
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mInnerContourSize:F

    return v0
.end method

.method public getMaxValue()F
    .locals 1

    .prologue
    .line 434
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mMaxValue:F

    return v0
.end method

.method public getOuterContourColor()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterContourColor:I

    return v0
.end method

.method public getOuterContourSize()F
    .locals 1

    .prologue
    .line 376
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterContourSize:F

    return v0
.end method

.method public getRelativeUniteSize()F
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mRelativeUniteSize:F

    return v0
.end method

.method public getRimColor()I
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mRimColor:I

    return v0
.end method

.method public getRimShader()Landroid/graphics/Shader;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mRimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    return-object v0
.end method

.method public getRimWidth()I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mRimWidth:I

    return v0
.end method

.method public getRoundToBlock()Z
    .locals 1

    .prologue
    .line 349
    iget-boolean v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mRoundToBlock:Z

    return v0
.end method

.method public getSpinSpeed()F
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mSpinSpeed:F

    return v0
.end method

.method public getSpinnerStrokeCap()Landroid/graphics/Paint$Cap;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mSpinnerStrokeCap:Landroid/graphics/Paint$Cap;

    return-object v0
.end method

.method public getStartAngle()I
    .locals 1

    .prologue
    .line 512
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mStartAngle:I

    return v0
.end method

.method public getTextScale()F
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextScale:F

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 553
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextSize:I

    return v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnit:Ljava/lang/String;

    return-object v0
.end method

.method public getUnitScale()F
    .locals 1

    .prologue
    .line 589
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitScale:F

    return v0
.end method

.method public getUnitSize()I
    .locals 1

    .prologue
    .line 603
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitTextSize:I

    return v0
.end method

.method public isAutoTextSize()Z
    .locals 1

    .prologue
    .line 622
    iget-boolean v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mIsAutoTextSize:Z

    return v0
.end method

.method public isSeekModeEnabled()Z
    .locals 1

    .prologue
    .line 633
    iget-boolean v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mSeekModeEnabled:Z

    return v0
.end method

.method public isShowBlock()Z
    .locals 1

    .prologue
    .line 641
    iget-boolean v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mShowBlock:Z

    return v0
.end method

.method public isShowTextWhileSpinning()Z
    .locals 1

    .prologue
    .line 649
    iget-boolean v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mShowTextWhileSpinning:Z

    return v0
.end method

.method public isUnitVisible()Z
    .locals 1

    .prologue
    .line 660
    iget-boolean v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mShowUnit:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1515
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1521
    const/high16 v0, 0x43b40000    # 360.0f

    iget v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mMaxValue:F

    div-float/2addr v0, v1

    iget v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mCurrentValue:F

    mul-float v7, v0, v1

    .line 1524
    .local v7, "degrees":F
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBackgroundCircleColor:I

    if-eqz v0, :cond_0

    .line 1525
    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mInnerCircleBound:Landroid/graphics/RectF;

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lat/grabner/circleprogress/CircleProgressView;->mBackgroundCirclePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1528
    :cond_0
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mRimWidth:I

    if-lez v0, :cond_1

    .line 1529
    iget-boolean v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mShowBlock:Z

    if-nez v0, :cond_d

    .line 1530
    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mCircleBounds:Landroid/graphics/RectF;

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lat/grabner/circleprogress/CircleProgressView;->mRimPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1537
    :cond_1
    :goto_0
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterContourSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 1538
    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mCircleOuterContour:Landroid/graphics/RectF;

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterContourPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1542
    :cond_2
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mInnerContourSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 1543
    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mCircleInnerContour:Landroid/graphics/RectF;

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lat/grabner/circleprogress/CircleProgressView;->mInnerContourPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1547
    :cond_3
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationState:Lat/grabner/circleprogress/AnimationState;

    sget-object v1, Lat/grabner/circleprogress/AnimationState;->SPINNING:Lat/grabner/circleprogress/AnimationState;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationState:Lat/grabner/circleprogress/AnimationState;

    sget-object v1, Lat/grabner/circleprogress/AnimationState;->END_SPINNING:Lat/grabner/circleprogress/AnimationState;

    if-ne v0, v1, :cond_e

    .line 1548
    :cond_4
    invoke-direct {p0, p1}, Lat/grabner/circleprogress/CircleProgressView;->drawSpinner(Landroid/graphics/Canvas;)V

    .line 1549
    iget-boolean v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mShowTextWhileSpinning:Z

    if-eqz v0, :cond_a

    .line 5647
    :goto_1
    sget-object v0, Lat/grabner/circleprogress/CircleProgressView$1;->$SwitchMap$at$grabner$circleprogress$UnitPosition:[I

    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitPosition:Lat/grabner/circleprogress/UnitPosition;

    invoke-virtual {v1}, Lat/grabner/circleprogress/UnitPosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 5662
    const v0, 0x3f0ccccd    # 0.55f

    iget v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mRelativeUniteSize:F

    mul-float/2addr v1, v0

    .line 5663
    const v0, 0x3e99999a    # 0.3f

    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mRelativeUniteSize:F

    mul-float/2addr v0, v2

    .line 5667
    :goto_2
    iget-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const v3, 0x3d4ccccd    # 0.05f

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v2, v3

    .line 5668
    iget-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v4, v2, v0

    .line 5670
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const v2, 0x3ccccccd    # 0.025f

    mul-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v5, v0, v2

    .line 5671
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v6, v0, v1

    .line 5674
    const/4 v1, 0x0

    .line 5676
    iget-boolean v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mIsAutoColorEnabled:Z

    if-eqz v0, :cond_5

    .line 5677
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mCurrentValue:F

    float-to-double v8, v2

    invoke-direct {p0, v8, v9}, Lat/grabner/circleprogress/CircleProgressView;->calcTextColor(D)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5682
    :cond_5
    sget-object v0, Lat/grabner/circleprogress/CircleProgressView$1;->$SwitchMap$at$grabner$circleprogress$TextMode:[I

    iget-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextMode:Lat/grabner/circleprogress/TextMode;

    invoke-virtual {v2}, Lat/grabner/circleprogress/TextMode;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1

    .line 5685
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mText:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mText:Ljava/lang/String;

    .line 5697
    :goto_3
    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextLength:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v2, v8, :cond_7

    .line 5699
    const/4 v2, 0x1

    .line 5700
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextLength:I

    .line 5701
    iget v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextLength:I

    const/4 v8, 0x1

    if-ne v1, v8, :cond_13

    .line 5702
    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mCircleBounds:Landroid/graphics/RectF;

    invoke-direct {p0, v1}, Lat/grabner/circleprogress/CircleProgressView;->getInnerCircleRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    .line 5703
    new-instance v1, Landroid/graphics/RectF;

    iget-object v8, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget-object v9, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    const v10, 0x3dcccccd    # 0.1f

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget-object v9, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    iget-object v10, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    iget-object v11, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v11

    const v12, 0x3dcccccd    # 0.1f

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    iget-object v11, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v1, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    .line 5707
    :goto_4
    iget-boolean v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mIsAutoTextSize:Z

    if-eqz v1, :cond_14

    .line 6204
    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    .line 6206
    iget-boolean v8, p0, Lat/grabner/circleprogress/CircleProgressView;->mShowUnit:Z

    if-eqz v8, :cond_6

    .line 6209
    sget-object v1, Lat/grabner/circleprogress/CircleProgressView$1;->$SwitchMap$at$grabner$circleprogress$UnitPosition:[I

    iget-object v8, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitPosition:Lat/grabner/circleprogress/UnitPosition;

    invoke-virtual {v8}, Lat/grabner/circleprogress/UnitPosition;->ordinal()I

    move-result v8

    aget v1, v1, v8

    packed-switch v1, :pswitch_data_2

    .line 6224
    :pswitch_0
    new-instance v1, Landroid/graphics/RectF;

    iget-object v8, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget-object v9, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    iget-object v10, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    sub-float/2addr v10, v4

    sub-float/2addr v10, v3

    iget-object v11, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v1, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 6230
    :cond_6
    :goto_5
    iget-object v8, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextPaint:Landroid/graphics/Paint;

    invoke-static {v0, v9, v1}, Lat/grabner/circleprogress/CircleProgressView;->calcTextSizeForRect(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/RectF;)F

    move-result v9

    iget v10, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextScale:F

    mul-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 6231
    iget-object v8, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextPaint:Landroid/graphics/Paint;

    invoke-static {v0, v8, v1}, Lat/grabner/circleprogress/CircleProgressView;->calcTextBounds(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mActualTextBounds:Landroid/graphics/RectF;

    move v1, v2

    .line 5724
    :cond_7
    :goto_6
    iget-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mActualTextBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v8, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getTextSize()F

    move-result v8

    const v9, 0x3ca3d70a    # 0.02f

    mul-float/2addr v8, v9

    sub-float/2addr v2, v8

    iget-object v8, p0, Lat/grabner/circleprogress/CircleProgressView;->mActualTextBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 5726
    iget-boolean v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mShowUnit:Z

    if-eqz v0, :cond_a

    .line 5728
    iget-boolean v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mIsAutoColorEnabled:Z

    if-eqz v0, :cond_8

    .line 5729
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mCurrentValue:F

    float-to-double v8, v2

    invoke-direct {p0, v8, v9}, Lat/grabner/circleprogress/CircleProgressView;->calcTextColor(D)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5731
    :cond_8
    if-eqz v1, :cond_9

    .line 5733
    iget-boolean v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mIsAutoTextSize:Z

    if-eqz v0, :cond_15

    .line 6241
    sget-object v0, Lat/grabner/circleprogress/CircleProgressView$1;->$SwitchMap$at$grabner$circleprogress$UnitPosition:[I

    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitPosition:Lat/grabner/circleprogress/UnitPosition;

    invoke-virtual {v1}, Lat/grabner/circleprogress/UnitPosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    .line 6258
    :pswitch_1
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v4

    add-float/2addr v1, v3

    iget-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitBounds:Landroid/graphics/RectF;

    .line 6263
    :goto_7
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnit:Ljava/lang/String;

    iget-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitTextPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitBounds:Landroid/graphics/RectF;

    invoke-static {v1, v2, v3}, Lat/grabner/circleprogress/CircleProgressView;->calcTextSizeForRect(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/RectF;)F

    move-result v1

    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitScale:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 6264
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnit:Ljava/lang/String;

    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitBounds:Landroid/graphics/RectF;

    invoke-static {v0, v1, v2}, Lat/grabner/circleprogress/CircleProgressView;->calcTextBounds(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitBounds:Landroid/graphics/RectF;

    .line 6266
    sget-object v0, Lat/grabner/circleprogress/CircleProgressView$1;->$SwitchMap$at$grabner$circleprogress$UnitPosition:[I

    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitPosition:Lat/grabner/circleprogress/UnitPosition;

    invoke-virtual {v1}, Lat/grabner/circleprogress/UnitPosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4

    .line 5747
    :cond_9
    :goto_8
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnit:Ljava/lang/String;

    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    const v3, 0x3ca3d70a    # 0.02f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1569
    :cond_a
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mClippingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    .line 1570
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mClippingBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lat/grabner/circleprogress/CircleProgressView;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1573
    :cond_b
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarStartEndLineWidth:I

    if-lez v0, :cond_c

    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarStartEndLine:Lat/grabner/circleprogress/BarStartEndLine;

    sget-object v1, Lat/grabner/circleprogress/BarStartEndLine;->NONE:Lat/grabner/circleprogress/BarStartEndLine;

    if-eq v0, v1, :cond_c

    .line 6582
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mDirection:Lat/grabner/circleprogress/Direction;

    sget-object v1, Lat/grabner/circleprogress/Direction;->CW:Lat/grabner/circleprogress/Direction;

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    .line 6584
    :goto_9
    iget v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mLayoutWidth:I

    div-int/lit8 v5, v1, 0x2

    .line 6586
    float-to-double v2, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v3, v2

    .line 6587
    int-to-double v0, v0

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v0, v8

    double-to-float v0, v0

    .line 6589
    int-to-float v1, v5

    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarWidth:I

    sub-int v2, v5, v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    sub-float v2, v1, v2

    .line 6590
    int-to-float v1, v5

    iget v4, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarWidth:I

    sub-int v4, v5, v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v1, v4

    .line 6592
    int-to-float v4, v5

    int-to-float v6, v5

    mul-float/2addr v3, v6

    sub-float/2addr v4, v3

    .line 6593
    int-to-float v3, v5

    int-to-float v6, v5

    mul-float/2addr v0, v6

    add-float/2addr v3, v0

    .line 6595
    sget-object v0, Lat/grabner/circleprogress/CircleProgressView$1;->$SwitchMap$at$grabner$circleprogress$BarStartEndLine:[I

    iget-object v6, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarStartEndLine:Lat/grabner/circleprogress/BarStartEndLine;

    invoke-virtual {v6}, Lat/grabner/circleprogress/BarStartEndLine;->ordinal()I

    move-result v6

    aget v0, v0, v6

    packed-switch v0, :pswitch_data_5

    .line 6602
    :cond_c
    :goto_a
    return-void

    .line 1532
    :cond_d
    iget-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mCircleBounds:Landroid/graphics/RectF;

    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mStartAngle:I

    int-to-float v3, v0

    const/high16 v4, 0x43b40000    # 360.0f

    iget-object v5, p0, Lat/grabner/circleprogress/CircleProgressView;->mRimPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lat/grabner/circleprogress/CircleProgressView;->drawBlocks$28c3c058(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1553
    :cond_e
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationState:Lat/grabner/circleprogress/AnimationState;

    sget-object v1, Lat/grabner/circleprogress/AnimationState;->END_SPINNING_START_ANIMATING:Lat/grabner/circleprogress/AnimationState;

    if-ne v0, v1, :cond_f

    .line 1555
    invoke-direct {p0, p1}, Lat/grabner/circleprogress/CircleProgressView;->drawSpinner(Landroid/graphics/Canvas;)V

    .line 1557
    iget-boolean v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mDrawBarWhileSpinning:Z

    if-nez v0, :cond_f

    .line 1560
    iget-boolean v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mShowTextWhileSpinning:Z

    if-eqz v0, :cond_a

    goto/16 :goto_1

    .line 4752
    :cond_f
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mDirection:Lat/grabner/circleprogress/Direction;

    sget-object v1, Lat/grabner/circleprogress/Direction;->CW:Lat/grabner/circleprogress/Direction;

    if-ne v0, v1, :cond_10

    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mStartAngle:I

    int-to-float v2, v0

    .line 4753
    :goto_b
    iget-boolean v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mShowBlock:Z

    if-nez v0, :cond_11

    .line 4754
    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mCircleBounds:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget-object v5, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 4752
    :cond_10
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mStartAngle:I

    int-to-float v0, v0

    sub-float v2, v0, v7

    goto :goto_b

    .line 4756
    :cond_11
    iget-object v5, p0, Lat/grabner/circleprogress/CircleProgressView;->mCircleBounds:Landroid/graphics/RectF;

    iget-object v8, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarPaint:Landroid/graphics/Paint;

    move-object v3, p0

    move-object v4, p1

    move v6, v2

    invoke-direct/range {v3 .. v8}, Lat/grabner/circleprogress/CircleProgressView;->drawBlocks$28c3c058(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 5652
    :pswitch_2
    const/high16 v0, 0x3e800000    # 0.25f

    iget v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mRelativeUniteSize:F

    mul-float/2addr v1, v0

    .line 5653
    const v0, 0x3ecccccd    # 0.4f

    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mRelativeUniteSize:F

    mul-float/2addr v0, v2

    .line 5654
    goto/16 :goto_2

    .line 5685
    :cond_12
    const-string v0, ""

    goto/16 :goto_3

    .line 5688
    :pswitch_3
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->decimalFormat:Ljava/text/DecimalFormat;

    const/high16 v2, 0x42c80000    # 100.0f

    iget v8, p0, Lat/grabner/circleprogress/CircleProgressView;->mMaxValue:F

    div-float/2addr v2, v8

    iget v8, p0, Lat/grabner/circleprogress/CircleProgressView;->mCurrentValue:F

    mul-float/2addr v2, v8

    float-to-double v8, v2

    invoke-virtual {v0, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 5691
    :pswitch_4
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->decimalFormat:Ljava/text/DecimalFormat;

    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mCurrentValue:F

    float-to-double v8, v2

    invoke-virtual {v0, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 5705
    :cond_13
    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mCircleBounds:Landroid/graphics/RectF;

    invoke-direct {p0, v1}, Lat/grabner/circleprogress/CircleProgressView;->getInnerCircleRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    iput-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    goto/16 :goto_4

    .line 6212
    :pswitch_5
    new-instance v1, Landroid/graphics/RectF;

    iget-object v8, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget-object v9, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    add-float/2addr v9, v6

    add-float/2addr v9, v5

    iget-object v10, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    iget-object v11, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v1, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/16 :goto_5

    .line 6215
    :pswitch_6
    new-instance v1, Landroid/graphics/RectF;

    iget-object v8, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget-object v9, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    iget-object v10, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    iget-object v11, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v11, v6

    sub-float/2addr v11, v5

    invoke-direct {v1, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/16 :goto_5

    .line 6219
    :pswitch_7
    new-instance v1, Landroid/graphics/RectF;

    iget-object v8, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v8, v4

    add-float/2addr v8, v3

    iget-object v9, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    iget-object v10, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    iget-object v11, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v1, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/16 :goto_5

    .line 5711
    :cond_14
    invoke-direct {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->setTextSizeAndTextBoundsWithFixedTextSize(Ljava/lang/String;)V

    move v1, v2

    goto/16 :goto_6

    .line 6244
    :pswitch_8
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v6

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitBounds:Landroid/graphics/RectF;

    goto/16 :goto_7

    .line 6248
    :pswitch_9
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v6

    add-float/2addr v2, v5

    iget-object v3, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitBounds:Landroid/graphics/RectF;

    goto/16 :goto_7

    .line 6252
    :pswitch_a
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    sub-float v3, v4, v3

    iget-object v4, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitBounds:Landroid/graphics/RectF;

    goto/16 :goto_7

    .line 6272
    :pswitch_b
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mActualTextBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    .line 6273
    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitBounds:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    goto/16 :goto_8

    .line 6279
    :pswitch_c
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mActualTextBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    .line 6280
    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitBounds:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    goto/16 :goto_8

    .line 5737
    :cond_15
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v3

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v5

    .line 6287
    iget-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitTextPaint:Landroid/graphics/Paint;

    iget v3, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 6288
    iget-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnit:Ljava/lang/String;

    iget-object v3, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitTextPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    invoke-static {v2, v3, v4}, Lat/grabner/circleprogress/CircleProgressView;->calcTextBounds(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    iput-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitBounds:Landroid/graphics/RectF;

    .line 6290
    sget-object v2, Lat/grabner/circleprogress/CircleProgressView$1;->$SwitchMap$at$grabner$circleprogress$UnitPosition:[I

    iget-object v3, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitPosition:Lat/grabner/circleprogress/UnitPosition;

    invoke-virtual {v3}, Lat/grabner/circleprogress/UnitPosition;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_6

    .line 6305
    :pswitch_d
    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mActualTextBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 6309
    :goto_c
    sget-object v0, Lat/grabner/circleprogress/CircleProgressView$1;->$SwitchMap$at$grabner$circleprogress$UnitPosition:[I

    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitPosition:Lat/grabner/circleprogress/UnitPosition;

    invoke-virtual {v1}, Lat/grabner/circleprogress/UnitPosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_7

    goto/16 :goto_8

    .line 6313
    :pswitch_e
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mActualTextBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    .line 6314
    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitBounds:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    goto/16 :goto_8

    .line 6293
    :pswitch_f
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lat/grabner/circleprogress/CircleProgressView;->mActualTextBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float v1, v3, v1

    iget-object v3, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    goto :goto_c

    .line 6296
    :pswitch_10
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lat/grabner/circleprogress/CircleProgressView;->mActualTextBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    goto :goto_c

    .line 6300
    :pswitch_11
    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitBounds:Landroid/graphics/RectF;

    iget-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mActualTextBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float v0, v2, v0

    iget-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    goto :goto_c

    .line 6320
    :pswitch_12
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mActualTextBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    .line 6321
    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitBounds:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    goto/16 :goto_8

    .line 6582
    :cond_16
    const/4 v0, -0x1

    goto/16 :goto_9

    .line 6598
    :pswitch_13
    int-to-float v1, v5

    const/4 v2, 0x0

    int-to-float v3, v5

    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarWidth:I

    int-to-float v4, v0

    iget-object v5, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarStartEndLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_a

    .line 6601
    :pswitch_14
    iget-object v5, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarStartEndLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_a

    .line 6604
    :pswitch_15
    int-to-float v9, v5

    const/4 v10, 0x0

    int-to-float v11, v5

    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarWidth:I

    int-to-float v12, v0

    iget-object v13, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarStartEndLinePaint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 6605
    iget-object v5, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarStartEndLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_a

    .line 5647
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 5682
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 6209
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_7
    .end packed-switch

    .line 6241
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_a
    .end packed-switch

    .line 6266
    :pswitch_data_4
    .packed-switch 0x3
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
    .end packed-switch

    .line 6595
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 6290
    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_d
        :pswitch_11
    .end packed-switch

    .line 6309
    :pswitch_data_7
    .packed-switch 0x3
        :pswitch_e
        :pswitch_e
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1071
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 1078
    invoke-virtual {p0}, Lat/grabner/circleprogress/CircleProgressView;->getMeasuredWidth()I

    move-result v3

    .line 1079
    .local v3, "width":I
    invoke-virtual {p0}, Lat/grabner/circleprogress/CircleProgressView;->getMeasuredHeight()I

    move-result v0

    .line 1080
    .local v0, "height":I
    invoke-virtual {p0}, Lat/grabner/circleprogress/CircleProgressView;->getPaddingLeft()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {p0}, Lat/grabner/circleprogress/CircleProgressView;->getPaddingRight()I

    move-result v6

    sub-int v4, v5, v6

    .line 1081
    .local v4, "widthWithoutPadding":I
    invoke-virtual {p0}, Lat/grabner/circleprogress/CircleProgressView;->getPaddingTop()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0}, Lat/grabner/circleprogress/CircleProgressView;->getPaddingBottom()I

    move-result v6

    sub-int v1, v5, v6

    .line 1090
    .local v1, "heightWithoutPadding":I
    if-le v4, v1, :cond_0

    .line 1091
    move v2, v1

    .line 1105
    .local v2, "size":I
    :goto_0
    invoke-virtual {p0}, Lat/grabner/circleprogress/CircleProgressView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p0}, Lat/grabner/circleprogress/CircleProgressView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lat/grabner/circleprogress/CircleProgressView;->getPaddingTop()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {p0}, Lat/grabner/circleprogress/CircleProgressView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0, v5, v6}, Lat/grabner/circleprogress/CircleProgressView;->setMeasuredDimension(II)V

    .line 1106
    return-void

    .line 1093
    .end local v2    # "size":I
    :cond_0
    move v2, v4

    .restart local v2    # "size":I
    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 12
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1115
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 1118
    iput p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mLayoutWidth:I

    .line 1119
    iput p2, p0, Lat/grabner/circleprogress/CircleProgressView;->mLayoutHeight:I

    .line 2366
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mLayoutWidth:I

    iget v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mLayoutHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2369
    iget v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mLayoutWidth:I

    sub-int/2addr v1, v0

    .line 2370
    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mLayoutHeight:I

    sub-int v0, v2, v0

    .line 2373
    invoke-virtual {p0}, Lat/grabner/circleprogress/CircleProgressView;->getPaddingTop()I

    move-result v2

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 2374
    invoke-virtual {p0}, Lat/grabner/circleprogress/CircleProgressView;->getPaddingBottom()I

    move-result v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    int-to-float v3, v0

    .line 2375
    invoke-virtual {p0}, Lat/grabner/circleprogress/CircleProgressView;->getPaddingLeft()I

    move-result v0

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v0, v4

    int-to-float v4, v0

    .line 2376
    invoke-virtual {p0}, Lat/grabner/circleprogress/CircleProgressView;->getPaddingRight()I

    move-result v0

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v1, v0

    .line 2378
    invoke-virtual {p0}, Lat/grabner/circleprogress/CircleProgressView;->getWidth()I

    move-result v5

    .line 2379
    invoke-virtual {p0}, Lat/grabner/circleprogress/CircleProgressView;->getHeight()I

    move-result v6

    .line 2381
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarWidth:I

    int-to-float v0, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v0, v7

    iget v7, p0, Lat/grabner/circleprogress/CircleProgressView;->mRimWidth:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    iget v8, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterContourSize:F

    add-float/2addr v7, v8

    cmpl-float v0, v0, v7

    if-lez v0, :cond_1

    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarWidth:I

    int-to-float v0, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v0, v7

    .line 2383
    :goto_0
    new-instance v7, Landroid/graphics/RectF;

    add-float v8, v4, v0

    add-float v9, v2, v0

    int-to-float v10, v5

    sub-float/2addr v10, v1

    sub-float/2addr v10, v0

    int-to-float v11, v6

    sub-float/2addr v11, v3

    sub-float v0, v11, v0

    invoke-direct {v7, v8, v9, v10, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v7, p0, Lat/grabner/circleprogress/CircleProgressView;->mCircleBounds:Landroid/graphics/RectF;

    .line 2389
    new-instance v0, Landroid/graphics/RectF;

    iget v7, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarWidth:I

    int-to-float v7, v7

    add-float/2addr v4, v7

    iget v7, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarWidth:I

    int-to-float v7, v7

    add-float/2addr v2, v7

    int-to-float v5, v5

    sub-float v1, v5, v1

    iget v5, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarWidth:I

    int-to-float v5, v5

    sub-float/2addr v1, v5

    int-to-float v5, v6

    sub-float v3, v5, v3

    iget v5, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarWidth:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    invoke-direct {v0, v4, v2, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mInnerCircleBound:Landroid/graphics/RectF;

    .line 2393
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mCircleBounds:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lat/grabner/circleprogress/CircleProgressView;->getInnerCircleRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterTextBounds:Landroid/graphics/RectF;

    .line 2394
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mCircleBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mRimWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mInnerContourSize:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mCircleBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lat/grabner/circleprogress/CircleProgressView;->mRimWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lat/grabner/circleprogress/CircleProgressView;->mInnerContourSize:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lat/grabner/circleprogress/CircleProgressView;->mCircleBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lat/grabner/circleprogress/CircleProgressView;->mRimWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lat/grabner/circleprogress/CircleProgressView;->mInnerContourSize:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lat/grabner/circleprogress/CircleProgressView;->mCircleBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lat/grabner/circleprogress/CircleProgressView;->mRimWidth:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Lat/grabner/circleprogress/CircleProgressView;->mInnerContourSize:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mCircleInnerContour:Landroid/graphics/RectF;

    .line 2395
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mCircleBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mRimWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterContourSize:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mCircleBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lat/grabner/circleprogress/CircleProgressView;->mRimWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterContourSize:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lat/grabner/circleprogress/CircleProgressView;->mCircleBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lat/grabner/circleprogress/CircleProgressView;->mRimWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterContourSize:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lat/grabner/circleprogress/CircleProgressView;->mCircleBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lat/grabner/circleprogress/CircleProgressView;->mRimWidth:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterContourSize:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mCircleOuterContour:Landroid/graphics/RectF;

    .line 2397
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mCircleBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mCircleBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mCenter:Landroid/graphics/PointF;

    .line 1122
    invoke-direct {p0}, Lat/grabner/circleprogress/CircleProgressView;->setupBarPaint()V

    .line 1124
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mClippingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mClippingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lat/grabner/circleprogress/CircleProgressView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lat/grabner/circleprogress/CircleProgressView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mClippingBitmap:Landroid/graphics/Bitmap;

    .line 1128
    :cond_0
    invoke-virtual {p0}, Lat/grabner/circleprogress/CircleProgressView;->invalidate()V

    .line 1129
    return-void

    .line 2381
    :cond_1
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mRimWidth:I

    int-to-float v0, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v0, v7

    iget v7, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterContourSize:F

    add-float/2addr v0, v7

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/high16 v6, 0x43b40000    # 360.0f

    const/4 v3, 0x0

    .line 1784
    iget-boolean v4, p0, Lat/grabner/circleprogress/CircleProgressView;->mSeekModeEnabled:Z

    if-nez v4, :cond_0

    .line 1785
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1815
    :goto_0
    return v2

    .line 1788
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1815
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 1791
    :pswitch_0
    iput v3, p0, Lat/grabner/circleprogress/CircleProgressView;->mTouchEventCount:I

    .line 1792
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1793
    .local v1, "point":Landroid/graphics/PointF;
    invoke-direct {p0, v1}, Lat/grabner/circleprogress/CircleProgressView;->getRotationAngleForPointFromStart(Landroid/graphics/PointF;)F

    move-result v0

    .line 1794
    .local v0, "angle":F
    iget v3, p0, Lat/grabner/circleprogress/CircleProgressView;->mMaxValue:F

    div-float/2addr v3, v6

    mul-float/2addr v3, v0

    const-wide/16 v4, 0x320

    invoke-virtual {p0, v3, v4, v5}, Lat/grabner/circleprogress/CircleProgressView;->setValueAnimated(FJ)V

    goto :goto_0

    .line 1798
    .end local v0    # "angle":F
    .end local v1    # "point":Landroid/graphics/PointF;
    :pswitch_1
    iget v4, p0, Lat/grabner/circleprogress/CircleProgressView;->mTouchEventCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lat/grabner/circleprogress/CircleProgressView;->mTouchEventCount:I

    .line 1799
    iget v4, p0, Lat/grabner/circleprogress/CircleProgressView;->mTouchEventCount:I

    const/4 v5, 0x5

    if-le v4, v5, :cond_1

    .line 1800
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1801
    .restart local v1    # "point":Landroid/graphics/PointF;
    invoke-direct {p0, v1}, Lat/grabner/circleprogress/CircleProgressView;->getRotationAngleForPointFromStart(Landroid/graphics/PointF;)F

    move-result v0

    .line 1802
    .restart local v0    # "angle":F
    iget v3, p0, Lat/grabner/circleprogress/CircleProgressView;->mMaxValue:F

    div-float/2addr v3, v6

    mul-float/2addr v3, v0

    invoke-virtual {p0, v3}, Lat/grabner/circleprogress/CircleProgressView;->setValue(F)V

    goto :goto_0

    .end local v0    # "angle":F
    .end local v1    # "point":Landroid/graphics/PointF;
    :cond_1
    move v2, v3

    .line 1805
    goto :goto_0

    .line 1810
    :pswitch_2
    iput v3, p0, Lat/grabner/circleprogress/CircleProgressView;->mTouchEventCount:I

    move v2, v3

    .line 1811
    goto :goto_0

    .line 1788
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAutoTextSize(Z)V
    .locals 0
    .param p1, "_autoTextSize"    # Z

    .prologue
    .line 629
    iput-boolean p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mIsAutoTextSize:Z

    .line 630
    return-void
.end method

.method public varargs setBarColor([I)V
    .locals 0
    .param p1, "barColors"    # [I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 679
    iput-object p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarColors:[I

    .line 680
    invoke-direct {p0}, Lat/grabner/circleprogress/CircleProgressView;->setupBarPaint()V

    .line 681
    return-void
.end method

.method public setBarStartEndLine(ILat/grabner/circleprogress/BarStartEndLine;I)V
    .locals 0
    .param p1, "_barWidth"    # I
    .param p2, "_barStartEndLine"    # Lat/grabner/circleprogress/BarStartEndLine;
    .param p3, "_lineColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 295
    iput p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarStartEndLineWidth:I

    .line 296
    iput-object p2, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarStartEndLine:Lat/grabner/circleprogress/BarStartEndLine;

    .line 297
    iput p3, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarStartEndLineColor:I

    .line 298
    return-void
.end method

.method public setBarStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 1
    .param p1, "_barStrokeCap"    # Landroid/graphics/Paint$Cap;

    .prologue
    .line 312
    iput-object p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarStrokeCap:Landroid/graphics/Paint$Cap;

    .line 313
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 314
    return-void
.end method

.method public setBarWidth(I)V
    .locals 2
    .param p1, "barWidth"    # I
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    .prologue
    .line 324
    iput p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarWidth:I

    .line 325
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 326
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarSpinnerPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 327
    return-void
.end method

.method public setBlockCount(I)V
    .locals 2
    .param p1, "blockCount"    # I

    .prologue
    const/4 v0, 0x1

    .line 334
    if-le p1, v0, :cond_0

    .line 335
    iput-boolean v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mShowBlock:Z

    .line 336
    iput p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mBlockCount:I

    .line 337
    const/high16 v0, 0x43b40000    # 360.0f

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBlockDegree:F

    .line 338
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBlockDegree:F

    iget v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mBlockScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBlockScaleDegree:F

    .line 342
    :goto_0
    return-void

    .line 340
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mShowBlock:Z

    goto :goto_0
.end method

.method public setBlockScale(F)V
    .locals 1
    .param p1, "blockScale"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 357
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 358
    iput p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mBlockScale:F

    .line 359
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBlockDegree:F

    mul-float/2addr v0, p1

    iput v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBlockScaleDegree:F

    .line 361
    :cond_0
    return-void
.end method

.method public setClippingBitmap(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "_clippingBitmap"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 690
    invoke-virtual {p0}, Lat/grabner/circleprogress/CircleProgressView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lat/grabner/circleprogress/CircleProgressView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 691
    invoke-virtual {p0}, Lat/grabner/circleprogress/CircleProgressView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lat/grabner/circleprogress/CircleProgressView;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mClippingBitmap:Landroid/graphics/Bitmap;

    .line 695
    :goto_0
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mClippingBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 697
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v3}, Lat/grabner/circleprogress/CircleProgressView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 702
    :goto_1
    return-void

    .line 693
    :cond_0
    iput-object p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mClippingBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 700
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3}, Lat/grabner/circleprogress/CircleProgressView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public setDecimalFormat(Ljava/text/DecimalFormat;)V
    .locals 2
    .param p1, "decimalFormat"    # Ljava/text/DecimalFormat;

    .prologue
    .line 887
    if-nez p1, :cond_0

    .line 888
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "decimalFormat must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 890
    :cond_0
    iput-object p1, p0, Lat/grabner/circleprogress/CircleProgressView;->decimalFormat:Ljava/text/DecimalFormat;

    .line 891
    return-void
.end method

.method public setDelayMillis(I)V
    .locals 0
    .param p1, "delayMillis"    # I

    .prologue
    .line 422
    iput p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mFrameDelayMillis:I

    .line 423
    return-void
.end method

.method public setDirection(Lat/grabner/circleprogress/Direction;)V
    .locals 0
    .param p1, "direction"    # Lat/grabner/circleprogress/Direction;

    .prologue
    .line 815
    iput-object p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mDirection:Lat/grabner/circleprogress/Direction;

    .line 816
    return-void
.end method

.method public setFillCircleColor(I)V
    .locals 1
    .param p1, "circleColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 711
    iput p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mBackgroundCircleColor:I

    .line 712
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBackgroundCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 713
    return-void
.end method

.method public setInnerContourColor(I)V
    .locals 1
    .param p1, "_contourColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 395
    iput p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mInnerContourColor:I

    .line 396
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mInnerContourPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 397
    return-void
.end method

.method public setInnerContourSize(F)V
    .locals 1
    .param p1, "_contourSize"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    .prologue
    .line 407
    iput p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mInnerContourSize:F

    .line 408
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mInnerContourPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 409
    return-void
.end method

.method public setLengthChangeInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 908
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationHandler:Lat/grabner/circleprogress/AnimationHandler;

    invoke-virtual {v0, p1}, Lat/grabner/circleprogress/AnimationHandler;->setLengthChangeInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 909
    return-void
.end method

.method public setMaxValue(F)V
    .locals 0
    .param p1, "_maxValue"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    .prologue
    .line 444
    iput p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mMaxValue:F

    .line 445
    return-void
.end method

.method public setOnAnimationStateChangedListener(Lat/grabner/circleprogress/AnimationStateChangedListener;)V
    .locals 0
    .param p1, "_animationStateChangedListener"    # Lat/grabner/circleprogress/AnimationStateChangedListener;

    .prologue
    .line 716
    iput-object p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationStateChangedListener:Lat/grabner/circleprogress/AnimationStateChangedListener;

    .line 717
    return-void
.end method

.method public setOnProgressChangedListener(Lat/grabner/circleprogress/CircleProgressView$OnProgressChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lat/grabner/circleprogress/CircleProgressView$OnProgressChangedListener;

    .prologue
    .line 720
    iput-object p1, p0, Lat/grabner/circleprogress/CircleProgressView;->onProgressChangedListener:Lat/grabner/circleprogress/CircleProgressView$OnProgressChangedListener;

    .line 721
    return-void
.end method

.method public setOuterContourColor(I)V
    .locals 1
    .param p1, "_contourColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 371
    iput p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterContourColor:I

    .line 372
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterContourPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 373
    return-void
.end method

.method public setOuterContourSize(F)V
    .locals 1
    .param p1, "_contourSize"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    .prologue
    .line 383
    iput p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterContourSize:F

    .line 384
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterContourPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 385
    return-void
.end method

.method public setRimColor(I)V
    .locals 1
    .param p1, "rimColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 462
    iput p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mRimColor:I

    .line 463
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mRimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 464
    return-void
.end method

.method public setRimShader(Landroid/graphics/Shader;)V
    .locals 1
    .param p1, "shader"    # Landroid/graphics/Shader;

    .prologue
    .line 471
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mRimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 472
    return-void
.end method

.method public setRimWidth(I)V
    .locals 2
    .param p1, "rimWidth"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 482
    iput p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mRimWidth:I

    .line 483
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mRimPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 484
    return-void
.end method

.method public setRoundToBlock(Z)V
    .locals 0
    .param p1, "_roundToBlock"    # Z

    .prologue
    .line 345
    iput-boolean p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mRoundToBlock:Z

    .line 346
    return-void
.end method

.method public setSeekModeEnabled(Z)V
    .locals 0
    .param p1, "_seekModeEnabled"    # Z

    .prologue
    .line 637
    iput-boolean p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mSeekModeEnabled:Z

    .line 638
    return-void
.end method

.method public setShowBlock(Z)V
    .locals 0
    .param p1, "showBlock"    # Z

    .prologue
    .line 645
    iput-boolean p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mShowBlock:Z

    .line 646
    return-void
.end method

.method public setShowTextWhileSpinning(Z)V
    .locals 0
    .param p1, "shouldDrawTextWhileSpinning"    # Z

    .prologue
    .line 656
    iput-boolean p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mShowTextWhileSpinning:Z

    .line 657
    return-void
.end method

.method public setSpinBarColor(I)V
    .locals 2
    .param p1, "_color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 727
    iput p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mSpinnerColor:I

    .line 728
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarSpinnerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mSpinnerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 729
    return-void
.end method

.method public setSpinSpeed(F)V
    .locals 0
    .param p1, "spinSpeed"    # F

    .prologue
    .line 496
    iput p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mSpinSpeed:F

    .line 497
    return-void
.end method

.method public setSpinnerStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 1
    .param p1, "_spinnerStrokeCap"    # Landroid/graphics/Paint$Cap;

    .prologue
    .line 507
    iput-object p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mSpinnerStrokeCap:Landroid/graphics/Paint$Cap;

    .line 508
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarSpinnerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 509
    return-void
.end method

.method public setSpinningBarLength(F)V
    .locals 0
    .param p1, "barLength"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    .prologue
    .line 737
    iput p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthOrig:F

    iput p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mSpinningBarLengthCurrent:F

    .line 738
    return-void
.end method

.method public setStartAngle(I)V
    .locals 1
    .param p1, "_startAngle"    # I

    .prologue
    .line 517
    int-to-float v0, p1

    invoke-static {v0}, Lat/grabner/circleprogress/CircleProgressView;->normalizeAngle(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mStartAngle:I

    .line 518
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 747
    if-eqz p1, :cond_0

    .end local p1    # "text":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mText:Ljava/lang/String;

    .line 748
    invoke-virtual {p0}, Lat/grabner/circleprogress/CircleProgressView;->invalidate()V

    .line 749
    return-void

    .line 747
    .restart local p1    # "text":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "textColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 531
    iput p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextColor:I

    .line 532
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 533
    return-void
.end method

.method public setTextColorAuto(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 759
    iput-boolean p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mIsAutoColorEnabled:Z

    .line 760
    return-void
.end method

.method public setTextMode(Lat/grabner/circleprogress/TextMode;)V
    .locals 0
    .param p1, "_textValue"    # Lat/grabner/circleprogress/TextMode;

    .prologue
    .line 768
    iput-object p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextMode:Lat/grabner/circleprogress/TextMode;

    .line 769
    return-void
.end method

.method public setTextScale(F)V
    .locals 0
    .param p1, "_textScale"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    .prologue
    .line 549
    iput p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextScale:F

    .line 550
    return-void
.end method

.method public setTextSize(I)V
    .locals 2
    .param p1, "textSize"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 563
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 564
    iput p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextSize:I

    .line 565
    const/4 v0, 0x0

    iput-boolean v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mIsAutoTextSize:Z

    .line 566
    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 775
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 776
    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 1
    .param p1, "_unit"    # Ljava/lang/String;

    .prologue
    .line 577
    if-nez p1, :cond_0

    .line 578
    const-string v0, ""

    iput-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnit:Ljava/lang/String;

    .line 582
    :goto_0
    invoke-virtual {p0}, Lat/grabner/circleprogress/CircleProgressView;->invalidate()V

    .line 583
    return-void

    .line 580
    :cond_0
    iput-object p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnit:Ljava/lang/String;

    goto :goto_0
.end method

.method public setUnitColor(I)V
    .locals 1
    .param p1, "unitColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 785
    iput p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitColor:I

    .line 786
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 787
    const/4 v0, 0x0

    iput-boolean v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mIsAutoColorEnabled:Z

    .line 788
    return-void
.end method

.method public setUnitPosition(Lat/grabner/circleprogress/UnitPosition;)V
    .locals 0
    .param p1, "_unitPosition"    # Lat/grabner/circleprogress/UnitPosition;

    .prologue
    .line 791
    iput-object p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitPosition:Lat/grabner/circleprogress/UnitPosition;

    .line 792
    invoke-direct {p0}, Lat/grabner/circleprogress/CircleProgressView;->triggerReCalcTextSizesAndPositions()V

    .line 793
    return-void
.end method

.method public setUnitScale(F)V
    .locals 0
    .param p1, "_unitScale"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    .prologue
    .line 599
    iput p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitScale:F

    .line 600
    return-void
.end method

.method public setUnitSize(I)V
    .locals 2
    .param p1, "unitSize"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 614
    iput p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitTextSize:I

    .line 615
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitTextPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 616
    return-void
.end method

.method public setUnitTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 799
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 800
    return-void
.end method

.method public setUnitToTextScale(F)V
    .locals 0
    .param p1, "_relativeUniteSize"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    .prologue
    .line 807
    iput p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mRelativeUniteSize:F

    .line 808
    invoke-direct {p0}, Lat/grabner/circleprogress/CircleProgressView;->triggerReCalcTextSizesAndPositions()V

    .line 809
    return-void
.end method

.method public setUnitVisible(Z)V
    .locals 1
    .param p1, "_showUnit"    # Z

    .prologue
    .line 667
    iget-boolean v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mShowUnit:Z

    if-eq p1, v0, :cond_0

    .line 668
    iput-boolean p1, p0, Lat/grabner/circleprogress/CircleProgressView;->mShowUnit:Z

    .line 669
    invoke-direct {p0}, Lat/grabner/circleprogress/CircleProgressView;->triggerReCalcTextSizesAndPositions()V

    .line 671
    :cond_0
    return-void
.end method

.method public setValue(F)V
    .locals 4
    .param p1, "_value"    # F

    .prologue
    .line 826
    iget-boolean v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mShowBlock:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mRoundToBlock:Z

    if-eqz v2, :cond_0

    .line 827
    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mMaxValue:F

    iget v3, p0, Lat/grabner/circleprogress/CircleProgressView;->mBlockCount:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 828
    .local v1, "value_per_block":F
    div-float v2, p1, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    mul-float p1, v2, v1

    .line 831
    .end local v1    # "value_per_block":F
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 832
    .local v0, "msg":Landroid/os/Message;
    sget v2, Lat/grabner/circleprogress/AnimationMsg;->SET_VALUE$48cb079c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 833
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 834
    iget-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationHandler:Lat/grabner/circleprogress/AnimationHandler;

    invoke-virtual {v2, v0}, Lat/grabner/circleprogress/AnimationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 835
    invoke-direct {p0, p1}, Lat/grabner/circleprogress/CircleProgressView;->triggerOnProgressChanged(F)V

    .line 836
    return-void
.end method

.method public setValueAnimated(F)V
    .locals 2
    .param p1, "_valueTo"    # F

    .prologue
    .line 845
    const-wide/16 v0, 0x4b0

    invoke-virtual {p0, p1, v0, v1}, Lat/grabner/circleprogress/CircleProgressView;->setValueAnimated(FJ)V

    .line 846
    return-void
.end method

.method public setValueAnimated(FFJ)V
    .locals 5
    .param p1, "_valueFrom"    # F
    .param p2, "_valueTo"    # F
    .param p3, "_animationDuration"    # J

    .prologue
    .line 868
    iget-boolean v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mShowBlock:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mRoundToBlock:Z

    if-eqz v2, :cond_0

    .line 869
    iget v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mMaxValue:F

    iget v3, p0, Lat/grabner/circleprogress/CircleProgressView;->mBlockCount:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 870
    .local v1, "value_per_block":F
    div-float v2, p2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    mul-float p2, v2, v1

    .line 873
    .end local v1    # "value_per_block":F
    :cond_0
    long-to-double v2, p3

    iput-wide v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationDuration:D

    .line 874
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 875
    .local v0, "msg":Landroid/os/Message;
    sget v2, Lat/grabner/circleprogress/AnimationMsg;->SET_VALUE_ANIMATED$48cb079c:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 876
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput p2, v2, v3

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 877
    iget-object v2, p0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationHandler:Lat/grabner/circleprogress/AnimationHandler;

    invoke-virtual {v2, v0}, Lat/grabner/circleprogress/AnimationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 878
    invoke-direct {p0, p2}, Lat/grabner/circleprogress/CircleProgressView;->triggerOnProgressChanged(F)V

    .line 879
    return-void
.end method

.method public setValueAnimated(FJ)V
    .locals 2
    .param p1, "_valueTo"    # F
    .param p2, "_animationDuration"    # J

    .prologue
    .line 856
    iget v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mCurrentValue:F

    invoke-virtual {p0, v0, p1, p2, p3}, Lat/grabner/circleprogress/CircleProgressView;->setValueAnimated(FFJ)V

    .line 857
    return-void
.end method

.method public setValueInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 899
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationHandler:Lat/grabner/circleprogress/AnimationHandler;

    invoke-virtual {v0, p1}, Lat/grabner/circleprogress/AnimationHandler;->setValueInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 900
    return-void
.end method

.method public setupPaints()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1431
    invoke-direct {p0}, Lat/grabner/circleprogress/CircleProgressView;->setupBarPaint()V

    .line 2501
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarSpinnerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2502
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarSpinnerPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mSpinnerStrokeCap:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 2503
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarSpinnerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2504
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarSpinnerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2505
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarSpinnerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mSpinnerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3450
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterContourPaint:Landroid/graphics/Paint;

    iget v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterContourColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3451
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterContourPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3452
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterContourPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3453
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterContourPaint:Landroid/graphics/Paint;

    iget v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mOuterContourSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3457
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mInnerContourPaint:Landroid/graphics/Paint;

    iget v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mInnerContourColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3458
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mInnerContourPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3459
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mInnerContourPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3460
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mInnerContourPaint:Landroid/graphics/Paint;

    iget v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mInnerContourSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3464
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3465
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3466
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->unitTextTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    .line 3467
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mUnitTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->unitTextTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3472
    :cond_0
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 3473
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setLinearText(Z)V

    .line 3474
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3475
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3476
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3477
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3478
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3479
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->textTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_1

    .line 3480
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lat/grabner/circleprogress/CircleProgressView;->textTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3488
    :goto_0
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBackgroundCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mBackgroundCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3489
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBackgroundCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3490
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBackgroundCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3494
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mRimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mRimColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3495
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mRimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3496
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mRimPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3497
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mRimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mRimWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4443
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarStartEndLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarStartEndLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4444
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarStartEndLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4445
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarStartEndLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4446
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarStartEndLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lat/grabner/circleprogress/CircleProgressView;->mBarStartEndLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1440
    return-void

    .line 3482
    :cond_1
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public spin()V
    .locals 2

    .prologue
    .line 1775
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationHandler:Lat/grabner/circleprogress/AnimationHandler;

    sget v1, Lat/grabner/circleprogress/AnimationMsg;->START_SPINNING$48cb079c:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lat/grabner/circleprogress/AnimationHandler;->sendEmptyMessage(I)Z

    .line 1776
    return-void
.end method

.method public stopSpinning()V
    .locals 2

    .prologue
    .line 1768
    iget-object v0, p0, Lat/grabner/circleprogress/CircleProgressView;->mAnimationHandler:Lat/grabner/circleprogress/AnimationHandler;

    sget v1, Lat/grabner/circleprogress/AnimationMsg;->STOP_SPINNING$48cb079c:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lat/grabner/circleprogress/AnimationHandler;->sendEmptyMessage(I)Z

    .line 1769
    return-void
.end method
