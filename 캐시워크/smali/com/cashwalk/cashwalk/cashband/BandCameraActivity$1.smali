.class Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$1;
.super Ljava/lang/Object;
.source "BandCameraActivity.java"

# interfaces
.implements Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnCameraCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->initView()V
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
    .line 65
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapture()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->access$000(Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;)Lcom/google/android/cameraview/CameraView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$1;->this$0:Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;

    invoke-static {v0}, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->access$000(Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;)Lcom/google/android/cameraview/CameraView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/cameraview/CameraView;->takePicture()V

    .line 71
    :cond_0
    return-void
.end method
