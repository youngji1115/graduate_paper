.class abstract Lcom/google/android/cameraview/CameraViewImpl;
.super Ljava/lang/Object;
.source "CameraViewImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/cameraview/CameraViewImpl$Callback;
    }
.end annotation


# instance fields
.field protected final mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

.field protected final mPreview:Lcom/google/android/cameraview/PreviewImpl;


# direct methods
.method constructor <init>(Lcom/google/android/cameraview/CameraViewImpl$Callback;Lcom/google/android/cameraview/PreviewImpl;)V
    .locals 0
    .param p1, "callback"    # Lcom/google/android/cameraview/CameraViewImpl$Callback;
    .param p2, "preview"    # Lcom/google/android/cameraview/PreviewImpl;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/cameraview/CameraViewImpl;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    .line 31
    iput-object p2, p0, Lcom/google/android/cameraview/CameraViewImpl;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    .line 32
    return-void
.end method


# virtual methods
.method abstract getAspectRatio()Lcom/google/android/cameraview/AspectRatio;
.end method

.method abstract getAutoFocus()Z
.end method

.method abstract getFacing()I
.end method

.method abstract getFlash()I
.end method

.method abstract getSupportedAspectRatios()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/cameraview/AspectRatio;",
            ">;"
        }
    .end annotation
.end method

.method getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/cameraview/CameraViewImpl;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v0}, Lcom/google/android/cameraview/PreviewImpl;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method abstract isCameraOpened()Z
.end method

.method abstract setAspectRatio(Lcom/google/android/cameraview/AspectRatio;)Z
.end method

.method abstract setAutoFocus(Z)V
.end method

.method abstract setDisplayOrientation(I)V
.end method

.method abstract setFacing(I)V
.end method

.method abstract setFlash(I)V
.end method

.method abstract start()Z
.end method

.method abstract stop()V
.end method

.method abstract takePicture()V
.end method
