.class public Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;
.super Lcom/github/mikephil/charting/renderer/XAxisRenderer;
.source "XAxisRendererHorizontalBarChart.java"


# instance fields
.field protected mChart:Lcom/github/mikephil/charting/charts/BarChart;

.field protected mRenderLimitLinesPathBuffer:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/charts/BarChart;)V
    .locals 1
    .param p1, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .param p2, "xAxis"    # Lcom/github/mikephil/charting/components/XAxis;
    .param p3, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;
    .param p4, "chart"    # Lcom/github/mikephil/charting/charts/BarChart;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/renderer/XAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/XAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    .line 210
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mRenderLimitLinesPathBuffer:Landroid/graphics/Path;

    .line 31
    iput-object p4, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    .line 32
    return-void
.end method


# virtual methods
.method public computeAxis(FFZ)V
    .locals 5
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "inverted"    # Z

    .prologue
    .line 39
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentWidth()F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isFullyZoomedOutY()Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v0

    .line 42
    .local v0, "p1":Lcom/github/mikephil/charting/utils/MPPointD;
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v1

    .line 44
    .local v1, "p2":Lcom/github/mikephil/charting/utils/MPPointD;
    if-eqz p3, :cond_1

    .line 46
    iget-wide v2, v1, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float p1, v2

    .line 47
    iget-wide v2, v0, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float p2, v2

    .line 54
    :goto_0
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    .line 55
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    .line 58
    .end local v0    # "p1":Lcom/github/mikephil/charting/utils/MPPointD;
    .end local v1    # "p2":Lcom/github/mikephil/charting/utils/MPPointD;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->computeAxisValues(FF)V

    .line 59
    return-void

    .line 50
    .restart local v0    # "p1":Lcom/github/mikephil/charting/utils/MPPointD;
    .restart local v1    # "p2":Lcom/github/mikephil/charting/utils/MPPointD;
    :cond_1
    iget-wide v2, v0, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float p1, v2

    .line 51
    iget-wide v2, v1, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float p2, v2

    goto :goto_0
.end method

.method protected computeSize()V
    .locals 9

    .prologue
    const/high16 v8, 0x40600000    # 3.5f

    .line 64
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/XAxis;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 65
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/XAxis;->getTextSize()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 67
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/XAxis;->getLongestLabel()Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "longest":Ljava/lang/String;
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    invoke-static {v5, v4}, Lcom/github/mikephil/charting/utils/Utils;->calcTextSize(Landroid/graphics/Paint;Ljava/lang/String;)Lcom/github/mikephil/charting/utils/FSize;

    move-result-object v2

    .line 71
    .local v2, "labelSize":Lcom/github/mikephil/charting/utils/FSize;
    iget v5, v2, Lcom/github/mikephil/charting/utils/FSize;->width:F

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/XAxis;->getXOffset()F

    move-result v6

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v3, v5

    .line 72
    .local v3, "labelWidth":F
    iget v0, v2, Lcom/github/mikephil/charting/utils/FSize;->height:F

    .line 74
    .local v0, "labelHeight":F
    iget v5, v2, Lcom/github/mikephil/charting/utils/FSize;->width:F

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 77
    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/XAxis;->getLabelRotationAngle()F

    move-result v6

    .line 74
    invoke-static {v5, v0, v6}, Lcom/github/mikephil/charting/utils/Utils;->getSizeOfRotatedRectangleByDegrees(FFF)Lcom/github/mikephil/charting/utils/FSize;

    move-result-object v1

    .line 79
    .local v1, "labelRotatedSize":Lcom/github/mikephil/charting/utils/FSize;
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v5, Lcom/github/mikephil/charting/components/XAxis;->mLabelWidth:I

    .line 80
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v5, Lcom/github/mikephil/charting/components/XAxis;->mLabelHeight:I

    .line 81
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v6, v1, Lcom/github/mikephil/charting/utils/FSize;->width:F

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/components/XAxis;->getXOffset()F

    move-result v7

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Lcom/github/mikephil/charting/components/XAxis;->mLabelRotatedWidth:I

    .line 82
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v6, v1, Lcom/github/mikephil/charting/utils/FSize;->height:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v5, Lcom/github/mikephil/charting/components/XAxis;->mLabelRotatedHeight:I

    .line 84
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/FSize;->recycleInstance(Lcom/github/mikephil/charting/utils/FSize;)V

    .line 85
    return-void
.end method

