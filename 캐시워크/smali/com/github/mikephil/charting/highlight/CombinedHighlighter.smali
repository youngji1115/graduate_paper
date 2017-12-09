.class public Lcom/github/mikephil/charting/highlight/CombinedHighlighter;
.super Lcom/github/mikephil/charting/highlight/ChartHighlighter;
.source "CombinedHighlighter.java"

# interfaces
.implements Lcom/github/mikephil/charting/highlight/IHighlighter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/highlight/ChartHighlighter",
        "<",
        "Lcom/github/mikephil/charting/interfaces/dataprovider/CombinedDataProvider;",
        ">;",
        "Lcom/github/mikephil/charting/highlight/IHighlighter;"
    }
.end annotation


# instance fields
.field protected barHighlighter:Lcom/github/mikephil/charting/highlight/BarHighlighter;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/CombinedDataProvider;Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;)V
    .locals 1
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/dataprovider/CombinedDataProvider;
    .param p2, "barChart"    # Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/highlight/ChartHighlighter;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;)V

    .line 28
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/github/mikephil/charting/highlight/CombinedHighlighter;->barHighlighter:Lcom/github/mikephil/charting/highlight/BarHighlighter;

    .line 29
    return-void

    .line 28
    :cond_0
    new-instance v0, Lcom/github/mikephil/charting/highlight/BarHighlighter;

    invoke-direct {v0, p2}, Lcom/github/mikephil/charting/highlight/BarHighlighter;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;)V

    goto :goto_0
.end method


# virtual methods
.method protected getHighlightsAtXValue(FFF)Ljava/util/List;
    .locals 10
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
    .line 34
    iget-object v8, p0, Lcom/github/mikephil/charting/highlight/CombinedHighlighter;->mHighlightBuffer:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 36
    iget-object v8, p0, Lcom/github/mikephil/charting/highlight/CombinedHighlighter;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;

    check-cast v8, Lcom/github/mikephil/charting/interfaces/dataprovider/CombinedDataProvider;

    invoke-interface {v8}, Lcom/github/mikephil/charting/interfaces/dataprovider/CombinedDataProvider;->getCombinedData()Lcom/github/mikephil/charting/data/CombinedData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/CombinedData;->getAllData()Ljava/util/List;

    move-result-object v1

    .line 38
    .local v1, "dataObjects":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_4

    .line 40
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/ChartData;

    .line 43
    .local v0, "dataObject":Lcom/github/mikephil/charting/data/ChartData;
    iget-object v8, p0, Lcom/github/mikephil/charting/highlight/CombinedHighlighter;->barHighlighter:Lcom/github/mikephil/charting/highlight/BarHighlighter;

    if-eqz v8, :cond_1

    instance-of v8, v0, Lcom/github/mikephil/charting/data/BarData;

    if-eqz v8, :cond_1

    .line 44
    iget-object v8, p0, Lcom/github/mikephil/charting/highlight/CombinedHighlighter;->barHighlighter:Lcom/github/mikephil/charting/highlight/BarHighlighter;

    invoke-virtual {v8, p2, p3}, Lcom/github/mikephil/charting/highlight/BarHighlighter;->getHighlight(FF)Lcom/github/mikephil/charting/highlight/Highlight;

    move-result-object v4

    .line 46
    .local v4, "high":Lcom/github/mikephil/charting/highlight/Highlight;
    if-eqz v4, :cond_0

    .line 47
    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/highlight/Highlight;->setDataIndex(I)V

    .line 48
    iget-object v8, p0, Lcom/github/mikephil/charting/highlight/CombinedHighlighter;->mHighlightBuffer:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .end local v4    # "high":Lcom/github/mikephil/charting/highlight/Highlight;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 52
    :cond_1
    const/4 v7, 0x0

    .local v7, "j":I
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ChartData;->getDataSetCount()I

    move-result v3

    .local v3, "dataSetCount":I
    :goto_1
    if-ge v7, v3, :cond_0

    .line 54
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;

    invoke-virtual {v8, v7}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v2

    .line 57
    .local v2, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->isHighlightEnabled()Z

    move-result v8

    if-nez v8, :cond_3

    .line 52
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 60
    :cond_3
    sget-object v8, Lcom/github/mikephil/charting/data/DataSet$Rounding;->CLOSEST:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    invoke-virtual {p0, v2, v7, p1, v8}, Lcom/github/mikephil/charting/highlight/CombinedHighlighter;->buildHighlights(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;IFLcom/github/mikephil/charting/data/DataSet$Rounding;)Ljava/util/List;

    move-result-object v5

    .line 61
    .local v5, "highs":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/highlight/Highlight;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/highlight/Highlight;

    .line 63
    .restart local v4    # "high":Lcom/github/mikephil/charting/highlight/Highlight;
    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/highlight/Highlight;->setDataIndex(I)V

    .line 64
    iget-object v9, p0, Lcom/github/mikephil/charting/highlight/CombinedHighlighter;->mHighlightBuffer:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 70
    .end local v0    # "dataObject":Lcom/github/mikephil/charting/data/ChartData;
    .end local v2    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    .end local v3    # "dataSetCount":I
    .end local v4    # "high":Lcom/github/mikephil/charting/highlight/Highlight;
    .end local v5    # "highs":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/highlight/Highlight;>;"
    .end local v7    # "j":I
    :cond_4
    iget-object v8, p0, Lcom/github/mikephil/charting/highlight/CombinedHighlighter;->mHighlightBuffer:Ljava/util/List;

    return-object v8
.end method
