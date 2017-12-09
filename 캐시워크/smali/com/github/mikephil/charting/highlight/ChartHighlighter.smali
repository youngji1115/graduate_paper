.class public Lcom/github/mikephil/charting/highlight/ChartHighlighter;
.super Ljava/lang/Object;
.source "ChartHighlighter.java"

# interfaces
.implements Lcom/github/mikephil/charting/highlight/IHighlighter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/github/mikephil/charting/highlight/IHighlighter;"
    }
.end annotation


# instance fields
.field protected mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mHighlightBuffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/highlight/Highlight;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/github/mikephil/charting/highlight/ChartHighlighter;, "Lcom/github/mikephil/charting/highlight/ChartHighlighter<TT;>;"
    .local p1, "chart":Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->mHighlightBuffer:Ljava/util/List;

    .line 31
    iput-object p1, p0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;

    .line 32
    return-void
.end method


# virtual methods
.method protected buildHighlights(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;IFLcom/github/mikephil/charting/data/DataSet$Rounding;)Ljava/util/List;
    .locals 17
    .param p1, "set"    # Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    .param p2, "dataSetIndex"    # I
    .param p3, "xVal"    # F
    .param p4, "rounding"    # Lcom/github/mikephil/charting/data/DataSet$Rounding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;",
            "IF",
            "Lcom/github/mikephil/charting/data/DataSet$Rounding;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/highlight/Highlight;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Lcom/github/mikephil/charting/highlight/ChartHighlighter;, "Lcom/github/mikephil/charting/highlight/ChartHighlighter<TT;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v14, "highlights":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/highlight/Highlight;>;"
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntriesForXValue(F)Ljava/util/List;

    move-result-object v13

    .line 166
    .local v13, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 168
    const/high16 v4, 0x7fc00000    # NaNf

    move-object/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v4, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForXValue(FFLcom/github/mikephil/charting/data/DataSet$Rounding;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v11

    .line 169
    .local v11, "closest":Lcom/github/mikephil/charting/data/Entry;
    if-eqz v11, :cond_0

    .line 172
    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntriesForXValue(F)Ljava/util/List;

    move-result-object v13

    .line 176
    .end local v11    # "closest":Lcom/github/mikephil/charting/data/Entry;
    :cond_0
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 189
    :cond_1
    return-object v14

    .line 179
    :cond_2
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/github/mikephil/charting/data/Entry;

    .line 180
    .local v12, "e":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;

    .line 181
    invoke-interface/range {p1 .. p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v5

    .line 180
    invoke-interface {v4, v5}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v4

    .line 181
    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v5

    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/github/mikephil/charting/utils/Transformer;->getPixelForValues(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v15

    .line 183
    .local v15, "pixels":Lcom/github/mikephil/charting/utils/MPPointD;
    new-instance v4, Lcom/github/mikephil/charting/highlight/Highlight;

    .line 184
    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v5

    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v6

    iget-wide v8, v15, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float v7, v8

    iget-wide v8, v15, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float v8, v8

    .line 186
    invoke-interface/range {p1 .. p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v10

    move/from16 v9, p2

    invoke-direct/range {v4 .. v10}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(FFFFILcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 183
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getClosestHighlightByPixel(Ljava/util/List;FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;F)Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 7
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    .param p5, "minSelectionDistance"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/highlight/Highlight;",
            ">;FF",
            "Lcom/github/mikephil/charting/components/YAxis$AxisDependency;",
            "F)",
            "Lcom/github/mikephil/charting/highlight/Highlight;"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, "this":Lcom/github/mikephil/charting/highlight/ChartHighlighter;, "Lcom/github/mikephil/charting/highlight/ChartHighlighter<TT;>;"
    .local p1, "closestValues":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/highlight/Highlight;>;"
    const/4 v1, 0x0

    .line 208
    .local v1, "closest":Lcom/github/mikephil/charting/highlight/Highlight;
    move v2, p5

    .line 210
    .local v2, "distance":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 212
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/highlight/Highlight;

    .line 214
    .local v3, "high":Lcom/github/mikephil/charting/highlight/Highlight;
    if-eqz p4, :cond_0

    invoke-virtual {v3}, Lcom/github/mikephil/charting/highlight/Highlight;->getAxis()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v5

    if-ne v5, p4, :cond_1

    .line 216
    :cond_0
    invoke-virtual {v3}, Lcom/github/mikephil/charting/highlight/Highlight;->getXPx()F

    move-result v5

    invoke-virtual {v3}, Lcom/github/mikephil/charting/highlight/Highlight;->getYPx()F

    move-result v6

    invoke-virtual {p0, p2, p3, v5, v6}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->getDistance(FFFF)F

    move-result v0

    .line 218
    .local v0, "cDistance":F
    cmpg-float v5, v0, v2

    if-gez v5, :cond_1

    .line 219
    move-object v1, v3

    .line 220
    move v2, v0

    .line 210
    .end local v0    # "cDistance":F
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 225
    .end local v3    # "high":Lcom/github/mikephil/charting/highlight/Highlight;
    :cond_2
    return-object v1
.end method

.method protected getData()Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;
    .locals 1

    .prologue
    .line 244
    .local p0, "this":Lcom/github/mikephil/charting/highlight/ChartHighlighter;, "Lcom/github/mikephil/charting/highlight/ChartHighlighter<TT;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;->getData()Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    move-result-object v0

    return-object v0
.end method

.method protected getDistance(FFFF)F
    .locals 4
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    .line 240
    .local p0, "this":Lcom/github/mikephil/charting/highlight/ChartHighlighter;, "Lcom/github/mikephil/charting/highlight/ChartHighlighter<TT;>;"
    sub-float v0, p1, p3

    float-to-double v0, v0

    sub-float v2, p2, p4

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getHighlight(FF)Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 37
    .local p0, "this":Lcom/github/mikephil/charting/highlight/ChartHighlighter;, "Lcom/github/mikephil/charting/highlight/ChartHighlighter<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->getValsForTouch(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v1

    .line 38
    .local v1, "pos":Lcom/github/mikephil/charting/utils/MPPointD;
    iget-wide v4, v1, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float v2, v4

    .line 39
    .local v2, "xVal":F
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    .line 41
    invoke-virtual {p0, v2, p1, p2}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->getHighlightForX(FFF)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object v0

    .line 42
    .local v0, "high":Lcom/github/mikephil/charting/highlight/Highlight;
    return-object v0
.end method

.method protected getHighlightForX(FFF)Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 9
    .param p1, "xVal"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 70
    .local p0, "this":Lcom/github/mikephil/charting/highlight/ChartHighlighter;, "Lcom/github/mikephil/charting/highlight/ChartHighlighter<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->getHighlightsAtXValue(FFF)Ljava/util/List;

    move-result-object v1

    .line 72
    .local v1, "closestValues":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/highlight/Highlight;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const/4 v6, 0x0

    .line 83
    :goto_0
    return-object v6

    .line 76
    :cond_0
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v1, p3, v0}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->getMinimumDistance(Ljava/util/List;FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v7

    .line 77
    .local v7, "leftAxisMinDist":F
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {p0, v1, p3, v0}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->getMinimumDistance(Ljava/util/List;FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)F

    move-result v8

    .line 79
    .local v8, "rightAxisMinDist":F
    cmpg-float v0, v7, v8

    if-gez v0, :cond_1

    sget-object v4, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 81
    .local v4, "axis":Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    :goto_1
    iget-object v0, p0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;->getMaxHighlightDistance()F

    move-result v5

    move-object v0, p0

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->getClosestHighlightByPixel(Ljava/util/List;FFLcom/github/mikephil/charting/components/YAxis$AxisDependency;F)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object v6

    .line 83
    .local v6, "detail":Lcom/github/mikephil/charting/highlight/Highlight;
    goto :goto_0

    .line 79
    .end local v4    # "axis":Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    .end local v6    # "detail":Lcom/github/mikephil/charting/highlight/Highlight;
    :cond_1
    sget-object v4, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->RIGHT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    goto :goto_1
.end method

.method protected getHighlightPos(Lcom/github/mikephil/charting/highlight/Highlight;)F
    .locals 1
    .param p1, "h"    # Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 116
    .local p0, "this":Lcom/github/mikephil/charting/highlight/ChartHighlighter;, "Lcom/github/mikephil/charting/highlight/ChartHighlighter<TT;>;"
    invoke-virtual {p1}, Lcom/github/mikephil/charting/highlight/Highlight;->getYPx()F

    move-result v0

    return v0
.end method

.method protected getHighlightsAtXValue(FFF)Ljava/util/List;
    .locals 6
    .param p1, "xVal"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF)",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/highlight/Highlight;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lcom/github/mikephil/charting/highlight/ChartHighlighter;, "Lcom/github/mikephil/charting/highlight/ChartHighlighter<TT;>;"
    iget-object v4, p0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->mHighlightBuffer:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 132
    invoke-virtual {p0}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->getData()Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    move-result-object v0

    .line 134
    .local v0, "data":Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;
    if-nez v0, :cond_0

    .line 135
    iget-object v4, p0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->mHighlightBuffer:Ljava/util/List;

    .line 148
    :goto_0
    return-object v4

    .line 137
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getDataSetCount()I

    move-result v2

    .local v2, "dataSetCount":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 139
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v1

    .line 142
    .local v1, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isHighlightEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 137
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 145
    :cond_1
    iget-object v4, p0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->mHighlightBuffer:Ljava/util/List;

    sget-object v5, Lcom/github/mikephil/charting/data/DataSet$Rounding;->CLOSEST:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    invoke-virtual {p0, v1, v3, p1, v5}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->buildHighlights(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;IFLcom/github/mikephil/charting/data/DataSet$Rounding;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 148
    .end local v1    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    :cond_2
    iget-object v4, p0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->mHighlightBuffer:Ljava/util/List;

    goto :goto_0
.end method

.method protected getMinimumDistance(Ljava/util/List;FLcom/github/mikephil/charting/components/YAxis$AxisDependency;)F
    .locals 5
    .param p2, "pos"    # F
    .param p3, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/highlight/Highlight;",
            ">;F",
            "Lcom/github/mikephil/charting/components/YAxis$AxisDependency;",
            ")F"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/github/mikephil/charting/highlight/ChartHighlighter;, "Lcom/github/mikephil/charting/highlight/ChartHighlighter<TT;>;"
    .local p1, "closestValues":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/highlight/Highlight;>;"
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 99
    .local v0, "distance":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 101
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/highlight/Highlight;

    .line 103
    .local v1, "high":Lcom/github/mikephil/charting/highlight/Highlight;
    invoke-virtual {v1}, Lcom/github/mikephil/charting/highlight/Highlight;->getAxis()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v4

    if-ne v4, p3, :cond_0

    .line 105
    invoke-virtual {p0, v1}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->getHighlightPos(Lcom/github/mikephil/charting/highlight/Highlight;)F

    move-result v4

    sub-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 106
    .local v3, "tempDistance":F
    cmpg-float v4, v3, v0

    if-gez v4, :cond_0

    .line 107
    move v0, v3

    .line 99
    .end local v3    # "tempDistance":F
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    .end local v1    # "high":Lcom/github/mikephil/charting/highlight/Highlight;
    :cond_1
    return v0
.end method

.method protected getValsForTouch(FF)Lcom/github/mikephil/charting/utils/MPPointD;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 56
    .local p0, "this":Lcom/github/mikephil/charting/highlight/ChartHighlighter;, "Lcom/github/mikephil/charting/highlight/ChartHighlighter<TT;>;"
    iget-object v1, p0, Lcom/github/mikephil/charting/highlight/ChartHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;

    sget-object v2, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/github/mikephil/charting/utils/Transformer;->getValuesByTouchPoint(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v0

    .line 57
    .local v0, "pos":Lcom/github/mikephil/charting/utils/MPPointD;
    return-object v0
.end method
