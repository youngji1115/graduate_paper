.class public Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;
.super Lcom/github/mikephil/charting/renderer/YAxisRenderer;
.source "YAxisRendererRadarChart.java"


# instance fields
.field private mChart:Lcom/github/mikephil/charting/charts/RadarChart;

.field private mRenderLimitLinesPathBuffer:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/charts/RadarChart;)V
    .locals 1
    .param p1, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .param p2, "yAxis"    # Lcom/github/mikephil/charting/components/YAxis;
    .param p3, "chart"    # Lcom/github/mikephil/charting/charts/RadarChart;

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/mikephil/charting/renderer/YAxisRenderer;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;Lcom/github/mikephil/charting/components/YAxis;Lcom/github/mikephil/charting/utils/Transformer;)V

    .line 178
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mRenderLimitLinesPathBuffer:Landroid/graphics/Path;

    .line 23
    iput-object p3, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    .line 24
    return-void
.end method


# virtual methods
.method protected computeAxisValues(FF)V
    .locals 30
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 29
    move/from16 v25, p1

    .line 30
    .local v25, "yMin":F
    move/from16 v24, p2

    .line 32
    .local v24, "yMax":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/github/mikephil/charting/components/AxisBase;->getLabelCount()I

    move-result v13

    .line 33
    .local v13, "labelCount":I
    sub-float v26, v24, v25

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v18, v0

    .line 35
    .local v18, "range":D
    if-eqz v13, :cond_0

    const-wide/16 v26, 0x0

    cmpg-double v26, v18, v26

    if-lez v26, :cond_0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 36
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    .line 37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/github/mikephil/charting/components/AxisBase;->mCenteredEntries:[F

    .line 38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    .line 143
    :goto_0
    return-void

    .line 43
    :cond_1
    int-to-double v0, v13

    move-wide/from16 v26, v0

    div-double v20, v18, v26

    .line 44
    .local v20, "rawInterval":D
    invoke-static/range {v20 .. v21}, Lcom/github/mikephil/charting/utils/Utils;->roundToNextSignificant(D)F

    move-result v26

    move/from16 v0, v26

    float-to-double v8, v0

    .line 48
    .local v8, "interval":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/github/mikephil/charting/components/AxisBase;->isGranularityEnabled()Z

    move-result v26

    if-eqz v26, :cond_2

    .line 49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/github/mikephil/charting/components/AxisBase;->getGranularity()F

    move-result v26

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    cmpg-double v26, v8, v26

    if-gez v26, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/github/mikephil/charting/components/AxisBase;->getGranularity()F

    move-result v26

    move/from16 v0, v26

    float-to-double v8, v0

    .line 52
    :cond_2
    const-wide/high16 v26, 0x4024000000000000L    # 10.0

    invoke-static {v8, v9}, Ljava/lang/Math;->log10(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Lcom/github/mikephil/charting/utils/Utils;->roundToNextSignificant(D)F

    move-result v26

    move/from16 v0, v26

    float-to-double v10, v0

    .line 53
    .local v10, "intervalMagnitude":D
    div-double v26, v8, v10

    move-wide/from16 v0, v26

    double-to-int v12, v0

    .line 54
    .local v12, "intervalSigDigit":I
    const/16 v26, 0x5

    move/from16 v0, v26

    if-le v12, v0, :cond_3

    .line 57
    const-wide/high16 v26, 0x4024000000000000L    # 10.0

    mul-double v26, v26, v10

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    .line 60
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/github/mikephil/charting/components/AxisBase;->isCenterAxisLabelsEnabled()Z

    move-result v2

    .line 61
    .local v2, "centeringEnabled":Z
    if-eqz v2, :cond_5

    const/16 v16, 0x1

    .line 64
    .local v16, "n":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/github/mikephil/charting/components/AxisBase;->isForceLabelsEnabled()Z

    move-result v26

    if-eqz v26, :cond_9

    .line 66
    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v26, v0

    add-int/lit8 v27, v13, -0x1

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v22, v26, v27

    .line 67
    .local v22, "step":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iput v13, v0, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v0, v13, :cond_4

    .line 71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v26, v0

    new-array v0, v13, [F

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    .line 74
    :cond_4
    move/from16 v23, p1

    .line 76
    .local v23, "v":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v13, :cond_6

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    move-object/from16 v26, v0

    aput v23, v26, v3

    .line 78
    add-float v23, v23, v22

    .line 76
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 61
    .end local v3    # "i":I
    .end local v16    # "n":I
    .end local v22    # "step":F
    .end local v23    # "v":F
    :cond_5
    const/16 v16, 0x0

    goto :goto_1

    .line 81
    .restart local v3    # "i":I
    .restart local v16    # "n":I
    .restart local v22    # "step":F
    .restart local v23    # "v":F
    :cond_6
    move/from16 v16, v13

    .line 121
    .end local v22    # "step":F
    .end local v23    # "v":F
    :cond_7
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    cmpg-double v26, v8, v26

    if-gez v26, :cond_10

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v26, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->log10(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    neg-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/github/mikephil/charting/components/AxisBase;->mDecimals:I

    .line 127
    :goto_3
    if-eqz v2, :cond_11

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mCenteredEntries:[F

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, v16

    if-ge v0, v1, :cond_8

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v26, v0

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/github/mikephil/charting/components/AxisBase;->mCenteredEntries:[F

    .line 133
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    sub-float v26, v26, v27

    const/high16 v27, 0x40000000    # 2.0f

    div-float v17, v26, v27

    .line 135
    .local v17, "offset":F
    const/4 v3, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v3, v0, :cond_11

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mCenteredEntries:[F

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    move-object/from16 v27, v0

    aget v27, v27, v3

    add-float v27, v27, v17

    aput v27, v26, v3

    .line 135
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 86
    .end local v3    # "i":I
    .end local v17    # "offset":F
    :cond_9
    const-wide/16 v26, 0x0

    cmpl-double v26, v8, v26

    if-nez v26, :cond_b

    const-wide/16 v6, 0x0

    .line 87
    .local v6, "first":D
    :goto_5
    if-eqz v2, :cond_a

    .line 88
    sub-double/2addr v6, v8

    .line 91
    :cond_a
    const-wide/16 v26, 0x0

    cmpl-double v26, v8, v26

    if-nez v26, :cond_c

    const-wide/16 v14, 0x0

    .line 96
    .local v14, "last":D
    :goto_6
    const-wide/16 v26, 0x0

    cmpl-double v26, v8, v26

    if-eqz v26, :cond_d

    .line 97
    move-wide v4, v6

    .local v4, "f":D
    :goto_7
    cmpg-double v26, v4, v14

    if-gtz v26, :cond_d

    .line 98
    add-int/lit8 v16, v16, 0x1

    .line 97
    add-double/2addr v4, v8

    goto :goto_7

    .line 86
    .end local v4    # "f":D
    .end local v6    # "first":D
    .end local v14    # "last":D
    :cond_b
    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v26, v26, v8

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    mul-double v6, v26, v8

    goto :goto_5

    .line 91
    .restart local v6    # "first":D
    :cond_c
    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v26, v26, v8

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v26

    mul-double v26, v26, v8

    invoke-static/range {v26 .. v27}, Lcom/github/mikephil/charting/utils/Utils;->nextUp(D)D

    move-result-wide v14

    goto :goto_6

    .line 102
    .restart local v14    # "last":D
    :cond_d
    add-int/lit8 v16, v16, 0x1

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v26, v0

    move/from16 v0, v16

    move-object/from16 v1, v26

    iput v0, v1, Lcom/github/mikephil/charting/components/AxisBase;->mEntryCount:I

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, v16

    if-ge v0, v1, :cond_e

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v26, v0

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    .line 111
    :cond_e
    move-wide v4, v6

    .restart local v4    # "f":D
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_8
    move/from16 v0, v16

    if-ge v3, v0, :cond_7

    .line 113
    const-wide/16 v26, 0x0

    cmpl-double v26, v4, v26

    if-nez v26, :cond_f

    .line 114
    const-wide/16 v4, 0x0

    .line 116
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    move-object/from16 v26, v0

    double-to-float v0, v4

    move/from16 v27, v0

    aput v27, v26, v3

    .line 111
    add-double/2addr v4, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 124
    .end local v4    # "f":D
    .end local v6    # "first":D
    .end local v14    # "last":D
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/github/mikephil/charting/components/AxisBase;->mDecimals:I

    goto/16 :goto_3

    .line 140
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mEntries:[F

    move-object/from16 v27, v0

    add-int/lit8 v28, v16, -0x1

    aget v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMaximum:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxis:Lcom/github/mikephil/charting/components/AxisBase;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/github/mikephil/charting/components/AxisBase;->mAxisMinimum:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/github/mikephil/charting/components/AxisBase;->mAxisRange:F

    goto/16 :goto_0
.end method

.method public renderAxisLabels(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 148
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/components/YAxis;->isDrawLabelsEnabled()Z

    move-result v8

    if-nez v8, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/components/YAxis;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 152
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/components/YAxis;->getTextSize()F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 153
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/components/YAxis;->getTextColor()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/RadarChart;->getCenterOffsets()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    .line 156
    .local v0, "center":Lcom/github/mikephil/charting/utils/MPPointF;
    invoke-static {v10, v10}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v5

    .line 157
    .local v5, "pOut":Lcom/github/mikephil/charting/utils/MPPointF;
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v1

    .line 159
    .local v1, "factor":F
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/components/YAxis;->isDrawBottomYLabelEntryEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v2, 0x0

    .line 160
    .local v2, "from":I
    :goto_1
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/components/YAxis;->isDrawTopYLabelEntryEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget v7, v8, Lcom/github/mikephil/charting/components/YAxis;->mEntryCount:I

    .line 164
    .local v7, "to":I
    :goto_2
    move v3, v2

    .local v3, "j":I
    :goto_3
    if-ge v3, v7, :cond_4

    .line 166
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget-object v8, v8, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    aget v8, v8, v3

    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget v9, v9, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    sub-float/2addr v8, v9

    mul-float v6, v8, v1

    .line 168
    .local v6, "r":F
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/RadarChart;->getRotationAngle()F

    move-result v8

    invoke-static {v0, v6, v8, v5}, Lcom/github/mikephil/charting/utils/Utils;->getPosition(Lcom/github/mikephil/charting/utils/MPPointF;FFLcom/github/mikephil/charting/utils/MPPointF;)V

    .line 170
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v8, v3}, Lcom/github/mikephil/charting/components/YAxis;->getFormattedLabel(I)Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, "label":Ljava/lang/String;
    iget v8, v5, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    const/high16 v9, 0x41200000    # 10.0f

    add-float/2addr v8, v9

    iget v9, v5, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mAxisLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 164
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 159
    .end local v2    # "from":I
    .end local v3    # "j":I
    .end local v4    # "label":Ljava/lang/String;
    .end local v6    # "r":F
    .end local v7    # "to":I
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 160
    .restart local v2    # "from":I
    :cond_3
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    iget v8, v8, Lcom/github/mikephil/charting/components/YAxis;->mEntryCount:I

    add-int/lit8 v7, v8, -0x1

    goto :goto_2

    .line 174
    .restart local v3    # "j":I
    .restart local v7    # "to":I
    :cond_4
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 175
    invoke-static {v5}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    goto/16 :goto_0
.end method

.method public renderLimitLines(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x0

    .line 182
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mYAxis:Lcom/github/mikephil/charting/components/YAxis;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/components/YAxis;->getLimitLines()Ljava/util/List;

    move-result-object v5

    .line 184
    .local v5, "limitLines":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/components/LimitLine;>;"
    if-nez v5, :cond_0

    .line 227
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v9

    .line 191
    .local v9, "sliceangle":F
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v1

    .line 193
    .local v1, "factor":F
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/RadarChart;->getCenterOffsets()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v0

    .line 194
    .local v0, "center":Lcom/github/mikephil/charting/utils/MPPointF;
    invoke-static {v11, v11}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v7

    .line 195
    .local v7, "pOut":Lcom/github/mikephil/charting/utils/MPPointF;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_4

    .line 197
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/components/LimitLine;

    .line 199
    .local v4, "l":Lcom/github/mikephil/charting/components/LimitLine;
    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/LimitLine;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 195
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 202
    :cond_1
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/LimitLine;->getLineColor()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/LimitLine;->getDashPathEffect()Landroid/graphics/DashPathEffect;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 204
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/LimitLine;->getLineWidth()F

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 206
    invoke-virtual {v4}, Lcom/github/mikephil/charting/components/LimitLine;->getLimit()F

    move-result v10

    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v11

    sub-float/2addr v10, v11

    mul-float v8, v10, v1

    .line 208
    .local v8, "r":F
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mRenderLimitLinesPathBuffer:Landroid/graphics/Path;

    .line 209
    .local v6, "limitPath":Landroid/graphics/Path;
    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 212
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v10

    check-cast v10, Lcom/github/mikephil/charting/data/RadarData;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/RadarData;->getMaxEntryCountSet()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v10

    check-cast v10, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;

    invoke-interface {v10}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getEntryCount()I

    move-result v10

    if-ge v3, v10, :cond_3

    .line 214
    int-to-float v10, v3

    mul-float/2addr v10, v9

    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/RadarChart;->getRotationAngle()F

    move-result v11

    add-float/2addr v10, v11

    invoke-static {v0, v8, v10, v7}, Lcom/github/mikephil/charting/utils/Utils;->getPosition(Lcom/github/mikephil/charting/utils/MPPointF;FFLcom/github/mikephil/charting/utils/MPPointF;)V

    .line 216
    if-nez v3, :cond_2

    .line 217
    iget v10, v7, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v11, v7, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-virtual {v6, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 212
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 219
    :cond_2
    iget v10, v7, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v11, v7, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-virtual {v6, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_4

    .line 221
    :cond_3
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 223
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/YAxisRendererRadarChart;->mLimitLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 225
    .end local v3    # "j":I
    .end local v4    # "l":Lcom/github/mikephil/charting/components/LimitLine;
    .end local v6    # "limitPath":Landroid/graphics/Path;
    .end local v8    # "r":F
    :cond_4
    invoke-static {v0}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    .line 226
    invoke-static {v7}, Lcom/github/mikephil/charting/utils/MPPointF;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointF;)V

    goto/16 :goto_0
.end method
