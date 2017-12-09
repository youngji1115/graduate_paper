.class public Ljp/wasabeef/picasso/transformations/gpu/KuwaharaFilterTransformation;
.super Ljp/wasabeef/picasso/transformations/gpu/GPUFilterTransformation;
.source "KuwaharaFilterTransformation.java"


# instance fields
.field private mRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const/16 v0, 0x19

    invoke-direct {p0, p1, v0}, Ljp/wasabeef/picasso/transformations/gpu/KuwaharaFilterTransformation;-><init>(Landroid/content/Context;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "radius"    # I

    .prologue
    .line 37
    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImageKuwaharaFilter;

    invoke-direct {v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageKuwaharaFilter;-><init>()V

    invoke-direct {p0, p1, v1}, Ljp/wasabeef/picasso/transformations/gpu/GPUFilterTransformation;-><init>(Landroid/content/Context;Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 38
    iput p2, p0, Ljp/wasabeef/picasso/transformations/gpu/KuwaharaFilterTransformation;->mRadius:I

    .line 39
    invoke-virtual {p0}, Ljp/wasabeef/picasso/transformations/gpu/KuwaharaFilterTransformation;->getFilter()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GPUImageKuwaharaFilter;

    .line 40
    .local v0, "filter":Ljp/co/cyberagent/android/gpuimage/GPUImageKuwaharaFilter;
    iget v1, p0, Ljp/wasabeef/picasso/transformations/gpu/KuwaharaFilterTransformation;->mRadius:I

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageKuwaharaFilter;->setRadius(I)V

    .line 41
    return-void
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KuwaharaFilterTransformation(radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/wasabeef/picasso/transformations/gpu/KuwaharaFilterTransformation;->mRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
