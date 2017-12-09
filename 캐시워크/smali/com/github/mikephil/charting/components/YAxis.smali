.class public Lcom/github/mikephil/charting/components/YAxis;
.super Lcom/github/mikephil/charting/components/AxisBase;
.source "YAxis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/components/YAxis$AxisDependency;,
        Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;
    }
.end annotation


# instance fields
.field private mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

.field private mDrawBottomYLabelEntry:Z

.field private mDrawTopYLabelEntry:Z

.field protected mDrawZeroLine:Z

.field protected mInverted:Z

.field protected mMaxWidth:F

.field protected mMinWidth:F

.field private mPosition:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

.field protected mSpacePercentBottom:F

.field protected mSpacePercentTop:F

.field protected mZeroLineColor:I

.field protected mZeroLineWidth:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/AxisBase;-><init>()V

    .line 24
    iput-boolean v3, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawBottomYLabelEntry:Z

    .line 29
    iput-boolean v3, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawTopYLabelEntry:Z

    .line 34
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mInverted:Z

    .line 39
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawZeroLine:Z

    .line 44
    const v0, -0x777778

    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mZeroLineColor:I

    .line 49
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mZeroLineWidth:F

    .line 54
    iput v2, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentTop:F

    .line 59
    iput v2, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentBottom:F

    .line 64
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mPosition:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    .line 83
    iput v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mMinWidth:F

    .line 90
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mMaxWidth:F

    .line 105
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 106
    iput v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mYOffset:F

    .line 107
    return-void
.end method

