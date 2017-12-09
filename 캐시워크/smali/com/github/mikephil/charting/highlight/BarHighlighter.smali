.class public Lcom/github/mikephil/charting/highlight/BarHighlighter;
.super Lcom/github/mikephil/charting/highlight/ChartHighlighter;
.source "BarHighlighter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/highlight/ChartHighlighter",
        "<",
        "Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;)V
    .locals 0
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected getClosestStackIndex([Lcom/github/mikephil/charting/highlight/Range;F)I
    .locals 7
    .param p1, "ranges"    # [Lcom/github/mikephil/charting/highlight/Range;
    .param p2, "value"    # F

    .prologue
    const/4 v3, 0x0

    .line 103
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 117
    :cond_1
    :goto_0
    return v2

    .line 106
    :cond_2
    const/4 v2, 0x0

    .line 108
    .local v2, "stackIndex":I
    array-length v5, p1

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v1, p1, v4

    .line 109
    .local v1, "range":Lcom/github/mikephil/charting/highlight/Range;
    invoke-virtual {v1, p2}, Lcom/github/mikephil/charting/highlight/Range;->contains(F)Z

    move-result v6

    if-nez v6, :cond_1

    .line 112
    add-int/lit8 v2, v2, 0x1

    .line 108
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 115
    .end local v1    # "range":Lcom/github/mikephil/charting/highlight/Range;
    :cond_3
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 117
    .local v0, "length":I
    aget-object v4, p1, v0

    iget v4, v4, Lcom/github/mikephil/charting/highlight/Range;->to:F

    cmpl-float v4, p2, v4

    if-lez v4, :cond_4

    .end local v0    # "length":I
    :goto_2
    move v2, v0

    goto :goto_0

    .restart local v0    # "length":I
    :cond_4
    move v0, v3

    goto :goto_2
.end method

.method protected getData()Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/github/mikephil/charting/highlight/BarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;

    check-cast v0, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    return-object v0
.end method

.method protected getDistance(FFFF)F
    .locals 1
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    .line 156
    sub-float v0, p1, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getHighlight(FF)Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 21
    invoke-super {p0, p1, p2}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->getHighlight(FF)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object v1

    .line 23
    .local v1, "high":Lcom/github/mikephil/charting/highlight/Highlight;
    if-nez v1, :cond_0

    .line 24
    const/4 v1, 0x0

    .line 42
    .end local v1    # "high":Lcom/github/mikephil/charting/highlight/Highlight;
    :goto_0
    return-object v1

    .line 27
    .restart local v1    # "high":Lcom/github/mikephil/charting/highlight/Highlight;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/highlight/BarHighlighter;->getValsForTouch(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v2

    .line 29
    .local v2, "pos":Lcom/github/mikephil/charting/utils/MPPointD;
    iget-object v4, p0, Lcom/github/mikephil/charting/highlight/BarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;

    check-cast v4, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    .line 31
    .local v0, "barData":Lcom/github/mikephil/charting/data/BarData;
    invoke-virtual {v1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 32
    .local v3, "set":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isStacked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 34
    iget-wide v4, v2, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float v4, v4

    iget-wide v6, v2, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float v5, v6

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/github/mikephil/charting/highlight/BarHighlighter;->getStackedHighlight(Lcom/github/mikephil/charting/highlight/Highlight;Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;FF)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object v1

    goto :goto_0

    .line 40
    :cond_1
    invoke-static {v2}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    goto :goto_0
.end method

.method public getStackedHighlight(Lcom/github/mikephil/charting/highlight/Highlight;Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;FF)Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 11
    .param p1, "high"    # Lcom/github/mikephil/charting/highlight/Highlight;
    .param p2, "set"    # Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    .param p3, "xVal"    # F
    .param p4, "yVal"    # F

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-interface {p2, p3, p4}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForXValue(FF)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/BarEntry;

    .line 59
    .local v8, "entry":Lcom/github/mikephil/charting/data/BarEntry;
    if-nez v8, :cond_1

    move-object p1, v0

    .line 89
    .end local p1    # "high":Lcom/github/mikephil/charting/highlight/Highlight;
    :cond_0
    :goto_0
    return-object p1

    .line 63
    .restart local p1    # "high":Lcom/github/mikephil/charting/highlight/Highlight;
    :cond_1
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BarEntry;->getYVals()[F

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BarEntry;->getRanges()[Lcom/github/mikephil/charting/highlight/Range;

    move-result-object v10

    .line 68
    .local v10, "ranges":[Lcom/github/mikephil/charting/highlight/Range;
    array-length v1, v10

    if-lez v1, :cond_2

    .line 69
    invoke-virtual {p0, v10, p4}, Lcom/github/mikephil/charting/highlight/BarHighlighter;->getClosestStackIndex([Lcom/github/mikephil/charting/highlight/Range;F)I

    move-result v6

    .line 71
    .local v6, "stackIndex":I
    iget-object v1, p0, Lcom/github/mikephil/charting/highlight/BarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;

    check-cast v1, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getX()F

    move-result v2

    aget-object v3, v10, v6

    iget v3, v3, Lcom/github/mikephil/charting/highlight/Range;->to:F

    invoke-virtual {v1, v2, v3}, Lcom/github/mikephil/charting/utils/Transformer;->getPixelForValues(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v9

    .line 73
    .local v9, "pixels":Lcom/github/mikephil/charting/utils/MPPointD;
    new-instance v0, Lcom/github/mikephil/charting/highlight/Highlight;

    .line 74
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BarEntry;->getX()F

    move-result v1

    .line 75
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v2

    iget-wide v4, v9, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float v3, v4

    iget-wide v4, v9, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float v4, v4

    .line 78
    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v5

    .line 80
    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getAxis()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(FFFFIILcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 83
    .local v0, "stackedHigh":Lcom/github/mikephil/charting/highlight/Highlight;
    invoke-static {v9}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    move-object p1, v0

    .line 85
    goto :goto_0

    .end local v0    # "stackedHigh":Lcom/github/mikephil/charting/highlight/Highlight;
    .end local v6    # "stackIndex":I
    .end local v9    # "pixels":Lcom/github/mikephil/charting/utils/MPPointD;
    :cond_2
    move-object p1, v0

    .line 89
    goto :goto_0
.end method
