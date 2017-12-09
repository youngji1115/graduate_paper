.class public abstract Lcom/github/mikephil/charting/renderer/AxisRenderer;
.super Lcom/github/mikephil/charting/renderer/Renderer;
.source "AxisRenderer.java"


# instance fields
.field protected mAxis:Lcom/github/mikephil/charting/components/AxisBase;

.field protected mAxisLabelPaint:Landroid/graphics/Paint;

.field protected mAxisLinePaint:Landroid/graphics/Paint;

.field protected mGridPaint:Landroid/graphics/Paint;

.field protected mLimitLinePaint:Landroid/graphics/Paint;

.field protected mTrans:Lcom/github/mikephil/charting/utils/Transformer;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/components/AxisBase;)V
    .locals 4
    .param p1, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .param p2, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;
    .param p3, "axis"    # Lcom/github/mikephil/charting/components/AxisBase;

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 49
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/renderer/Renderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 51
    iput-object p2, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    .line 52
    iput-object p3, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    .line 54
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mGridPaint:Landroid/graphics/Paint;

    .line 59
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mGridPaint:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mGridPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 61
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mGridPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mGridPaint:Landroid/graphics/Paint;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    .line 65
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    .line 70
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mLimitLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public computeAxis(FFZ)V
    .locals 5
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "inverted"    # Z

    .prologue
    .line 122
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentWidth()F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isFullyZoomedOutY()Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v0

    .line 125
    .local v0, "p1":Lcom/github/mikephil/charting/utils/MPPointD;
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v3

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v1

    .line 127
    .local v1, "p2":Lcom/github/mikephil/charting/utils/MPPointD;
    if-nez p3, :cond_1

    .line 129
    iget-wide v2, v1, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float p1, v2

    .line 130
    iget-wide v2, v0, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float p2, v2

    .line 137
    :goto_0
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    .line 138
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    .line 141
    .end local v0    # "p1":Lcom/github/mikephil/charting/utils/MPPointD;
    .end local v1    # "p2":Lcom/github/mikephil/charting/utils/MPPointD;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/renderer/AxisRenderer;->computeAxisValues(FF)V

    .line 142
    return-void

    .line 133
    .restart local v0    # "p1":Lcom/github/mikephil/charting/utils/MPPointD;
    .restart local v1    # "p2":Lcom/github/mikephil/charting/utils/MPPointD;
    :cond_1
    iget-wide v2, v0, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float p1, v2

    .line 134
    iget-wide v2, v1, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float p2, v2

    goto :goto_0
.end method

