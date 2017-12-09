.class Lcom/google/android/cameraview/Camera2;
.super Lcom/google/android/cameraview/CameraViewImpl;
.source "Camera2.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;
    }
.end annotation


# static fields
.field private static final INTERNAL_FACINGS:Landroid/util/SparseIntArray;

.field private static final MAX_PREVIEW_HEIGHT:I = 0x438

.field private static final MAX_PREVIEW_WIDTH:I = 0x780

.field private static final TAG:Ljava/lang/String; = "Camera2"


# instance fields
.field private mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

.field private mAutoFocus:Z

.field mCamera:Landroid/hardware/camera2/CameraDevice;

.field private mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final mCameraDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mCameraId:Ljava/lang/String;

.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

.field mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mDisplayOrientation:I

.field private mFacing:I

.field private mFlash:I

.field private mImageReader:Landroid/media/ImageReader;

.field private final mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private final mPictureSizes:Lcom/google/android/cameraview/SizeMap;

.field mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private final mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

.field private final mSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 49
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/google/android/cameraview/Camera2;->INTERNAL_FACINGS:Landroid/util/SparseIntArray;

    .line 52
    sget-object v0, Lcom/google/android/cameraview/Camera2;->INTERNAL_FACINGS:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 53
    sget-object v0, Lcom/google/android/cameraview/Camera2;->INTERNAL_FACINGS:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    return-void
.end method

.method constructor <init>(Lcom/google/android/cameraview/CameraViewImpl$Callback;Lcom/google/android/cameraview/PreviewImpl;Landroid/content/Context;)V
    .locals 2
    .param p1, "callback"    # Lcom/google/android/cameraview/CameraViewImpl$Callback;
    .param p2, "preview"    # Lcom/google/android/cameraview/PreviewImpl;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 200
    invoke-direct {p0, p1, p2}, Lcom/google/android/cameraview/CameraViewImpl;-><init>(Lcom/google/android/cameraview/CameraViewImpl$Callback;Lcom/google/android/cameraview/PreviewImpl;)V

    .line 68
    new-instance v0, Lcom/google/android/cameraview/Camera2$1;

    invoke-direct {v0, p0}, Lcom/google/android/cameraview/Camera2$1;-><init>(Lcom/google/android/cameraview/Camera2;)V

    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 96
    new-instance v0, Lcom/google/android/cameraview/Camera2$2;

    invoke-direct {v0, p0}, Lcom/google/android/cameraview/Camera2$2;-><init>(Lcom/google/android/cameraview/Camera2;)V

    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 131
    new-instance v0, Lcom/google/android/cameraview/Camera2$3;

    invoke-direct {v0, p0}, Lcom/google/android/cameraview/Camera2$3;-><init>(Lcom/google/android/cameraview/Camera2;)V

    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    .line 154
    new-instance v0, Lcom/google/android/cameraview/Camera2$4;

    invoke-direct {v0, p0}, Lcom/google/android/cameraview/Camera2$4;-><init>(Lcom/google/android/cameraview/Camera2;)V

    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 185
    new-instance v0, Lcom/google/android/cameraview/SizeMap;

    invoke-direct {v0}, Lcom/google/android/cameraview/SizeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    .line 187
    new-instance v0, Lcom/google/android/cameraview/SizeMap;

    invoke-direct {v0}, Lcom/google/android/cameraview/SizeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    .line 191
    sget-object v0, Lcom/google/android/cameraview/Constants;->DEFAULT_ASPECT_RATIO:Lcom/google/android/cameraview/AspectRatio;

    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    .line 201
    const-string v0, "camera"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 202
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    new-instance v1, Lcom/google/android/cameraview/Camera2$5;

    invoke-direct {v1, p0}, Lcom/google/android/cameraview/Camera2$5;-><init>(Lcom/google/android/cameraview/Camera2;)V

    invoke-virtual {v0, v1}, Lcom/google/android/cameraview/PreviewImpl;->setCallback(Lcom/google/android/cameraview/PreviewImpl$Callback;)V

    .line 208
    return-void
.end method

