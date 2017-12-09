.class public Lcom/github/mikephil/charting/data/filter/Approximator;
.super Ljava/lang/Object;
.source "Approximator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/data/filter/Approximator$Line;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method varargs concat([[F)[F
    .locals 10
    .param p1, "arrays"    # [[F

    .prologue
    const/4 v6, 0x0

    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, "length":I
    array-length v7, p1

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v0, p1, v5

    .line 59
    .local v0, "array":[F
    array-length v8, v0

    add-int/2addr v2, v8

    .line 58
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "array":[F
    :cond_0
    new-array v4, v2, [F

    .line 62
    .local v4, "result":[F
    const/4 v3, 0x0

    .line 63
    .local v3, "pos":I
    array-length v8, p1

    move v7, v6

    :goto_1
    if-ge v7, v8, :cond_2

    aget-object v0, p1, v7

    .line 64
    .restart local v0    # "array":[F
    array-length v9, v0

    move v5, v6

    :goto_2
    if-ge v5, v9, :cond_1

    aget v1, v0, v5

    .line 65
    .local v1, "element":F
    aput v1, v4, v3

    .line 66
    add-int/lit8 v3, v3, 0x1

    .line 64
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 63
    .end local v1    # "element":F
    :cond_1
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_1

    .line 69
    .end local v0    # "array":[F
    :cond_2
    return-object v4
.end method

.method public reduceWithDouglasPeucker([FF)[F
    .locals 15
    .param p1, "points"    # [F
    .param p2, "tolerance"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 20
    const/4 v9, 0x0

    .line 21
    .local v9, "greatestIndex":I
    const/4 v8, 0x0

    .line 23
    .local v8, "greatestDistance":F
    new-instance v1, Lcom/github/mikephil/charting/data/filter/Approximator$Line;

    const/4 v2, 0x0

    aget v3, p1, v2

    const/4 v2, 0x1

    aget v4, p1, v2

    move-object/from16 v0, p1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    aget v5, p1, v2

    move-object/from16 v0, p1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget v6, p1, v2

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/github/mikephil/charting/data/filter/Approximator$Line;-><init>(Lcom/github/mikephil/charting/data/filter/Approximator;FFFF)V

    .line 25
    .local v1, "line":Lcom/github/mikephil/charting/data/filter/Approximator$Line;
    const/4 v10, 0x2

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    if-ge v10, v2, :cond_1

    .line 27
    aget v2, p1, v10

    add-int/lit8 v3, v10, 0x1

    aget v3, p1, v3

    invoke-virtual {v1, v2, v3}, Lcom/github/mikephil/charting/data/filter/Approximator$Line;->distance(FF)F

    move-result v7

    .line 29
    .local v7, "distance":F
    cmpl-float v2, v7, v8

    if-lez v2, :cond_0

    .line 30
    move v8, v7

    .line 31
    move v9, v10

    .line 25
    :cond_0
    add-int/lit8 v10, v10, 0x2

    goto :goto_0

    .line 35
    .end local v7    # "distance":F
    :cond_1
    cmpl-float v2, v8, p2

    if-lez v2, :cond_2

    .line 37
    const/4 v2, 0x0

    add-int/lit8 v3, v9, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {p0, v2, v0}, Lcom/github/mikephil/charting/data/filter/Approximator;->reduceWithDouglasPeucker([FF)[F

    move-result-object v11

    .line 38
    .local v11, "reduced1":[F
    move-object/from16 v0, p1

    array-length v2, v0

    move-object/from16 v0, p1

    invoke-static {v0, v9, v2}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {p0, v2, v0}, Lcom/github/mikephil/charting/data/filter/Approximator;->reduceWithDouglasPeucker([FF)[F

    move-result-object v12

    .line 41
    .local v12, "reduced2":[F
    move-object v13, v11

    .line 42
    .local v13, "result1":[F
    const/4 v2, 0x2

    array-length v3, v12

    invoke-static {v12, v2, v3}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v14

    .line 44
    .local v14, "result2":[F
    const/4 v2, 0x2

    new-array v2, v2, [[F

    const/4 v3, 0x0

    aput-object v13, v2, v3

    const/4 v3, 0x1

    aput-object v14, v2, v3

    invoke-virtual {p0, v2}, Lcom/github/mikephil/charting/data/filter/Approximator;->concat([[F)[F

    move-result-object v2

    .line 46
    .end local v11    # "reduced1":[F
    .end local v12    # "reduced2":[F
    .end local v13    # "result1":[F
    .end local v14    # "result2":[F
    :goto_1
    return-object v2

    :cond_2
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/filter/Approximator$Line;->getPoints()[F

    move-result-object v2

    goto :goto_1
.end method
