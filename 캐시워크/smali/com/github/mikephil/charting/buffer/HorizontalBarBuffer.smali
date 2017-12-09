.class public Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;
.super Lcom/github/mikephil/charting/buffer/BarBuffer;
.source "HorizontalBarBuffer.java"


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "dataSetCount"    # I
    .param p3, "containsStacks"    # Z

    .prologue
    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/buffer/BarBuffer;-><init>(IIZ)V

    .line 11
    return-void
.end method


# virtual methods
.method public feed(Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;)V
    .locals 19
    .param p1, "data"    # Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .prologue
    .line 16
    invoke-interface/range {p1 .. p1}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryCount()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->phaseX:F

    move/from16 v18, v0

    mul-float v10, v17, v18

    .line 17
    .local v10, "size":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->mBarWidth:F

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v1, v17, v18

    .line 19
    .local v1, "barWidthHalf":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    int-to-float v0, v4

    move/from16 v17, v0

    cmpg-float v17, v17, v10

    if-gez v17, :cond_10

    .line 21
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/BarEntry;

    .line 23
    .local v3, "e":Lcom/github/mikephil/charting/data/BarEntry;
    if-nez v3, :cond_1

    .line 19
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarEntry;->getX()F

    move-result v14

    .line 27
    .local v14, "x":F
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v15

    .line 28
    .local v15, "y":F
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarEntry;->getYVals()[F

    move-result-object v12

    .line 30
    .local v12, "vals":[F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->mContainsStacks:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    if-nez v12, :cond_9

    .line 32
    :cond_2
    sub-float v2, v14, v1

    .line 33
    .local v2, "bottom":F
    add-float v11, v14, v1

    .line 35
    .local v11, "top":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->mInverted:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 36
    const/16 v17, 0x0

    cmpl-float v17, v15, v17

    if-ltz v17, :cond_3

    move v6, v15

    .line 37
    .local v6, "left":F
    :goto_2
    const/16 v17, 0x0

    cmpg-float v17, v15, v17

    if-gtz v17, :cond_4

    move v9, v15

    .line 44
    .local v9, "right":F
    :goto_3
    const/16 v17, 0x0

    cmpl-float v17, v9, v17

    if-lez v17, :cond_8

    .line 45
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->phaseY:F

    move/from16 v17, v0

    mul-float v9, v9, v17

    .line 49
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11, v9, v2}, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->addBar(FFFF)V

    goto :goto_1

    .line 36
    .end local v6    # "left":F
    .end local v9    # "right":F
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 37
    .restart local v6    # "left":F
    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    .line 39
    .end local v6    # "left":F
    :cond_5
    const/16 v17, 0x0

    cmpl-float v17, v15, v17

    if-ltz v17, :cond_6

    move v9, v15

    .line 40
    .restart local v9    # "right":F
    :goto_5
    const/16 v17, 0x0

    cmpg-float v17, v15, v17

    if-gtz v17, :cond_7

    move v6, v15

    .restart local v6    # "left":F
    :goto_6
    goto :goto_3

    .line 39
    .end local v6    # "left":F
    .end local v9    # "right":F
    :cond_6
    const/4 v9, 0x0

    goto :goto_5

    .line 40
    .restart local v9    # "right":F
    :cond_7
    const/4 v6, 0x0

    goto :goto_6

    .line 47
    .restart local v6    # "left":F
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->phaseY:F

    move/from16 v17, v0

    mul-float v6, v6, v17

    goto :goto_4

    .line 53
    .end local v2    # "bottom":F
    .end local v6    # "left":F
    .end local v9    # "right":F
    .end local v11    # "top":F
    :cond_9
    const/4 v8, 0x0

    .line 54
    .local v8, "posY":F
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v17

    move/from16 v0, v17

    neg-float v7, v0

    .line 55
    .local v7, "negY":F
    const/16 v16, 0x0

    .line 58
    .local v16, "yStart":F
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_7
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_0

    .line 60
    aget v13, v12, v5

    .line 62
    .local v13, "value":F
    const/16 v17, 0x0

    cmpl-float v17, v13, v17

    if-ltz v17, :cond_a

    .line 63
    move v15, v8

    .line 64
    add-float v16, v8, v13

    .line 65
    move/from16 v8, v16

    .line 72
    :goto_8
    sub-float v2, v14, v1

    .line 73
    .restart local v2    # "bottom":F
    add-float v11, v14, v1

    .line 75
    .restart local v11    # "top":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->mInverted:Z

    move/from16 v17, v0

    if-eqz v17, :cond_d

    .line 76
    cmpl-float v17, v15, v16

    if-ltz v17, :cond_b

    move v6, v15

    .line 77
    .restart local v6    # "left":F
    :goto_9
    cmpg-float v17, v15, v16

    if-gtz v17, :cond_c

    move v9, v15

    .line 84
    .restart local v9    # "right":F
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->phaseY:F

    move/from16 v17, v0

    mul-float v9, v9, v17

    .line 85
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->phaseY:F

    move/from16 v17, v0

    mul-float v6, v6, v17

    .line 87
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11, v9, v2}, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->addBar(FFFF)V

    .line 58
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 67
    .end local v2    # "bottom":F
    .end local v6    # "left":F
    .end local v9    # "right":F
    .end local v11    # "top":F
    :cond_a
    move v15, v7

    .line 68
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v17

    add-float v16, v7, v17

    .line 69
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v17

    add-float v7, v7, v17

    goto :goto_8

    .restart local v2    # "bottom":F
    .restart local v11    # "top":F
    :cond_b
    move/from16 v6, v16

    .line 76
    goto :goto_9

    .restart local v6    # "left":F
    :cond_c
    move/from16 v9, v16

    .line 77
    goto :goto_a

    .line 79
    .end local v6    # "left":F
    :cond_d
    cmpl-float v17, v15, v16

    if-ltz v17, :cond_e

    move v9, v15

    .line 80
    .restart local v9    # "right":F
    :goto_b
    cmpg-float v17, v15, v16

    if-gtz v17, :cond_f

    move v6, v15

    .restart local v6    # "left":F
    :goto_c
    goto :goto_a

    .end local v6    # "left":F
    .end local v9    # "right":F
    :cond_e
    move/from16 v9, v16

    .line 79
    goto :goto_b

    .restart local v9    # "right":F
    :cond_f
    move/from16 v6, v16

    .line 80
    goto :goto_c

    .line 92
    .end local v2    # "bottom":F
    .end local v3    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v5    # "k":I
    .end local v7    # "negY":F
    .end local v8    # "posY":F
    .end local v9    # "right":F
    .end local v11    # "top":F
    .end local v12    # "vals":[F
    .end local v13    # "value":F
    .end local v14    # "x":F
    .end local v15    # "y":F
    .end local v16    # "yStart":F
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->reset()V

    .line 93
    return-void
.end method

.method public bridge synthetic feed(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    check-cast p1, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;->feed(Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;)V

    return-void
.end method
