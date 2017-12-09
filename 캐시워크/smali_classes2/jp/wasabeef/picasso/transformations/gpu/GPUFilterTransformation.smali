.class public Ljp/wasabeef/picasso/transformations/gpu/GPUFilterTransformation;
.super Ljava/lang/Object;
.source "GPUFilterTransformation.java"

# interfaces
.implements Lcom/squareup/picasso/Transformation;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filter"    # Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ljp/wasabeef/picasso/transformations/gpu/GPUFilterTransformation;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Ljp/wasabeef/picasso/transformations/gpu/GPUFilterTransformation;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    .line 33
    return-void
.end method


# virtual methods
.method public getFilter()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Ljp/wasabeef/picasso/transformations/gpu/GPUFilterTransformation;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    return-object v0
.end method

.method public key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "source"    # Landroid/graphics/Bitmap;

    .prologue
    .line 36
    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImage;

    iget-object v2, p0, Ljp/wasabeef/picasso/transformations/gpu/GPUFilterTransformation;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImage;-><init>(Landroid/content/Context;)V

    .line 37
    .local v1, "gpuImage":Ljp/co/cyberagent/android/gpuimage/GPUImage;
    invoke-virtual {v1, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 38
    iget-object v2, p0, Ljp/wasabeef/picasso/transformations/gpu/GPUFilterTransformation;->mFilter:Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;

    invoke-virtual {v1, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setFilter(Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 40
    invoke-virtual {v1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->getBitmapWithFilterApplied()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 41
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 43
    return-object v0
.end method
