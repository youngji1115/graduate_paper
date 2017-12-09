.class public Lcom/github/mikephil/charting/jobs/ZoomJob;
.super Lcom/github/mikephil/charting/jobs/ViewPortJob;
.source "ZoomJob.java"


# static fields
.field private static pool:Lcom/github/mikephil/charting/utils/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/mikephil/charting/utils/ObjectPool",
            "<",
            "Lcom/github/mikephil/charting/jobs/ZoomJob;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected axisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

.field protected mRunMatrixBuffer:Landroid/graphics/Matrix;

.field protected scaleX:F

.field protected scaleY:F


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 21
    const/4 v9, 0x1

    new-instance v0, Lcom/github/mikephil/charting/jobs/ZoomJob;

    move v3, v2

    move v4, v2

    move v5, v2

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    invoke-direct/range {v0 .. v8}, Lcom/github/mikephil/charting/jobs/ZoomJob;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFFFLcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/components/YAxis$AxisDependency;Landroid/view/View;)V

    invoke-static {v9, v0}, Lcom/github/mikephil/charting/utils/ObjectPool;->create(ILcom/github/mikephil/charting/utils/ObjectPool$Poolable;)Lcom/github/mikephil/charting/utils/ObjectPool;

    move-result-object v0

    sput-object v0, Lcom/github/mikephil/charting/jobs/ZoomJob;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    .line 22
    sget-object v0, Lcom/github/mikephil/charting/jobs/ZoomJob;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ObjectPool;->setReplenishPercentage(F)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFFFLcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/components/YAxis$AxisDependency;Landroid/view/View;)V
    .locals 6
    .param p1, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .param p2, "scaleX"    # F
    .param p3, "scaleY"    # F
    .param p4, "xValue"    # F
    .param p5, "yValue"    # F
    .param p6, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;
    .param p7, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    .param p8, "v"    # Landroid/view/View;

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move-object v4, p6

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/github/mikephil/charting/jobs/ViewPortJob;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFLcom/github/mikephil/charting/utils/Transformer;Landroid/view/View;)V

    .line 57
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/jobs/ZoomJob;->mRunMatrixBuffer:Landroid/graphics/Matrix;

    .line 52
    iput p2, p0, Lcom/github/mikephil/charting/jobs/ZoomJob;->scaleX:F

    .line 53
    iput p3, p0, Lcom/github/mikephil/charting/jobs/ZoomJob;->scaleY:F

    .line 54
    iput-object p7, p0, Lcom/github/mikephil/charting/jobs/ZoomJob;->axisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 55
    return-void
.end method

.method public static getInstance(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFFFLcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/components/YAxis$AxisDependency;Landroid/view/View;)Lcom/github/mikephil/charting/jobs/ZoomJob;
    .locals 2
    .param p0, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "xValue"    # F
    .param p4, "yValue"    # F
    .param p5, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;
    .param p6, "axis"    # Lcom/github/mikephil/charting/components/YAxis$AxisDependency;
    .param p7, "v"    # Landroid/view/View;

    .prologue
    .line 27
    sget-object v1, Lcom/github/mikephil/charting/jobs/ZoomJob;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/utils/ObjectPool;->get()Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/jobs/ZoomJob;

    .line 28
    .local v0, "result":Lcom/github/mikephil/charting/jobs/ZoomJob;
    iput p3, v0, Lcom/github/mikephil/charting/jobs/ZoomJob;->xValue:F

    .line 29
    iput p4, v0, Lcom/github/mikephil/charting/jobs/ZoomJob;->yValue:F

    .line 30
    iput p1, v0, Lcom/github/mikephil/charting/jobs/ZoomJob;->scaleX:F

    .line 31
    iput p2, v0, Lcom/github/mikephil/charting/jobs/ZoomJob;->scaleY:F

    .line 32
    iput-object p0, v0, Lcom/github/mikephil/charting/jobs/ZoomJob;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 33
    iput-object p5, v0, Lcom/github/mikephil/charting/jobs/ZoomJob;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    .line 34
    iput-object p6, v0, Lcom/github/mikephil/charting/jobs/ZoomJob;->axisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    .line 35
    iput-object p7, v0, Lcom/github/mikephil/charting/jobs/ZoomJob;->view:Landroid/view/View;

    .line 36
    return-object v0
.end method

