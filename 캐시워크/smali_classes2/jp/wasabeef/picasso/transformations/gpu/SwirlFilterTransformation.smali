.class public Ljp/wasabeef/picasso/transformations/gpu/SwirlFilterTransformation;
.super Ljp/wasabeef/picasso/transformations/gpu/GPUFilterTransformation;
.source "SwirlFilterTransformation.java"


# instance fields
.field private mAngle:F

.field private mCenter:Landroid/graphics/PointF;

.field private mRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, p1, v2, v0, v1}, Ljp/wasabeef/picasso/transformations/gpu/SwirlFilterTransformation;-><init>(Landroid/content/Context;FFLandroid/graphics/PointF;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FFLandroid/graphics/PointF;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "radius"    # F
    .param p3, "angle"    # F
    .param p4, "center"    # Landroid/graphics/PointF;

    .prologue
    .line 42
    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImageSwirlFilter;

    invoke-direct {v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageSwirlFilter;-><init>()V

    invoke-direct {p0, p1, v1}, Ljp/wasabeef/picasso/transformations/gpu/GPUFilterTransformation;-><init>(Landroid/content/Context;Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 43
    iput p2, p0, Ljp/wasabeef/picasso/transformations/gpu/SwirlFilterTransformation;->mRadius:F

    .line 44
    iput p3, p0, Ljp/wasabeef/picasso/transformations/gpu/SwirlFilterTransformation;->mAngle:F

    .line 45
    iput-object p4, p0, Ljp/wasabeef/picasso/transformations/gpu/SwirlFilterTransformation;->mCenter:Landroid/graphics/PointF;

    .line 46
    invoke-virtual {p0}, Ljp/wasabeef/picasso/transformations/gpu/SwirlFilterTransformation;->getFilter()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GPUImageSwirlFilter;

    .line 47
    .local v0, "filter":Ljp/co/cyberagent/android/gpuimage/GPUImageSwirlFilter;
    iget v1, p0, Ljp/wasabeef/picasso/transformations/gpu/SwirlFilterTransformation;->mRadius:F

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageSwirlFilter;->setRadius(F)V

    .line 48
    iget v1, p0, Ljp/wasabeef/picasso/transformations/gpu/SwirlFilterTransformation;->mAngle:F

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageSwirlFilter;->setAngle(F)V

    .line 49
    iget-object v1, p0, Ljp/wasabeef/picasso/transformations/gpu/SwirlFilterTransformation;->mCenter:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageSwirlFilter;->setCenter(Landroid/graphics/PointF;)V

    .line 50
    return-void
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SwirlFilterTransformation(radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/wasabeef/picasso/transformations/gpu/SwirlFilterTransformation;->mRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",angle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/wasabeef/picasso/transformations/gpu/SwirlFilterTransformation;->mAngle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",center="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/wasabeef/picasso/transformations/gpu/SwirlFilterTransformation;->mCenter:Landroid/graphics/PointF;

    .line 54
    invoke-virtual {v1}, Landroid/graphics/PointF;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
