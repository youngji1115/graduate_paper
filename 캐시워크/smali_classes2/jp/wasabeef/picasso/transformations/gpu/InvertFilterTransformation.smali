.class public Ljp/wasabeef/picasso/transformations/gpu/InvertFilterTransformation;
.super Ljp/wasabeef/picasso/transformations/gpu/GPUFilterTransformation;
.source "InvertFilterTransformation.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageColorInvertFilter;

    invoke-direct {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageColorInvertFilter;-><init>()V

    invoke-direct {p0, p1, v0}, Ljp/wasabeef/picasso/transformations/gpu/GPUFilterTransformation;-><init>(Landroid/content/Context;Ljp/co/cyberagent/android/gpuimage/GPUImageFilter;)V

    .line 29
    return-void
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "InvertFilterTransformation()"

    return-object v0
.end method
