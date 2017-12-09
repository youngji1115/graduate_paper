.class public Lcom/github/mikephil/charting/renderer/BarChartRenderer;
.super Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;
.source "BarChartRenderer.java"


# instance fields
.field protected mBarBorderPaint:Landroid/graphics/Paint;

.field protected mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

.field protected mBarRect:Landroid/graphics/RectF;

.field private mBarShadowRectBuffer:Landroid/graphics/RectF;

.field protected mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

.field protected mShadowPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 4
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 32
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    .line 85
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    .line 42
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    .line 45
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    .line 51
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    .line 54
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    return-void
.end method


# virtual methods
.method public drawData(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 73
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    .line 75
    .local v0, "barData":Lcom/github/mikephil/charting/data/BarData;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 77
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 79
    .local v2, "set":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    invoke-virtual {p0, p1, v2, v1}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;I)V

    .line 75
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v2    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    :cond_1
    return-void
.end method

.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;I)V
    .locals 22
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    .param p3, "index"    # I

    .prologue
    .line 89
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v20

    .line 91
    .local v20, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getBarBorderColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getBarBorderWidth()F

    move-result v3

    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 94
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getBarBorderWidth()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v13, 0x1

    .line 96
    .local v13, "drawBorder":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v18

    .line 97
    .local v18, "phaseX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v19

    .line 100
    .local v19, "phaseY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isDrawBarShadowEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getBarShadowColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v8

    .line 105
    .local v8, "barData":Lcom/github/mikephil/charting/data/BarData;
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BarData;->getBarWidth()F

    move-result v9

    .line 106
    .local v9, "barWidth":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v10, v9, v2

    .line 109
    .local v10, "barWidthHalf":F
    const/4 v15, 0x0

    .local v15, "i":I
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryCount()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v18

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryCount()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 110
    .local v12, "count":I
    :goto_1
    if-ge v15, v12, :cond_2

    .line 113
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v14

    check-cast v14, Lcom/github/mikephil/charting/data/BarEntry;

    .line 115
    .local v14, "e":Lcom/github/mikephil/charting/data/BarEntry;
    invoke-virtual {v14}, Lcom/github/mikephil/charting/data/BarEntry;->getX()F

    move-result v21

    .line 117
    .local v21, "x":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    sub-float v3, v21, v10

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    add-float v3, v21, v10

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/utils/Transformer;->rectValueToPixel(Landroid/graphics/RectF;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v2

    if-nez v2, :cond_1

    .line 111
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 94
    .end local v8    # "barData":Lcom/github/mikephil/charting/data/BarData;
    .end local v9    # "barWidth":F
    .end local v10    # "barWidthHalf":F
    .end local v12    # "count":I
    .end local v13    # "drawBorder":Z
    .end local v14    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v15    # "i":I
    .end local v18    # "phaseX":F
    .end local v19    # "phaseY":F
    .end local v21    # "x":F
    :cond_0
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 125
    .restart local v8    # "barData":Lcom/github/mikephil/charting/data/BarData;
    .restart local v9    # "barWidth":F
    .restart local v10    # "barWidthHalf":F
    .restart local v12    # "count":I
    .restart local v13    # "drawBorder":Z
    .restart local v14    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    .restart local v15    # "i":I
    .restart local v18    # "phaseX":F
    .restart local v19    # "phaseY":F
    .restart local v21    # "x":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v2

    if-nez v2, :cond_5

    .line 136
    .end local v8    # "barData":Lcom/github/mikephil/charting/data/BarData;
    .end local v9    # "barWidth":F
    .end local v10    # "barWidthHalf":F
    .end local v12    # "count":I
    .end local v14    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v15    # "i":I
    .end local v21    # "x":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    aget-object v11, v2, p3

    .line 137
    .local v11, "buffer":Lcom/github/mikephil/charting/buffer/BarBuffer;
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setPhases(FF)V

    .line 138
    move/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setDataSet(I)V

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    move-result v2

    invoke-virtual {v11, v2}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setInverted(Z)V

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarData;->getBarWidth()F

    move-result v2

    invoke-virtual {v11, v2}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setBarWidth(F)V

    .line 142
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/github/mikephil/charting/buffer/BarBuffer;->feed(Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;)V

    .line 144
    iget-object v2, v11, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 146
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getColors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    const/16 v16, 0x1

    .line 148
    .local v16, "isSingleColor":Z
    :goto_3
    if-eqz v16, :cond_3

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    :cond_3
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_4
    invoke-virtual {v11}, Lcom/github/mikephil/charting/buffer/BarBuffer;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_8

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v3, v11, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v4, v17, 0x2

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v2

    if-nez v2, :cond_7

    .line 152
    :cond_4
    :goto_5
    add-int/lit8 v17, v17, 0x4

    goto :goto_4

    .line 128
    .end local v11    # "buffer":Lcom/github/mikephil/charting/buffer/BarBuffer;
    .end local v16    # "isSingleColor":Z
    .end local v17    # "j":I
    .restart local v8    # "barData":Lcom/github/mikephil/charting/data/BarData;
    .restart local v9    # "barWidth":F
    .restart local v10    # "barWidthHalf":F
    .restart local v12    # "count":I
    .restart local v14    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    .restart local v15    # "i":I
    .restart local v21    # "x":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 146
    .end local v8    # "barData":Lcom/github/mikephil/charting/data/BarData;
    .end local v9    # "barWidth":F
    .end local v10    # "barWidthHalf":F
    .end local v12    # "count":I
    .end local v14    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v15    # "i":I
    .end local v21    # "x":F
    .restart local v11    # "buffer":Lcom/github/mikephil/charting/buffer/BarBuffer;
    :cond_6
    const/16 v16, 0x0

    goto :goto_3

    .line 157
    .restart local v16    # "isSingleColor":Z
    .restart local v17    # "j":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v3, v11, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v3, v3, v17

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v2

    if-nez v2, :cond_9

    .line 174
    :cond_8
    return-void

    .line 160
    :cond_9
    if-nez v16, :cond_a

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    div-int/lit8 v3, v17, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    :cond_a
    iget-object v2, v11, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v3, v2, v17

    iget-object v2, v11, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v4, v17, 0x1

    aget v4, v2, v4

    iget-object v2, v11, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v5, v17, 0x2

    aget v5, v2, v5

    iget-object v2, v11, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v6, v17, 0x3

    aget v6, v2, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 169
    if-eqz v13, :cond_4

    .line 170
    iget-object v2, v11, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v3, v2, v17

    iget-object v2, v11, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v4, v17, 0x1

    aget v4, v2, v4

    iget-object v2, v11, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v5, v17, 0x2

    aget v5, v2, v5

    iget-object v2, v11, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v6, v17, 0x3

    aget v6, v2, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_5
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 482
    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 15
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "indices"    # [Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 420
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v7

    .line 422
    .local v7, "barData":Lcom/github/mikephil/charting/data/BarData;
    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v1, 0x0

    move v13, v1

    :goto_0
    if-ge v13, v14, :cond_5

    aget-object v9, p2, v13

    .line 424
    .local v9, "high":Lcom/github/mikephil/charting/highlight/Highlight;
    invoke-virtual {v9}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v12

    check-cast v12, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 426
    .local v12, "set":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    if-eqz v12, :cond_0

    invoke-interface {v12}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isHighlightEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 422
    :cond_0
    :goto_1
    add-int/lit8 v1, v13, 0x1

    move v13, v1

    goto :goto_0

    .line 429
    :cond_1
    invoke-virtual {v9}, Lcom/github/mikephil/charting/highlight/Highlight;->getX()F

    move-result v1

    invoke-virtual {v9}, Lcom/github/mikephil/charting/highlight/Highlight;->getY()F

    move-result v2

    invoke-interface {v12, v1, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForXValue(FF)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/BarEntry;

    .line 431
    .local v8, "e":Lcom/github/mikephil/charting/data/BarEntry;
    invoke-virtual {p0, v8, v12}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->isInBoundsX(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v12}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v6

    .line 436
    .local v6, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-interface {v12}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getHighLightColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 437
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-interface {v12}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getHighLightAlpha()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 439
    invoke-virtual {v9}, Lcom/github/mikephil/charting/highlight/Highlight;->getStackIndex()I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BarEntry;->isStacked()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v10, 0x1

    .line 444
    .local v10, "isStack":Z
    :goto_2
    if-eqz v10, :cond_4

    .line 446
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isHighlightFullBarEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 448
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BarEntry;->getPositiveSum()F

    move-result v3

    .line 449
    .local v3, "y1":F
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v1

    neg-float v4, v1

    .line 464
    .local v4, "y2":F
    :goto_3
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BarEntry;->getX()F

    move-result v2

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarData;->getBarWidth()F

    move-result v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v1, v5

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->prepareBarHighlight(FFFFLcom/github/mikephil/charting/utils/Transformer;)V

    .line 466
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v9, v1}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->setHighlightDrawPos(Lcom/github/mikephil/charting/highlight/Highlight;Landroid/graphics/RectF;)V

    .line 468
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 439
    .end local v3    # "y1":F
    .end local v4    # "y2":F
    .end local v10    # "isStack":Z
    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    .line 453
    .restart local v10    # "isStack":Z
    :cond_3
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BarEntry;->getRanges()[Lcom/github/mikephil/charting/highlight/Range;

    move-result-object v1

    invoke-virtual {v9}, Lcom/github/mikephil/charting/highlight/Highlight;->getStackIndex()I

    move-result v2

    aget-object v11, v1, v2

    .line 455
    .local v11, "range":Lcom/github/mikephil/charting/highlight/Range;
    iget v3, v11, Lcom/github/mikephil/charting/highlight/Range;->from:F

    .line 456
    .restart local v3    # "y1":F
    iget v4, v11, Lcom/github/mikephil/charting/highlight/Range;->to:F

    .line 457
    .restart local v4    # "y2":F
    goto :goto_3

    .line 460
    .end local v3    # "y1":F
    .end local v4    # "y2":F
    .end local v11    # "range":Lcom/github/mikephil/charting/highlight/Range;
    :cond_4
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v3

    .line 461
    .restart local v3    # "y1":F
    const/4 v4, 0x0

    .restart local v4    # "y2":F
    goto :goto_3

    .line 470
    .end local v3    # "y1":F
    .end local v4    # "y2":F
    .end local v6    # "trans":Lcom/github/mikephil/charting/utils/Transformer;
    .end local v8    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v9    # "high":Lcom/github/mikephil/charting/highlight/Highlight;
    .end local v10    # "isStack":Z
    .end local v12    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    :cond_5
    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 45
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->isDrawingValuesAllowed(Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarData;->getDataSets()Ljava/util/List;

    move-result-object v23

    .line 196
    .local v23, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;>;"
    const/high16 v2, 0x40900000    # 4.5f

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v43

    .line 197
    .local v43, "valueOffsetPlus":F
    const/16 v35, 0x0

    .line 198
    .local v35, "posOffset":F
    const/16 v32, 0x0

    .line 199
    .local v32, "negOffset":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isDrawValueAboveBarEnabled()Z

    move-result v25

    .line 201
    .local v25, "drawValueAboveBar":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v2

    if-ge v7, v2, :cond_1e

    .line 203
    move-object/from16 v0, v23

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 205
    .local v22, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->shouldDrawValues(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 201
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 209
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface/range {v22 .. v22}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    move-result v29

    .line 215
    .local v29, "isInverted":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    const-string v3, "8"

    invoke-static {v2, v3}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v0, v2

    move/from16 v44, v0

    .line 216
    .local v44, "valueTextHeight":F
    if-eqz v25, :cond_3

    move/from16 v0, v43

    neg-float v0, v0

    move/from16 v35, v0

    .line 217
    :goto_2
    if-eqz v25, :cond_4

    add-float v32, v44, v43

    .line 219
    :goto_3
    if-eqz v29, :cond_1

    .line 220
    move/from16 v0, v35

    neg-float v2, v0

    sub-float v35, v2, v44

    .line 221
    move/from16 v0, v32

    neg-float v2, v0

    sub-float v32, v2, v44

    .line 225
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    aget-object v20, v2, v7

    .line 227
    .local v20, "buffer":Lcom/github/mikephil/charting/buffer/BarBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v34

    .line 229
    .local v34, "phaseY":F
    invoke-interface/range {v22 .. v22}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getIconsOffset()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v2

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(Lcom/github/mikephil/charting/utils/MPPointF;)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v26

    .line 230
    .local v26, "iconsOffset":Lcom/github/mikephil/charting/utils/MPPointF;
    move-object/from16 v0, v26

    iget v2, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v2

    move-object/from16 v0, v26

    iput v2, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 231
    move-object/from16 v0, v26

    iget v2, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v2

    move-object/from16 v0, v26

    iput v2, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 234
    invoke-interface/range {v22 .. v22}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isStacked()Z

    move-result v2

    if-nez v2, :cond_b

    .line 236
    const/16 v30, 0x0

    .local v30, "j":I
    :goto_4
    move/from16 v0, v30

    int-to-float v2, v0

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    array-length v3, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v4

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 238
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v2, v2, v30

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v4, v30, 0x2

    aget v3, v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v8, v2, v3

    .line 240
    .local v8, "x":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2, v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v2

    if-nez v2, :cond_5

    .line 412
    .end local v8    # "x":F
    .end local v30    # "j":I
    :cond_2
    invoke-static/range {v26 .. v26}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    goto/16 :goto_1

    .line 216
    .end local v20    # "buffer":Lcom/github/mikephil/charting/buffer/BarBuffer;
    .end local v26    # "iconsOffset":Lcom/github/mikephil/charting/utils/MPPointF;
    .end local v34    # "phaseY":F
    :cond_3
    add-float v35, v44, v43

    goto :goto_2

    .line 217
    :cond_4
    move/from16 v0, v43

    neg-float v0, v0

    move/from16 v32, v0

    goto/16 :goto_3

    .line 243
    .restart local v8    # "x":F
    .restart local v20    # "buffer":Lcom/github/mikephil/charting/buffer/BarBuffer;
    .restart local v26    # "iconsOffset":Lcom/github/mikephil/charting/utils/MPPointF;
    .restart local v30    # "j":I
    .restart local v34    # "phaseY":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v4, v30, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 244
    invoke-virtual {v2, v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v2

    if-nez v2, :cond_7

    .line 236
    :cond_6
    :goto_5
    add-int/lit8 v30, v30, 0x4

    goto :goto_4

    .line 247
    :cond_7
    div-int/lit8 v2, v30, 0x4

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/BarEntry;

    .line 248
    .local v6, "entry":Lcom/github/mikephil/charting/data/BarEntry;
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v5

    .line 250
    .local v5, "val":F
    invoke-interface/range {v22 .. v22}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isDrawValuesEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 251
    invoke-interface/range {v22 .. v22}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IValueFormatter;

    move-result-object v4

    const/4 v2, 0x0

    cmpl-float v2, v5, v2

    if-ltz v2, :cond_9

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v3, v30, 0x1

    aget v2, v2, v3

    add-float v9, v2, v35

    :goto_6
    div-int/lit8 v2, v30, 0x4

    .line 255
    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getValueTextColor(I)I

    move-result v10

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 251
    invoke-virtual/range {v2 .. v10}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/IValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    .line 258
    :cond_8
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface/range {v22 .. v22}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isDrawIconsEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 260
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 262
    .local v10, "icon":Landroid/graphics/drawable/Drawable;
    move/from16 v37, v8

    .line 263
    .local v37, "px":F
    const/4 v2, 0x0

    cmpl-float v2, v5, v2

    if-ltz v2, :cond_a

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v3, v30, 0x1

    aget v2, v2, v3

    add-float v38, v2, v35

    .line 267
    .local v38, "py":F
    :goto_7
    move-object/from16 v0, v26

    iget v2, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float v37, v37, v2

    .line 268
    move-object/from16 v0, v26

    iget v2, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float v38, v38, v2

    .line 270
    move/from16 v0, v37

    float-to-int v11, v0

    move/from16 v0, v38

    float-to-int v12, v0

    .line 275
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    .line 276
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    move-object/from16 v9, p1

    .line 270
    invoke-static/range {v9 .. v14}, Lcom/github/mikephil/charting/utils/Utils;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_5

    .line 251
    .end local v10    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v37    # "px":F
    .end local v38    # "py":F
    :cond_9
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v3, v30, 0x3

    aget v2, v2, v3

    add-float v9, v2, v32

    goto :goto_6

    .line 263
    .restart local v10    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v37    # "px":F
    :cond_a
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v3, v30, 0x3

    aget v2, v2, v3

    add-float v38, v2, v32

    goto :goto_7

    .line 283
    .end local v5    # "val":F
    .end local v6    # "entry":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v8    # "x":F
    .end local v10    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v30    # "j":I
    .end local v37    # "px":F
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface/range {v22 .. v22}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v39

    .line 285
    .local v39, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    const/16 v21, 0x0

    .line 286
    .local v21, "bufferIndex":I
    const/16 v28, 0x0

    .line 288
    .local v28, "index":I
    :cond_c
    :goto_8
    move/from16 v0, v28

    int-to-float v2, v0

    invoke-interface/range {v22 .. v22}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryCount()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v4

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 290
    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/BarEntry;

    .line 292
    .restart local v6    # "entry":Lcom/github/mikephil/charting/data/BarEntry;
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->getYVals()[F

    move-result-object v41

    .line 293
    .local v41, "vals":[F
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v2, v2, v21

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v4, v21, 0x2

    aget v3, v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v8, v2, v3

    .line 295
    .restart local v8    # "x":F
    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getValueTextColor(I)I

    move-result v19

    .line 300
    .local v19, "color":I
    if-nez v41, :cond_11

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2, v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v4, v21, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 306
    invoke-virtual {v2, v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 309
    invoke-interface/range {v22 .. v22}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isDrawValuesEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 310
    invoke-interface/range {v22 .. v22}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IValueFormatter;

    move-result-object v13

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v14

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v3, v21, 0x1

    aget v3, v2, v3

    .line 312
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_f

    move/from16 v2, v35

    :goto_9
    add-float v18, v3, v2

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    .line 310
    invoke-virtual/range {v11 .. v19}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/IValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    .line 316
    :cond_d
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-interface/range {v22 .. v22}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isDrawIconsEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 318
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 320
    .restart local v10    # "icon":Landroid/graphics/drawable/Drawable;
    move/from16 v37, v8

    .line 321
    .restart local v37    # "px":F
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v3, v21, 0x1

    aget v3, v2, v3

    .line 322
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_10

    move/from16 v2, v35

    :goto_a
    add-float v38, v3, v2

    .line 324
    .restart local v38    # "py":F
    move-object/from16 v0, v26

    iget v2, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float v37, v37, v2

    .line 325
    move-object/from16 v0, v26

    iget v2, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float v38, v38, v2

    .line 327
    move/from16 v0, v37

    float-to-int v11, v0

    move/from16 v0, v38

    float-to-int v12, v0

    .line 332
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    .line 333
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    move-object/from16 v9, p1

    .line 327
    invoke-static/range {v9 .. v14}, Lcom/github/mikephil/charting/utils/Utils;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 407
    .end local v10    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v37    # "px":F
    .end local v38    # "py":F
    :cond_e
    if-nez v41, :cond_1d

    add-int/lit8 v21, v21, 0x4

    .line 408
    :goto_b
    add-int/lit8 v28, v28, 0x1

    .line 409
    goto/16 :goto_8

    :cond_f
    move/from16 v2, v32

    .line 312
    goto :goto_9

    .restart local v10    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v37    # "px":F
    :cond_10
    move/from16 v2, v32

    .line 322
    goto :goto_a

    .line 339
    .end local v10    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v37    # "px":F
    :cond_11
    move-object/from16 v0, v41

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [F

    move-object/from16 v40, v0

    .line 341
    .local v40, "transformed":[F
    const/16 v36, 0x0

    .line 342
    .local v36, "posY":F
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v2

    neg-float v0, v2

    move/from16 v33, v0

    .line 344
    .local v33, "negY":F
    const/16 v31, 0x0

    .local v31, "k":I
    const/16 v27, 0x0

    .local v27, "idx":I
    :goto_c
    move-object/from16 v0, v40

    array-length v2, v0

    move/from16 v0, v31

    if-ge v0, v2, :cond_15

    .line 346
    aget v42, v41, v27

    .line 349
    .local v42, "value":F
    const/4 v2, 0x0

    cmpl-float v2, v42, v2

    if-nez v2, :cond_13

    const/4 v2, 0x0

    cmpl-float v2, v36, v2

    if-eqz v2, :cond_12

    const/4 v2, 0x0

    cmpl-float v2, v33, v2

    if-nez v2, :cond_13

    .line 351
    :cond_12
    move/from16 v18, v42

    .line 360
    .local v18, "y":F
    :goto_d
    add-int/lit8 v2, v31, 0x1

    mul-float v3, v18, v34

    aput v3, v40, v2

    .line 344
    add-int/lit8 v31, v31, 0x2

    add-int/lit8 v27, v27, 0x1

    goto :goto_c

    .line 352
    .end local v18    # "y":F
    :cond_13
    const/4 v2, 0x0

    cmpl-float v2, v42, v2

    if-ltz v2, :cond_14

    .line 353
    add-float v36, v36, v42

    .line 354
    move/from16 v18, v36

    .restart local v18    # "y":F
    goto :goto_d

    .line 356
    .end local v18    # "y":F
    :cond_14
    move/from16 v18, v33

    .line 357
    .restart local v18    # "y":F
    sub-float v33, v33, v42

    goto :goto_d

    .line 363
    .end local v18    # "y":F
    .end local v42    # "value":F
    :cond_15
    invoke-virtual/range {v39 .. v40}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 365
    const/16 v31, 0x0

    :goto_e
    move-object/from16 v0, v40

    array-length v2, v0

    move/from16 v0, v31

    if-ge v0, v2, :cond_e

    .line 367
    div-int/lit8 v2, v31, 0x2

    aget v5, v41, v2

    .line 368
    .restart local v5    # "val":F
    const/4 v2, 0x0

    cmpl-float v2, v5, v2

    if-nez v2, :cond_16

    const/4 v2, 0x0

    cmpl-float v2, v33, v2

    if-nez v2, :cond_16

    const/4 v2, 0x0

    cmpl-float v2, v36, v2

    if-gtz v2, :cond_17

    :cond_16
    const/4 v2, 0x0

    cmpg-float v2, v5, v2

    if-gez v2, :cond_19

    :cond_17
    const/16 v24, 0x1

    .line 371
    .local v24, "drawBelow":Z
    :goto_f
    add-int/lit8 v2, v31, 0x1

    aget v3, v40, v2

    if-eqz v24, :cond_1a

    move/from16 v2, v32

    :goto_10
    add-float v18, v3, v2

    .line 374
    .restart local v18    # "y":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2, v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 378
    invoke-virtual {v2, v8}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 365
    :cond_18
    :goto_11
    add-int/lit8 v31, v31, 0x2

    goto :goto_e

    .line 368
    .end local v18    # "y":F
    .end local v24    # "drawBelow":Z
    :cond_19
    const/16 v24, 0x0

    goto :goto_f

    .restart local v24    # "drawBelow":Z
    :cond_1a
    move/from16 v2, v35

    .line 371
    goto :goto_10

    .line 381
    .restart local v18    # "y":F
    :cond_1b
    invoke-interface/range {v22 .. v22}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isDrawValuesEnabled()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 383
    invoke-interface/range {v22 .. v22}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IValueFormatter;

    move-result-object v13

    div-int/lit8 v2, v31, 0x2

    aget v14, v41, v2

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    .line 382
    invoke-virtual/range {v11 .. v19}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/IValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFFI)V

    .line 392
    :cond_1c
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-interface/range {v22 .. v22}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isDrawIconsEnabled()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 394
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BarEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 396
    .restart local v10    # "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v26

    iget v2, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float/2addr v2, v8

    float-to-int v11, v2

    move-object/from16 v0, v26

    iget v2, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float v2, v2, v18

    float-to-int v12, v2

    .line 401
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    .line 402
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    move-object/from16 v9, p1

    .line 396
    invoke-static/range {v9 .. v14}, Lcom/github/mikephil/charting/utils/Utils;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_11

    .line 407
    .end local v5    # "val":F
    .end local v10    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v18    # "y":F
    .end local v24    # "drawBelow":Z
    .end local v27    # "idx":I
    .end local v31    # "k":I
    .end local v33    # "negY":F
    .end local v36    # "posY":F
    .end local v40    # "transformed":[F
    :cond_1d
    move-object/from16 v0, v41

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    add-int v21, v21, v2

    goto/16 :goto_b

    .line 415
    .end local v6    # "entry":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v7    # "i":I
    .end local v8    # "x":F
    .end local v19    # "color":I
    .end local v20    # "buffer":Lcom/github/mikephil/charting/buffer/BarBuffer;
    .end local v21    # "bufferIndex":I
    .end local v22    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    .end local v23    # "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;>;"
    .end local v25    # "drawValueAboveBar":Z
    .end local v26    # "iconsOffset":Lcom/github/mikephil/charting/utils/MPPointF;
    .end local v28    # "index":I
    .end local v29    # "isInverted":Z
    .end local v32    # "negOffset":F
    .end local v34    # "phaseY":F
    .end local v35    # "posOffset":F
    .end local v39    # "trans":Lcom/github/mikephil/charting/utils/Transformer;
    .end local v41    # "vals":[F
    .end local v43    # "valueOffsetPlus":F
    .end local v44    # "valueTextHeight":F
    :cond_1e
    return-void
.end method

.method public initBuffers()V
    .locals 8

    .prologue
    .line 60
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    .line 61
    .local v0, "barData":Lcom/github/mikephil/charting/data/BarData;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v3

    new-array v3, v3, [Lcom/github/mikephil/charting/buffer/BarBuffer;

    iput-object v3, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    .line 63
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 64
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 65
    .local v2, "set":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    new-instance v5, Lcom/github/mikephil/charting/buffer/BarBuffer;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryCount()I

    move-result v3

    mul-int/lit8 v6, v3, 0x4

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isStacked()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getStackSize()I

    move-result v3

    :goto_1
    mul-int/2addr v3, v6

    .line 66
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v6

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isStacked()Z

    move-result v7

    invoke-direct {v5, v3, v6, v7}, Lcom/github/mikephil/charting/buffer/BarBuffer;-><init>(IIZ)V

    aput-object v5, v4, v1

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    .line 68
    .end local v2    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    :cond_1
    return-void
.end method

.method protected prepareBarHighlight(FFFFLcom/github/mikephil/charting/utils/Transformer;)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y1"    # F
    .param p3, "y2"    # F
    .param p4, "barWidthHalf"    # F
    .param p5, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;

    .prologue
    .line 178
    sub-float v1, p1, p4

    .line 179
    .local v1, "left":F
    add-float v2, p1, p4

    .line 180
    .local v2, "right":F
    move v3, p2

    .line 181
    .local v3, "top":F
    move v0, p3

    .line 183
    .local v0, "bottom":F
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 185
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v5

    invoke-virtual {p5, v4, v5}, Lcom/github/mikephil/charting/utils/Transformer;->rectToPixelPhase(Landroid/graphics/RectF;F)V

    .line 186
    return-void
.end method

.method protected setHighlightDrawPos(Lcom/github/mikephil/charting/highlight/Highlight;Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "high"    # Lcom/github/mikephil/charting/highlight/Highlight;
    .param p2, "bar"    # Landroid/graphics/RectF;

    .prologue
    .line 477
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, v1}, Lcom/github/mikephil/charting/highlight/Highlight;->setDraw(FF)V

    .line 478
    return-void
.end method