.method public static recycleInstance(Lcom/github/mikephil/charting/jobs/ZoomJob;)V
    .locals 1
    .param p0, "instance"    # Lcom/github/mikephil/charting/jobs/ZoomJob;

    .prologue
    .line 40
    sget-object v0, Lcom/github/mikephil/charting/jobs/ZoomJob;->pool:Lcom/github/mikephil/charting/utils/ObjectPool;

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/utils/ObjectPool;->recycle(Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected instantiate()Lcom/github/mikephil/charting/utils/ObjectPool$Poolable;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 85
    new-instance v0, Lcom/github/mikephil/charting/jobs/ZoomJob;

    move v3, v2

    move v4, v2

    move v5, v2

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    invoke-direct/range {v0 .. v8}, Lcom/github/mikephil/charting/jobs/ZoomJob;-><init>(Lcom/github/mikephil/charting/utils/ViewPortHandler;FFFFLcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/components/YAxis$AxisDependency;Landroid/view/View;)V

    return-object v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 62
    iget-object v0, p0, Lcom/github/mikephil/charting/jobs/ZoomJob;->mRunMatrixBuffer:Landroid/graphics/Matrix;

    .line 63
    .local v0, "save":Landroid/graphics/Matrix;
    iget-object v3, p0, Lcom/github/mikephil/charting/jobs/ZoomJob;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget v4, p0, Lcom/github/mikephil/charting/jobs/ZoomJob;->scaleX:F

    iget v5, p0, Lcom/github/mikephil/charting/jobs/ZoomJob;->scaleY:F

    invoke-virtual {v3, v4, v5, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->zoom(FFLandroid/graphics/Matrix;)V

    .line 64
    iget-object v3, p0, Lcom/github/mikephil/charting/jobs/ZoomJob;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v4, p0, Lcom/github/mikephil/charting/jobs/ZoomJob;->view:Landroid/view/View;

    invoke-virtual {v3, v0, v4, v7}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    .line 66
    iget-object v3, p0, Lcom/github/mikephil/charting/jobs/ZoomJob;->view:Landroid/view/View;

    check-cast v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    iget-object v4, p0, Lcom/github/mikephil/charting/jobs/ZoomJob;->axisDependency:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxis(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v3

    iget v3, v3, Lcom/github/mikephil/charting/components/YAxis;->mAxisRange:F

    iget-object v4, p0, Lcom/github/mikephil/charting/jobs/ZoomJob;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleY()F

    move-result v4

    div-float v2, v3, v4

    .line 67
    .local v2, "yValsInView":F
    iget-object v3, p0, Lcom/github/mikephil/charting/jobs/ZoomJob;->view:Landroid/view/View;

    check-cast v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v3

    iget v3, v3, Lcom/github/mikephil/charting/components/XAxis;->mAxisRange:F

    iget-object v4, p0, Lcom/github/mikephil/charting/jobs/ZoomJob;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleX()F

    move-result v4

    div-float v1, v3, v4

    .line 69
    .local v1, "xValsInView":F
    iget-object v3, p0, Lcom/github/mikephil/charting/jobs/ZoomJob;->pts:[F

    iget v4, p0, Lcom/github/mikephil/charting/jobs/ZoomJob;->xValue:F

    div-float v5, v1, v6

    sub-float/2addr v4, v5

    aput v4, v3, v7

    .line 70
    iget-object v3, p0, Lcom/github/mikephil/charting/jobs/ZoomJob;->pts:[F

    const/4 v4, 0x1

    iget v5, p0, Lcom/github/mikephil/charting/jobs/ZoomJob;->yValue:F

    div-float v6, v2, v6

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 72
    iget-object v3, p0, Lcom/github/mikephil/charting/jobs/ZoomJob;->mTrans:Lcom/github/mikephil/charting/utils/Transformer;

    iget-object v4, p0, Lcom/github/mikephil/charting/jobs/ZoomJob;->pts:[F

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 74
    iget-object v3, p0, Lcom/github/mikephil/charting/jobs/ZoomJob;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v4, p0, Lcom/github/mikephil/charting/jobs/ZoomJob;->pts:[F

    invoke-virtual {v3, v4, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->translate([FLandroid/graphics/Matrix;)V

    .line 75
    iget-object v3, p0, Lcom/github/mikephil/charting/jobs/ZoomJob;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v4, p0, Lcom/github/mikephil/charting/jobs/ZoomJob;->view:Landroid/view/View;

    invoke-virtual {v3, v0, v4, v7}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->refresh(Landroid/graphics/Matrix;Landroid/view/View;Z)Landroid/graphics/Matrix;

    .line 77
    iget-object v3, p0, Lcom/github/mikephil/charting/jobs/ZoomJob;->view:Landroid/view/View;

    check-cast v3, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->calculateOffsets()V

    .line 78
    iget-object v3, p0, Lcom/github/mikephil/charting/jobs/ZoomJob;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->postInvalidate()V

    .line 80
    invoke-static {p0}, Lcom/github/mikephil/charting/jobs/ZoomJob;->recycleInstance(Lcom/github/mikephil/charting/jobs/ZoomJob;)V

    .line 81
    return-void
.end method
