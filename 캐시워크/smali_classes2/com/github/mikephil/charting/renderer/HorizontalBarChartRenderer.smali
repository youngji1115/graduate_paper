.class public Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;
.super Lcom/github/mikephil/charting/renderer/BarChartRenderer;
.source "HorizontalBarChartRenderer.java"


# instance fields
.field private mBarShadowRectBuffer:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 2
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 53
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    .line 37
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;I)V
    .locals 22
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    .param p3, "index"    # I

    .prologue
    .line 58
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v20

    .line 60
    .local v20, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getBarBorderColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getBarBorderWidth()F

    move-result v3

    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getBarBorderWidth()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v13, 0x1

    .line 65
    .local v13, "drawBorder":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v18

    .line 66
    .local v18, "phaseX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v19

    .line 69
    .local v19, "phaseY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isDrawBarShadowEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 70
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getBarShadowColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v8

    .line 74
    .local v8, "barData":Lcom/github/mikephil/charting/data/BarData;
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BarData;->getBarWidth()F

    move-result v9

    .line 75
    .local v9, "barWidth":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v10, v9, v2

    .line 78
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

    .line 79
    .local v12, "count":I
    :goto_1
    if-ge v15, v12, :cond_2

    .line 82
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v14

    check-cast v14, Lcom/github/mikephil/charting/data/BarEntry;

    .line 84
    .local v14, "e":Lcom/github/mikephil/charting/data/BarEntry;
    invoke-virtual {v14}, Lcom/github/mikephil/charting/data/BarEntry;->getX()F

    move-result v21

    .line 86
    .local v21, "x":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    sub-float v3, v21, v10

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 87
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    add-float v3, v21, v10

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 89
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/utils/Transformer;->rectValueToPixel(Landroid/graphics/RectF;)V

    .line 91
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v2

    if-nez v2, :cond_1

    .line 80
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 63
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

    .line 94
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

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v2

    if-nez v2, :cond_5

    .line 105
    .end local v8    # "barData":Lcom/github/mikephil/charting/data/BarData;
    .end local v9    # "barWidth":F
    .end local v10    # "barWidthHalf":F
    .end local v12    # "count":I
    .end local v14    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v15    # "i":I
    .end local v21    # "x":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    aget-object v11, v2, p3

    .line 106
    .local v11, "buffer":Lcom/github/mikephil/charting/buffer/BarBuffer;
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setPhases(FF)V

    .line 107
    move/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setDataSet(I)V

    .line 108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    move-result v2

    invoke-virtual {v11, v2}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setInverted(Z)V

    .line 109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarData;->getBarWidth()F

    move-result v2

    invoke-virtual {v11, v2}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setBarWidth(F)V

    .line 111
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/github/mikephil/charting/buffer/BarBuffer;->feed(Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;)V

    .line 113
    iget-object v2, v11, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 115
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getColors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    const/16 v16, 0x1

    .line 117
    .local v16, "isSingleColor":Z
    :goto_3
    if-eqz v16, :cond_3

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    :cond_3
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_4
    invoke-virtual {v11}, Lcom/github/mikephil/charting/buffer/BarBuffer;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_4

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v3, v11, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v4, v17, 0x3

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v2

    if-nez v2, :cond_7

    .line 143
    :cond_4
    return-void

    .line 97
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

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 98
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarShadowRectBuffer:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 115
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

    .line 126
    .restart local v16    # "isSingleColor":Z
    .restart local v17    # "j":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v3, v11, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v4, v17, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v2

    if-nez v2, :cond_9

    .line 121
    :cond_8
    :goto_5
    add-int/lit8 v17, v17, 0x4

    goto :goto_4

    .line 129
    :cond_9
    if-nez v16, :cond_a

    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    div-int/lit8 v3, v17, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
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

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 138
    if-eqz v13, :cond_8

    .line 139
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

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_5
.end method

