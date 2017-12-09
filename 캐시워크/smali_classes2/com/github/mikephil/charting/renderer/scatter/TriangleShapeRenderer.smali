.class public Lcom/github/mikephil/charting/renderer/scatter/TriangleShapeRenderer;
.super Ljava/lang/Object;
.source "TriangleShapeRenderer.java"

# interfaces
.implements Lcom/github/mikephil/charting/renderer/scatter/IShapeRenderer;


# instance fields
.field protected mTrianglePathBuffer:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/scatter/TriangleShapeRenderer;->mTrianglePathBuffer:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public renderShape(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLandroid/graphics/Paint;)V
    .locals 14
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .param p4, "posX"    # F
    .param p5, "posY"    # F
    .param p6, "renderPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 25
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getScatterShapeSize()F

    move-result v6

    .line 26
    .local v6, "shapeSize":F
    const/high16 v9, 0x40000000    # 2.0f

    div-float v2, v6, v9

    .line 27
    .local v2, "shapeHalf":F
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getScatterShapeHoleRadius()F

    move-result v9

    invoke-static {v9}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v5

    .line 28
    .local v5, "shapeHoleSizeHalf":F
    const/high16 v9, 0x40000000    # 2.0f

    mul-float v4, v5, v9

    .line 29
    .local v4, "shapeHoleSize":F
    sub-float v9, v6, v4

    const/high16 v10, 0x40000000    # 2.0f

    div-float v7, v9, v10

    .line 31
    .local v7, "shapeStrokeSize":F
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getScatterShapeHoleColor()I

    move-result v3

    .line 33
    .local v3, "shapeHoleColor":I
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/scatter/TriangleShapeRenderer;->mTrianglePathBuffer:Landroid/graphics/Path;

    .line 37
    .local v8, "tri":Landroid/graphics/Path;
    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 39
    sub-float v9, p5, v2

    move/from16 v0, p4

    invoke-virtual {v8, v0, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 40
    add-float v9, p4, v2

    add-float v10, p5, v2

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 41
    sub-float v9, p4, v2

    add-float v10, p5, v2

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 43
    float-to-double v10, v6

    const-wide/16 v12, 0x0

    cmpl-double v9, v10, v12

    if-lez v9, :cond_0

    .line 44
    sub-float v9, p5, v2

    move/from16 v0, p4

    invoke-virtual {v8, v0, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 46
    sub-float v9, p4, v2

    add-float/2addr v9, v7

    add-float v10, p5, v2

    sub-float/2addr v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 48
    add-float v9, p4, v2

    sub-float/2addr v9, v7

    add-float v10, p5, v2

    sub-float/2addr v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 50
    sub-float v9, p5, v2

    add-float/2addr v9, v7

    move/from16 v0, p4

    invoke-virtual {v8, v0, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 52
    sub-float v9, p4, v2

    add-float/2addr v9, v7

    add-float v10, p5, v2

    sub-float/2addr v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 56
    :cond_0
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 58
    move-object/from16 v0, p6

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 59
    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 61
    float-to-double v10, v6

    const-wide/16 v12, 0x0

    cmpl-double v9, v10, v12

    if-lez v9, :cond_1

    const v9, 0x112233

    if-eq v3, v9, :cond_1

    .line 64
    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    sub-float v9, p5, v2

    add-float/2addr v9, v7

    move/from16 v0, p4

    invoke-virtual {v8, v0, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 68
    add-float v9, p4, v2

    sub-float/2addr v9, v7

    add-float v10, p5, v2

    sub-float/2addr v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 70
    sub-float v9, p4, v2

    add-float/2addr v9, v7

    add-float v10, p5, v2

    sub-float/2addr v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 72
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 74
    move-object/from16 v0, p6

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 75
    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 78
    :cond_1
    return-void
.end method
