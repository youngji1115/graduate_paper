.class public Lcom/github/mikephil/charting/renderer/scatter/SquareShapeRenderer;
.super Ljava/lang/Object;
.source "SquareShapeRenderer.java"

# interfaces
.implements Lcom/github/mikephil/charting/renderer/scatter/IShapeRenderer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public renderShape(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLandroid/graphics/Paint;)V
    .locals 15
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .param p4, "posX"    # F
    .param p5, "posY"    # F
    .param p6, "renderPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 23
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getScatterShapeSize()F

    move-result v12

    .line 24
    .local v12, "shapeSize":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v8, v12, v2

    .line 25
    .local v8, "shapeHalf":F
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getScatterShapeHoleRadius()F

    move-result v2

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v11

    .line 26
    .local v11, "shapeHoleSizeHalf":F
    const/high16 v2, 0x40000000    # 2.0f

    mul-float v10, v11, v2

    .line 27
    .local v10, "shapeHoleSize":F
    sub-float v2, v12, v10

    const/high16 v3, 0x40000000    # 2.0f

    div-float v13, v2, v3

    .line 28
    .local v13, "shapeStrokeSize":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v14, v13, v2

    .line 30
    .local v14, "shapeStrokeSizeHalf":F
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getScatterShapeHoleColor()I

    move-result v9

    .line 32
    .local v9, "shapeHoleColor":I
    float-to-double v2, v12

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 33
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 36
    sub-float v2, p4, v11

    sub-float v3, v2, v14

    sub-float v2, p5, v11

    sub-float v4, v2, v14

    add-float v2, p4, v11

    add-float v5, v2, v14

    add-float v2, p5, v11

    add-float v6, v2, v14

    move-object/from16 v2, p1

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 42
    const v2, 0x112233

    if-eq v9, v2, :cond_0

    .line 43
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    sub-float v3, p4, v11

    sub-float v4, p5, v11

    add-float v5, p4, v11

    add-float v6, p5, v11

    move-object/from16 v2, p1

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    sub-float v3, p4, v8

    sub-float v4, p5, v8

    add-float v5, p4, v8

    add-float v6, p5, v8

    move-object/from16 v2, p1

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method