.method protected drawGridLine(Landroid/graphics/Canvas;FFLandroid/graphics/Path;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "gridLinePath"    # Landroid/graphics/Path;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v0

    invoke-virtual {p4, v0, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 176
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v0

    invoke-virtual {p4, v0, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 179
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mGridPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 181
    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    .line 182
    return-void
.end method

.method protected drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "pos"    # F
    .param p3, "anchor"    # Lcom/github/mikephil/charting/utils/MPPointF;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->getLabelRotationAngle()F

    move-result v6

    .line 137
    .local v6, "labelRotationAngleDegrees":F
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->isCenterAxisLabelsEnabled()Z

    move-result v7

    .line 139
    .local v7, "centeringEnabled":Z
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget v0, v0, Lcom/github/mikephil/charting/components/XAxis;->mEntryCount:I

    mul-int/lit8 v0, v0, 0x2

    new-array v9, v0, [F

    .line 141
    .local v9, "positions":[F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v9

    if-ge v8, v0, :cond_1

    .line 144
    if-eqz v7, :cond_0

    .line 145
    add-int/lit8 v0, v8, 0x1

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v1, v1, Lcom/github/mikephil/charting/components/XAxis;->mCenteredEntries:[F

    div-int/lit8 v3, v8, 0x2

    aget v1, v1, v3

    aput v1, v9, v0

    .line 141
    :goto_1
    add-int/lit8 v8, v8, 0x2

    goto :goto_0

    .line 147
    :cond_0
    add-int/lit8 v0, v8, 0x1

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v1, v1, Lcom/github/mikephil/charting/components/XAxis;->mEntries:[F

    div-int/lit8 v3, v8, 0x2

    aget v1, v1, v3

    aput v1, v9, v0

    goto :goto_1

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {v0, v9}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 153
    const/4 v8, 0x0

    :goto_2
    array-length v0, v9

    if-ge v8, v0, :cond_3

    .line 155
    add-int/lit8 v0, v8, 0x1

    aget v4, v9, v0

    .line 157
    .local v4, "y":F
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    iget-object v1, v1, Lcom/github/mikephil/charting/components/XAxis;->mEntries:[F

    div-int/lit8 v3, v8, 0x2

    aget v1, v1, v3

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-interface {v0, v1, v3}, Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;->getFormattedValue(FLcom/github/mikephil/charting/components/AxisBase;)Ljava/lang/String;

    move-result-object v2

    .local v2, "label":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v5, p3

    .line 160
    invoke-virtual/range {v0 .. v6}, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;FFLcom/github/mikephil/charting/utils/MPPointF;F)V

    .line 153
    .end local v2    # "label":Ljava/lang/String;
    :cond_2
    add-int/lit8 v8, v8, 0x2

    goto :goto_2

    .line 163
    .end local v4    # "y":F
    :cond_3
    return-void
.end method

.method public getGridClippingRect()Landroid/graphics/RectF;
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mGridClippingRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 168
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mGridClippingRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/AxisBase;->getGridLineWidth()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 169
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mGridClippingRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public renderAxisLabels(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    .line 90
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->isDrawLabelsEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->getXOffset()F

    move-result v1

    .line 95
    .local v1, "xoffset":F
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/XAxis;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 96
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/XAxis;->getTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 97
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/components/XAxis;->getTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    invoke-static {v5, v5}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    .line 101
    .local v0, "pointF":Lcom/github/mikephil/charting/utils/MPPointF;
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v2, v3, :cond_2

    .line 102
    iput v5, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 103
    iput v4, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 104
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v2

    add-float/2addr v2, v1

    invoke-virtual {p0, p1, v2, v0}, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V

    .line 130
    :goto_1
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    goto :goto_0

    .line 106
    :cond_2
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP_INSIDE:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v2, v3, :cond_3

    .line 107
    iput v6, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 108
    iput v4, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 109
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v2

    sub-float/2addr v2, v1

    invoke-virtual {p0, p1, v2, v0}, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V

    goto :goto_1

    .line 111
    :cond_3
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v2, v3, :cond_4

    .line 112
    iput v6, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 113
    iput v4, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 114
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v2

    sub-float/2addr v2, v1

    invoke-virtual {p0, p1, v2, v0}, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V

    goto :goto_1

    .line 116
    :cond_4
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v2

    sget-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM_INSIDE:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v2, v3, :cond_5

    .line 117
    iput v6, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 118
    iput v4, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 119
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v2

    add-float/2addr v2, v1

    invoke-virtual {p0, p1, v2, v0}, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V

    goto :goto_1

    .line 122
    :cond_5
    iput v5, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 123
    iput v4, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 124
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v2

    add-float/2addr v2, v1

    invoke-virtual {p0, p1, v2, v0}, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V

    .line 125
    iput v6, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 126
    iput v4, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 127
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v2

    sub-float/2addr v2, v1

    invoke-virtual {p0, p1, v2, v0}, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->drawLabels(Landroid/graphics/Canvas;FLcom/github/mikephil/charting/utils/MPPointF;)V

    goto :goto_1
.end method

.method public renderAxisLine(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->isDrawAxisLineEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mAxisLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->getAxisLineColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mAxisLinePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->getAxisLineWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 193
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 194
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->TOP_INSIDE:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 195
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTH_SIDED:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v0, v1, :cond_3

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v1

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 197
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v3

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 198
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mAxisLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 196
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 201
    :cond_3
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 202
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM_INSIDE:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    .line 203
    invoke-virtual {v0}, Lcom/github/mikephil/charting/components/XAxis;->getPosition()Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTH_SIDED:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    if-ne v0, v1, :cond_0

    .line 204
    :cond_4
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v1

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 205
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v2

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v3

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 206
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mAxisLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 204
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public renderLimitLines(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 220
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mXAxis:Lcom/github/mikephil/charting/components/XAxis;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/components/XAxis;->getLimitLines()Ljava/util/List;

    move-result-object v6

    .line 222
    .local v6, "limitLines":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/components/LimitLine;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-gtz v11, :cond_1

    .line 309
    :cond_0
    return-void

    .line 225
    :cond_1
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mRenderLimitLinesBuffer:[F

    .line 226
    .local v8, "pts":[F
    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v8, v11

    .line 227
    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v8, v11

    .line 229
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mRenderLimitLinesPathBuffer:Landroid/graphics/Path;

    .line 230
    .local v5, "limitLinePath":Landroid/graphics/Path;
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 232
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v1, v11, :cond_0

    .line 234
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/components/LimitLine;

    .line 236
    .local v2, "l":Lcom/github/mikephil/charting/components/LimitLine;
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_2

    .line 232
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 240
    .local v0, "clipRestoreCount":I
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLineClippingRect:Landroid/graphics/RectF;

    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 241
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLineClippingRect:Landroid/graphics/RectF;

    const/4 v12, 0x0

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLineWidth()F

    move-result v13

    neg-float v13, v13

    invoke-virtual {v11, v12, v13}, Landroid/graphics/RectF;->inset(FF)V

    .line 242
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLineClippingRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 244
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 245
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLineColor()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLineWidth()F

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 247
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getDashPathEffect()Landroid/graphics/DashPathEffect;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 249
    const/4 v11, 0x1

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLimit()F

    move-result v12

    aput v12, v8, v11

    .line 251
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    invoke-virtual {v11, v8}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 253
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v11

    const/4 v12, 0x1

    aget v12, v8, v12

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 254
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v11

    const/4 v12, 0x1

    aget v12, v8, v12

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 256
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 257
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 260
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, "label":Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v11, ""

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 265
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getTextStyle()Landroid/graphics/Paint$Style;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 266
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 267
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getTextColor()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 268
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 269
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getTextSize()F

    move-result v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 271
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-static {v11, v3}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v11

    int-to-float v4, v11

    .line 272
    .local v4, "labelLineHeight":F
    const/high16 v11, 0x40800000    # 4.0f

    invoke-static {v11}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v11

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getXOffset()F

    move-result v12

    add-float v9, v11, v12

    .line 273
    .local v9, "xOffset":F
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLineWidth()F

    move-result v11

    add-float/2addr v11, v4

    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getYOffset()F

    move-result v12

    add-float v10, v11, v12

    .line 275
    .local v10, "yOffset":F
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/LimitLine;->getLabelPosition()Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    move-result-object v7

    .line 277
    .local v7, "position":Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;
    sget-object v11, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->RIGHT_TOP:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v7, v11, :cond_4

    .line 279
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 280
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 281
    invoke-virtual {v11}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v11

    sub-float/2addr v11, v9

    const/4 v12, 0x1

    aget v12, v8, v12

    sub-float/2addr v12, v10

    add-float/2addr v12, v4

    iget-object v13, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 280
    invoke-virtual {p1, v3, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 307
    .end local v4    # "labelLineHeight":F
    .end local v7    # "position":Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;
    .end local v9    # "xOffset":F
    .end local v10    # "yOffset":F
    :cond_3
    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_1

    .line 284
    .restart local v4    # "labelLineHeight":F
    .restart local v7    # "position":Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;
    .restart local v9    # "xOffset":F
    .restart local v10    # "yOffset":F
    :cond_4
    sget-object v11, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->RIGHT_BOTTOM:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v7, v11, :cond_5

    .line 286
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 287
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 288
    invoke-virtual {v11}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v11

    sub-float/2addr v11, v9

    const/4 v12, 0x1

    aget v12, v8, v12

    add-float/2addr v12, v10

    iget-object v13, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 287
    invoke-virtual {p1, v3, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 291
    :cond_5
    sget-object v11, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->LEFT_TOP:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    if-ne v7, v11, :cond_6

    .line 293
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 294
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 295
    invoke-virtual {v11}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v11

    add-float/2addr v11, v9

    const/4 v12, 0x1

    aget v12, v8, v12

    sub-float/2addr v12, v10

    add-float/2addr v12, v4

    iget-object v13, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 294
    invoke-virtual {p1, v3, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 300
    :cond_6
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 301
    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 302
    invoke-virtual {v11}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->offsetLeft()F

    move-result v11

    add-float/2addr v11, v9

    const/4 v12, 0x1

    aget v12, v8, v12

    add-float/2addr v12, v10

    iget-object v13, p0, Lcom/github/mikephil/charting/renderer/XAxisRendererHorizontalBarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 301
    invoke-virtual {p1, v3, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method
