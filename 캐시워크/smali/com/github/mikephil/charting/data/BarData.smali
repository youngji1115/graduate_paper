.class public Lcom/github/mikephil/charting/data/BarData;
.super Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;
.source "BarData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData",
        "<",
        "Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;",
        ">;"
    }
.end annotation


# instance fields
.field private mBarWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;-><init>()V

    .line 18
    const v0, 0x3f59999a    # 0.85f

    iput v0, p0, Lcom/github/mikephil/charting/data/BarData;->mBarWidth:F

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;>;"
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;-><init>(Ljava/util/List;)V

    .line 18
    const v0, 0x3f59999a    # 0.85f

    iput v0, p0, Lcom/github/mikephil/charting/data/BarData;->mBarWidth:F

    .line 30
    return-void
.end method

.method public varargs constructor <init>([Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;)V
    .locals 1
    .param p1, "dataSets"    # [Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;-><init>([Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)V

    .line 18
    const v0, 0x3f59999a    # 0.85f

    iput v0, p0, Lcom/github/mikephil/charting/data/BarData;->mBarWidth:F

    .line 26
    return-void
.end method


# virtual methods
.method public getBarWidth()F
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/github/mikephil/charting/data/BarData;->mBarWidth:F

    return v0
.end method

.method public getGroupWidth(FF)F
    .locals 2
    .param p1, "groupSpace"    # F
    .param p2, "barSpace"    # F

    .prologue
    .line 117
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarData;->mDataSets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/github/mikephil/charting/data/BarData;->mBarWidth:F

    add-float/2addr v1, p2

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method public groupBars(FFF)V
    .locals 19
    .param p1, "fromX"    # F
    .param p2, "groupSpace"    # F
    .param p3, "barSpace"    # F

    .prologue
    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/data/BarData;->mDataSets:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v15

    .line 59
    .local v15, "setCount":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-gt v15, v0, :cond_0

    .line 60
    new-instance v17, Ljava/lang/RuntimeException;

    const-string v18, "BarData needs to hold at least 2 BarDataSets to allow grouping."

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 63
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/data/BarData;->getMaxEntryCountSet()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v12

    check-cast v12, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 64
    .local v12, "max":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    invoke-interface {v12}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryCount()I

    move-result v13

    .line 66
    .local v13, "maxEntryCount":I
    const/high16 v17, 0x40000000    # 2.0f

    div-float v8, p2, v17

    .line 67
    .local v8, "groupSpaceWidthHalf":F
    const/high16 v17, 0x40000000    # 2.0f

    div-float v3, p3, v17

    .line 68
    .local v3, "barSpaceHalf":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/data/BarData;->mBarWidth:F

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v4, v17, v18

    .line 70
    .local v4, "barWidthHalf":F
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/data/BarData;->getGroupWidth(FF)F

    move-result v11

    .line 72
    .local v11, "interval":F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v13, :cond_5

    .line 74
    move/from16 v16, p1

    .line 75
    .local v16, "start":F
    add-float p1, p1, v8

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/data/BarData;->mDataSets:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 79
    .local v14, "set":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    add-float p1, p1, v3

    .line 80
    add-float p1, p1, v4

    .line 82
    invoke-interface {v14}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_1

    .line 84
    invoke-interface {v14, v9}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/BarEntry;

    .line 86
    .local v7, "entry":Lcom/github/mikephil/charting/data/BarEntry;
    if-eqz v7, :cond_1

    .line 87
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/github/mikephil/charting/data/BarEntry;->setX(F)V

    .line 91
    .end local v7    # "entry":Lcom/github/mikephil/charting/data/BarEntry;
    :cond_1
    add-float p1, p1, v4

    .line 92
    add-float p1, p1, v3

    .line 93
    goto :goto_1

    .line 95
    .end local v14    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    :cond_2
    add-float p1, p1, v8

    .line 96
    move/from16 v6, p1

    .line 97
    .local v6, "end":F
    sub-float v10, v6, v16

    .line 98
    .local v10, "innerInterval":F
    sub-float v5, v11, v10

    .line 101
    .local v5, "diff":F
    const/16 v17, 0x0

    cmpl-float v17, v5, v17

    if-gtz v17, :cond_3

    const/16 v17, 0x0

    cmpg-float v17, v5, v17

    if-gez v17, :cond_4

    .line 102
    :cond_3
    add-float p1, p1, v5

    .line 72
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 106
    .end local v5    # "diff":F
    .end local v6    # "end":F
    .end local v10    # "innerInterval":F
    .end local v16    # "start":F
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/data/BarData;->notifyDataChanged()V

    .line 107
    return-void
.end method

.method public setBarWidth(F)V
    .locals 0
    .param p1, "mBarWidth"    # F

    .prologue
    .line 39
    iput p1, p0, Lcom/github/mikephil/charting/data/BarData;->mBarWidth:F

    .line 40
    return-void
.end method
