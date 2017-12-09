.class public abstract Lcom/google/android/cameraview/CameraView$Callback;
.super Ljava/lang/Object;
.source "CameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/cameraview/CameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraClosed(Lcom/google/android/cameraview/CameraView;)V
    .locals 0
    .param p1, "cameraView"    # Lcom/google/android/cameraview/CameraView;

    .prologue
    .line 527
    return-void
.end method

.method public onCameraOpened(Lcom/google/android/cameraview/CameraView;)V
    .locals 0
    .param p1, "cameraView"    # Lcom/google/android/cameraview/CameraView;

    .prologue
    .line 519
    return-void
.end method

.method public onPictureTaken(Lcom/google/android/cameraview/CameraView;[B)V
    .locals 0
    .param p1, "cameraView"    # Lcom/google/android/cameraview/CameraView;
    .param p2, "data"    # [B

    .prologue
    .line 536
    return-void
.end method