.method protected drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "valueText"    # Ljava/lang/String;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "color"    # I

    .prologue
    .line 400
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 401
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 402
    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 52
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 148
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->isDrawingValuesAllowed(Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 150
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BarData;->getDataSets()Ljava/util/List;

    move-result-object v24

    .line 152
    .local v24, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;>;"
    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v49

    .line 153
    .local v49, "valueOffsetPlus":F
    const/16 v40, 0x0

    .line 154
    .local v40, "posOffset":F
    const/16 v37, 0x0

    .line 155
    .local v37, "negOffset":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isDrawValueAboveBarEnabled()Z

    move-result v26

    .line 157
    .local v26, "drawValueAboveBar":Z
    const/16 v30, 0x0

    .local v30, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v4

    move/from16 v0, v30

    if-ge v0, v4, :cond_24

    .line 159
    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 161
    .local v23, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->shouldDrawValues(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 157
    :goto_1
    add-int/lit8 v30, v30, 0x1

    goto :goto_0

    .line 164
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface/range {v23 .. v23}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    move-result v34

    .line 167
    .local v34, "isInverted":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    const-string v5, "10"

    invoke-static {v4, v5}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v29, v4, v5

    .line 170
    .local v29, "halfTextHeight":F
    invoke-interface/range {v23 .. v23}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/IValueFormatter;

    move-result-object v28

    .line 173
    .local v28, "formatter":Lcom/github/mikephil/charting/formatter/IValueFormatter;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    aget-object v21, v4, v30

    .line 175
    .local v21, "buffer":Lcom/github/mikephil/charting/buffer/BarBuffer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v39

    .line 177
    .local v39, "phaseY":F
    invoke-interface/range {v23 .. v23}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getIconsOffset()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v4

    invoke-static {v4}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(Lcom/github/mikephil/charting/utils/MPPointF;)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v31

    .line 178
    .local v31, "iconsOffset":Lcom/github/mikephil/charting/utils/MPPointF;
    move-object/from16 v0, v31

    iget v4, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    invoke-static {v4}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v4

    move-object/from16 v0, v31

    iput v4, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    .line 179
    move-object/from16 v0, v31

    iget v4, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-static {v4}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v4

    move-object/from16 v0, v31

    iput v4, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    .line 182
    invoke-interface/range {v23 .. v23}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isStacked()Z

    move-result v4

    if-nez v4, :cond_b

    .line 184
    const/16 v35, 0x0

    .local v35, "j":I
    :goto_2
    move/from16 v0, v35

    int-to-float v4, v0

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    array-length v5, v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v7

    mul-float/2addr v5, v7

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 186
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v5, v35, 0x1

    aget v4, v4, v5

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v7, v35, 0x3

    aget v5, v5, v7

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v51, v4, v5

    .line 188
    .local v51, "y":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v7, v35, 0x1

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v4

    if-nez v4, :cond_2

    .line 394
    .end local v35    # "j":I
    .end local v51    # "y":F
    :cond_1
    invoke-static/range {v31 .. v31}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    goto/16 :goto_1

    .line 191
    .restart local v35    # "j":I
    .restart local v51    # "y":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v5, v5, v35

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    move-result v4

    if-nez v4, :cond_4

    .line 184
    :cond_3
    :goto_3
    add-int/lit8 v35, v35, 0x4

    goto :goto_2

    .line 194
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v7, v35, 0x1

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 197
    div-int/lit8 v4, v35, 0x4

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v27

    check-cast v27, Lcom/github/mikephil/charting/data/BarEntry;

    .line 198
    .local v27, "entry":Lcom/github/mikephil/charting/data/BarEntry;
    invoke-virtual/range {v27 .. v27}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v46

    .line 199
    .local v46, "val":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v0, v28

    move/from16 v1, v46

    move-object/from16 v2, v27

    move/from16 v3, v30

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/github/mikephil/charting/formatter/IValueFormatter;->getFormattedValue(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;

    move-result-object v6

    .line 202
    .local v6, "formattedValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-static {v4, v6}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v4

    int-to-float v0, v4

    move/from16 v50, v0

    .line 203
    .local v50, "valueTextWidth":F
    if-eqz v26, :cond_7

    move/from16 v40, v49

    .line 204
    :goto_4
    if-eqz v26, :cond_8

    add-float v4, v50, v49

    neg-float v0, v4

    move/from16 v37, v0

    .line 206
    :goto_5
    if-eqz v34, :cond_5

    .line 207
    move/from16 v0, v40

    neg-float v4, v0

    sub-float v40, v4, v50

    .line 208
    move/from16 v0, v37

    neg-float v4, v0

    sub-float v37, v4, v50

    .line 211
    :cond_5
    invoke-interface/range {v23 .. v23}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isDrawValuesEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 212
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v5, v35, 0x2

    aget v5, v4, v5

    const/4 v4, 0x0

    cmpl-float v4, v46, v4

    if-ltz v4, :cond_9

    move/from16 v4, v40

    :goto_6
    add-float v7, v5, v4

    add-float v8, v51, v29

    div-int/lit8 v4, v35, 0x2

    .line 216
    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getValueTextColor(I)I

    move-result v9

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 212
    invoke-virtual/range {v4 .. v9}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    .line 219
    :cond_6
    invoke-virtual/range {v27 .. v27}, Lcom/github/mikephil/charting/data/BarEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface/range {v23 .. v23}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isDrawIconsEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 221
    invoke-virtual/range {v27 .. v27}, Lcom/github/mikephil/charting/data/BarEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 223
    .local v8, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v5, v35, 0x2

    aget v5, v4, v5

    const/4 v4, 0x0

    cmpl-float v4, v46, v4

    if-ltz v4, :cond_a

    move/from16 v4, v40

    :goto_7
    add-float v42, v5, v4

    .line 224
    .local v42, "px":F
    move/from16 v43, v51

    .line 226
    .local v43, "py":F
    move-object/from16 v0, v31

    iget v4, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float v42, v42, v4

    .line 227
    move-object/from16 v0, v31

    iget v4, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float v43, v43, v4

    .line 229
    move/from16 v0, v42

    float-to-int v9, v0

    move/from16 v0, v43

    float-to-int v10, v0

    .line 234
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    .line 235
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    move-object/from16 v7, p1

    .line 229
    invoke-static/range {v7 .. v12}, Lcom/github/mikephil/charting/utils/Utils;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    goto/16 :goto_3

    .line 203
    .end local v8    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v42    # "px":F
    .end local v43    # "py":F
    :cond_7
    add-float v4, v50, v49

    neg-float v0, v4

    move/from16 v40, v0

    goto/16 :goto_4

    :cond_8
    move/from16 v37, v49

    .line 204
    goto/16 :goto_5

    :cond_9
    move/from16 v4, v37

    .line 212
    goto :goto_6

    .restart local v8    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_a
    move/from16 v4, v37

    .line 223
    goto :goto_7

    .line 242
    .end local v6    # "formattedValue":Ljava/lang/String;
    .end local v8    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v27    # "entry":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v35    # "j":I
    .end local v46    # "val":F
    .end local v50    # "valueTextWidth":F
    .end local v51    # "y":F
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface/range {v23 .. v23}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v44

    .line 244
    .local v44, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    const/16 v22, 0x0

    .line 245
    .local v22, "bufferIndex":I
    const/16 v33, 0x0

    .line 247
    .local v33, "index":I
    :cond_c
    :goto_8
    move/from16 v0, v33

    int-to-float v4, v0

    invoke-interface/range {v23 .. v23}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryCount()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v7

    mul-float/2addr v5, v7

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 249
    move-object/from16 v0, v23

    move/from16 v1, v33

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v27

    check-cast v27, Lcom/github/mikephil/charting/data/BarEntry;

    .line 251
    .restart local v27    # "entry":Lcom/github/mikephil/charting/data/BarEntry;
    move-object/from16 v0, v23

    move/from16 v1, v33

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getValueTextColor(I)I

    move-result v14

    .line 252
    .local v14, "color":I
    invoke-virtual/range {v27 .. v27}, Lcom/github/mikephil/charting/data/BarEntry;->getYVals()[F

    move-result-object v47

    .line 257
    .local v47, "vals":[F
    if-nez v47, :cond_14

    .line 259
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v7, v22, 0x1

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 262
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v5, v5, v22

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 265
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v7, v22, 0x1

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 268
    invoke-virtual/range {v27 .. v27}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v46

    .line 269
    .restart local v46    # "val":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v0, v28

    move/from16 v1, v46

    move-object/from16 v2, v27

    move/from16 v3, v30

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/github/mikephil/charting/formatter/IValueFormatter;->getFormattedValue(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;

    move-result-object v6

    .line 273
    .restart local v6    # "formattedValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-static {v4, v6}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v4

    int-to-float v0, v4

    move/from16 v50, v0

    .line 274
    .restart local v50    # "valueTextWidth":F
    if-eqz v26, :cond_10

    move/from16 v40, v49

    .line 275
    :goto_9
    if-eqz v26, :cond_11

    add-float v4, v50, v49

    neg-float v0, v4

    move/from16 v37, v0

    .line 277
    :goto_a
    if-eqz v34, :cond_d

    .line 278
    move/from16 v0, v40

    neg-float v4, v0

    sub-float v40, v4, v50

    .line 279
    move/from16 v0, v37

    neg-float v4, v0

    sub-float v37, v4, v50

    .line 282
    :cond_d
    invoke-interface/range {v23 .. v23}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isDrawValuesEnabled()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 283
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v5, v22, 0x2

    aget v5, v4, v5

    .line 285
    invoke-virtual/range {v27 .. v27}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v4

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-ltz v4, :cond_12

    move/from16 v4, v40

    :goto_b
    add-float v12, v5, v4

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v5, v22, 0x1

    aget v4, v4, v5

    add-float v13, v4, v29

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v6

    .line 283
    invoke-virtual/range {v9 .. v14}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    .line 289
    :cond_e
    invoke-virtual/range {v27 .. v27}, Lcom/github/mikephil/charting/data/BarEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-interface/range {v23 .. v23}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isDrawIconsEnabled()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 291
    invoke-virtual/range {v27 .. v27}, Lcom/github/mikephil/charting/data/BarEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 293
    .restart local v8    # "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v5, v22, 0x2

    aget v5, v4, v5

    .line 294
    invoke-virtual/range {v27 .. v27}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v4

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-ltz v4, :cond_13

    move/from16 v4, v40

    :goto_c
    add-float v42, v5, v4

    .line 295
    .restart local v42    # "px":F
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v5, v22, 0x1

    aget v43, v4, v5

    .line 297
    .restart local v43    # "py":F
    move-object/from16 v0, v31

    iget v4, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float v42, v42, v4

    .line 298
    move-object/from16 v0, v31

    iget v4, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float v43, v43, v4

    .line 300
    move/from16 v0, v42

    float-to-int v9, v0

    move/from16 v0, v43

    float-to-int v10, v0

    .line 305
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    .line 306
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    move-object/from16 v7, p1

    .line 300
    invoke-static/range {v7 .. v12}, Lcom/github/mikephil/charting/utils/Utils;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 389
    .end local v6    # "formattedValue":Ljava/lang/String;
    .end local v8    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v42    # "px":F
    .end local v43    # "py":F
    .end local v46    # "val":F
    .end local v50    # "valueTextWidth":F
    :cond_f
    if-nez v47, :cond_23

    add-int/lit8 v22, v22, 0x4

    .line 390
    :goto_d
    add-int/lit8 v33, v33, 0x1

    .line 391
    goto/16 :goto_8

    .line 274
    .restart local v6    # "formattedValue":Ljava/lang/String;
    .restart local v46    # "val":F
    .restart local v50    # "valueTextWidth":F
    :cond_10
    add-float v4, v50, v49

    neg-float v0, v4

    move/from16 v40, v0

    goto/16 :goto_9

    :cond_11
    move/from16 v37, v49

    .line 275
    goto/16 :goto_a

    :cond_12
    move/from16 v4, v37

    .line 285
    goto :goto_b

    .restart local v8    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_13
    move/from16 v4, v37

    .line 294
    goto :goto_c

    .line 311
    .end local v6    # "formattedValue":Ljava/lang/String;
    .end local v8    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v46    # "val":F
    .end local v50    # "valueTextWidth":F
    :cond_14
    move-object/from16 v0, v47

    array-length v4, v0

    mul-int/lit8 v4, v4, 0x2

    new-array v0, v4, [F

    move-object/from16 v45, v0

    .line 313
    .local v45, "transformed":[F
    const/16 v41, 0x0

    .line 314
    .local v41, "posY":F
    invoke-virtual/range {v27 .. v27}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v4

    neg-float v0, v4

    move/from16 v38, v0

    .line 316
    .local v38, "negY":F
    const/16 v36, 0x0

    .local v36, "k":I
    const/16 v32, 0x0

    .local v32, "idx":I
    :goto_e
    move-object/from16 v0, v45

    array-length v4, v0

    move/from16 v0, v36

    if-ge v0, v4, :cond_18

    .line 318
    aget v48, v47, v32

    .line 321
    .local v48, "value":F
    const/4 v4, 0x0

    cmpl-float v4, v48, v4

    if-nez v4, :cond_16

    const/4 v4, 0x0

    cmpl-float v4, v41, v4

    if-eqz v4, :cond_15

    const/4 v4, 0x0

    cmpl-float v4, v38, v4

    if-nez v4, :cond_16

    .line 323
    :cond_15
    move/from16 v51, v48

    .line 332
    .restart local v51    # "y":F
    :goto_f
    mul-float v4, v51, v39

    aput v4, v45, v36

    .line 316
    add-int/lit8 v36, v36, 0x2

    add-int/lit8 v32, v32, 0x1

    goto :goto_e

    .line 324
    .end local v51    # "y":F
    :cond_16
    const/4 v4, 0x0

    cmpl-float v4, v48, v4

    if-ltz v4, :cond_17

    .line 325
    add-float v41, v41, v48

    .line 326
    move/from16 v51, v41

    .restart local v51    # "y":F
    goto :goto_f

    .line 328
    .end local v51    # "y":F
    :cond_17
    move/from16 v51, v38

    .line 329
    .restart local v51    # "y":F
    sub-float v38, v38, v48

    goto :goto_f

    .line 335
    .end local v48    # "value":F
    .end local v51    # "y":F
    :cond_18
    invoke-virtual/range {v44 .. v45}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 337
    const/16 v36, 0x0

    :goto_10
    move-object/from16 v0, v45

    array-length v4, v0

    move/from16 v0, v36

    if-ge v0, v4, :cond_f

    .line 339
    div-int/lit8 v4, v36, 0x2

    aget v46, v47, v4

    .line 340
    .restart local v46    # "val":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v0, v28

    move/from16 v1, v46

    move-object/from16 v2, v27

    move/from16 v3, v30

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/github/mikephil/charting/formatter/IValueFormatter;->getFormattedValue(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;

    move-result-object v6

    .line 344
    .restart local v6    # "formattedValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-static {v4, v6}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v4

    int-to-float v0, v4

    move/from16 v50, v0

    .line 345
    .restart local v50    # "valueTextWidth":F
    if-eqz v26, :cond_1d

    move/from16 v40, v49

    .line 346
    :goto_11
    if-eqz v26, :cond_1e

    add-float v4, v50, v49

    neg-float v0, v4

    move/from16 v37, v0

    .line 348
    :goto_12
    if-eqz v34, :cond_19

    .line 349
    move/from16 v0, v40

    neg-float v4, v0

    sub-float v40, v4, v50

    .line 350
    move/from16 v0, v37

    neg-float v4, v0

    sub-float v37, v4, v50

    .line 353
    :cond_19
    const/4 v4, 0x0

    cmpl-float v4, v46, v4

    if-nez v4, :cond_1a

    const/4 v4, 0x0

    cmpl-float v4, v38, v4

    if-nez v4, :cond_1a

    const/4 v4, 0x0

    cmpl-float v4, v41, v4

    if-gtz v4, :cond_1b

    :cond_1a
    const/4 v4, 0x0

    cmpg-float v4, v46, v4

    if-gez v4, :cond_1f

    :cond_1b
    const/16 v25, 0x1

    .line 357
    .local v25, "drawBelow":Z
    :goto_13
    aget v5, v45, v36

    if-eqz v25, :cond_20

    move/from16 v4, v37

    :goto_14
    add-float v12, v5, v4

    .line 359
    .local v12, "x":F
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v5, v22, 0x1

    aget v4, v4, v5

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v7, v22, 0x3

    aget v5, v5, v7

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v51, v4, v5

    .line 361
    .restart local v51    # "y":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move/from16 v0, v51

    invoke-virtual {v4, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 364
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4, v12}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    move-result v4

    if-nez v4, :cond_21

    .line 337
    :cond_1c
    :goto_15
    add-int/lit8 v36, v36, 0x2

    goto/16 :goto_10

    .line 345
    .end local v12    # "x":F
    .end local v25    # "drawBelow":Z
    .end local v51    # "y":F
    :cond_1d
    add-float v4, v50, v49

    neg-float v0, v4

    move/from16 v40, v0

    goto :goto_11

    :cond_1e
    move/from16 v37, v49

    .line 346
    goto :goto_12

    .line 353
    :cond_1f
    const/16 v25, 0x0

    goto :goto_13

    .restart local v25    # "drawBelow":Z
    :cond_20
    move/from16 v4, v40

    .line 357
    goto :goto_14

    .line 367
    .restart local v12    # "x":F
    .restart local v51    # "y":F
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move/from16 v0, v51

    invoke-virtual {v4, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 370
    invoke-interface/range {v23 .. v23}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isDrawValuesEnabled()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 371
    add-float v13, v51, v29

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v6

    invoke-virtual/range {v9 .. v14}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FFI)V

    .line 374
    :cond_22
    invoke-virtual/range {v27 .. v27}, Lcom/github/mikephil/charting/data/BarEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1c

    invoke-interface/range {v23 .. v23}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isDrawIconsEnabled()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 376
    invoke-virtual/range {v27 .. v27}, Lcom/github/mikephil/charting/data/BarEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 378
    .restart local v8    # "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v31

    iget v4, v0, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    add-float/2addr v4, v12

    float-to-int v0, v4

    move/from16 v17, v0

    move-object/from16 v0, v31

    iget v4, v0, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    add-float v4, v4, v51

    float-to-int v0, v4

    move/from16 v18, v0

    .line 383
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    .line 384
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v20

    move-object/from16 v15, p1

    move-object/from16 v16, v8

    .line 378
    invoke-static/range {v15 .. v20}, Lcom/github/mikephil/charting/utils/Utils;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_15

    .line 389
    .end local v6    # "formattedValue":Ljava/lang/String;
    .end local v8    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v12    # "x":F
    .end local v25    # "drawBelow":Z
    .end local v32    # "idx":I
    .end local v36    # "k":I
    .end local v38    # "negY":F
    .end local v41    # "posY":F
    .end local v45    # "transformed":[F
    .end local v46    # "val":F
    .end local v50    # "valueTextWidth":F
    .end local v51    # "y":F
    :cond_23
    move-object/from16 v0, v47

    array-length v4, v0

    mul-int/lit8 v4, v4, 0x4

    add-int v22, v22, v4

    goto/16 :goto_d

    .line 397
    .end local v14    # "color":I
    .end local v21    # "buffer":Lcom/github/mikephil/charting/buffer/BarBuffer;
    .end local v22    # "bufferIndex":I
    .end local v23    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    .end local v24    # "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;>;"
    .end local v26    # "drawValueAboveBar":Z
    .end local v27    # "entry":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v28    # "formatter":Lcom/github/mikephil/charting/formatter/IValueFormatter;
    .end local v29    # "halfTextHeight":F
    .end local v30    # "i":I
    .end local v31    # "iconsOffset":Lcom/github/mikephil/charting/utils/MPPointF;
    .end local v33    # "index":I
    .end local v34    # "isInverted":Z
    .end local v37    # "negOffset":F
    .end local v39    # "phaseY":F
    .end local v40    # "posOffset":F
    .end local v44    # "trans":Lcom/github/mikephil/charting/utils/Transformer;
    .end local v47    # "vals":[F
    .end local v49    # "valueOffsetPlus":F
    :cond_24
    return-void
.end method

.method public initBuffers()V
    .locals 8

    .prologue
    .line 43
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    .line 44
    .local v0, "barData":Lcom/github/mikephil/charting/data/BarData;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v3

    new-array v3, v3, [Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;

    iput-object v3, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    .line 46
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 47
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 48
    .local v2, "set":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    new-instance v5, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;

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

    .line 49
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v6

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isStacked()Z

    move-result v7

    invoke-direct {v5, v3, v6, v7}, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;-><init>(IIZ)V

    aput-object v5, v4, v1

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    .line 51
    .end local v2    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    :cond_1
    return-void
.end method

.method protected isDrawingValuesAllowed(Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;)Z
    .locals 3
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;

    .prologue
    .line 424
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getEntryCount()I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/dataprovider/ChartInterface;->getMaxVisibleCount()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 425
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleY()F

    move-result v2

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 424
    :goto_0
    return v0

    .line 425
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected prepareBarHighlight(FFFFLcom/github/mikephil/charting/utils/Transformer;)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y1"    # F
    .param p3, "y2"    # F
    .param p4, "barWidthHalf"    # F
    .param p5, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;

    .prologue
    .line 407
    sub-float v3, p1, p4

    .line 408
    .local v3, "top":F
    add-float v0, p1, p4

    .line 409
    .local v0, "bottom":F
    move v1, p2

    .line 410
    .local v1, "left":F
    move v2, p3

    .line 412
    .local v2, "right":F
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 414
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v5

    invoke-virtual {p5, v4, v5}, Lcom/github/mikephil/charting/utils/Transformer;->rectToPixelPhaseHorizontal(Landroid/graphics/RectF;F)V

    .line 415
    return-void
.end method

.method protected setHighlightDrawPos(Lcom/github/mikephil/charting/highlight/Highlight;Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "high"    # Lcom/github/mikephil/charting/highlight/Highlight;
    .param p2, "bar"    # Landroid/graphics/RectF;

    .prologue
    .line 419
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget v1, p2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1, v0, v1}, Lcom/github/mikephil/charting/highlight/Highlight;->setDraw(FF)V

    .line 420
    return-void
.end method
