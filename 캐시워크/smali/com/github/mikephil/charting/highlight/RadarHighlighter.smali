.class public Lcom/github/mikephil/charting/highlight/RadarHighlighter;
.super Lcom/github/mikephil/charting/highlight/PieRadarHighlighter;
.source "RadarHighlighter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/highlight/PieRadarHighlighter",
        "<",
        "Lcom/github/mikephil/charting/charts/RadarChart;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/RadarChart;)V
    .locals 0
    .param p1, "chart"    # Lcom/github/mikephil/charting/charts/RadarChart;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/highlight/PieRadarHighlighter;-><init>(Lcom/github/mikephil/charting/charts/PieRadarChartBase;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected getClosestHighlight(IFF)Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 9
    .param p1, "index"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/highlight/RadarHighlighter;->getHighlightsAtIndex(I)Ljava/util/List;

    move-result-object v5

    .line 25
    .local v5, "highlights":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/highlight/Highlight;>;"
    iget-object v7, p0, Lcom/github/mikephil/charting/highlight/RadarHighlighter;->mChart:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v7, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v7, p2, p3}, Lcom/github/mikephil/charting/charts/RadarChart;->distanceToCenter(FF)F

    move-result v8

    iget-object v7, p0, Lcom/github/mikephil/charting/highlight/RadarHighlighter;->mChart:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v7, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v7}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v7

    div-float v3, v8, v7

    .line 27
    .local v3, "distanceToCenter":F
    const/4 v1, 0x0

    .line 28
    .local v1, "closest":Lcom/github/mikephil/charting/highlight/Highlight;
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 30
    .local v2, "distance":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 32
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/highlight/Highlight;

    .line 34
    .local v4, "high":Lcom/github/mikephil/charting/highlight/Highlight;
    invoke-virtual {v4}, Lcom/github/mikephil/charting/highlight/Highlight;->getY()F

    move-result v7

    sub-float/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 35
    .local v0, "cdistance":F
    cmpg-float v7, v0, v2

    if-gez v7, :cond_0

    .line 36
    move-object v1, v4

    .line 37
    move v2, v0

    .line 30
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 41
    .end local v0    # "cdistance":F
    .end local v4    # "high":Lcom/github/mikephil/charting/highlight/Highlight;
    :cond_1
    return-object v1
.end method

.method protected getHighlightsAtIndex(I)Ljava/util/List;
    .locals 17
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/highlight/Highlight;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/highlight/RadarHighlighter;->mHighlightBuffer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 56
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/highlight/RadarHighlighter;->mChart:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v1, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getAnimator()Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v12

    .line 57
    .local v12, "phaseX":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/highlight/RadarHighlighter;->mChart:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v1, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getAnimator()Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v13

    .line 58
    .local v13, "phaseY":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/highlight/RadarHighlighter;->mChart:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v1, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v14

    .line 59
    .local v14, "sliceangle":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/highlight/RadarHighlighter;->mChart:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v1, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v10

    .line 61
    .local v10, "factor":F
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/github/mikephil/charting/utils/MPPointF;->getInstance(FF)Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v11

    .line 62
    .local v11, "pOut":Lcom/github/mikephil/charting/utils/MPPointF;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/highlight/RadarHighlighter;->mChart:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v1, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/RadarData;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/RadarData;->getDataSetCount()I

    move-result v1

    if-ge v6, v1, :cond_0

    .line 64
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/highlight/RadarHighlighter;->mChart:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v1, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/RadarData;

    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/data/RadarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v8

    .line 66
    .local v8, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;, "Lcom/github/mikephil/charting/interfaces/datasets/IDataSet<*>;"
    move/from16 v0, p1

    invoke-interface {v8, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v9

    .line 68
    .local v9, "entry":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/highlight/RadarHighlighter;->mChart:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v1, Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v1

    sub-float v15, v2, v1

    .line 70
    .local v15, "y":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/highlight/RadarHighlighter;->mChart:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v1, Lcom/github/mikephil/charting/charts/RadarChart;

    .line 71
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getCenterOffsets()Lcom/github/mikephil/charting/utils/MPPointF;

    move-result-object v2

    mul-float v1, v15, v10

    mul-float v3, v1, v13

    move/from16 v0, p1

    int-to-float v1, v0

    mul-float/2addr v1, v14

    mul-float v4, v1, v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/highlight/RadarHighlighter;->mChart:Lcom/github/mikephil/charting/charts/PieRadarChartBase;

    check-cast v1, Lcom/github/mikephil/charting/charts/RadarChart;

    .line 72
    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getRotationAngle()F

    move-result v1

    add-float/2addr v1, v4

    .line 70
    invoke-static {v2, v3, v1, v11}, Lcom/github/mikephil/charting/utils/Utils;->getPosition(Lcom/github/mikephil/charting/utils/MPPointF;FFLcom/github/mikephil/charting/utils/MPPointF;)V

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/highlight/RadarHighlighter;->mHighlightBuffer:Ljava/util/List;

    move-object/from16 v16, v0

    new-instance v1, Lcom/github/mikephil/charting/highlight/Highlight;

    move/from16 v0, p1

    int-to-float v2, v0

    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v3

    iget v4, v11, Lcom/github/mikephil/charting/utils/MPPointF;->x:F

    iget v5, v11, Lcom/github/mikephil/charting/utils/MPPointF;->y:F

    invoke-interface {v8}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(FFFFILcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 77
    .end local v8    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;, "Lcom/github/mikephil/charting/interfaces/datasets/IDataSet<*>;"
    .end local v9    # "entry":Lcom/github/mikephil/charting/data/Entry;
    .end local v15    # "y":F
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/highlight/RadarHighlighter;->mHighlightBuffer:Ljava/util/List;

    return-object v1
.end method
