.class public Lcom/github/mikephil/charting/formatter/DefaultFillFormatter;
.super Ljava/lang/Object;
.source "DefaultFillFormatter.java"

# interfaces
.implements Lcom/github/mikephil/charting/formatter/IFillFormatter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFillLinePosition(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;)F
    .locals 8
    .param p1, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;
    .param p2, "dataProvider"    # Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    .prologue
    const/4 v7, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    .local v3, "fillMin":F
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getYChartMax()F

    move-result v0

    .line 21
    .local v0, "chartMaxY":F
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getYChartMin()F

    move-result v1

    .line 23
    .local v1, "chartMinY":F
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v2

    .line 25
    .local v2, "data":Lcom/github/mikephil/charting/data/LineData;
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getYMax()F

    move-result v6

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getYMin()F

    move-result v6

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 26
    const/4 v3, 0x0

    .line 43
    :goto_0
    return v3

    .line 31
    :cond_0
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/LineData;->getYMax()F

    move-result v6

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 32
    const/4 v4, 0x0

    .line 35
    .local v4, "max":F
    :goto_1
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/LineData;->getYMin()F

    move-result v6

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 36
    const/4 v5, 0x0

    .line 40
    .local v5, "min":F
    :goto_2
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getYMin()F

    move-result v6

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_3

    move v3, v5

    :goto_3
    goto :goto_0

    .line 34
    .end local v4    # "max":F
    .end local v5    # "min":F
    :cond_1
    move v4, v0

    .restart local v4    # "max":F
    goto :goto_1

    .line 38
    :cond_2
    move v5, v1

    .restart local v5    # "min":F
    goto :goto_2

    :cond_3
    move v3, v4

    .line 40
    goto :goto_3
.end method
