.class public Ljp/wasabeef/picasso/transformations/gpu/SepiaFilterTransformation;
.super Ljp/wasabeef/picasso/transformations/gpu/GPUFilterTransformation;
.source "SepiaFilterTransformation.java"


# instance fields
.field private mIntensity:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Ljp/wasabeef/picasso/transformations/gpu/SepiaFilterTransformation;-><init>(Landroid/content/Context;F)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;F)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intensity"    # F

    .prologue
    .line 36
    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImageSepiaFilter;

    invoke-direct {v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageSepiaFilter;-><init>()V

    invoke-direct {p0, p1, v1}, Ljp/wasabeef/picasso/transformations/gpu/GPUFilterTransformation;-><init>(Landroid/content/Context;Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 37
    iput p2, p0, Ljp/wasabeef/picasso/transformations/gpu/SepiaFilterTransformation;->mIntensity:F

    .line 38
    invoke-virtual {p0}, Ljp/wasabeef/picasso/transformations/gpu/SepiaFilterTransformation;->getFilter()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GPUImageSepiaFilter;

    .line 39
    .local v0, "filter":Ljp/co/cyberagent/android/gpuimage/GPUImageSepiaFilter;
    iget v1, p0, Ljp/wasabeef/picasso/transformations/gpu/SepiaFilterTransformation;->mIntensity:F

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageSepiaFilter;->setIntensity(F)V

    .line 40
    return-void
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SepiaFilterTransformation(intensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/wasabeef/picasso/transformations/gpu/SepiaFilterTransformation;->mIntensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
