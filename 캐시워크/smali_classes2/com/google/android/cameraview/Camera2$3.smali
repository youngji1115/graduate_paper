.class Lcom/google/android/cameraview/Camera2$3;
.super Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;
.source "Camera2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/cameraview/Camera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/cameraview/Camera2;


# direct methods
.method constructor <init>(Lcom/google/android/cameraview/Camera2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/cameraview/Camera2;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/android/cameraview/Camera2$3;->this$0:Lcom/google/android/cameraview/Camera2;

    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrecaptureRequired()V
    .locals 4

    .prologue
    .line 135
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2$3;->this$0:Lcom/google/android/cameraview/Camera2;

    iget-object v1, v1, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    .line 136
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 135
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 137
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/android/cameraview/Camera2$3;->setState(I)V

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2$3;->this$0:Lcom/google/android/cameraview/Camera2;

    iget-object v1, v1, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2$3;->this$0:Lcom/google/android/cameraview/Camera2;

    iget-object v2, v2, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 140
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2$3;->this$0:Lcom/google/android/cameraview/Camera2;

    iget-object v1, v1, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    .line 141
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 140
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v1, "Camera2"

    const-string v2, "Failed to run precapture sequence."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onReady()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2$3;->this$0:Lcom/google/android/cameraview/Camera2;

    invoke-virtual {v0}, Lcom/google/android/cameraview/Camera2;->captureStillPicture()V

    .line 150
    return-void
.end method
