.class Lcom/google/android/cameraview/TextureViewPreview$1;
.super Ljava/lang/Object;
.source "TextureViewPreview.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/cameraview/TextureViewPreview;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/cameraview/TextureViewPreview;


# direct methods
.method constructor <init>(Lcom/google/android/cameraview/TextureViewPreview;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/cameraview/TextureViewPreview;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/cameraview/TextureViewPreview$1;->this$0:Lcom/google/android/cameraview/TextureViewPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/cameraview/TextureViewPreview$1;->this$0:Lcom/google/android/cameraview/TextureViewPreview;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/cameraview/TextureViewPreview;->setSize(II)V

    .line 43
    iget-object v0, p0, Lcom/google/android/cameraview/TextureViewPreview$1;->this$0:Lcom/google/android/cameraview/TextureViewPreview;

    invoke-virtual {v0}, Lcom/google/android/cameraview/TextureViewPreview;->configureTransform()V

    .line 44
    iget-object v0, p0, Lcom/google/android/cameraview/TextureViewPreview$1;->this$0:Lcom/google/android/cameraview/TextureViewPreview;

    invoke-virtual {v0}, Lcom/google/android/cameraview/TextureViewPreview;->dispatchSurfaceChanged()V

    .line 45
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v1, 0x0

    .line 56
    iget-object v0, p0, Lcom/google/android/cameraview/TextureViewPreview$1;->this$0:Lcom/google/android/cameraview/TextureViewPreview;

    invoke-virtual {v0, v1, v1}, Lcom/google/android/cameraview/TextureViewPreview;->setSize(II)V

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/cameraview/TextureViewPreview$1;->this$0:Lcom/google/android/cameraview/TextureViewPreview;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/cameraview/TextureViewPreview;->setSize(II)V

    .line 50
    iget-object v0, p0, Lcom/google/android/cameraview/TextureViewPreview$1;->this$0:Lcom/google/android/cameraview/TextureViewPreview;

    invoke-virtual {v0}, Lcom/google/android/cameraview/TextureViewPreview;->configureTransform()V

    .line 51
    iget-object v0, p0, Lcom/google/android/cameraview/TextureViewPreview$1;->this$0:Lcom/google/android/cameraview/TextureViewPreview;

    invoke-virtual {v0}, Lcom/google/android/cameraview/TextureViewPreview;->dispatchSurfaceChanged()V

    .line 52
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 62
    return-void
.end method
