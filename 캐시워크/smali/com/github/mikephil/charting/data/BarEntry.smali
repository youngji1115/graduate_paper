.class public Lcom/github/mikephil/charting/data/BarEntry;
.super Lcom/github/mikephil/charting/data/Entry;
.source "BarEntry.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# instance fields
.field private mNegativeSum:F

.field private mPositiveSum:F

.field private mRanges:[Lcom/github/mikephil/charting/highlight/Range;

.field private mYVals:[F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 44
    return-void
.end method

.method public constructor <init>(FFLandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FFLandroid/graphics/drawable/Drawable;)V

    .line 66
    return-void
.end method

.method public constructor <init>(FFLandroid/graphics/drawable/Drawable;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "data"    # Ljava/lang/Object;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/github/mikephil/charting/data/Entry;-><init>(FFLandroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public constructor <init>(FFLjava/lang/Object;)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FFLjava/lang/Object;)V

    .line 55
    return-void
.end method

.method public constructor <init>(F[F)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "vals"    # [F

    .prologue
    .line 87
    invoke-static {p2}, Lcom/github/mikephil/charting/data/BarEntry;->calcSum([F)F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    .line 89
    iput-object p2, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    .line 90
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/BarEntry;->calcPosNegSum()V

    .line 91
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->calcRanges()V

    .line 92
    return-void
.end method

.method public constructor <init>(F[FLandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "vals"    # [F
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 117
    invoke-static {p2}, Lcom/github/mikephil/charting/data/BarEntry;->calcSum([F)F

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FFLandroid/graphics/drawable/Drawable;)V

    .line 119
    iput-object p2, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    .line 120
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/BarEntry;->calcPosNegSum()V

    .line 121
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->calcRanges()V

    .line 122
    return-void
.end method

.method public constructor <init>(F[FLandroid/graphics/drawable/Drawable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "vals"    # [F
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "data"    # Ljava/lang/Object;

    .prologue
    .line 133
    invoke-static {p2}, Lcom/github/mikephil/charting/data/BarEntry;->calcSum([F)F

    move-result v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/github/mikephil/charting/data/Entry;-><init>(FFLandroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 135
    iput-object p2, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    .line 136
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/BarEntry;->calcPosNegSum()V

    .line 137
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->calcRanges()V

    .line 138
    return-void
.end method

.method public constructor <init>(F[FLjava/lang/Object;)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "vals"    # [F
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 102
    invoke-static {p2}, Lcom/github/mikephil/charting/data/BarEntry;->calcSum([F)F

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FFLjava/lang/Object;)V

    .line 104
    iput-object p2, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    .line 105
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/BarEntry;->calcPosNegSum()V

    .line 106
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->calcRanges()V

    .line 107
    return-void
.end method

.method private calcPosNegSum()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 244
    iget-object v3, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    if-nez v3, :cond_0

    .line 245
    iput v7, p0, Lcom/github/mikephil/charting/data/BarEntry;->mNegativeSum:F

    .line 246
    iput v7, p0, Lcom/github/mikephil/charting/data/BarEntry;->mPositiveSum:F

    .line 262
    :goto_0
    return-void

    .line 250
    :cond_0
    const/4 v1, 0x0

    .line 251
    .local v1, "sumNeg":F
    const/4 v2, 0x0

    .line 253
    .local v2, "sumPos":F
    iget-object v4, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    array-length v5, v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_2

    aget v0, v4, v3

    .line 254
    .local v0, "f":F
    cmpg-float v6, v0, v7

    if-gtz v6, :cond_1

    .line 255
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v1, v6

    .line 253
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 257
    :cond_1
    add-float/2addr v2, v0

    goto :goto_2

    .line 260
    .end local v0    # "f":F
    :cond_2
    iput v1, p0, Lcom/github/mikephil/charting/data/BarEntry;->mNegativeSum:F

    .line 261
    iput v2, p0, Lcom/github/mikephil/charting/data/BarEntry;->mPositiveSum:F

    goto :goto_0
.end method

.method private static calcSum([F)F
    .locals 4
    .param p0, "vals"    # [F

    .prologue
    .line 272
    if-nez p0, :cond_1

    .line 273
    const/4 v1, 0x0

    .line 280
    :cond_0
    return v1

    .line 275
    :cond_1
    const/4 v1, 0x0

    .line 277
    .local v1, "sum":F
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, p0, v2

    .line 278
    .local v0, "f":F
    add-float/2addr v1, v0

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected calcRanges()V
    .locals 8

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->getYVals()[F

    move-result-object v4

    .line 287
    .local v4, "values":[F
    if-eqz v4, :cond_0

    array-length v5, v4

    if-nez v5, :cond_1

    .line 307
    :cond_0
    return-void

    .line 290
    :cond_1
    array-length v5, v4

    new-array v5, v5, [Lcom/github/mikephil/charting/highlight/Range;

    iput-object v5, p0, Lcom/github/mikephil/charting/data/BarEntry;->mRanges:[Lcom/github/mikephil/charting/highlight/Range;

    .line 292
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v5

    neg-float v1, v5

    .line 293
    .local v1, "negRemain":F
    const/4 v2, 0x0

    .line 295
    .local v2, "posRemain":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/github/mikephil/charting/data/BarEntry;->mRanges:[Lcom/github/mikephil/charting/highlight/Range;

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 297
    aget v3, v4, v0

    .line 299
    .local v3, "value":F
    const/4 v5, 0x0

    cmpg-float v5, v3, v5

    if-gez v5, :cond_2

    .line 300
    iget-object v5, p0, Lcom/github/mikephil/charting/data/BarEntry;->mRanges:[Lcom/github/mikephil/charting/highlight/Range;

    new-instance v6, Lcom/github/mikephil/charting/highlight/Range;

    sub-float v7, v1, v3

    invoke-direct {v6, v1, v7}, Lcom/github/mikephil/charting/highlight/Range;-><init>(FF)V

    aput-object v6, v5, v0

    .line 301
    sub-float/2addr v1, v3

    .line 295
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_2
    iget-object v5, p0, Lcom/github/mikephil/charting/data/BarEntry;->mRanges:[Lcom/github/mikephil/charting/highlight/Range;

    new-instance v6, Lcom/github/mikephil/charting/highlight/Range;

    add-float v7, v2, v3

    invoke-direct {v6, v2, v7}, Lcom/github/mikephil/charting/highlight/Range;-><init>(FF)V

    aput-object v6, v5, v0

    .line 304
    add-float/2addr v2, v3

    goto :goto_1
.end method

.method public copy()Lcom/github/mikephil/charting/data/BarEntry;
    .locals 4

    .prologue
    .line 145
    new-instance v0, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->getData()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FFLjava/lang/Object;)V

    .line 146
    .local v0, "copied":Lcom/github/mikephil/charting/data/BarEntry;
    iget-object v1, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BarEntry;->setVals([F)V

    .line 147
    return-object v0
.end method

.method public bridge synthetic copy()Lcom/github/mikephil/charting/data/Entry;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->copy()Lcom/github/mikephil/charting/data/BarEntry;

    move-result-object v0

    return-object v0
.end method

.method public getBelowSum(I)F
    .locals 1
    .param p1, "stackIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/BarEntry;->getSumBelow(I)F

    move-result v0

    return v0
.end method

.method public getNegativeSum()F
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mNegativeSum:F

    return v0
.end method

.method public getPositiveSum()F
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mPositiveSum:F

    return v0
.end method

.method public getRanges()[Lcom/github/mikephil/charting/highlight/Range;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mRanges:[Lcom/github/mikephil/charting/highlight/Range;

    return-object v0
.end method

.method public getSumBelow(I)F
    .locals 3
    .param p1, "stackIndex"    # I

    .prologue
    .line 210
    iget-object v2, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    if-nez v2, :cond_1

    .line 211
    const/4 v1, 0x0

    .line 221
    :cond_0
    return v1

    .line 213
    :cond_1
    const/4 v1, 0x0

    .line 214
    .local v1, "remainder":F
    iget-object v2, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .line 216
    .local v0, "index":I
    :goto_0
    if-le v0, p1, :cond_0

    if-ltz v0, :cond_0

    .line 217
    iget-object v2, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    aget v2, v2, v0

    add-float/2addr v1, v2

    .line 218
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 179
    invoke-super {p0}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v0

    return v0
.end method

.method public getYVals()[F
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    return-object v0
.end method

.method public isStacked()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVals([F)V
    .locals 1
    .param p1, "vals"    # [F

    .prologue
    .line 166
    invoke-static {p1}, Lcom/github/mikephil/charting/data/BarEntry;->calcSum([F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/BarEntry;->setY(F)V

    .line 167
    iput-object p1, p0, Lcom/github/mikephil/charting/data/BarEntry;->mYVals:[F

    .line 168
    invoke-direct {p0}, Lcom/github/mikephil/charting/data/BarEntry;->calcPosNegSum()V

    .line 169
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BarEntry;->calcRanges()V

    .line 170
    return-void
.end method
