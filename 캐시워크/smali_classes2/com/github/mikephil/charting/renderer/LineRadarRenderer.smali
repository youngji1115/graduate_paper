.class public abstract Lcom/github/mikephil/charting/renderer/LineRadarRenderer;
.super Lcom/github/mikephil/charting/renderer/LineScatterCandleRadarRenderer;
.source "LineRadarRenderer.java"


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 0
    .param p1, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p2, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/renderer/LineScatterCandleRadarRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 19
    return-void
.end method

.method private clipPathSupported()Z
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lcom/github/mikephil/charting/utils/Utils;->getSDKInt()I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected drawFilledPath(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "filledPath"    # Landroid/graphics/Path;
    .param p3, "fillColor"    # I
    .param p4, "fillAlpha"    # I

    .prologue
    .line 59
    shl-int/lit8 v4, p4, 0x18

    const v5, 0xffffff

    and-int/2addr v5, p3

    or-int v0, v4, v5

    .line 61
    .local v0, "color":I
    invoke-direct {p0}, Lcom/github/mikephil/charting/renderer/LineRadarRenderer;->clipPathSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 65
    .local v3, "save":I
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 67
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 68
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 85
    .end local v3    # "save":I
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineRadarRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    .line 73
    .local v1, "previous":Landroid/graphics/Paint$Style;
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineRadarRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    .line 76
    .local v2, "previousColor":I
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineRadarRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineRadarRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineRadarRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 82
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineRadarRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineRadarRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0
.end method

.method protected drawFilledPath(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "filledPath"    # Landroid/graphics/Path;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/github/mikephil/charting/renderer/LineRadarRenderer;->clipPathSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 33
    .local v0, "save":I
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 35
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LineRadarRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/LineRadarRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 36
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/LineRadarRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 37
    invoke-virtual {v3}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineRadarRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 38
    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v4

    float-to-int v4, v4

    .line 35
    invoke-virtual {p3, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 39
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 41
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 46
    return-void

    .line 43
    .end local v0    # "save":I
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fill-drawables not (yet) supported below API level 18, this code was run on API level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 44
    invoke-static {}, Lcom/github/mikephil/charting/utils/Utils;->getSDKInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
