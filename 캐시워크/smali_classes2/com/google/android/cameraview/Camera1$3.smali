.class Lcom/google/android/cameraview/Camera1$3;
.super Ljava/lang/Object;
.source "Camera1.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/cameraview/Camera1;->takePictureInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/cameraview/Camera1;


# direct methods
.method constructor <init>(Lcom/google/android/cameraview/Camera1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/cameraview/Camera1;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/google/android/cameraview/Camera1$3;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$3;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-static {v0}, Lcom/google/android/cameraview/Camera1;->access$000(Lcom/google/android/cameraview/Camera1;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 245
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$3;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object v0, v0, Lcom/google/android/cameraview/Camera1;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    invoke-interface {v0, p1}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onPictureTaken([B)V

    .line 246
    invoke-virtual {p2}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 247
    invoke-virtual {p2}, Landroid/hardware/Camera;->startPreview()V

    .line 248
    return-void
.end method
