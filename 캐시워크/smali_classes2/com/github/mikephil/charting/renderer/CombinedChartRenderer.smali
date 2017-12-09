.class public Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;
.super Lcom/github/mikephil/charting/renderer/DataRenderer;
.source "CombinedChartRenderer.java"


# instance fields
.field protected mChart:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/github/mikephil/charting/charts/Chart;",
            ">;"
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

.field protected mRenderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/renderer/DataRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/CombinedChart;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 2
    .param p1, "chart"    # Lcom/github/mikephil/charting/charts/CombinedChart;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    .line 32
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/DataRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mRenderers:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mHighlightBuffer:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mChart:Ljava/lang/ref/WeakReference;

    .line 34
    invoke-virtual {p0}, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->createRenderers()V

    .line 35
    return-void
.end method


# virtual methods
.method public createRenderers()V
    .locals 9

    .prologue
    .line 43
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mRenderers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 45
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mChart:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/CombinedChart;

    .line 46
    .local v0, "chart":Lcom/github/mikephil/charting/charts/CombinedChart;
    if-nez v0, :cond_1

    .line 76
    :cond_0
    return-void

    .line 49
    :cond_1
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->getDrawOrder()[Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;

    move-result-object v2

    .line 51
    .local v2, "orders":[Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 53
    .local v1, "order":Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;
    sget-object v5, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer$1;->$SwitchMap$com$github$mikephil$charting$charts$CombinedChart$DrawOrder:[I

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/CombinedChart$DrawOrder;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 51
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    :pswitch_0
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 56
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mRenderers:Ljava/util/List;

    new-instance v6, Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v6, v0, v7, v8}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 59
    :pswitch_1
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->getBubbleData()Lcom/github/mikephil/charting/data/BubbleData;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 60
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mRenderers:Ljava/util/List;

    new-instance v6, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v6, v0, v7, v8}, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 63
    :pswitch_2
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 64
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mRenderers:Ljava/util/List;

    new-instance v6, Lcom/github/mikephil/charting/renderer/LineChartRenderer;

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v6, v0, v7, v8}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 67
    :pswitch_3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 68
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mRenderers:Ljava/util/List;

    new-instance v6, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v6, v0, v7, v8}, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 71
    :pswitch_4
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->getScatterData()Lcom/github/mikephil/charting/data/ScatterData;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 72
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mRenderers:Ljava/util/List;

    new-instance v6, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v6, v0, v7, v8}, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public drawData(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 88
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 89
    .local v0, "renderer":Lcom/github/mikephil/charting/renderer/DataRenderer;
    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawData(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 90
    .end local v0    # "renderer":Lcom/github/mikephil/charting/renderer/DataRenderer;
    :cond_0
    return-void
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 102
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 103
    .local v0, "renderer":Lcom/github/mikephil/charting/renderer/DataRenderer;
    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawExtras(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 104
    .end local v0    # "renderer":Lcom/github/mikephil/charting/renderer/DataRenderer;
    :cond_0
    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "indices"    # [Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    const/4 v6, -0x1

    .line 111
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mChart:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/Chart;

    .line 112
    .local v0, "chart":Lcom/github/mikephil/charting/charts/Chart;
    if-nez v0, :cond_1

    .line 140
    :cond_0
    return-void

    .line 114
    :cond_1
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mRenderers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 115
    .local v4, "renderer":Lcom/github/mikephil/charting/renderer/DataRenderer;
    const/4 v1, 0x0

    .line 117
    .local v1, "data":Lcom/github/mikephil/charting/data/ChartData;
    instance-of v5, v4, Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    if-eqz v5, :cond_5

    move-object v5, v4

    .line 118
    check-cast v5, Lcom/github/mikephil/charting/renderer/BarChartRenderer;

    iget-object v5, v5, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v1

    .line 128
    :cond_2
    :goto_1
    if-nez v1, :cond_9

    move v2, v6

    .line 131
    .local v2, "dataIndex":I
    :goto_2
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mHighlightBuffer:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 133
    array-length v8, p2

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v8, :cond_a

    aget-object v3, p2, v5

    .line 134
    .local v3, "h":Lcom/github/mikephil/charting/highlight/Highlight;
    invoke-virtual {v3}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataIndex()I

    move-result v9

    if-eq v9, v2, :cond_3

    invoke-virtual {v3}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataIndex()I

    move-result v9

    if-ne v9, v6, :cond_4

    .line 135
    :cond_3
    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mHighlightBuffer:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 119
    .end local v2    # "dataIndex":I
    .end local v3    # "h":Lcom/github/mikephil/charting/highlight/Highlight;
    :cond_5
    instance-of v5, v4, Lcom/github/mikephil/charting/renderer/LineChartRenderer;

    if-eqz v5, :cond_6

    move-object v5, v4

    .line 120
    check-cast v5, Lcom/github/mikephil/charting/renderer/LineChartRenderer;

    iget-object v5, v5, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v1

    goto :goto_1

    .line 121
    :cond_6
    instance-of v5, v4, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;

    if-eqz v5, :cond_7

    move-object v5, v4

    .line 122
    check-cast v5, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;

    iget-object v5, v5, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v1

    goto :goto_1

    .line 123
    :cond_7
    instance-of v5, v4, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;

    if-eqz v5, :cond_8

    move-object v5, v4

    .line 124
    check-cast v5, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;

    iget-object v5, v5, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;->getScatterData()Lcom/github/mikephil/charting/data/ScatterData;

    move-result-object v1

    goto :goto_1

    .line 125
    :cond_8
    instance-of v5, v4, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;

    if-eqz v5, :cond_2

    move-object v5, v4

    .line 126
    check-cast v5, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;

    iget-object v5, v5, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;->getBubbleData()Lcom/github/mikephil/charting/data/BubbleData;

    move-result-object v1

    goto :goto_1

    .line 129
    :cond_9
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/CombinedData;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/CombinedData;->getAllData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    goto :goto_2

    .line 138
    .restart local v2    # "dataIndex":I
    :cond_a
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mHighlightBuffer:Ljava/util/List;

    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mHighlightBuffer:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lcom/github/mikephil/charting/highlight/Highlight;

    invoke-interface {v5, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/github/mikephil/charting/highlight/Highlight;

    invoke-virtual {v4, p1, v5}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V

    goto/16 :goto_0
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 95
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 96
    .local v0, "renderer":Lcom/github/mikephil/charting/renderer/DataRenderer;
    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawValues(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 97
    .end local v0    # "renderer":Lcom/github/mikephil/charting/renderer/DataRenderer;
    :cond_0
    return-void
.end method

.method public getSubRenderer(I)Lcom/github/mikephil/charting/renderer/DataRenderer;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 150
    :cond_0
    const/4 v0, 0x0

    .line 152
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/renderer/DataRenderer;

    goto :goto_0
.end method

.method public getSubRenderers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/renderer/DataRenderer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mRenderers:Ljava/util/List;

    return-object v0
.end method

.method public initBuffers()V
    .locals 3

    .prologue
    .line 81
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 82
    .local v0, "renderer":Lcom/github/mikephil/charting/renderer/DataRenderer;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/renderer/DataRenderer;->initBuffers()V

    goto :goto_0

    .line 83
    .end local v0    # "renderer":Lcom/github/mikephil/charting/renderer/DataRenderer;
    :cond_0
    return-void
.end method

.method public setSubRenderers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/renderer/DataRenderer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "renderers":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/renderer/DataRenderer;>;"
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/CombinedChartRenderer;->mRenderers:Ljava/util/List;

    .line 166
    return-void
.end method
