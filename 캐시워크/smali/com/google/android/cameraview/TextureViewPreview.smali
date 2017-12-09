.class Lcom/google/android/cameraview/TextureViewPreview;
.super Lcom/google/android/cameraview/PreviewImpl;
.source "TextureViewPreview.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private mDisplayOrientation:I

.field private final mTextureView:Landroid/view/TextureView;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/cameraview/PreviewImpl;-><init>()V

    .line 36
    sget v1, Lcom/google/android/cameraview/R$layout;->texture_view:I

    invoke-static {p1, v1, p2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/google/android/cameraview/R$id;->texture_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/google/android/cameraview/TextureViewPreview;->mTextureView:Landroid/view/TextureView;

    .line 38
    iget-object v1, p0, Lcom/google/android/cameraview/TextureViewPreview;->mTextureView:Landroid/view/TextureView;

    new-instance v2, Lcom/google/android/cameraview/TextureViewPreview$1;

    invoke-direct {v2, p0}, Lcom/google/android/cameraview/TextureViewPreview$1;-><init>(Lcom/google/android/cameraview/TextureViewPreview;)V

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 64
    return-void
.end method


# virtual methods
.method configureTransform()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x4

    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 109
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 110
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget v1, p0, Lcom/google/android/cameraview/TextureViewPreview;->mDisplayOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    const/16 v3, 0x5a

    if-ne v1, v3, :cond_2

    .line 111
    invoke-virtual {p0}, Lcom/google/android/cameraview/TextureViewPreview;->getWidth()I

    move-result v7

    .line 112
    .local v7, "width":I
    invoke-virtual {p0}, Lcom/google/android/cameraview/TextureViewPreview;->getHeight()I

    move-result v6

    .line 114
    .local v6, "height":I
    const/16 v1, 0x8

    new-array v1, v1, [F

    aput v9, v1, v2

    aput v9, v1, v8

    int-to-float v3, v7

    aput v3, v1, v10

    const/4 v3, 0x3

    aput v9, v1, v3

    aput v9, v1, v5

    const/4 v3, 0x5

    int-to-float v4, v6

    aput v4, v1, v3

    const/4 v3, 0x6

    int-to-float v4, v7

    aput v4, v1, v3

    const/4 v3, 0x7

    int-to-float v4, v6

    aput v4, v1, v3

    iget v3, p0, Lcom/google/android/cameraview/TextureViewPreview;->mDisplayOrientation:I

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_1

    const/16 v3, 0x8

    new-array v3, v3, [F

    aput v9, v3, v2

    int-to-float v4, v6

    aput v4, v3, v8

    aput v9, v3, v10

    const/4 v4, 0x3

    aput v9, v3, v4

    int-to-float v4, v7

    aput v4, v3, v5

    const/4 v4, 0x5

    int-to-float v8, v6

    aput v8, v3, v4

    const/4 v4, 0x6

    int-to-float v8, v7

    aput v8, v3, v4

    const/4 v4, 0x7

    aput v9, v3, v4

    :goto_0
    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 140
    .end local v6    # "height":I
    .end local v7    # "width":I
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/google/android/cameraview/TextureViewPreview;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 141
    return-void

    .line 114
    .restart local v6    # "height":I
    .restart local v7    # "width":I
    :cond_1
    const/16 v3, 0x8

    new-array v3, v3, [F

    int-to-float v4, v7

    aput v4, v3, v2

    aput v9, v3, v8

    int-to-float v4, v7

    aput v4, v3, v10

    const/4 v4, 0x3

    int-to-float v8, v6

    aput v8, v3, v4

    aput v9, v3, v5

    const/4 v4, 0x5

    aput v9, v3, v4

    const/4 v4, 0x6

    aput v9, v3, v4

    const/4 v4, 0x7

    int-to-float v8, v6

    aput v8, v3, v4

    goto :goto_0

    .line 137
    .end local v6    # "height":I
    .end local v7    # "width":I
    :cond_2
    iget v1, p0, Lcom/google/android/cameraview/TextureViewPreview;->mDisplayOrientation:I

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_0

    .line 138
    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {p0}, Lcom/google/android/cameraview/TextureViewPreview;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/google/android/cameraview/TextureViewPreview;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_1
.end method

.method getOutputClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 90
    const-class v0, Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method getSurface()Landroid/view/Surface;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/google/android/cameraview/TextureViewPreview;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    return-object v0
.end method

.method getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/cameraview/TextureViewPreview;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getSurfaceTexture()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/google/android/cameraview/TextureViewPreview;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/cameraview/TextureViewPreview;->mTextureView:Landroid/view/TextureView;

    return-object v0
.end method

.method isReady()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/cameraview/TextureViewPreview;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setBufferSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/cameraview/TextureViewPreview;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 71
    return-void
.end method

.method setDisplayOrientation(I)V
    .locals 0
    .param p1, "displayOrientation"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/google/android/cameraview/TextureViewPreview;->mDisplayOrientation:I

    .line 96
    invoke-virtual {p0}, Lcom/google/android/cameraview/TextureViewPreview;->configureTransform()V

    .line 97
    return-void
.end method
