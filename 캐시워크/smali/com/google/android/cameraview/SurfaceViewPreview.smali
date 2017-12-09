.class Lcom/google/android/cameraview/SurfaceViewPreview;
.super Lcom/google/android/cameraview/PreviewImpl;
.source "SurfaceViewPreview.java"


# instance fields
.field final mSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/cameraview/PreviewImpl;-><init>()V

    .line 32
    sget v2, Lcom/google/android/cameraview/R$layout;->surface_view:I

    invoke-static {p1, v2, p2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 33
    .local v1, "view":Landroid/view/View;
    sget v2, Lcom/google/android/cameraview/R$id;->surface_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    iput-object v2, p0, Lcom/google/android/cameraview/SurfaceViewPreview;->mSurfaceView:Landroid/view/SurfaceView;

    .line 34
    iget-object v2, p0, Lcom/google/android/cameraview/SurfaceViewPreview;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 36
    .local v0, "holder":Landroid/view/SurfaceHolder;
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 37
    new-instance v2, Lcom/google/android/cameraview/SurfaceViewPreview$1;

    invoke-direct {v2, p0}, Lcom/google/android/cameraview/SurfaceViewPreview$1;-><init>(Lcom/google/android/cameraview/SurfaceViewPreview;)V

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 55
    return-void
.end method


# virtual methods
.method getOutputClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 74
    const-class v0, Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/android/cameraview/SurfaceViewPreview;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/cameraview/SurfaceViewPreview;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    return-object v0
.end method

.method getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/cameraview/SurfaceViewPreview;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method isReady()Z
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/android/cameraview/SurfaceViewPreview;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/cameraview/SurfaceViewPreview;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setDisplayOrientation(I)V
    .locals 0
    .param p1, "displayOrientation"    # I

    .prologue
    .line 79
    return-void
.end method