.method private chooseCameraIdByFacing()Z
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 357
    :try_start_0
    sget-object v11, Lcom/google/android/cameraview/Camera2;->INTERNAL_FACINGS:Landroid/util/SparseIntArray;

    iget v12, p0, Lcom/google/android/cameraview/Camera2;->mFacing:I

    invoke-virtual {v11, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    .line 358
    .local v7, "internalFacing":I
    iget-object v11, p0, Lcom/google/android/cameraview/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v11}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v5

    .line 359
    .local v5, "ids":[Ljava/lang/String;
    array-length v11, v5

    if-nez v11, :cond_0

    .line 360
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "No camera available."

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    .end local v5    # "ids":[Ljava/lang/String;
    .end local v7    # "internalFacing":I
    :catch_0
    move-exception v2

    .line 404
    .local v2, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Failed to get a list of camera devices"

    invoke-direct {v9, v10, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 362
    .end local v2    # "e":Landroid/hardware/camera2/CameraAccessException;
    .restart local v5    # "ids":[Ljava/lang/String;
    .restart local v7    # "internalFacing":I
    :cond_0
    :try_start_1
    array-length v12, v5

    move v11, v10

    :goto_0
    if-ge v11, v12, :cond_4

    aget-object v4, v5, v11

    .line 363
    .local v4, "id":Ljava/lang/String;
    iget-object v13, p0, Lcom/google/android/cameraview/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v13, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 364
    .local v0, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v13, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v13}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 366
    .local v8, "level":Ljava/lang/Integer;
    if-eqz v8, :cond_1

    .line 367
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v13, v14, :cond_2

    .line 362
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 370
    :cond_2
    sget-object v13, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v13}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 371
    .local v6, "internal":Ljava/lang/Integer;
    if-nez v6, :cond_3

    .line 372
    new-instance v9, Ljava/lang/NullPointerException;

    const-string v10, "Unexpected state: LENS_FACING null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 374
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v13, v7, :cond_1

    .line 375
    iput-object v4, p0, Lcom/google/android/cameraview/Camera2;->mCameraId:Ljava/lang/String;

    .line 376
    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 402
    .end local v0    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v4    # "id":Ljava/lang/String;
    .end local v6    # "internal":Ljava/lang/Integer;
    :goto_1
    return v9

    .line 381
    .end local v8    # "level":Ljava/lang/Integer;
    :cond_4
    const/4 v11, 0x0

    aget-object v11, v5, v11

    iput-object v11, p0, Lcom/google/android/cameraview/Camera2;->mCameraId:Ljava/lang/String;

    .line 382
    iget-object v11, p0, Lcom/google/android/cameraview/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v12, p0, Lcom/google/android/cameraview/Camera2;->mCameraId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v11

    iput-object v11, p0, Lcom/google/android/cameraview/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 383
    iget-object v11, p0, Lcom/google/android/cameraview/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v12, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v11, v12}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 385
    .restart local v8    # "level":Ljava/lang/Integer;
    if-eqz v8, :cond_5

    .line 386
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v14, :cond_6

    :cond_5
    move v9, v10

    .line 387
    goto :goto_1

    .line 389
    :cond_6
    iget-object v10, p0, Lcom/google/android/cameraview/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v10, v11}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 390
    .restart local v6    # "internal":Ljava/lang/Integer;
    if-nez v6, :cond_7

    .line 391
    new-instance v9, Ljava/lang/NullPointerException;

    const-string v10, "Unexpected state: LENS_FACING null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 393
    :cond_7
    const/4 v3, 0x0

    .local v3, "i":I
    sget-object v10, Lcom/google/android/cameraview/Camera2;->INTERNAL_FACINGS:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .local v1, "count":I
    :goto_2
    if-ge v3, v1, :cond_9

    .line 394
    sget-object v10, Lcom/google/android/cameraview/Camera2;->INTERNAL_FACINGS:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v10, v11, :cond_8

    .line 395
    sget-object v10, Lcom/google/android/cameraview/Camera2;->INTERNAL_FACINGS:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    iput v10, p0, Lcom/google/android/cameraview/Camera2;->mFacing:I

    goto :goto_1

    .line 393
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 401
    :cond_9
    const/4 v10, 0x0

    iput v10, p0, Lcom/google/android/cameraview/Camera2;->mFacing:I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private chooseOptimalSize()Lcom/google/android/cameraview/Size;
    .locals 8

    .prologue
    .line 497
    iget-object v6, p0, Lcom/google/android/cameraview/Camera2;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v6}, Lcom/google/android/cameraview/PreviewImpl;->getWidth()I

    move-result v5

    .line 498
    .local v5, "surfaceWidth":I
    iget-object v6, p0, Lcom/google/android/cameraview/Camera2;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v6}, Lcom/google/android/cameraview/PreviewImpl;->getHeight()I

    move-result v2

    .line 499
    .local v2, "surfaceHeight":I
    if-ge v5, v2, :cond_1

    .line 500
    move v3, v2

    .line 501
    .local v3, "surfaceLonger":I
    move v4, v5

    .line 506
    .local v4, "surfaceShorter":I
    :goto_0
    iget-object v6, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    iget-object v7, p0, Lcom/google/android/cameraview/Camera2;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    invoke-virtual {v6, v7}, Lcom/google/android/cameraview/SizeMap;->sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;

    move-result-object v0

    .line 509
    .local v0, "candidates":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/google/android/cameraview/Size;>;"
    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/cameraview/Size;

    .line 510
    .local v1, "size":Lcom/google/android/cameraview/Size;
    invoke-virtual {v1}, Lcom/google/android/cameraview/Size;->getWidth()I

    move-result v7

    if-lt v7, v3, :cond_0

    invoke-virtual {v1}, Lcom/google/android/cameraview/Size;->getHeight()I

    move-result v7

    if-lt v7, v4, :cond_0

    .line 515
    .end local v1    # "size":Lcom/google/android/cameraview/Size;
    :goto_1
    return-object v1

    .line 503
    .end local v0    # "candidates":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/google/android/cameraview/Size;>;"
    .end local v3    # "surfaceLonger":I
    .end local v4    # "surfaceShorter":I
    :cond_1
    move v3, v5

    .line 504
    .restart local v3    # "surfaceLonger":I
    move v4, v2

    .restart local v4    # "surfaceShorter":I
    goto :goto_0

    .line 515
    .restart local v0    # "candidates":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/google/android/cameraview/Size;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/cameraview/Size;

    move-object v1, v6

    goto :goto_1
