.class Lcom/google/android/cameraview/Camera1$1;
.super Ljava/lang/Object;
.source "Camera1.java"

# interfaces
.implements Lcom/google/android/cameraview/PreviewImpl$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/cameraview/Camera1;-><init>(Lcom/google/android/cameraview/CameraViewImpl$Callback;Lcom/google/android/cameraview/PreviewImpl;)V
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
    .line 76
    iput-object p1, p0, Lcom/google/android/cameraview/Camera1$1;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceChanged()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$1;->this$0:Lcom/google/android/cameraview/Camera1;

    iget-object v0, v0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$1;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-virtual {v0}, Lcom/google/android/cameraview/Camera1;->setUpPreview()V

    .line 81
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1$1;->this$0:Lcom/google/android/cameraview/Camera1;

    invoke-virtual {v0}, Lcom/google/android/cameraview/Camera1;->adjustCameraParameters()V

    .line 83
    :cond_0
    return-void
.end method
