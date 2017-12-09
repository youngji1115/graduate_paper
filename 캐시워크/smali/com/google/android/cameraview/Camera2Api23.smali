.class Lcom/google/android/cameraview/Camera2Api23;
.super Lcom/google/android/cameraview/Camera2;
.source "Camera2Api23.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/cameraview/CameraViewImpl$Callback;Lcom/google/android/cameraview/PreviewImpl;Landroid/content/Context;)V
    .locals 0
    .param p1, "callback"    # Lcom/google/android/cameraview/CameraViewImpl$Callback;
    .param p2, "preview"    # Lcom/google/android/cameraview/PreviewImpl;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/cameraview/Camera2;-><init>(Lcom/google/android/cameraview/CameraViewImpl$Callback;Lcom/google/android/cameraview/PreviewImpl;Landroid/content/Context;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected collectPictureSizes(Lcom/google/android/cameraview/SizeMap;Landroid/hardware/camera2/params/StreamConfigurationMap;)V
    .locals 8
    .param p1, "sizes"    # Lcom/google/android/cameraview/SizeMap;
    .param p2, "map"    # Landroid/hardware/camera2/params/StreamConfigurationMap;

    .prologue
    const/16 v2, 0x100

    .line 35
    invoke-virtual {p2, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    .line 36
    .local v0, "outputSizes":[Landroid/util/Size;
    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p2, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 38
    .local v1, "size":Landroid/util/Size;
    new-instance v5, Lcom/google/android/cameraview/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/google/android/cameraview/Size;-><init>(II)V

    invoke-virtual {p1, v5}, Lcom/google/android/cameraview/SizeMap;->add(Lcom/google/android/cameraview/Size;)Z

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    .end local v1    # "size":Landroid/util/Size;
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/cameraview/SizeMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    invoke-super {p0, p1, p2}, Lcom/google/android/cameraview/Camera2;->collectPictureSizes(Lcom/google/android/cameraview/SizeMap;Landroid/hardware/camera2/params/StreamConfigurationMap;)V

    .line 44
    :cond_1
    return-void
.end method
