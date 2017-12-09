.class abstract Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "Camera2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/cameraview/Camera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PictureCaptureCallback"
.end annotation


# static fields
.field static final STATE_CAPTURING:I = 0x5

.field static final STATE_LOCKED:I = 0x2

.field static final STATE_LOCKING:I = 0x1

.field static final STATE_PRECAPTURE:I = 0x3

.field static final STATE_PREVIEW:I = 0x0

.field static final STATE_WAITING:I = 0x4


# instance fields
.field private mState:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 689
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 690
    return-void
.end method

.method private process(Landroid/hardware/camera2/CaptureResult;)V
    .locals 6
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x5

    .line 709
    iget v2, p0, Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 746
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 711
    :pswitch_1
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 712
    .local v1, "af":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 715
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v5, :cond_1

    .line 716
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 717
    :cond_1
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 718
    .local v0, "ae":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 719
    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;->setState(I)V

    .line 720
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;->onReady()V

    goto :goto_0

    .line 722
    :cond_3
    invoke-virtual {p0, v4}, Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;->setState(I)V

    .line 723
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;->onPrecaptureRequired()V

    goto :goto_0

    .line 729
    .end local v0    # "ae":Ljava/lang/Integer;
    .end local v1    # "af":Ljava/lang/Integer;
    :pswitch_2
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 730
    .restart local v0    # "ae":Ljava/lang/Integer;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_4

    .line 731
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v5, :cond_4

    .line 732
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 733
    :cond_4
    invoke-virtual {p0, v5}, Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;->setState(I)V

    goto :goto_0

    .line 738
    .end local v0    # "ae":Ljava/lang/Integer;
    :pswitch_3
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 739
    .restart local v0    # "ae":Ljava/lang/Integer;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 740
    :cond_5
    invoke-virtual {p0, v3}, Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;->setState(I)V

    .line 741
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;->onReady()V

    goto :goto_0

    .line 709
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 705
    invoke-direct {p0, p3}, Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;->process(Landroid/hardware/camera2/CaptureResult;)V

    .line 706
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "partialResult"    # Landroid/hardware/camera2/CaptureResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 699
    invoke-direct {p0, p3}, Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;->process(Landroid/hardware/camera2/CaptureResult;)V

    .line 700
    return-void
.end method

.method public abstract onPrecaptureRequired()V
.end method

.method public abstract onReady()V
.end method

.method setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 693
    iput p1, p0, Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;->mState:I

    .line 694
    return-void
.end method
