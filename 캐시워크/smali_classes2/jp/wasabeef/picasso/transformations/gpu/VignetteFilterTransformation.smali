.class public Ljp/wasabeef/picasso/transformations/gpu/VignetteFilterTransformation;
.super Ljp/wasabeef/picasso/transformations/gpu/GPUFilterTransformation;
.source "VignetteFilterTransformation.java"


# instance fields
.field private mCenter:Landroid/graphics/PointF;

.field private mVignetteColor:[F

.field private mVignetteEnd:F

.field private mVignetteStart:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v0, 0x3f000000    # 0.5f

    .line 37
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v0, 0x3

    new-array v3, v0, [F

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    const/high16 v5, 0x3f400000    # 0.75f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljp/wasabeef/picasso/transformations/gpu/VignetteFilterTransformation;-><init>(Landroid/content/Context;Landroid/graphics/PointF;[FFF)V

    .line 38
    return-void

    .line 37
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/PointF;[FFF)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "center"    # Landroid/graphics/PointF;
    .param p3, "color"    # [F
    .param p4, "start"    # F
    .param p5, "end"    # F

    .prologue
    .line 42
    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImageVignetteFilter;

    invoke-direct {v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageVignetteFilter;-><init>()V

    invoke-direct {p0, p1, v1}, Ljp/wasabeef/picasso/transformations/gpu/GPUFilterTransformation;-><init>(Landroid/content/Context;Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 43
    iput-object p2, p0, Ljp/wasabeef/picasso/transformations/gpu/VignetteFilterTransformation;->mCenter:Landroid/graphics/PointF;

    .line 44
    iput-object p3, p0, Ljp/wasabeef/picasso/transformations/gpu/VignetteFilterTransformation;->mVignetteColor:[F

    .line 45
    iput p4, p0, Ljp/wasabeef/picasso/transformations/gpu/VignetteFilterTransformation;->mVignetteStart:F

    .line 46
    iput p5, p0, Ljp/wasabeef/picasso/transformations/gpu/VignetteFilterTransformation;->mVignetteEnd:F

    .line 47
    invoke-virtual {p0}, Ljp/wasabeef/picasso/transformations/gpu/VignetteFilterTransformation;->getFilter()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GPUImageVignetteFilter;

    .line 48
    .local v0, "filter":Ljp/co/cyberagent/android/gpuimage/GPUImageVignetteFilter;
    iget-object v1, p0, Ljp/wasabeef/picasso/transformations/gpu/VignetteFilterTransformation;->mCenter:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageVignetteFilter;->setVignetteCenter(Landroid/graphics/PointF;)V

    .line 49
    iget-object v1, p0, Ljp/wasabeef/picasso/transformations/gpu/VignetteFilterTransformation;->mVignetteColor:[F

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageVignetteFilter;->setVignetteColor([F)V

    .line 50
    iget v1, p0, Ljp/wasabeef/picasso/transformations/gpu/VignetteFilterTransformation;->mVignetteStart:F

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageVignetteFilter;->setVignetteStart(F)V

    .line 51
    iget v1, p0, Ljp/wasabeef/picasso/transformations/gpu/VignetteFilterTransformation;->mVignetteEnd:F

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageVignetteFilter;->setVignetteEnd(F)V

    .line 52
    return-void
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VignetteFilterTransformation(center="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/wasabeef/picasso/transformations/gpu/VignetteFilterTransformation;->mCenter:Landroid/graphics/PointF;

    invoke-virtual {v1}, Landroid/graphics/PointF;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljp/wasabeef/picasso/transformations/gpu/VignetteFilterTransformation;->mVignetteColor:[F

    .line 56
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/wasabeef/picasso/transformations/gpu/VignetteFilterTransformation;->mVignetteStart:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/wasabeef/picasso/transformations/gpu/VignetteFilterTransformation;->mVignetteEnd:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
