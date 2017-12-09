.class public Lcom/github/mikephil/charting/buffer/BarBuffer;
.super Lcom/github/mikephil/charting/buffer/AbstractBuffer;
.source "BarBuffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/buffer/AbstractBuffer",
        "<",
        "Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;",
        ">;"
    }
.end annotation


# instance fields
.field protected mBarWidth:F

.field protected mContainsStacks:Z

.field protected mDataSetCount:I

.field protected mDataSetIndex:I

.field protected mInverted:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 2
    .param p1, "size"    # I
    .param p2, "dataSetCount"    # I
    .param p3, "containsStacks"    # Z

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/buffer/AbstractBuffer;-><init>(I)V

    .line 9
    iput v1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mDataSetIndex:I

    .line 10
    const/4 v0, 0x1

    iput v0, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mDataSetCount:I

    .line 11
    iput-boolean v1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mContainsStacks:Z

    .line 12
    iput-boolean v1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mInverted:Z

    .line 15
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mBarWidth:F

    .line 19
    iput p2, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mDataSetCount:I

    .line 20
    iput-boolean p3, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mContainsStacks:Z

    .line 21
    return-void
.end method


# virtual methods
.method protected addBar(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 37
    iget-object v0, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    iget v1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    aput p1, v0, v1

    .line 38
    iget-object v0, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    iget v1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    aput p2, v0, v1

    .line 39
    iget-object v0, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    iget v1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    aput p3, v0, v1

    .line 40
    iget-object v0, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    iget v1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    aput p4, v0, v1

    .line 41
    return-void
.end method

.method public feed(Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;)V
    .locals 19
    .param p1, "data"    # Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .prologue
    .line 46
    invoke-interface/range {p1 .. p1}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryCount()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseX:F

    move/from16 v18, v0

    mul-float v10, v17, v18

    .line 47
    .local v10, "size":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mBarWidth:F

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v1, v17, v18

    .line 49
    .local v1, "barWidthHalf":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    int-to-float v0, v4

    move/from16 v17, v0

    cmpg-float v17, v17, v10

    if-gez v17, :cond_12

    .line 51
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/BarEntry;

    .line 53
    .local v3, "e":Lcom/github/mikephil/charting/data/BarEntry;
    if-nez v3, :cond_1

    .line 49
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarEntry;->getX()F

    move-result v14

    .line 57
    .local v14, "x":F
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v15

    .line 58
    .local v15, "y":F
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarEntry;->getYVals()[F

    move-result-object v12

    .line 60
    .local v12, "vals":[F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mContainsStacks:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    if-nez v12, :cond_9

    .line 62
    :cond_2
    sub-float v6, v14, v1

    .line 63
    .local v6, "left":F
    add-float v9, v14, v1

    .line 66
    .local v9, "right":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mInverted:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 67
    const/16 v17, 0x0

    cmpl-float v17, v15, v17

    if-ltz v17, :cond_3

    move v2, v15

    .line 68
    .local v2, "bottom":F
    :goto_2
    const/16 v17, 0x0

    cmpg-float v17, v15, v17

    if-gtz v17, :cond_4

    move v11, v15

    .line 75
    .local v11, "top":F
    :goto_3
    const/16 v17, 0x0

    cmpl-float v17, v11, v17

    if-lez v17, :cond_8

    .line 76
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseY:F

    move/from16 v17, v0

    mul-float v11, v11, v17

    .line 80
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11, v9, v2}, Lcom/github/mikephil/charting/buffer/BarBuffer;->addBar(FFFF)V

    goto :goto_1

    .line 67
    .end local v2    # "bottom":F
    .end local v11    # "top":F
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 68
    .restart local v2    # "bottom":F
    :cond_4
    const/4 v11, 0x0

    goto :goto_3

    .line 70
    .end local v2    # "bottom":F
    :cond_5
    const/16 v17, 0x0

    cmpl-float v17, v15, v17

    if-ltz v17, :cond_6

    move v11, v15

    .line 71
    .restart local v11    # "top":F
    :goto_5
    const/16 v17, 0x0

    cmpg-float v17, v15, v17

    if-gtz v17, :cond_7

    move v2, v15

    .restart local v2    # "bottom":F
    :goto_6
    goto :goto_3

    .line 70
    .end local v2    # "bottom":F
    .end local v11    # "top":F
    :cond_6
    const/4 v11, 0x0

    goto :goto_5

    .line 71
    .restart local v11    # "top":F
    :cond_7
    const/4 v2, 0x0

    goto :goto_6

    .line 78
    .restart local v2    # "bottom":F
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseY:F

    move/from16 v17, v0

    mul-float v2, v2, v17

    goto :goto_4

    .line 84
    .end local v2    # "bottom":F
    .end local v6    # "left":F
    .end local v9    # "right":F
    .end local v11    # "top":F
    :cond_9
    const/4 v8, 0x0

    .line 85
    .local v8, "posY":F
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v17

    move/from16 v0, v17

    neg-float v7, v0

    .line 86
    .local v7, "negY":F
    const/16 v16, 0x0

    .line 89
    .local v16, "yStart":F
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_7
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_0

    .line 91
    aget v13, v12, v5

    .line 93
    .local v13, "value":F
    const/16 v17, 0x0

    cmpl-float v17, v13, v17

    if-nez v17, :cond_b

    const/16 v17, 0x0

    cmpl-float v17, v8, v17

    if-eqz v17, :cond_a

    const/16 v17, 0x0

    cmpl-float v17, v7, v17

    if-nez v17, :cond_b

    .line 95
    :cond_a
    move v15, v13

    .line 96
    move/from16 v16, v15

    .line 107
    :goto_8
    sub-float v6, v14, v1

    .line 108
    .restart local v6    # "left":F
    add-float v9, v14, v1

    .line 111
    .restart local v9    # "right":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mInverted:Z

    move/from16 v17, v0

    if-eqz v17, :cond_f

    .line 112
    cmpl-float v17, v15, v16

    if-ltz v17, :cond_d

    move v2, v15

    .line 113
    .restart local v2    # "bottom":F
    :goto_9
    cmpg-float v17, v15, v16

    if-gtz v17, :cond_e

    move v11, v15

    .line 120
    .restart local v11    # "top":F
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseY:F

    move/from16 v17, v0

    mul-float v11, v11, v17

    .line 121
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseY:F

    move/from16 v17, v0

    mul-float v2, v2, v17

    .line 123
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11, v9, v2}, Lcom/github/mikephil/charting/buffer/BarBuffer;->addBar(FFFF)V

    .line 89
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 97
    .end local v2    # "bottom":F
    .end local v6    # "left":F
    .end local v9    # "right":F
    .end local v11    # "top":F
    :cond_b
    const/16 v17, 0x0

    cmpl-float v17, v13, v17

    if-ltz v17, :cond_c

    .line 98
    move v15, v8

    .line 99
    add-float v16, v8, v13

    .line 100
    move/from16 v8, v16

    goto :goto_8

    .line 102
    :cond_c
    move v15, v7

    .line 103
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v17

    add-float v16, v7, v17

    .line 104
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v17

    add-float v7, v7, v17

    goto :goto_8

    .restart local v6    # "left":F
    .restart local v9    # "right":F
    :cond_d
    move/from16 v2, v16

    .line 112
    goto :goto_9

    .restart local v2    # "bottom":F
    :cond_e
    move/from16 v11, v16

    .line 113
    goto :goto_a

    .line 115
    .end local v2    # "bottom":F
    :cond_f
    cmpl-float v17, v15, v16

    if-ltz v17, :cond_10

    move v11, v15

    .line 116
    .restart local v11    # "top":F
    :goto_b
    cmpg-float v17, v15, v16

    if-gtz v17, :cond_11

    move v2, v15

    .restart local v2    # "bottom":F
    :goto_c
    goto :goto_a

    .end local v2    # "bottom":F
    .end local v11    # "top":F
    :cond_10
    move/from16 v11, v16

    .line 115
    goto :goto_b

    .restart local v11    # "top":F
    :cond_11
    move/from16 v2, v16

    .line 116
    goto :goto_c

    .line 128
    .end local v3    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v5    # "k":I
    .end local v6    # "left":F
    .end local v7    # "negY":F
    .end local v8    # "posY":F
    .end local v9    # "right":F
    .end local v11    # "top":F
    .end local v12    # "vals":[F
    .end local v13    # "value":F
    .end local v14    # "x":F
    .end local v15    # "y":F
    .end local v16    # "yStart":F
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/buffer/BarBuffer;->reset()V

    .line 129
    return-void
.end method

.method public bridge synthetic feed(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    check-cast p1, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/buffer/BarBuffer;->feed(Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;)V

    return-void
.end method

.method public setBarWidth(F)V
    .locals 0
    .param p1, "barWidth"    # F

    .prologue
    .line 24
    iput p1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mBarWidth:F

    .line 25
    return-void
.end method

.method public setDataSet(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mDataSetIndex:I

    .line 29
    return-void
.end method

.method public setInverted(Z)V
    .locals 0
    .param p1, "inverted"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mInverted:Z

    .line 33
    return-void
.end method