.method public constructor <init>(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V
    .locals 4
    .param p1, "position"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Lcom/github/mikephil/charting/components/AxisBase;-><init>()V

    .line 24
    iput-boolean v3, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawBottomYLabelEntry:Z

    .line 29
    iput-boolean v3, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawTopYLabelEntry:Z

    .line 34
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mInverted:Z

    .line 39
    iput-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawZeroLine:Z

    .line 44
    const v0, -0x777778

    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mZeroLineColor:I

    .line 49
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mZeroLineWidth:F

    .line 54
    iput v2, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentTop:F

    .line 59
    iput v2, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentBottom:F

    .line 64
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    iput-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mPosition:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    .line 83
    iput v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mMinWidth:F

    .line 90
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mMaxWidth:F

    .line 111
    iput-object p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 112
    iput v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mYOffset:F

    .line 113
    return-void
.end method


# virtual methods
.method public calculate(FF)V
    .locals 8
    .param p1, "dataMin"    # F
    .param p2, "dataMax"    # F

    .prologue
    const/high16 v7, 0x42c80000    # 100.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 364
    iget-boolean v5, p0, Lcom/github/mikephil/charting/components/YAxis;->mCustomAxisMin:Z

    if-eqz v5, :cond_3

    iget v2, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    .line 365
    .local v2, "min":F
    :goto_0
    iget-boolean v5, p0, Lcom/github/mikephil/charting/components/YAxis;->mCustomAxisMax:Z

    if-eqz v5, :cond_4

    iget v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisMaximum:F

    .line 368
    .local v1, "max":F
    :goto_1
    sub-float v5, v1, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 371
    .local v3, "range":F
    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-nez v5, :cond_0

    .line 372
    add-float/2addr v1, v6

    .line 373
    sub-float/2addr v2, v6

    .line 377
    :cond_0
    iget-boolean v5, p0, Lcom/github/mikephil/charting/components/YAxis;->mCustomAxisMin:Z

    if-nez v5, :cond_1

    .line 379
    div-float v5, v3, v7

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getSpaceBottom()F

    move-result v6

    mul-float v0, v5, v6

    .line 380
    .local v0, "bottomSpace":F
    sub-float v5, v2, v0

    iput v5, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    .line 384
    .end local v0    # "bottomSpace":F
    :cond_1
    iget-boolean v5, p0, Lcom/github/mikephil/charting/components/YAxis;->mCustomAxisMax:Z

    if-nez v5, :cond_2

    .line 386
    div-float v5, v3, v7

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getSpaceTop()F

    move-result v6

    mul-float v4, v5, v6

    .line 387
    .local v4, "topSpace":F
    add-float v5, v1, v4

    iput v5, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisMaximum:F

    .line 391
    .end local v4    # "topSpace":F
    :cond_2
    iget v5, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisMaximum:F

    iget v6, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisMinimum:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iput v5, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisRange:F

    .line 392
    return-void

    .end local v1    # "max":F
    .end local v2    # "min":F
    .end local v3    # "range":F
    :cond_3
    move v2, p1

    .line 364
    goto :goto_0

    .restart local v2    # "min":F
    :cond_4
    move v1, p2

    .line 365
    goto :goto_1
.end method

.method public getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mAxisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    return-object v0
.end method

.method public getLabelPosition()Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mPosition:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    return-object v0
.end method

.method public getMaxWidth()F
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mMaxWidth:F

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mMinWidth:F

    return v0
.end method

.method public getRequiredHeightSpace(Landroid/graphics/Paint;)F
    .locals 4
    .param p1, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 341
    iget v1, p0, Lcom/github/mikephil/charting/components/YAxis;->mTextSize:F

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 343
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getLongestLabel()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "label":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getYOffset()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    return v1
.end method

.method public getRequiredWidthSpace(Landroid/graphics/Paint;)F
    .locals 8
    .param p1, "p"    # Landroid/graphics/Paint;

    .prologue
    const/4 v7, 0x0

    .line 314
    iget v4, p0, Lcom/github/mikephil/charting/components/YAxis;->mTextSize:F

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 316
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getLongestLabel()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "label":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getXOffset()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    add-float v3, v4, v5

    .line 319
    .local v3, "width":F
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getMinWidth()F

    move-result v2

    .line 320
    .local v2, "minWidth":F
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getMaxWidth()F

    move-result v1

    .line 322
    .local v1, "maxWidth":F
    cmpl-float v4, v2, v7

    if-lez v4, :cond_0

    .line 323
    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v2

    .line 325
    :cond_0
    cmpl-float v4, v1, v7

    if-lez v4, :cond_1

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_1

    .line 326
    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    .line 328
    :cond_1
    float-to-double v4, v1

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    .end local v1    # "maxWidth":F
    :goto_0
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 330
    return v3

    .restart local v1    # "maxWidth":F
    :cond_2
    move v1, v3

    .line 328
    goto :goto_0
.end method

.method public getSpaceBottom()F
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentBottom:F

    return v0
.end method

.method public getSpaceTop()F
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentTop:F

    return v0
.end method

.method public getZeroLineColor()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mZeroLineColor:I

    return v0
.end method

.method public getZeroLineWidth()F
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mZeroLineWidth:F

    return v0
.end method

.method public isDrawBottomYLabelEntryEnabled()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawBottomYLabelEntry:Z

    return v0
.end method

.method public isDrawTopYLabelEntryEnabled()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawTopYLabelEntry:Z

    return v0
.end method

.method public isDrawZeroLineEnabled()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawZeroLine:Z

    return v0
.end method

.method public isInverted()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mInverted:Z

    return v0
.end method

.method public needsOffset()Z
    .locals 2

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->isDrawLabelsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->getLabelPosition()Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    move-result-object v0

    sget-object v1, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    if-ne v0, v1, :cond_0

    .line 355
    const/4 v0, 0x1

    .line 357
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDrawTopYLabelEntry(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawTopYLabelEntry:Z

    .line 194
    return-void
.end method

.method public setDrawZeroLine(Z)V
    .locals 0
    .param p1, "mDrawZeroLine"    # Z

    .prologue
    .line 277
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mDrawZeroLine:Z

    .line 278
    return-void
.end method

.method public setInverted(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mInverted:Z

    .line 205
    return-void
.end method

.method public setMaxWidth(F)V
    .locals 0
    .param p1, "maxWidth"    # F

    .prologue
    .line 148
    iput p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mMaxWidth:F

    .line 149
    return-void
.end method

.method public setMinWidth(F)V
    .locals 0
    .param p1, "minWidth"    # F

    .prologue
    .line 132
    iput p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mMinWidth:F

    .line 133
    return-void
.end method

.method public setPosition(Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;)V
    .locals 0
    .param p1, "pos"    # Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mPosition:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    .line 165
    return-void
.end method

.method public setSpaceBottom(F)V
    .locals 0
    .param p1, "percent"    # F

    .prologue
    .line 254
    iput p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentBottom:F

    .line 255
    return-void
.end method

.method public setSpaceTop(F)V
    .locals 0
    .param p1, "percent"    # F

    .prologue
    .line 236
    iput p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mSpacePercentTop:F

    .line 237
    return-void
.end method

.method public setStartAtZero(Z)V
    .locals 1
    .param p1, "startAtZero"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 224
    if-eqz p1, :cond_0

    .line 225
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 228
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/components/YAxis;->resetAxisMinimum()V

    goto :goto_0
.end method

.method public setZeroLineColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 290
    iput p1, p0, Lcom/github/mikephil/charting/components/YAxis;->mZeroLineColor:I

    .line 291
    return-void
.end method

.method public setZeroLineWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 303
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/components/YAxis;->mZeroLineWidth:F

    .line 304
    return-void
.end method