.method protected computeAxisValues(FF)V
    .locals 28
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 151
    move/from16 v23, p1

    .line 152
    .local v23, "yMin":F
    move/from16 v22, p2

    .line 154
    .local v22, "yMax":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/components/AxisBase;->getLabelCount()I

    move-result v12

    .line 155
    .local v12, "labelCount":I
    sub-float v24, v22, v23

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v24

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v18, v0

    .line 157
    .local v18, "range":D
    if-eqz v12, :cond_0

    const-wide/16 v24, 0x0

    cmpg-double v24, v18, v24

    if-lez v24, :cond_0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 158
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/github/mikephil/charting/components/AxisBase;->mCenteredEntries:[F

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    .line 258
    :cond_1
    return-void

    .line 165
    :cond_2
    int-to-double v0, v12

    move-wide/from16 v24, v0

    div-double v20, v18, v24

    .line 166
    .local v20, "rawInterval":D
    invoke-static/range {v20 .. v21}, Lcom/github/mikephil/charting/utils/Utils;->roundToNextSignificant(D)F

    move-result v24

    move/from16 v0, v24

    float-to-double v8, v0

    .line 170
    .local v8, "interval":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/components/AxisBase;->isGranularityEnabled()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/components/AxisBase;->getGranularity()F

    move-result v24

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    cmpg-double v24, v8, v24

    if-gez v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/components/AxisBase;->getGranularity()F

    move-result v24

    move/from16 v0, v24

    float-to-double v8, v0

    .line 174
    :cond_3
    const-wide/high16 v24, 0x4024000000000000L    # 10.0

    invoke-static {v8, v9}, Ljava/lang/Math;->log10(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Lcom/github/mikephil/charting/utils/Utils;->roundToNextSignificant(D)F

    move-result v24

    move/from16 v0, v24

    float-to-double v10, v0

    .line 175
    .local v10, "intervalMagnitude":D
    div-double v24, v8, v10

    move-wide/from16 v0, v24

    double-to-int v7, v0

    .line 176
    .local v7, "intervalSigDigit":I
    const/16 v24, 0x5

    move/from16 v0, v24

    if-le v7, v0, :cond_4

    .line 179
    const-wide/high16 v24, 0x4024000000000000L    # 10.0

    mul-double v24, v24, v10

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    .line 182
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/components/AxisBase;->isCenterAxisLabelsEnabled()Z

    move-result v24

    if-eqz v24, :cond_6

    const/4 v13, 0x1

    .line 185
    .local v13, "n":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/components/AxisBase;->isForceLabelsEnabled()Z

    move-result v24

    if-eqz v24, :cond_a

    .line 187
    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v24, v0

    add-int/lit8 v25, v12, -0x1

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v8, v0

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput v12, v0, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v0, v12, :cond_5

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v24, v0

    new-array v0, v12, [F

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    .line 195
    :cond_5
    move/from16 v17, p1

    .line 197
    .local v17, "v":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v12, :cond_7

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    move-object/from16 v24, v0

    aput v17, v24, v6

    .line 199
    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v24, v0

    add-double v24, v24, v8

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v17, v0

    .line 197
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 182
    .end local v6    # "i":I
    .end local v13    # "n":I
    .end local v17    # "v":F
    :cond_6
    const/4 v13, 0x0

    goto :goto_0

    .line 202
    .restart local v6    # "i":I
    .restart local v13    # "n":I
    .restart local v17    # "v":F
    :cond_7
    move v13, v12

    .line 240
    .end local v17    # "v":F
    :cond_8
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    cmpg-double v24, v8, v24

    if-gez v24, :cond_11

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v24, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->log10(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    neg-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/github/mikephil/charting/components/AxisBase;->mDecimals:I

    .line 246
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/components/AxisBase;->isCenterAxisLabelsEnabled()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mCenteredEntries:[F

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v0, v13, :cond_9

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v24, v0

    new-array v0, v13, [F

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/github/mikephil/charting/components/AxisBase;->mCenteredEntries:[F

    .line 252
    :cond_9
    double-to-float v0, v8

    move/from16 v24, v0

    const/high16 v25, 0x40000000    # 2.0f

    div-float v16, v24, v25

    .line 254
    .local v16, "offset":F
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v13, :cond_1

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mCenteredEntries:[F

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    move-object/from16 v25, v0

    aget v25, v25, v6

    add-float v25, v25, v16

    aput v25, v24, v6

    .line 254
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 207
    .end local v6    # "i":I
    .end local v16    # "offset":F
    :cond_a
    const-wide/16 v24, 0x0

    cmpl-double v24, v8, v24

    if-nez v24, :cond_c

    const-wide/16 v4, 0x0

    .line 208
    .local v4, "first":D
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/components/AxisBase;->isCenterAxisLabelsEnabled()Z

    move-result v24

    if-eqz v24, :cond_b

    .line 209
    sub-double/2addr v4, v8

    .line 212
    :cond_b
    const-wide/16 v24, 0x0

    cmpl-double v24, v8, v24

    if-nez v24, :cond_d

    const-wide/16 v14, 0x0

    .line 217
    .local v14, "last":D
    :goto_5
    const-wide/16 v24, 0x0

    cmpl-double v24, v8, v24

    if-eqz v24, :cond_e

    .line 218
    move-wide v2, v4

    .local v2, "f":D
    :goto_6
    cmpg-double v24, v2, v14

    if-gtz v24, :cond_e

    .line 219
    add-int/lit8 v13, v13, 0x1

    .line 218
    add-double/2addr v2, v8

    goto :goto_6

    .line 207
    .end local v2    # "f":D
    .end local v4    # "first":D
    .end local v14    # "last":D
    :cond_c
    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v24, v24, v8

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v24

    mul-double v4, v24, v8

    goto :goto_4

    .line 212
    .restart local v4    # "first":D
    :cond_d
    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v24, v24, v8

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v24

    mul-double v24, v24, v8

    invoke-static/range {v24 .. v25}, Lcom/github/mikephil/charting/utils/Utils;->nextUp(D)D

    move-result-wide v14

    goto :goto_5

    .line 223
    .restart local v14    # "last":D
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput v13, v0, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v0, v13, :cond_f

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v24, v0

    new-array v0, v13, [F

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    .line 230
    :cond_f
    move-wide v2, v4

    .restart local v2    # "f":D
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_7
    if-ge v6, v13, :cond_8

    .line 232
    const-wide/16 v24, 0x0

    cmpl-double v24, v2, v24

    if-nez v24, :cond_10

    .line 233
    const-wide/16 v2, 0x0

    .line 235
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    move-object/from16 v24, v0

    double-to-float v0, v2

    move/from16 v25, v0

    aput v25, v24, v6

    .line 230
    add-double/2addr v2, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 243
    .end local v2    # "f":D
    .end local v4    # "first":D
    .end local v14    # "last":D
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/github/mikephil/charting/components/AxisBase;->mDecimals:I

    goto/16 :goto_2
.end method

.method public getPaintAxisLabels()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLabelPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPaintAxisLine()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mAxisLinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPaintGrid()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mGridPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTransformer()Lcom/github/mikephil/charting/utils/Transformer;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/AxisRenderer;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    return-object v0
.end method

.method public abstract renderAxisLabels(Landroid/graphics/Canvas;)V
.end method

.method public abstract renderAxisLine(Landroid/graphics/Canvas;)V
.end method

.method public abstract renderGridLines(Landroid/graphics/Canvas;)V
.end method

.method public abstract renderLimitLines(Landroid/graphics/Canvas;)V
.end method
