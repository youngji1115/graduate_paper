.class abstract Lcom/google/android/cameraview/PreviewImpl;
.super Ljava/lang/Object;
.source "PreviewImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/cameraview/PreviewImpl$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/google/android/cameraview/PreviewImpl$Callback;

.field private mHeight:I

.field private mWidth:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method protected dispatchSurfaceChanged()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/cameraview/PreviewImpl;->mCallback:Lcom/google/android/cameraview/PreviewImpl$Callback;

    invoke-interface {v0}, Lcom/google/android/cameraview/PreviewImpl$Callback;->onSurfaceChanged()V

    .line 55
    return-void
.end method

.method getHeight()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/google/android/cameraview/PreviewImpl;->mHeight:I

    return v0
.end method

.method abstract getOutputClass()Ljava/lang/Class;
.end method

.method abstract getSurface()Landroid/view/Surface;
.end method

.method getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method getSurfaceTexture()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract getView()Landroid/view/View;
.end method

.method getWidth()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/google/android/cameraview/PreviewImpl;->mWidth:I

    return v0
.end method

.method abstract isReady()Z
.end method

.method setBufferSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 66
    return-void
.end method

.method setCallback(Lcom/google/android/cameraview/PreviewImpl$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/google/android/cameraview/PreviewImpl$Callback;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/cameraview/PreviewImpl;->mCallback:Lcom/google/android/cameraview/PreviewImpl$Callback;

    .line 41
    return-void
.end method

.method abstract setDisplayOrientation(I)V
.end method

.method setSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/google/android/cameraview/PreviewImpl;->mWidth:I

    .line 70
    iput p2, p0, Lcom/google/android/cameraview/PreviewImpl;->mHeight:I

    .line 71
    return-void
.end method
