.class public abstract Lcom/github/mikephil/charting/charts/BarLineChartBase;
.super Lcom/github/mikephil/charting/charts/Chart;
.source "BarLineChartBase.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RtlHardcoded"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData",
        "<+",
        "Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet",
        "<+",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;>;>",
        "Lcom/github/mikephil/charting/charts/Chart",
        "<TT;>;",
        "Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;"
    }
.end annotation


# instance fields
.field private drawCycles:J

.field protected mAutoScaleMinMaxEnabled:Z

.field protected mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

.field protected mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

.field protected mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

.field protected mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

.field protected mBorderPaint:Landroid/graphics/Paint;

.field protected mClipValuesToContent:Z

.field private mCustomViewPortEnabled:Z

.field protected mDoubleTapToZoomEnabled:Z

.field private mDragEnabled:Z

.field protected mDrawBorders:Z

.field protected mDrawGridBackground:Z

.field protected mDrawListener:Lcom/github/mikephil/charting/listener/OnDrawListener;

.field protected mFitScreenMatrixBuffer:Landroid/graphics/Matrix;

.field protected mGetPositionBuffer:[F

.field protected mGridBackgroundPaint:Landroid/graphics/Paint;

.field protected mHighlightPerDragEnabled:Z

.field protected mKeepPositionOnRotation:Z

.field protected mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

.field protected mMaxVisibleCount:I

.field protected mMinOffset:F

.field private mOffsetsBuffer:Landroid/graphics/RectF;

.field protected mOnSizeChangedBuffer:[F

.field protected mPinchZoomEnabled:Z

.field protected mRightAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

.field private mScaleXEnabled:Z

.field private mScaleYEnabled:Z

.field protected mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

.field protected mZoomMatrixBuffer:Landroid/graphics/Matrix;

.field protected posForGetHighestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

.field protected posForGetLowestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

.field private totalTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    const-wide/16 v6, 0x0

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 147
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;)V

    .line 53
    const/16 v0, 0x64

    iput v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMaxVisibleCount:I

    .line 58
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAutoScaleMinMaxEnabled:Z

    .line 65
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mPinchZoomEnabled:Z

    .line 70
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDoubleTapToZoomEnabled:Z

    .line 76
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mHighlightPerDragEnabled:Z

    .line 81
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragEnabled:Z

    .line 83
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleXEnabled:Z

    .line 84
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleYEnabled:Z

    .line 96
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawGridBackground:Z

    .line 98
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawBorders:Z

    .line 100
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mClipValuesToContent:Z

    .line 105
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMinOffset:F

    .line 110
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mKeepPositionOnRotation:Z

    .line 182
    iput-wide v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->totalTime:J

    .line 183
    iput-wide v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->drawCycles:J

    .line 451
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOffsetsBuffer:Landroid/graphics/RectF;

    .line 581
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    .line 718
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mFitScreenMatrixBuffer:Landroid/graphics/Matrix;

    .line 957
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mCustomViewPortEnabled:Z

    .line 1032
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGetPositionBuffer:[F

    .line 1320
    invoke-static {v4, v5, v4, v5}, Lcom/github/mikephil/charting/utils/MPPointD;->getInstance(DD)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetLowestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    .line 1339
    invoke-static {v4, v5, v4, v5}, Lcom/github/mikephil/charting/utils/MPPointD;->getInstance(DD)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetHighestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    .line 1587
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOnSizeChangedBuffer:[F

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    const-wide/16 v6, 0x0

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/16 v0, 0x64

    iput v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMaxVisibleCount:I

    .line 58
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAutoScaleMinMaxEnabled:Z

    .line 65
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mPinchZoomEnabled:Z

    .line 70
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDoubleTapToZoomEnabled:Z

    .line 76
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mHighlightPerDragEnabled:Z

    .line 81
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragEnabled:Z

    .line 83
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleXEnabled:Z

    .line 84
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleYEnabled:Z

    .line 96
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawGridBackground:Z

    .line 98
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawBorders:Z

    .line 100
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mClipValuesToContent:Z

    .line 105
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMinOffset:F

    .line 110
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mKeepPositionOnRotation:Z

    .line 182
    iput-wide v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->totalTime:J

    .line 183
    iput-wide v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->drawCycles:J

    .line 451
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOffsetsBuffer:Landroid/graphics/RectF;

    .line 581
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    .line 718
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mFitScreenMatrixBuffer:Landroid/graphics/Matrix;

    .line 957
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mCustomViewPortEnabled:Z

    .line 1032
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGetPositionBuffer:[F

    .line 1320
    invoke-static {v4, v5, v4, v5}, Lcom/github/mikephil/charting/utils/MPPointD;->getInstance(DD)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetLowestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    .line 1339
    invoke-static {v4, v5, v4, v5}, Lcom/github/mikephil/charting/utils/MPPointD;->getInstance(DD)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetHighestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    .line 1587
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOnSizeChangedBuffer:[F

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    const-wide/16 v6, 0x0

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/Chart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const/16 v0, 0x64

    iput v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMaxVisibleCount:I

    .line 58
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAutoScaleMinMaxEnabled:Z

    .line 65
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mPinchZoomEnabled:Z

    .line 70
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDoubleTapToZoomEnabled:Z

    .line 76
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mHighlightPerDragEnabled:Z

    .line 81
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragEnabled:Z

    .line 83
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleXEnabled:Z

    .line 84
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleYEnabled:Z

    .line 96
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawGridBackground:Z

    .line 98
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawBorders:Z

    .line 100
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mClipValuesToContent:Z

    .line 105
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMinOffset:F

    .line 110
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mKeepPositionOnRotation:Z

    .line 182
    iput-wide v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->totalTime:J

    .line 183
    iput-wide v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->drawCycles:J

    .line 451
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOffsetsBuffer:Landroid/graphics/RectF;

    .line 581
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    .line 718
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mFitScreenMatrixBuffer:Landroid/graphics/Matrix;

    .line 957
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mCustomViewPortEnabled:Z

    .line 1032
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGetPositionBuffer:[F

    .line 1320
    invoke-static {v4, v5, v4, v5}, Lcom/github/mikephil/charting/utils/MPPointD;->getInstance(DD)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetLowestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    .line 1339
    invoke-static {v4, v5, v4, v5}, Lcom/github/mikephil/charting/utils/MPPointD;->getInstance(DD)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v0

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetHighestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    .line 1587
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOnSizeChangedBuffer:[F

    .line 140
    return-void
.end method


# virtual methods
.method protected autoScale()V
    .locals 6

    .prologue
    .line 344
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getLowestVisibleX()F

    move-result v0

    .line 345
    .local v0, "fromX":F
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getHighestVisibleX()F

    move-result v1

    .line 347
    .local v1, "toX":F
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    invoke-virtual {v2, v0, v1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->calcMinMaxY(FF)V

    .line 349
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getXMin()F

    move-result v4

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getXMax()F

    move-result v2

    invoke-virtual {v3, v4, v2}, Lcom/github/mikephil/charting/components/XAxis;->calculate(FF)V

    .line 353
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    sget-object v4, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getYMin(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v4

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    sget-object v5, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 355
    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getYMax(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v2

    .line 354
    invoke-virtual {v3, v4, v2}, Lcom/github/mikephil/charting/components/YAxis;->calculate(FF)V

    .line 357
    :cond_0
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 358
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    sget-object v4, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getYMin(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v4

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v2, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    sget-object v5, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 359
    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getYMax(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v2

    .line 358
    invoke-virtual {v3, v4, v2}, Lcom/github/mikephil/charting/components/YAxis;->calculate(FF)V

    .line 361
    :cond_1
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    .line 362
    return-void
.end method

.method protected calcMinMax()V
    .locals 4

    .prologue
    .line 367
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getXMin()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getXMax()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/github/mikephil/charting/components/XAxis;->calculate(FF)V

    .line 370
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getYMin(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getYMax(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/github/mikephil/charting/components/YAxis;->calculate(FF)V

    .line 371
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getYMin(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getYMax(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/github/mikephil/charting/components/YAxis;->calculate(FF)V

    .line 373
    return-void
.end method

.method protected calculateLegendOffsets(Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "offsets"    # Landroid/graphics/RectF;

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    const/4 v0, 0x0

    .line 377
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 378
    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 379
    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 380
    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 383
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/Legend;->isDrawInsideEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    sget-object v0, Lcom/github/mikephil/charting/charts/BarLineChartBase$2;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendOrientation:[I

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->getOrientation()Lcom/github/mikephil/charting/components/Legend$LegendOrientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend$LegendOrientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 387
    :pswitch_0
    sget-object v0, Lcom/github/mikephil/charting/charts/BarLineChartBase$2;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendHorizontalAlignment:[I

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->getHorizontalAlignment()Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend$LegendHorizontalAlignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 389
    :pswitch_1
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 390
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getMaxSizePercent()F

    move-result v3

    mul-float/2addr v2, v3

    .line 389
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 391
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getXOffset()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 395
    :pswitch_2
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededWidth:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 396
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getMaxSizePercent()F

    move-result v3

    mul-float/2addr v2, v3

    .line 395
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 397
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getXOffset()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 402
    :pswitch_3
    sget-object v0, Lcom/github/mikephil/charting/charts/BarLineChartBase$2;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendVerticalAlignment:[I

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->getVerticalAlignment()Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 404
    :pswitch_4
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 405
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getMaxSizePercent()F

    move-result v3

    mul-float/2addr v2, v3

    .line 404
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 406
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getYOffset()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    goto/16 :goto_0

    .line 410
    :pswitch_5
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 411
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getMaxSizePercent()F

    move-result v3

    mul-float/2addr v2, v3

    .line 410
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 412
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getYOffset()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 424
    :pswitch_6
    sget-object v0, Lcom/github/mikephil/charting/charts/BarLineChartBase$2;->$SwitchMap$com$github$mikephil$charting$components$Legend$LegendVerticalAlignment:[I

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend;->getVerticalAlignment()Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    .line 426
    :pswitch_7
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 427
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getMaxSizePercent()F

    move-result v3

    mul-float/2addr v2, v3

    .line 426
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 428
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getYOffset()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 430
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->isDrawLabelsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v1

    iget v1, v1, Lcom/github/mikephil/charting/components/XAxis;->mLabelRotatedHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    goto/16 :goto_0

    .line 435
    :pswitch_8
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    iget v1, v1, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 436
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/Legend;->getMaxSizePercent()F

    move-result v3

    mul-float/2addr v2, v3

    .line 435
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    .line 437
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/Legend;->getYOffset()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 439
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->isDrawLabelsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v1

    iget v1, v1, Lcom/github/mikephil/charting/components/XAxis;->mLabelRotatedHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 384
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_6
    .end packed-switch

    .line 387
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 402
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 424
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public calculateOffsets()V
    .locals 11

    .prologue
    .line 456
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-boolean v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mCustomViewPortEnabled:Z

    if-nez v6, :cond_3

    .line 458
    const/4 v2, 0x0

    .local v2, "offsetLeft":F
    const/4 v3, 0x0

    .local v3, "offsetRight":F
    const/4 v4, 0x0

    .local v4, "offsetTop":F
    const/4 v1, 0x0

    .line 460
    .local v1, "offsetBottom":F
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOffsetsBuffer:Landroid/graphics/RectF;

    invoke-virtual {p0, v6}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateLegendOffsets(Landroid/graphics/RectF;)V

    .line 462
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOffsetsBuffer:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v6

    .line 463
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOffsetsBuffer:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v6

    .line 464
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOffsetsBuffer:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v6

    .line 465
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOffsetsBuffer:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v6

    .line 468
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/YAxis;->needsOffset()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 469
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v7, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 470
    invoke-virtual {v7}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->getPaintAxisLabels()Landroid/graphics/Paint;

    move-result-object v7

    .line 469
    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/components/YAxis;->getRequiredWidthSpace(Landroid/graphics/Paint;)F

    move-result v6

    add-float/2addr v2, v6

    .line 473
    :cond_0
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/YAxis;->needsOffset()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 474
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v7, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 475
    invoke-virtual {v7}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->getPaintAxisLabels()Landroid/graphics/Paint;

    move-result-object v7

    .line 474
    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/components/YAxis;->getRequiredWidthSpace(Landroid/graphics/Paint;)F

    move-result v6

    add-float/2addr v3, v6

    .line 478
    :cond_1
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/XAxis;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/XAxis;->isDrawLabelsEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 480
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v6, v6, Lcom/github/mikephil/charting/components/XAxis;->mLabelRotatedHeight:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/XAxis;->getYOffset()F

    move-result v7

    add-float v5, v6, v7

    .line 483
    .local v5, "xlabelheight":F
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v6

    sget-object v7, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v6, v7, :cond_4

    .line 485
    add-float/2addr v1, v5

    .line 498
    .end local v5    # "xlabelheight":F
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getExtraTopOffset()F

    move-result v6

    add-float/2addr v4, v6

    .line 499
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getExtraRightOffset()F

    move-result v6

    add-float/2addr v3, v6

    .line 500
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getExtraBottomOffset()F

    move-result v6

    add-float/2addr v1, v6

    .line 501
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getExtraLeftOffset()F

    move-result v6

    add-float/2addr v2, v6

    .line 503
    iget v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMinOffset:F

    invoke-static {v6}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    .line 505
    .local v0, "minOffset":F
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 506
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 507
    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 508
    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 509
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 505
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->restrainViewPort(FFFF)V

    .line 511
    iget-boolean v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLogEnabled:Z

    if-eqz v6, :cond_3

    .line 512
    const-string v6, "MPAndroidChart"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "offsetLeft: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", offsetTop: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", offsetRight: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", offsetBottom: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const-string v6, "MPAndroidChart"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    .end local v0    # "minOffset":F
    .end local v1    # "offsetBottom":F
    .end local v2    # "offsetLeft":F
    .end local v3    # "offsetRight":F
    .end local v4    # "offsetTop":F
    :cond_3
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->prepareOffsetMatrix()V

    .line 519
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->prepareValuePxMatrix()V

    .line 520
    return-void

    .line 487
    .restart local v1    # "offsetBottom":F
    .restart local v2    # "offsetLeft":F
    .restart local v3    # "offsetRight":F
    .restart local v4    # "offsetTop":F
    .restart local v5    # "xlabelheight":F
    :cond_4
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v6

    sget-object v7, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v6, v7, :cond_5

    .line 489
    add-float/2addr v4, v5

    goto/16 :goto_0

    .line 491
    :cond_5
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v6

    sget-object v7, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTH_SIDED:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v6, v7, :cond_2

    .line 493
    add-float/2addr v1, v5

    .line 494
    add-float/2addr v4, v5

    goto/16 :goto_0
.end method

.method public centerViewTo(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 7
    .param p1, "xValue"    # F
    .param p2, "yValue"    # F
    .param p3, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    const/high16 v5, 0x40000000    # 2.0f

    .line 913
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRange(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleY()F

    move-result v4

    div-float v2, v3, v4

    .line 914
    .local v2, "yInView":F
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v3

    iget v3, v3, Lcom/github/mikephil/charting/components/XAxis;->mAxisRange:F

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleX()F

    move-result v4

    div-float v1, v3, v4

    .line 916
    .local v1, "xInView":F
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    div-float v4, v1, v5

    sub-float v4, p1, v4

    div-float v5, v2, v5

    add-float/2addr v5, p2

    .line 918
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v6

    .line 916
    invoke-static {v3, v4, v5, v6, p0}, Lcom/github/mikephil/charting/jobs/MoveViewJob;->getInstance(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLcom/github/mikephil/charting/utils/Transformer;Landroid/view/View;)Lcom/github/mikephil/charting/jobs/MoveViewJob;

    move-result-object v0

    .line 920
    .local v0, "job":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->addViewportJob(Ljava/lang/Runnable;)V

    .line 921
    return-void
.end method

.method public centerViewToAnimated(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;J)V
    .locals 16
    .param p1, "xValue"    # F
    .param p2, "yValue"    # F
    .param p3, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    .param p4, "duration"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 935
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    .line 937
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v4, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getValuesByTouchPoint(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v2

    .line 939
    .local v2, "bounds":Lcom/github/mikephil/charting/utils/MPPointD;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRange(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleY()F

    move-result v4

    div-float v14, v3, v4

    .line 940
    .local v14, "yInView":F
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v3

    iget v3, v3, Lcom/github/mikephil/charting/components/XAxis;->mAxisRange:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleX()F

    move-result v4

    div-float v13, v3, v4

    .line 942
    .local v13, "xInView":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v13, v4

    sub-float v4, p1, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v14, v5

    add-float v5, v5, p2

    .line 944
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v6

    iget-wide v8, v2, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float v8, v8

    iget-wide v10, v2, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float v9, v10

    move-object/from16 v7, p0

    move-wide/from16 v10, p4

    .line 942
    invoke-static/range {v3 .. v11}, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->getInstance(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLcom/github/mikephil/charting/utils/Transformer;Landroid/view/View;FFJ)Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;

    move-result-object v12

    .line 946
    .local v12, "job":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->addViewportJob(Ljava/lang/Runnable;)V

    .line 948
    invoke-static {v2}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    .line 952
    .end local v2    # "bounds":Lcom/github/mikephil/charting/utils/MPPointD;
    .end local v12    # "job":Ljava/lang/Runnable;
    .end local v13    # "xInView":F
    .end local v14    # "yInView":F
    :goto_0
    return-void

    .line 950
    :cond_0
    const-string v3, "MPAndroidChart"

    const-string v4, "Unable to execute centerViewToAnimated(...) on API level < 11"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public centerViewToY(FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 6
    .param p1, "yValue"    # F
    .param p2, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .prologue
    .line 894
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRange(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleY()F

    move-result v3

    div-float v1, v2, v3

    .line 896
    .local v1, "valsInView":F
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v1, v4

    add-float/2addr v4, p1

    .line 897
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v5

    .line 896
    invoke-static {v2, v3, v4, v5, p0}, Lcom/github/mikephil/charting/jobs/MoveViewJob;->getInstance(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLcom/github/mikephil/charting/utils/Transformer;Landroid/view/View;)Lcom/github/mikephil/charting/jobs/MoveViewJob;

    move-result-object v0

    .line 899
    .local v0, "job":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->addViewportJob(Ljava/lang/Runnable;)V

    .line 900
    return-void
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 569
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    instance-of v0, v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    check-cast v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;->computeScroll()V

    .line 571
    :cond_0
    return-void
.end method

.method protected drawGridBackground(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 527
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawGridBackground:Z

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGridBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 533
    :cond_0
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawBorders:Z

    if-eqz v0, :cond_1

    .line 534
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 536
    :cond_1
    return-void
.end method

.method public fitScreen()V
    .locals 3

    .prologue
    .line 725
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mFitScreenMatrixBuffer:Landroid/graphics/Matrix;

    .line 726
    .local v0, "save":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->fitScreen(Landroid/graphics/Matrix;)V

    .line 727
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p0, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    .line 729
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    .line 730
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->postInvalidate()V

    .line 731
    return-void
.end method

.method public getAxis(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/components/YAxis;
    .locals 1
    .param p1, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .prologue
    .line 1421
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne p1, v0, :cond_0

    .line 1422
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    .line 1424
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    goto :goto_0
.end method

.method public getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;
    .locals 1

    .prologue
    .line 1400
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    return-object v0
.end method

.method protected getAxisRange(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F
    .locals 1
    .param p1, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .prologue
    .line 1008
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne p1, v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/YAxis;->mAxisRange:F

    .line 1011
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/YAxis;->mAxisRange:F

    goto :goto_0
.end method

.method public getAxisRight()Lcom/github/mikephil/charting/components/YAxis;
    .locals 1

    .prologue
    .line 1410
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    return-object v0
.end method

.method public bridge synthetic getData()Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    return-object v0
.end method

.method public getDataSetByTouchPoint(FF)Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1310
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getHighlightByTouchPoint(FF)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object v0

    .line 1311
    .local v0, "h":Lcom/github/mikephil/charting/highlight/Highlight;
    if-eqz v0, :cond_0

    .line 1312
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;

    .line 1314
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDrawListener()Lcom/github/mikephil/charting/listener/OnDrawListener;
    .locals 1

    .prologue
    .line 1029
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawListener:Lcom/github/mikephil/charting/listener/OnDrawListener;

    return-object v0
.end method

.method public getEntryByTouchPoint(FF)Lcom/github/mikephil/charting/data/Entry;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1295
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getHighlightByTouchPoint(FF)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object v0

    .line 1296
    .local v0, "h":Lcom/github/mikephil/charting/highlight/Highlight;
    if-eqz v0, :cond_0

    .line 1297
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v1, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getEntryForHighlight(Lcom/github/mikephil/charting/highlight/Highlight;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    .line 1299
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHighestVisibleX()F
    .locals 6

    .prologue
    .line 1349
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 1350
    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetHighestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    .line 1349
    invoke-virtual {v1, v2, v3, v4}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FFLcom/github/mikephil/charting/utils/MPPointD;)V

    .line 1351
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/XAxis;->mAxisMaximum:F

    float-to-double v2, v1

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetHighestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    iget-wide v4, v1, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 1352
    .local v0, "result":F
    return v0
.end method

.method public getLowestVisibleX()F
    .locals 6

    .prologue
    .line 1330
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 1331
    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetLowestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    .line 1330
    invoke-virtual {v1, v2, v3, v4}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FFLcom/github/mikephil/charting/utils/MPPointD;)V

    .line 1332
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/XAxis;->mAxisMinimum:F

    float-to-double v2, v1

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->posForGetLowestVisibleX:Lcom/github/mikephil/charting/utils/MPPointD;

    iget-wide v4, v1, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 1333
    .local v0, "result":F
    return v0
.end method

.method public getMaxVisibleCount()I
    .locals 1

    .prologue
    .line 1066
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMaxVisibleCount:I

    return v0
.end method

.method public getMinOffset()F
    .locals 1

    .prologue
    .line 1229
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMinOffset:F

    return v0
.end method

.method public getPaint(I)Landroid/graphics/Paint;
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 1575
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v0

    .line 1576
    .local v0, "p":Landroid/graphics/Paint;
    if-eqz v0, :cond_0

    .line 1584
    .end local v0    # "p":Landroid/graphics/Paint;
    :goto_0
    return-object v0

    .line 1579
    .restart local v0    # "p":Landroid/graphics/Paint;
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1584
    const/4 v0, 0x0

    goto :goto_0

    .line 1581
    :pswitch_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGridBackgroundPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 1579
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public getPixelForValues(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/MPPointD;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .prologue
    .line 1284
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/github/mikephil/charting/utils/Transformer;->getPixelForValues(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v0

    return-object v0
.end method

.method public getPosition(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/MPPointF;
    .locals 4
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1044
    if-nez p1, :cond_0

    .line 1045
    const/4 v0, 0x0

    .line 1052
    :goto_0
    return-object v0

    .line 1047
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGetPositionBuffer:[F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v1

    aput v1, v0, v2

    .line 1048
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGetPositionBuffer:[F

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v1

    aput v1, v0, v3

    .line 1050
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGetPositionBuffer:[F

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 1052
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGetPositionBuffer:[F

    aget v0, v0, v2

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGetPositionBuffer:[F

    aget v1, v1, v3

    invoke-static {v0, v1}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    goto :goto_0
.end method

.method public getRendererLeftYAxis()Lcom/github/mikephil/charting/renderer/YAxisRenderer;
    .locals 1

    .prologue
    .line 1494
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    return-object v0
.end method

.method public getRendererRightYAxis()Lcom/github/mikephil/charting/renderer/YAxisRenderer;
    .locals 1

    .prologue
    .line 1507
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    return-object v0
.end method

.method public getRendererXAxis()Lcom/github/mikephil/charting/renderer/XAxisRenderer;
    .locals 1

    .prologue
    .line 1481
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    return-object v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 1368
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    if-nez v0, :cond_0

    .line 1369
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1371
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleX()F

    move-result v0

    goto :goto_0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 1378
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    if-nez v0, :cond_0

    .line 1379
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1381
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleY()F

    move-result v0

    goto :goto_0
.end method

.method public getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;
    .locals 1
    .param p1, "which"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .prologue
    .line 546
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    if-ne p1, v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    .line 549
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRightAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    goto :goto_0
.end method

.method public getValuesByTouchPoint(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/MPPointD;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    const-wide/16 v2, 0x0

    .line 1265
    invoke-static {v2, v3, v2, v3}, Lcom/github/mikephil/charting/utils/MPPointD;->getInstance(DD)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v0

    .line 1266
    .local v0, "result":Lcom/github/mikephil/charting/utils/MPPointD;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getValuesByTouchPoint(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;Lcom/github/mikephil/charting/utils/MPPointD;)V

    .line 1267
    return-object v0
.end method

.method public getValuesByTouchPoint(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;Lcom/github/mikephil/charting/utils/MPPointD;)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    .param p4, "outputPoint"    # Lcom/github/mikephil/charting/utils/MPPointD;

    .prologue
    .line 1271
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p4}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FFLcom/github/mikephil/charting/utils/MPPointD;)V

    .line 1272
    return-void
.end method

.method public getVisibleXRange()F
    .locals 2

    .prologue
    .line 1361
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getHighestVisibleX()F

    move-result v0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getLowestVisibleX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getYChartMax()F
    .locals 2

    .prologue
    .line 1521
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/YAxis;->mAxisMaximum:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/YAxis;->mAxisMaximum:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getYChartMin()F
    .locals 2

    .prologue
    .line 1526
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public hasNoDragOffset()Z
    .locals 1

    .prologue
    .line 1477
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->hasNoDragOffset()Z

    move-result v0

    return v0
.end method

.method protected init()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    const/16 v4, 0xf0

    .line 152
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/Chart;->init()V

    .line 154
    new-instance v0, Lcom/github/mikephil/charting/components/YAxis;

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;-><init>(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    .line 155
    new-instance v0, Lcom/github/mikephil/charting/components/YAxis;

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/components/YAxis;-><init>(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    .line 157
    new-instance v0, Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    .line 158
    new-instance v0, Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRightAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    .line 160
    new-instance v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-direct {v0, v1, v2, v3}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 161
    new-instance v0, Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRightAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-direct {v0, v1, v2, v3}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 163
    new-instance v0, Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-direct {v0, v1, v2, v3}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    .line 165
    new-instance v0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;

    invoke-direct {v0, p0}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;)V

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setHighlighter(Lcom/github/mikephil/charting/highlight/ChartHighlighter;)V

    .line 167
    new-instance v0, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getMatrixTouch()Landroid/graphics/Matrix;

    move-result-object v1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v0, p0, v1, v2}, Lcom/github/mikephil/charting/listener/BarLineChartTouchListener;-><init>(Lcom/github/mikephil/charting/charts/BarLineChartBase;Landroid/graphics/Matrix;F)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    .line 169
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGridBackgroundPaint:Landroid/graphics/Paint;

    .line 170
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGridBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 172
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGridBackgroundPaint:Landroid/graphics/Paint;

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mBorderPaint:Landroid/graphics/Paint;

    .line 176
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 177
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mBorderPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mBorderPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 179
    return-void
.end method

.method public isAnyAxisInverted()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    const/4 v0, 0x1

    .line 1535
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->isInverted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1539
    :cond_0
    :goto_0
    return v0

    .line 1537
    :cond_1
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->isInverted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1539
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoScaleMinMaxEnabled()Z
    .locals 1

    .prologue
    .line 1559
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAutoScaleMinMaxEnabled:Z

    return v0
.end method

.method public isClipValuesToContentEnabled()Z
    .locals 1

    .prologue
    .line 1204
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mClipValuesToContent:Z

    return v0
.end method

.method public isDoubleTapToZoomEnabled()Z
    .locals 1

    .prologue
    .line 1155
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDoubleTapToZoomEnabled:Z

    return v0
.end method

.method public isDragEnabled()Z
    .locals 1

    .prologue
    .line 1109
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragEnabled:Z

    return v0
.end method

.method public isDrawBordersEnabled()Z
    .locals 1

    .prologue
    .line 1184
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawBorders:Z

    return v0
.end method

.method public isFullyZoomedOut()Z
    .locals 1

    .prologue
    .line 1390
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isFullyZoomedOut()Z

    move-result v0

    return v0
.end method

.method public isHighlightPerDragEnabled()Z
    .locals 1

    .prologue
    .line 1080
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mHighlightPerDragEnabled:Z

    return v0
.end method

.method public isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z
    .locals 1
    .param p1, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .prologue
    .line 1429
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxis(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/YAxis;->isInverted()Z

    move-result v0

    return v0
.end method

.method public isKeepPositionOnRotation()Z
    .locals 1

    .prologue
    .line 1243
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mKeepPositionOnRotation:Z

    return v0
.end method

.method public isPinchZoomEnabled()Z
    .locals 1

    .prologue
    .line 1448
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mPinchZoomEnabled:Z

    return v0
.end method

.method public isScaleXEnabled()Z
    .locals 1

    .prologue
    .line 1132
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleXEnabled:Z

    return v0
.end method

.method public isScaleYEnabled()Z
    .locals 1

    .prologue
    .line 1136
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleYEnabled:Z

    return v0
.end method

.method public moveViewTo(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 5
    .param p1, "xValue"    # F
    .param p2, "yValue"    # F
    .param p3, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .prologue
    .line 847
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRange(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v2

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleY()F

    move-result v3

    div-float v1, v2, v3

    .line 849
    .local v1, "yInView":F
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p2

    .line 850
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v4

    .line 849
    invoke-static {v2, p1, v3, v4, p0}, Lcom/github/mikephil/charting/jobs/MoveViewJob;->getInstance(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLcom/github/mikephil/charting/utils/Transformer;Landroid/view/View;)Lcom/github/mikephil/charting/jobs/MoveViewJob;

    move-result-object v0

    .line 852
    .local v0, "job":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->addViewportJob(Ljava/lang/Runnable;)V

    .line 853
    return-void
.end method

.method public moveViewToAnimated(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;J)V
    .locals 12
    .param p1, "xValue"    # F
    .param p2, "yValue"    # F
    .param p3, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    .param p4, "duration"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 868
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 870
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v2

    invoke-virtual {p0, v1, v2, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getValuesByTouchPoint(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v0

    .line 872
    .local v0, "bounds":Lcom/github/mikephil/charting/utils/MPPointD;
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRange(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleY()F

    move-result v2

    div-float v11, v1, v2

    .line 874
    .local v11, "yInView":F
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v11, v2

    add-float v3, p2, v2

    .line 875
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v4

    iget-wide v6, v0, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float v6, v6

    iget-wide v8, v0, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float v7, v8

    move v2, p1

    move-object v5, p0

    move-wide/from16 v8, p4

    .line 874
    invoke-static/range {v1 .. v9}, Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;->getInstance(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLcom/github/mikephil/charting/utils/Transformer;Landroid/view/View;FFJ)Lcom/github/mikephil/charting/jobs/AnimatedMoveViewJob;

    move-result-object v10

    .line 877
    .local v10, "job":Ljava/lang/Runnable;
    invoke-virtual {p0, v10}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->addViewportJob(Ljava/lang/Runnable;)V

    .line 879
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    .line 883
    .end local v0    # "bounds":Lcom/github/mikephil/charting/utils/MPPointD;
    .end local v10    # "job":Ljava/lang/Runnable;
    .end local v11    # "yInView":F
    :goto_0
    return-void

    .line 881
    :cond_0
    const-string v1, "MPAndroidChart"

    const-string v2, "Unable to execute moveViewToAnimated(...) on API level < 11"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public moveViewToX(F)V
    .locals 4
    .param p1, "xValue"    # F

    .prologue
    .line 830
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    const/4 v2, 0x0

    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 831
    invoke-virtual {p0, v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v3

    .line 830
    invoke-static {v1, p1, v2, v3, p0}, Lcom/github/mikephil/charting/jobs/MoveViewJob;->getInstance(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLcom/github/mikephil/charting/utils/Transformer;Landroid/view/View;)Lcom/github/mikephil/charting/jobs/MoveViewJob;

    move-result-object v0

    .line 833
    .local v0, "job":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->addViewportJob(Ljava/lang/Runnable;)V

    .line 834
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .prologue
    .line 315
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v0, :cond_1

    .line 316
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLogEnabled:Z

    if-eqz v0, :cond_0

    .line 317
    const-string v0, "MPAndroidChart"

    const-string v1, "Preparing... DATA NOT SET."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLogEnabled:Z

    if-eqz v0, :cond_2

    .line 321
    const-string v0, "MPAndroidChart"

    const-string v1, "Preparing..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    if-eqz v0, :cond_3

    .line 325
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/renderer/DataRenderer;->initBuffers()V

    .line 327
    :cond_3
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calcMinMax()V

    .line 329
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/YAxis;->mAxisMaximum:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->isInverted()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->computeAxis(FFZ)V

    .line 330
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/YAxis;->mAxisMaximum:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->isInverted()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->computeAxis(FFZ)V

    .line 331
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/XAxis;->mAxisMinimum:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/XAxis;->mAxisMaximum:F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->computeAxis(FFZ)V

    .line 333
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegend:Lcom/github/mikephil/charting/components/Legend;

    if-eqz v0, :cond_4

    .line 334
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->computeLegend(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 336
    :cond_4
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 187
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->onDraw(Landroid/graphics/Canvas;)V

    .line 189
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v3, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 195
    .local v6, "starttime":J
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->drawGridBackground(Landroid/graphics/Canvas;)V

    .line 197
    iget-boolean v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAutoScaleMinMaxEnabled:Z

    if-eqz v3, :cond_2

    .line 198
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->autoScale()V

    .line 201
    :cond_2
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 202
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    iget-object v8, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget v8, v8, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    iget-object v9, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget v9, v9, Lcom/github/mikephil/charting/components/YAxis;->mAxisMaximum:F

    iget-object v10, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/components/YAxis;->isInverted()Z

    move-result v10

    invoke-virtual {v3, v8, v9, v10}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->computeAxis(FFZ)V

    .line 204
    :cond_3
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 205
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    iget-object v8, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget v8, v8, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    iget-object v9, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget v9, v9, Lcom/github/mikephil/charting/components/YAxis;->mAxisMaximum:F

    iget-object v10, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/components/YAxis;->isInverted()Z

    move-result v10

    invoke-virtual {v3, v8, v9, v10}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->computeAxis(FFZ)V

    .line 207
    :cond_4
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/XAxis;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 208
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    iget-object v8, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v8, v8, Lcom/github/mikephil/charting/components/XAxis;->mAxisMinimum:F

    iget-object v9, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v9, v9, Lcom/github/mikephil/charting/components/XAxis;->mAxisMaximum:F

    const/4 v10, 0x0

    invoke-virtual {v3, v8, v9, v10}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->computeAxis(FFZ)V

    .line 210
    :cond_5
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->renderAxisLine(Landroid/graphics/Canvas;)V

    .line 211
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderAxisLine(Landroid/graphics/Canvas;)V

    .line 212
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderAxisLine(Landroid/graphics/Canvas;)V

    .line 214
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->renderGridLines(Landroid/graphics/Canvas;)V

    .line 215
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderGridLines(Landroid/graphics/Canvas;)V

    .line 216
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderGridLines(Landroid/graphics/Canvas;)V

    .line 218
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/XAxis;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/XAxis;->isDrawLimitLinesBehindDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 219
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->renderLimitLines(Landroid/graphics/Canvas;)V

    .line 221
    :cond_6
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->isDrawLimitLinesBehindDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 222
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderLimitLines(Landroid/graphics/Canvas;)V

    .line 224
    :cond_7
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->isDrawLimitLinesBehindDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 225
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderLimitLines(Landroid/graphics/Canvas;)V

    .line 228
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 229
    .local v2, "clipRestoreCount":I
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 231
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawData(Landroid/graphics/Canvas;)V

    .line 234
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->valuesToHighlight()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 235
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    iget-object v8, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    invoke-virtual {v3, p1, v8}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 238
    :cond_9
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 240
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawExtras(Landroid/graphics/Canvas;)V

    .line 242
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/XAxis;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/XAxis;->isDrawLimitLinesBehindDataEnabled()Z

    move-result v3

    if-nez v3, :cond_a

    .line 243
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->renderLimitLines(Landroid/graphics/Canvas;)V

    .line 245
    :cond_a
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->isDrawLimitLinesBehindDataEnabled()Z

    move-result v3

    if-nez v3, :cond_b

    .line 246
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderLimitLines(Landroid/graphics/Canvas;)V

    .line 248
    :cond_b
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/YAxis;->isDrawLimitLinesBehindDataEnabled()Z

    move-result v3

    if-nez v3, :cond_c

    .line 249
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderLimitLines(Landroid/graphics/Canvas;)V

    .line 251
    :cond_c
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;->renderAxisLabels(Landroid/graphics/Canvas;)V

    .line 252
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderAxisLabels(Landroid/graphics/Canvas;)V

    .line 253
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;->renderAxisLabels(Landroid/graphics/Canvas;)V

    .line 255
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->isClipValuesToContentEnabled()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 256
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 257
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 259
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawValues(Landroid/graphics/Canvas;)V

    .line 261
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 266
    :goto_1
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->renderLegend(Landroid/graphics/Canvas;)V

    .line 268
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->drawDescription(Landroid/graphics/Canvas;)V

    .line 270
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->drawMarkers(Landroid/graphics/Canvas;)V

    .line 272
    iget-boolean v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLogEnabled:Z

    if-eqz v3, :cond_0

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v6

    .line 274
    .local v4, "drawtime":J
    iget-wide v8, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->totalTime:J

    add-long/2addr v8, v4

    iput-wide v8, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->totalTime:J

    .line 275
    iget-wide v8, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->drawCycles:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->drawCycles:J

    .line 276
    iget-wide v8, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->totalTime:J

    iget-wide v10, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->drawCycles:J

    div-long v0, v8, v10

    .line 277
    .local v0, "average":J
    const-string v3, "MPAndroidChart"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Drawtime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms, average: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms, cycles: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->drawCycles:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 263
    .end local v0    # "average":J
    .end local v4    # "drawtime":J
    :cond_d
    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    invoke-virtual {v3, p1}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawValues(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1593
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOnSizeChangedBuffer:[F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOnSizeChangedBuffer:[F

    const/4 v2, 0x0

    aput v2, v1, v3

    aput v2, v0, v4

    .line 1595
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mKeepPositionOnRotation:Z

    if-eqz v0, :cond_0

    .line 1596
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOnSizeChangedBuffer:[F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v1

    aput v1, v0, v4

    .line 1597
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOnSizeChangedBuffer:[F

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v1

    aput v1, v0, v3

    .line 1598
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOnSizeChangedBuffer:[F

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pixelsToValue([F)V

    .line 1602
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/github/mikephil/charting/charts/Chart;->onSizeChanged(IIII)V

    .line 1604
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mKeepPositionOnRotation:Z

    if-eqz v0, :cond_1

    .line 1607
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOnSizeChangedBuffer:[F

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 1608
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mOnSizeChangedBuffer:[F

    invoke-virtual {v0, v1, p0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->centerViewPort([FLandroid/view/View;)V

    .line 1612
    :goto_0
    return-void

    .line 1610
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getMatrixTouch()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1, p0, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    const/4 v0, 0x0

    .line 554
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/Chart;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 556
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v1, :cond_1

    .line 563
    :cond_0
    :goto_0
    return v0

    .line 560
    :cond_1
    iget-boolean v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mTouchEnabled:Z

    if-eqz v1, :cond_0

    .line 563
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mChartTouchListener:Lcom/github/mikephil/charting/listener/ChartTouchListener;

    invoke-virtual {v0, p0, p1}, Lcom/github/mikephil/charting/listener/ChartTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected prepareOffsetMatrix()V
    .locals 2

    .prologue
    .line 308
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRightAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->isInverted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->prepareMatrixOffset(Z)V

    .line 309
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/YAxis;->isInverted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->prepareMatrixOffset(Z)V

    .line 310
    return-void
.end method

.method protected prepareValuePxMatrix()V
    .locals 5

    .prologue
    .line 292
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLogEnabled:Z

    if-eqz v0, :cond_0

    .line 293
    const-string v0, "MPAndroidChart"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preparing Value-Px Matrix, xmin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/XAxis;->mAxisMinimum:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", xmax: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/XAxis;->mAxisMaximum:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", xdelta: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/XAxis;->mAxisRange:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mRightAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/XAxis;->mAxisMinimum:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/XAxis;->mAxisRange:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget v3, v3, Lcom/github/mikephil/charting/components/YAxis;->mAxisRange:F

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRight:Lcom/github/mikephil/charting/components/YAxis;

    iget v4, v4, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/github/mikephil/charting/utils/Transformer;->prepareMatrixValuePx(FFFF)V

    .line 300
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mLeftAxisTransformer:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/XAxis;->mAxisMinimum:F

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/XAxis;->mAxisRange:F

    iget-object v3, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget v3, v3, Lcom/github/mikephil/charting/components/YAxis;->mAxisRange:F

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisLeft:Lcom/github/mikephil/charting/components/YAxis;

    iget v4, v4, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/github/mikephil/charting/utils/Transformer;->prepareMatrixValuePx(FFFF)V

    .line 304
    return-void
.end method

.method public resetTracking()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    const-wide/16 v0, 0x0

    .line 286
    iput-wide v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->totalTime:J

    .line 287
    iput-wide v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->drawCycles:J

    .line 288
    return-void
.end method

.method public resetViewPortOffsets()V
    .locals 1

    .prologue
    .line 992
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mCustomViewPortEnabled:Z

    .line 993
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    .line 994
    return-void
.end method

.method public resetZoom()V
    .locals 3

    .prologue
    .line 626
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->resetZoom(Landroid/graphics/Matrix;)V

    .line 627
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    .line 632
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    .line 633
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->postInvalidate()V

    .line 634
    return-void
.end method

.method public setAutoScaleMinMaxEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1551
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAutoScaleMinMaxEnabled:Z

    .line 1552
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1222
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1223
    return-void
.end method

.method public setBorderWidth(F)V
    .locals 2
    .param p1, "width"    # F

    .prologue
    .line 1213
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mBorderPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1214
    return-void
.end method

.method public setClipValuesToContent(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1194
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mClipValuesToContent:Z

    .line 1195
    return-void
.end method

.method public setDoubleTapToZoomEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1146
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDoubleTapToZoomEnabled:Z

    .line 1147
    return-void
.end method

.method public setDragEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1100
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDragEnabled:Z

    .line 1101
    return-void
.end method

.method public setDragOffsetX(F)V
    .locals 1
    .param p1, "offset"    # F

    .prologue
    .line 1458
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setDragOffsetX(F)V

    .line 1459
    return-void
.end method

.method public setDragOffsetY(F)V
    .locals 1
    .param p1, "offset"    # F

    .prologue
    .line 1468
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setDragOffsetY(F)V

    .line 1469
    return-void
.end method

.method public setDrawBorders(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1174
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawBorders:Z

    .line 1175
    return-void
.end method

.method public setDrawGridBackground(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1164
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawGridBackground:Z

    .line 1165
    return-void
.end method

.method public setGridBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1090
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGridBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1091
    return-void
.end method

.method public setHighlightPerDragEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1076
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mHighlightPerDragEnabled:Z

    .line 1077
    return-void
.end method

.method public setKeepPositionOnRotation(Z)V
    .locals 0
    .param p1, "keepPositionOnRotation"    # Z

    .prologue
    .line 1250
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mKeepPositionOnRotation:Z

    .line 1251
    return-void
.end method

.method public setMaxVisibleValueCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 1062
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iput p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMaxVisibleCount:I

    .line 1063
    return-void
.end method

.method public setMinOffset(F)V
    .locals 0
    .param p1, "minOffset"    # F

    .prologue
    .line 1236
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iput p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mMinOffset:F

    .line 1237
    return-void
.end method

.method public setOnDrawListener(Lcom/github/mikephil/charting/listener/OnDrawListener;)V
    .locals 0
    .param p1, "drawListener"    # Lcom/github/mikephil/charting/listener/OnDrawListener;

    .prologue
    .line 1020
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mDrawListener:Lcom/github/mikephil/charting/listener/OnDrawListener;

    .line 1021
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;I)V
    .locals 0
    .param p1, "p"    # Landroid/graphics/Paint;
    .param p2, "which"    # I

    .prologue
    .line 1564
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/github/mikephil/charting/charts/Chart;->setPaint(Landroid/graphics/Paint;I)V

    .line 1566
    packed-switch p2, :pswitch_data_0

    .line 1571
    :goto_0
    return-void

    .line 1568
    :pswitch_0
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mGridBackgroundPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 1566
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public setPinchZoom(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1439
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mPinchZoomEnabled:Z

    .line 1440
    return-void
.end method

.method public setRendererLeftYAxis(Lcom/github/mikephil/charting/renderer/YAxisRenderer;)V
    .locals 0
    .param p1, "rendererLeftYAxis"    # Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .prologue
    .line 1503
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererLeft:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 1504
    return-void
.end method

.method public setRendererRightYAxis(Lcom/github/mikephil/charting/renderer/YAxisRenderer;)V
    .locals 0
    .param p1, "rendererRightYAxis"    # Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .prologue
    .line 1516
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mAxisRendererRight:Lcom/github/mikephil/charting/renderer/YAxisRenderer;

    .line 1517
    return-void
.end method

.method public setScaleEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1119
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleXEnabled:Z

    .line 1120
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleYEnabled:Z

    .line 1121
    return-void
.end method

.method public setScaleMinima(FF)V
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    .line 741
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setMinimumScaleX(F)V

    .line 742
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0, p2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setMinimumScaleY(F)V

    .line 743
    return-void
.end method

.method public setScaleXEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1124
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleXEnabled:Z

    .line 1125
    return-void
.end method

.method public setScaleYEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1128
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mScaleYEnabled:Z

    .line 1129
    return-void
.end method

.method public setViewPortOffsets(FFFF)V
    .locals 6
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 974
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mCustomViewPortEnabled:Z

    .line 975
    new-instance v0, Lcom/github/mikephil/charting/charts/BarLineChartBase$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/github/mikephil/charting/charts/BarLineChartBase$1;-><init>(Lcom/github/mikephil/charting/charts/BarLineChartBase;FFFF)V

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->post(Ljava/lang/Runnable;)Z

    .line 985
    return-void
.end method

.method public setVisibleXRange(FF)V
    .locals 3
    .param p1, "minXRange"    # F
    .param p2, "maxXRange"    # F

    .prologue
    .line 780
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/XAxis;->mAxisRange:F

    div-float v1, v2, p1

    .line 781
    .local v1, "minScale":F
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v2, v2, Lcom/github/mikephil/charting/components/XAxis;->mAxisRange:F

    div-float v0, v2, p2

    .line 782
    .local v0, "maxScale":F
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2, v1, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setMinMaxScaleX(FF)V

    .line 783
    return-void
.end method

.method public setVisibleXRangeMaximum(F)V
    .locals 2
    .param p1, "maxXRange"    # F

    .prologue
    .line 754
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/XAxis;->mAxisRange:F

    div-float v0, v1, p1

    .line 755
    .local v0, "xScale":F
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setMinimumScaleX(F)V

    .line 756
    return-void
.end method

.method public setVisibleXRangeMinimum(F)V
    .locals 2
    .param p1, "minXRange"    # F

    .prologue
    .line 767
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v1, v1, Lcom/github/mikephil/charting/components/XAxis;->mAxisRange:F

    div-float v0, v1, p1

    .line 768
    .local v0, "xScale":F
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setMaximumScaleX(F)V

    .line 769
    return-void
.end method

.method public setVisibleYRange(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 3
    .param p1, "minYRange"    # F
    .param p2, "maxYRange"    # F
    .param p3, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .prologue
    .line 816
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRange(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v2

    div-float v1, v2, p1

    .line 817
    .local v1, "minScale":F
    invoke-virtual {p0, p3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRange(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v2

    div-float v0, v2, p2

    .line 818
    .local v0, "maxScale":F
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2, v1, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setMinMaxScaleY(FF)V

    .line 819
    return-void
.end method

.method public setVisibleYRangeMaximum(FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 2
    .param p1, "maxYRange"    # F
    .param p2, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .prologue
    .line 793
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRange(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v1

    div-float v0, v1, p1

    .line 794
    .local v0, "yScale":F
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setMinimumScaleY(F)V

    .line 795
    return-void
.end method

.method public setVisibleYRangeMinimum(FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 2
    .param p1, "minYRange"    # F
    .param p2, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .prologue
    .line 804
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    invoke-virtual {p0, p2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRange(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v1

    div-float v0, v1, p1

    .line 805
    .local v0, "yScale":F
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->setMaximumScaleY(F)V

    .line 806
    return-void
.end method

.method public setXAxisRenderer(Lcom/github/mikephil/charting/renderer/XAxisRenderer;)V
    .locals 0
    .param p1, "xAxisRenderer"    # Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    .prologue
    .line 1490
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxisRenderer:Lcom/github/mikephil/charting/renderer/XAxisRenderer;

    .line 1491
    return-void
.end method

.method public zoom(FFFF)V
    .locals 6
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 647
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    neg-float v4, p4

    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->zoom(FFFFLandroid/graphics/Matrix;)V

    .line 648
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    .line 653
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    .line 654
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->postInvalidate()V

    .line 655
    return-void
.end method

.method public zoom(FFFFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 9
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "xValue"    # F
    .param p4, "yValue"    # F
    .param p5, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .prologue
    .line 669
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {p0, p5}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p0

    invoke-static/range {v0 .. v7}, Lcom/github/mikephil/charting/jobs/ZoomJob;->getInstance(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFFFLcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/components/YAxis$AxisDependency;Landroid/view/View;)Lcom/github/mikephil/charting/jobs/ZoomJob;

    move-result-object v8

    .line 670
    .local v8, "job":Ljava/lang/Runnable;
    invoke-virtual {p0, v8}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->addViewportJob(Ljava/lang/Runnable;)V

    .line 671
    return-void
.end method

.method public zoomAndCenterAnimated(FFFFLcom/github/mikephil/charting/components/YAxis$AxisDependency;J)V
    .locals 20
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "xValue"    # F
    .param p4, "yValue"    # F
    .param p5, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    .param p6, "duration"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 702
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    .line 704
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v3, v4, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getValuesByTouchPoint(FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v18

    .line 706
    .local v18, "origin":Lcom/github/mikephil/charting/utils/MPPointD;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxis(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v7, v4, Lcom/github/mikephil/charting/components/XAxis;->mAxisRange:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 707
    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleX()F

    move-result v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleY()F

    move-result v11

    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float v14, v8

    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float v15, v8

    move-object/from16 v4, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move-wide/from16 v16, p6

    .line 706
    invoke-static/range {v3 .. v17}, Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;->getInstance(Lcom/github/mikephil/charting/utils/ViewPortHandler;Landroid/view/View;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/components/YAxis;FFFFFFFFFJ)Lcom/github/mikephil/charting/jobs/AnimatedZoomJob;

    move-result-object v2

    .line 709
    .local v2, "job":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->addViewportJob(Ljava/lang/Runnable;)V

    .line 711
    invoke-static/range {v18 .. v18}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    .line 716
    .end local v2    # "job":Ljava/lang/Runnable;
    .end local v18    # "origin":Lcom/github/mikephil/charting/utils/MPPointD;
    :goto_0
    return-void

    .line 714
    :cond_0
    const-string v3, "MPAndroidChart"

    const-string v4, "Unable to execute zoomAndCenterAnimated(...) on API level < 11"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public zoomIn()V
    .locals 5

    .prologue
    .line 588
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentCenter()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    .line 590
    .local v0, "center":Lcom/github/mikephil/charting/utils/MPPointF;
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget v2, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v3, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    neg-float v3, v3

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v3, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->zoomIn(FFLandroid/graphics/Matrix;)V

    .line 591
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    .line 593
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 598
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    .line 599
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->postInvalidate()V

    .line 600
    return-void
.end method

.method public zoomOut()V
    .locals 5

    .prologue
    .line 607
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentCenter()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    .line 609
    .local v0, "center":Lcom/github/mikephil/charting/utils/MPPointF;
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget v2, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v3, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    neg-float v3, v3

    iget-object v4, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v3, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->zoomOut(FFLandroid/graphics/Matrix;)V

    .line 610
    iget-object v1, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    .line 612
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 617
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    .line 618
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->postInvalidate()V

    .line 619
    return-void
.end method

.method public zoomToCenter(FF)V
    .locals 7
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    .line 681
    .local p0, "this":Lcom/github/mikephil/charting/charts/BarLineChartBase;, "Lcom/github/mikephil/charting/charts/BarLineChartBase<TT;>;"
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getCenterOffsets()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v6

    .line 683
    .local v6, "center":Lcom/github/mikephil/charting/utils/MPPointF;
    iget-object v5, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mZoomMatrixBuffer:Landroid/graphics/Matrix;

    .line 684
    .local v5, "save":Landroid/graphics/Matrix;
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget v3, v6, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v1, v6, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    neg-float v4, v1

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->zoom(FFFFLandroid/graphics/Matrix;)V

    .line 685
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/BarLineChartBase;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v5, p0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    .line 686
    return-void
.end method
