.class public Ljp/wasabeef/picasso/transformations/gpu/PixelationFilterTransformation;
.super Ljp/wasabeef/picasso/transformations/gpu/GPUFilterTransformation;
.source "PixelationFilterTransformation.java"


# instance fields
.field private mPixel:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/high16 v0, 0x41200000    # 10.0f

    invoke-direct {p0, p1, v0}, Ljp/wasabeef/picasso/transformations/gpu/PixelationFilterTransformation;-><init>(Landroid/content/Context;F)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;F)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pixel"    # F

    .prologue
    .line 36
    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImagePixelationFilter;

    invoke-direct {v1}, Ljp/co/cyberagent/android/gpuimage/GPUImagePixelationFilter;-><init>()V

    invoke-direct {p0, p1, v1}, Ljp/wasabeef/picasso/transformations/gpu/GPUFilterTransformation;-><init>(Landroid/content/Context;Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 37
    iput p2, p0, Ljp/wasabeef/picasso/transformations/gpu/PixelationFilterTransformation;->mPixel:F

    .line 38
    invoke-virtual {p0}, Ljp/wasabeef/picasso/transformations/gpu/PixelationFilterTransformation;->getFilter()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GPUImagePixelationFilter;

    .line 39
    .local v0, "filter":Ljp/co/cyberagent/android/gpuimage/GPUImagePixelationFilter;
    iget v1, p0, Ljp/wasabeef/picasso/transformations/gpu/PixelationFilterTransformation;->mPixel:F

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImagePixelationFilter;->setPixel(F)V

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

    const-string v1, "PixelationFilterTransformation(pixel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/wasabeef/picasso/transformations/gpu/PixelationFilterTransformation;->mPixel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
