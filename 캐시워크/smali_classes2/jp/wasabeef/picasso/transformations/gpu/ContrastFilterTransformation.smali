.class public Ljp/wasabeef/picasso/transformations/gpu/ContrastFilterTransformation;
.super Ljp/wasabeef/picasso/transformations/gpu/GPUFilterTransformation;
.source "ContrastFilterTransformation.java"


# instance fields
.field private mContrast:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Ljp/wasabeef/picasso/transformations/gpu/ContrastFilterTransformation;-><init>(Landroid/content/Context;F)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;F)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contrast"    # F

    .prologue
    .line 34
    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImageContrastFilter;

    invoke-direct {v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageContrastFilter;-><init>()V

    invoke-direct {p0, p1, v1}, Ljp/wasabeef/picasso/transformations/gpu/GPUFilterTransformation;-><init>(Landroid/content/Context;Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 35
    iput p2, p0, Ljp/wasabeef/picasso/transformations/gpu/ContrastFilterTransformation;->mContrast:F

    .line 36
    invoke-virtual {p0}, Ljp/wasabeef/picasso/transformations/gpu/ContrastFilterTransformation;->getFilter()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GPUImageContrastFilter;

    .line 37
    .local v0, "filter":Ljp/co/cyberagent/android/gpuimage/GPUImageContrastFilter;
    iget v1, p0, Ljp/wasabeef/picasso/transformations/gpu/ContrastFilterTransformation;->mContrast:F

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageContrastFilter;->setContrast(F)V

    .line 38
    return-void
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContrastFilterTransformation(contrast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/wasabeef/picasso/transformations/gpu/ContrastFilterTransformation;->mContrast:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
