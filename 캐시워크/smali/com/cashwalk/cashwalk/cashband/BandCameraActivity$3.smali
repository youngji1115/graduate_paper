.class Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$3;
.super Lcom/google/android/cameraview/CameraView$Callback;
.source "BandCameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;


# direct methods
.method constructor <init>(Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$3;->this$0:Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;

    invoke-direct {p0}, Lcom/google/android/cameraview/CameraView$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraClosed(Lcom/google/android/cameraview/CameraView;)V
    .locals 0
    .param p1, "cameraView"    # Lcom/google/android/cameraview/CameraView;

    .prologue
    .line 162
    return-void
.end method

.method public onCameraOpened(Lcom/google/android/cameraview/CameraView;)V
    .locals 0
    .param p1, "cameraView"    # Lcom/google/android/cameraview/CameraView;

    .prologue
    .line 158
    return-void
.end method

.method public onPictureTaken(Lcom/google/android/cameraview/CameraView;[B)V
    .locals 3
    .param p1, "cameraView"    # Lcom/google/android/cameraview/CameraView;
    .param p2, "data"    # [B

    .prologue
    const/4 v2, 0x0

    .line 167
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$3;->this$0:Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;

    invoke-static {v1}, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->access$400(Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 169
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    .line 170
    .local v0, "sound":Landroid/media/MediaActionSound;
    invoke-virtual {v0, v2}, Landroid/media/MediaActionSound;->play(I)V

    .line 172
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$3$1;

    invoke-direct {v2, p0, p2}, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$3$1;-><init>(Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$3;[B)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 202
    return-void
.end method