.end method

.method private collectCameraInfo()V
    .locals 10

    .prologue
    .line 414
    iget-object v5, p0, Lcom/google/android/cameraview/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 416
    .local v1, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    if-nez v1, :cond_0

    .line 417
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get configuration map: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/cameraview/Camera2;->mCameraId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 419
    :cond_0
    iget-object v5, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v5}, Lcom/google/android/cameraview/SizeMap;->clear()V

    .line 420
    iget-object v5, p0, Lcom/google/android/cameraview/Camera2;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v5}, Lcom/google/android/cameraview/PreviewImpl;->getOutputClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v6

    array-length v7, v6

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v3, v6, v5

    .line 421
    .local v3, "size":Landroid/util/Size;
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 422
    .local v4, "width":I
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 423
    .local v0, "height":I
    const/16 v8, 0x780

    if-gt v4, v8, :cond_1

    const/16 v8, 0x438

    if-gt v0, v8, :cond_1

    .line 424
    iget-object v8, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    new-instance v9, Lcom/google/android/cameraview/Size;

    invoke-direct {v9, v4, v0}, Lcom/google/android/cameraview/Size;-><init>(II)V

    invoke-virtual {v8, v9}, Lcom/google/android/cameraview/SizeMap;->add(Lcom/google/android/cameraview/Size;)Z

    .line 420
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 427
    .end local v0    # "height":I
    .end local v3    # "size":Landroid/util/Size;
    .end local v4    # "width":I
    :cond_2
    iget-object v5, p0, Lcom/google/android/cameraview/Camera2;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v5}, Lcom/google/android/cameraview/SizeMap;->clear()V

    .line 428
    iget-object v5, p0, Lcom/google/android/cameraview/Camera2;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {p0, v5, v1}, Lcom/google/android/cameraview/Camera2;->collectPictureSizes(Lcom/google/android/cameraview/SizeMap;Landroid/hardware/camera2/params/StreamConfigurationMap;)V

    .line 429
    iget-object v5, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v5}, Lcom/google/android/cameraview/SizeMap;->ratios()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/cameraview/AspectRatio;

    .line 430
    .local v2, "ratio":Lcom/google/android/cameraview/AspectRatio;
    iget-object v6, p0, Lcom/google/android/cameraview/Camera2;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v6}, Lcom/google/android/cameraview/SizeMap;->ratios()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 431
    iget-object v6, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v6, v2}, Lcom/google/android/cameraview/SizeMap;->remove(Lcom/google/android/cameraview/AspectRatio;)V

    goto :goto_1

    .line 435
    .end local v2    # "ratio":Lcom/google/android/cameraview/AspectRatio;
    :cond_4
    iget-object v5, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v5}, Lcom/google/android/cameraview/SizeMap;->ratios()Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/cameraview/Camera2;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 436
    iget-object v5, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v5}, Lcom/google/android/cameraview/SizeMap;->ratios()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/cameraview/AspectRatio;

    iput-object v5, p0, Lcom/google/android/cameraview/Camera2;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    .line 438
    :cond_5
    return-void
