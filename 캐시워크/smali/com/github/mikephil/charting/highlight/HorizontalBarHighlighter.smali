.class public Lcom/github/mikephil/charting/highlight/HorizontalBarHighlighter;
.super Lcom/github/mikephil/charting/highlight/BarHighlighter;
.source "HorizontalBarHighlighter.java"


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;)V
    .locals 0
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/highlight/BarHighlighter;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;)V

    .line 21
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
    .line 51
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v14, "highlights":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/highlight/Highlight;>;"
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntriesForXValue(F)Ljava/util/List;

    move-result-object v13

    .line 55
    .local v13, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 57
    const/high16 v4, 0x7fc00000    # NaNf

    move-object/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v4, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntryForXValue(FFLcom/github/mikephil/charting/data/DataSet$Rounding;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v11

    .line 58
    .local v11, "closest":Lcom/github/mikephil/charting/data/Entry;
    if-eqz v11, :cond_0

    .line 61
    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getEntriesForXValue(F)Ljava/util/List;

    move-result-object v13

    .line 65
    .end local v11    # "closest":Lcom/github/mikephil/charting/data/Entry;
    :cond_0
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 78
    :cond_1
    return-object v14

    .line 68
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

    .line 69
    .local v12, "e":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/highlight/HorizontalBarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;

    check-cast v4, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    .line 70
    invoke-interface/range {p1 .. p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v5

    .line 69
    invoke-interface {v4, v5}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v4

    .line 70
    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v5

    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/github/mikephil/charting/utils/Transformer;->getPixelForValues(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v15

    .line 72
    .local v15, "pixels":Lcom/github/mikephil/charting/utils/MPPointD;
    new-instance v4, Lcom/github/mikephil/charting/highlight/Highlight;

    .line 73
    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v5

    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v6

    iget-wide v8, v15, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float v7, v8

    iget-wide v8, v15, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float v8, v8

    .line 75
    invoke-interface/range {p1 .. p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v10

    move/from16 v9, p2

    invoke-direct/range {v4 .. v10}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(FFFFILcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 72
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected getDistance(FFFF)F
    .locals 1
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    .line 83
    sub-float v0, p2, p4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getHighlight(FF)Lcom/github/mikephil/charting/highlight/Highlight;
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 26
    iget-object v4, p0, Lcom/github/mikephil/charting/highlight/HorizontalBarHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;

    check-cast v4, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    .line 28
    .local v0, "barData":Lcom/github/mikephil/charting/data/BarData;
    invoke-virtual {p0, p2, p1}, Lcom/github/mikephil/charting/highlight/HorizontalBarHighlighter;->getValsForTouch(FF)Lcom/github/mikephil/charting/utils/MPPointD;

    move-result-object v2

    .line 30
    .local v2, "pos":Lcom/github/mikephil/charting/utils/MPPointD;
    iget-wide v4, v2, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float v4, v4

    invoke-virtual {p0, v4, p2, p1}, Lcom/github/mikephil/charting/highlight/HorizontalBarHighlighter;->getHighlightForX(FFF)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object v1

    .line 31
    .local v1, "high":Lcom/github/mikephil/charting/highlight/Highlight;
    if-nez v1, :cond_0

    .line 32
    const/4 v1, 0x0

    .line 45
    .end local v1    # "high":Lcom/github/mikephil/charting/highlight/Highlight;
    :goto_0
    return-object v1

    .line 34
    .restart local v1    # "high":Lcom/github/mikephil/charting/highlight/Highlight;
    :cond_0
    invoke-virtual {v1}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 35
    .local v3, "set":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isStacked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 37
    iget-wide v4, v2, Lcom/github/mikephil/charting/utils/MPPointD;->y:D

    double-to-float v4, v4

    iget-wide v6, v2, Lcom/github/mikephil/charting/utils/MPPointD;->x:D

    double-to-float v5, v6

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/github/mikephil/charting/highlight/HorizontalBarHighlighter;->getStackedHighlight(Lcom/github/mikephil/charting/highlight/Highlight;Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;FF)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object v1

    goto :goto_0

    .line 43
    :cond_1
    invoke-static {v2}, Lcom/github/mikephil/charting/utils/MPPointD;->recycleInstance(Lcom/github/mikephil/charting/utils/MPPointD;)V

    goto :goto_0
.end method