.end method

.method private lockFocus()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 583
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 584
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 583
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 586
    :try_start_0
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;->setState(I)V

    .line 587
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :goto_0
    return-void

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v1, "Camera2"

    const-string v2, "Failed to lock focus."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private prepareImageReader()V
    .locals 5

    .prologue
    .line 447
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mImageReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    invoke-virtual {v1, v2}, Lcom/google/android/cameraview/SizeMap;->sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/cameraview/Size;

    .line 451
    .local v0, "largest":Lcom/google/android/cameraview/Size;
    invoke-virtual {v0}, Lcom/google/android/cameraview/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/cameraview/Size;->getHeight()I

    move-result v2

    const/16 v3, 0x100

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/cameraview/Camera2;->mImageReader:Landroid/media/ImageReader;

    .line 453
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mImageReader:Landroid/media/ImageReader;

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 454
    return-void
.end method

.method private startOpeningCamera()V
    .locals 5

    .prologue
    .line 462
    :try_start_0
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mCameraDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    return-void

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open camera: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method captureStillPicture()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 598
    :try_start_0
    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mCamera:Landroid/hardware/camera2/CameraDevice;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 600
    .local v0, "captureRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 601
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v5, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 602
    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v5

    .line 601
    invoke-virtual {v0, v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 603
    iget v3, p0, Lcom/google/android/cameraview/Camera2;->mFlash:I

    packed-switch v3, :pswitch_data_0

    .line 631
    :goto_0
    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 633
    .local v2, "sensorOrientation":I
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v6, p0, Lcom/google/android/cameraview/Camera2;->mDisplayOrientation:I

    iget v3, p0, Lcom/google/android/cameraview/Camera2;->mFacing:I

    if-ne v3, v4, :cond_0

    move v3, v4

    :goto_1
    mul-int/2addr v3, v6

    add-int/2addr v3, v2

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v3, v3, 0x168

    .line 634
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 633
    invoke-virtual {v0, v5, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 638
    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 639
    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    new-instance v5, Lcom/google/android/cameraview/Camera2$6;

    invoke-direct {v5, p0}, Lcom/google/android/cameraview/Camera2$6;-><init>(Lcom/google/android/cameraview/Camera2;)V

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 651
    .end local v0    # "captureRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v2    # "sensorOrientation":I
    :goto_2
    return-void

    .line 605
    .restart local v0    # "captureRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :pswitch_0
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x1

    .line 606
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 605
    invoke-virtual {v0, v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 607
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x0

    .line 608
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 607
    invoke-virtual {v0, v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 648
    .end local v0    # "captureRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :catch_0
    move-exception v1

    .line 649
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v3, "Camera2"

    const-string v4, "Cannot capture a still picture."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 611
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    .restart local v0    # "captureRequestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :pswitch_1
    :try_start_1
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x3

    .line 612
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 611
    invoke-virtual {v0, v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 615
    :pswitch_2
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x1

    .line 616
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 615
    invoke-virtual {v0, v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 617
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x2

    .line 618
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 617
    invoke-virtual {v0, v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 621
    :pswitch_3
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x2

    .line 622
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 621
    invoke-virtual {v0, v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 625
    :pswitch_4
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x2

    .line 626
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 625
    invoke-virtual {v0, v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 633
    .restart local v2    # "sensorOrientation":I
    :cond_0
    const/4 v3, -0x1

    goto :goto_1

    .line 603
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected collectPictureSizes(Lcom/google/android/cameraview/SizeMap;Landroid/hardware/camera2/params/StreamConfigurationMap;)V
    .locals 8
    .param p1, "sizes"    # Lcom/google/android/cameraview/SizeMap;
    .param p2, "map"    # Landroid/hardware/camera2/params/StreamConfigurationMap;

    .prologue
    .line 441
    const/16 v1, 0x100

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 442
    .local v0, "size":Landroid/util/Size;
    iget-object v4, p0, Lcom/google/android/cameraview/Camera2;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    new-instance v5, Lcom/google/android/cameraview/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/google/android/cameraview/Size;-><init>(II)V

    invoke-virtual {v4, v5}, Lcom/google/android/cameraview/SizeMap;->add(Lcom/google/android/cameraview/Size;)Z

    .line 441
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 444
    .end local v0    # "size":Landroid/util/Size;
    :cond_0
    return-void
.end method

.method getAspectRatio()Lcom/google/android/cameraview/AspectRatio;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    return-object v0
.end method

.method getAutoFocus()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera2;->mAutoFocus:Z

    return v0
.end method

.method getFacing()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/google/android/cameraview/Camera2;->mFacing:I

    return v0
.end method

.method getFlash()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/google/android/cameraview/Camera2;->mFlash:I

    return v0
.end method

.method getSupportedAspectRatios()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/cameraview/AspectRatio;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v0}, Lcom/google/android/cameraview/SizeMap;->ratios()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method isCameraOpened()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCamera:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setAspectRatio(Lcom/google/android/cameraview/AspectRatio;)Z
    .locals 1
    .param p1, "ratio"    # Lcom/google/android/cameraview/AspectRatio;

    .prologue
    .line 266
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    invoke-virtual {p1, v0}, Lcom/google/android/cameraview/AspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    .line 267
    invoke-virtual {v0}, Lcom/google/android/cameraview/SizeMap;->ratios()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    :cond_0
    const/4 v0, 0x0

    .line 278
    :goto_0
    return v0

    .line 271
    :cond_1
    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    .line 272
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->prepareImageReader()V

    .line 273
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 276
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->startCaptureSession()V

    .line 278
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setAutoFocus(Z)V
    .locals 5
    .param p1, "autoFocus"    # Z

    .prologue
    .line 288
    iget-boolean v1, p0, Lcom/google/android/cameraview/Camera2;->mAutoFocus:Z

    if-ne v1, p1, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iput-boolean p1, p0, Lcom/google/android/cameraview/Camera2;->mAutoFocus:Z

    .line 292
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v1, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->updateAutoFocus()V

    .line 294
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_0

    .line 296
    :try_start_0
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    iget-boolean v1, p0, Lcom/google/android/cameraview/Camera2;->mAutoFocus:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/cameraview/Camera2;->mAutoFocus:Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method setDisplayOrientation(I)V
    .locals 2
    .param p1, "displayOrientation"    # I

    .prologue
    .line 346
    iput p1, p0, Lcom/google/android/cameraview/Camera2;->mDisplayOrientation:I

    .line 347
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    iget v1, p0, Lcom/google/android/cameraview/Camera2;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/google/android/cameraview/PreviewImpl;->setDisplayOrientation(I)V

    .line 348
    return-void
.end method

.method setFacing(I)V
    .locals 1
    .param p1, "facing"    # I

    .prologue
    .line 244
    iget v0, p0, Lcom/google/android/cameraview/Camera2;->mFacing:I

    if-ne v0, p1, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iput p1, p0, Lcom/google/android/cameraview/Camera2;->mFacing:I

    .line 248
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->isCameraOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->stop()V

    .line 250
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->start()Z

    goto :goto_0
.end method

.method setFlash(I)V
    .locals 6
    .param p1, "flash"    # I

    .prologue
    .line 312
    iget v2, p0, Lcom/google/android/cameraview/Camera2;->mFlash:I

    if-ne v2, p1, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    iget v1, p0, Lcom/google/android/cameraview/Camera2;->mFlash:I

    .line 316
    .local v1, "saved":I
    iput p1, p0, Lcom/google/android/cameraview/Camera2;->mFlash:I

    .line 317
    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v2, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->updateFlash()V

    .line 319
    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v2, :cond_0

    .line 321
    :try_start_0
    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    iput v1, p0, Lcom/google/android/cameraview/Camera2;->mFlash:I

    goto :goto_0
.end method

.method start()Z
    .locals 1

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->chooseCameraIdByFacing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 218
    :goto_0
    return v0

    .line 215
    :cond_0
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->collectCameraInfo()V

    .line 216
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->prepareImageReader()V

    .line 217
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->startOpeningCamera()V

    .line 218
    const/4 v0, 0x1

    goto :goto_0
.end method

.method startCaptureSession()V
    .locals 7

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->isCameraOpened()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v3}, Lcom/google/android/cameraview/PreviewImpl;->isReady()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mImageReader:Landroid/media/ImageReader;

    if-nez v3, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->chooseOptimalSize()Lcom/google/android/cameraview/Size;

    move-result-object v1

    .line 478
    .local v1, "previewSize":Lcom/google/android/cameraview/Size;
    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v1}, Lcom/google/android/cameraview/Size;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Lcom/google/android/cameraview/Size;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/cameraview/PreviewImpl;->setBufferSize(II)V

    .line 479
    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v3}, Lcom/google/android/cameraview/PreviewImpl;->getSurface()Landroid/view/Surface;

    move-result-object v2

    .line 481
    .local v2, "surface":Landroid/view/Surface;
    :try_start_0
    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mCamera:Landroid/hardware/camera2/CameraDevice;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 482
    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 483
    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mCamera:Landroid/hardware/camera2/CameraDevice;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/view/Surface;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/android/cameraview/Camera2;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v6}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/cameraview/Camera2;->mSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to start camera session"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 223
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 225
    iput-object v1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCamera:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCamera:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 229
    iput-object v1, p0, Lcom/google/android/cameraview/Camera2;->mCamera:Landroid/hardware/camera2/CameraDevice;

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 233
    iput-object v1, p0, Lcom/google/android/cameraview/Camera2;->mImageReader:Landroid/media/ImageReader;

    .line 235
    :cond_2
    return-void
.end method

.method takePicture()V
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera2;->mAutoFocus:Z

    if-eqz v0, :cond_0

    .line 338
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->lockFocus()V

    .line 342
    :goto_0
    return-void

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->captureStillPicture()V

    goto :goto_0
.end method

.method unlockFocus()V
    .locals 5

    .prologue
    .line 658
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    .line 659
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 658
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 661
    :try_start_0
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 662
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->updateAutoFocus()V

    .line 663
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->updateFlash()V

    .line 664
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    .line 665
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 664
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 666
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 668
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;->setState(I)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    :goto_0
    return-void

    .line 669
    :catch_0
    move-exception v0

    .line 670
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v1, "Camera2"

    const-string v2, "Failed to restart camera preview."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method updateAutoFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 522
    iget-boolean v1, p0, Lcom/google/android/cameraview/Camera2;->mAutoFocus:Z

    if-eqz v1, :cond_2

    .line 523
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 526
    .local v0, "modes":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    aget v1, v0, v3

    if-nez v1, :cond_1

    .line 528
    :cond_0
    iput-boolean v3, p0, Lcom/google/android/cameraview/Camera2;->mAutoFocus:Z

    .line 529
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 530
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 529
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 539
    .end local v0    # "modes":[I
    :goto_0
    return-void

    .line 532
    .restart local v0    # "modes":[I
    :cond_1
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x4

    .line 533
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 532
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 536
    .end local v0    # "modes":[I
    :cond_2
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 537
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 536
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method updateFlash()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 545
    iget v0, p0, Lcom/google/android/cameraview/Camera2;->mFlash:I

    packed-switch v0, :pswitch_data_0

    .line 577
    :goto_0
    return-void

    .line 547
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 548
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 547
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 549
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 550
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 549
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 553
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x3

    .line 554
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 553
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 555
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 556
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 555
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 559
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 560
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 559
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 561
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 562
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 561
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 565
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 566
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 565
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 567
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 568
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 567
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 571
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    .line 572
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 571
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 573
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 574
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 573
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 545
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
